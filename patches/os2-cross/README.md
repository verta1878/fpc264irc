# OS/2 Cross-Compilation from Linux

## Problem

FPC's OS/2 (EMX) target uses a two-stage link:

1. `ld` links `.o` files (a.out format) → intermediate binary
2. `emxbind` converts a.out → OS/2 LX executable

Stock GNU binutils misclassifies EMX's `N_IMP1`/`N_IMP2` import
symbols as debug/stab, causing ~320 "undefined reference" errors.

## Solution

### 1. Patched binutils

Apply `binutils-2.30-emx-nimp.patch` to fix N_IMP symbol handling:

```bash
cd binutils-2.42
patch -p1 < binutils-2.30-emx-nimp.patch
./configure --target=i386-emx --prefix=/opt/cross-emx
make && make install
```

### 2. emxbind

Full source included in `emxbind/` (GPL v2, from EMX 0.9d).
See `emxbind/BUILD-LINUX.md` for Linux build instructions.

### 3. FPC compiler fix (already applied)

The import-by-name symbol generation fix is already in the
FPC 2.6.4irc compiler (`src/compiler/systems/t_os2.pas`).

### 4. Build and verify

```bash
export PATH=/opt/cross-emx/bin:$PATH

# Build OS/2 RTL
cd src/rtl/os2
make all CPU_TARGET=i386 OS_TARGET=emx FPC=../../bin/ppc386

# Test
../../bin/ppc386 -Temx -Fubin/units/i386-emx test/test_os2_sockets.pas
file test_os2_sockets.exe   # should show "OS/2 LX executable"
```

## Files

| File | Description |
|------|-------------|
| `binutils-2.30-emx-nimp.patch` | BFD patch (N_IMP1=0x68, N_IMP2=0x6a) |
| `emxbind/` | Full emxbind source (10 C files, GPL v2) |
| `emxbind/BUILD-LINUX.md` | Linux build instructions |
| `README.md` | This file |
