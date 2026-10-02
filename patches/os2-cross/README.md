# OS/2 Cross-Compilation Patches

Everything needed to link native OS/2 (`-Tos2`) programs from a Linux host. The built tools are in
`bin/tools/i386-os2/` (see its README).

| Folder | What |
|---|---|
| `binutils/` | `binutils-2.30-emx.patch` + `build.sh`: GNU binutils 2.30 i386-aout with the EMX a.out layout and EMX import symbols/relocations, so `ld` output goes straight into emxbind. Tarball: `lib/build-tools/binutils-2.30.tar.xz`. |
| `emxbind/` | emxbind 0.9d (kLIBC source, GPL) + `fpc264irc-emxbind.patch` + `build.sh` (static 32-bit build). |

Compiler side: see `docs/CHANGELOG-IRC.md` (BUG-040, OS/2 linking without `-N`: emxbind needs ZMAGIC).
