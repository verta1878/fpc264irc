# Mac (i386-darwin + x86_64-darwin) link tools — byte, 2026-10-07 (frameworks 2026-10-08, 64-bit 2026-10-09)

Use (Linux x86_64 host):
```
bin/ppc386 -Tdarwin -FDbin/tools/i386-darwin -XRbin/tools/i386-darwin/MacOSX10.6.sdk \
           -Fubin/units/i386-darwin/fv -Fubin/units/i386-darwin prog.pas         -> prog  (Mach-O i386 executable)
```
`-Fu.../fv` first only matters for Free Vision programs: `bin/units/i386-darwin` also holds Apple's Carbon `Dialogs` unit.
Add `-WM10.6` (or 10.5) to target a newer macOS; the default is 10.4 (FPC 2.6.4's i386 default).

64-bit (runs on every Intel Mac up to macOS 26 Tahoe, and on Apple Silicon through Rosetta 2) — same tools, `ppcx64`:
```
bin/ppcx64 -Tdarwin -FDbin/tools/i386-darwin -XRbin/tools/i386-darwin/MacOSX10.6.sdk \
           -Fubin/units/x86_64-darwin/fv -Fubin/units/x86_64-darwin prog.pas     -> prog  (Mach-O x86_64 executable)
```
Default minimum macOS for x86_64 is 10.5 (`-WM10.6` / `-WM10.4` work too). Units: `bin/units/x86_64-darwin` (789,
see `tools/darwin64-build/README.md`; no `graph`). The folder keeps its name `i386-darwin`: one set of tools for both.

| File | What |
|---|---|
| `as`, `ld`, `ar`, `ranlib`, `nm`, `otool`, `strip`, `lipo`, `install_name_tool` | Apple cctools 1030.6.3 + ld64-956.6 (cctools-port), static Linux x86_64 builds |
| `MacOSX10.6.sdk/usr/lib/crt1.o`, `crt1.10.5.o`, `crt1.10.6.o` | program startup code, built from Apple's open-source Csu-88 (10.4 / 10.5 / 10.6+); universal i386 + x86_64 |
| `MacOSX10.6.sdk/usr/lib/libSystem.B.dylib` | **stub** libSystem: 458 symbol names (C library, pthreads, math, dl, sockets, syslog, fenv, xattr), no code. Copies as `libc`, `libm`, `libdl`, `libpthread` `.dylib` (symlinks to libSystem on a Mac) |
| `MacOSX10.6.sdk/usr/lib/libiconv.2.dylib` (+ `libiconv.dylib`) | stub libiconv (`cwstring`) |
| `MacOSX10.6.sdk/usr/lib/libncurses.5.4.dylib` (+ `libncurses.dylib`) | stub ncurses (`terminfo`) |
| `MacOSX10.6.sdk/usr/lib/libobjc.A.dylib` (+ `libobjc.dylib`) | stub Objective-C runtime (`objc_msgSend` & co., 61 names) |
| `MacOSX10.6.sdk/System/Library/Frameworks/<F>.framework` | **stub** frameworks, 24 (list below); each at its install path `Versions/A/<F>` (Foundation, AppKit: `Versions/C/<F>`, as on every Mac) + a copy `<F>` (symlinks on a Mac; git on Windows does not keep symlinks) |

Every stub library and framework is **universal** (an i386 and an x86_64 part, like Apple's own); the i386 parts are
byte-identical to the 2026-10-08 i386-only stubs, so 32-bit programs link exactly as before. In the x86_64 part each
Objective-C class is `_OBJC_CLASS_$_X` + `_OBJC_METACLASS_$_X` (Objective-C 2 runtime) instead of `.objc_class_name_X`.

Checked against Apple's own MacOSX10.6 / 10.7 SDK (2026-10-10, kept outside the repo): every test program in
`test/darwin` and `test/darwin64` also links against Apple's libraries, with each call bound to the same library as with
the stubs; install names match Apple's (Foundation / AppKit were `Versions/A` before - fixed, a Mac would have refused to
load the Cocoa programs).

The stubs only let the linker check names; each carries the real library's install name (`/usr/lib/libSystem.B.dylib`
etc.), so the program loads the real library on the Mac. Nothing here is copied from Apple's SDK or Xcode.
The folder is named `MacOSX10.6.sdk` because ld64 takes the SDK version it writes into the program from that name.

## Frameworks (2026-10-08)

Every symbol FPC's own Mac interface units can reference (`MacOSAll` and its 450 univint headers, `CocoaAll`
(Foundation / AppKit / CoreData / QuartzCore / WebKit), objcrtl, openal, opencl), sorted by the framework that
exports it on macOS 10.4 – 10.14:

| Framework | Names | Framework | Names | Framework | Names |
|---|---|---|---|---|---|
| ApplicationServices | 3027 | AppKit | 1237 | SystemConfiguration | 484 |
| Carbon | 2811 | CoreFoundation | 959 | WebKit | 202 |
| QuickTime | 2604 | Foundation | 638 | AddressBook | 178 |
| CoreServices | 2568 | vecLib | 578 | CoreMIDI | 125 |
| OpenGL | 1455 | QuartzCore | 494 | Security | 101 |
| CoreData | 99 | OpenCL | 65 | IOSurface | 53 |
| DiskArbitration | 49 | QuickLook | 48 | AudioUnit, CoreAudio | 42 each |
| OpenAL | 38 | Cocoa | umbrella | | |

Umbrellas re-export like the real ones: Carbon → CoreServices + ApplicationServices, Cocoa → Foundation + AppKit +
CoreData, AppKit → Foundation + ApplicationServices, Foundation → CoreFoundation + libobjc, ApplicationServices →
CoreServices → CoreFoundation. ld64 links a re-exported public framework directly, so each call is bound to the
framework that really holds it (e.g. `_CFRelease` from CoreFoundation, even though `MacOSAll` only says
`{$linkframework Carbon}`) - which is what dyld on the Mac expects.

Nothing extra on the command line: `uses MacOSAll` / `uses CocoaAll` / `uses graph` pick their frameworks themselves.
Example: `test/darwin/carbon.pas` (CoreFoundation + Carbon), `cocoa.pas` (Foundation, Objective-C classes),
`graphdemo.pas` (`graph` unit's Mac backend: Carbon + Quartz).

Still not covered: third-party libraries (SDL, FreeType, X11 ...); the linker names the missing symbols. A framework
call that FPC's headers do not declare (your own `external` in a framework) also needs its name added to
`patches/darwin-cross/stubs/frameworks/<F>.syms`, then `gen-stubs.sh` rerun.

Rebuild everything from source: `patches/darwin-cross/build.sh` (pinned sources, reproducible: a second build is byte-identical).
Test programs: `test/darwin/`.
