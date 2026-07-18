#!/bin/bash
# provision.sh — Tier 1/2/3 provisioning for RIPscript testing tools
#
# Tier 1: System-installed (apt-get install ansilove imagemagick)
# Tier 2: Pre-built bundled binaries (Linux x86_64)
# Tier 3: Build from source
#
# Usage: ./provision.sh [--build-from-source]

set -e
ROOT="$(cd "$(dirname "$0")" && pwd)"
BIN="$ROOT/bin"
SRC="$ROOT/src"

green()  { echo -e "\033[32m✓\033[0m $1"; }
red()    { echo -e "\033[31m✗\033[0m $1"; }
yellow() { echo -e "\033[33m⚠\033[0m $1"; }

echo "============================================"
echo "RIPscript Testing Tools — Provisioning"
echo "============================================"
echo ""

# ---- Ansilove ----
echo "=== Ansilove (ANSI/ASCII art → PNG) ==="
if command -v ansilove >/dev/null 2>&1; then
    VER=$(ansilove -v 2>&1 | head -1)
    green "Tier 1: System ansilove — $VER"
    ANSILOVE=$(command -v ansilove)
elif [ -x "$BIN/ansilove" ]; then
    green "Tier 2: Bundled ansilove"
    ANSILOVE="$BIN/ansilove"
elif [ "$1" = "--build-from-source" ]; then
    yellow "Tier 3: Building ansilove from source..."
    # Extract bundled source if not already extracted
    if [ ! -d "$SRC/libansilove-src" ] && [ -f "$SRC/libansilove-src.tar.gz" ]; then
        tar xzf "$SRC/libansilove-src.tar.gz" -C "$SRC/"
    fi
    if [ ! -d "$SRC/ansilove-src" ] && [ -f "$SRC/ansilove-src.tar.gz" ]; then
        tar xzf "$SRC/ansilove-src.tar.gz" -C "$SRC/"
    fi
    # Rename to expected dirs if needed
    [ -d "$SRC/libansilove-src" ] && [ ! -d "$SRC/libansilove" ] && mv "$SRC/libansilove-src" "$SRC/libansilove"
    [ -d "$SRC/ansilove-src" ] && [ ! -d "$SRC/ansilove" ] && mv "$SRC/ansilove-src" "$SRC/ansilove"
    if [ -d "$SRC/libansilove" ] && [ -d "$SRC/ansilove" ]; then
        # Build libansilove first
        cd "$SRC/libansilove"
        mkdir -p build && cd build
        cmake .. -DCMAKE_INSTALL_PREFIX="$ROOT/_local" \
            -DCMAKE_C_FLAGS="-I$ROOT/_local/include" 2>&1 | tail -1
        make -j$(nproc) 2>&1 | tail -1
        make install 2>&1 | tail -1
        # Build ansilove
        cd "$SRC/ansilove"
        mkdir -p build && cd build
        cmake .. -DCMAKE_INSTALL_PREFIX="$ROOT/_local" \
            -DCMAKE_PREFIX_PATH="$ROOT/_local" 2>&1 | tail -1
        make -j$(nproc) 2>&1 | tail -1
        make install 2>&1 | tail -1
        cp "$ROOT/_local/bin/ansilove" "$BIN/ansilove"
        green "Tier 3: Built ansilove from source"
        ANSILOVE="$BIN/ansilove"
    else
        red "Source not found in $SRC/. Run: cd $SRC && git clone https://github.com/ansilove/libansilove && git clone https://github.com/ansilove/ansilove"
        ANSILOVE=""
    fi
else
    red "Not found. Install: apt-get install ansilove  OR  $0 --build-from-source"
    ANSILOVE=""
fi

# ---- ImageMagick ----
echo ""
echo "=== ImageMagick (image conversion/manipulation) ==="
if command -v convert >/dev/null 2>&1; then
    VER=$(convert -version 2>&1 | head -1)
    green "Tier 1: System ImageMagick — $VER"
    CONVERT=$(command -v convert)
elif [ -x "$BIN/convert" ]; then
    green "Tier 2: Bundled ImageMagick"
    CONVERT="$BIN/convert"
elif [ "$1" = "--build-from-source" ]; then
    yellow "Tier 3: Building ImageMagick from source..."
    # Extract bundled source if not already extracted
    if [ ! -d "$SRC/imagemagick-src" ] && [ -f "$SRC/imagemagick-src.tar.gz" ]; then
        yellow "Extracting bundled source tarball..."
        tar xzf "$SRC/imagemagick-src.tar.gz" -C "$SRC/"
    fi
    if [ -d "$SRC/imagemagick-src" ]; then
        cd "$SRC/imagemagick-src"
        yellow "Configuring (minimal build, no X11)..."
        ./configure --prefix="$ROOT/_local" --disable-shared \
            --without-perl --without-magick-plus-plus \
            --without-x --without-djvu --without-fftw \
            --without-fontconfig --without-freetype \
            --without-raqm --without-heic --without-jxl \
            --without-lqr --without-openexr --without-openjp2 \
            --without-pango --without-raw --without-tiff \
            --without-wmf --without-xml 2>&1 | tail -1
        yellow "Compiling (this may take a few minutes)..."
        make -j$(nproc) 2>&1 | tail -1
        make install 2>&1 | tail -1
        cp "$ROOT/_local/bin/convert" "$BIN/convert" 2>/dev/null
        cp "$ROOT/_local/bin/identify" "$BIN/identify" 2>/dev/null
        cp "$ROOT/_local/bin/magick" "$BIN/magick" 2>/dev/null
        green "Tier 3: Built ImageMagick from source → $BIN/"
        CONVERT="$BIN/convert"
    else
        red "No source found. Place imagemagick-src.tar.gz in $SRC/ or run:"
        red "  git clone --depth=1 https://github.com/ImageMagick/ImageMagick $SRC/imagemagick-src"
        CONVERT=""
    fi
else
    red "Not found. Options:"
    red "  apt-get install imagemagick"
    red "  $0 --build-from-source"
    CONVERT=""
fi

# ---- Summary ----
echo ""
echo "============================================"
echo "Summary:"
[ -n "$ANSILOVE" ] && green "ansilove: $ANSILOVE" || red "ansilove: NOT AVAILABLE"
[ -n "$CONVERT" ]  && green "convert:  $CONVERT"  || red "convert:  NOT AVAILABLE"
echo "============================================"

# Write paths for other scripts to source:
cat > "$ROOT/toolpaths.sh" << EOF
ANSILOVE="${ANSILOVE:-}"
CONVERT="${CONVERT:-}"
EOF
