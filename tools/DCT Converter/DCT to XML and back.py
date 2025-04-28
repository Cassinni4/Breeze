import collections
import itertools
import operator
import struct
import xml.etree.ElementTree as ET


class Uint32:
    """Unsigned 32-bit integer with overflow emulation."""
    def __init__(self, value):
        self.value = value & 0xffffffff

    def __lshift__(self, other):
        if isinstance(other, int):
            value = other
        else:
            value = other.value

        return Uint32((self.value << value) & 0xffffffff)

    def __add__(self, other):
        if isinstance(other, int):
            value = other
        else:
            value = other.value

        return Uint32((self.value + value) & 0xffffffff)

    def __sub__(self, other):
        if isinstance(other, int):
            value = other
        else:
            value = other.value

        return Uint32((self.value - value) & 0xffffffff)

    def __rshift__(self, other):
        if isinstance(other, int):
            value = other
        else:
            value = other.value

        return Uint32(self.value >> value)

    def __ixor__(self, other):
        if isinstance(other, int):
            value = other
        else:
            value = other.value

        self.value ^= value
        return self


def mix(a: Uint32, b: Uint32, c: Uint32):
    a -= b
    a -= c
    a ^= c >> 13

    b -= c
    b -= a
    b ^= a << 8

    c -= a
    c -= b
    c ^= b >> 13

    a -= b
    a -= c
    a ^= c >> 12

    b -= c
    b -= a
    b ^= a << 16

    c -= a
    c -= b
    c ^= b >> 5

    a -= b
    a -= c
    a ^= c >> 3

    b -= c
    b -= a
    b ^= a << 10

    c -= a
    c -= b
    c ^= b >> 15
    return a, b, c


def hash_jenkins(k_: bytes, length_: int, initval_: int):
    for c in k_:
        assert(c < (1 << 32))

    assert(length_ < (1 << 32))
    assert(initval_ < (1 << 32))

    k = [Uint32(c) for c in k_]
    length = Uint32(length_)
    initval = Uint32(initval_)

    a = Uint32(0x9e3779b9)
    b = Uint32(0x9e3779b9)
    c = initval
    while (len(k) >= 12):
        a += (k[0] + (k[1] << 8) + (k[2] << 16) + (k[3] << 24))
        b += (k[4] + (k[5] << 8) + (k[6] << 16) + (k[7] << 24))
        c += (k[8] + (k[9] << 8) + (k[10] << 16) + (k[11] << 24))
        a, b, c = mix(a, b, c)
        k = k[12:]

    c += length
    if len(k) > 10:
        c += k[10] << 24

    if len(k) > 9:
        c += k[9] << 16

    if len(k) > 8:
        c += k[8] << 8

    if len(k) > 7:
        b += k[7] << 24

    if len(k) > 6:
        b += k[6] << 16

    if len(k) > 5:
        b += k[5] << 8

    if len(k) > 4:
        b += k[4]

    if len(k) > 3:
        a += k[3] << 24

    if len(k) > 2:
        a += k[2] << 16

    if len(k) > 1:
        a += k[1] << 8

    if len(k) > 0:
        a += k[0]

    a, b, c = mix(a, b, c)

    return c.value


SerializedKey = collections.namedtuple("SerializedKey", ("hash", "string", "unknown"))
SerializedContainer = collections.namedtuple("SerializedContainer", ("string1", "items", "string2", "unknown1", "unknown2"))
SerializedContainerItem = collections.namedtuple("SerializedContainerItem", ("string", "unknown"))
SerializedString = collections.namedtuple("SerializedString", ("position", "value"))

Key = collections.namedtuple("Key", ("hash", "string_index", "unknown"))
Container = collections.namedtuple("Container", ("string1_index", "items", "string2_index", "unknown1", "unknown2"))
ContainerItem = collections.namedtuple("ContainerItem", ("string_index", "unknown"))


class DeserializeFromBytesError(Exception):
    pass


class DeserializeFromXMLError(Exception):
    pass


