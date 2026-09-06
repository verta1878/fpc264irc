# FPC 2.6.4irc r311

Free Pascal Compiler — IRC/BBS Toolchain Edition

## What Is This

A complete Pascal development environment rebuilt from FPC 2.6.4 source,
targeting retro computing: BBS systems, DOS, Win9x, and cross-platform
console applications. Includes native x64 compiler, USB stack, and
Lazarus IDE with LCL widgetset.

## Platforms

| Target | Compiler | PPUs | Usage |
|--------|----------|------|-------|
| Win64 | ppcx64 | 1,012 | `ppcx64 -Twin64 myapp.pas` |
| Win32 (default) | ppc386 | 1,521 | `ppc386 -Twin32 myapp.pas` |
| Win9x ANSI | ppc386 | 1,521 | `ppc386 -Twin32 myapp.pas` (default=ANSI) |
| Linux x86_64 | ppcx64 | 529 | `ppcx64 -Tlinux myapp.pas` |
| Linux i386 | ppc386 | 252 | `ppc386 -Tlinux myapp.pas` |
| DOS (go32v2) | ppc386 | 308 | `ppc386 -Tgo32v2 myapp.pas` |
| DOS 16-bit | ppcross8086 | 113 | `ppcross8086 -Tmsdos myapp.pas` |
| FreeBSD i386 | ppc386 | 160 | `ppc386 -Tfreebsd myapp.pas` |

## What's Included

- **ppcx64** — native 64-bit Pascal compiler (3-stage bootstrapped, ELF64)
- **ppc386** — 32-bit Pascal compiler (FPC 2.6.4 core)
- **ppcross8086** — 16-bit cross-compiler (DOS real mode)
- **lazarus.exe** — Lazarus IDE (18 MB, LCL Win32 widgetset)
- **14 FPC tools** — fpcmake, fpcres, h2pas, ppudump, etc.
- **USB stack** — 9 units: usbcore, usbpci, usbhid, usbtrans, usbxhci, usbhub, usbmsd, libusb, usbserial
- **fpGUI toolkit** — lightweight alternative to LCL
- **Complete source** — RTL, packages, compiler, LCL, IDE

## Key Features

- **Native x64 compiler** — 4 compiler patches fix FPC 2.6.4's x64 codegen; 1,012 Win64 PPUs from unmodified source
- **USB stack** — FTDI/CH340/CP2102/PL2303 serial adapters, mass storage, HID, hub, xHCI controller
- **IUnknown native** — const keyword works, no CORBA hack needed
- **Win9x compatible** — win32compat.pas ANSI backport (U-1)
- **glibc 2.34+ fix** — dl.o reimplemented for modern Linux
- **Zero RTL workarounds** — all x64 fixes are compiler-level, RTL source is unmodified

## Quick Start

```
ppc386 -Twin32 myapp.pas        # Windows 32-bit
ppcx64 -Twin64 myapp.pas        # Windows 64-bit
ppc386 -Tlinux myapp.pas        # Linux 32-bit
ppcx64 -Tlinux myapp.pas        # Linux 64-bit
ppc386 -Tgo32v2 myapp.pas       # DOS
```

## USB Stack

9 units, 3,334 lines. See `docs/USB.md` for full API reference.

```pascal
uses USBSerial;
var Dev: TUSBSerialDevice;
begin
  USBSerialOpen($0403, $6001, Dev);   { FTDI FT232 }
  USBSerialSetBaud(Dev, 115200);
  USBSerialSetLineParams(Dev, 8, 1, 0);
  { ... read/write ... }
  USBSerialClose(Dev);
end.
```

*More serial examples coming — see docs/USB.md.*

## x64 Compiler Bootstrap

4 patches to `src/compiler/`, 3-stage build. See `docs/X64-BOOTSTRAP.md`.

```
bin/ppc386 → ppcx64 (i386 binary) → ppcx64 (native ELF64)
```

| Patch | Fix |
|-------|-----|
| `defutil.pas` | Ordinal range check demoted to warning |
| `nopt.pas` | Multi-string concat optimization disabled |
| `symdef.pas` | ICE 99080501 + 200204176 graceful fallback |
| `fppu.pas` | Timestamp/CRC bypass for bootstrap |

## Tests

7 compilation tests verify the rebuilt PPU chain:

1. IUnknown native const (no CORBA hack)
2. fpjson + jsonparser
3. DOM + XMLRead
4. classes + typinfo RTTI
5. registry (Win32)
6. fphttpclient (network)
7. test_usb (USB stack)

## The Crew

| Handle | Role |
|--------|------|
| verta1878 | Project lead |
| sysop/0 | Compiler engineer |
| evga | Display, Mystic, SIO rebuild |
| kiddo | Protocols, RIPscrip |
| wrench | Transport, FOSSIL, DVI/HDMI |
| hexadecimal | PCBoard, Cyclades |

the crew 4free — x86 little endian
