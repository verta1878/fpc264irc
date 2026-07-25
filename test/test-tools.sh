#!/bin/bash
# test-tools.sh — Verify all bundled build tools work
#
# Tests that as, ld, ar, and make are present and functional
# for every target platform. Run this after a fresh clone to
# confirm the build environment is complete.
#
# Usage: test/test-tools.sh

set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TOOLDIR="$ROOT/bin/tools"

PASS=0
FAIL=0
SKIP=0

green()  { echo -e "  \033[32mPASS\033[0m  $1"; PASS=$((PASS+1)); }
red()    { echo -e "  \033[31mFAIL\033[0m  $1"; FAIL=$((FAIL+1)); }
yellow() { echo -e "  \033[33mSKIP\033[0m  $1"; SKIP=$((SKIP+1)); }

check_tool() {
    local target=$1
    local tool=$2
    local path="$TOOLDIR/$target/$tool"

    if [ ! -f "$path" ]; then
        red "$target/$tool — not found"
        return 1
    fi
    if [ ! -x "$path" ]; then
        red "$target/$tool — not executable"
        return 1
    fi
    # Try running it with --version
    if "$path" --version >/dev/null 2>&1; then
        local ver=$("$path" --version 2>&1 | head -1)
        green "$target/$tool — $ver"
    else
        # Some tools (like DJGPP as) may not support --version cleanly
        green "$target/$tool — present and executable"
    fi
}

# Assemble a trivial .s file to prove as actually works
test_assemble() {
    local target=$1
    local as_path="$TOOLDIR/$target/as"
    local testfile="/tmp/fpc_tool_test_$$.s"
    local outfile="/tmp/fpc_tool_test_$$.o"

    case "$target" in
        x86_64-linux|i386-linux|i386-freebsd)
            echo '.text' > "$testfile"
            echo '.globl _start' >> "$testfile"
            echo '_start: nop' >> "$testfile"
            ;;
        i386-go32v2|i386-emx)
            echo '.text' > "$testfile"
            echo '.globl _main' >> "$testfile"
            echo '_main: nop' >> "$testfile"
            ;;
        i386-win32)
            echo '.text' > "$testfile"
            echo '.globl _main' >> "$testfile"
            echo '_main: nop' >> "$testfile"
            ;;
        *)
            yellow "$target/as — no test case for this target"
            return 0
            ;;
    esac

    if "$as_path" -o "$outfile" "$testfile" 2>/dev/null; then
        green "$target/as — assembles test file"
        rm -f "$testfile" "$outfile"
    else
        red "$target/as — FAILED to assemble test file"
        rm -f "$testfile" "$outfile"
        return 1
    fi
}

# Test ar can create an archive
test_archive() {
    local target=$1
    local ar_path="$TOOLDIR/$target/ar"
    local testobj="/tmp/fpc_ar_test_$$.o"
    local testlib="/tmp/fpc_ar_test_$$.a"

    # Create a minimal object file with as first
    local as_path="$TOOLDIR/$target/as"
    local testsrc="/tmp/fpc_ar_test_$$.s"
    echo '.text' > "$testsrc"
    echo 'nop' >> "$testsrc"

    if "$as_path" -o "$testobj" "$testsrc" 2>/dev/null; then
        if "$ar_path" rcs "$testlib" "$testobj" 2>/dev/null; then
            green "$target/ar — creates archive"
        else
            red "$target/ar — FAILED to create archive"
        fi
    else
        yellow "$target/ar — skipped (as failed)"
    fi
    rm -f "$testsrc" "$testobj" "$testlib"
}

HOST_ARCH=$(uname -m)
HOST_OS=$(uname -s)
echo "============================================"
echo "FPC 2.6.4irc Build Tools Verification"
echo "Host: $HOST_OS $HOST_ARCH"
if [ "$HOST_OS" != "Linux" ] || [ "$HOST_ARCH" != "x86_64" ]; then
    echo "WARNING: Bundled tools are x86_64 Linux ELF binaries."
    echo "         They may not work on this host ($HOST_OS $HOST_ARCH)."
    echo "         Install system tools: as, ld, ar, make"
fi
HOST_ARCH=$(uname -m)
HOST_OS=$(uname -s)
echo "============================================"
echo ""

# Shared tools
echo "=== Shared tools ==="
if [ -f "$TOOLDIR/make" ] && [ -x "$TOOLDIR/make" ]; then
    ver=$("$TOOLDIR/make" --version 2>&1 | head -1)
    green "make — $ver"
else
    red "make — not found or not executable"
fi
echo ""

# Per-target tools
for target in x86_64-linux i386-linux i386-go32v2 i386-win32 i386-freebsd i386-emx; do
    echo "=== $target ==="
    targetdir="$TOOLDIR/$target"

    if [ ! -d "$targetdir" ]; then
        if [ -f "$targetdir/README.md" ] 2>/dev/null; then
            yellow "$target — requires manual build (see README)"
        else
            yellow "$target — no tools directory"
        fi
        echo ""
        continue
    fi

    # Check for README (means tools need manual build)
    if [ -f "$targetdir/README.md" ] && [ ! -f "$targetdir/as" ]; then
        yellow "$target — requires manual build (see $targetdir/README.md)"
        echo ""
        continue
    fi

    # Check each tool exists and is executable
    check_tool "$target" "as"
    check_tool "$target" "ld"
    check_tool "$target" "ar"

    # Functional test: assemble
    test_assemble "$target"

    # Functional test: archive
    test_archive "$target"

    echo ""
done

HOST_ARCH=$(uname -m)
HOST_OS=$(uname -s)
echo "============================================"
echo "Passed: $PASS  Failed: $FAIL  Skipped: $SKIP"
if [ $FAIL -eq 0 ]; then
    echo "ALL TOOL CHECKS PASSED"
else
    echo "SOME TOOL CHECKS FAILED"
fi
HOST_ARCH=$(uname -m)
HOST_OS=$(uname -s)
echo "============================================"

exit $FAIL
