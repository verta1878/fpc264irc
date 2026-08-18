#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Linking /tmp/t_cross
OFS=$IFS
IFS="
"
/usr/bin/ld       -L. -o /tmp/t_cross link.res
if [ $? != 0 ]; then DoExitLink /tmp/t_cross; fi
IFS=$OFS
