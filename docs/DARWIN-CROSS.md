# Darwin/macOS Cross-Compilation Guide

## FPC 2.6.4irc — Building for macOS from Linux

### Everything is in the repo (2026-10-07)

The linker, assembler, startup code and stub system libraries are bundled in `bin/tools/i386-darwin/` (static Linux
x86_64 builds of Apple's open-source cctools/ld64 and Csu; no Xcode, no Apple SDK). See its README for the file list,
`patches/darwin-cross/` to rebuild them from source.

### Building

```bash
bin/ppc386 -Tdarwin -FDbin/tools/i386-darwin -XRbin/tools/i386-darwin/MacOSX10.6.sdk \
           -Fubin/units/i386-darwin/fv -Fubin/units/i386-darwin yourprogram.pas
```
- `-FD` finds `as`/`ld`, `-XR` the startup code and the stub libraries (`-syslibroot` for ld).
- `-Fu .../fv` first only for Free Vision programs (the folder also holds Apple's Carbon `Dialogs` unit).
- Default minimum macOS is 10.4; `-WM10.5` / `-WM10.6` pick the newer startup code and load commands.
- `-Amacho` uses the compiler's internal Mach-O writer instead of `as`; both work.
- Console programs (RTL, sysutils, classes, crt, Free Vision, unix units, sockets, cwstring, cthreads) link.
- Framework programs link too (2026-10-08): `MacOSAll` (Carbon, CoreFoundation, ApplicationServices, CoreServices,
  QuickTime ...), `CocoaAll` (Foundation, AppKit, CoreData, QuartzCore, WebKit), OpenGL, OpenAL, OpenCL and the
  `graph` unit's Mac backend - 24 stub frameworks in the SDK folder, see `bin/tools/i386-darwin/README.md`.
  SDL/FreeType/X11 still need stubs.

### 64-bit (2026-10-09)

```bash
bin/ppcx64 -Tdarwin -FDbin/tools/i386-darwin -XRbin/tools/i386-darwin/MacOSX10.6.sdk \
           -Fubin/units/x86_64-darwin/fv -Fubin/units/x86_64-darwin yourprogram.pas
```
- Runs on every Intel Mac with macOS 10.5 – 26 Tahoe, and on Apple Silicon through Rosetta 2. 32-bit programs stop at
  10.14 (Catalina dropped 32-bit).
- Same link tools; startup code and stubs are universal. Units: `bin/units/x86_64-darwin` (789 — all of the i386 set
  except `graph`, `sdlutils`/`sdlgraph`, `mmx`, `displays`/`drawsprocket`/`macos`), kit `tools/darwin64-build`.
- `CocoaAll` uses the Objective-C 2 runtime on x86_64 and links. Carbon's GUI (HIToolbox windows, QuickDraw) does not
  exist in 64-bit macOS — `MacOSAll` leaves those calls out there, which is why the Mac `graph` backend is 32-bit only.
- Test programs: `test/darwin64/`.

### Verifying the Build

```bash
# Check binary type
file yourprogram
# Should show: Mach-O executable i386

# Copy to an Intel Mac with macOS 10.6 - 10.14, chmod +x, run from Terminal.
# Test programs: test/darwin/ (README lists what to check).
```

### Units and the internal assembler (2026-10-07)

`bin/units/i386-darwin` ships every unit as `.ppu` + `libp<unit>.a` (Mach-O objects in BSD archives).
The compiler's internal Mach-O writer (`-Amacho`) was fixed on 2026-10-07 (symbol table entry size and segment
sizes); objects it writes are valid for ld64/llvm. Without `-Amacho` the compiler calls the external assembler.

### Known Limitations

- i386-darwin programs (32-bit) run on macOS 10.4 – 10.14 only: 10.15 Catalina dropped 32-bit support, and Rosetta 2
  on Apple Silicon runs 64-bit Intel programs only. Build with `ppcx64` (above) for newer Macs.
- Cocoa: FPC 2.6.4's `CocoaAll` (Objective-C 1 classes, i386) links (`test/darwin/cocoa.pas`). The Lazarus Cocoa
  widgetset (`src/lazarus/lcl/interfaces/cocoa`) has not been tried with it; Carbon or fpGUI are the safer choice for
  LCL-style GUI apps.

### USB on macOS

The `libusb.pp` unit loads `libusb-1.0.dylib` dynamically:
```bash
# Install libusb on the target Mac:
brew install libusb

# Or ship libusb-1.0.dylib alongside your binary
```

USB serial adapters (FTDI, CH340, CP2102) require vendor drivers
on macOS, or use the built-in AppleUSBFTDI/AppleUSBCH341 kexts
on macOS 10.9+.
