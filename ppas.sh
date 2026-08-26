#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Linking /tmp/test_usbcross
OFS=$IFS
IFS="
"
/usr/bin/ld -b elf32-i386 -m elf_i386      -L. -o /tmp/test_usbcross -T link.res
if [ $? != 0 ]; then DoExitLink /tmp/test_usbcross; fi
IFS=$OFS
