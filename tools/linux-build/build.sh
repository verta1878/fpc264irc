#!/bin/bash
# fpc264irc Linux unit build kit - byte, 2026-10-13
# usage: tools/linux-build/build.sh <i386|x86_64> [work dir]     (Linux x86_64 host; default $TMPDIR/fpc264irc-linux-<cpu>)
# Builds the unit set of bin/units/<cpu>-linux from src/ with bin/ppc386 / bin/ppcx64 and packs it as the repo ships it:
#   1 copy src/rtl + src/packages, all file dates 2025-01-01 (a .ppu records the date of every source file it was built
#     from, so a fixed date makes every rebuild byte-identical); dynlibs = src/rtl/unix/dynlibs.pas (README.md)
#   2 RTL: the RTL Makefile (rtl/linux)
#   3 the other units: drive.py, from units-<cpu>.txt (the shipped folder's units and their sources; units.py),
#     package units with the options the shipped ones were built with (opts-<cpu>.txt; pickopts.py)
#   4 tools/smartpack/pack-units.sh: <unit>.o -> libp<unit>.a, .ppu rewritten to link the archive
#   5 the Lazarus units of bin/lazarus/units/<cpu>-linux (lazdrive.py, laz-<cpu>.txt), against the units of step 4,
#     packed the same way; x86_64 also the LCL copy bin/units/x86_64-linux/lcl (lazmain-x86_64.txt)
# Result: <work>/units (bin/units/<cpu>-linux, x86_64 with units/lcl) and <work>/lazarus (bin/lazarus/units/<cpu>-linux).
# Needs make, python3.
set -e
export TZ=UTC
CPU=${1:?usage: build.sh i386|x86_64 [work dir]}
K=$(cd "$(dirname "$0")" && pwd); R=$(cd "$K/../.." && pwd)
D=${2:-${TMPDIR:-/tmp}/fpc264irc-linux-$CPU}; mkdir -p "$D"; W=$(cd "$D" && pwd)
case $CPU in i386) PC=$R/bin/ppc386; ASF=--32;; x86_64) PC=$R/bin/ppcx64; ASF=--64;; *) echo "cpu?"; exit 1;; esac
T=$R/bin/tools/$CPU-linux; OPT=${OPT-}        # no -O2: how most shipped Linux units were built
[ -f "$K/units-$CPU.txt" ] || { echo "no units-$CPU.txt"; exit 1; }
chmod +x "$PC" "$T"/* "$R/bin/tools/make" 2>/dev/null || true
MAKE=make; command -v make >/dev/null || MAKE=$R/bin/tools/make

echo "[1/5] sources"
rm -rf "$W/src" "$W/units" "$W/b" "$W/lazarus" "$W/lz"; mkdir -p "$W/src"
cp -r "$R/src/rtl" "$R/src/packages" "$W/src/"
cp -r "$R/src/lazarus" "$W/src/"     # x86_64: lazaruspackageintf in the main folder comes from src/lazarus (2026-10-27)
cp "$R/src/rtl/unix/dynlibs.pas" "$W/src/rtl/inc/dynlibs.pas"     # with the Patch 5 names GetProcAddress / FreeLibrary (gl, openssl use them)
find "$W/src" -exec touch -h -d '2025-01-01 00:00:00' {} +

echo "[2/5] RTL"
(cd "$W/src/rtl/linux" && $MAKE all CPU_TARGET=$CPU OS_TARGET=linux BINUTILSPREFIX= FPC="$PC" \
   AS="$T/as $ASF" LD="$T/ld" AR="$T/ar" OPT="$OPT -FD$T") > "$W/rtl.log" 2>&1 || { grep -E 'Error|Fatal' "$W/rtl.log" | head; exit 1; }
echo "      $(ls "$W/src/rtl/units/$CPU-linux"/*.ppu | wc -l) units"

echo "[3/5] units (drive.py)"
mkdir -p "$W/b"
python3 "$K/drive.py" "$R" $CPU "$K/units-$CPU.txt" "$W/src/rtl/units/$CPU-linux" "$W/b/units" "$W/src" $OPT | tee "$W/drive.log"
grep -v -E ': OK' "$W/b/build.txt" && exit 1 || true

echo "[4/5] packing .o -> libp<unit>.a"
mv "$W/b/units" "$W/units"; DEL=$W/delete.txt; : > "$DEL"
R="$R" bash "$R/tools/smartpack/pack-units.sh" "$W/units" $CPU-linux "$DEL"
while read -r f; do rm -f "$f"; done < "$DEL"
echo "done: $(ls "$W/units"/*.ppu | wc -l) units in $W/units"

echo "[5/5] Lazarus units (lazdrive.py)"
mkdir -p "$W/lz"
python3 "$K/lazdrive.py" "$R" "$K/laz-$CPU.txt" "$W/units" "$W/lz/units" "$W/src" | tee "$W/lazdrive.log"
grep -v ': OK' "$W/lz/lazbuild.txt" && exit 1 || true
DEL=$W/lz/delete.txt; : > "$DEL"
for d in $(cd "$W/lz/units" && find . -mindepth 1 -type d | sed 's|^\./||'); do
  R="$R" bash "$R/tools/smartpack/pack-units.sh" "$W/lz/units/$d" $CPU-linux "$DEL"
done
while read -r f; do rm -f "$f"; done < "$DEL"
mv "$W/lz/units" "$W/lazarus"
echo "done: $(find "$W/lazarus" -name '*.ppu' | wc -l) Lazarus units in $W/lazarus"
[ -f "$K/lazmain-$CPU.txt" ] || exit 0
# x86_64: the flat LCL copy bin/units/x86_64-linux/lcl (lazutils + LCL + nogui widgetset in one folder)
echo "[5b] the LCL copy of the unit folder (lazmain-$CPU.txt) -> $W/units/lcl"
mkdir -p "$W/lzm"
python3 "$K/lazdrive.py" "$R" "$K/lazmain-$CPU.txt" "$W/units" "$W/lzm/units" "$W/src" | tee "$W/lazmain.log"
grep -v ': OK' "$W/lzm/lazbuild.txt" && exit 1 || true
DEL=$W/lzm/delete.txt; : > "$DEL"
R="$R" bash "$R/tools/smartpack/pack-units.sh" "$W/lzm/units/mainlcl" $CPU-linux "$DEL"
while read -r f; do rm -f "$f"; done < "$DEL"
mv "$W/lzm/units/mainlcl" "$W/units/lcl"
echo "done: $(ls "$W/units/lcl"/*.ppu | wc -l) units in $W/units/lcl"
