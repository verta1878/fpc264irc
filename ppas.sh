#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Assembling serial
/usr/bin/as -o bin/units/i386-os2/serial.o  bin/units/i386-os2/serial.s
if [ $? != 0 ]; then DoExitAsm serial; fi
rm bin/units/i386-os2/serial.s
