# mterm — DOS RIP/ANSI Terminal

DOS-first terminal emulator for Mystic BBS. Free Vision TUI shell
with RIPscrip graphics and ANSI terminal. `MTERM.EXE` (8.3 clean).

## Architecture (DOS-first, FV shell)

```
mterm.pas (FV TUI shell)
  ├── mtterm.pas       Terminal emulation view (TTermView)
  │     ├── mtansi.pas   ANSI CSI/SGR state machine
  │     ├── mtrip.pas    RIPscrip v1.54 command dispatcher
  │     └── mtfont.pas   CP437 + .CHR font renderer
  │
  ├── mtconn.pas       Connection manager
  │     ├── mttelnet.pas  Telnet (sockets.pp)
  │     ├── mtserial.pas  Serial/modem (serial.pas)
  │     ├── mtfossil.pas  FOSSIL (fossil.pas)
  │     └── mtpipe.pas    Local pipe (doors)
  │
  ├── mtphone.pas      Phonebook (saved connections)
  ├── mtxfer.pas       File transfer (Zmodem)
  ├── mtcapture.pas    Session logging/capture
  └── mtconfig.pas     Settings dialog
```

## Phases

### Phase M1: FV Shell + Text Display
- mterm.pas — FV TUI app with menu bar, status line
- TTermView — scrollable terminal view (80×25 text cells)
- Keyboard input → terminal view
- Local echo mode (type and see text)
- Status bar: connection, baud, capture, mode
- Menu: Connect, Disconnect, Phonebook, Transfer, Settings, Exit
- **Target: standalone .exe that shows a blank terminal with menus**

### Phase M2: ANSI Terminal
- mtansi.pas — ANSI CSI/SGR parser (adapt pdansi.pas)
- Cursor positioning, colors, scrolling
- 80×25 and 80×50 modes
- Scrollback buffer (1000 lines)
- Local ANSI file viewer (load .ans/.asc files)
- **Target: can display ANSI art files offline**

### Phase M3: Telnet Connection
- mttelnet.pas — TCP telnet client via sockets.pp
- Telnet IAC negotiation (WILL/WONT/DO/DONT)
- NAWS (window size), TTYPE (terminal type)
- Send/receive loop in FV Idle
- Connect dialog: host, port
- **Target: connect to a BBS over TCP and interact**

### Phase M4: RIP Graphics
- mtrip.pas — RIPscrip v1.54 parser (adapt pdrip.pas)
- BGI primitives: line, circle, bar, fill, pixel
- Text rendering with CP437 and .CHR fonts
- Mouse support for RIP buttons/icons/mouse regions
- Auto-detect RIP mode (server sends `!|*`)
- RIP viewport (640×350 graphics area)
- **Target: render RIP art and interact with RIP menus**

### Phase M5: Serial/FOSSIL/Modem
- mtserial.pas — direct serial via serial.pas
- mtfossil.pas — FOSSIL INT 14h via fossil.pas
- AT command dialer (ATDhost or phone number)
- Modem init strings (ATZ, ATE1, etc.)
- Hardware flow control (RTS/CTS)
- **Target: connect to a BBS via modem or null modem**

### Phase M6: Phonebook
- mtphone.pas — saved connection entries
- Name, host/phone, port/baud, terminal type, init string
- FV TDialog list with Add/Edit/Delete/Connect
- Save to mterm.phn (binary record file)
- **Target: pick a BBS from a list and connect**

### Phase M7: File Transfer
- mtxfer.pas — Zmodem send/receive
- Wraps pm_prot_zmodem from Mystic MDL (or pure Pascal)
- Upload/download with progress display
- Auto-download detection (Zmodem autostart)
- **Target: transfer files during a BBS session**

### Phase M8: Capture + Polish
- mtcapture.pas — session logging to text file
- Screen capture (ANSI dump to .ans file)
- Print screen
- Configurable colors/font
- Alt-key macros
- **Target: production-ready terminal**

### Phase M9: Multi-Platform
- go32v2: primary (DOS protected mode, VGA)
- i386-linux: X11 via fpGUI
- i386-win32: GDI via fpGUI
- Same source, conditional compilation
- **Target: one codebase, three platforms**

## Dependencies (all built)

| Unit | Lines | Status | Used in |
|------|-------|--------|---------|
| FV (App, Views, Dialogs) | RTL | ✅ | Shell |
| pdansi.pas | 383 | ✅ | M2 |
| pdrip.pas | 330 | ✅ | M4 |
| pdbitfont.pas | 200 | ✅ | M4 |
| sockets.pp | 1,271 | ✅ | M3 |
| serial.pas | 203 | ✅ | M5 |
| serial_irq.pas | 195 | ✅ | M5 |
| fossil.pas | 394 | ✅ | M5 |
| netfosdl.pas | 254 | ✅ | M5 |
| fpGUI v2.1.0 | 266 PPUs | ✅ | M9 |

## File Layout

```
mterm/
  mterm.pas          Main program (FV app)
  mtterm.pas         Terminal view
  mtansi.pas         ANSI parser
  mtrip.pas          RIP parser
  mtfont.pas         Font renderer
  mtconn.pas         Connection manager
  mttelnet.pas       Telnet client
  mtserial.pas       Serial/modem
  mtfossil.pas       FOSSIL wrapper
  mtphone.pas        Phonebook
  mtxfer.pas         File transfer
  mtcapture.pas      Session capture
  mtconfig.pas       Settings
  mterm.phn          Phonebook data (binary)
```

## Name

**mterm** — Mystic Terminal. `MTERM.EXE` on DOS.
