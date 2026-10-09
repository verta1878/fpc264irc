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

- FPC 2.6.4 targets i386-darwin (32-bit). 64-bit macOS support
  (x86_64-darwin) requires FPC 3.x+ or our ppcx64 with Darwin RTL.
- macOS 10.15 Catalina dropped 32-bit support. Target 10.14 or earlier,
  or use Rosetta on Apple Silicon.
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
