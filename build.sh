#!/bin/bash
# ==========================================================================
# FPC 2.6.4irc — Self-Contained Build Script
# Release: r3.1-20260718
#
# Three-tier tool fallback:
#   Tier 1: Bundled pre-built tools in bin/tools/
#   Tier 2: System-installed tools (apt/pkg)
#   Tier 3: Build from source (deferred — not yet implemented)
#
# Usage:
#   ./build.sh              # Build all targets
#   ./build.sh clean        # Clean build artifacts only
#   ./build.sh win32        # Build single target
#   ./build.sh mystic       # Build Mystic BBS (all platforms)
# ==========================================================================
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
BIN="$SCRIPT_DIR/bin"
SRC="$SCRIPT_DIR/src"
UNITS="$BIN/units"

# Colors (disable with NO_COLOR=1):
if [ -z "$NO_COLOR" ]; then
    GREEN='\033[0;32m'; RED='\033[0;31m'; YELLOW='\033[0;33m'; NC='\033[0m'
else
    GREEN=''; RED=''; YELLOW=''; NC=''
fi

ok()   { echo -e "  ${GREEN}✅ $1${NC}"; }
fail() { echo -e "  ${RED}❌ $1${NC}"; }
warn() { echo -e "  ${YELLOW}⚠️  $1${NC}"; }
info() { echo -e "  $1"; }

# ==========================================================================
# Step 0: Clean build artifacts from source tree
# ==========================================================================
do_clean() {
    echo "=== Cleaning build artifacts ==="
    find "$SRC/rtl/units" -mindepth 1 -type f -delete 2>/dev/null
    find "$SRC/rtl/units" -mindepth 1 -type d -empty -delete 2>/dev/null
    find "$SRC/packages" -type d -name "units" -exec rm -rf {} + 2>/dev/null
    find "$SRC" -name "*.o" -not -path "*/units/*" -not -path "*/bin/*" -delete 2>/dev/null
    find "$SRC" -name "*.s" -not -path "*/units/*" -delete 2>/dev/null
    find "$SRC" -name "*.ppu" -not -path "*/units/*" -delete 2>/dev/null
    find "$SRC" -name "ppas.sh" -o -name "ppas.bat" -o -name "link.res" \
         -o -name "script.res" -o -name "fpcmade.*" 2>/dev/null | xargs rm -f 2>/dev/null
    ok "Source tree cleaned"
}

# ==========================================================================
# Step 1: Find tools (three-tier fallback)
# ==========================================================================
find_tool() {
    local name="$1"
    local target="$2"
    local prefix="${target:+${target}-}"

    # Tier 1: Bundled in bin/tools/
    if [ -n "$target" ] && [ -x "$BIN/tools/$target/${prefix}${name}" ]; then
        echo "$BIN/tools/$target/${prefix}${name}"
        return 0
    fi

    # Tier 2: System-installed
    if command -v "${prefix}${name}" >/dev/null 2>&1; then
        echo "${prefix}${name}"
        return 0
    fi

    # Tier 3: Build from source (not yet implemented)
    # warn "Tier 3 not implemented: would build $name from source"
    return 1
}

find_compiler() {
    local target="$1"
    case "$target" in
        x86_64-linux)   echo "$BIN/ppcx64" ;;
        i8086-msdos)    echo "$BIN/ppcross8086" ;;
        *)              echo "$BIN/ppc386" ;;
    esac
}

