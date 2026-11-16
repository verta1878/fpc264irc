#!/bin/bash
# build-lazarus-ide.sh — Build Lazarus IDE from fpc264irc source
#
# This is a multi-stage build. Each stage produces PPUs that
# the next stage depends on.
#
# Prerequisites: ppc386 compiled and in bin/

set -e

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
PPC="$ROOT/bin/ppc386"
UNITS="$ROOT/bin/units/i386-win32"
TOOLS="$ROOT/bin/tools/i386-win32"

chmod +x "$PPC"

COMMON="-Twin32 -n -Fu$UNITS -FU$UNITS -XPi386-win32- -FD$TOOLS"
LCL="-Fu$ROOT/src/lazarus/lcl -Fi$ROOT/src/lazarus/lcl -Fi$ROOT/src/lazarus/lcl/include"
LCL="$LCL -Fu$ROOT/src/lazarus/lcl/widgetset"
LCL="$LCL -Fu$ROOT/src/lazarus/lcl/interfaces/win32 -Fi$ROOT/src/lazarus/lcl/interfaces/win32"
LAZUTILS="-Fu$ROOT/src/lazarus/components/lazutils -Fi$ROOT/src/lazarus/components/lazutils"

echo "=== Stage 1: FCL packages ==="
for pkg in avl_tree; do
  $PPC $COMMON -Fu$ROOT/src/packages/fcl-base/src \
    $ROOT/src/packages/fcl-base/src/${pkg}.pp && echo "  $pkg ✅"
done

echo ""
echo "=== Stage 2: Codetools ==="
CT="$ROOT/src/lazarus/components/codetools"
$PPC $COMMON $LAZUTILS -Fu$CT -Fi$CT \
  -Fu$ROOT/src/packages/fcl-base/src \
  $CT/definetemplates.pas 2>&1 | tail -1

echo ""
echo "=== Stage 3: SynEdit ==="
SE="$ROOT/src/lazarus/components/synedit"
$PPC $COMMON $LCL $LAZUTILS -Fu$SE -Fi$SE \
  $SE/synedit.pp 2>&1 | tail -1

echo ""
echo "=== Stage 4: IDE Interface ==="
II="$ROOT/src/lazarus/ideintf"
$PPC $COMMON $LCL $LAZUTILS -Fu$II -Fi$II \
  -Fu$CT -Fu$SE \
  $II/ideintf.pp 2>&1 | tail -1

echo ""
echo "=== Stage 5: IDE ==="
IDE="$ROOT/src/lazarus/ide"
$PPC $COMMON $LCL $LAZUTILS \
  -Fu$IDE -Fi$IDE -Fi$IDE/include \
  -Fu$CT -Fu$SE -Fu$II \
  -Fu$ROOT/src/lazarus/debugger \
  -Fu$ROOT/src/lazarus/designer \
  -Fu$ROOT/src/lazarus/converter \
  -Fu$ROOT/src/lazarus/packager \
  -Fu$ROOT/src/packages/fcl-base/src \
  -Fu$ROOT/src/packages/fcl-xml/src \
  -Fu$ROOT/src/packages/fcl-process/src \
  -Fi$ROOT/src/packages/fcl-process/src/win \
  -dLCL -dLCLwin32 \
  -o$ROOT/bin/lazarus.exe \
  $IDE/lazarus.pp

if [ -f "$ROOT/bin/lazarus.exe" ]; then
  echo ""
  echo "=== SUCCESS: lazarus.exe built ==="
  ls -lh "$ROOT/bin/lazarus.exe"
else
  echo ""
  echo "=== IDE build needs more work ==="
  echo "Run stages manually to debug missing units"
fi
