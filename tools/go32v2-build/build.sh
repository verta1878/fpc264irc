#!/bin/bash
# fpc264irc go32v2 (32-bit DOS) unit build kit - byte, 2026-10-13
# usage: tools/go32v2-build/build.sh <i386|x86_64> [work dir]     (Linux x86_64 host; default $TMPDIR/fpc264irc-go32v2-<cpu>)
# Builds the unit set of bin/units/<cpu>-go32v2 from src/ with bin/ppc386 / bin/ppcx64 and packs it as the repo ships it:
#   1 copy src/rtl + src/packages, all file dates 2025-01-01 (a .ppu records the date of every source file it was built
#     from, so a fixed date makes every rebuild byte-identical); see README.md
#   2 RTL: the RTL Makefile (rtl/go32v2)
#   3 the other units: drive.py, from units-<cpu>.txt (the shipped folder's units and their sources; units.py),
#     package units with the options the shipped ones were built with (opts-<cpu>.txt; pickopts.py)
#   4 tools/smartpack/pack-units.sh: <unit>.o -> libp<unit>.a, .ppu rewritten to link the archive
#   5 i386 only: the Lazarus units of bin/lazarus/units/i386-go32v2 (lazdrive.py, laz-i386.txt),
#     against the units of step 4, packed the same way
# Result: <work>/units (bin/units/<cpu>-go32v2) and, for i386, <work>/lazarus (bin/lazarus/units/i386-go32v2).
# Needs make, python3.
set -e
export TZ=UTC
CPU=${1:?usage: build.sh i386|x86_64 [work dir]}
K=$(cd "$(dirname "$0")" && pwd); R=$(cd "$K/../.." && pwd)
D=${2:-${TMPDIR:-/tmp}/fpc264irc-go32v2-$CPU}; mkdir -p "$D"; W=$(cd "$D" && pwd)
case $CPU in i386) PC=$R/bin/ppc386; ASF=--32;; x86_64) PC=$R/bin/ppcx64; ASF=--64;; *) echo "cpu?"; exit 1;; esac
T=$R/bin/tools/$CPU-go32v2; OPT=${OPT-}        # no -O2, as shipped
[ -f "$K/units-$CPU.txt" ] || { echo "no units-$CPU.txt yet (only i386-go32v2 is done; x86_64-go32v2 is item 6 of docs/UNIT-REBUILD.md)"; exit 1; }
chmod +x "$PC" "$T"/* "$R/bin/tools/make" 2>/dev/null || true
MAKE=make; command -v make >/dev/null || MAKE=$R/bin/tools/make

echo "[1/5] sources"
rm -rf "$W/src" "$W/libs" "$W/units" "$W/b" "$W/lazarus" "$W/lz"; mkdir -p "$W/src"
cp -r "$R/src/rtl" "$R/src/packages" "$W/src/"; cp -r "$R/libs" "$W/"
[ "$CPU" = i386 ] && cp -r "$R/src/lazarus" "$W/src/"
cp "$K/patched/fileutil.pas" "$W/src/lazarus/lazutils/fileutil.pas"   # GO32V2 takes the OS/2 (Dos) branch, as in lazfileutils.pas
find "$W/src" "$W/libs" -exec touch -h -d '2025-01-01 00:00:00' {} +

echo "[2/5] RTL"
(cd "$W/src/rtl/go32v2" && $MAKE all CPU_TARGET=$CPU OS_TARGET=go32v2 BINUTILSPREFIX= FPC="$PC" \
   AS="$T/as" LD="$T/ld" AR="$T/ar" OPT="$OPT -FD$T") > "$W/rtl.log" 2>&1 || { grep -E 'Error|Fatal' "$W/rtl.log" | head; exit 1; }
echo "      $(ls "$W/src/rtl/units/go32v2"/*.ppu | wc -l) units"

echo "[3/5] units (drive.py)"
mkdir -p "$W/b"
python3 "$K/drive.py" "$R" $CPU "$K/units-$CPU.txt" "$W/src/rtl/units/go32v2" "$W/b/units" "$W/src" $OPT | tee "$W/drive.log"
grep -v -E ': (OK|KEEP)' "$W/b/build.txt" && exit 1 || true

echo "[4/5] packing .o -> libp<unit>.a"
# -CX archives made by the compiler carry the build time in every member header: rewrite them without (ar D), same
# members in the same order, so a rebuild is byte-identical
renorm() { local d; for a in "$1"/*.a; do
  [ "$("$T/ar" t "$a" | wc -l)" -gt 1 ] || continue
  d=$(mktemp -d); (cd "$d" && "$T/ar" x "$a" && "$T/ar" t "$a" > .order && rm -f "$a" && xargs "$T/ar" rcsD "$a" < .order); rm -rf "$d"
done; }
mv "$W/b/units" "$W/units"; renorm "$W/units"; DEL=$W/delete.txt; : > "$DEL"
R="$R" bash "$R/tools/smartpack/pack-units.sh" "$W/units" $CPU-go32v2 "$DEL"
while read -r f; do rm -f "$f"; done < "$DEL"
echo "done: $(ls "$W/units"/*.ppu | wc -l) units in $W/units"

[ "$CPU" = i386 ] || exit 0
echo "[5/5] Lazarus units (lazdrive.py)"
mkdir -p "$W/lz"
python3 "$K/lazdrive.py" "$R" "$K/laz-i386.txt" "$W/units" "$W/lz/units" "$W/src" | tee "$W/lazdrive.log"
grep -v ': OK' "$W/lz/lazbuild.txt" && exit 1 || true
DEL=$W/lz/delete.txt; : > "$DEL"
for d in $(cd "$W/lz/units" && find . -mindepth 1 -type d | sed 's|^\./||'); do
  R="$R" bash "$R/tools/smartpack/pack-units.sh" "$W/lz/units/$d" i386-go32v2 "$DEL"
done
while read -r f; do rm -f "$f"; done < "$DEL"
mv "$W/lz/units" "$W/lazarus"
echo "done: $(find "$W/lazarus" -name '*.ppu' | wc -l) Lazarus units in $W/lazarus"
