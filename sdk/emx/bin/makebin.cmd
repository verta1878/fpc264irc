@echo off
if "%1"=="" goto usage
:jump
echo %1
goto %1

:usage
echo Usage: makebin PROGRAMS
echo PROGRAMS:
echo   gcc cpp cc1 as gasp gdb ld ar strip size nm objdump cc1plus cc1obj
echo   info makeinfo texindex emxfpemu
echo Shortcuts:
echo   all (all of the above)
echo   all-as (as gasp)
echo   all-gcc (gcc cpp cc1 cc1plus cc1obj)
echo   all-binutils (old-binutils new-binutils)
echo   old-binutils (ld strip)
echo   new-binutils (ar size nm objdump gprof)
echo   all-texinfo (info makeinfo texindex)
goto end

:all
call makebin gcc cpp cc1 cc1plus cc1obj as gasp gdb ld ar strip size nm objdump gprof info makeinfo texindex emxfpemu
goto next

:all-as
call makebin as gasp
goto next

:all-gcc
call makebin gcc cpp cc1 cc1plus cc1obj
goto next

:all-binutils
call makebin old-binutils new-binutils
goto next

:old-binutils
call makebin ld strip
goto next

:new-binutils
call makebin ar size nm objdump gprof
goto next

:all-texinfo
call makebin info makeinfo texindex
goto next

:gcc
emxbind -bsq -o \emx\new\gcc \emx\gnu\gcc-2.8\xgcc
goto next

:cpp
emxbind -bsq -o \emx\new\cpp \emx\gnu\gcc-2.8\cccp
goto next

:cc1
emxbind -bsq -o \emx\new\cc1 \emx\gnu\gcc-2.8\cc1
goto next

:cc1plus
emxbind -bsq -o \emx\new\cc1plus \emx\gnu\gcc-2.8\cp\cc1plus
goto next

:cc1obj
emxbind -bsq -o \emx\new\cc1obj \emx\gnu\gcc-2.8\cc1obj
goto next

:as
emxbind -bsq -o \emx\new\as \emx\gnu\binutils.26\gas\as.new
goto next

:gasp
emxbind -bsq -o \emx\new\gasp \emx\gnu\binutils.26\gas\gasp.new
goto next

:gdb
emxbind -bsq -o \emx\new\gdb \emx\gnu\gdb-4.16\gdb\gdb -p
goto next

:ld
emxbind -bsq -o \emx\new\ld \emx\gnu\binutils.old\ld
goto next

:strip
emxbind -bsq -o \emx\new\strip \emx\gnu\binutils.old\strip
goto next

:ar
emxbind -bsq -o \emx\new\ar \emx\gnu\binutils.26\binutils\ar
goto next

:nm
emxbind -bsq -o \emx\new\nm \emx\gnu\binutils.26\binutils\nm
goto next

:size
emxbind -bsq -o \emx\new\size \emx\gnu\binutils.26\binutils\size
goto next

:objdump
emxbind -bsq -o \emx\new\objdump \emx\gnu\binutils.26\binutils\objdump
goto next

:gprof
emxbind -bsq -o \emx\new\gprof \emx\gnu\binutils.26\gprof\gprof
goto next

:info
copy \emx\gnu\info\info.exe \emx\new
emxbind -sq \emx\new\info.exe
goto next

:makeinfo
copy \emx\gnu\makeinfo\makeinfo.exe \emx\new
emxbind -sq \emx\new\makeinfo.exe
goto next

:texindex
copy \emx\gnu\texindex\texindex.exe \emx\new
emxbind -sq \emx\new\texindex.exe
goto next

:emxfpemu
copy \emx\gnu\fpu-emu\emxfpemu \emx\new
strip \emx\new\emxfpemu
goto next

:next
shift
if not "%1" == "" goto jump
:end
