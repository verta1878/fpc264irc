# OS/2 Cross-Compilation Patches

These patches enable cross-compiling for OS/2 from a Linux host
using patched GNU binutils.

## What's Fixed

- N_IMP1/N_IMP2 values corrected in BFD for OS/2 a.out import records
- emxbind compatibility: OMAGIC → ZMAGIC (removed `-N` flag)

## Prerequisites

- binutils source (2.25+)
- emxbind from the OS/2 development toolkit

## Building

```
# Apply BFD patch:
cd binutils-2.25/bfd
patch -p1 < os2-import-fix.patch

# Rebuild:
../configure --target=i386-emx
make
```

See the main CHANGELOG-IRC.md for the compiler-side fix (BUG-040).
