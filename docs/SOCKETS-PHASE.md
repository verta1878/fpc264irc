# Phase 31 — Pure Pascal Sockets Completion

## Architecture

The sockets unit provides InitWatt32/DoneWatt32 as primitives.
The program wraps them in a class with Create/Destroy and calls
them inside try/finally. The RTL never forces cleanup because:

- The program controls shutdown order (close sockets before 
  unhooking the driver)
- A TSR never exits — calling DoneWatt32 would break networking
  while it's still resident
- Double-free risk if both a destructor and a finalization 
  section call DoneWatt32

This is how sock_exit worked in Watt-32, how WSAStartup/WSACleanup
works on Windows, and how DOS TSR programs have always managed
their vectors. The unit provides Init/Done, the program calls them.

## Remaining Work

| Item | Effort | Unblocks |
|------|--------|----------|
| FIONREAD in ioctlSocket | 1 line — return SockTable[Sock].RxLen | byte-count queries |
| UDP send/recv | medium — build UDP/IP header, demux in callback | DNS, future UDP protocols |
| Wire BuildDNSQuery into ResolveName | small once UDP works | hostname resolution (currently dotted-quad only) |
| Verify fpListen/fpAccept | check if they're stubs | server-side sockets |
| Receive-path test on real hardware | needs the 386 | confidence in the whole stack |

## Status

The TCP side — state machine, checksums, ARP, packet driver — is done.
What's left is UDP (needed for DNS) and one missing line in ioctlSocket.
The hard 90% is built.

## Files

- `src/rtl/go32v2/sockets.pp` — 1,271 lines, pure Pascal
- `src/rtl/msdos/sockets.pp` — 1,268 lines, pure Pascal (i8086)
- `src/rtl/go32v2/tcpip.pas` — thin wrapper
- `src/rtl/go32v2/resolve.inc` — dotted-quad parser

## Serial Port Unit (Phase 32)

Pure Pascal UART 8250/16550 driver for DOS.
Same API as FPC's serial unit (Unix/Windows).

| Feature | Status |
|---------|--------|
| COM1-COM4 port detection | ✅ |
| UART type detection (8250/16450/16550A/16750) | ✅ |
| Baud rate: 300-115200 | ✅ |
| Data bits: 5-8 | ✅ |
| Parity: None/Odd/Even/Mark/Space | ✅ |
| Stop bits: 1-2 | ✅ |
| FIFO control (16550+) | ✅ |
| Modem signals: DTR, RTS, CTS, DSR, DCD, RI | ✅ |
| SerRead/SerWrite (polled I/O) | ✅ |
| SerDataAvailable (non-blocking check) | ✅ |
| SerBreak | ✅ |
| Interrupt-driven receive | TODO |

### For netmodem2irc

```
Modem ←→ COM1 (serial unit) ←→ tork ←→ TCP (sockets unit) ←→ IRC
```

### Files

- `src/packages/serial/serial.pp` — DOS UART implementation (202 lines)
- `libs/serial/serial.pas` — standalone codec copy
- `libs/serial/README.md` — docs
