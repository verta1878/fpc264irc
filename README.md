# FPC 2.6.4irc — r3.1

Custom Free Pascal Compiler 2.6.4 fork for BBS and retro computing.
7-target cross-compiler with 65 multimedia codecs, RIPscrip viewer,
and DOS network stacks.

## Platforms — 2,843 PPUs

| Target | PPUs | Free Vision | Mystic 15/15 |
|--------|------|-------------|--------------|
| i386-linux | 198 | 24/24 | ✅ |
| i386-win32 | 611 | 24/24 | ✅ |
| i386-go32v2 (DOS) | 273 | 24/24 | ✅ |
| i386-os2 (EMX) | 170 | 24/24 | ✅ |
| i386-darwin | 783 | 24/24 (.o Mach-O via llvm-mc) | ✅ |
| i8086-msdos | 55 | 24/24 | — |
| x86_64-linux | — | — | Host compiler |

## Compilers

- `bin/ppcx64` — x86_64-linux native (rebuilt, BUG-036 fixed)
- `bin/ppc386` — i386 cross-compiler (5 targets, BUG-029 fixed)
- `bin/ppcross8086` — i8086-msdos cross-compiler (FPC 3.2.2, 4.2MB)

## i8086 MS-DOS — 55 PPUs

26 RTL + 24 Free Vision + 5 network units.

**RTL:** system, dos, crt (backported BIOS INT 10h/16h), strings,
objpas, keyboard, mouse, video, ports, objects, getopts, math,
strutils, types, sysutils, printer, md5, sha1, crc, dateutils,
fgl, typinfo, charset, ctypes, rtlconsts, sysconst

**Free Vision:** 24/24 — fvconsts, fvcommon, memory, drivers, views,
menus, dialogs, editors, histlist, stddlg, msgbox, app, gadgets,
validate, tabs, resource, statuses, asciitab, inplong, timeddlg,
outline, sysmsg, time, colortxt

**Network:**

| Unit | Protocol | INT | For |
|------|----------|-----|-----|
| pktdrv | Packet Driver (Crynwr) | 60h-7Fh | Raw Ethernet |
| tcpip | TCP/IP stack | via pktdrv | Telnet, FTP, HTTP |
| ipx | IPX/SPX (Novell) | 7Ah | NetWare LANs |
| netbios | NetBIOS | 5Ch | LAN Manager, WfW 3.11 |
| mslan | MS Network Redirector | 21h | NET USE drive mapping |

**I/O:** m_door (FOSSIL serial for BBS doors), crt (BIOS console)

## 65 Codec Units

Pure Pascal, zero C dependencies, all 8.3 filenames.

**Image (20):** BMP, GIF (LZW), ICO, JPEG (DCT), PCX, PNG (deflate),
PNM, TGA, TIFF, XBM, XPM, SVG (parser), QOI, DDS, TIM, ILBM, CUT,
FLI/FLC, Dr. Halo, WebP (lossy)

**Audio (22):** WAV, VOC, AU/SND, AIFF, ADPCM (IMA/MS), MOD, S3M, XM,
IT, FLAC, MP3 (Huffman+IMDCT), OGG (Vorbis stub), MIDI (FM synth),
SPC, NSF, SID, RAW/PCM

**Archive (17):** ZIP, TAR, GZ, BZ2, LZH, ARJ, RAR (v2), CAB, CPIO,
RPM, ARC, ZOO, SQZ, PAK, HA, ACE, UHARC

**Print (6):** RAW, BMP, ESC/P, PCL5, PostScript, API+dithering

## RIPView v1.0.0 — RIPscrip v1.54 Viewer

42/42 commands implemented. Font rendering (8x8, 8x14, 8x16).
Free Vision TUI mode.

| Platform | CLI | FV TUI |
|----------|-----|--------|
| Linux | 719KB | 1.1MB |
| Win32 | 167KB | 323KB |
| DOS go32v2 | 597KB | 864KB |

Source: `examples/mystic_ripapi/ripviewer/` (14 .pas files, 3,604 lines)

## THD ScanPro v1.0.0

GPLv3 clean-room rebuild from THDDOC.TXT specification.
5 programs × 3 platforms = 15 binaries.

THDPRO (scanner), THDINSTL (config), THDPLUS (DB updater),
THDTERM (terminal wrapper), THDSELCT (file selector)

Source: `examples/thdpro/` + `m_door.pas` (FOSSIL door library)

## fpGUI Toolkit (Archived Reference)

`libs/fpgui/` — 296 .pas files, 6.8MB. Modified LGPL + GPLv2.
Cross-platform GUI: X11, GDI, Cocoa, OS/2 PM backends.
Not compiled — archived for future PabloDraw/SDL work.

## SDK

| SDK | Size | For |
|-----|------|-----|
| MacOSX10.6.sdk | 2KB | Minimal crt1.o + libSystem stub |
| os2tk45 | 16MB | IBM OS/2 Toolkit 4.5.2 |
| emx | 5.7MB | EMX 0.9d runtime + tools |
| desqview | — | DESQview/X, WatTCP, Novell, TCP4DOS |
| prt | — | Print API drivers |

## Bug Status

42 tracked, 42 closed (39 fixed, 2 not-a-bug, 1 Wine-only)

## Build

See `docs/INSTALL.md` for per-platform build instructions.

## License

GPLv3 — see LICENSE
