#!/bin/bash
# fpc264irc: build stub i386 Mach-O system libraries and frameworks for linking only - byte, 2026-10-07 / 2026-10-08
# usage: gen-stubs.sh <dir with as + ld> <SDK dir>       (SDK dir = ...MacOSX10.6.sdk; writes usr/lib and System/Library/Frameworks)
# A stub only lists symbol names (stubs/*.syms, stubs/frameworks/*.syms); each symbol is an empty function. ObjC classes
# (.objc_class_name_X) are data words: Foundation/AppKit export them as absolute symbols, which ld64 drops from a dylib.
# Each stub carries the real library's install name, so a program linked against it loads the real library or framework
# on the Mac. Nothing here comes from Apple's SDK.
#   usr/lib/libSystem.B.dylib   /usr/lib/libSystem.B.dylib  (copies: libc, libm, libdl, libpthread .dylib - symlinks on macOS)
#   usr/lib/libiconv.2.dylib    /usr/lib/libiconv.2.dylib    (copy: libiconv.dylib)
#   usr/lib/libncurses.5.4.dylib /usr/lib/libncurses.5.4.dylib (copy: libncurses.dylib)
#   usr/lib/libobjc.A.dylib     /usr/lib/libobjc.A.dylib     (copy: libobjc.dylib)
#   System/Library/Frameworks/<F>.framework/Versions/<V>/<F> (+ copy <F>.framework/<F>) for every line of stubs/frameworks.txt
#                               (<V> from the install name: C for Foundation and AppKit, A for the others)
#                               (name|install name|re-exported frameworks)
set -e
B=$1; S=$2; L=$S/usr/lib; FW=$S/System/Library/Frameworks
K=$(cd "$(dirname "$0")" && pwd); T=$(mktemp -d); mkdir -p "$L" "$FW"
stub() { # $1=output file $2=install name $3=current version $4..=syms files, then "--" and extra ld options
  # Universal (i386 + x86_64), like Apple's own libraries; each slice is linked on its own, then lipo joins them.
  # i386 re-exports: built for 10.5 so ld64 writes LC_REEXPORT_DYLIB (for 10.4 it writes the older LC_SUB_LIBRARY /
  # LC_SUB_UMBRELLA form, which does not carry /usr/lib/libobjc through Foundation); plain i386 stubs: 10.4.
  # x86_64: always 10.5 (FPC's x86_64-darwin default).
  local out=$1 inst=$2 ver=$3; shift 3; local files=() n a min slices=()
  while [ $# -gt 0 ] && [ "$1" != "--" ]; do files+=("$1"); shift; done; [ "$1" = "--" ] && shift
  n=$(basename "$out")
  for a in i386 x86_64; do
    mkdir -p "$T/$n/$a"; min=10.4
    case "$a: $* " in *" -reexport_library "*|x86_64:*) min=10.5;; esac
    # ObjC classes: i386 (ObjC 1 runtime) .objc_class_name_X; x86_64 (ObjC 2) _OBJC_CLASS_$_X + _OBJC_METACLASS_$_X
    { echo '.text'
      cat "${files[@]}" | sort -u | while read -r s; do
        [ -n "$s" ] || continue
        case $a:$s in
          i386:.objc_class_name_*) echo ".data"; echo ".globl $s"; echo "$s: .long 0"; echo ".text";;
          x86_64:.objc_class_name_*) c=${s#.objc_class_name_}; echo ".data"
                   for k in _OBJC_CLASS_\$_$c _OBJC_METACLASS_\$_$c; do echo ".globl $k"; echo "$k: .quad 0"; done; echo ".text";;
          *) echo ".globl $s"; echo "$s: ret";;
        esac
      done; } > "$T/$n/$a/stub.s"
    # ld64 refuses a dylib that does not link libSystem; it lets one through whose input is named exit-asm.o (the
    # way Apple builds libSystem itself) - used for the libSystem stub only, the other stubs link against it.
    local obj="$T/$n/$a/stub.o"; [ "$n" = libSystem.B.dylib ] && obj="$T/$n/$a/exit-asm.o"
    "$B/as" -arch $a -o "$obj" "$T/$n/$a/stub.s"
    "$B/ld" -arch $a -dylib -syslibroot "$S" -macosx_version_min $min -install_name "$inst" -compatibility_version 1.0.0 \
            -current_version "$ver" -o "$T/$n/$a/$n" "$obj" "$@" 2>&1 | grep -v 'directory not found for option' || true
    [ -f "$T/$n/$a/$n" ] || { echo "stub $n ($a) failed"; exit 1; }
    slices+=("$T/$n/$a/$n")
  done
  "$B/lipo" -create -output "$out" "${slices[@]}"
  echo "$n: $(cat "${files[@]}" | sort -u | grep -c .) symbols"
}
X=$K/stubs
stub "$L/libSystem.B.dylib"    /usr/lib/libSystem.B.dylib    111.0.0 "$X/libSystem.B.syms" "$X/libSystem.extra.syms"
stub "$L/libiconv.2.dylib"     /usr/lib/libiconv.2.dylib     7.0.0   "$X/libiconv.2.syms"     -- "$L/libSystem.B.dylib"
stub "$L/libncurses.5.4.dylib" /usr/lib/libncurses.5.4.dylib 5.4.0   "$X/libncurses.5.4.syms" -- "$L/libSystem.B.dylib"
stub "$L/libobjc.A.dylib"      /usr/lib/libobjc.A.dylib      228.0.0 "$X/libobjc.A.syms"      -- "$L/libSystem.B.dylib"
for n in libc libm libdl libpthread; do cp "$L/libSystem.B.dylib" "$L/$n.dylib"; done
cp "$L/libiconv.2.dylib" "$L/libiconv.dylib"; cp "$L/libncurses.5.4.dylib" "$L/libncurses.dylib"; cp "$L/libobjc.A.dylib" "$L/libobjc.dylib"
# frameworks, in file order (frameworks.txt lists every framework after the ones it re-exports)
while IFS='|' read -r name inst reex; do
    [ -n "$name" ] || continue
    opts=("$L/libSystem.B.dylib")
    for r in ${reex//,/ }; do
      if [ "$r" = libobjc ]; then opts+=(-reexport_library "$L/libobjc.A.dylib")
      else opts+=(-reexport_library "$S$(grep "^$r|" "$X/frameworks.txt" | cut -d'|' -f2)"); fi
    done
    # ld finds -framework X at X.framework/X, and a re-exported framework at its install path
    # X.framework/Versions/<V>/X = its install path (symlinks on macOS; two copies here, git on Windows does not keep symlinks)
    mkdir -p "$(dirname "$S$inst")"
    stub "$S$inst" "$inst" 1.0.0 "$X/frameworks/$name.syms" -- "${opts[@]}"
    cp "$S$inst" "$FW/$name.framework/$name"
done < "$X/frameworks.txt"
rm -rf "$T"
