#!/bin/bash
# fpc264irc win32 unit build kit - byte, 2026-10-27 (from tools/linux-build)
# usage: tools/win32-build/build.sh [work dir]          (Linux x86_64 host; default $TMPDIR/fpc264irc-win32)
# Builds the unit set of bin/units/i386-win32 from src/ with bin/ppc386 and packs it as the repo ships it:
#   1 copy src/rtl, packages, lazarus, compiler, fpgui-src, utils, all file dates 2025-01-01 (a .ppu records the date of every source file
#     it was built from, so a fixed date makes every rebuild byte-identical)
#   2 (no RTL Makefile: system is locked, so the RTL units are built by drive.py like the others, with the options
#     of the RTL Makefile: -di386 and the RTL include folders)
#   3 every unit of units-i386.txt with drive.py: package units with the options
#     the shipped ones were built with (opts-i386.txt; pickopts.py); the units of locked-i386.txt (system: BUG-001,
#     BUG-029) are taken from bin/units/i386-win32 unchanged and everything is built against them
#   4 tools/smartpack/pack-units.sh: <unit>.o -> libp<unit>.a, .ppu rewritten to link the archive; the import
#     libraries the compiler writes (libimp<unit>.a) stay, their member dates set to 2025-01-01 (ardate.py)
# Result: <work>/units (bin/units/i386-win32). Needs make, python3.
set -e
export TZ=UTC
CPU=i386
K=$(cd "$(dirname "$0")" && pwd); R=$(cd "$K/../.." && pwd)
D=${1:-${TMPDIR:-/tmp}/fpc264irc-win32}; mkdir -p "$D"; W=$(cd "$D" && pwd)
PC=$R/bin/ppc386; T=$R/bin/tools/i386-win32; OPT=${OPT-}
chmod +x "$PC" "$T"/* "$R/bin/tools/make" 2>/dev/null || true
MAKE=make; command -v make >/dev/null || MAKE=$R/bin/tools/make

echo "[1/4] sources"
rm -rf "$W/src" "$W/units" "$W/b"; mkdir -p "$W/src"
cp -r "$R/src/rtl" "$R/src/packages" "$R/src/lazarus" "$R/src/compiler" "$R/src/fpgui-src" "$R/src/utils" "$W/src/"   # the win32 folder holds units of all of these
find "$W/src" -exec touch -h -d '2025-01-01 00:00:00' {} +

echo "[3/4] units (drive.py)"
mkdir -p "$W/b"
mkdir -p "$W/b/nortl"
python3 "$K/drive.py" "$R" i386 "$K/units-i386.txt" "$W/b/nortl" "$W/b/units" "$W/src" $OPT | tee "$W/drive.log"
grep -v -E ': OK' "$W/b/build.txt" && exit 1 || true

echo "[4/4] packing .o -> libp<unit>.a"
mv "$W/b/units" "$W/units"; DEL=$W/delete.txt; : > "$DEL"
R="$R" bash "$R/tools/smartpack/pack-units.sh" "$W/units" i386-win32 "$DEL"
while read -r f; do rm -f "$f"; done < "$DEL"
python3 "$K/ardate.py" "$W/units"/libimp*.a      # import libraries: fixed member dates (byte-identical rebuilds)
echo "done: $(ls "$W/units"/*.ppu | wc -l) units in $W/units"
