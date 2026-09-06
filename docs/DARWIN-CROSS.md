# Darwin/macOS Cross-Compilation Guide

## FPC 2.6.4irc — Building for macOS from Linux

### Prerequisites

1. **Cross-linker**: `x86_64-apple-darwin-ld` or `i386-apple-darwin-ld`
2. **macOS SDK**: extract from Xcode Command Line Tools
3. **cctools-port**: open-source Apple linker/tools for Linux

### Option A: cctools-port (recommended)

```bash
# Install cctools-port (provides Apple ld, ar, ranlib for Linux)
git clone https://github.com/nickhutchinson/cctools-port
cd cctools-port
./configure --target=i386-apple-darwin
make && sudo make install

# Now i386-apple-darwin-ld is available
```

### Option B: Pre-built cross-tools

Pre-built Darwin cross-tools are available from:
- https://github.com/nickhutchinson/cctools-port/releases
- Or extract from a working macOS Xcode install

Place in `/usr/local/bin/` or add to `$PATH`:
```
i386-apple-darwin-ld
i386-apple-darwin-ar
i386-apple-darwin-ranlib
i386-apple-darwin-strip
```

### SDK Files Needed

From an Xcode Command Line Tools install, you need:
```
MacOSX10.x.sdk/usr/lib/
  libSystem.B.dylib   (or tbd stub)
  crt1.o
  crt1.10.6.o

MacOSX10.x.sdk/usr/include/
  (headers — only needed if compiling C code)
```

Copy these to `sdk/darwin/` in the fpc264irc tree.

### Building

```bash
# Set environment
export FPCROOT=$(pwd)
export PATH=$FPCROOT/bin:$PATH

# Cross-compile RTL for Darwin
bin/ppc386 -Tdarwin -XPi386-apple-darwin- \
  -Fu$FPCROOT/bin/units/i386-darwin \
  yourprogram.pas

# Or use the build script:
./build-darwin.sh
```

### build-darwin.sh

The included `build-darwin.sh` handles:
1. Detecting cctools-port or pre-built cross-tools
2. Finding the SDK in `sdk/darwin/` or system paths
3. Building all targets with `-Tdarwin -XPi386-apple-darwin-`

### Verifying the Build

```bash
# Check binary type
file yourprogram
# Should show: Mach-O executable i386

# Copy to a Mac and run, or use darling (Linux macOS layer):
darling shell ./yourprogram
```

### Known Limitations

- FPC 2.6.4 targets i386-darwin (32-bit). 64-bit macOS support
  (x86_64-darwin) requires FPC 3.x+ or our ppcx64 with Darwin RTL.
- macOS 10.15 Catalina dropped 32-bit support. Target 10.14 or earlier,
  or use Rosetta on Apple Silicon.
- Cocoa/ObjC frameworks not available through FPC 2.6.4 LCL.
  Use Carbon widgetset or fpGUI for GUI apps.

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
