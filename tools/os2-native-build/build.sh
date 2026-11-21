#!/bin/bash
# fpc264irc i386-os2 native (-Tos2) unit build kit - byte, 2026-10-01, rewritten 2026-10-07
# usage: tools/os2-native-build/build.sh [out dir]          (run from anywhere; Linux x86_64 host)
# Builds the 219 units of bin/units/i386-os2 from src/ and packs them the way the repo ships them:
#   0 (2026-11-21) copy src/ and patched/ next to <out dir>, every file dated 2025-01-01 00:00 UTC: a .ppu stores the
#     date of each source file, so a run on any checkout gives the same bytes (as lazbuild.sh / fclbase.sh)
#   1 bootstrap system.ppu from src/rtl/os2/system.pas (-Us)
#   2 drive.py: every other unit in unitlist.txt, pass after pass until nothing new builds
#   3 assemble each .s with bin/tools/i386-os2/as (GNU as 2.30, a.out)
#   4 tools/smartpack/pack-units.sh: <unit>.o -> libp<unit>.a (bin/tools/i386-emx/emx-ar, a.out symbol index),
#     .ppu rewritten to link the archive
#   5 prt0.o / prt1.o startup objects from src/rtl/os2/prt0.as, src/rtl/emx/prt1.as
#   6 (2026-11-21) ardate.py: archive member dates in every .a 2025-01-01 (emx-ar and the compiler write the build time)
# The result goes to <out dir> (default $TMPDIR/fpc264irc-os2/units, outside the repo); bin/units/i386-os2 is not touched.
set -e
export TZ=UTC
K=$(cd "$(dirname "$0")" && pwd); R=$(cd "$K/../.." && pwd)
D=${1:-${TMPDIR:-/tmp}/fpc264irc-os2/units}; OUT=$(mkdir -p "$D" && cd "$D" && pwd)
LOG=$(dirname "$OUT")/log; mkdir -p "$LOG"
grep -v '^#' "$R/tools/smartpack/exec-bits.txt" 2>/dev/null | while read -r f; do [ -n "$f" ] && [ ! -x "$R/$f" ] && chmod +x "$R/$f"; done || true   # execute bits: the listed programs only (git has them; for zip extracts)
PPC=$R/bin/ppc386; AS=$R/bin/tools/i386-os2/as
echo "[0/6] sources (dated copy)"
W=$(dirname "$OUT")/srccopy; rm -rf "$W"; mkdir -p "$W"
cp -rL "$R/src" "$W/src"; cp -rL "$K/patched" "$W/patched"
find "$W" -exec touch -h -d '2025-01-01 00:00:00 UTC' {} +
S=$W/src
INC="-Fi$S/rtl/inc -Fi$S/rtl/i386 -Fi$S/rtl/objpas -Fi$S/rtl/objpas/sysutils -Fi$S/rtl/objpas/classes -Fi$S/rtl/os2"

echo "[1/6] system"
(cd "$S/rtl/os2" && "$PPC" -Tos2 -Pi386 -s -O2 -Ur -n -FU"$OUT" -FE"$OUT" -Fu"$OUT" $INC -Us system.pas) > "$LOG/system.log" 2>&1 \
  || { tail -5 "$LOG/system.log"; exit 1; }

echo "[2/6] units (drive.py)"
python3 "$K/drive.py" "$R" "$OUT" "$S"

echo "[3/6] assembling"
n=0
for s in "$OUT"/*.s; do
  "$AS" -o "${s%.s}.o" "$s" || { echo "as failed: $s"; exit 1; }
  rm -f "$s"; n=$((n+1))
done
rm -f "$OUT"/ppas.sh "$OUT"/link*.res
echo "assembled $n units"

echo "[4/6] packing .o -> libp<unit>.a"
DEL=$(dirname "$OUT")/delete.txt; : > "$DEL"
ARX="$R/bin/tools/i386-emx/emx-ar" R="$R" bash "$R/tools/smartpack/pack-units.sh" "$OUT" i386-os2 "$DEL"
while read -r f; do rm -f "$f"; done < "$DEL"

echo "[5/6] startup objects"
"$AS" -o "$OUT/prt0.o" "$S/rtl/os2/prt0.as"
"$AS" -o "$OUT/prt1.o" "$S/rtl/emx/prt1.as"   # FPC 2.6.4 keeps prt1 under rtl/emx

echo "[6/6] archive dates"
find "$OUT" -name '*.a' -exec python3 "$K/ardate.py" {} +

echo "done: $(ls "$OUT"/*.ppu | wc -l) units in $OUT"
