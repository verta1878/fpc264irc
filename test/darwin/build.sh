#!/bin/bash
# Build the fpc264irc Mac (i386-darwin) test programs on the Linux host - byte, 2026-10-07
# usage: test/darwin/build.sh [out dir]      -> <out>/<name>  (Mach-O i386 programs; default $TMPDIR/fpc264irc-darwin-test)
K=$(cd "$(dirname "$0")" && pwd); R=$(cd "$K/../.." && pwd); O=${1:-${TMPDIR:-/tmp}/fpc264irc-darwin-test}; mkdir -p "$O"
T=$R/bin/tools/i386-darwin; U=$R/bin/units/i386-darwin
chmod +x "$R/bin/ppc386" "$T"/* 2>/dev/null
for p in hello crttest filetest sysinfo unicode threads fvdemo carbon cocoa graphdemo; do
  # fv/ first: bin/units/i386-darwin also holds Apple's Carbon "Dialogs" unit (same name as Free Vision's dialogs)
  "$R/bin/ppc386" -Tdarwin -FD"$T" -XR"$T/MacOSX10.6.sdk" -Fu"$U/fv" -Fu"$U" -FE"$O" -FU"$O" "$K/$p.pas" \
    > "$O/$p.log" 2>&1 && echo "$p ok" || { echo "$p FAILED:"; grep -E 'Error|Fatal|ld:' "$O/$p.log"; }
done
rm -f "$O"/*.o "$O"/*.ppu "$O"/link*.res "$O"/ppas.sh
