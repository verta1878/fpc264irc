# OS/2 test programs (native `-Tos2`) — byte, 2026-10-07

Seven small programs that exercise the OS/2 target end to end: LX loader, DLL imports, console, crt, files,
threads, direct OS/2 API calls, Free Vision and the graph unit's Presentation Manager backend.

Build on the Linux host (`ppc386` + the patched `ld`/`emxbind` in `bin/tools/i386-os2`, see that folder's README):

```
test/os2/build.sh            # -> $TMPDIR/fpc264irc-os2-test/*.exe (or: test/os2/build.sh <out dir>)
# one program by hand:
bin/ppc386 -Tos2 -Xs -FDbin/tools/i386-os2 -Fubin/units/i386-os2 test/os2/hello.pas
```

The seven `.exe` files in this folder are ready-built (2026-10-07, current `bin/ppc386`) — copy them to the OS/2 / ArcaOS
machine and run them from an OS/2 command window. `build.sh` rebuilds them; the result is byte-identical.

| # | Program | Type | What it tests | DLL imports |
|---|---------|------|---------------|-------------|
| 1 | `hello` | console | plain `writeln` — LX loader, DOSCALLS, console output | DOSCALLS |
| 2 | `crttest` | console | `crt`: colours, `gotoxy`, screen size, `readkey` (press a key) | DOSCALLS, EMXWRAP |
| 3 | `filetest` | console | `sysutils`/`classes`/`dos`: date/time, current dir, environment, write + read back a file, `FindFirst`, exception | DOSCALLS, MSG, NLS, QUECALLS, SESMGR |
| 4 | `graphdemo` | PM (`-WG`) | graph unit, PM backend: lines, circles, text in a window for 10 s; results in `graphdemo.log` | + PMWIN, PMGPI, PMPIC |
| 5 | `sysinfo` | console | `doscalls` direct API: `DosQuerySysInfo` (version, boot drive, memory, page size, uptime), `DosQueryCP` | DOSCALLS, MSG, NLS, QUECALLS, SESMGR |
| 6 | `threads` | console | `BeginThread` ×4, critical section, `WaitForThreadTerminate`; counter must be exactly 400000 | DOSCALLS, MSG, NLS, QUECALLS, SESMGR |
| 7 | `fvdemo` | console | Free Vision: menu bar, status line, F3 opens windows, F1 message box, Alt-X quits | + EMXWRAP, PMWIN |

Checked on the host (2026-10-07): all seven compile and link; each `.exe` is an LX image (cpu 386, OS/2) with the
imports listed above. **Not yet run on a real OS/2 / ArcaOS machine** — that is what they are for.

What to report back for each one: did it start, what it printed or showed, and any SYS error with its full text
(SYS1804 = DLL or entry point not found, SYS3175 = trap). EMXWRAP.DLL is a standard OS/2 system DLL (`\OS2\DLL`).

`graphdemo` was rebuilt on 2026-10-09 with the graph 3.2.2 units (`tools/graph-322-build`); the other programs are unchanged.

All seven programs were rebuilt on 2026-10-10 against the OS/2 units as the kit builds them (`tools/os2-native-build`; 37 units replaced, see HISTORY.md).
