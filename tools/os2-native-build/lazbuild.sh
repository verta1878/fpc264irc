#!/bin/bash
# fpc264irc: the Lazarus unit set bin/lazarus/units/i386-os2 - byte, 2026-11-14 (from tools/go32v2-build step 5)
# usage: tools/os2-native-build/lazbuild.sh [work dir]      (Linux x86_64 host; default $TMPDIR/fpc264irc-os2laz)
#   1 copy src/rtl, src/packages, src/lazarus, all file dates 2025-01-01 (a .ppu records the date of every source file
#     it was built from, so a fixed date makes every rebuild byte-identical)
#   2 lazdrive.py: every unit of laz-i386.txt (lazunits.py), dependencies first, against bin/units/i386-os2 (itself
#     the build.sh kit build); -s, each .s assembled with bin/tools/i386-os2/as; fixed build folder LAZBUILDDIR
#   3 tools/smartpack/pack-units.sh per folder: <unit>.o -> libp<unit>.a (bin/tools/i386-emx/emx-ar), .ppu rewritten;
#     ardate.py: archive member dates 2025-01-01 (emx-ar writes the build time)
# Result: <work>/lazarus (bin/lazarus/units/i386-os2). Needs python3.
set -e
export TZ=UTC
K=$(cd "$(dirname "$0")" && pwd); R=$(cd "$K/../.." && pwd)
D=${1:-${TMPDIR:-/tmp}/fpc264irc-os2laz}; mkdir -p "$D"; W=$(cd "$D" && pwd)
chmod +x "$R/bin/ppc386" "$R/bin/tools/i386-os2/"* "$R/bin/tools/i386-emx/"* 2>/dev/null || true

echo "[1/3] sources"
rm -rf "$W/src" "$W/lz" "$W/lazarus"; mkdir -p "$W/src"
cp -rL "$R/src/rtl" "$R/src/packages" "$R/src/lazarus" "$W/src/"
find "$W/src" -exec touch -h -d '2025-01-01 00:00:00' {} +

echo "[2/3] Lazarus units (lazdrive.py)"
mkdir -p "$W/lz"
python3 "$K/lazdrive.py" "$R" "$K/laz-i386.txt" "$R/bin/units/i386-os2" "$W/lz/units" "$W/src" | tee "$W/lazdrive.log"
grep -v ': OK' "$W/lz/lazbuild.txt" && exit 1 || true

echo "[3/3] packing .o -> libp<unit>.a"
DEL=$W/lz/delete.txt; : > "$DEL"
for d in $(cd "$W/lz/units" && find . -mindepth 1 -type d | sed 's|^\./||'); do
  ARX="$R/bin/tools/i386-emx/emx-ar" R="$R" bash "$R/tools/smartpack/pack-units.sh" "$W/lz/units/$d" i386-os2 "$DEL"
done
while read -r f; do rm -f "$f"; done < "$DEL"
find "$W/lz/units" -name 'libp*.a' -exec python3 "$K/ardate.py" {} +   # emx-ar stamps the build time: member dates 2025-01-01
mv "$W/lz/units" "$W/lazarus"
echo "done: $(find "$W/lazarus" -name '*.ppu' | wc -l) Lazarus units in $W/lazarus"
