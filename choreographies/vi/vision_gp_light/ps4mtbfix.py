#! python3
import os
import sys
import struct
# init
sourceFilename=sys.argv[1]
sourceExtension = sourceFilename[-4:]
destFilename=sourceFilename[:-4] + "_fixed" + sourceFilename[-4:]
file_length_in_bytes = os.path.getsize(sourceFilename)
do_debug = True

# functions defs
def debug(message):
    if (do_debug):
        print(message)

debug("Reading " + sourceFilename)
debug("Writing " + destFilename)

# begin main block
with open(sourceFilename, "rb") as in_file:
    with open(destFilename, "wb") as out_file:
        
        in_file.seek(0, 0)
        header = in_file.read(4)
        if header != b'\x42\x4e\x44\x4c':
            raise Exception("No BNDL header found - is this an MTB file?")
        debug("Header: " + str(header.hex()))
        out_file.write(header)

        header = in_file.read(4)
        debug("  Header2: " + str(header.hex()))
        out_file.write(header)
        
        length = in_file.read(4)
        debug("  Length: " + str(int.from_bytes(length, byteorder='little')))
        out_file.write(length)

        count = in_file.read(4)
        debug("  Count: " + str(int.from_bytes(count, byteorder='little')))
        out_file.write(count)

        texb_start_offset = out_file.tell()
        header = in_file.read(4)
        if header != b'\x54\x45\x58\x42':
            raise Exception("No TEXB header found")
        debug("TEXB Header: " + str(header.hex()))
        out_file.write(header)

        header = in_file.read(4)
        debug("  Header2: " + str(header.hex()))
        out_file.write(header)

        length = in_file.read(4)
        debug("  Old length: " + str(int.from_bytes(length, byteorder='little')))
        out_file.write(length)

        count = in_file.read(4)
        textureCount = int.from_bytes(count, byteorder='little')
        debug("  Count: " + str(textureCount))
        out_file.write(count)

        spacer = in_file.read(4)
        out_file.write(spacer)

        for x in range(0, textureCount):
            in_file.read(4) # skip the leading 4 bytes
            
            textureName = in_file.read(8)
            debug("  Texture: " + str(textureName.hex()))
            out_file.write(textureName)

            in_file.read(4) # skip the PS4 style spacer
            out_file.write(b'\xFF\xFF\xFF\xFF') # add Gold edition spacer

        # need to align the MATP block at 16 bytes it seems
        out_offset = out_file.tell()
        pad_bytes = 16 - (out_offset % 16)
        debug("  Padding needed: " + str(pad_bytes))
        if pad_bytes < 16:
            for p in range(0, pad_bytes):
                out_file.write(b'\x00')

        texb_end_offset = out_file.tell()
        texb_length = texb_end_offset - texb_start_offset
        debug("  New length: " + str(texb_length))
        
        # skip anything after the texture names until we find the MATP header
        matp_offset = in_file.tell()
        nextBytes = in_file.read(4)
        while nextBytes != b'\x4d\x41\x54\x50':
            matp_offset = in_file.tell()
            nextBytes = in_file.read(4)

        debug("MATP Old Offset: " + str(matp_offset))
        debug("MATP New Offset: " + str(out_file.tell()))
        # write the header
        out_file.write(nextBytes)

        # and the rest of the file
        while in_file.tell()<file_length_in_bytes:
            nextBytes = in_file.read(4)
            out_file.write(nextBytes)

        new_file_length = out_file.tell()
        debug("New file length: " + str(new_file_length))

        # Fix up the lengths
        out_file.seek(8)
        out_file.write(struct.pack("<I", new_file_length))
        out_file.seek(texb_start_offset+8)
        out_file.write(struct.pack("<I", texb_length))
