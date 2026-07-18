#!/usr/bin/env bash
# ==========================================================================
#  FPC 2.6.4irc — Linux build script
#
#  Builds the Free Pascal Compiler 2.6.4irc from source, producing:
#    - Native i386-linux or x86_64-linux compiler
#    - RTL + packages for native target
#    - Optional cross-compiled RTL for go32v2, win32, os2 (EMX)
#
#  Prerequisites:
#    - A working FPC 2.6.x or 3.x already installed (to bootstrap)
#    - GNU make, binutils (as, ld)
#    - For go32v2 cross:  binutils-djgpp (apt: binutils-djgpp)
#    - For win32 cross:   binutils-mingw-w64-i686
#    - For os2 cross:     patched binutils + emxbind (see patches/os2-cross/)
#
#  Usage:
#    ./build-linux.sh                    # build native compiler + RTL
#    ./build-linux.sh all                # build native + all cross targets
#    ./build-linux.sh go32v2             # build native + go32v2 cross RTL
#    ./build-linux.sh win32              # build native + win32 cross RTL
#    ./build-linux.sh go32v2 win32       # build native + multiple cross
#    ./build-linux.sh clean              # remove build artifacts
#
#  Output goes to:  out/
# ==========================================================================

set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"

OUT="$ROOT/out"
OUTBIN="$OUT/bin"
OUTUNITS="$OUT/units"
OUTLIB="$OUT/lib"

# Find bootstrap compiler
BOOTSTRAP_FPC="${FPC:-$(command -v fpc 2>/dev/null || echo '')}"
if [ -z "$BOOTSTRAP_FPC" ]; then
    echo "ERROR: No bootstrap FPC found."
    echo "Install FPC 2.6.x or 3.x, or set FPC=/path/to/fpc"
    exit 1
fi

BOOTSTRAP_VER=$("$BOOTSTRAP_FPC" -iV 2>/dev/null || echo "unknown")
echo "=== FPC 2.6.4irc Linux Build ==="
echo "Bootstrap compiler: $BOOTSTRAP_FPC ($BOOTSTRAP_VER)"
echo "Source root:        $ROOT"
echo "Output:             $OUT"
echo ""

# ---- Check required tools (use bundled if system tools missing) ----
TOOLDIR="$ROOT/bin/tools"
MISSING=""
ADDED_PATH=""
for tool in as ld ar; do
    if ! command -v $tool >/dev/null 2>&1; then
        if [ -x "$TOOLDIR/x86_64-linux/$tool" ]; then
            if [ -z "$ADDED_PATH" ]; then
                export PATH="$TOOLDIR/x86_64-linux:$PATH"
                ADDED_PATH=1
                echo "Using bundled binutils from bin/tools/x86_64-linux/"
            fi
        else
            MISSING="$MISSING $tool"
        fi
    fi
done
if ! command -v make >/dev/null 2>&1; then
    if [ -x "$TOOLDIR/make" ]; then
        export PATH="$TOOLDIR:$PATH"
        echo "Using bundled make from bin/tools/"
    else
        MISSING="$MISSING make"
    fi
fi
if [ -n "$MISSING" ]; then
    echo "ERROR: Required tools not found:$MISSING"
    echo "Install: apt install binutils make"
    echo "Or run: test/test-tools.sh to verify bundled tools"
    exit 1
fi

# ---- Detect host CPU ----
HOST_CPU=$(uname -m)
case "$HOST_CPU" in
    x86_64|amd64)  FPC_CPU=x86_64; PP=ppcx64 ;;
    i?86)          FPC_CPU=i386;   PP=ppc386  ;;
    *)
        echo "ERROR: Unsupported host CPU: $HOST_CPU"
        exit 1
        ;;
esac
echo "Host CPU: $FPC_CPU ($PP)"

# ---- Parse targets ----
TARGETS=()
DO_CLEAN=0

