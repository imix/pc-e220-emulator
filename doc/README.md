# Documentation on the Sharp PC-E220

## existing documents
This file contains my findings on the PC-E220. There is not much information around.
* The [user manual](PCE220_OM_EN_OCR.pdf) / german [manual](Sharp_PC-E220_GE.pdf)
* The [service manual](PCE220_SM_SHARP_EN.pdf)
* [The Sharp PC-E220 Homepage](https://wwwhomes.uni-bielefeld.de/achim/pc-e220.html). (copy of the site, just in case: [pc-e220-homepage.tgz](pc-e220-homepage.tgz).

## my reverse engineering

### Interrupt Mode
I assume, that the LZ8413AM uses Mode 1 interrupts as default. Reason: In all Roms there is only one place where "IM X" is called (to IM 1). Memory adress 0x0038 which is used for Mode 1 is setup (to RET -> wake from HALT). Therefore I created a custom ram map which switches to mode 1 before entering RUN mode on start.

### Character in
Starting from the [analysis on the pc-e220 homepage](https://wwwhomes.uni-bielefeld.de/achim/pc-e220/char_in.txt) I commented the character in code a little more, see [charin.asm](charin.asm)
