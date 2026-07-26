# FPC 2.6.4irc — r3.1

Custom Free Pascal Compiler 2.6.4 fork for BBS and retro computing.
7-target cross-compiler with 65 multimedia codecs, RIPscrip viewer,
pure Pascal DOS networking, and full Unicode support.

3,021 PPUs across 7 targets. Zero C dependencies on DOS. Pascal strings
throughout — length-prefixed ShortString/AnsiString, no libc, no null
terminators except at OS API boundaries.

## Platforms

| Target | PPUs | Free Vision | Sockets |
|--------|------|-------------|---------|
| i386-linux | 237 | 24/24 | BSD (system) |
| i386-win32 | 619 | 24/24 | Winsock |
| i386-go32v2 | 299 | 24/24 | Pure Pascal (go32 DPMI) |
| i386-os2 | 207 | 24/24 | EMX sockets |
| i386-darwin | 788 | 24/24 (Mach-O .o via llvm-mc-18) | BSD (system) |
| i8086-msdos | 113 | 24/24 (huge model) | Pure Pascal (Dos.Intr) |
| x86_64-linux | — | — | Host compiler |

## Compilers

- `bin/ppcx64` — x86_64-linux native (rebuilt, BUG-036 fixed)
- `bin/ppc386` — i386 cross-compiler (5 targets, BUG-029 fixed)
- `bin/ppcross8086` — i8086-msdos cross-compiler (FPC 3.2.2, `-Wmhuge`)

## Architecture Decisions

**Pure Pascal DOS Networking.** go32v2 `sockets.pp` (960 lines) rewritten
from C (Watt-32 `{$linklib watt}`, 27 externals) to pure Pascal using the
`go32` unit by Florian Klämpfl. `realintr()` for packet driver INT calls,
`seg_move()` for DMA buffers. i8086 version uses `Dos.Intr()` directly
(already in real mode). Includes ARP resolution, IP/TCP header building,
RFC 793 checksums. Same codebase, two targets, zero C.

```
go32v2:  sockets.pp → go32.realintr() → DPMI → packet driver
i8086:   sockets.pp → Dos.Intr()      →         packet driver
```

**i8086 Huge Memory Model.** RTL rebuilt with `-Wmhuge`. Unlocked classes,
variants, FCL-Base, FCL-JSON, FCL-XML, FCL-Image, paszlib, fpwidestring,
regexpr, sockets — 113 PPUs on a 16-bit CPU.

**Smart Linking.** go32v2 RTL rebuilt with `-CX`. 151/151 units
produce `.a` archives (one `.o` per procedure). Programs compiled with
`-XX` strip unused code. fpu.o eliminated (inlined into emu387.pp).
prt0 and exceptn assembled from source into `.a` archives.
100% smart-linked. Zero pre-compiled binary blobs.

**DUCET Disk + EMS Overlay.** Unicode collation table (424KB) stored as
`DUCET.DAT` on disk. `emsovl.pas` (225 lines) implements LIM EMS 4.0:
loads file into expanded memory pages at startup for zero-copy access
via INT 67h page frame mapping. Falls back to file I/O with 4KB cache
when EMS is unavailable. 32-bit platforms use const arrays in memory.

## i8086 MS-DOS — 113 PPUs

| Category | Count | Units |
|----------|-------|-------|
| **RTL** | 26 | system, dos, crt, strings, objpas, keyboard, mouse, video, ports, objects, getopts, math, strutils, types, sysutils, printer, md5, sha1, crc, dateutils, fgl, typinfo, charset, ctypes, rtlconsts, sysconst |
| **Free Vision** | 24 | All 24/24 — views, menus, dialogs, editors, app, etc. |
| **FCL** | 29 | classes, contnrs, base64, uriparser, eventlog, regexpr, paszlib, zstream, variants, varutils, fpjson, jsonparser, jsonscanner, xmlutils, sax, dom, dtdmodel, xmlread, xmlwrite, fpimage, fpcanvas, fpreadbmp, fpwritebmp, fpreadpng, fpwritepng, pngcomn, bmpcomn, fpimgcmn, clipping |
| **Unicode** | 9 | unicodenumtable, unicodedata, unicodeducet, character, charconsts, charsetcompat, fpwidestring, unixcp, emsovl |
| **Network** | 12 | sockets, pktdrv, tcpip, ipx, netbios, mslan, resolve, ssockets, fphttpclient, httpdefs, openssl, dynlibs |
| **I/O** | 2 | m_door (FOSSIL serial), crt (BIOS INT 10h/16h) |

