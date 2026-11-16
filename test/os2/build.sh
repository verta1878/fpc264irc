#!/bin/bash
# Build the fpc264irc OS/2 test programs (native -Tos2, Linux x86_64 host) - byte, 2026-10-07
# usage: test/os2/build.sh [out dir]      -> <out>/*.exe  (default $TMPDIR/fpc264irc-os2-test)  (OS/2 LX executables, copy them to the OS/2 machine)
K=$(cd "$(dirname "$0")" && pwd); R=$(cd "$K/../.." && pwd); O=${1:-${TMPDIR:-/tmp}/fpc264irc-os2-test}; mkdir -p "$O"
chmod +x "$R/bin/ppc386" "$R/bin/tools/i386-os2/"* 2>/dev/null
for p in hello crttest filetest sysinfo threads fvdemo graphdemo; do
  x=""; [ $p = graphdemo ] && x=-WG          # graphdemo is a Presentation Manager program
  "$R/bin/ppc386" -Tos2 -Xs $x -FD"$R/bin/tools/i386-os2" -Fu"$R/bin/units/i386-os2" -FE"$O" -FU"$O" "$K/$p.pas" \
    > "$O/$p.log" 2>&1 && echo "$p.exe ok" || { echo "$p FAILED:"; grep -E 'Error|Fatal' "$O/$p.log"; }
done
rm -f "$O"/*.o "$O"/*.out "$O"/*.ppu "$O"/link*.res "$O"/ppas.sh
