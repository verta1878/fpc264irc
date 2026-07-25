# OS/2 (EMX) Cross-Tools

Patched GNU Binutils 2.30 built with `--target=i386-aout --enable-obsolete`.
The BFD patch in `patches/os2-cross/binutils-2.30-emx-nimp.patch` fixes
N_IMP1/N_IMP2 import symbol handling for EMX a.out format.

These tools handle the a.out intermediate format that FPC's OS/2 linker
produces. After linking with `ld`, the output is passed to `emxbind`
(source in `patches/os2-cross/emxbind/`) to create the final OS/2 LX
executable.

## Rebuild from source

```bash
tar xf lib/build-tools/binutils-2.30.tar.xz
cd binutils-2.30
patch -p1 < patches/os2-cross/binutils-2.30-emx-nimp.patch
./configure --target=i386-aout --enable-obsolete --disable-nls --disable-werror
make
# as, ld, ar are in binutils-2.30/gas/as-new, ld/ld-new, binutils/ar
```
