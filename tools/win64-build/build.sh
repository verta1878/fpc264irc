#!/bin/bash
# fpc264irc win64 unit build kit - byte, 2026-11-14 (from tools/win32-build)
# usage: tools/win64-build/build.sh [work dir]          (Linux x86_64 host; default $TMPDIR/fpc264irc-win64)
# Builds the unit set of bin/units/x86_64-win64 from src/ with bin/ppcx64 and packs it as the repo ships it:
#   1 copy src/rtl + src/packages, all file dates 2025-01-01 (a .ppu records the date of every source file it was
#     built from, so a fixed date makes every rebuild byte-identical)
#   2 every unit of units-x86_64.txt with drive.py, dependencies first - the RTL units too, with the RTL Makefile's
#     options (-dx86_64 and the RTL include folders; system -Us -Sg); package units with the options the shipped ones
#     were built with (opts-x86_64.txt; pickopts.py); locked-x86_64.txt: taken from the shipped folder unchanged
#     (wcedit: built against IDE units the folder does not hold, which today's source no longer matches)
#   3 tools/smartpack/pack-units.sh: <unit>.o -> libp<unit>.a, .ppu rewritten to link the archive
# win64 uses the compiler's own assembler and linker (no bin/tools/x86_64-win64); packing uses the host's ar.
# Result: <work>/units (bin/units/x86_64-win64). Needs python3, ar.
set -e
export TZ=UTC
CPU=x86_64
K=$(cd "$(dirname "$0")" && pwd); R=$(cd "$K/../.." && pwd)
D=${1:-${TMPDIR:-/tmp}/fpc264irc-win64}; mkdir -p "$D"; W=$(cd "$D" && pwd)
PC=$R/bin/ppcx64; OPT=${OPT-}
chmod +x "$PC" 2>/dev/null || true

echo "[1/3] sources"
rm -rf "$W/src" "$W/units" "$W/b"; mkdir -p "$W/src"
cp -rL "$R/src/rtl" "$R/src/packages" "$W/src/"
find "$W/src" -exec touch -h -d '2025-01-01 00:00:00' {} +

echo "[2/3] units (drive.py)"
mkdir -p "$W/b/nortl"
python3 "$K/drive.py" "$R" $CPU "$K/units-$CPU.txt" "$W/b/nortl" "$W/b/units" "$W/src" $OPT | tee "$W/drive.log"
grep -v -E ': OK' "$W/b/build.txt" && exit 1 || true

echo "[3/3] packing .o -> libp<unit>.a"
mv "$W/b/units" "$W/units"; DEL=$W/delete.txt; : > "$DEL"
R="$R" bash "$R/tools/smartpack/pack-units.sh" "$W/units" $CPU-win64 "$DEL"
while read -r f; do rm -f "$f"; done < "$DEL"
# not shipped (as bin/units/x86_64-win64 never had them): the import libraries libimp<unit>.a the compiler writes -
# win64 links with the compiler's internal linker, which takes the DLL imports from the .ppu - and the .lfm copies
# the fcl-web examples' {$R *.lfm} puts next to their unit
rm -f "$W/units"/libimp*.a "$W/units"/*.lfm
echo "done: $(ls "$W/units"/*.ppu | wc -l) units in $W/units"