if [ $# -eq 0 ]; then
    TARGETS=()  # native only
else
    for arg in "$@"; do
        case "$arg" in
            clean)   DO_CLEAN=1 ;;
            all)     TARGETS=(go32v2 win32 freebsd) ;;
            go32v2)  TARGETS+=(go32v2) ;;
            win32)   TARGETS+=(win32) ;;
            freebsd) TARGETS+=(freebsd) ;;
            os2|emx) TARGETS+=(os2) ;;
            *)
                echo "Unknown target: $arg"
                echo "Valid: go32v2 win32 freebsd os2 all clean"
                exit 1
                ;;
        esac
    done
fi

# ---- Clean ----
if [ $DO_CLEAN -eq 1 ]; then
    echo "Cleaning..."
    rm -rf "$OUT"
    make -C "$ROOT/src/compiler" clean FPC="$BOOTSTRAP_FPC" 2>/dev/null || true
    make -C "$ROOT/src/rtl" clean FPC="$BOOTSTRAP_FPC" 2>/dev/null || true
    find "$ROOT" \( -name '*.ppu' -o -name '*.o' -o -name '*.a' \) -delete 2>/dev/null || true
    echo "Clean done."
    exit 0
fi

mkdir -p "$OUTBIN" "$OUTUNITS" "$OUTLIB"

# ====================================================================
#  Stage 1: Build the native compiler
# ====================================================================

echo ""
echo "=== Stage 1: Building native compiler ==="

cd "$ROOT/src/compiler"
make clean FPC="$BOOTSTRAP_FPC" CPU_TARGET=$FPC_CPU 2>/dev/null || true
make cycle FPC="$BOOTSTRAP_FPC" CPU_TARGET=$FPC_CPU OPT="-O2" 2>&1 | tail -5

if [ ! -f "$ROOT/src/compiler/$PP" ]; then
    echo "ERROR: Compiler build failed — $PP not found"
    exit 1
fi

cp "$ROOT/src/compiler/$PP" "$OUTBIN/$PP"
echo "Compiler: $OUTBIN/$PP"

NEW_FPC="$OUTBIN/$PP"
echo "Version:  $("$NEW_FPC" -iV)"

# ====================================================================
#  Stage 2: Build native RTL + packages
# ====================================================================

echo ""
echo "=== Stage 2: Building native RTL ==="

cd "$ROOT/src/rtl"
make clean FPC="$NEW_FPC" OS_TARGET=linux CPU_TARGET=$FPC_CPU 2>/dev/null || true
make all FPC="$NEW_FPC" OS_TARGET=linux CPU_TARGET=$FPC_CPU \
    INSTALL_UNITDIR="$OUTUNITS/${FPC_CPU}-linux" OPT="-O2" 2>&1 | tail -5
make install FPC="$NEW_FPC" OS_TARGET=linux CPU_TARGET=$FPC_CPU \
    INSTALL_UNITDIR="$OUTUNITS/${FPC_CPU}-linux" 2>&1 | tail -3

echo "RTL units: $OUTUNITS/${FPC_CPU}-linux/"

# Packages
echo ""
echo "=== Stage 2b: Building native packages ==="

cd "$ROOT/src/packages"
make clean FPC="$NEW_FPC" OS_TARGET=linux CPU_TARGET=$FPC_CPU 2>/dev/null || true
make all FPC="$NEW_FPC" OS_TARGET=linux CPU_TARGET=$FPC_CPU \
    INSTALL_UNITDIR="$OUTUNITS/${FPC_CPU}-linux" OPT="-O2 -Fu$OUTUNITS/${FPC_CPU}-linux" 2>&1 | tail -5
make install FPC="$NEW_FPC" OS_TARGET=linux CPU_TARGET=$FPC_CPU \
    INSTALL_UNITDIR="$OUTUNITS/${FPC_CPU}-linux" 2>&1 | tail -3

echo "Packages:  $OUTUNITS/${FPC_CPU}-linux/"

