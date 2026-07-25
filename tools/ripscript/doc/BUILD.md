# RIPscript Testing Tools — Build Instructions

Tools needed for RIPscript (Remote Imaging Protocol) rendering and testing
with Mystic BBS and netmodemirc2.

## Quick Start (Tier 1 — System Packages)

```bash
# Debian/Ubuntu:
apt-get install ansilove imagemagick

# Verify:
ansilove -v
convert -version
```

## Bundled Binaries (Tier 2)

Pre-built Linux x86_64 binaries are in `bin/`:

```bash
./bin/ansilove input.ans -o output.png
./bin/convert input.png -resize 800x600 output.jpg
```

## Build from Source (Tier 3)

### Ansilove

Dependencies: `cmake`, `gcc`, `libgd-dev`

```bash
# Install build deps:
apt-get install cmake gcc libgd-dev

# Build libansilove first:
tar xzf src/libansilove-src.tar.gz
cd libansilove-src
mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr/local
make -j$(nproc) && sudo make install
cd ../..

# Build ansilove:
tar xzf src/ansilove-src.tar.gz
cd ansilove-src
mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr/local
make -j$(nproc) && sudo make install
```

Or use the automated script:
```bash
./provision.sh --build-from-source
```

### ImageMagick

Source bundled (stripped to 4MB, no tests/docs). Or clone full from GitHub:

```bash
git clone --depth=1 https://github.com/ImageMagick/ImageMagick.git src/ImageMagick

# Minimal build (no X11, no extra codecs):
cd src/ImageMagick
./configure --prefix=/usr/local --disable-shared \
    --without-perl --without-magick-plus-plus \
    --without-x --without-djvu --without-fftw \
    --without-fontconfig --without-freetype \
    --without-heic --without-jxl --without-raw
make -j$(nproc) && sudo make install
```

Or via the provisioning script:
```bash
cd src && git clone --depth=1 https://github.com/ImageMagick/ImageMagick
cd .. && ./provision.sh --build-from-source
```

## RIPscript Usage

### Convert ANSI art to PNG:
```bash
ansilove input.ans -o output.png
ansilove input.rip -o output.png    # RIPscript files
```

### Convert/resize with ImageMagick:
```bash
convert input.png -resize 640x350 output.png   # RIP standard resolution
convert input.png -colors 16 output.png          # EGA 16-color palette
```

### Supported formats:
- **Ansilove**: ANS, RIP, PCB, BIN, ADF, IDF, TND, XB, ASC
- **ImageMagick**: PNG, BMP, GIF, JPEG, TIFF, PCX, and 200+ formats

## Source Repositories

- Ansilove: https://github.com/ansilove/ansilove (MIT License)
- libansilove: https://github.com/ansilove/libansilove (BSD 2-Clause)
- ImageMagick: https://github.com/ImageMagick/ImageMagick (Apache 2.0)
