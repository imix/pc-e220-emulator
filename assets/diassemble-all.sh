#!/bin/sh

# disassemble how bank0 looks when initially mapped to addrss 0x0000
z80dasm -l -a -S symbols.sym -b bank0.blk -g 0x0000 -t bank0.bin > bank0-0.asm

# disassemble how bank0 looks when used in the standard location 0x8000
z80dasm -l -a -S symbols.sym -b bank0.blk -g 0x8000 -t bank0.bin > bank0.asm
#
# disassemble other banks located at 0xC000
z80dasm -l -a -S symbols.sym -b bank1.blk -g 0xC000 -t bank1.bin > bank1.asm
z80dasm -l -a -S symbols.sym -b bank2.blk -g 0xC000 -t bank2.bin > bank2.asm
