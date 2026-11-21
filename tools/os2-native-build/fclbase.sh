#!/bin/bash
# fpc264irc i386-os2: build the fcl-base units the folder did not have (BUG-051 Part B) - byte, 2026-11-21
# usage: tools/os2-native-build/fclbase.sh [work dir]     (Linux x86_64 host; default $TMPDIR/fpc264irc-os2-fclbase)
# Builds them against the shipped bin/units/i386-os2 (not a full kit run: build.sh does not fix source dates, so a full
# run records the checkout's dates in every .ppu). Each unit is compiled alone in an empty folder from a copy dated
# 2025-01-01 UTC (so the compiler cannot find - and recompile - the sources of units the folder already has), with the
# kit's flags -Tos2 -Pi386 -s -O2 -Ur -n; assembled with bin/tools/i386-os2/as, packed with tools/smartpack/pack-units.sh,
# archive member dates set to 2025-01-01 (ardate.py) - two runs give the same bytes.
# gettext and avl_tree also get -S2h: the Lazarus set's lazutils copies of them were built with it, and the main
# folder's must have the same interface checksum (or a Lazarus unit that recorded the copy is recompiled and fails).
# Result: <work>/out - copy into bin/units/i386-os2.
set -e
export TZ=UTC
K=$(cd "$(dirname "$0")" && pwd); R=$(cd "$K/../.." && pwd)
D=${1:-${TMPDIR:-/tmp}/fpc264irc-os2-fclbase}; mkdir -p "$D"; W=$(cd "$D" && pwd)
S=$R/src; U=$R/bin/units/i386-os2; PC=$R/bin/ppc386; AS=$R/bin/tools/i386-os2/as
for f in bin/ppc386 bin/tools/i386-os2/as bin/tools/i386-emx/emx-ar; do [ -x "$R/$f" ] || chmod +x "$R/$f"; done
rm -rf "$W/src" "$W/inc" "$W/w" "$W/out" "$W/log"; mkdir -p "$W/src" "$W/inc" "$W/out" "$W/log"
cp -r "$S/packages/fcl-base/src/." "$W/src/"
(cd "$W/src" && find . -name "*.inc" -exec cp --parents {} "$W/inc/" \;)
find "$W/src" "$W/inc" -exec touch -h -d '2025-01-01 00:00:00 UTC' {} +
INC="-Fi$S/rtl/inc -Fi$S/rtl/i386 -Fi$S/rtl/objpas -Fi$S/rtl/objpas/sysutils -Fi$S/rtl/objpas/classes -Fi$S/rtl/os2"
UNITS="inifiles rtfpars idea gettext iostream cachecls avl_tree custapp wformat whtml wtex rttiutils bufstream nullstream
       streamex blowfish streamio inicol pooledmm libtar streamcoll maskutils fpexprpars ascii85 fptemplate fpmimetypes"
opt() { case $1 in gettext|avl_tree) echo -S2h;; esac; }
todo="$UNITS"
for pass in 1 2 3 4 5 6; do left=""
  for u in $todo; do
    f=$(ls "$W/src/$u.pp" "$W/src/$u.pas" 2>/dev/null | head -1); d=$W/w/$u; rm -rf "$d"; mkdir -p "$d"; cp -p "$f" "$d/"
    (cd "$d" && "$PC" -Tos2 -Pi386 -s -O2 -Ur -n $(opt $u) -FU"$W/out" -FE"$W/out" -Fu"$W/out" -Fu"$U" $INC \
       -Fi"$W/inc" -Fi"$W/inc/os2" -Fi"$W/inc/inc" "$(basename "$f")") > "$W/log/$u.log" 2>&1 && [ -f "$W/out/$u.ppu" ] \
       || left="$left $u"
  done
  todo=$left; [ -z "$todo" ] && break
done
[ -z "$todo" ] || { echo "not built:$todo (see $W/log)"; exit 1; }
for s in "$W/out"/*.s; do "$AS" -o "${s%.s}.o" "$s"; rm -f "$s"; done; rm -f "$W/out"/ppas.sh "$W/out"/link*.res
DEL=$W/delete.txt; : > "$DEL"
ARX="$R/bin/tools/i386-emx/emx-ar" R="$R" bash "$R/tools/smartpack/pack-units.sh" "$W/out" i386-os2 "$DEL"
while read -r f; do rm -f "$f"; done < "$DEL"
python3 "$K/ardate.py" "$W/out"/libp*.a        # emx-ar stamps the build time: member dates 2025-01-01 (byte-identical reruns)
echo "done: $(ls "$W/out"/*.ppu | wc -l) units in $W/out"
