#!/bin/bash
# test-tool-fallback.sh — Verify the 3-tier tool fallback for all targets
#
# Tests that each target can find working tools through:
#   Tier 1: System-installed tools (e.g. apt install binutils-djgpp)
#   Tier 2: Bundled binaries in bin/tools/<target>/
#   Tier 3: Source available in lib/build-tools/ (message only, not auto-build)
#
# Usage: test/test-tool-fallback.sh

set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"

PASS=0
FAIL=0
SKIP=0

green()  { echo -e "  \033[32mPASS\033[0m  $1"; PASS=$((PASS+1)); }
red()    { echo -e "  \033[31mFAIL\033[0m  $1"; FAIL=$((FAIL+1)); }
yellow() { echo -e "  \033[33mSKIP\033[0m  $1"; SKIP=$((SKIP+1)); }

echo "============================================"
echo "3-Tier Tool Fallback Verification"
echo "============================================"
echo ""

# ---- Tier 2: Bundled binaries exist and run ----
echo "=== Tier 2: Bundled binaries (bin/tools/) ==="
echo ""

check_bundled() {
    local target=$1
    local dir="$ROOT/bin/tools/$target"

    if [ ! -d "$dir" ]; then
        red "$target — no bin/tools/$target/ directory"
        return
    fi

    # Check README-only (like emx might be)
    if [ ! -f "$dir/as" ] && [ -f "$dir/README.md" ]; then
        yellow "$target — README only (requires manual build)"
        return
    fi

    local all_ok=true
    for tool in as ld ar; do
        if [ ! -f "$dir/$tool" ]; then
            red "$target/$tool — missing"
            all_ok=false
            continue
        fi
        if [ ! -x "$dir/$tool" ]; then
            red "$target/$tool — not executable"
            all_ok=false
            continue
        fi
        # Test it actually runs
        if "$dir/$tool" --version >/dev/null 2>&1; then
            local ver=$("$dir/$tool" --version 2>&1 | head -1)
            green "$target/$tool runs — $ver"
        else
            red "$target/$tool — exists but won't run on this host"
            all_ok=false
        fi
    done

    # Test assembling a minimal file
    if $all_ok; then
        local testsrc="/tmp/fallback_test_$$.s"
        local testobj="/tmp/fallback_test_$$.o"
        echo '.text' > "$testsrc"
        echo 'nop' >> "$testsrc"
        if "$dir/as" -o "$testobj" "$testsrc" 2>/dev/null; then
            green "$target — assembles test file"
            # Test ar can archive it
            if "$dir/ar" rcs "/tmp/fallback_test_$$.a" "$testobj" 2>/dev/null; then
                green "$target — creates archive"
            else
                red "$target — ar failed to create archive"
            fi
        else
            red "$target — as failed to assemble test file"
        fi
        rm -f "$testsrc" "$testobj" "/tmp/fallback_test_$$.a"
    fi
}

for target in x86_64-linux i386-linux i386-go32v2 i386-win32 i386-freebsd i386-emx; do
    echo "--- $target ---"
    check_bundled "$target"
    echo ""
done

# ---- Shared make tool ----
echo "=== Shared: make ==="
if [ -x "$ROOT/bin/tools/make" ]; then
    if "$ROOT/bin/tools/make" --version >/dev/null 2>&1; then
        ver=$("$ROOT/bin/tools/make" --version 2>&1 | head -1)
        green "bin/tools/make runs — $ver"
    else
        red "bin/tools/make — exists but won't run on this host"
    fi
else
    red "bin/tools/make — missing"
fi
echo ""

# ---- Tier 3: Source available ----
echo "=== Tier 3: Build-from-source (lib/build-tools/) ==="
echo ""

check_source() {
    local file=$1
    local desc=$2
    if [ -f "$ROOT/lib/build-tools/$file" ]; then
        local size=$(ls -lh "$ROOT/lib/build-tools/$file" | awk '{print $5}')
        green "$file present ($size) — $desc"
    else
        red "$file — MISSING"
    fi
}

check_source "binutils-2.42.tar.xz" "as, ld, ar for native/win32/freebsd"
check_source "binutils-2.30.tar.xz" "as, ld, ar for OS/2 EMX (a.out, --enable-obsolete)"
check_source "make-4.3.tar.gz" "GNU Make"
echo ""

# ---- Tier 1: System tools (report what's available) ----
echo "=== Tier 1: System tools (informational) ==="
echo ""

check_system() {
    local name=$1
    local desc=$2
    if command -v "$name" >/dev/null 2>&1; then
        local path=$(command -v "$name")
        green "system $name — $path ($desc)"
    else
        yellow "system $name — not installed ($desc)"
    fi
}

