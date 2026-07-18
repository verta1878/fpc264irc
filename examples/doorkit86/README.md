# doorkit86 — DOS BBS Door Framework for FPC i8086

A complete BBS door skeleton demonstrating every feature the FPC 2.6.4irc
i8086 cross-compiler supports:

- **ANSI output** — colors, cursor positioning, screen clear
- **FOSSIL INT 14h** — init, deinit, read/write char, status check
- **Drop file parsing** — DOOR.SYS reader (COM port, baud, username, time)
- **File I/O** — creates DOORKIT.LOG with session info
- **DOS unit** — DosVersion, GetDate, GetTime
- **Intr()** — direct INT 14h dispatch for FOSSIL driver
- **String operations** — concat, Length, chr()

## Build

```bash
# From the fpc264irc repo root:
bin/tools/i8086-msdos/build-dos.sh examples/doorkit86/doorkit86.pas

# Test on DOSBox:
dosbox examples/doorkit86/doorkit86.exe
```

## For Door Authors

Use this as a starting point for your own DOS BBS doors. The key patterns:

1. **Local/remote detection** — parse DOOR.SYS, fall back to local mode
2. **FOSSIL I/O** — `FossilWriteStr` for remote output, `FossilReadChar` for input
3. **Dual output** — `DoorWrite` sends to both console and FOSSIL
4. **ANSI sequences** — `AnsiColor`, `AnsiCls`, `AnsiXY` for terminal control
5. **Clean shutdown** — `FossilDeinit` in the exit path

## Verified

- Compiles with `ppcross8086` (FPC 3.0.4 with PPU fix) ✅
- Links with OpenWatcom `wlink` via `build-dos.sh` ✅
- Runs on DOSBox 0.74 (core=simple) ✅
- ANSI colors render correctly ✅
- File I/O (DOORKIT.LOG) works ✅
- FOSSIL init detects "no driver" correctly ✅

## License

GPLv3+ — see examples/LICENSE for full terms and credits.
