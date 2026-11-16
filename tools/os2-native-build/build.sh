#!/bin/bash
# fpc264irc i386-os2 native (-Tos2) unit build kit - byte, 2026-10-01, rewritten 2026-10-07
# usage: tools/os2-native-build/build.sh [out dir]          (run from anywhere; Linux x86_64 host)
# Builds the 219 units of bin/units/i386-os2 from src/ and packs them the way the repo ships them:
#   1 bootstrap system.ppu from src/rtl/os2/system.pas (-Us)
#   2 drive.py: every other unit in unitlist.txt, pass after pass until nothing new builds
#   3 assemble each .s with bin/tools/i386-os2/as (GNU as 2.30, a.out)
#   4 tools/smartpack/pack-units.sh: <unit>.o -> libp<unit>.a (bin/tools/i386-emx/emx-ar, a.out symbol index),
#     .ppu rewritten to link the archive
#   5 prt0.o / prt1.o startup objects from src/rtl/os2/prt0.as, src/rtl/emx/prt1.as
# The result goes to <out dir> (default $TMPDIR/fpc264irc-os2/units, outside the repo); bin/units/i386-os2 is not touched.
set -e
K=$(cd "$(dirname "$0")" && pwd); R=$(cd "$K/../.." && pwd)
D=${1:-${TMPDIR:-/tmp}/fpc264irc-os2/units}; OUT=$(mkdir -p "$D" && cd "$D" && pwd)
LOG=$(dirname "$OUT")/log; mkdir -p "$LOG"
chmod +x "$R/bin/ppc386" "$R/bin/tools/i386-os2/"* "$R/bin/tools/i386-emx/"* 2>/dev/null || true
S=$R/src; PPC=$R/bin/ppc386; AS=$R/bin/tools/i386-os2/as
INC="-Fi$S/rtl/inc -Fi$S/rtl/i386 -Fi$S/rtl/objpas -Fi$S/rtl/objpas/sysutils -Fi$S/rtl/objpas/classes -Fi$S/rtl/os2"

echo "[1/5] system"
(cd "$S/rtl/os2" && "$PPC" -Tos2 -Pi386 -s -O2 -Ur -n -FU"$OUT" -FE"$OUT" -Fu"$OUT" $INC -Us system.pas) > "$LOG/system.log" 2>&1 \
  || { tail -5 "$LOG/system.log"; exit 1; }

echo "[2/5] units (drive.py)"
python3 "$K/drive.py" "$R" "$OUT"

echo "[3/5] assembling"
n=0
for s in "$OUT"/*.s; do
  "$AS" -o "${s%.s}.o" "$s" || { echo "as failed: $s"; exit 1; }
  rm -f "$s"; n=$((n+1))
done
rm -f "$OUT"/ppas.sh "$OUT"/link*.res
echo "assembled $n units"

echo "[4/5] packing .o -> libp<unit>.a"
DEL=$(dirname "$OUT")/delete.txt; : > "$DEL"
ARX="$R/bin/tools/i386-emx/emx-ar" R="$R" bash "$R/tools/smartpack/pack-units.sh" "$OUT" i386-os2 "$DEL"
while read -r f; do rm -f "$f"; done < "$DEL"

echo "[5/5] startup objects"
"$AS" -o "$OUT/prt0.o" "$S/rtl/os2/prt0.as"
"$AS" -o "$OUT/prt1.o" "$S/rtl/emx/prt1.as"   # FPC 2.6.4 keeps prt1 under rtl/emx

echo "done: $(ls "$OUT"/*.ppu | wc -l) units in $OUT"