## Cross-Compilation Matrix — All Green

| Unit Group | Linux | Win32 | go32v2 | OS/2 | Darwin | i8086 |
|------------|-------|-------|--------|------|--------|-------|
| FCL-Base (base64, contnrs, uriparser, eventlog) | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| FCL-JSON (fpjson, jsonparser, jsonscanner) | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| FCL-XML (dom, xmlread, xmlwrite, sax) | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| FCL-Image (fpimage, fpcanvas, bmp, png) | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| paszlib + classes + variants | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| sockets + resolve + ssockets | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| fphttpclient | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| openssl + dynlibs | ✅ | ✅ | ✅ stub | ✅ real | ✅ | ✅ stub |
| fpwidestring + unicodeducet | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ EMS/disk |
| Free Vision 24/24 | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |

## 65 Codec Units

Pure Pascal, zero C dependencies, all 8.3 filenames.

**Image (20):** BMP, GIF, ICO, JPEG, PCX, PNG, PNM, TGA, TIFF, XBM,
XPM, SVG, QOI, DDS, TIM, ILBM, CUT, FLI/FLC, Dr. Halo, WebP

**Audio (22):** WAV, VOC, AU/SND, AIFF, ADPCM, MOD, S3M, XM, IT,
FLAC, MP3, OGG, MIDI, SPC, NSF, SID, RAW/PCM

**Archive (17):** ZIP, TAR, GZ, BZ2, LZH, ARJ, RAR, CAB, CPIO, RPM,
ARC, ZOO, SQZ, PAK, HA, ACE, UHARC

**Print (6):** RAW, BMP, ESC/P, PCL5, PostScript, API+dithering

## RIPView v1.0.0

RIPscrip v1.54 viewer. 42/42 commands. Font rendering. FV TUI mode.
6 binaries: CLI + FV TUI × Linux/Win32/DOS.
Source: `examples/mystic_ripapi/ripviewer/` (14 files, 3,604 lines)

## THD ScanPro v1.0.0

GPLv3 clean-room rebuild. 5 programs × 3 platforms = 15 binaries.
Source: `examples/thdpro/` + `m_door.pas`

## SDK

| SDK | For |
|-----|-----|
| MacOSX10.6.sdk | Minimal crt1.o + libSystem stub for Darwin |
| os2tk45 | IBM OS/2 Toolkit 4.5.2 (16MB) |
| emx | EMX 0.9d runtime + tools (5.7MB) |
| prt | Print API drivers |

## Phases — 28 Complete, 3 Deferred

| Phase | Status |
|-------|--------|
| 1-3: Compilers (host + 5 i386 + i8086) | ✅ |
| 4-8: RTL × 6 platforms | ✅ |
| 9: Mystic BBS 15/15 | ✅ |
| 10: 65 multimedia codecs | ✅ |
| 11: Free Vision 24/24 × 6 | ✅ |
| 12-13: i8086 113 PPUs (huge model) | ✅ |
| 14: Repo cleanup | ✅ |
| 15: FPC 2.x audit + backports | ✅ |
| 16: i8086 FV + network + FCL | ✅ |
| 17: THD ScanPro v1.0.0 | ✅ |
| 18: RIPView v1.0.0 (42/42, 6 binaries) | ✅ |
| 19: DOS RIP Browser (= RIPView FV TUI) | ✅ |
| 20: Documentation | ✅ |
| 26: RIPView FV TUI mode | ✅ |
| 27: OS/2 DynLibs (DosLoadModule) | ✅ |
| 28: Darwin FV Mach-O .o refresh | ✅ |
| 29: TCP/IP (ARP + IP + TCP + DNS + state machine) | ✅ |
| 30: Smart Linking (151/151 = 100% on go32v2) | ✅ |
| PD: PabloDraw Pascal (20 files, 4,460 lines) | ✅ |
| 21-24: VM Testing | Deferred — no VMs |
| 25-L: THD ScanPro live test | Deferred — needs BBS |
| 26-B/C: PabloDraw / SDL preview | Deferred — needs Lazarus/SDL |

## Bug Status

40 tracked, 40 closed (38 fixed, 2 not-a-bug)

## Build

See `docs/INSTALL.md` for per-platform build instructions.

## License

GPLv3 — see LICENSE