# ====================================================================
#  Stage 3: Cross-compiled RTL for each requested target
# ====================================================================

cross_rtl() {
    local target=$1
    local cpu=i386
    local cross_pp=ppc386
    local cross_opts=""
    local cross_bindir=""

    echo ""
    echo "=== Cross RTL: $target ==="

    case "$target" in
        go32v2)
            # Tier 1: system DJGPP binutils
            if command -v i686-pc-msdosdjgpp-as >/dev/null 2>&1; then
                cross_bindir=$(dirname "$(command -v i686-pc-msdosdjgpp-as)")
                cross_opts="-Xd -Fl$cross_bindir"
            elif command -v i586-pc-msdosdjgpp-as >/dev/null 2>&1; then
                cross_bindir=$(dirname "$(command -v i586-pc-msdosdjgpp-as)")
                cross_opts="-Xd -Fl$cross_bindir"
            elif command -v i386-pc-msdosdjgpp-as >/dev/null 2>&1; then
                cross_bindir=$(dirname "$(command -v i386-pc-msdosdjgpp-as)")
                cross_opts="-Xd -Fl$cross_bindir"
            # Tier 2: bundled DJGPP tools (verify they run)
            elif [ -x "$ROOT/bin/tools/i386-go32v2/as" ] && \
                 "$ROOT/bin/tools/i386-go32v2/as" --version >/dev/null 2>&1; then
                cross_bindir="$ROOT/bin/tools/i386-go32v2"
                cross_opts="-Xd -Fl$cross_bindir"
                echo "  Using bundled DJGPP tools from bin/tools/i386-go32v2/"
            # Tier 3: point to source
            else
                echo "  SKIP: no working DJGPP binutils found"
                echo "  Options:"
                echo "    apt install binutils-djgpp"
                echo "    or build from: lib/build-tools/binutils-2.42.tar.xz"
                echo "       ./configure --target=i386-pc-msdosdjgpp && make"
                return 0
            fi
            echo "  DJGPP binutils: $cross_bindir"
            ;;
        win32)
            # Tier 1: system MinGW
            if command -v i686-w64-mingw32-as >/dev/null 2>&1; then
                cross_bindir=$(dirname "$(command -v i686-w64-mingw32-as)")
            # Tier 2: bundled MinGW tools
            elif [ -x "$ROOT/bin/tools/i386-win32/as" ] && \
                 "$ROOT/bin/tools/i386-win32/as" --version >/dev/null 2>&1; then
                cross_bindir="$ROOT/bin/tools/i386-win32"
                echo "  Using bundled MinGW tools from bin/tools/i386-win32/"
            # Tier 3: point to source
            else
                echo "  SKIP: no working MinGW binutils found"
                echo "  Options:"
                echo "    apt install binutils-mingw-w64-i686"
                echo "    or build from: lib/build-tools/binutils-2.42.tar.xz"
                echo "       ./configure --target=i686-w64-mingw32 && make"
                return 0
            fi
            echo "  MinGW binutils: $cross_bindir"
            ;;
        freebsd)
            # Tier 1: system FreeBSD cross-tools
            if command -v i386-freebsd-as >/dev/null 2>&1; then
                cross_bindir=$(dirname "$(command -v i386-freebsd-as)")
            elif command -v i386-pc-freebsdelf-as >/dev/null 2>&1; then
                cross_bindir=$(dirname "$(command -v i386-pc-freebsdelf-as)")
            # Tier 2: bundled FreeBSD tools
            elif [ -x "$ROOT/bin/tools/i386-freebsd/as" ] && \
                 "$ROOT/bin/tools/i386-freebsd/as" --version >/dev/null 2>&1; then
                cross_bindir="$ROOT/bin/tools/i386-freebsd"
                echo "  Using bundled FreeBSD tools from bin/tools/i386-freebsd/"
            # Tier 3: message (FreeBSD ELF can sometimes use host tools)
            else
                echo "  NOTE: no FreeBSD cross-tools found"
                echo "  Options:"
                echo "    Build from: lib/build-tools/binutils-2.42.tar.xz"
                echo "       ./configure --target=i386-pc-freebsdelf && make"
                echo "    Or build natively on FreeBSD"
            fi
            if [ -n "$cross_bindir" ]; then
                echo "  FreeBSD binutils: $cross_bindir"
            fi
            ;;
        os2)
            target="emx"  # FPC uses 'emx' internally
            # Tier 1: system EMX/aout tools
            if command -v i386-emx-ld >/dev/null 2>&1; then
                cross_bindir=$(dirname "$(command -v i386-emx-ld)")
            elif command -v i386-aout-ld >/dev/null 2>&1; then
                cross_bindir=$(dirname "$(command -v i386-aout-ld)")
            # Tier 2: bundled EMX tools (patched binutils 2.30)
            elif [ -x "$ROOT/bin/tools/i386-emx/as" ] && \
                 "$ROOT/bin/tools/i386-emx/as" --version >/dev/null 2>&1; then
                cross_bindir="$ROOT/bin/tools/i386-emx"
                echo "  Using bundled EMX tools from bin/tools/i386-emx/"
            # Tier 3: point to source + patch
            else
                echo "  SKIP: no working OS/2 EMX binutils found"
                echo "  Options:"
                echo "    Build from: lib/build-tools/binutils-2.30.tar.xz"
                echo "    Apply patch: patches/os2-cross/binutils-2.30-emx-nimp.patch"
                echo "       ./configure --target=i386-aout --enable-obsolete && make"
                echo "    Also need emxbind: see patches/os2-cross/emxbind/"
                return 0
            fi
            echo "  OS/2 binutils: $cross_bindir"
            ;;
    esac

    # Build cross-compiler if we don't have ppc386 yet
    if [ ! -f "$OUTBIN/ppc386" ] && [ "$FPC_CPU" = "x86_64" ]; then
        echo "  Building i386 cross-compiler..."
        cd "$ROOT/src/compiler"
        make clean FPC="$NEW_FPC" 2>/dev/null || true
        make all FPC="$NEW_FPC" CPU_TARGET=i386 OPT="-O2" 2>&1 | tail -3
        if [ -f "$ROOT/src/compiler/ppc386" ]; then
            cp "$ROOT/src/compiler/ppc386" "$OUTBIN/ppc386"
            echo "  Cross compiler: $OUTBIN/ppc386"
        else
            echo "  ERROR: Failed to build ppc386"
            return 1
        fi
    fi

    local cross_fpc="$OUTBIN/ppc386"
    if [ ! -f "$cross_fpc" ]; then
        cross_fpc="$NEW_FPC"
    fi

    cd "$ROOT/src/rtl"
    make clean FPC="$cross_fpc" OS_TARGET=$target CPU_TARGET=$cpu 2>/dev/null || true

    local make_opts="FPC=$cross_fpc OS_TARGET=$target CPU_TARGET=$cpu"
    if [ -n "$cross_bindir" ]; then
        make_opts="$make_opts CROSSBINDIR=$cross_bindir"
    else
        # No cross bindir — use host binutils with no prefix.
        # This prevents the Makefile from auto-generating a prefix
        # like i386-linux- when cross-compiling i386 on x86_64.
        make_opts="$make_opts BINUTILSPREFIX="
    fi

    local extra_opt="-O2"
    # go32v2 RTL uses the internal COFF writer with the storage class fix.
    # -Aas is available as a fallback but not required.
    
    if [ "$target" = "go32v2" ]; then
        extra_opt="-O2"
    fi

    make all $make_opts OPT="$extra_opt" \
        INSTALL_UNITDIR="$OUTUNITS/${cpu}-${target}" 2>&1 | tail -5
    make install $make_opts \
        INSTALL_UNITDIR="$OUTUNITS/${cpu}-${target}" 2>&1 | tail -3

    echo "  Units: $OUTUNITS/${cpu}-${target}/"

    # Verify sockets unit for go32v2
    if [ "$target" = "go32v2" ]; then
        if [ -f "$OUTUNITS/${cpu}-${target}/sockets.ppu" ]; then
            echo "  sockets.ppu: PRESENT (Watt-32 DOS sockets)"
        else
            echo "  WARNING: sockets.ppu not built"
        fi
    fi
}