# ==========================================================================
# Step 2: Build RTL + Packages for a target
# ==========================================================================
build_target() {
    local target="$1"
    local cpu="${target%%-*}"
    local os="${target#*-}"
    local fpc=$(find_compiler "$target")
    local tunits="$UNITS/$target"

    # ======================================================================
    # BUG: Win32 system.o cannot be rebuilt from source (r3.1-20260718)
    #
    # The cross-compiled Win32 system.o has a heap manager bug that crashes
    # on Windows 11. Root cause: syswin.inc codepage signature changes
    # (cp:TSystemCodePage) alter register allocation, corrupting heap
    # data structures. Wine is unaffected; real Windows 11 crashes with
    # EAccessViolation in ntdll.dll at startup.
    #
    # Fix: Ship the pre-built r3 system.o (591KB, Jul 10 2026) and do NOT
    # rebuild it. Package PPUs compile cleanly on top of it.
    #
    # See: BUG-win32-heap-crash.md for full analysis.
    # Tracked as: Phase 6 in roadmap (UNSTABLE BRANCH)
    # ======================================================================
    if [ "$target" = "i386-win32" ]; then
        if [ -f "$tunits/system.ppu" ] && [ -f "$tunits/system.o" ]; then
            echo ""
            echo "╔══════════════════════════════════════════════════════════════════╗"
            echo "║  WARNING: Win32 system.o NOT rebuilt — known heap bug           ║"
            echo "║  Using shipped r3 system.o (591KB, Jul 10 2026)                 ║"
            echo "║  Cross-compiled system.o crashes on Windows 11 (EAccessViolation)║"
            echo "║  See: BUG-win32-heap-crash.md | Roadmap Phase 6                 ║"
            echo "╚══════════════════════════════════════════════════════════════════╝"
            echo ""
        else
            fail "Win32: system.ppu/system.o missing! Cannot build."
            return 1
        fi
    fi

    if [ ! -x "$fpc" ]; then
        fail "$target: compiler not found at $fpc"
        return 1
    fi

    echo "--- Building $target ---"

    # Determine cross-compile options:
    local opts=""
    local crossbin=""
    case "$target" in
        x86_64-linux)
            ;;
        i386-linux)
            opts="-Tlinux"
            ;;
        i386-win32)
            opts="-Twin32 -XPi386-win32- -FD$BIN/tools/i386-win32"
            crossbin="$BIN/tools/i386-win32"
            ;;
        i386-go32v2)
            opts="-Tgo32v2"
            crossbin="$BIN/tools/i386-go32v2"
            ;;
        i386-freebsd)
            opts="-Tfreebsd"
            crossbin="$BIN/tools/i386-freebsd"
            ;;
        i386-os2)
            opts="-Temx -XPi386-emx-"
            crossbin="$BIN/tools/i386-emx"
            ;;
        i8086-msdos)
            opts="-Tmsdos"
            crossbin="$BIN/tools/i8086-msdos"
            ;;
        i386-darwin)
            opts="-Tdarwin -s"
            ;;
    esac

    # Build RTL (skip for Win32 — uses shipped system.o):
    if [ "$target" != "i386-win32" ]; then
        local make_target="${os}"
        [ "$target" = "i386-os2" ] && make_target="emx"

        cd "$SRC/rtl"
        make clean OS_TARGET="$os" CPU_TARGET="$cpu" FPC="$fpc" >/dev/null 2>&1 || true
        if make all OS_TARGET="$os" CPU_TARGET="$cpu" \
             FPC="$fpc" \
             ${crossbin:+CROSSBINDIR=$crossbin} \
             OPT="$opts" \
             2>&1 | tail -1 | grep -q "Error\|Fatal"; then
            fail "$target: RTL build failed"
            return 1
        fi

        # Install RTL PPUs:
        mkdir -p "$tunits"
        cp "$SRC/rtl/units/$make_target"/*.ppu "$tunits/" 2>/dev/null
        cp "$SRC/rtl/units/$make_target"/*.o "$tunits/" 2>/dev/null
        cp "$SRC/rtl/units/$make_target"/*.a "$tunits/" 2>/dev/null
        ok "$target: RTL built"
    fi

    # Build packages:
    cd "$SRC"
    make -C packages all OS_TARGET="$os" CPU_TARGET="$cpu" \
         FPC="$fpc" \
         ${crossbin:+CROSSBINDIR=$crossbin} \
         OPT="$opts -Fu$tunits" \
         2>/dev/null || true

    # Install package PPUs:
    for pkg in "$SRC/packages"/*/units/"$target" "$SRC/packages"/*/units/"$make_target"; do
        [ -d "$pkg" ] && cp "$pkg"/*.ppu "$pkg"/*.o "$tunits/" 2>/dev/null
    done

    local count=$(ls "$tunits"/*.ppu 2>/dev/null | wc -l)
    ok "$target: $count PPUs"
}

# ==========================================================================
# Step 3: Build Mystic BBS
# ==========================================================================
build_mystic() {
    local mystic_dir="$1"
    if [ ! -f "$mystic_dir/mystic/mystic.pas" ]; then
        fail "Mystic source not found at $mystic_dir"
        return 1
    fi

    echo "=== Building Mystic BBS ==="
    local total=0 pass=0

    for target_opts in \
        "i386-linux:" \
        "i386-win32:-Twin32 -XPi386-win32- -FD$BIN/tools/i386-win32" \
        "i386-go32v2:-Tgo32v2" \
        "i386-freebsd:-Tfreebsd" \
        "i386-os2:-Temx -XPi386-emx-"; do

        local target="${target_opts%%:*}"
        local opts="${target_opts#*:}"
        local tunits="$UNITS/$target"

        echo "--- $target ---"
        local tpass=0
        for prog in mystic mis mutil mplc mide mbbsutil fidopoll nodespy \
                    qwkpoll mystpack install install_make maketheme 109to110; do
            total=$((total+1))
            local outdir="/tmp/mystic_build_${target}_${prog}"
            rm -rf "$outdir"; mkdir -p "$outdir"
            if $BIN/ppc386 $opts -Fu"$tunits" -Mdelphi \
                 -Fu"$mystic_dir/mdl" -Fu"$mystic_dir/mystic" \
                 -Fi"$mystic_dir/mdl" -Fi"$mystic_dir/mystic" \
                 -FU"$outdir" -FE"$outdir" \
                 "$mystic_dir/mystic/${prog}.pas" >/dev/null 2>&1; then
                tpass=$((tpass+1))
                pass=$((pass+1))
            fi
        done

        # marc uses objfpc:
        total=$((total+1))
        local outdir="/tmp/mystic_build_${target}_marc"
        rm -rf "$outdir"; mkdir -p "$outdir"
        if $BIN/ppc386 $opts -Fu"$tunits" -Mobjfpc \
             -Fu"$mystic_dir/mystic" -Fi"$mystic_dir/mystic" \
             -FU"$outdir" -FE"$outdir" \
             "$mystic_dir/mystic/marc.pas" >/dev/null 2>&1; then
            tpass=$((tpass+1))
            pass=$((pass+1))
        fi

        [ $tpass -eq 15 ] && ok "$target: $tpass/15" || fail "$target: $tpass/15"
    done

    echo ""
    [ $pass -eq $total ] && ok "Mystic: $pass/$total" || fail "Mystic: $pass/$total"
}

# ==========================================================================
# Main
# ==========================================================================
case "${1:-all}" in
    clean)
        do_clean
        ;;
    win32|linux|go32v2|freebsd|os2|darwin|msdos)
        target=""
        case "$1" in
            win32)    target="i386-win32" ;;
            linux)    target="x86_64-linux" ;;
            go32v2)   target="i386-go32v2" ;;
            freebsd)  target="i386-freebsd" ;;
            os2)      target="i386-os2" ;;
            darwin)   target="i386-darwin" ;;
            msdos)    target="i8086-msdos" ;;
        esac
        do_clean
        build_target "$target"
        ;;
    mystic)
        build_mystic "${2:-../mystic-bbs-irc}"
        ;;
    all)
        echo "=== FPC 2.6.4irc Build — r3.1-20260718 ==="
        echo ""
        do_clean
        for target in x86_64-linux i386-linux i386-win32 i386-go32v2 \
                      i386-freebsd i386-os2 i8086-msdos i386-darwin; do
            build_target "$target" || warn "$target: build failed, continuing"
            echo ""
        done
        echo "=== Build complete ==="
        echo ""
        echo "PPU summary:"
        for target in x86_64-linux i386-linux i386-win32 i386-go32v2 \
                      i386-freebsd i386-os2 i8086-msdos i386-darwin; do
            info "$target: $(ls "$UNITS/$target"/*.ppu 2>/dev/null | wc -l) PPUs"
        done
        ;;
    *)
        echo "Usage: $0 [all|clean|win32|linux|go32v2|freebsd|os2|darwin|msdos|mystic [path]]"
        ;;
esac
