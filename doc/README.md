# Documentation on the Sharp PC-E220

## existing documents
This file contains my findings on the PC-E220. There is not much information around.
* The [user manual](PCE220_OM_EN_OCR.pdf) / german [manual](Sharp_PC-E220_GE.pdf)
* The [service manual](PCE220_SM_SHARP_EN.pdf)
* [The Sharp PC-E220 Homepage](https://wwwhomes.uni-bielefeld.de/achim/pc-e220.html). (copy of the site, just in case: [pc-e220-homepage.tgz](pc-e220-homepage.tgz).

## my reverse engineering

### Boot mode
Bank0 is initially mapped to 0x0000 (see bank0-0.asm). It sets interrupt mode, loads bank1 into the higher memory and then jumps into bank1 (0xfffa).

### Character in
Starting from the [analysis on the pc-e220 homepage](https://wwwhomes.uni-bielefeld.de/achim/pc-e220/char_in.txt) I commented the character in code a little more, see [charin.asm](charin.asm)
