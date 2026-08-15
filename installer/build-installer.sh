#!/bin/bash
# build-installer.sh — Compile the Inno Setup installer
#
# Option 1: Run on Windows
#   "C:\Program Files (x86)\Inno Setup 5\ISCC.exe" fpc264irc.iss
#
# Option 2: Run on Linux with Wine + Inno Setup
#   wine ~/.wine/drive_c/innosetup/ISCC.exe fpc264irc.iss
#
# Output: ../out/fpc264irc_r31_setup.exe

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

if command -v wine &>/dev/null; then
    # Try Wine path:
    ISCC="$HOME/.wine/drive_c/Program Files (x86)/Inno Setup 5/ISCC.exe"
    if [ -f "$ISCC" ]; then
        cd "$SCRIPT_DIR"
        wine "$ISCC" fpc264irc.iss
    else
        echo "Inno Setup not found in Wine."
        echo "Install: wine ~/Downloads/innosetup-5.6.1.exe"
    fi
else
    echo "Wine not installed."
    echo "On Windows: ISCC.exe fpc264irc.iss"
fi
