# Building FPC 2.6.4irc from Source

## Bootstrap Requirements

FPC requires a working FPC compiler to build itself ("bootstrapping"). You need
ONE of these as your bootstrap compiler:

| Bootstrap Compiler | Works? | Notes |
|-------------------|--------|-------|
| FPC 2.6.4 (stock) | ✅ | Ideal — same version, no compatibility issues |
| FPC 2.6.4irc | ✅ | Can bootstrap itself (same version) |
| FPC 2.6.2 | ✅ | Previous stable — FPC supports N-1 bootstrapping |
| FPC 3.0.x | ✅ | Newer compiler can build older source |
| FPC 3.2.x | ✅ | Works with minor warnings (range check in cgbase.pas) |
| FPC 2.4.x or older | ❌ | Too old — missing language features |

**Recommendation:** Use FPC 2.6.4 or our own fpc264irc `bin/ppcx64` as the
bootstrap compiler.

## Quick Build (Linux x86_64)

```bash
# Clone the repo:
git clone https://github.com/verta1878/fpc264irc.git
cd fpc264irc

# Option A: Use the bundled compiler to bootstrap itself:
export FPC=$(pwd)/bin/ppcx64

# Option B: Use system FPC:
export FPC=$(which fpc)

# Build the compiler:
cd src/compiler
make clean
make all FPC=$FPC BINUTILSPREFIX=
# Result: src/compiler/ppcx64 (native) or src/compiler/ppc386 (cross)

# Build the RTL:
cd ../rtl
make clean OS_TARGET=linux CPU_TARGET=x86_64 FPC=$FPC
make all   OS_TARGET=linux CPU_TARGET=x86_64 FPC=$FPC BINUTILSPREFIX=
# Units go to: src/rtl/units/x86_64-linux/
```

**Important:** `BINUTILSPREFIX=` (empty) is required for native builds.
Without it, the Makefile auto-detects a prefix and fails with Error 127.

## Self-Bootstrapping (fpc264irc builds fpc264irc)

```bash
# Use the repo's own compiler:
FPC=$(pwd)/bin/ppcx64

# Build new compiler from source:
cd src/compiler
make all FPC=$FPC BINUTILSPREFIX=

# The new compiler is at src/compiler/ppcx64
# Copy to bin/ to complete the bootstrap:
cp ppcx64 ../../bin/ppcx64
```

## Cross-Compilation Targets

### i386 targets (Linux, DOS, Windows, FreeBSD, OS/2)

```bash
cd src/compiler
make all CPU_TARGET=i386 FPC=$FPC BINUTILSPREFIX=
# Result: src/compiler/ppc386

cd ../rtl
make all OS_TARGET=go32v2 CPU_TARGET=i386 FPC=../compiler/ppc386
make all OS_TARGET=win32  CPU_TARGET=i386 FPC=../compiler/ppc386
make all OS_TARGET=freebsd CPU_TARGET=i386 FPC=../compiler/ppc386
make all OS_TARGET=emx    CPU_TARGET=i386 FPC=../compiler/ppc386
```

### i8086 target (16-bit DOS)

The i8086 cross-compiler is built from **FPC 3.0.4 source** (not from this
2.6.4 tree) because 2.6.4 doesn't include the i8086 backend. The build
process:

