#!/bin/sh

z80dasm -l -a -S symbols.sym -b bank0.blk -g 0x8000 -t bank0.bin > bank0.asm
z80dasm -l -a -S symbols.sym -b bank1.blk -g 0xC000 -t bank1.bin > bank1.asm
