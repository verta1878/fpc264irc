#!/bin/bash
# fpc264irc i386-darwin (32-bit Mac) unit build kit - byte, 2026-10-16 (from tools/darwin64-build)
# usage: tools/darwin-build/build.sh [work dir]      (Linux x86_64 host; default $TMPDIR/fpc264irc-darwin)
# Builds bin/units/i386-darwin (+ fv/) and the Lazarus set bin/lazarus/units/i386-darwin from src/ with bin/ppc386 and
# packs them the way the repo ships units (.ppu + libp<unit>.a):
#   1 copy src/rtl + src/packages + src/lazarus, all file dates 2025-01-01 (a .ppu records the date of every source
#     file it was built from, so a fixed date makes every rebuild byte-identical); patched/dynlibs.pas
#   2 RTL: the RTL Makefile (rtl/darwin, CPU_TARGET=i386)
#   3 everything else: drive.py, from units.txt (units.py), per-unit options opts-i386.txt
#   4 tools/smartpack/pack-units.sh: <unit>.o -> libp<unit>.a, .ppu rewritten to link the archive
#   5 lazdrive.py: the Lazarus units (laz-i386.txt), against the units of step 4, packed the same way
# Result: <work>/units (+ units/fv, units/univint) -> bin/units/i386-darwin, <work>/lazarus -> bin/lazarus/units/i386-darwin.
# Needs: make, python3, llvm-ar.
set -e
export TZ=UTC
K=$(cd "$(dirname "$0")" && pwd); R=$(cd "$K/../.." && pwd)
D=${1:-${TMPDIR:-/tmp}/fpc264irc-darwin}; mkdir -p "$D"; W=$(cd "$D" && pwd)
T=$R/bin/tools/i386-darwin
chmod +x "$R/bin/ppc386" "$T"/* 2>/dev/null || true

echo "[1/5] sources"
rm -rf "$W/src" "$W/units" "$W/b" "$W/lazarus" "$W/lz"; mkdir -p "$W/src"
cp -r "$R/src/rtl" "$R/src/packages" "$R/src/lazarus" "$W/src/"
cp "$K/patched/dynlibs.pas" "$W/src/rtl/inc/dynlibs.pas"
find "$W/src" -exec touch -h -d '2025-01-01 00:00:00' {} +

echo "[2/5] RTL"
(cd "$W/src/rtl/darwin" && make all CPU_TARGET=i386 OS_TARGET=darwin BINUTILSPREFIX= FPC="$R/bin/ppc386" \
   OPT="-FD$T") > "$W/rtl.log" 2>&1 || { grep -E 'Error|Fatal' "$W/rtl.log" | head; exit 1; }
echo "      $(ls "$W/src/rtl/units/i386-darwin"/*.ppu | wc -l) units"

echo "[3/5] units (drive.py)"
mkdir -p "$W/b"
python3 "$K/drive.py" "$R" "$K/units.txt" "$W/src/rtl/units/i386-darwin" "$W/b/units" "$W/src" > "$W/drive.log"
tail -1 "$W/drive.log"; grep -v -E ': (OK|SKIP)' "$W/b/build.txt" && exit 1 || true

echo "[4/5] packing .o -> libp<unit>.a"
mv "$W/b/units" "$W/units"; DEL=$W/delete.txt; : > "$DEL"
for d in "$W/units" "$W/units/fv" "$W/units/univint"; do R="$R" bash "$R/tools/smartpack/pack-units.sh" "$d" i386-darwin "$DEL"; done
while read -r f; do rm -f "$f"; done < "$DEL"
echo "done: $(ls "$W/units"/*.ppu | wc -l) + $(ls "$W/units/fv"/*.ppu | wc -l) (fv/) + $(ls "$W/units/univint"/*.ppu | wc -l) (univint/) units in $W/units"

[ -f "$K/laz-i386.txt" ] || exit 0
echo "[5/5] Lazarus units (lazdrive.py)"
mkdir -p "$W/lz"
python3 "$K/lazdrive.py" "$R" "$K/laz-i386.txt" "$W/units" "$W/lz/units" "$W/src" | tee "$W/lazdrive.log"
grep -v ': OK' "$W/lz/lazbuild.txt" && exit 1 || true
DEL=$W/lz/delete.txt; : > "$DEL"
for d in $(cd "$W/lz/units" && find . -mindepth 1 -type d | sed 's|^\./||'); do
  R="$R" bash "$R/tools/smartpack/pack-units.sh" "$W/lz/units/$d" i386-darwin "$DEL"
done
while read -r f; do rm -f "$f"; done < "$DEL"
mv "$W/lz/units" "$W/lazarus"
echo "done: $(find "$W/lazarus" -name '*.ppu' | wc -l) Lazarus units in $W/lazarus"
