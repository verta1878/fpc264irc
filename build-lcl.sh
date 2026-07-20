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
#
#  IMPORTANT: Package PPUs are prebuilt in bin/units/i386-<os>/.
#  Do NOT add -Fu to package source dirs — that recompiles them
#  with different checksums than the shipped RTL PPUs (BUG-E).
#  Always rebuild LCL AFTER RTL is finalized (BUG-D).
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
LAZ="$ROOT/src/lazarus"
REG="$LAZ/packager/registration"
LU="$LAZ/lazutils"
LCL="$LAZ/lcl"
OUT="$ROOT/bin/lazarus/units/i386-$OS"

mkdir -p "$OUT/lazutils" "$OUT/lcl" "$OUT/lcl/$WS"
export PATH="$TOOLS:$PATH"

# No -Fu to package source dirs. RTL PPUs in $RTL already contain
# all package units (fcl-image, fcl-xml, paszlib, hash, etc.).
COMMON="-T$OS -Pi386 -Mobjfpc -Scghi -O1 -dLCL -FD$TOOLS"

echo "=== 1/3  LazUtils ($WS / i386-$OS) ==="
( cd "$LU" && "$FPC" $COMMON -Fu"$RTL" -FU"$OUT/lazutils" -Fi"$LU" lazutils.pas ) \
  2>&1 | grep -iE "Error:|Fatal:|lines compiled" | tail -3

echo "=== 2/3  LCL base ==="
( cd "$LCL" && "$FPC" $COMMON \
    -Fu"$RTL" -Fu"$OUT/lazutils" -Fu"$LU" \
    -Fu. -Fu./nonwin32 -Fu./forms -Fu./widgetset \
    -Fu./interfaces/$WS -Fi./include \
    -FU"$OUT/lcl" \
    alllclunits.pp ) \
  2>&1 | grep -iE "Error:|Fatal:|lines compiled|Linking" | tail -3

echo "=== 3/3  $WS widgetset ==="
( cd "$LCL" && "$FPC" $COMMON \
    -Fu"$RTL" -Fu"$OUT/lazutils" -Fu"$OUT/lcl" \
    -Fu./interfaces/$WS -Fi./include \
    -FU"$OUT/lcl/$WS" \
    interfaces/$WS/interfaces.pp ) \
  2>&1 | grep -iE "Error:|Fatal:|lines compiled|Linking" | tail -3

echo ""
echo "Done. LCL units in: $OUT"
echo "  lazutils:  $(ls "$OUT/lazutils"/*.ppu 2>/dev/null | wc -l) ppu"
echo "  base:      $(ls "$OUT/lcl"/*.ppu 2>/dev/null | wc -l) ppu"
# Copy LFM and RES resource files needed by LCL PPUs
cp "$LCL/forms"/*.lfm "$OUT/lcl/" 2>/dev/null
cp "$LCL/interfaces/$WS"/*.res "$OUT/lcl/$WS/" 2>/dev/null
echo "  widgetset: $(ls "$OUT/lcl/$WS"/*.ppu 2>/dev/null | wc -l) ppu"
