#!/bin/bash
# fpc264irc i8086-msdos RTL build, one memory model per call - byte, 2026-10-07
# usage: tools/i8086-graph-build/build-rtl.sh <tiny|small|medium|compact|large|huge> [work dir]
# ppcross8086 is FPC 3.2.2 (PPU207), so the RTL comes from FPC 3.2.2 itself: rtl/, packages/rtl-console (crt, keyboard,
# mouse, video) and packages/rtl-extra (objects, printer), fetched from the FPC GitLab release_3_2_2 tag and checked by SHA-256.
# Flags: the RTL Makefile's own (-Tmsdos -Pi8086 -XPmsdos- -Xr) + -Wm<model> -CX; startup code assembled with nasm.
# medium/large/huge also get graph (src from this kit, -O2 -CX, see build.sh).
# Output: <work>/out/i8086-msdos-<model> = the same file set as bin/units/i8086-msdos-<model> (.ppu + .a + .rsj, prt0?.o).
# Needs: curl, nasm, make (Linux x86_64 host).
set -e
M=$1; [ -n "$M" ] || { echo "usage: $0 <model> [work dir]"; exit 1; }
K=$(cd "$(dirname "$0")" && pwd); R=$(cd "$K/../.." && pwd)
D=${2:-${TMPDIR:-/tmp}/fpc264irc-i8086}; W=$(mkdir -p "$D" && cd "$D" && pwd)
C=$R/bin/ppcross8086; chmod +x "$C"
URL='https://gitlab.com/freepascal.org/fpc/source/-/archive/release_3_2_2/source-release_3_2_2.tar.gz?path='
get() { # $1=path in the FPC tree, $2=sha256
  local f=$W/$(echo $1 | tr / _).tgz
  [ -f "$f" ] || curl -sSL -o "$f" "$URL$1"
  echo "$2  $f" | sha256sum -c --quiet || { echo "checksum mismatch: $1"; rm -f "$f"; exit 1; }
  [ -d "$W/fpc/$1" ] || { mkdir -p "$W/x" && tar -xzf "$f" -C "$W/x" && mkdir -p "$W/fpc/$(dirname $1)" \
                          && mv "$W/x"/*/"$1" "$W/fpc/$1" && rm -rf "$W/x"; }
}
get rtl                  6b8ce22fe0a27299d4d5175b772aaecf7664a387ff93659e45650bd1d5577d03
get packages/rtl-console 26fe15b72e9e6c7d214762628de37f943b9f2c19cfe1656b946f7815e5b232e0
get packages/rtl-extra   19eff671c4c7944b9735ed63484dc04d5f63dcbe116f6bd12e06c0d01e1da293
mkdir -p "$W/bin"; ln -sf "$(command -v nasm)" "$W/bin/msdos-nasm"

echo "[1/3] RTL -Wm$M -CX"
B=$W/b-$M; rm -rf "$B"; cp -r "$W/fpc/rtl" "$B"
(cd "$B/msdos" && PATH="$W/bin:$PATH" make all CPU_TARGET=i8086 OS_TARGET=msdos FPC="$C" OPT="-Wm$M -CX") > "$W/rtl-$M.log" 2>&1 \
  || { tail -5 "$W/rtl-$M.log"; exit 1; }
U=$B/msdos/units/msdos

echo "[2/3] crt keyboard mouse video objects printer"
P=$W/fpc/packages
for f in rtl-console/src/msdos/crt.pp rtl-console/src/msdos/keyboard.pp rtl-console/src/msdos/mouse.pp \
         rtl-console/src/msdos/video.pp rtl-extra/src/inc/objects.pp rtl-extra/src/msdos/printer.pp; do
  "$C" -Tmsdos -Pi8086 -Wm$M -CX -n -FU"$U" -Fu"$U" -Fi$P/rtl-console/src/inc -Fi$P/rtl-console/src/msdos \
       -Fi$P/rtl-extra/src/inc -Fi$P/rtl-extra/src/msdos -Fi"$B/inc" "$P/$f" >> "$W/extra-$M.log" 2>&1 \
    || { tail -5 "$W/extra-$M.log"; exit 1; }
done
case $M in medium|large|huge)
  echo "      graph"
  "$C" -Tmsdos -Pi8086 -Wm$M -O2 -CX -n -FU"$U" -Fu"$U" -Fi"$K/src/inc" -Fi"$K/src/msdos" "$K/src/msdos/graph.pp" \
       > "$W/graph-$M.log" 2>&1 || { tail -5 "$W/graph-$M.log"; exit 1; } ;;
esac

echo "[3/3] collecting the shipped unit set"
O=$W/out/i8086-msdos-$M; rm -rf "$O"; mkdir -p "$O"
c=$(echo $M | cut -c1)
for u in classes crt ctypes dos fgl getopts keyboard math mouse msmouse objects objpas printer rtlconsts strings \
         sysconst system sysutils types typinfo video; do cp "$U/$u.ppu" "$U/$u.a" "$O/"; done
case $M in medium|large|huge) cp "$U/graph.ppu" "$U/graph.a" "$O/";; esac
cp "$U/ports.ppu" "$U/prt0$c.o" "$U"/{math,rtlconsts,sysconst,typinfo}.rsj "$O/"
echo "done: $(ls "$O" | wc -l) files in $O"
