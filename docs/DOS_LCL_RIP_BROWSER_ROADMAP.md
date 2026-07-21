# DOS LCL RIP Browser — Roadmap

A graphical RIPscript terminal and BBS browser running as a native DOS
application with an LCL GUI, inspired by Arachne (the DOS web browser).

## Vision

Full-screen VESA GUI on bare DOS — menus, toolbar, status bar, scrollable
RIP viewport — connecting to BBS systems over telnet and rendering RIPscript
graphics in real time. No Windows, no Linux, no X11. Just DOS and a VESA card.

Like Arachne did for HTML on DOS, this does for RIPscript on DOS.

## What Already Exists (in the repo)

| Component | Location | Status |
|-----------|----------|--------|
| i386-go32v2 cross-compiler | `bin/ppc386` | ✅ 254 PPUs |
| customdrawn VESA backend | LCL widgetset | ✅ up to 1024×768×32K |
| RIPscript v1.54 engine | `src/mystic_ripapi/ripscript.pas` | ✅ 4,041 lines, 51/51 commands |
| RIPscript v2.0 engine | `src/mystic_ripapi/mystic_ripapi2/rip2api.pas` | ✅ 5,160 lines, 67 commands |
| JPEG decoder | `jpegdecraw.pas` / `pasjpeg/` | ✅ Pure Pascal |
| GIF decoder | `gifdecraw.pas` | ✅ LZW, animation |
| PNG decoder | `pngdecraw.pas` | ✅ via paszlib |
| PCM/WAV decoder | `pcmdec.pas` / `wavdec.pas` | ✅ Pure Pascal |
| Sound Blaster DMA | `dosplay.pas` | ✅ IRQ-driven async |
| WAV player | `wavplay.pas` | ✅ Cross-platform |
| Fixed-point math | `fixedmath.pas` | ✅ 16.16, no FPU |
| BMP load/export | in ripscript.pas | ✅ 4/24-bit |
| PCX loader | in ripscript.pas | ✅ 16-color RLE |

## Architecture

```
┌─────────────────────────────────────────────────────┐
│ LCL Form (TForm)                                    │
│ ┌─────────────────────────────────────────────────┐ │
│ │ TMenuBar  [File] [Connect] [View] [Settings]    │ │
│ ├─────────────────────────────────────────────────┤ │
│ │ TToolBar  [Connect] [Disconnect] [Clear] [Save] │ │
│ ├─────────────────────────────────────────────────┤ │
│ │                                                 │ │
│ │  TPaintBox — RIP Viewport                       │ │
│ │  ┌───────────────────────────────────────────┐  │ │
│ │  │                                           │  │ │
│ │  │  rip2api.pas renders RIP → pixel buffer   │  │ │
│ │  │  ┌─────────┐ ┌──────────┐ ┌───────────┐  │  │ │
│ │  │  │ pasjpeg │ │ gifdec   │ │ fixedmath │  │  │ │
│ │  │  └─────────┘ └──────────┘ └───────────┘  │  │ │
│ │  │                                           │  │ │
│ │  └───────────────────────────────────────────┘  │ │
│ │                                                 │ │
│ ├─────────────────────────────────────────────────┤ │
│ │ TMemo — ANSI Text Fallback / Chat               │ │
│ ├─────────────────────────────────────────────────┤ │
│ │ TEdit — Command Input / Address Bar             │ │
│ ├─────────────────────────────────────────────────┤ │
│ │ TStatusBar  [Connected: mysticbbs.com:23]       │ │
│ └─────────────────────────────────────────────────┘ │
│                                                     │
│  customdrawn widgetset → VESA framebuffer            │
│  dosplay.pas → Sound Blaster DMA                    │
│  telnet unit → BBS connection                       │
└─────────────────────────────────────────────────────┘
```

## Development Phases

### Phase A: RIP Reader (file-based)
- [ ] LCL form with TPaintBox for RIP viewport
- [ ] Load .RIP files from disk
- [ ] ripscript.pas renders to pixel buffer
- [ ] TPaintBox.OnPaint copies buffer to canvas
- [ ] Mouse field hit detection (click RIP buttons)
- [ ] Keyboard navigation (tab between fields)
- [ ] File browser dialog for opening .RIP scenes

### Phase B: ANSI Terminal
- [ ] TMemo or custom control for ANSI text rendering
- [ ] ANSI escape code parser (colors, cursor movement)
- [ ] Scrollback buffer
- [ ] Copy/paste support
- [ ] Split view: ANSI text + RIP graphics

### Phase C: Telnet Client
- [ ] TCP/IP socket unit for DOS (Watt-32 or custom)
- [ ] Telnet protocol (IAC negotiation, NAWS, TTYPE)
- [ ] Connection dialog (host, port, terminal type)
- [ ] Auto-detect RIP mode (look for `!|` prefix)
- [ ] Send keyboard input and mouse clicks to host

### Phase D: RIP Browser (live BBS)
- [ ] Real-time RIP rendering from telnet stream
- [ ] Mouse field clicks sent as responses to BBS
- [ ] Button responses (radio groups, checkboxes)
- [ ] Text variable queries ($CURX$, $DATE$, etc)
- [ ] Screen save/restore during navigation
- [ ] WAV audio playback for sound effects

### Phase E: RIP v2.0 Extensions
- [ ] 256-color palette rendering
- [ ] Higher resolutions (800×600, 1024×768)
- [ ] RFF vector font rendering
- [ ] JPEG image display in RIP scenes
- [ ] Sprite animation and palette cycling
- [ ] 3D projected graphics

### Phase F: Polish
- [ ] Bookmarks / BBS directory
- [ ] Session logging (capture .RIP files)
- [ ] Settings dialog (resolution, colors, audio)
- [ ] Help system
- [ ] About dialog with version info

## Reference: Arachne DOS Browser

Arachne (1996-2021) proved a full graphical browser works on DOS:

- CGA 640×200 mono to VESA 1024×768 in 65K colors
- HTML 4.0 subset with tables and frames
- JPEG, PNG, GIF, BMP image support
- FTP, NNTP, POP3, SMTP protocols
- Built-in TCP/IP stack
- Written in C (Borland C++ 3.1), GPLv2
- Source: https://github.com/sraase/arachne-browser
- Screenshots: http://arachne.atspace.co.uk/screenshots.htm

We're building the same thing, but for BBS/RIPscript instead of HTML.

## Technical Notes

### DOS Memory
- go32v2 (DJGPP) runs in protected mode — no 640K limit
- VESA framebuffer accessed via DPMI
- Dynamic pixel buffer allocation (v2.0 engine)

### Networking on DOS
- Watt-32 TCP/IP library (DJGPP compatible)
- Or: serial port direct (COM1-COM4) for dialup
- Or: FOSSIL driver for BBS door compatibility

### Compiler
- FPC 2.6.4irc r3.1+ with BUG-029 fixed
- `ppc386 -Mdelphi -Tgo32v2`
- {$H+} AnsiStrings now work (no more {$H-} workaround needed)

### Build Command (future)
```bash
ppc386 -Mdelphi -Tgo32v2 \
  -Fubin/units/i386-go32v2 \
  -Fusrc/mystic_ripapi \
  -Fusrc/mystic_ripapi/mystic_ripapi2 \
  ripbrowser.pas
```

## Timeline

Not scheduled. This is a future goal doc — reference it when we're ready.
Prerequisites: Phase 11 (VM testing) should be complete first so we can
test in DOSBox/QEMU with VESA and networking.

---
Created: July 21, 2026
Part of FPC 2.6.4irc r3.1 — Mystic BBS IRC Fork
