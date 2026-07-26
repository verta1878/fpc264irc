#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Assembling resource
/usr/bin/as -o bin/units/i386-darwin/resource.o  bin/units/i386-darwin/resource.s -arch i386
if [ $? != 0 ]; then DoExitAsm resource; fi
