#!/bin/sh
# fpc264irc: build emxbind as a static 32-bit Linux program (needs gcc-multilib).  byte, 2026-10-02
# 32-bit on purpose: emxbind reads a.out headers through structs with 'unsigned long' fields,
# which are 8 bytes on 64-bit Linux - the old 64-bit build (bin/tools/i386-emx/emx-emxbind) misreads every header.
set -e
cd "$(dirname "$0")"
for f in *.c; do gcc -m32 -O -w -fgnu89-inline -DLIST_OPT=1 -DVERSION='"0.9d-fpc264irc"' -Iinc -c "$f" -o "${f%.c}.o"; done
gcc -m32 -static -o emxbind *.o
rm -f *.o
echo "built ./emxbind - copy it with os2stub.bin to bin/tools/i386-os2/"
