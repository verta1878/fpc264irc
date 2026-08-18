# dl.o glibc Compatibility Fix

## Status: FIXED

The `dl.pp` unit now uses `LibDL = 'c'` on Linux instead of `LibDL = 'dl'`.
This links against libc directly, where `dlopen`/`dlsym`/`dlclose` live
on glibc 2.34+ (Ubuntu 22.04+, Debian 12+).

No `-ldl` flag needed. No linker script needed. Just works.

## What Changed

**Before (broken on glibc 2.34+):**
```pascal
LibDL = 'dl';   // links with -ldl — fails, libdl.so doesn't exist
```

**After (works everywhere):**
```pascal
LibDL = 'c';    // links with -lc — dlopen is in libc on all glibc versions
```

This matches the BSD behavior where dlopen was always in libc.

## Backup: setup-linux-i386.sh

If other code (not ours) needs `-ldl`, run the setup script:
```bash
sudo attic/setup-linux-i386.sh
```

This creates a `libdl.so` linker script pointing to `libc.so.6`.
Not needed for fpc264irc itself — only for third-party code.

## Build Prerequisites

Still need 32-bit glibc headers for cross-compiling i386 on x86_64:
```bash
sudo apt install libc6-dev:i386
```

The setup script handles this too.

## dl_glibc_compat.c (optional)

`src/rtl/unix/dl_glibc_compat.c` contains `.symver` directives to
force `GLIBC_2.0` symbol versions for maximum backwards compatibility.
Use this if your binaries must run on glibc < 2.34:
```bash
gcc -m32 -c src/rtl/unix/dl_glibc_compat.c -o dl_glibc_compat.o
# Link dl_glibc_compat.o with your final executable
```
