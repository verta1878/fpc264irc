#!/bin/bash
# fpc264irc x86_64-darwin (64-bit Mac) unit build kit - byte, 2026-10-09
# usage: tools/darwin64-build/build.sh [work dir]      (Linux x86_64 host; default $TMPDIR/fpc264irc-darwin64)
# Builds the unit set of bin/units/x86_64-darwin with bin/ppcx64 and packs it the way the repo ships it:
#   1 copy src/rtl + src/packages to the work dir, all file dates set to 2025-01-01 (a .ppu records the date of every
#     source file it was built from, so a fixed date makes every rebuild byte-identical); patched/dynlibs.pas over
#     rtl/inc/dynlibs.pas
#   2 RTL: the RTL Makefile (rtl/darwin, CPU_TARGET=x86_64) - 59 units
#   3 everything else: drive.py, from units.txt (same sources as the i386-darwin set; see README.md)
#   4 tools/smartpack/pack-units.sh: <unit>.o -> libp<unit>.a, .ppu rewritten to link the archive
# Result: <work>/units (+ units/fv) - copy into bin/units/x86_64-darwin. Needs: make, python3, llvm-ar.
set -e
export TZ=UTC
K=$(cd "$(dirname "$0")" && pwd); R=$(cd "$K/../.." && pwd)
D=${1:-${TMPDIR:-/tmp}/fpc264irc-darwin64}; mkdir -p "$D"; W=$(cd "$D" && pwd)
chmod +x "$R/bin/ppcx64" "$R/bin/tools/i386-darwin/"* 2>/dev/null || true

echo "[1/4] sources"
rm -rf "$W/src" "$W/units" "$W/b"; mkdir -p "$W/src"
cp -r "$R/src/rtl" "$R/src/packages" "$W/src/"
cp "$K/patched/dynlibs.pas" "$W/src/rtl/inc/dynlibs.pas"
find "$W/src" -exec touch -h -d '2025-01-01 00:00:00' {} +

echo "[2/4] RTL"
(cd "$W/src/rtl/darwin" && make all CPU_TARGET=x86_64 OS_TARGET=darwin BINUTILSPREFIX= FPC="$R/bin/ppcx64" \
   OPT="-FD$R/bin/tools/i386-darwin") > "$W/rtl.log" 2>&1 || { grep -E 'Error|Fatal' "$W/rtl.log" | head; exit 1; }
echo "      $(ls "$W/src/rtl/units/x86_64-darwin"/*.ppu | wc -l) units"

echo "[3/4] units (drive.py)"
mkdir -p "$W/b"
python3 "$K/drive.py" "$R" "$K/units.txt" "$W/src/rtl/units/x86_64-darwin" "$W/b/units" "$W/src" > "$W/drive.log"
tail -1 "$W/drive.log"; grep -v -E ': (OK|SKIP)' "$W/b/build.txt" && exit 1 || true

echo "[4/4] packing .o -> libp<unit>.a"
mv "$W/b/units" "$W/units"; DEL=$W/delete.txt; : > "$DEL"
for d in "$W/units" "$W/units/fv"; do R="$R" bash "$R/tools/smartpack/pack-units.sh" "$d" x86_64-darwin "$DEL"; done
while read -r f; do rm -f "$f"; done < "$DEL"
echo "done: $(ls "$W/units"/*.ppu | wc -l) + $(ls "$W/units/fv"/*.ppu | wc -l) (fv/) units in $W/units"
