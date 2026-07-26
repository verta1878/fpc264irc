# CHANGELOG — fpc264irc r3.1

## Changes from upstream FPC 2.6.4

### Compiler Fixes
- **BUG-029:** i386 ASM AnsiString Decr_Ref: `sub $12,%eax` (was `sub $8`)
  Fixed header size calculation for TAnsiRec (CodePage+ElementSize+Ref+Length)
- **BUG-040:** t_emx.pas: Removed `-N` flag from OS/2 EMX linker command
  (OMAGIC → ZMAGIC for emxbind compatibility)

### RTL Codepage Backport
Added `DefaultSystemCodePage` parameter to all widestringmanager MoveProc
functions across 6 source files:
- `ustringh.inc` — MoveProc type declarations
- `ustrings.inc` — UnicodeString conversion implementations
- `wstringh.inc` — WideString forward declarations
- `wstrings.inc` — WideString implementations (lines 552, 654 fixed)
- `text.inc` — Text file codepage handling
- `compproc.inc` — Compiler procedure declarations
- `win/sysutils.pp` — Win32 Wide2AnsiMoveProc (lines 1135, 1137)

### New Tools
- `src/tools/emxbind.pas` — Pascal emxbind replacement (MZ stub + a.out)
- `src/tools/emxbind.c` — C version (removed, Pascal is authoritative)
- `bin/tools/i386-emx/emxbind.py` — Python version (removed)
  All three produce identical output: SHA256 `1c47d0bf...`

