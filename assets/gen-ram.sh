#!/bin/sh

# use modifed image which enables interrupt mode 1 by default
objcopy --input-target=ihex --output-target=binary sharp-ram0-im1.txt sharp-ram0.bin
#objcopy --input-target=ihex --output-target=binary sharp-ram0.txt sharp-ram0.bin
