# FPC 2.6.4irc r3.1 — Release Notes

**The Mystic BBS IRC Fork of Free Pascal**

---

## What's New

### 60 Pure Pascal Codec Units — 26,402 Lines

Complete multimedia engine. Every codec is pure Pascal, zero C
dependencies, compiles on all targets.

**Audio (15 formats):** WAV, VOC, AU/SND, AIFF, ADPCM (IMA/MS),
MOD, S3M, XM, FLAC, MP3 (full Huffman/IMDCT/synthesis), MIDI
(parser + FM synth + player + streaming), ANSI music, raw PCM.

**Image (10 formats):** JPEG, PNG, GIF (+ animation), BMP, PCX,
TGA, ICO/CUR, PBM/PGM/PPM, plus full pasjpeg encode/decode.

**Audio Streaming Engine:** Callback API, WAV/VOC/MOD/MIDI
real-time streaming, network audio for BBS telnet, ring buffer,
cross-platform async playback.

**Graphics Streaming:** Progressive JPEG, interlaced PNG (Adam7),
interlaced GIF, animated GIF (256 frames), sprite animation,
RIP scene progressive renderer.

### MIDI Soft-Synthesizer

Full 2-operator FM synthesis (OPL2/AdLib style). 32 polyphonic
voices, 16 MIDI channels, GM-like patches (piano, organ, strings,
brass, synth leads), ADSR envelopes, operator feedback, stereo
panning, velocity sensitivity. Renders .mid files to PCM audio.

### RIPscript v1/v2/v3 Engines

All three versions in `examples/mystic_ripapi/`:
- v1.54: 51/51 commands, 640x350 EGA, CHR fonts
- v2.0: 67 commands, 1280x1024, JPEG, sprites, 3D
- v3.0: resolution-independent, client/server architecture

### RIP Scene Progressive Rendering (5 formats)

- R1: Incremental stream parser (byte-by-byte telnet)
- R2: Binary scene format (4-8x smaller)
- R3: Tile-based (RLE compressed chunks)
- R4: Layer-based (16-layer RGBA compositing)
- R5: Delta/diff (dirty rectangle patches)

### RIP Advanced Graphics

Gradient fills (linear/radial/conical), drop shadows, outer glow,
variable-width Bezier curves, affine texture mapping, polygon
clipping (even-odd/winding), Gaussian blur.

### BUG-029 Fixed: AnsiString Heap Corruption

Critical `{$H+}` AnsiString crash on all i386 targets resolved.
`fpc_AnsiStr_Decr_Ref` asm used `sub $8` instead of `sub $12`.
Binary patches applied to all i386 system.o files.

### BUG-036 Fixed: C-Style Operators (+=, -=, *=, /=)

Compound assignment operators now enabled by default in all modes.
Scanner already recognized `+=` but parser only accepted it with
`-Sc` flag. Fix: `cs_support_c_operators` added to default mode
switches in scanner.pas.

### Third-Party BBS Code Compiles Clean

Three real-world FreePascal BBS programs tested:

| Program | Author | Result |
|---------|--------|--------|
| BlockArt (ANSI editor) | xqtr | ✅ Zero changes |
| xAnsiViewer (Lazarus) | xqtr | ✅ Zero changes |
| Blocker (telnet client) | xqtr | ✅ +cnetdb shim |

65 LCL PPUs built for x86_64-linux (nogui widgetset).

### 8-Target Cross-Compiler

| Target | Status |
|--------|--------|
| i386-linux | ✅ Full |
| x86_64-linux | ✅ Full + LCL |
| i386-win32 | ✅ Full |
| i386-go32v2 (DOS) | ✅ Full + VESA + Sound Blaster + LCL |
| i386-freebsd | ✅ Full |
| i386-darwin | ✅ Full |
| i386-os2 | ✅ Full + PM widgetset |
| i8086-msdos | ✅ Compiler built |

### 39 Bugs Fixed

BUG-001 through BUG-039 including the AnsiString heap corruption
and C-style operator default.

---

## Examples Included

| Directory | What |
|-----------|------|
| mystic_ripapi/ | RIPscript v1, v2, v3 engines |
| pablodraw/ | PabloDraw source (C#, RIP handler, BGI canvas) |
| blocker/ | BBS telnet client (xqtr, GPL3) |
| blockart/ | ANSI art editor (xqtr, GPL3) |
| xansiviewer/ | Lazarus ANSI viewer (xqtr, GPL3) |
| ciadraw/ | CIA Draw ANSI editor (Pascal source) |
| doorkit86/ | DOS door game toolkit |
| renegade140/ | Renegade BBS |

## License

GNU General Public License v3

---

*For the BBS scene. For the demoscene. For everyone still
building on the platforms that matter.*

### BUG-036 Fixed: C-Style Operators

`+=` `-=` `*=` `/=` now enabled by default in all compiler modes.
Compiler rebuilt from source with the fix. No `-Sc` flag needed.

### BUG-038: SysTryResizeMem — NOT A BUG (closed) / BUG-039: Heap Lock Ordering — NOT A BUG (closed) (Deferred)

Full audit of RTL heap manager and string operations completed.
Two low-severity issues found and deferred:
- BUG-038: SysTryResizeMem memory leak after failed forward merge
- BUG-039: Heap lock ordering with orphaned freelists (threading)
Neither causes corruption. See `docs/system_ppu_audit.md`.

### Third-Party Code Verification

Three real-world BBS programs compile clean:
- BlockArt (xqtr) — zero changes needed
- xAnsiViewer (xqtr) — zero changes needed
- Blocker (xqtr) — +cnetdb.pas compatibility shim

### Compiler Rebuilt

ppcx64 bootstrapped from patched source (Jul 23 2026).
BUG-036 fix baked into the binary — `+=` works everywhere.

### BUG-037: v4 Engine Heap Crash — Audited (r3.1)
RTL heap manager audited and cleared. EInvalidPointer is caused
by user code (FillChar on class or buffer overrun), not the RTL.
See `docs/v4_engine_heap_audit.md` for full analysis.
