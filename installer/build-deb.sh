#!/bin/bash
# Build .deb package for FPC 2.6.4irc r311
# Run from the fpc264irc root directory

set -e

VERSION="2.6.4irc-r311"
PKGNAME="fpc264irc"
ARCH="amd64"
DEBDIR="/tmp/${PKGNAME}_${VERSION}_${ARCH}"

echo "Building ${PKGNAME}_${VERSION}_${ARCH}.deb..."

# Create directory structure
rm -rf "$DEBDIR"
mkdir -p "$DEBDIR/DEBIAN"
mkdir -p "$DEBDIR/usr/lib/fpc264irc/bin"
mkdir -p "$DEBDIR/usr/lib/fpc264irc/units/x86_64-linux"
mkdir -p "$DEBDIR/usr/lib/fpc264irc/units/i386-linux"
mkdir -p "$DEBDIR/usr/lib/fpc264irc/src"
mkdir -p "$DEBDIR/usr/bin"
mkdir -p "$DEBDIR/usr/share/doc/fpc264irc"

# Compiler binaries
cp bin/ppcx64 "$DEBDIR/usr/lib/fpc264irc/bin/"
cp bin/ppc386 "$DEBDIR/usr/lib/fpc264irc/bin/"
chmod 755 "$DEBDIR/usr/lib/fpc264irc/bin/"*

# Symlinks in /usr/bin
ln -sf /usr/lib/fpc264irc/bin/ppcx64 "$DEBDIR/usr/bin/ppcx64-irc"
ln -sf /usr/lib/fpc264irc/bin/ppc386 "$DEBDIR/usr/bin/ppc386-irc"

# PPUs
cp -r bin/units/x86_64-linux/* "$DEBDIR/usr/lib/fpc264irc/units/x86_64-linux/"
cp -r bin/units/i386-linux/* "$DEBDIR/usr/lib/fpc264irc/units/i386-linux/"

# Docs
cp README.md "$DEBDIR/usr/share/doc/fpc264irc/"
cp docs/USB.md "$DEBDIR/usr/share/doc/fpc264irc/"
cp docs/X64-BOOTSTRAP.md "$DEBDIR/usr/share/doc/fpc264irc/"
cp docs/CHANGELOG.md "$DEBDIR/usr/share/doc/fpc264irc/"

# Calculate installed size
INSTALLED_SIZE=$(du -sk "$DEBDIR" | cut -f1)

# Control file
cat > "$DEBDIR/DEBIAN/control" << EOF
Package: fpc264irc
Version: ${VERSION}
Section: devel
Priority: optional
Architecture: ${ARCH}
Installed-Size: ${INSTALLED_SIZE}
Maintainer: verta1878
Description: Free Pascal 2.6.4irc r311 — x64 patched compiler + USB stack
 FPC 2.6.4 with 4 compiler patches fixing x86_64 codegen bugs.
 Includes 9-unit USB stack, 1029 Win64 PPUs, native x64 bootstrap.
 .
 Compilers: ppcx64-irc (x86_64), ppc386-irc (i386)
 Packages: RTL, FCL, USB, crypto, database, compression, Windows API
Homepage: https://github.com/verta1878/fpc264irc
EOF

# Build
dpkg-deb --build "$DEBDIR" "/tmp/${PKGNAME}_${VERSION}_${ARCH}.deb"
echo "Built: /tmp/${PKGNAME}_${VERSION}_${ARCH}.deb"
