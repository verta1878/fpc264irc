# 64-bit Mac (x86_64-darwin) test programs — byte, 2026-10-09

The same programs as `test/darwin` (sources there), built 64-bit with `bin/ppcx64` and `bin/units/x86_64-darwin`:
```
test/darwin64/build.sh          # -> $TMPDIR/fpc264irc-darwin64-test/<name>  (or: test/darwin64/build.sh <out dir>)
```
The nine programs in this folder are ready-built (2026-10-09); `build.sh` rebuilds them byte-identical.

Run them on **any Intel Mac with macOS 10.5 or later — up to macOS 26 Tahoe** — and on **Apple Silicon Macs (M1 and
later) through Rosetta 2** (macOS asks to install Rosetta the first time). From Terminal: copy them over,
`chmod +x hello crttest filetest sysinfo unicode threads fvdemo carbon cocoa` (git on Windows does not keep the execute
bit), then e.g. `./hello`. If macOS refuses to open them (Gatekeeper), `xattr -c <name>` or right-click > Open.

| # | Program | What it tests | Libraries |
|---|---------|---------------|-----------|
| 1 | `hello` | plain `writeln` — Mach-O loader, libSystem, console output | libSystem |
| 2 | `crttest` | `crt`: colours, `gotoxy`, screen size, `readkey` (press a key) | libSystem |
| 3 | `filetest` | `sysutils`/`classes`/`dos`: date/time, current dir, environment, file write + read, `FindFirst`, exception | libSystem |
| 4 | `sysinfo` | `baseunix`/`unix`: `uname`, pid/uid/gid, `HOME`, time | libSystem |
| 5 | `unicode` | `cwstring`: UTF-8 ↔ UTF-16, upper/lower case of ü ß é | libSystem, libiconv |
| 6 | `threads` | `cthreads` + 4 threads, critical section; counter must be exactly 400000 | libSystem |
| 7 | `fvdemo` | Free Vision: menu bar, status line, F3 opens windows, F1 message box, Alt-X quits | libSystem |
| 8 | `carbon` | `MacOSAll`: CFString / CFNumber / CFArray, `Gestalt` (no `SysBeep`: 32-bit only) | CoreFoundation, CoreServices |
| 9 | `cocoa` | `CocoaAll`: NSAutoreleasePool, NSString, NSMutableArray, NSProcessInfo, `NSLog` (Objective-C 2 runtime) | Foundation, CoreFoundation, libobjc |

No `graphdemo`: the `graph` unit's Mac backend is 32-bit only (see `tools/darwin64-build/README.md`).

Checked on the host: all nine link with no undefined symbols; each is a Mach-O x86_64 executable (minimum macOS 10.5,
SDK 10.6), every call bound to the library or framework that holds it. **Not yet run on a real Mac.**
Report back what each printed, and any error text (`dyld: Symbol not found: _xyz`, `Bad CPU type in executable`).
