# dl.o glibc Compatibility Fix

## Quick Fix
Run once on your build machine (needs root):
```bash
sudo scripts/setup-linux-i386.sh
```

This installs libc6-dev:i386, creates the libdl.so linker script,
and verifies that dl links and runs.

## Problem
FPC's `dl.pp` links against `dlopen`/`dlsym`/`dlclose`/`dladdr`.
On glibc 2.34+ (Ubuntu 22.04+, Debian 12+), these symbols moved
from `libdl.so` into `libc.so`. The linker can't find `-ldl`.

## Three-Layer Fix

### 1. Install 32-bit glibc dev headers
```bash
dpkg --add-architecture i386
apt-get install libc6-dev:i386
```

### 2. Create libdl.so linker script
glibc 2.34+ has no `libdl.so` symlink. Create one that points to libc:
```bash
cat > /usr/lib/i386-linux-gnu/libdl.so << 'LDEOF'
/* GNU ld script — glibc 2.34+ absorbed libdl into libc */
GROUP ( /usr/lib/i386-linux-gnu/libc.so.6 )
LDEOF
```

### 3. Add library search path
Pass `-Fl/usr/lib/i386-linux-gnu` to ppc386:
```bash
bin/ppc386 -Tlinux -Fubin/units/i386-linux -Fl/usr/lib/i386-linux-gnu myapp.pas
```

Or use the included config file:
```bash
bin/ppc386 @bin/fpc-linux.cfg myapp.pas
```

## dl_glibc_compat.c (optional)
`src/rtl/unix/dl_glibc_compat.c` contains `.symver` directives to
force `GLIBC_2.0` symbol versions for maximum backwards compatibility.
Not needed for modern Linux distributions (Ubuntu 22.04+).

## Runtime Requirement
Compiled binaries require glibc 2.34+ unless built with dl_glibc_compat.o.
