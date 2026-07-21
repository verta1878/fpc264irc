# FPC 2.6.4irc r3.1 — Release Notes

**The Mystic BBS IRC Fork of Free Pascal**

A modernized Free Pascal 2.6.4 cross-compiler with RIPscript graphics,
multimedia codecs, and BBS-era platform support. Built for the scene.

---

## What's New in r3.1

### 59 Pure Pascal Codec Units — 26,402 Lines of Code

A complete multimedia engine for BBS software, door games, ANSI art
viewers, and retro computing projects. Every codec is pure Pascal,
zero external C dependencies, compiles on all 8 targets.

**Audio Decoders (15 formats):**
WAV, VOC (Sound Blaster), AU/SND (mu-law, A-law), AIFF/AIFF-C,
ADPCM (IMA/MS), MOD (ProTracker 4-8ch), S3M (Scream Tracker 32ch),
XM (FastTracker), FLAC (lossless), MP3 (Layer III with full Huffman/IMDCT/synthesis),
MIDI (SMF format 0/1), ANSI music (MML parser + PCM synth), raw PCM.

**Image Decoders (10 formats):**
JPEG, PNG (all color types + tRNS), GIF (+ animation), BMP (1-32 bit),
PCX (2/16/256 color RLE), TGA (uncompressed + RLE), ICO/CUR (Windows icons),
PBM/PGM/PPM (Netpbm all 6 formats), plus full pasjpeg encode/decode library.

**Audio Streaming Engine:**
Callback-based streaming API, WAV/VOC/MOD real-time streaming, network
audio packets for BBS telnet, lock-free ring buffer, cross-platform
async playback (Win32 winmm, Linux ALSA/PulseAudio, DOS Sound Blaster DMA,
Darwin afplay, OS/2 MMPM/2).

**Graphics Streaming Engine:**
Progressive JPEG (scan-by-scan), interlaced PNG (Adam7 7-pass),
interlaced GIF (4-pass), animated GIF (256 frames, disposal modes, timing),
sprite sheet animation, RIP scene progressive renderer.

**RIPscript Engines:**
- v1.54: 4,041 lines, 51/51 commands, 640x350 EGA, CHR fonts, ICN/MSK icons
- v2.0: 5,160 lines, 67 commands, 1280x1024 256-color, JPEG, sprites, 3D, WAV

**RIP Scene Progressive Rendering (5 formats):**
- R1: Incremental stream parser (byte-by-byte telnet feed)
- R2: Binary scene format (4-8x smaller than text RIP)
- R3: Tile-based (rectangular chunks with RLE)
- R4: Layer-based (16-layer RGBA stack with alpha composite)
- R5: Delta/diff (dirty rectangle tracking + patch encoding)

**RIP Advanced Graphics:**
Gradient fills (linear/radial/conical), drop shadows + outer glow,
variable-width Bezier curves, affine texture mapping, polygon clipping
(even-odd/winding), Gaussian blur.

### BUG-029 Fixed: AnsiString Heap Corruption

The critical `{$H+}` AnsiString crash that affected all i386 targets
is fully resolved. Root cause: `fpc_AnsiStr_Decr_Ref` asm used `sub $8`
instead of `sub $12` for the expanded TAnsiRec header. Binary patches
applied to all i386 system.o files.

### 8-Target Cross-Compiler

| Target | Status |
|--------|--------|
| i386-linux | ✅ Full |
| x86_64-linux | ✅ Full |
| i386-win32 | ✅ Full |
| i386-go32v2 (DOS) | ✅ Full + VESA + Sound Blaster |
| i386-freebsd | ✅ Full |
| i386-darwin (macOS) | ✅ Full |
| i386-os2 (OS/2 + eCS) | ✅ Full + PM widgetset |
| i8086-msdos | ✅ Compiler built |

### 36 Bugs Fixed

BUG-001 through BUG-035 plus BUG-029 AnsiString heap corruption.

---

## Who This Is For

- **BBS sysops** running Mystic, Enigma, Synchronet, Talisman
- **ANSI/RIP artists** using PabloDraw, BlockArt, TheDraw
- **Door game developers** writing Pascal for DOS and modern platforms
- **Retro computing enthusiasts** targeting DOS, OS/2, classic Mac
- **Demoscene coders** needing MOD/S3M/XM playback
- **Anyone** who wants a Pascal compiler that still cares about the platforms that matter

## Building

```bash
# Compile any codec
ppc386 -Mdelphi myprogram.pas

# Cross-compile for DOS
ppc386 -Mdelphi -Tgo32v2 myprogram.pas

# Cross-compile for Win32
ppc386 -Mdelphi -Twin32 myprogram.pas
```

## Links

- PabloDraw RIP engine: https://github.com/cwensley/pablodraw/issues/134
- xqtr BBS tools: https://github.com/xqtr
- RIPscript specs: included in docs/ripscript/

## License

GNU General Public License v3

---

*For the BBS scene. For the demoscene. For everyone who remembers
the sound of a 2400 baud modem and the glow of an EGA monitor.*
