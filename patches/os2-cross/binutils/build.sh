#!/bin/sh
# fpc264irc: rebuild the EMX (OS/2) a.out binutils (as, ld, ar, nm) from source, statically linked.  byte, 2026-10-02
# usage: patches/os2-cross/binutils/build.sh [work dir]      (needs gcc, make, xz)
# results: <work dir>/out/as ld ar nm
#   as -> bin/tools/i386-os2/as, i386-os2-as
#   ld -> bin/tools/i386-os2/ld, i386-os2-ld, bin/tools/i386-emx/emx-ld, i386-emx-ld
#   ar -> bin/tools/i386-emx/ar, emx-ar, i386-emx-ar
set -e
R=$(cd "$(dirname "$0")/../../.." && pwd)
W=${1:-/tmp/emx-binutils}
rm -rf "$W"; mkdir -p "$W/out"; cd "$W"
echo "sha256 of the tarball must be 6e46b8aeae2f727a36f0bd9505e405768a72218f1796f0d09757d45209871ae6:"
sha256sum "$R/lib/build-tools/binutils-2.30.tar.xz"
tar xf "$R/lib/build-tools/binutils-2.30.tar.xz"
(cd binutils-2.30 && patch -p1 < "$R/patches/os2-cross/binutils/binutils-2.30-emx.patch")
mkdir build; cd build
../binutils-2.30/configure --target=i386-aout --enable-obsolete --disable-nls --disable-werror \
  --disable-gdb --disable-sim --disable-gprof --disable-plugins >configure.log
make -j"$(nproc)" all-gas all-ld all-binutils >make.log 2>&1
# relink the four tools statically so they run on any x86_64 Linux
rm -f gas/as-new ld/ld-new binutils/ar binutils/nm-new
make -C gas as-new LDFLAGS=-all-static >>make.log 2>&1
make -C ld ld-new LDFLAGS=-all-static >>make.log 2>&1
make -C binutils ar nm-new LDFLAGS=-all-static >>make.log 2>&1
cp gas/as-new "$W/out/as"; cp ld/ld-new "$W/out/ld"; cp binutils/ar "$W/out/ar"; cp binutils/nm-new "$W/out/nm"
strip "$W/out/as" "$W/out/ld" "$W/out/ar" "$W/out/nm"
ls -l "$W/out"
