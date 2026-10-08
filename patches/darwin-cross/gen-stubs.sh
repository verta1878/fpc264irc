#!/bin/bash
# fpc264irc: build stub i386 Mach-O system libraries for linking only - byte, 2026-10-07
# usage: gen-stubs.sh <dir with as + ld> <output lib dir>
# A stub dylib only lists symbol names (stubs/*.syms); each symbol is an empty function. It carries the real library's
# install name, so a program linked against it loads the real library on the Mac. Nothing here comes from Apple's SDK.
#   libSystem.B.dylib  install name /usr/lib/libSystem.B.dylib  (copies: libc, libm, libdl, libpthread .dylib - on macOS
#                      these are symlinks to libSystem)
#   libiconv.2.dylib   /usr/lib/libiconv.2.dylib    (copy: libiconv.dylib)
#   libncurses.5.4.dylib /usr/lib/libncurses.5.4.dylib (copy: libncurses.dylib)
set -e
B=$1; L=$2; K=$(cd "$(dirname "$0")" && pwd); T=$(mktemp -d); mkdir -p "$L"
stub() { # $1=syms file $2=output name $3=install name $4=current version, rest: extra ld options
  local syms=$1 out=$2 inst=$3 ver=$4; shift 4
  mkdir -p "$T/$out"; { echo '.text'; while read -r s; do [ -n "$s" ] || continue; echo ".globl $s"; echo "$s: ret"; done < "$K/stubs/$syms"; } > "$T/$out/stub.s"
  # ld64 refuses a dylib that does not link libSystem; it lets one through whose input is named exit-asm.o (the way
  # Apple builds libSystem itself) - used for the libSystem stub only, the other stubs link against it.
  local obj="$T/$out/stub.o"; [ "$out" = libSystem.B.dylib ] && obj="$T/$out/exit-asm.o"
  "$B/as" -arch i386 -o "$obj" "$T/$out/stub.s"
  "$B/ld" -arch i386 -dylib -macosx_version_min 10.4 -install_name "$inst" -compatibility_version 1.0.0 -current_version "$ver" \
          -o "$L/$out" "$obj" "$@" 2>&1 | grep -v 'directory not found for option' || true
  [ -f "$L/$out" ] || { echo "stub $out failed"; exit 1; }
  echo "$out: $(grep -c . "$K/stubs/$syms") symbols"
}
stub libSystem.B.syms   libSystem.B.dylib   /usr/lib/libSystem.B.dylib   111.0.0
stub libiconv.2.syms    libiconv.2.dylib    /usr/lib/libiconv.2.dylib    7.0.0 "$L/libSystem.B.dylib"
stub libncurses.5.4.syms libncurses.5.4.dylib /usr/lib/libncurses.5.4.dylib 5.4.0 "$L/libSystem.B.dylib"
for n in libc libm libdl libpthread; do cp "$L/libSystem.B.dylib" "$L/$n.dylib"; done
cp "$L/libiconv.2.dylib" "$L/libiconv.dylib"; cp "$L/libncurses.5.4.dylib" "$L/libncurses.dylib"
rm -rf "$T"
