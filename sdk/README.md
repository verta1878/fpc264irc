# SDK — Cross-Compilation Support Libraries

## sdk/emx/ — EMX 0.9d Development System

Eberhard Mattes' EMX programming environment for OS/2 and DOS.
Provides POSIX API layer, GNU toolchain, and runtime libraries.

- **Version:** 0.9d fix04 (March 2001)
- **Author:** Eberhard Mattes
- **License:** GNU General Public License v2 (see sdk/emx/doc/COPYING)
- **Source:** https://sourceforge.net/projects/emx/files/emx/0.9d-fix04/
- **Wikipedia:** https://en.wikipedia.org/wiki/EMX_(programming_environment)
- **Used by:** FPC `-Temx` target (OS/2 via EMX extender)

Contents:
- `bin/` — GNU tools (as, ld, ar, nm, strip, emxbind)
- `include/` — C/C++ headers (POSIX + OS/2)
- `lib/` — Libraries (crt0.o, os2.a, socket.a, gcc.a)
- `doc/` — Documentation + license

## sdk/os2tk45/ — IBM OS/2 Developer's Toolkit 4.5.2

IBM's official OS/2 development toolkit, redistributed by
bitwiseworks (ArcaOS/eComStation team).

- **Version:** 4.5.2
- **Author:** IBM Corporation, modified by Serenity Systems / bitwiseworks
- **License:** IBM proprietary (publicly redistributed)
- **Source:** https://github.com/bitwiseworks/os2tk45
- **Used by:** FPC `-Tos2` target (native OS/2), PM widgetset

Contents (trimmed for size):
- `h/` — C headers (os2.h, pmwin.h, bsedos.h, etc.)
- `lib/` — Import libraries (.lib)
- `inc/` — ASM includes
- `bin/` — Tools (RC resource compiler)
- `icon/` — OS/2 system icons
- `bitmap/` — OS/2 system bitmaps

## sdk/prt/ — Print API Drivers

Pure Pascal print drivers for RIPscript engines.

- **License:** GNU General Public License v3
- **Units:** prnapi, prnraw, prnbmp, prnescp, prnpcl, prnps
- **Targets:** All FPC platforms

## Usage with fpc264irc

```bash
# EMX cross-compile (Mystic BBS):
ppc386 -Temx -FDbin/tools/i386-emx -Fusdk/emx/lib program.pas

# Native OS/2 (PM applications):
ppc386 -Tos2 -FDbin/tools/i386-os2 -Fusdk/os2tk45/lib program.pas

# Print drivers:
ppc386 -Fusdk/prt program.pas
```

## License Compatibility

| Component | License | Compatible with GPLv3? |
|-----------|---------|----------------------|
| fpc264irc | GPLv3 | — |
| EMX 0.9d | GPLv2 | Yes (GPLv2 → GPLv3 upgrade allowed) |
| OS/2 Toolkit 4.5 | IBM proprietary | Yes (headers/libs for linking, not compiled into output) |
| Print drivers | GPLv3 | Yes (same license) |
