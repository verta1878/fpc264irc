# FPC 2.6.4irc r3.1 — Network Stack Status

## TCP/IP — Full Support

| Unit | Target | PPU | What |
|------|--------|-----|------|
| sockets.pp | Linux | ✅ | TCP + UDP sockets, fpConnect/fpSend/fpRecv |
| sockets.pp | Win32 | ✅ | Winsock2 wrapper |
| sockets.pp | go32v2 | ✅ | Pure Pascal TCP (no Watt-32) |

## UDP — Full Support

`SOCK_DGRAM`, `fpsendto`, `fprecvfrom` all in the RTL sockets unit.
Used by netdb for DNS queries. Available on all targets.

```pascal
uses Sockets;
Sock := fpSocket(PF_INET, SOCK_DGRAM, 0);
fpsendto(Sock, @Buf, Len, 0, @SockAddr, SizeOf(SockAddr));
fprecvfrom(Sock, @Buf, SizeOf(Buf), 0, @SockAddr, @AddrLen);
```

## FIONREAD — Supported

Non-blocking byte count check. In RTL for all platforms:

| Platform | Unit | Value |
|----------|------|-------|
| Linux i386 | termios.inc | `$541B` |
| Linux x86_64 | termios.inc | `$4004667f` |
| Win32 | winsock.pp / winsock2.pp | `IOC_OUT or ...` |
| Netware | nwserv.pp | `1` |

```pascal
uses BaseUnix, Sockets;
fpioctl(Sock, FIONREAD, @BytesAvail);
```

Synapse and other non-blocking I/O libraries can use this directly.

## DNS Resolution — Full Support

| Unit | Target | PPU | What |
|------|--------|-----|------|
| netdb.pp | Linux | ✅ | DNS query construction, UDP nameserver lookup |
| resolve.pp | Linux | ✅ | High-level hostname resolution |

`netdb.pp` provides:
- DNS query packet construction (A, AAAA, MX, PTR records)
- UDP-based nameserver queries
- `/etc/resolv.conf` parsing
- `/etc/hosts` lookup
- Async-capable (raw UDP, no blocking OS resolver)

```pascal
uses netdb, Sockets;
// Direct DNS query:
HostAddr := ResolveName('bbs.example.com');
// Or use Resolve unit:
uses Resolve;
Resolver := THostResolver.Create(nil);
if Resolver.NameLookup('bbs.example.com') then
  IP := Resolver.AddressAsString;
```

**Note:** `netdb`/`resolve` work on Linux. Win32 uses the OS resolver
via Winsock `gethostbyname`. go32v2 has a stub (no UDP socket layer
on DOS without Watt-32).

## Serial I/O — Full Support

| Unit | Target | What |
|------|--------|------|
| serial.pas | go32v2 | UART 8250/16550 direct hardware |
| serial_irq.pas | go32v2 | IRQ-driven ring buffer + 8259 PIC |
| fossil.pas | go32v2 | FOSSIL INT 14h driver |
| m_serial.pas | all | OOP wrapper (TModemSerial) |
| netfosdl.pas | all | Serial ←→ TCP bridge |

## What wrench Needs for tork/netmodem2irc

| Need | Status |
|------|--------|
| TCP sockets | ✅ sockets.pp |
| UDP sockets | ✅ SOCK_DGRAM + fpsendto/fprecvfrom |
| FIONREAD | ✅ termios.inc / winsock.pp |
| DNS resolution | ✅ netdb.pp + resolve.pp (Linux) |
| Non-blocking I/O | ✅ FIONREAD + fpioctl |
| Serial modem | ✅ serial.pas + serial_irq.pas |
| FOSSIL | ✅ fossil.pas |
| Serial-TCP bridge | ✅ netfosdl.pas |
| Synapse compat | ✅ all deps present |

Everything is compiled and in the PPU tree. No gaps.

## Targets with Network

| Target | TCP | UDP | DNS | Serial |
|--------|-----|-----|-----|--------|
| i386-linux | ✅ | ✅ | ✅ | via /dev/ttyS* |
| i386-win32 | ✅ | ✅ | OS resolver | COM ports |
| i386-go32v2 | ✅ | stub | stub | ✅ hardware UART |
