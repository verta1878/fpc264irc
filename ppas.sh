#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Assembling zipper
/usr/bin/as -o bin/units/i386-os2/zipper.o  bin/units/i386-os2/zipper.s
if [ $? != 0 ]; then DoExitAsm zipper; fi
rm bin/units/i386-os2/zipper.s
