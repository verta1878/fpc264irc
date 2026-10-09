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
#   System/Library/Frameworks/<F>.framework/Versions/A/<F> (+ copy <F>.framework/<F>) for every line of stubs/frameworks.txt
#                               (name|install name|re-exported frameworks)
set -e
B=$1; S=$2; L=$S/usr/lib; FW=$S/System/Library/Frameworks
K=$(cd "$(dirname "$0")" && pwd); T=$(mktemp -d); mkdir -p "$L" "$FW"
stub() { # $1=output file $2=install name $3=current version $4..=syms files, then "--" and extra ld options
  # re-exports: built for 10.5 so ld64 writes LC_REEXPORT_DYLIB (for 10.4 it writes the older LC_SUB_LIBRARY /
  # LC_SUB_UMBRELLA form, which does not carry /usr/lib/libobjc through Foundation); plain stubs: 10.4
  local out=$1 inst=$2 ver=$3; shift 3; local files=() n min=10.4
  case " $* " in *" -reexport_library "*) min=10.5;; esac
  while [ $# -gt 0 ] && [ "$1" != "--" ]; do files+=("$1"); shift; done; [ "$1" = "--" ] && shift
  n=$(basename "$out"); mkdir -p "$T/$n"
  { echo '.text'
    cat "${files[@]}" | sort -u | while read -r s; do
      [ -n "$s" ] || continue
      case $s in .objc_class_name_*) echo ".data"; echo ".globl $s"; echo "$s: .long 0"; echo ".text";;
                 *) echo ".globl $s"; echo "$s: ret";; esac
    done; } > "$T/$n/stub.s"
  # ld64 refuses a dylib that does not link libSystem; it lets one through whose input is named exit-asm.o (the way
  # Apple builds libSystem itself) - used for the libSystem stub only, the other stubs link against it.
  local obj="$T/$n/stub.o"; [ "$n" = libSystem.B.dylib ] && obj="$T/$n/exit-asm.o"
  "$B/as" -arch i386 -o "$obj" "$T/$n/stub.s"
  "$B/ld" -arch i386 -dylib -syslibroot "$S" -macosx_version_min $min -install_name "$inst" -compatibility_version 1.0.0 -current_version "$ver" \
          -o "$out" "$obj" "$@" 2>&1 | grep -v 'directory not found for option' || true
  [ -f "$out" ] || { echo "stub $n failed"; exit 1; }
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
      else opts+=(-reexport_library "$FW/$r.framework/Versions/A/$r"); fi
    done
    # ld finds -framework X at X.framework/X, and a re-exported framework at its install path
    # X.framework/Versions/A/X (symlinks on macOS; two copies here, git on Windows does not keep symlinks)
    mkdir -p "$FW/$name.framework/Versions/A"
    stub "$FW/$name.framework/Versions/A/$name" "$inst" 1.0.0 "$X/frameworks/$name.syms" -- "${opts[@]}"
    cp "$FW/$name.framework/Versions/A/$name" "$FW/$name.framework/$name"
done < "$X/frameworks.txt"
rm -rf "$T"