def decode_c_string(bs: bytes) -> str:
    return bytes(itertools.takewhile(lambda x: x != 0, bs)).decode("utf-8")


def separate_printable_nonprintable(s: str) -> [str]:
    lst = []
    text = ""
    for c in s:
        if c.isprintable():
            text += c
        else:
            if text != "":
                lst.append(text)
            lst.append(c.encode("utf-8"))
            text = ""
    if text != "":
        lst.append(text)
    return lst

assert separate_printable_nonprintable("") == []
assert separate_printable_nonprintable("test") == ["test"]
assert separate_printable_nonprintable("test\n") == ["test", b"\n"]
assert separate_printable_nonprintable("test\ntest") == ["test", b"\n", "test"]
assert separate_printable_nonprintable("test\n\ntest") == ["test", b"\n", b"\n", "test"]


class Dct:
    def __init__(self, initval : int):
        self.initval : int = initval
        self.keys : [Key] = []
        self.containers : [Container] = []
        self.strings : [str] = []

    @staticmethod
    def from_bytes(bs: bytes) -> "Dct":
        fourcc, maybe_version, initval, keys_offset, key_count, unknown, containers_offset, container_count = struct.unpack("<iiIiiiii", bs[:32])
        if fourcc != int.from_bytes(b"DICT", byteorder="little"):
            raise DeserializeFromBytesError("First four bytes must be b\"DICT\"!")
        if maybe_version != 0x2000:
            raise DeserializeFromBytesError("Version (?) must be 0x2000!")
        if unknown != 1:
            raise DeserializeFromBytesError("Header field #5 must be 1!")

        keys_start = keys_offset + 13
        serialized_keys = []
        for position in range(keys_start, keys_start + 12 * key_count, 12):
            h, so, u = struct.unpack("<Iii", bs[position : position + 12])
            if u != 0:
                raise DeserializeFromBytesError("Key field #3 must be 0!")
            if so != 0:
                s_position = position + so + 5
                s = SerializedString(s_position, decode_c_string(bs[s_position :]))
                serialized_keys.append(SerializedKey(h, s, u))

        containers_start = containers_offset + 25
        serialized_containers = []
        for position in range(containers_start, containers_start + 24 * container_count, 24):
            s1o, item_count, items_offset, s2o, unknown1, unknown2 = struct.unpack("<iiiiii", bs[position : position + 24])
            if unknown1 != 12:
                raise DeserializeFromBytesError("Container field #5 must be 12!")
            if unknown2 != 0:
                raise DeserializeFromBytesError("Container field #6 must be 0!")
            s1_position = position + s1o + 1
            s1 = SerializedString(s1_position, decode_c_string(bs[s1_position :]))
            items_position = position + items_offset + 9
            s2_position = position + s2o + 13
            s2 = SerializedString(s2_position, decode_c_string(bs[s2_position :]))
            items = []
            for ip in range(items_position, items_position + 8 * item_count, 8):
                so, unknown = struct.unpack("<II", bs[ip : ip + 8])
                if unknown != 3 and unknown != 1:
                    raise DeserializeFromBytesError("Container item field #2 must be 3 or 1!")
                s_position = ip + so + 1
                s = SerializedString(s_position, decode_c_string(bs[s_position :]))
                items.append(SerializedContainerItem(s, unknown))
            serialized_containers.append(SerializedContainer(s1, items, s2, unknown1, unknown2))

        strings = {}
        for k in serialized_keys:
            assert (k.string.position not in strings) or (k.string.value == strings[k.string.position])
            strings[k.string.position] = k.string.value
        for c in serialized_containers:
            assert (c.string1.position not in strings) or (c.string1.value == strings[c.string1.position])
            strings[c.string1.position] = c.string1.value
            assert (c.string2.position not in strings) or (c.string2.value == strings[c.string2.position])
            strings[c.string2.position] = c.string2.value
            for item in c.items:
                assert (item.string.position not in strings) or (item.string.value == strings[item.string.position])
                strings[item.string.position] = item.string.value

        string_pairs = sorted(map(tuple, strings.items()), key=operator.itemgetter(0))
        sorted_strings = tuple(map(operator.itemgetter(1), string_pairs))
        string_to_index = dict((k, v) for k, v in zip(sorted_strings, itertools.count(0)))

        keys = [Key(k.hash, string_to_index[k.string.value], k.unknown) for k in serialized_keys]
        containers = []
        for sc in serialized_containers:
            items = [ContainerItem(string_to_index[item.string.value], item.unknown) for item in sc.items]
            containers.append(Container(string_to_index[sc.string1.value], items, string_to_index[sc.string2.value], sc.unknown1, sc.unknown2))

        d = Dct(initval)
        d.keys = keys
        d.containers = containers
        d.strings = sorted_strings
        return d

    def to_bytes(self) -> bytearray:
        key_spot_count = int(len(self.keys) * 1.2) + 1
        container_items_start = 32 + key_spot_count * 12

        container_items_total_size = 0
        for c in self.containers:
            for _ in c.items:
                container_items_total_size += 8
        strings_start = container_items_start + container_items_total_size + len(self.containers) * 24
        string_index_to_position = {}
        strings_bytes = bytearray()
        for i, s in enumerate(self.strings):
            string_index_to_position[i] = strings_start + len(strings_bytes)
            strings_bytes.extend(s.encode("utf-8"))
            strings_bytes.extend(b"\x00")

        container_items_bytes = bytearray()
        container_items_index_to_position = {}
        for i, c in enumerate(self.containers):
            position = container_items_start + len(container_items_bytes)
            container_items_index_to_position[i] = position
            for i, item in enumerate(c.items):
                ip = position + i * 8
                so = string_index_to_position[item.string_index] - ip - 1
                container_items_bytes.extend(struct.pack("<ii", so, item.unknown))

        keys = [None] * key_spot_count
        for k in self.keys:
            i = k.hash % key_spot_count
            while keys[i] is not None:
                i += 1
                i = i % key_spot_count
            keys[i] = k

        keys_bytes = bytearray()
        for k in keys:
            position = 32 + len(keys_bytes)
            if k is None:
                keys_bytes.extend(struct.pack("<III", 0, 0, 0))
            else:
                so = string_index_to_position[k.string_index] - position - 5
                keys_bytes.extend(struct.pack("<Iii", k.hash, so, k.unknown))

        containers_start = container_items_start + container_items_total_size
        containers_bytes = bytearray()
        for i, c in enumerate(self.containers):
            position = containers_start + len(containers_bytes)
            s1o = string_index_to_position[c.string1_index] - position - 1
            io = container_items_index_to_position[i] - position - 9
            s2o = string_index_to_position[c.string2_index] - position - 13
            containers_bytes.extend(struct.pack("<iiiiii", s1o, len(c.items), io, s2o, c.unknown1, c.unknown2))

        dct_bytes = bytearray(b"DICT")
        dct_bytes.extend(struct.pack("<iIiiiii", 0x2000, self.initval, 0x13, len(keys), 1, containers_start - 25, len(self.containers)))
        dct_bytes.extend(keys_bytes)
        dct_bytes.extend(container_items_bytes)
        dct_bytes.extend(containers_bytes)
        dct_bytes.extend(strings_bytes)
        return dct_bytes

    @staticmethod
    def from_xml(root: ET.Element) -> 'Dct':
        initval = int(root.get("initval"))

        keys = []
        for k in root.find("keys"):
            h = int(k.get("hash"))
            si = int(k.get("string_index"))
            u = int(k.get("unknown"))
            keys.append(Key(h, si, u))

        containers = []
        for c in root.find("containers"):
            s1i = int(c.get("string1_index"))
            s2i = int(c.get("string2_index"))
            u1 = int(c.get("unknown1"))
            u2 = int(c.get("unknown2"))
            items = []
            for item_element in c.find("items"):
                si = int(item_element.get("string_index"))
                u = int(item_element.get("unknown"))
                items.append(ContainerItem(si, u))
            containers.append(Container(s1i, items, s2i, u1, u2))

        strings = {}
        for s in root.find("strings"):
            string = ""
            for t in s:
                if t.tag == "text":
                    string += t.text
                elif t.tag == "np":
                    v = bytes.fromhex(t.get("value"))
                    string += v.decode("utf-8")
                else:
                    raise DeserializeFromXMLError("Tag inside a string must be text or np!")
            i = int(s.get("index"))
            if i in strings:
                raise DeserializeFromXMLError("There must be no duplicate string indexes! The duplicate is {}.".format(i))
            strings[i] = string

        string_list = []
        for k, v in sorted(strings.items(), key=operator.itemgetter(0)):
            if k != len(string_list):
                raise DeserializeFromXMLError("There must be no gaps in string indexes! The gap starts at {}.".format(k))
            string_list.append(v)

        d = Dct(initval)
        d.keys = keys
        d.containers = containers
        d.strings = string_list
        return d

    def to_xml(self) -> ET.ElementTree:
        root = ET.Element("dct")
        root.set("initval", str(self.initval))
        keys = ET.SubElement(root, "keys")
        containers = ET.SubElement(root, "containers")
        strings = ET.SubElement(root, "strings")

        for sk in self.keys:
            k = ET.SubElement(keys, "key")
            k.set("hash", str(sk.hash))
            k.set("string_index", str(sk.string_index))
            k.set("unknown", str(sk.unknown))

        for sc in self.containers:
            c = ET.SubElement(containers, "container")
            c.set("string1_index", str(sc.string1_index))
            c.set("string2_index", str(sc.string2_index))
            c.set("unknown1", str(sc.unknown1))
            c.set("unknown2", str(sc.unknown2))
            items = ET.SubElement(c, "items")
            for ci in sc.items:
                item = ET.SubElement(items, "item")
                item.set("string_index", str(ci.string_index))
                item.set("unknown", str(ci.unknown))

        for i, ss in enumerate(self.strings):
            s = ET.SubElement(strings, "string")
            s.set("index", str(i))
            for text in separate_printable_nonprintable(ss):
                if isinstance(text, str):
                    ET.SubElement(s, "text").text = text
                else:
                    ET.SubElement(s, "np").set("value", text.hex())

        return ET.ElementTree(root)


