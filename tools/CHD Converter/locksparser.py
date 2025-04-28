#! python3

# Disney Infinity .chd parser
# Authors: JiroTheOne, TheMadGoblin
# Description: Outputs an analysis of chd files for comparision to equivalent lua files

import os
import sys
import struct

# init
filename=sys.argv[1]
file_length_in_bytes = os.path.getsize(filename)
stringsOffset = 0
lastOffset = 0
keys = {}
strings = {}

# functions
def parse_edfe(blockName, indent, the_file):
    edfe = the_file.read(2)
    if edfe!=b'\xed\xfe':
        raise Exception(blockName + " not found:" + str(edfe) + "at " + str(the_file.tell()-2))
    edfeCount = int.from_bytes(the_file.read(2), byteorder='little')
    print("  " + blockName + " at offset: " + str(the_file.tell()-4) + " records: " + str(edfeCount))
    if edfeCount > 0:
      count=0
      for x in range(edfeCount):
        count+=1
        # key
        keyleft = the_file.read(2)
        keyright = the_file.read(2)
        isEdfe = False
        isInt = False
        if ((keyleft + keyright) == b'\xff\xff\xff\xd0'):
            print(indent + "    [" + str(count) + "]" + "EDFE Pointer: " + keyleft.hex() + keyright.hex())
            isEdfe = True
        elif ((keyleft + keyright) == b'\xff\xff\xff\x80'):
            # Integer array key
            #print(indent + "    [" + str(count) + "]" + "Integer Array: " + keyleft.hex() + keyright.hex())
            isInt = True
        else:
            keyIdx = int.from_bytes(keyleft, byteorder='little') + 34; # 32 for Text offset + 2 for size leading 00
            #print("keyIdx is " + str(keyIdx))
            print(indent + "    [" + str(count) + "]" + str(keys[keyIdx]) + ": " + keyleft.hex() + keyright.hex())
        # value
        print(indent + "      Val" + str(count), end='')
        value = the_file.read(4)
        if keyright == b'\x00\x00' or isInt:
            # int or signed int
            print(" Int: " + str(int.from_bytes(value, byteorder='little')))
            if not isInt:
                print(indent + "      Val" + str(count), end='')
                print(" Signed Int: " + str(struct.unpack('>i', value)[0]))
        elif keyright == b'\x00\x20':
            # float
            print(": " + str(round(struct.unpack('<f', value)[0], 1)))
        elif keyright == b'\x00\x30':
            # string
            print(": " + str(strings[int.from_bytes(value, byteorder='little') + stringsOffset]))
        elif keyright == b'\x00\x40':
            # bool
            boolval = int.from_bytes(value, byteorder='little')
            if (boolval == 1):
                print(": true")
            else:
                print(": false")
        elif (keyright == b'\x00\x50') or isEdfe:
            # pointer
            print(": EDFE pointer to offset " + str(int.from_bytes(value, byteorder='little') + lastOffset))        
        else:
            print(": " + value.hex())

# begin main block
with open(filename, "rb") as binary_file:

    binary_file.seek(0, 0)

    header = binary_file.read(4)
    if header != b'\xcd\xab\x23\x01':
        raise Exception("Wrong header. Please ensure that the file is a valid chd file")
    print(filename + "\nHeader:" + str(header.hex() ))

    offset = str(binary_file.tell())
    extendedHeader = binary_file.read(4)
    print("Header 2:" + str(extendedHeader.hex()) + " Offset:" + offset )

    offset = str(binary_file.tell())
    textOffset = int.from_bytes(binary_file.read(4), byteorder='little')
    print("Text fields offset is:" + str(textOffset) + " Offset:" + offset )

    offset = str(binary_file.tell())
    fieldsSize = int.from_bytes(binary_file.read(4), byteorder='little')
    print("Text fields block size (in bytes):" + str(fieldsSize) + " Offset:" + offset )

    offset = str(binary_file.tell())
    stringsOffset = int.from_bytes(binary_file.read(4), byteorder='little')
    print("Strings offset is:" + str(stringsOffset) +" "+ str(hex(stringsOffset)) + " Offset:" + offset )

    offset = str(binary_file.tell())
    stringsSize = int.from_bytes(binary_file.read(4), byteorder='little')
    print("Strings fields block size (in bytes):" + str(stringsSize) +" "+ str(hex(stringsSize)) + " Offset:" + offset )

    offset = str(binary_file.tell())
    lastOffset = int.from_bytes(binary_file.read(4), byteorder='little')
    print("Last offset is:" + str(lastOffset) +" "+ str(hex(lastOffset)) + " Offset:" + offset )

    offset = str(binary_file.tell())
    lastSectionSize = int.from_bytes(binary_file.read(4), byteorder='little')
    print("Last section size:" + str(lastSectionSize) +" "+ str(hex(lastSectionSize)) + " Offset:" + offset )

    print("Text fields START offset:" + str(binary_file.tell()))
    numberOfFields=0
    fieldsStartOffset=binary_file.tell()
    while binary_file.tell()<fieldsStartOffset+fieldsSize:
        currentFieldSize=int.from_bytes(binary_file.read(2), byteorder='little')
        fieldOffset = binary_file.tell()
        fieldName=binary_file.read(currentFieldSize)
        keys[fieldOffset] = fieldName
        binary_file.read(1) # skip trailing delimiter byte
        print("Size:" + str(currentFieldSize) + " String:" + str(fieldName) + " offset: " + str(fieldOffset))
        numberOfFields=numberOfFields+1
    print("Total fields:" + str(numberOfFields))
    print("Text fields END offset:" + str(binary_file.tell()))

    print("Strings Structure START offset:" + str(binary_file.tell()))
    numberOfFields=0
    fieldsStartOffset=binary_file.tell()
    while binary_file.tell()<file_length_in_bytes:
        currentOffset=binary_file.tell()
        currentFieldSize=int.from_bytes(binary_file.read(1), byteorder='little')
        if currentFieldSize == 0 and numberOfFields > 1:
            break # exit while but not if it is first entry
        binary_file.read(1) # start delimiter
        fieldName=binary_file.read(currentFieldSize)
        binary_file.read(1) # end delimiter
        print("Offset:" + str(currentOffset) + " Size:" + str(currentFieldSize) + " Hex:" + fieldName.hex() + " String:" + str(fieldName) )
        strings[currentOffset] = str(fieldName)
        numberOfFields=numberOfFields+1
    print("Total fields:" + str(numberOfFields))
    binary_file.seek(binary_file.tell()-2, 0) # going back since we have read two bytes more DIRTY HACK
    print("Strings Structure END offset:" + str(binary_file.tell()))

    # we know the next offset from the header
    binary_file.seek(lastOffset)

    offset = str(binary_file.tell())
    sectionDelimiter = binary_file.read(8) # 000000D0 08000000
    if sectionDelimiter!=b'\x00\x00\x00\xD0\x08\x00\x00\x00':
            raise Exception("Section delimiter not found:" + str(sectionDelimiter) + "at " + str(offset))

    edfeCount = 0
    while binary_file.tell()<file_length_in_bytes:

        parse_edfe(" Edfe " + str(edfeCount), "  ", binary_file)
        edfeCount+=1


