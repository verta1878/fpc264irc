# FPC 2.6.4irc — r3.1

Custom Free Pascal Compiler 2.6.4 fork for BBS and retro computing.
8-platform cross-compiler with 65 multimedia codecs and RIPscript v1-v4.

## Platforms

| Target | PPUs | Status |
|--------|------|--------|
| x86_64-linux | 597 + 65 LCL | ✅ Full + LCL nogui |
| i386-linux | 172 | ✅ Full |
| i386-win32 | 587 | ✅ Full |
| i386-go32v2 (DOS) | 254 + LCL | ✅ Full + VESA + Sound Blaster |
| i386-freebsd | 159 | ✅ Full |
| i386-darwin | 757 | ✅ Full |
| i386-os2 | 116 + LCL | ✅ Full + PM widgetset |
| i8086-msdos | 42 | ✅ RTL only |

## Compiler

- `bin/ppcx64` — x86_64-linux native (rebuilt Jul 23 2026, BUG-036 fixed)
- `bin/ppc386` — i386 cross-compiler (BUG-029 fixed)
- `bin/ppcross8086` — i8086-msdos cross-compiler

## 65 Codec Units

Pure Pascal, zero C dependencies, all 8.3 filenames.

**Audio (22 units):** WAV, VOC, AU/SND, AIFF, ADPCM, MOD, S3M, XM,
FLAC, MP3 (full Huffman/IMDCT/synthesis), MIDI (parser + FM synth +
player + streaming), ANSI music, raw PCM, audio streaming API,
network audio, ring buffer, async playback.

**Image (15 units):** JPEG, PNG, GIF (+ animation), BMP, PCX, TGA,
ICO/CUR, PBM/PGM/PPM, progressive JPEG, interlaced PNG/GIF,
sprite animation. Plus pasjpeg (58 files).

**RIP Graphics (11 units):** Progressive stream parser, binary format,
tile-based, layer compositing, delta patches, gradients, Bezier curves,
texture mapping, polygon clipping, drop shadows/glow/blur.

**Utilities (5 units):** MegaNum base-36 encoder, fixed-point math,
PCM mixer, LZMA decoder, DFM→LFM converter.

**ASM Fast-paths (4 units):** Audio mixing, JPEG IDCT, MP3 IMDCT,
polyphase synthesis. i386 ASM with Pascal fallback.

**Playback (3 units):** DOS Sound Blaster DMA, WAV player, DOS player.

Standalone codec package: `fpc-codecs-standalone-gplv3-20260721.zip`

## RIPscript Engines

All four versions in `examples/mystic_ripapi/`:

| Version | Main File | Lines | Commands |
|---------|-----------|-------|----------|
| v1.54 | ripscr.pas | 4,613 | 51 |
| v2.0 | rip2api.pas | 31,227 | 67 |
| v3.0 | rip3api.pas | 40,788 | 127+ |
| v4.0 | rip4api.pas | 45,991 | 200+ |

Total: 122,619 lines compiled, zero errors.

## Examples

| Directory | What | Compiles |
|-----------|------|----------|
| mystic_ripapi/ | RIPscript v1/v2/v3/v4 engines | ✅ All four |
| blocker/ | BBS telnet client (xqtr) | ✅ +cnetdb shim |
| blockart/ | ANSI art editor (xqtr) | ✅ Zero changes |
| xansiviewer/ | Lazarus ANSI viewer (xqtr) | ✅ Zero changes |
| pablodraw/ | PabloDraw source (C#) | Reference |
| ciadraw/ | CIA Draw ANSI editor | Pascal source |
| renegade140/ | Renegade BBS | Pascal source |
| doorkit86/ | DOS door game toolkit | Pascal source |
| mpl-tests/ | MPL test suite | Pascal source |

## Bugs Fixed (39)

| Bug | Description | Status |
|-----|-------------|--------|
| BUG-001–028 | LCL/RTL/platform fixes | ✅ Fixed |
| BUG-029 | AnsiString heap corruption (`sub $8` → `sub $12`) | ✅ Fixed + audited |
| BUG-030–035 | LCL resources, Borland .res, ISCC, Wine | ✅ Fixed |
| BUG-036 | `+=` operator not default — scanner.pas fix | ✅ Fixed + compiler rebuilt |
| BUG-037 | v4 engine EInvalidPointer — user code, not RTL — heap manager is clean | ✅ Audited |
| BUG-038 | SysTryResizeMem stats leak after failed merge | ⚠️ Deferred |
| BUG-039 | Heap lock ordering (threading only) | ⚠️ Deferred |

### BUG-029 (Critical — Fixed)
AnsiString FreeMem called with wrong pointer offset on all i386 targets.
`fpc_AnsiStr_Decr_Ref` ASM used `sub $8` but TAnsiRec grew to 12 bytes
(CodePage + ElementSize added). Binary patches applied + source fixed.
Full audit confirmed: only AnsiString affected. UnicodeString `sub $8`
is correct (TUnicodeRec = 8 bytes).

### BUG-036 (Fixed — Compiler Rebuilt)
`+=` `-=` `*=` `/=` operators now enabled by default in all modes.
One line in `scanner.pas`: `include(cs_support_c_operators)` in
`SetCompileMode`. Compiler bootstrapped from fixed source Jul 23 2026.

## system.ppu Audit

Full source audit completed Jul 23 2026. See `docs/system_ppu_audit.md`.

| Finding | Status |
|---------|--------|
| i386 AnsiStr ASM offsets | ✅ Fixed (BUG-029) |
| SetLength Pascal code | ✅ Safe |
| Dynamic arrays use sizeof() | ✅ Safe |
| TextRec buffer on stack | ✅ Safe |
| Move/FillChar ASM | ✅ Safe |
| Heap coalescing | ✅ Safe |
| SysTryResizeMem leak | ⚠️ Deferred (BUG-038) |
| Heap lock ordering | ⚠️ Deferred (BUG-039) |
| x86_64 strings all Pascal | ✅ Safe |
| Exception frames on stack | ✅ Safe |

## Directory Structure

```
bin/                    Compilers + cross-tools
  units/<target>/       RTL + package PPUs per target
src/
  compiler/             FPC compiler source (scanner.pas patched)
  rtl/                  Runtime library (i386.inc patched)
  packages/             FCL + third-party packages
  lazarus/              LCL + LazUtils + codecs
examples/
  mystic_ripapi/        RIPscript v1/v2/v3/v4
  blocker/              BBS telnet client
  blockart/             ANSI art editor
  xansiviewer/          Lazarus ANSI viewer
  pablodraw/            PabloDraw source
  ciadraw/              CIA Draw editor
  renegade140/          Renegade BBS
  doorkit86/            DOS door toolkit
docs/
  bugsfixed.md          All bugs
  system_ppu_audit.md   RTL heap/string audit
  bug038_audit.md       Heap manager deep audit
  CODEC_PHASES.md       Codec roadmap
  BACKPORT-METHOD.md    Backport methodology
attic/                  Old release notes, milestones
```

## License

GNU General Public License v3

## Cross-Compilation Prerequisites

### i386 on x86_64 Linux
The i386 cross-compiler (`ppc386`) needs 32-bit system libraries:
```bash
# Check: bin/check-i386-libs.sh
# Install:
sudo apt install gcc-multilib libc6-dev-i386    # Ubuntu/Debian
sudo dnf install glibc-devel.i686 libgcc.i686   # Fedora/RHEL
sudo pacman -S lib32-glibc lib32-gcc-libs        # Arch
# Or compile without linking: ppc386 -s program.pas
```
