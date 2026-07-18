#!/usr/bin/env bash
# ============================================================
#  Build the Free Pascal text-mode IDE (fp) from bundled
#  source, using FPC 2.6.4irc. Self-contained: every unit the
#  IDE needs (Free Vision, the embedded compiler, chm/xml help)
#  ships in this tree.
#
#  Usage:  ./build-ide.sh              (native host target)
#          ./build-ide.sh x86_64-linux
#
#  This is Tier 3 of the IDE fallback: build-from-source. It is
#  invoked by hand or by tools/get-ide.sh when no usable IDE
#  binary is present.
# ============================================================
set -u
ROOT="$(cd "$(dirname "$0")" && pwd)"
TARGET="${1:-x86_64-linux}"

case "$TARGET" in
  x86_64-linux) FPC="$ROOT/bin/ppcx64"; TCPU=x86_64; TOS=linux; DEF="-dx86_64" ;;
  i386-linux)   FPC="$ROOT/bin/ppc386"; TCPU=i386;   TOS=linux; DEF="-di386" ;;
  *) echo "Unsupported IDE target: $TARGET (try x86_64-linux, i386-linux)"; exit 1 ;;
esac

RTL="$ROOT/bin/units/$TARGET"
FV="$ROOT/src/packages/fv/src"
IDE="$ROOT/src/ide"
FAKEGDB="$ROOT/src/ide/fakegdb"
COMP="$ROOT/src/compiler"
PKG="$ROOT/src/packages"
WORK="$(mktemp -d /tmp/ide_build_XXXX)"
OUT="$ROOT/bin/ide"

mkdir -p "$WORK/fv" "$WORK/ide" "$OUT"

echo "=== 1/2  Free Vision units ==="
( cd "$FV" && "$FPC" -Mobjfpc -Sg -Fu"$RTL" -FU"$WORK/fv" -Fi"$FV" buildfv.pas ) \
  2>&1 | grep -iE "Error:|Fatal:|lines compiled" | tail -3
echo "   fv units: $(ls "$WORK/fv"/*.ppu 2>/dev/null | wc -l)"

echo "=== 2/2  IDE (fp) ==="
( cd "$IDE" && "$FPC" -Mobjfpc -Sg -dNODEBUG $DEF \
    -Fu"$RTL" -Fu"$WORK/fv" -Fu"$FAKEGDB" -Fu"$IDE" -Fu"$IDE/compiler" \
    -Fu"$COMP" -Fu"$COMP/$TCPU" -Fu"$COMP/x86" -Fu"$COMP/systems" \
    -Fu"$PKG/chm/src" -Fu"$PKG/paszlib/src" -Fu"$PKG/fcl-base/src" \
    -Fu"$PKG/fcl-xml/src" -Fu"$PKG/fcl-registry/src" \
    -Fi"$IDE" -Fi"$IDE/compiler" \
    -Fi"$COMP" -Fi"$COMP/$TCPU" -Fi"$COMP/x86" -Fi"$COMP/systems" \
    -Fi"$PKG/chm/src" -Fi"$PKG/fcl-xml/src" \
    -FU"$WORK/ide" -FE"$WORK" \
    fp.pas ) \
  2>&1 | grep -iE "Error:|Fatal:|Can't find|lines compiled" | tail -5

if [ -f "$WORK/fp" ]; then
    cp "$WORK/fp" "$OUT/fp"
    cp "$IDE/fp.ans" "$IDE"/*.term "$OUT/" 2>/dev/null
    echo ""
    echo "IDE built: $OUT/fp ($(stat -c%s "$OUT/fp") bytes)"
    rm -rf "$WORK"
else
    echo "IDE build FAILED — work dir kept: $WORK"
    exit 1
fi