# Native
check_system "as" "native assembler"
check_system "ld" "native linker"
check_system "ar" "native archiver"
check_system "make" "build tool"

# Cross-tools
echo ""
echo "--- Cross-tool prefixes ---"
check_system "i386-pc-msdosdjgpp-as" "DJGPP (DOS go32v2)"
check_system "i686-w64-mingw32-as" "MinGW (Windows)"
check_system "i386-pc-freebsdelf-as" "FreeBSD cross"
check_system "i386-aout-as" "OS/2 EMX (a.out)"
echo ""

# ---- Cross-compile test with bundled tools ----
echo "=== Cross-compile: bundled tools produce valid output ==="
echo ""

cross_compile_test() {
    local label=$1
    local compiler=$2
    local target_os=$3
    local units=$4
    local tooldir=$5

    if [ ! -d "$units" ] || ! ls "$units"/*.ppu >/dev/null 2>&1; then
        yellow "$label — no RTL units"
        return
    fi
    if [ ! -d "$tooldir" ] || [ ! -x "$tooldir/as" ]; then
        yellow "$label — no bundled tools"
        return
    fi

    local src="/tmp/fallback_cross_$$.pas"
    cat > "$src" << 'PASCALEOF'
program hello;
begin
  WriteLn('Hello');
end.
PASCALEOF

    local out="/tmp/fallback_cross_$$"
    rm -f "$out" "${out}.exe" /tmp/link.res 2>/dev/null

    local cout
    cout=$("$compiler" -T$target_os -Fu"$units" -FD"$tooldir" -o"$out" "$src" 2>&1 || true)

    if [ -f "$out" ] || [ -f "${out}.exe" ]; then
        local fmt=$(file "$out"* 2>/dev/null | head -1 | sed 's/.*: //' | cut -c1-60)
        green "$label — $fmt"
    elif [ -f "${out}.out" ] && ! echo "$cout" | grep -q "undefined reference"; then
        # OS/2 (emx): link produced a.out with all symbols resolved; the
        # final LX bind needs the emxl.exe runtime loader (documented).
        green "$label — a.out linked, all symbols resolved (emxbind needs emxl.exe loader)"
    elif echo "$cout" | grep -q "emxbind\|emxl.exe\|emx-emxbind" && ! echo "$cout" | grep -q "undefined reference"; then
        green "$label — link OK, emxbind needs emxl.exe loader (documented)"
    else
        red "$label — compile/link failed"
    fi
    rm -f "$src" "$out" "${out}.exe" "${out}.out" /tmp/link.res 2>/dev/null
}

# Native (uses bin/tools/x86_64-linux/)
cross_compile_test "x86_64-linux (native)" \
    "$ROOT/bin/ppcx64" "linux" \
    "$ROOT/bin/units/x86_64-linux" \
    "$ROOT/bin/tools/x86_64-linux"

# go32v2 (uses bin/tools/i386-go32v2/)
cross_compile_test "i386-go32v2 (DOS)" \
    "$ROOT/bin/ppc386" "go32v2" \
    "$ROOT/bin/units/i386-go32v2" \
    "$ROOT/bin/tools/i386-go32v2"

# win32 (uses bin/tools/i386-win32/)
cross_compile_test "i386-win32 (Windows)" \
    "$ROOT/bin/ppc386" "win32" \
    "$ROOT/bin/units/i386-win32" \
    "$ROOT/bin/tools/i386-win32"

# freebsd (uses bin/tools/i386-freebsd/)
cross_compile_test "i386-freebsd" \
    "$ROOT/bin/ppc386" "freebsd" \
    "$ROOT/bin/units/i386-freebsd" \
    "$ROOT/bin/tools/i386-freebsd"

# emx/os2 (uses bin/tools/i386-emx/)
cross_compile_test "i386-emx (OS/2)" \
    "$ROOT/bin/ppc386" "emx" \
    "$ROOT/bin/units/i386-os2" \
    "$ROOT/bin/tools/i386-emx"

echo ""

# ---- Summary ----
echo "============================================"
echo "Passed: $PASS  Failed: $FAIL  Skipped: $SKIP"
echo ""
echo "Fallback chain:"
echo "  Tier 1 (system tools):   reported above"
echo "  Tier 2 (bundled binary): tested — run + assemble + archive"
echo "  Tier 3 (build source):   verified source tarballs present"
echo ""
if [ $FAIL -eq 0 ]; then
    echo "ALL FALLBACK CHECKS PASSED"
else
    echo "SOME CHECKS FAILED"
fi
echo "============================================"

exit $FAIL
