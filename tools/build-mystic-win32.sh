#!/bin/bash
# Build all Mystic BBS Win32 binaries + patch for Windows 11
set -e
REPO="$(cd "$(dirname "$0")/.." && pwd)"
FPC="$REPO/bin/ppc386"
W32="$REPO/bin/units/i386-win32"
TOOLS="$REPO/bin/tools/i386-win32"
SRC="${1:-.}"  # Mystic source dir

OUT="$SRC/out/win32"
mkdir -p "$OUT"

echo "=== Building Mystic Win32 ==="
for prog in mystic mis mutil mplc mide mbbsutil fidopoll nodespy qwkpoll mystpack install install_make maketheme 109to110; do
    $FPC -Twin32 -XPi386-win32- -FD"$TOOLS" -Fu"$W32" \
      -Mdelphi -Fu"$SRC/mdl" -Fu"$SRC/mystic" -Fi"$SRC/mdl" -Fi"$SRC/mystic" \
      -FU"$OUT" -FE"$OUT" "$SRC/mystic/${prog}.pas" 2>/dev/null && \
      echo "  ✅ $prog" || echo "  ❌ $prog"
done
$FPC -Twin32 -XPi386-win32- -FD"$TOOLS" -Fu"$W32" \
  -Mobjfpc -Fu"$SRC/mystic" -Fi"$SRC/mystic" \
  -FU"$OUT" -FE"$OUT" "$SRC/mystic/marc.pas" 2>/dev/null && \
  echo "  ✅ marc" || echo "  ❌ marc"

echo ""
echo "=== Patching PE headers for Windows 11 ==="
python3 "$REPO/tools/pe-win11-fix.py" "$OUT"/*.exe

echo ""
echo "Win32 binaries in: $OUT/"
