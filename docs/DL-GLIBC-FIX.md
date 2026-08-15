# dl.o glibc Compatibility Fix

## Problem
FPC's `dl.pp` links against `dlopen`/`dlsym`/`dlclose`/`dladdr`.
On glibc 2.34+ (Ubuntu 22.04+), these symbols moved from `libdl.so`
into `libc.so`. The linker resolves to `@@GLIBC_2.34` versions.

## Three-Layer Fix Applied

1. **Include path** — `-Fisrc/rtl/linux/i386` for `stat.inc`
2. **32-bit dev libs** — `apt install libc6-dev:i386`
3. **libdl.so linker script** — points `-ldl` to `libc.so.6`:
   ```
   /* GNU ld script */
   GROUP ( /usr/lib/i386-linux-gnu/libc.so.6 )
   ```

## Runtime Requirement
Compiled binaries require glibc 2.34+ (Ubuntu 22.04+, Debian 12+).

## For Older Linux
Rebuild from source on the target system:
```bash
./build.sh            # uses host glibc
./fix-permissions.sh  # restore +x bits
```

## dl_glibc_compat.c (optional)
`src/rtl/unix/dl_glibc_compat.c` contains `.symver` directives
to force `GLIBC_2.0` symbol versions. Link this object BEFORE
libc for maximum backwards compatibility. Not needed for
modern Linux distributions.
