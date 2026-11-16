#!/bin/bash
# setup-linux-i386.sh — Install prerequisites for i386-linux PPU builds
# Run once on any x86_64 Linux build machine. Requires root/sudo.

set -e
echo "=== FPC 2.6.4irc — Linux i386 Build Setup ==="

echo "[1/3] Installing libc6-dev:i386..."
dpkg --add-architecture i386 2>/dev/null || true
apt-get update -qq
apt-get install -y libc6-dev:i386

echo "[2/3] Creating libdl.so linker script..."
LIBDIR="/usr/lib/i386-linux-gnu"
[ -f "$LIBDIR/libc.so.6" ] || LIBDIR="/lib/i386-linux-gnu"
rm -f "$LIBDIR/libdl.so"
echo "/* GNU ld script — glibc 2.34+ absorbed libdl into libc */" > "$LIBDIR/libdl.so"
echo "GROUP ( $LIBDIR/libc.so.6 )" >> "$LIBDIR/libdl.so"
echo "  Created $LIBDIR/libdl.so"

echo "[3/3] Verifying..."
SCRIPT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PPC="$SCRIPT_DIR/bin/ppc386"
if [ -x "$PPC" ]; then
    echo "program t; uses dl; begin end." > /tmp/fpc_dl_test.pas
    if $PPC -Tlinux -n -Fu"$SCRIPT_DIR/bin/units/i386-linux" -Fl"$LIBDIR" \
        /tmp/fpc_dl_test.pas -o/tmp/fpc_dl_test 2>/dev/null; then
        echo "  dl links: OK"
        chmod +x /tmp/fpc_dl_test 2>/dev/null
        /tmp/fpc_dl_test && echo "  dl runs:  OK" || echo "  dl runs:  FAIL"
    else
        echo "  dl links: FAIL"
    fi
    rm -f /tmp/fpc_dl_test /tmp/fpc_dl_test.pas
else
    echo "  ppc386 not found — skipping verify"
fi
echo ""
echo "Done. Add -Fl$LIBDIR to compile commands."
echo "  bin/ppc386 -Tlinux -Fubin/units/i386-linux -Fl$LIBDIR myapp.pas"
