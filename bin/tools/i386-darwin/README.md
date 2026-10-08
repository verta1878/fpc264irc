# Mac (i386-darwin) link tools — byte, 2026-10-07

Use (Linux x86_64 host):
```
bin/ppc386 -Tdarwin -FDbin/tools/i386-darwin -XRbin/tools/i386-darwin/MacOSX10.6.sdk \
           -Fubin/units/i386-darwin/fv -Fubin/units/i386-darwin prog.pas         -> prog  (Mach-O i386 executable)
```
`-Fu.../fv` first only matters for Free Vision programs: `bin/units/i386-darwin` also holds Apple's Carbon `Dialogs` unit.
Add `-WM10.6` (or 10.5) to target a newer macOS; the default is 10.4 (FPC 2.6.4's i386 default).

| File | What |
|---|---|
| `as`, `ld`, `ar`, `ranlib`, `nm`, `otool`, `strip`, `lipo`, `install_name_tool` | Apple cctools 1030.6.3 + ld64-956.6 (cctools-port), static Linux x86_64 builds |
| `MacOSX10.6.sdk/usr/lib/crt1.o`, `crt1.10.5.o`, `crt1.10.6.o` | program startup code, built from Apple's open-source Csu-88 (10.4 / 10.5 / 10.6+) |
| `MacOSX10.6.sdk/usr/lib/libSystem.B.dylib` | **stub** libSystem: 329 symbol names (C library, pthreads, math, dl, sockets, syslog), no code. Copies as `libc`, `libm`, `libdl`, `libpthread` `.dylib` (symlinks to libSystem on a Mac) |
| `MacOSX10.6.sdk/usr/lib/libiconv.2.dylib` (+ `libiconv.dylib`) | stub libiconv (`cwstring`) |
| `MacOSX10.6.sdk/usr/lib/libncurses.5.4.dylib` (+ `libncurses.dylib`) | stub ncurses (`terminfo`) |

The stubs only let the linker check names; each carries the real library's install name (`/usr/lib/libSystem.B.dylib`
etc.), so the program loads the real library on the Mac. Nothing here is copied from Apple's SDK or Xcode.
The folder is named `MacOSX10.6.sdk` because ld64 takes the SDK version it writes into the program from that name.

Not covered yet: programs that use Apple frameworks (Carbon, CoreFoundation, ApplicationServices, Cocoa - e.g. the
`graph` unit's Mac backend, `MacOSAll`, `CocoaAll`) or other libraries (SDL, FreeType, X11). They need framework / library
stubs too; the linker names the missing symbols.

Rebuild everything from source: `patches/darwin-cross/build.sh` (pinned sources, reproducible: a second build is byte-identical).
Test programs: `test/darwin/`.
