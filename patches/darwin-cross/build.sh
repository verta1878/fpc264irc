#!/bin/bash
# fpc264irc i386-darwin cross toolchain for a Linux x86_64 host - byte, 2026-10-07
# usage: patches/darwin-cross/build.sh [work dir]        (default $TMPDIR/fpc264irc-darwin-cross)
# Builds, from pinned open-source releases, everything ppc386 -Tdarwin needs to link on Linux:
#   1 libdispatch + BlocksRuntime (static)       apple/swift-corelibs-libdispatch  swift-6.0.3-RELEASE   Apache-2.0
#   2 cctools + ld64-956.6 (static)              tpoechtrager/cctools-port          1030.6.3-ld64-956.6   APSL-2.0
#        -> as ld ar ranlib nm otool strip lipo install_name_tool
#   3 crt1.o / crt1.10.5.o / crt1.10.6.o          apple-oss-distributions/Csu        Csu-88                APSL-2.0
#        (start.s + crt.c built with clang -target i386-apple-macosx, linked -r with the new ld; same recipe as Csu's Makefile)
#   4 stub system libraries (gen-stubs.sh)        our own: symbol names only, no Apple code
# Output: <work>/out/bin/*  and  <work>/out/MacOSX10.6.sdk/usr/lib/*  -> copy into bin/tools/i386-darwin/ (see README.md).
# Needs: git, clang, cmake, make, autoconf/libtool, static libstdc++ and libuuid (libuuid-dev).
set -e
K=$(cd "$(dirname "$0")" && pwd)
D=${1:-${TMPDIR:-/tmp}/fpc264irc-darwin-cross}; mkdir -p "$D"; W=$(cd "$D" && pwd)
DEP=$W/dep; OUT=$W/out; mkdir -p "$OUT/bin" "$OUT/MacOSX10.6.sdk/usr/lib"
J=$(nproc 2>/dev/null || echo 4)
export SOURCE_DATE_EPOCH=1775174400   # 2026-04-03, the cctools-port commit date: fixed __DATE__/__TIME__ in ld -v, so rebuilds are identical
fetch() { # $1=dir $2=url $3=commit
  [ -d "$W/$1/.git" ] || git clone -q "$2" "$W/$1"
  git -C "$W/$1" checkout -q "$3"
}

echo "[1/4] libdispatch"
fetch libdispatch https://github.com/apple/swift-corelibs-libdispatch.git 137b6cf3060eae87d9b367c263619c2eca5d3aac
mkdir -p "$W/libdispatch/b"
(cd "$W/libdispatch/b" && cmake .. -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_INSTALL_PREFIX="$DEP" \
   -DBUILD_SHARED_LIBS=OFF -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=OFF && make -j$J && make install) > "$W/libdispatch.log" 2>&1 \
   || { tail -20 "$W/libdispatch.log"; exit 1; }

echo "[2/4] cctools + ld64 (static)"
fetch cctools-port https://github.com/tpoechtrager/cctools-port.git 904de2a71d4da6a9b30d2efaf912a10ddc7d9ddb
C=$W/cctools-port/cctools
# static: libtool's -all-static at make time (configure tests must still link normally); ld64's ld.cpp defines its own
# __cxa_atexit (skips destructors at exit) - --allow-multiple-definition keeps that one ahead of glibc's
(cd "$C" && ./configure --target=i386-apple-darwin11 --prefix="$W/inst" CC=clang CXX=clang++ \
   CFLAGS="-I$DEP/include" CXXFLAGS="-I$DEP/include" LDFLAGS="-L$DEP/lib" LIBS="-lBlocksRuntime -lpthread" --disable-shared \
 && make -j$J LDFLAGS="-L$DEP/lib -all-static -Wl,--allow-multiple-definition" && make install) > "$W/cctools.log" 2>&1 \
   || { tail -20 "$W/cctools.log"; exit 1; }
for t in as ld ar ranlib nm otool strip lipo install_name_tool; do
  cp "$W/inst/bin/i386-apple-darwin11-$t" "$OUT/bin/$t"; strip "$OUT/bin/$t" 2>/dev/null || true
done
file "$OUT/bin/ld" | grep -q 'statically linked' || echo "WARNING: ld is not statically linked"

echo "[3/4] Csu startup objects"
fetch Csu https://github.com/apple-oss-distributions/Csu.git 95613f854c47f55b5447f64d8898572874e4a035
mkdir -p "$W/csuinc" "$W/csuobj"
echo '/* empty: the i386 parts of start.s need nothing from Availability.h */' > "$W/csuinc/Availability.h"
csu() { # $1=output $2=macosx min $3=defines, rest=sources
  # Csu Makefile: crt1.v1 = 10.4 -mdynamic-no-pic -DCRT -DOLD_LIBSYSTEM_SUPPORT (+dyld_glue.s), crt1.v2 = 10.5 -DCRT
  # (+dyld_glue.s), crt1.v3 = 10.6 -DADD_PROGRAM_VARS; installed as crt1.o, crt1.10.5.o, crt1.10.6.o
  local o=$1 m=$2 d=$3 objs=""; shift 3
  for s in "$@"; do
    clang -target i386-apple-macosx$m -Os -I"$W/csuinc" $d -c "$W/Csu/$s" -o "$W/csuobj/$s.$o.o"; objs="$objs $W/csuobj/$s.$o.o"
  done
  "$OUT/bin/ld" -arch i386 -r -keep_private_externs -macosx_version_min $m $objs -o "$OUT/MacOSX10.6.sdk/usr/lib/$o" 2>/dev/null
}
csu crt1.10.6.o 10.6 -DADD_PROGRAM_VARS start.s crt.c
csu crt1.10.5.o 10.5 -DCRT start.s crt.c dyld_glue.s
csu crt1.o 10.4 "-DCRT -DOLD_LIBSYSTEM_SUPPORT -mdynamic-no-pic" start.s crt.c dyld_glue.s   # FPC's i386 default is 10.4

echo "[4/4] stub libraries"
bash "$K/gen-stubs.sh" "$OUT/bin" "$OUT/MacOSX10.6.sdk/usr/lib"

echo "done: $OUT"
