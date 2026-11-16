#!/bin/bash
# Build the fpc264irc 64-bit Mac (x86_64-darwin) test programs on the Linux host - byte, 2026-10-09
# usage: test/darwin64/build.sh [out dir]   -> <out>/<name>  (Mach-O x86_64 programs; default $TMPDIR/fpc264irc-darwin64-test)
# Same sources as the 32-bit set (test/darwin/*.pas), built with bin/ppcx64; graphdemo is left out (no 64-bit graph).
K=$(cd "$(dirname "$0")" && pwd); R=$(cd "$K/../.." && pwd); O=${1:-${TMPDIR:-/tmp}/fpc264irc-darwin64-test}; mkdir -p "$O"
T=$R/bin/tools/i386-darwin; U=$R/bin/units/x86_64-darwin
chmod +x "$R/bin/ppcx64" "$T"/* 2>/dev/null
for p in hello crttest filetest sysinfo unicode threads fvdemo carbon cocoa; do
  # fv/ first: it holds Free Vision's dialogs and menus; the main folder has univint's units of the same names
  "$R/bin/ppcx64" -Tdarwin -FD"$T" -XR"$T/MacOSX10.6.sdk" -Fu"$U/fv" -Fu"$U" -FE"$O" -FU"$O" "$R/test/darwin/$p.pas" \
    > "$O/$p.log" 2>&1 && echo "$p ok" || { echo "$p FAILED:"; grep -E 'Error|Fatal|ld:' "$O/$p.log"; }
done
rm -f "$O"/*.o "$O"/*.ppu "$O"/link*.res "$O"/ppas.sh
