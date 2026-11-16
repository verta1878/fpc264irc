#!/bin/bash
# fpc264irc: convert one unit folder from .ppu+.o to .ppu+.a (smart-linked), no recompile.  byte, 2026-10-02
# usage: pack-units.sh <unit dir> <target> [delete-list-file]
#   - unit with only a .o  -> archive it as <prefix><unit>.a, rewrite the .ppu (ppu_smart.py)
#   - unit already smart+static (has its .a) -> rewrite the .ppu only (drop the static .o)
#   - startup objects the compiler links by name (prt0, cprt0, gprt0, dllprt0, prt1, exceptn, fpu, wprt0, ...) are KEPT
#   - everything else ending in .o/.s is listed for deletion (smartlink pieces, test/example program objects)
D=$1; T=$2; DEL=${3:-/dev/stdout}; K=$(cd $(dirname $0) && pwd)
case $T in
  i386-go32v2) PRE=""; AR="$R/bin/tools/i386-go32v2/ar";;
  *-darwin)    PRE=libp; AR="llvm-ar --format=darwin";;
  *)           PRE=libp; AR=ar;;
esac
[ -n "$ARX" ] && AR=$ARX
KEEP='^(prt0|prt1|cprt0|gprt0|dllprt0|wprt0|wdllprt0|gprt1|exceptn|fpu|prt0[a-z])\.o$'
conv=0; skip=0
for p in "$D"/*.ppu; do
  [ -f "$p" ] || continue
  r=$(python3 $K/ppu_smart.py "$p" "$PRE" --check)
  case "$r" in
    OK*) obj=$(echo "$r" | sed -E "s/^OK \['([^']+)'\].*/\1/"); lib=$(echo "$r" | sed -E "s/.*'([^']+\.a)'\]$/\1/")
         sm=$(python3 -c "import struct;print(struct.unpack_from('<i',open('$p','rb').read(),12)[0]&0x40)")
         if [ "$sm" = 0 ]; then
           [ -f "$D/$obj" ] || obj=$(ls "$D" | grep -ix "$obj" | head -1)
           if [ -z "$obj" ] || [ ! -f "$D/$obj" ]; then echo "NOOBJ $p" >&2; skip=$((skip+1)); continue; fi
           rm -f "$D/$lib"; $AR rcs "$D/$lib" "$D/$obj" || { echo "ARFAIL $p" >&2; exit 1; }
         else
           [ -s "$D/$lib" ] || { echo "NOLIB $p ($lib)" >&2; skip=$((skip+1)); continue; }
         fi
         python3 $K/ppu_smart.py "$p" "$PRE" >/dev/null && conv=$((conv+1));;
    *) skip=$((skip+1));;
  esac
done
# deletion list: every .o/.s that is not a kept startup object
for f in "$D"/*.o "$D"/*.s; do [ -f "$f" ] || continue; b=$(basename "$f"); grep -qE "$KEEP" <<<"$b" || echo "$f" >> $DEL; done
echo "$D: converted=$conv skipped=$skip" >&2
