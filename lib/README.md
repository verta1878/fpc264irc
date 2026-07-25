# FPC 2.6.4irc — External Libraries & Tools

## lib/watt32/

Watt-32 TCP/IP library source. Provides the BSD socket API for DOS.
FPC's `rtl/go32v2/sockets.pp` binds to this via `{$linklib watt}`.

Build: `cd src && ./configur.sh djgpp && make -f djgpp.mak`
Output: `libwatt.a`
Source: https://github.com/gvanem/Watt-32

## lib/cwsdpmi/

CWSDPMI r7 — DPMI host for DOS go32v2 binaries. Includes both
prebuilt binaries and full source.

- `CWSDPMI.EXE` — ship alongside DOS binaries for runtime DPMI
- `CWSDSTUB.EXE` — use with `-WS` flag for standalone executables
- Full C/ASM source included (GPL v2)

## lib/build-tools/

Source code for the four required build tools (`as`, `ld`, `ar`, `make`).
Prebuilt binaries are in `bin/tools/`. The build script uses system
tools if available, or falls back to the bundled ones automatically.

- `binutils-2.42.tar.xz` — GNU Binutils source (GPL v3+)
- `make-4.3.tar.gz` — GNU Make source (GPL v3+)
