#!/usr/bin/env bash
# ==========================================================================
#  build-fpcres.sh — build the fpcres resource converter for fpc264irc
#
#  fpcres is needed whenever a win32 program links a .res resource
#  (e.g. an application icon via {$R file.res}). The bundled toolchain
#  in bin/tools/i386-win32/ ships as/ld/ar but NOT fpcres, so a plain
#      ppc386 -Twin32 ... program_with_resources.pas
#  fails with:
#      Error: resource compiler ".../i386-win32-fpcres" not found,
#      switching to external mode
#
#  This script:
#    1. rebuilds the native x86_64-linux RTL (the units shipped in
#       bin/units/x86_64-linux are stale relative to the r3/r4 compiler:
#       "Recompiling Unix, checksum changed for BaseUnix")
#    2. compiles src/utils/fpcres against that RTL + fcl-res sources
#    3. installs it as bin/tools/i386-win32/i386-win32-fpcres
#
#  Known issue handled here: rtl/unix/cwstring.pp does not compile in
#  this fork (its SetWideStringManager callbacks predate the fork's
#  codepage-aware TUnicodeStringManager signatures). cwstring is not
#  needed by fpcres, so the RTL make is allowed to fail after the core
#  units are in place.
#
#  Usage:  ./tools/build-fpcres.sh      (from the repo root)
# ==========================================================================
set -uo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

PPCX64="$ROOT/bin/ppcx64"
chmod +x "$PPCX64" 2>/dev/null || true

echo "== 1/3 rebuilding native x86_64-linux RTL =="
( cd src/rtl && \
  make all OS_TARGET=linux CPU_TARGET=x86_64 FPC="$PPCX64" BINUTILSPREFIX= ) \
  || echo "   (make failed - expected at cwstring.pp; continuing if core units built)"

for u in system sysutils classes unix baseunix; do
    if [ ! -f "src/rtl/units/x86_64-linux/$u.ppu" ]; then
        echo "ERROR: core unit $u.ppu missing - RTL rebuild really failed." >&2
        exit 1
    fi
done

echo "== 2/3 building fpcres =="
( cd src/utils/fpcres && \
  "$PPCX64" -O2 \
    -Fu"$ROOT/src/rtl/units/x86_64-linux" \
    -Fu"$ROOT/src/packages/fcl-res/src" \
    -Fi"$ROOT/src/packages/fcl-res/src" \
    fpcres.pas )

echo "== 3/3 installing =="
install -m 0755 src/utils/fpcres/fpcres bin/tools/i386-win32/i386-win32-fpcres
echo "installed: bin/tools/i386-win32/i386-win32-fpcres"
echo
echo "NOTE: the compiler locates the tool by searching PATH, not via an"
echo "absolute -XP prefix. Invoke cross-builds like this:"
echo '  PATH="$PWD/bin/tools/i386-win32:$PATH" \'
echo '  bin/ppc386 -Twin32 -Fubin/units/i386-win32 -XPi386-win32- prog.pas'
echo
echo "NOTE: fpcres rejects .res files whose 32-byte empty header has"
echo "non-zero MemoryFlags/Language fields (exit code 2, no message)."
echo "Tools generating .res files must zero everything after HeaderSize"
echo "in the first entry, as windres does."