```bash
# 1. Download FPC 3.0.4 source:
wget https://downloads.sourceforge.net/project/freepascal/Source/3.0.4/fpc-3.0.4.source.tar.gz
tar xzf fpc-3.0.4.source.tar.gz

# 2. Apply the PPU reader fix (CRITICAL for cross-compilation):
#    In fpc-3.0.4/compiler/ppu.pas:
#    - Move CpuAluBitSize/CpuAddrBitSize arrays outside {$ifdef generic_cpu}
#    - Replace compile-time {$ifdef cpu64bitalu} dispatch in getaint/getasizeint/
#      getaword/putaint with runtime CpuAluBitSize[header.cpu] dispatch
#    See docs/i8086_ppu_fix.md for the exact patch.

# 3. Build the cross-compiler:
cd fpc-3.0.4/compiler
sed -i 's/override LOCALOPT+=-Sew/# override LOCALOPT+=-Sew/' Makefile
fpc -Fui8086 -Fusystems -Fu../rtl -Fii8086 -Fux86 \
    -di8086 -dGDB -dBROWSERLOG \
    -FUi8086/units/i8086-msdos -FE. \
    pp.pas -oppcross8086

# 4. Build the i8086 RTL:
cd ../rtl
CC=../compiler/ppcross8086
UNITS=/path/to/fpc264irc/bin/units/i8086-msdos

# system:
$CC -Tmsdos -Us -s -a -CX -Fi./inc -Fi./i8086 -Fi./x86 -Fi./msdos \
    -FU$UNITS msdos/system.pp

# strings:
$CC -Tmsdos -s -a -CX -Fi./inc -Fi./i8086 -Fi./x86 -Fi./msdos \
    -Fu$UNITS -FU$UNITS inc/strings.pp

# dos:
$CC -Tmsdos -s -a -CX -Fi./inc -Fi./i8086 -Fi./x86 -Fi./msdos \
    -Fu$UNITS -FU$UNITS msdos/dos.pp

# crt:
$CC -Tmsdos -s -a -CX -Fi./inc -Fi./i8086 -Fi./x86 -Fi./msdos \
    -Fi../packages/rtl-console/src/inc \
    -Fu$UNITS -FU$UNITS ../packages/rtl-console/src/msdos/crt.pp

# 5. Process smartlinks (fixasm + nasm + section fixes):
for unit in system dos strings crt; do
    cd $UNITS/${unit}.sl
    for sf in *.s; do
        python3 /path/to/fixasm.py "$sf"
        sed -i 's/^SECTION bss$/SECTION bss class=bss/' "$sf"
        sed -i 's/^SECTION data$/SECTION data class=data/' "$sf"
        sed -i 's/^SECTION rodata$/SECTION rodata class=data/' "$sf"
        nasm -f obj -o "${sf%.s}.o" "$sf"
    done
done

# 6. Assemble startup:
cd /path/to/fpc-3.0.4/rtl/msdos
nasm -f obj -o $UNITS/prt0s.o prt0s.asm
```

### Using the i8086 compiler (one-command):

```bash
bin/tools/i8086-msdos/build-dos.sh program.pas
# → program.exe (16-bit DOS MZ executable)
```

## Building Packages

```bash
# fcl-net (netdb):
cd src/packages/fcl-net
make all OS_TARGET=linux CPU_TARGET=x86_64 FPC=$FPC

# hash (md5, sha1, crc):
cd src/packages/hash
make all OS_TARGET=linux CPU_TARGET=x86_64 FPC=$FPC

# paszlib:
cd src/packages/paszlib
make all OS_TARGET=linux CPU_TARGET=x86_64 FPC=$FPC

# fcl-process (pipes, process):
cd src/packages/fcl-process
make all OS_TARGET=linux CPU_TARGET=x86_64 FPC=$FPC
```

## Build Tools

The repo bundles cross-platform binutils. To rebuild from source:

```bash
# binutils 2.42 (most targets):
cd lib/build-tools
tar xzf binutils-2.42.tar.gz
cd binutils-2.42
./configure --target=i386-pc-msdosdjgpp --prefix=/usr/local
make && make install

# binutils 2.30 (OS/2 emx — with N_IMP patch):
tar xzf binutils-2.30.tar.gz
cd binutils-2.30
patch -p1 < ../../patches/os2-cross/binutils-2.30-emx-nimp.patch
./configure --target=i386-pc-emx --prefix=/usr/local
make && make install
```

## Test Suite

```bash
test/test-all-platforms.sh     # Full verification (15 checks)
test/test-i8086.sh             # i8086 DOS tests (15 checks)
test/test-ripscript-tools.sh   # RIPscript tools (23 checks)
test/run-tests.sh              # String + socket tests (169 assertions)
test/test-tools.sh             # Bundled tools (31 checks)
```

## Version Compatibility Matrix

| Source Version | Bootstrap With | Result |
|---------------|---------------|--------|
| fpc264irc src | fpc264irc bin/ppcx64 | ✅ Self-bootstrap |
| fpc264irc src | Stock FPC 2.6.4 | ✅ Clean build |
| fpc264irc src | FPC 3.0.x | ✅ Works |
| fpc264irc src | FPC 3.2.x | ✅ Works (minor warnings) |
| FPC 3.0.4 src (i8086) | FPC 3.2.x | ✅ Builds ppcross8086 |
| FPC 3.0.4 src (i8086) | fpc264irc ppcx64 | ❌ Version mismatch |

**Note:** The i8086 cross-compiler (ppcross8086) is built from FPC 3.0.4
source, not from fpc264irc 2.6.4 source. The i8086 backend doesn't exist in
FPC 2.6.4. The PPU formats are different (version 135 vs 165), so i8086 RTL
PPUs must be compiled with ppcross8086 (3.0.4), not with ppcx64 (2.6.4).