### New Units
- `mdl/m_mouse.pas` — Cross-platform text-mode mouse (303 lines)
  Linux: xterm ESC[M + SGR 1006
  Win32: Console API (ReadConsoleInput)
  DOS: INT 33h
  OS/2: MOU subsystem via EMXWRAP

### SDK Integration
- `sdk/emx/` — Full EMX 0.9d (5.7MB, GPLv2)
- `sdk/os2tk45/` — IBM OS/2 Toolkit 4.5.2 (16MB trimmed)
- `sdk/prt/` — Print API drivers (6 units)
- `sdk/MacOSX10.6.sdk/` — Minimal Darwin SDK (crt1.o + libSystem stub)

### Import Stub Generation
- 318 OS/2 EMX import stubs reverse-engineered from emx2.a format
  (DOSCALLS 165, EMXWRAP 102, SO32DLL 31, QUECALLS 8, MSG 4, NLS 4, SESMGR 4)
- Format: 32-byte a.out header + 2×12-byte nlist + string table
- Symbol prefix: underscore (`_$dll$doscalls$_index_273`)

### Darwin Cross-Compilation
- `-dFPC_USE_LIBC` flag required (libc path, not direct syscalls)
- `crt1.o` (584 bytes) with dyld_stub_binding_helper
- `libSystem.B.dylib` (1,820 bytes) Mach-O stub with 73 exported symbols
- cctools/ld64 built from source (Apple open-source, APSL)

### Codec Package
71 units (65 codecs + 6 print drivers) in 8.3 filename format:
- Image: BMP, GIF, ICO, JPEG, PCX, PNG, PNM, TGA, TIFF, XBM, XPM, SVG
- Audio: WAV, AIFF, AU, FLAC, MP3, OGG, MIDI, MOD, S3M, XM, IT
- Archive: ZIP, TAR, GZ, BZ2, LZH, ARJ, RAR, CAB, CPIO, RPM
- Print: RAW, BMP, ESC/P, PCL5, PostScript, API+dithering
- All compile on x86_64-linux + i386-linux + i386-win32 + i386-go32v2

### PPU Chain
- system.ppu rebuilt from source for 5 i386 targets + restored for x86_64
- Source timestamps set to Jan 2025 for checksum consistency
- All 6 targets: zero "checksum changed" warnings

### License
- Upgraded from GPLv2 to GPLv3 (exercising "or any later version" clause)
- EMX SDK: GPLv2 (compatible)
- OS/2 Toolkit: IBM proprietary (headers/libs for linking)

## Build Results

| Platform | Programs | Format |
|----------|----------|--------|
| Linux i386 | 15/15 | ELF32, statically linked |
| Win32 i386 | 15/15 | PE32, dynamically linked |
| OS/2 EMX i386 | 15/15 | MZ + ZMAGIC a.out |
| Darwin i386 | 15/15 | Mach-O, dynamically linked |

60 total executables from one cross-compiler on Linux.

### THD ScanPro Suite (Phase 25)
GPLv3 clean-room rebuild of THD ProScan from THDDOC.TXT specification.
5 programs × 3 platforms = 15 binaries. Standalone package: `thdpro-v100-gplv3.zip`

- `THDPRO` — Main scanner (archive test, virus scan, description import)
- `THDINSTL` — Configuration wizard (ClamAV, McAfee, F-PROT, TBSCAN paths)
- `THDPLUS` — BBS database updater (reads TESTINFO.DAT)
- `THDTERM` — Terminal wrapper (directory watch, auto-test, PASS/FAIL sort)
- `THDSELCT` — Interactive file selector (TUI with toggle/batch test)

### OS/2 EMX Link Pipeline (Phase 12 fixes)
- `prt0.o` reassembled with `emx-as` (773 bytes) — fixes `_dos_init`/`_dos_syscall`
- Import stub archives (`.dll.a`) required for cross-compilation — FPC generates
  `call _$dll$doscalls$_index_NNN` without `.stabs` import directives
- 303 import stubs: DOSCALLS (165) + EMXWRAP (107) + SO32DLL (31)
- Link flag: `--allow-multiple-definition` for 6 embedded imports overlapping `.dll.a`
- `emx2.a` no longer needed (prt0.o has its own startup code)

### Bug Status
- 42 bugs tracked, 42 closed (39 fixed, 2 not-a-bug, 1 Wine-only)
- BUG-038: SysTryResizeMem leak — CLOSED (not a bug, audit proved stats balance)
- BUG-039: Heap lock ordering — CLOSED (not a bug, single-threaded safe)

### i8086 MS-DOS Target (Phase 16)
- Built FPC 3.2.2 `ppcross8086` from source (4.2MB ELF64)
- Compiled i8086-msdos RTL: system, objpas, strings, dos, charset, ctypes, ports
- 6 prt0 startup objects (tiny/small/medium/compact/large/huge memory models)
- Hello world: 15KB MZ executable, runs on 8086+ real-mode DOS
- Old 2.6.4irc ppcross8086 had broken register allocator (access violation) — replaced

### Repo Cleanup
- `libs/` merged into `examples/`
- `src/thdpro/` moved to `examples/thdpro/`
- `sdk/thdpro/` → `examples/thdpro/reference/` (zipped)
- `src/chg2rip/` removed (doesn't work)
- `docs/` → 5 essentials + `att/` archive (55 old files)
- `examples/mpl-tests/` removed
- `out/` removed
- Stray `.o`, `.ppu`, `.s`, compiled binaries cleaned
- THD ScanPro scanners moved from reference to `examples/thdpro/scanners/`
- marc-lib moved from `sdk/` to `examples/thdpro/marc-lib/`

### THD ScanPro Phase 25-J — Companion Tools
- THDPLUS: BBS database updater (reads TESTINFO.DAT)
- THDTERM: Terminal wrapper (forces local mode `0 /RO`)
- THDSELCT: Interactive file selector (forces local mode `0 /RO`)
- All 3 are local-only — no COM port access
- CWSDPMI embedded in DOS stubs (no external DPMI host needed)
- Standalone package: `thdpro-v100-gplv3.zip` (15 binaries, 3 platforms)

### RIPView v1.0.0 (evga)
- RIPscrip v1.54 parser, 640×350 EGA canvas, BMP output
- Linux 581KB, Win32 139KB, DOS 480KB
- Standalone package: `ripview-v100-gplv3.zip`

### Session 12 Updates

#### i8086 Free Vision — 24/24
- Fixed `platform.inc`: added `{$IFDEF CPUI8086}` block with BIT_16,
  OS_DOS, OS_GO32, ASM_FPC, ASMMODE INTEL, and {$UNDEF BIT_32_OR_MORE}
- Fixed `editors.pas`: `{$ifdef PPC_BP}` → `{$ifdef BIT_16}` for
  MaxLines/MaxBufLength constants (64K segment limit)
- Fixed `drivers.pas`: `SaveExit: Pointer` → `CodePointer`
- Fixed `views.pas`: 11 `@NestedProc` → `Pointer(@NestedProc)` casts
- Fixed `app.pas`: 4 Pointer(@) casts
- Fixed `outline.pas`: 4 Pointer(@) casts
- Fixed `tabs.pas`: 1 Pointer(@) cast
- Fixed `inplong.pas`: 1 Pointer(@) cast
- Stub `memory.pas` for i8086 using standard heap (paragraph heap
  uses Seg() as L-value which FPC 3.2.2 doesn't support)
- Total: 21 Pointer(@) casts across 5 files

#### Darwin FV Mach-O .o Files — 24/24
- Used `llvm-mc-18 --arch=x86 --filetype=obj --triple=i386-apple-darwin`
  to assemble FPC-generated .s files into real Mach-O i386 objects
- Updated `bin/tools/darwin-as` wrapper to use llvm-mc-18
- GNU `as` on Linux cannot produce Mach-O (rejects `.subsections_via_symbols`)

#### DOS Network Units (Phase 16) — 5 units
- `pktdrv.pas` (133 lines) — Crynwr packet driver interface, INT 60h-7Fh
- `tcpip.pas` (401 lines) — TCP/IP stack: ARP, IP, TCP, UDP, DNS
  (structure complete, WatTCP reference for implementation)
- `ipx.pas` (189 lines) — IPX/SPX via INT 7Ah (Novell NetWare)
- `netbios.pas` (195 lines) — NetBIOS via INT 5Ch (LAN Manager, WfW 3.11)
- `mslan.pas` (257 lines) — MS Network Redirector via INT 21h
  (NET USE drive/printer mapping)
- WatTCP source archived: `sdk/desqview/potpouri/WATTCP.ZIP`
- `ia16-elf-gcc` available but cannot handle far pointer function params

#### RIPView v1.0.0 — Updated from GitHub
- Pulled fresh from github.com/verta1878/mystic-bbs-irc
- 3,604 lines across 14 source files + 3 font includes
- 42/42 RIPscrip v1.54 commands, font rendering, FV TUI mode
- 6 binaries: CLI + FV TUI × Linux/Win32/DOS

#### fpGUI Toolkit — Archived
- `libs/fpgui/` — 296 .pas files from github.com/graemeg/fpgui
- Modified LGPL + GPLv2
- Not compiled — reference for future GUI work

#### OS/2 EMX PPU Flags — 139 Patched
- Flag byte 10: 0x04 (native OS/2) → 0x1c (EMX)
- Flag byte 12: 0x80 → 0x81
- All 139 non-system PPUs patched to match system.ppu

#### CRC Unit — All 7 Targets
- `src/packages/hash/src/crc.pas` compiled for Linux, Win32, go32v2,
  OS/2, Darwin, i8086

### Final Counts
- 2,843 PPUs across 7 targets
- Free Vision: 24/24 × 6 platforms = 144 compiled units
- i8086: 55 PPUs (26 RTL + 24 FV + 5 network)
- 42 bugs tracked, 42 closed (39 fixed, 2 not-a-bug, 1 Wine-only)


### Architecture Decision: Pure Pascal go32v2 Sockets

**[DECISION]** Replaced C-based sockets.pp (27 `{$linklib watt}` externals)
with pure Pascal implementation using go32 unit DPMI services (735 lines).

| Before | After |
|--------|-------|
| `{$linklib watt}` (C library) | `Uses go32` (Pascal) |
| 27 C external declarations | `realintr()` + `seg_move()` |
| Requires libwatt.a pre-compiled | Self-contained, no C toolchain |
| Watt-32 handles packet driver | go32.realintr() calls packet driver |
| Watt-32 handles DMA buffers | go32.global_dos_alloc() + seg_move() |

Same pattern as go32.pp itself — pure Pascal talking to hardware through
DPMI interrupts. The i8086 port was mechanical: swap go32.realintr() for
Dos.Intr() and go32.seg_move() for Move() (already in real mode).

### i8086 Huge Memory Model

**[DECISION]** Rebuilt entire i8086 RTL with `-Wmhuge` flag. Removes 64K
segment limit for data elements. Unlocked: classes, FCL-Base, FCL-JSON,
FCL-XML, FCL-Image, paszlib, regexpr, sockets, resolve, ssockets,
fphttpclient, openssl, dynlibs, fpwidestring, fpcanvas.

i8086: 55 → 106 PPUs. Key fixes:
- paszlib zbase.pas: `{$IFDEF TP}` → `{$IF defined(TP) or defined(CPUI8086)}`
- xmlread.pp: Unicode case labels $D7FF/$E000 wrapped with `{$IF defined(CPUI8086)}`
- clipping.pp: TRect LongInt→SmallInt via temp vars
- fpwidestring: removed THREADING feature, used System.TCompareOptions

### Final PPU Counts
- Linux: 236, Win32: 619, go32v2: 298, OS/2: 207, Darwin: 787, i8086: 106
- Total: 3,011 PPUs across 7 targets


### Phase 27-29: Incomplete Units Finished

#### Phase 27 — OS/2 DynLibs Real Implementation ✅
- `dynlibs.inc` wired to `DosLoadModule`/`DosFreeModule`/`DosQueryProcAddr`
  from `doscalls` unit. OpenSSL on OS/2 can now load real DLLs.

#### Phase 28 — Darwin FV Mach-O .o Refresh ✅
- 24/24 PPUs + 24/24 Mach-O .o rebuilt via `llvm-mc-18`
- Reflects all source changes (Pointer(@) casts, BIT_16 ifdefs, etc.)

#### Phase 29 — TCP/IP Implementation ✅
- `ARPResolve`: sends ARP request, subnet/gateway detection, cache
- `fpConnect`: initializes seq numbers, sends SYN
- `fpSend`: builds Ethernet + IP + TCP headers, correct checksums
- `SendTCPPacket`: full packet builder (TCP pseudo-header checksum)
- `BuildIPPacket`: IPv4 header with TTL, ident, checksum
- `TCPChecksum`: RFC 793 with pseudo-header
- Both go32v2 (960 lines) and i8086 (957 lines)
- Remaining: packet receive callback needs real packet driver

#### Additional Fixes
- `eventlog.inc` for i8086/go32v2 — stub (writes to stderr)
- `tcpip.pas` rewritten as thin wrapper around `sockets` unit
- `resolve.inc` go32v2 — dotted-quad parsing, DNS placeholder
- `variants` + `varutils` compiled for i8086 from FPC 3.2.2 source
- `fpjson` + `jsonparser` now compile on i8086 (was blocked by variants)

### Final Counts
- Linux: 237, Win32: 619, go32v2: 298, OS/2: 207, Darwin: 788, i8086: 112
- Total: 3,019 PPUs across 7 targets


### Phase 30 — Smart Linking (go32v2)

Rebuilt 149/152 go32v2 units with `-CX` flag for smart linking.
Programs compiled with `-XX` strip unused procedures from every unit.

| Before | After |
|--------|-------|
| 3 .a / 149 .o | 149 .a / 3 .o |
| 2% smart-linked | 98% smart-linked |

Remaining 3 .o (assembly, pre-Pascal bootstrap):
- prt0 — DJGPP DPMI real→protected mode switch
- exceptn — hardware exception/interrupt handler
- fpu — FPU detection via CPUID

Key fixes during smart-link rebuild:
- `get_pc_addr`: removed cpui386 from exclusion ifdef in system.inc
- `classesh.inc`: removed duplicate tthread.inc include from classes.pp
- `tthread.inc`: go32v2 single-threaded stubs matching 2.6.4 classesh.inc
- `process.inc`: go32v2 stubs for Execute, Resume, Suspend, Terminate
- `eventlog.inc`: simplified stubs without GetEnumName dependency
- `fpwidestring`: CompareStringProc 3-param → 2-param for 2.6.4 system unit
- `sysmsg`: compiled with `-Rintel` for inline assembly
- 67 stale duplicate .o files removed (superseded by .a)

### DOSBox Verification

PabloDraw Pascal test suite verified in DOSBox 0.74:
- pdtest.exe: 33/33 ALL TESTS PASSED (go32v2 DJGPP COFF)
- pdmain.exe: runs, displays help (go32v2)
- Cross-compiled from Linux using our go32v2-ld + CWSDPMI
- All 14 PD units compile for go32v2 with {$IFDEF GO32V2}

### PabloDraw RIP Crash Bug Filed

Filed on cwensley/pablodraw GitHub:
- BinaryReader UTF-8 crash on CP437 bytes ≥128
- Root cause: FormatRip.cs line 42 missing Encoding parameter
- One-line fix: new BinaryReader(stream, Encoding)
- Found by kiddo/evga from RIP art with block characters
