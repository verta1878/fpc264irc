#!/bin/bash
# setup-linux-i386.sh — Install prerequisites for i386-linux PPU builds
# Run once on any x86_64 Linux build machine. Requires root/sudo.
#
# Step 1: Install 32-bit glibc dev headers (REQUIRED)
# Step 2: Create libdl.so linker script (BACKUP — for third-party code)
# Step 3: Verify dl links and runs
#
# Note: fpc264irc r3.1 uses LibDL='c' so -ldl is NOT needed.
# Step 2 is a backup for third-party code that still uses -ldl.

set -e
echo "=== FPC 2.6.4irc — Linux i386 Build Setup ==="

echo "[1/3] Installing libc6-dev:i386..."
dpkg --add-architecture i386 2>/dev/null || true
apt-get update -qq
apt-get install -y libc6-dev:i386

echo "[2/3] Creating libdl.so linker script (backup for third-party code)..."
LIBDIR="/usr/lib/i386-linux-gnu"
[ -f "$LIBDIR/libc.so.6" ] || LIBDIR="/lib/i386-linux-gnu"
rm -f "$LIBDIR/libdl.so"
echo "/* GNU ld script — glibc 2.34+ absorbed libdl into libc */" > "$LIBDIR/libdl.so"
echo "/* Backup for third-party code. fpc264irc uses LibDL='c' directly. */" >> "$LIBDIR/libdl.so"
echo "GROUP ( $LIBDIR/libc.so.6 )" >> "$LIBDIR/libdl.so"
echo "  Created $LIBDIR/libdl.so"

echo "[3/3] Verifying..."
SCRIPT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PPC="$SCRIPT_DIR/bin/ppc386"
if [ -x "$PPC" ]; then
    echo "program t; uses dl; begin end." > /tmp/fpc_dl_test.pas

    # Test 1: link without -Fl (should work — LibDL='c' links against libc)
    if $PPC -Tlinux -n -Fu"$SCRIPT_DIR/bin/units/i386-linux" \
        /tmp/fpc_dl_test.pas -o/tmp/fpc_dl_test 2>/dev/null; then
        echo "  dl links (no -Fl): OK"
    else
        # Fallback: try with -Fl
        if $PPC -Tlinux -n -Fu"$SCRIPT_DIR/bin/units/i386-linux" -Fl"$LIBDIR" \
            /tmp/fpc_dl_test.pas -o/tmp/fpc_dl_test 2>/dev/null; then
            echo "  dl links (with -Fl): OK"
        else
            echo "  dl links: FAIL"
        fi
    fi

    if [ -f /tmp/fpc_dl_test ]; then
        chmod +x /tmp/fpc_dl_test 2>/dev/null
        /tmp/fpc_dl_test && echo "  dl runs:  OK" || echo "  dl runs:  FAIL"
    fi

    rm -f /tmp/fpc_dl_test /tmp/fpc_dl_test.pas
else
    echo "  ppc386 not found — skipping verify"
fi

echo ""
echo "Done."
echo "  fpc264irc uses LibDL='c' — no -Fl needed for dl unit."
echo "  The libdl.so script is a backup for third-party code using -ldl."
