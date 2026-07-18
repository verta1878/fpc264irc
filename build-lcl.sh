#!/usr/bin/env bash
# ============================================================
#  Build Lazarus 1.2.6 LCL for a given widgetset, using
#  FPC 2.6.4irc. Windows (win32) is the reference target.
#
#  Usage:  ./build-lcl.sh win32     (default)
#          ./build-lcl.sh gtk2
#          ./build-lcl.sh qt
#
#  Requires: bin/ppc386 (i386 cross-compiler) and the matching
#  target RTL in bin/units/i386-<os> plus tools in bin/tools/.
# ============================================================
set -u
ROOT="$(cd "$(dirname "$0")" && pwd)"
WS="${1:-win32}"

# Map widgetset -> FPC target OS
case "$WS" in
  win32)  OS=win32;  TOOLS="$ROOT/bin/tools/i386-win32" ;;
  gtk2)   OS=linux;  TOOLS="$ROOT/bin/tools/i386-linux" ;;
  qt)     OS=linux;  TOOLS="$ROOT/bin/tools/i386-linux" ;;
  nogui)  OS=linux;  TOOLS="$ROOT/bin/tools/i386-linux" ;;
  *) echo "Unsupported widgetset: $WS (try win32, gtk2, qt, nogui)"; exit 1 ;;
esac

FPC="$ROOT/bin/ppc386"
RTL="$ROOT/bin/units/i386-$OS"
PKG="$ROOT/src/packages"
LAZ="$ROOT/src/lazarus"
REG="$LAZ/packager/registration"
LU="$LAZ/lazutils"
LCL="$LAZ/lcl"
OUT="$ROOT/bin/lazarus/units/i386-$OS"

mkdir -p "$OUT/lazutils" "$OUT/lcl" "$OUT/lcl/$WS"
export PATH="$TOOLS:$PATH"

# Package source paths the LCL depends on (all in-tree FPC packages).
PKGS="-Fu$PKG/fcl-base/src -Fu$PKG/fcl-image/src -Fu$PKG/fcl-xml/src \
-Fu$PKG/regexpr/src -Fu$PKG/paszlib/src -Fu$PKG/fcl-process/src \
-Fu$PKG/winunits-base/src -Fu$PKG/hash/src -Fu$PKG/pasjpeg/src \
-Fu$PKG/fcl-db/src/base -Fu$REG \
-Fi$PKG/fcl-process/src/$([ "$OS" = win32 ] && echo win || echo unix) \
-Fi$PKG/pasjpeg/src"

COMMON="-Twin32 -Pi386 -Mobjfpc -Scghi -O1 -dLCL $PKGS -FD$TOOLS"
[ "$OS" != win32 ] && COMMON="-Tlinux -Pi386 -Mobjfpc -Scghi -O1 -dLCL $PKGS -FD$TOOLS"

echo "=== 1/3  LazUtils ($WS / i386-$OS) ==="
( cd "$LU" && "$FPC" $COMMON -Fu"$RTL" -FU"$OUT/lazutils" -Fi"$LU" lazutils.pas ) \
  2>&1 | grep -iE "Error:|Fatal:|lines compiled" | tail -3

echo "=== 2/3  LCL base ==="
( cd "$LCL" && make lclbase LCL_PLATFORM=$WS FPC="$FPC" \
    CPU_TARGET=i386 OS_TARGET=$OS \
    OPT="-Fu$RTL -Fu$OUT/lazutils $PKGS -Fu$LCL/interfaces/$WS -FD$TOOLS" ) \
  2>&1 | grep -iE "Error:|Fatal:|lines compiled|Linking" | tail -3

echo "=== 3/3  $WS widgetset ==="
( cd "$LCL" && make intf LCL_PLATFORM=$WS FPC="$FPC" \
    CPU_TARGET=i386 OS_TARGET=$OS \
    OPT="-Fu$RTL -Fu$OUT/lazutils $PKGS -FD$TOOLS" ) \
  2>&1 | grep -iE "Error:|Fatal:|lines compiled|Linking" | tail -3

# Collect results into bin/lazarus
cp "$LCL/units/i386-$OS"/*.ppu "$LCL/units/i386-$OS"/*.o "$OUT/lcl/" 2>/dev/null
cp "$LCL/units/i386-$OS/$WS"/*.ppu "$LCL/units/i386-$OS/$WS"/*.o "$OUT/lcl/$WS/" 2>/dev/null

echo ""
echo "Done. LCL units in: $OUT"
echo "  base:      $(ls "$OUT/lcl"/*.ppu 2>/dev/null | wc -l) ppu"
echo "  widgetset: $(ls "$OUT/lcl/$WS"/*.ppu 2>/dev/null | wc -l) ppu"
