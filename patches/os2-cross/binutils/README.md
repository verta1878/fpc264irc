# EMX (OS/2) binutils patch (byte, 2026-10-02)

`binutils-2.30-emx.patch` turns GNU binutils 2.30 `i386-aout` into an EMX a.out toolchain whose `ld` output emxbind
accepts and turns into OS/2 LX executables with working DLL imports. Files touched:

| File | Change |
|---|---|
| `bfd/i386aout.c` | EMX layout: ZMAGIC text at file offset 0x400 / address 0x10000, `SEGMENT_SIZE` 0x10000, header not part of text. Objects (OMAGIC) unchanged. |
| `ld/emulparams/i386aout.sh` | default script: `TEXT_START_ADDR=0x10000`, `SEGMENT_SIZE=0x10000` (data at the next 64K). |
| `bfd/libaout.h` | `emx_import` flag on the a.out link hash entry. |
| `bfd/aoutx.h` | `N_IMP1|N_EXT` defines a symbol (absolute 0) for the linker, the archive index and `nm`; archive members defining it are pulled in. Final link: relocations against such symbols are resolved as if at 0 and also written to the executable, against the `N_IMP1|N_EXT` output symbol (counted up front so the relocation tables are sized exactly). `-r`: they stay external. `N_IMP1`/`N_IMP2` symbols are never stripped or discarded. |

Build: `build.sh [work dir]` (needs gcc, make, xz) -> `<work dir>/out/as ld ar nm`, statically linked.
Source tarball: `lib/build-tools/binutils-2.30.tar.xz`, sha256 `6e46b8aeae2f727a36f0bd9505e405768a72218f1796f0d09757d45209871ae6`
(https://ftp.gnu.org/gnu/binutils/binutils-2.30.tar.xz). License: GPL v3+ (COPYING in the tarball).

Installed as `bin/tools/i386-os2/{as,i386-os2-as,ld,i386-os2-ld}` and `bin/tools/i386-emx/{emx-ld,i386-emx-ld,ar,emx-ar,i386-emx-ar}`.
