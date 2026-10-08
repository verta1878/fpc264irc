#!/bin/bash
# Fix execute permissions after extracting from ZIP.
# ZIP format doesn't always preserve Unix +x bits.
# Run this once after cloning or extracting.

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

chmod +x "$SCRIPT_DIR/bin/ppc386" 2>/dev/null
chmod +x "$SCRIPT_DIR/bin/ppcx64" 2>/dev/null
chmod +x "$SCRIPT_DIR/bin/ppcross8086" 2>/dev/null
chmod +x "$SCRIPT_DIR/bin/tools/make" "$SCRIPT_DIR/bin/tools/darwin-as" 2>/dev/null
chmod +x "$SCRIPT_DIR/bin/tools/i386-os2/"* 2>/dev/null
chmod +x "$SCRIPT_DIR/bin/tools/i386-emx/"* 2>/dev/null
chmod +x "$SCRIPT_DIR/bin/tools/i386-darwin/"* 2>/dev/null
chmod +x "$SCRIPT_DIR/bin/tools/i8086-msdos/"* 2>/dev/null
chmod +x "$SCRIPT_DIR/bin/tools/i386-go32v2/"* 2>/dev/null
chmod +x "$SCRIPT_DIR/bin/tools/i386-win32/"* 2>/dev/null
chmod +x "$SCRIPT_DIR/bin/tools/i386-linux/"* 2>/dev/null
chmod +x "$SCRIPT_DIR/bin/tools/i386-freebsd/"* 2>/dev/null
chmod +x "$SCRIPT_DIR/build.sh" 2>/dev/null

echo "Permissions fixed."