def dct_to_xml(dct_path: str, xml_path: str):
    """
    Converts a .dct file to an .xml file.

    :param dct_path: Path to the .dct file.
    :param xml_path: Path to save the .xml file.
    """
    with open(dct_path, "rb") as f:
        d = Dct.from_bytes(f.read())  # Read and parse DCT data
    tree = d.to_xml()  # Convert to XML tree
    ET.indent(tree)  # Pretty-print the XML
    tree.write(xml_path, encoding="utf-8", xml_declaration=True)  # Save to file

if __name__ == "__main__":
    dct_to_xml("C:\Users\cassi\Desktop\Breeze-Private-Build\tools\DCT Converter\english_ntsc_win32_con.dct",
               "C:\Users\cassi\Desktop\Breeze-Private-Build\tools\DCT Converter\english_ntsc_win32_con.xml")

'''
def xml_to_dct(xml_path: str, dct_path: str):
    """
    Converts an .xml file to a .dct file.

    :param xml_path: Path to the .xml file.
    :param dct_path: Path to save the .dct file.
    """
    # Parse the XML file
    tree = ET.parse(xml_path)

    # Convert XML tree to DCT object
    d = Dct.from_xml(tree.getroot())

    # Write the DCT data to the specified file
    with open(dct_path, "wb") as f:
        f.write(d.to_bytes())


if __name__ == "__main__":
    xml_to_dct("A:/Emulators/PS3 Games/TS3 MODDING/Jatek/NTSC/English_NTSC.xml",
               "A:/Emulators/PS3 Games/TS3 MODDING/Jatek/NTSC/hungarian_ps3.dct")
'''