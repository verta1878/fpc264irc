# Mac (i386-darwin) test programs — byte, 2026-10-07 (8 – 10: 2026-10-08)

Ten programs that exercise the Mac target end to end: Mach-O loader, libSystem imports, console, crt, files,
the unix units, cwstring/libiconv, pthreads, Free Vision, and Apple's frameworks (Carbon/CoreFoundation, Cocoa,
the `graph` unit's Quartz backend).

Build on the Linux host (tools in `bin/tools/i386-darwin`, see that folder's README):
```
test/darwin/build.sh            # -> $TMPDIR/fpc264irc-darwin-test/<name>  (or: test/darwin/build.sh <out dir>)
```
The ten programs in this folder are ready-built (1 – 7: 2026-10-07, 8 – 10: 2026-10-08). `build.sh` rebuilds them;
the result is byte-identical.

64-bit versions of tests 1 – 9 (for newer Macs and Apple Silicon): `test/darwin64/`.

Run them on an **Intel Mac with macOS 10.6 – 10.14** (32-bit programs; 10.15 and later cannot run them), from Terminal.
Copy them over, then `chmod +x hello crttest filetest sysinfo unicode threads fvdemo carbon cocoa graphdemo` (git on Windows does not keep the
execute bit) and run e.g. `./hello`. If macOS refuses to open them (Gatekeeper), `xattr -c <name>` or right-click > Open.

| # | Program | What it tests | Libraries |
|---|---------|---------------|-----------|
| 1 | `hello` | plain `writeln` — Mach-O loader, libSystem, console output | libSystem |
| 2 | `crttest` | `crt`: colours, `gotoxy`, screen size, `readkey` (press a key) | libSystem |
| 3 | `filetest` | `sysutils`/`classes`/`dos`: date/time, current dir, environment, write + read back a file, `FindFirst`, exception | libSystem |
| 4 | `sysinfo` | `baseunix`/`unix`: `uname` (Darwin release, machine), pid/uid/gid, `HOME`, time | libSystem |
| 5 | `unicode` | `cwstring`: UTF-8 ↔ UTF-16 round trip, upper/lower case of ü ß é | libSystem, libiconv |
| 6 | `threads` | `cthreads` + `BeginThread` ×4, critical section; counter must be exactly 400000 | libSystem |
| 7 | `fvdemo` | Free Vision: menu bar, status line, F3 opens windows, F1 message box, Alt-X quits | libSystem |
| 8 | `carbon` | `MacOSAll`: CFString / CFNumber / CFArray round trip, `Gestalt` (system version), `SysBeep` (32-bit build only) | CoreFoundation, CoreServices, Carbon |
| 9 | `cocoa` | `CocoaAll`: NSAutoreleasePool, NSString, NSMutableArray, NSProcessInfo, `NSLog` (Objective-C runtime) | Foundation, CoreFoundation, libobjc |
| 10 | `graphdemo` | `graph` (Mac backend): a window with lines, circles, text for 10 s; result also in `graphdemo.log` | CoreFoundation, ApplicationServices, Carbon |

Checked on the host: all ten link with no undefined symbols; each is a Mach-O i386 executable (minimum macOS 10.4,
SDK 10.6) that imports only the libraries above (libSystem in all of them), each framework call bound to the
framework that holds it on the Mac. **Not yet run on a real Mac.**

`graphdemo` opens a window, so run it from Terminal while logged in at the Mac's screen (not over ssh). If no window
appears, `graphdemo.log` still says whether `InitGraph` worked.

What to report back for each one: what it printed or showed, and any error text (e.g. `dyld: Symbol not found: _xyz` —
that names a symbol a stub library or framework has but the real one lacks under that name, or `Bad CPU type in executable` —
a 64-bit-only macOS).