for target in "${TARGETS[@]}"; do
    cross_rtl "$target"
done

# ====================================================================
#  Stage 4: Create fpc.cfg
# ====================================================================

echo ""
echo "=== Creating fpc.cfg ==="

cat > "$OUT/fpc.cfg" << CFGEOF
# FPC 2.6.4irc configuration
# Generated by build-linux.sh

# Search paths
-Fu$OUTUNITS/\$FPCTARGET/*
-Fu$OUTUNITS/\$FPCTARGET/rtl

# Binary utils
-FD$OUTBIN

# Optimizations
-O2

# Delphi mode by default
#-Mdelphi
CFGEOF

echo "Config: $OUT/fpc.cfg"

# ====================================================================
#  Summary
# ====================================================================

echo ""
echo "==========================================="
echo " FPC 2.6.4irc build complete"
echo "==========================================="
echo ""
echo " Compiler:  $OUTBIN/$PP"
echo " Version:   $("$NEW_FPC" -iV)"
echo " Config:    $OUT/fpc.cfg"
echo ""
echo " Native RTL:  $OUTUNITS/${FPC_CPU}-linux/"

for target in "${TARGETS[@]}"; do
    t=$target
    [ "$t" = "os2" ] && t="emx"
    if [ -d "$OUTUNITS/i386-${t}" ]; then
        echo " Cross RTL:   $OUTUNITS/i386-${t}/"
    fi
done

echo ""
echo " Usage:"
echo "   $OUTBIN/$PP -Fu$OUTUNITS/${FPC_CPU}-linux myprogram.pas"
if [[ " ${TARGETS[*]:-} " =~ " go32v2 " ]]; then
    echo "   $OUTBIN/ppc386 -Tgo32v2 -Fu$OUTUNITS/i386-go32v2 myprogram.pas"
fi
echo ""

# ====================================================================
#  Stage 5: Create release archive (source + binaries)
# ====================================================================

echo "=== Creating release archive ==="

RELEASE_NAME="fpc-2.6.4irc-${FPC_CPU}-linux"
RELEASE_DIR="$OUT/$RELEASE_NAME"
rm -rf "$RELEASE_DIR"
mkdir -p "$RELEASE_DIR"

# Copy source
echo "  Copying source..."
for item in compiler rtl packages utils tests patches \
            README.md CHANGELOG-IRC.md LICENSE Makefile Makefile.fpc \
            build-linux.sh build-windows.bat .gitattributes .gitignore; do
    if [ -e "$ROOT/$item" ]; then
        cp -a "$ROOT/$item" "$RELEASE_DIR/"
    fi
done

# Copy binaries
echo "  Copying binaries..."
mkdir -p "$RELEASE_DIR/out"
cp -a "$OUT/bin" "$RELEASE_DIR/out/"
cp -a "$OUT/units" "$RELEASE_DIR/out/"
cp -a "$OUT/lib" "$RELEASE_DIR/out/" 2>/dev/null || true
cp -a "$OUT/fpc.cfg" "$RELEASE_DIR/out/"

# Create archive
echo "  Compressing..."
cd "$OUT"
tar czf "${RELEASE_NAME}.tar.gz" "$RELEASE_NAME"
rm -rf "$RELEASE_DIR"

ARCHIVE_SIZE=$(du -h "$OUT/${RELEASE_NAME}.tar.gz" | cut -f1)
echo ""
echo "  Release: $OUT/${RELEASE_NAME}.tar.gz ($ARCHIVE_SIZE)"

echo ""
echo "==========================================="
