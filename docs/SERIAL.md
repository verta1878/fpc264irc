# Serial Unit — Cross-Platform Serial Port API

**FPC 2.6.4irc r311** — 26 unified functions across 9 platforms.

## Quick Start

```pascal
uses Serial;

var
  H: TSerialHandle;
  Buf: array[0..255] of Byte;
  N: LongInt;
begin
  H := SerOpen('/dev/ttyS0');     { Linux/BSD/Mac }
  { H := SerOpen('COM1'); }       { Windows/OS2/DOS }

  SerSetParams(H, 9600, 8, NoneParity, 1, []);
  SerSetDTR(H, True);
  SerSetRTS(H, True);

  Buf[0] := $55;
  SerWrite(H, Buf, 1);

  N := SerReadTimeout(H, Buf, SizeOf(Buf), 1000);  { 1s timeout }
  if N > 0 then
    WriteLn('Received ', N, ' bytes');

  SerClose(H);
end.
```

## Platforms

| Target          | Backend                    | Device Names          |
|-----------------|----------------------------|-----------------------|
| x86_64-linux    | termios (ioctl)            | /dev/ttyS0, /dev/ttyUSB0 |
| x86_64-win64    | Windows COM API            | COM1..COM255          |
| x86_64-freebsd  | termios (ioctl)            | /dev/cuau0            |
| i386-linux      | termios (ioctl)            | /dev/ttyS0, /dev/ttyUSB0 |
| i386-win32      | Windows COM API            | COM1..COM255          |
| i386-freebsd    | termios (ioctl)            | /dev/cuau0            |
| i386-darwin     | termios (ioctl)            | /dev/cu.serial        |
| i386-go32v2     | direct UART 8250/16550     | COM1..COM4            |
| i386-os2        | DosDevIOCtl ASYNC          | COM1..COM4            |

## Types

```pascal
type
  TSerialHandle = LongInt;         { file descriptor / handle }
  TParityType   = (NoneParity, OddParity, EvenParity);
  TSerialFlags  = set of (sfRtsControl);
  TSerialState  = record
    BitsPerSec: LongInt;
    ByteSize:   Integer;
    Parity:     TParityType;
    StopBits:   Integer;
    Flags:      TSerialFlags;
  end;

const
  InvalidSerialHandle = TSerialHandle(-1);
```

## API Reference — 26 Functions

### Core I/O

| Function | Description |
|----------|-------------|
| `SerOpen(DeviceName): TSerialHandle` | Open a serial port. Returns InvalidSerialHandle on failure. |
| `SerClose(Handle)` | Close the port. |
| `SerRead(Handle, Buffer, Count): LongInt` | Non-blocking read. Returns bytes read (0 if none available). |
| `SerWrite(Handle, Buffer, Count): LongInt` | Write bytes. Returns bytes written. |
| `SerFlush(Handle)` | Flush both input and output buffers. |
| `SerReadTimeout(Handle, Buffer, Count, Timeout): LongInt` | Read with timeout in milliseconds. Returns 0 on timeout. |
| `SerDataAvailable(Handle): Boolean` | True if bytes waiting in receive buffer. |

### Configuration

| Function | Description |
|----------|-------------|
| `SerSetParams(Handle, BitsPerSec, ByteSize, Parity, StopBits, Flags)` | Set baud rate, data bits (5-8), parity, stop bits (1-2). |
| `SerSaveState(Handle): TSerialState` | Save current port configuration. |
| `SerRestoreState(Handle, State)` | Restore saved configuration. |

### Modem Control Lines

| Function | Description |
|----------|-------------|
| `SerSetDTR(Handle, State)` | Set Data Terminal Ready on/off. |
| `SerSetRTS(Handle, State)` | Set Request To Send on/off. |
| `SerGetCTS(Handle): Boolean` | Read Clear To Send. |
| `SerGetDSR(Handle): Boolean` | Read Data Set Ready. |
| `SerGetRI(Handle): Boolean` | Read Ring Indicator. |
| `SerGetCD(Handle): Boolean` | Read Carrier Detect (DCD). |

### Flow Control

| Function | Description |
|----------|-------------|
| `SerBreak(Handle)` | Send a break signal (~250ms). |
| `SerDrain(Handle)` | Wait until all output has been transmitted. |
| `SerSync(Handle)` | Synonym for SerDrain. |
| `SerFlushInput(Handle)` | Discard all received data in input buffer. |
| `SerFlushOutput(Handle)` | Wait for output to complete, then flush. |

### Hardware Control

| Function | Description |
|----------|-------------|
| `SerDetectUART(Handle): String` | Identify UART type. DOS: '8250'/'16450'/'16550'/'16550A'/'16750'. Unix: 'tty'. Win: from GetCommProperties. OS/2: 'SIO'. |
| `SerSetFIFO(Handle, Enable, TriggerLevel)` | Configure receive FIFO. DOS: direct FCR register. Unix: VMIN/VTIME. Win: SetupComm buffer size. OS/2: DCBINFO. TriggerLevel: 1, 4, 8, or 14 bytes. |
| `SerGetBase(Handle): Word` | DOS: I/O port base address ($3F8, $2F8, $3E8, $2E8). Other platforms: handle/fd as identifier. |
| `SerEnableIRQ(Handle)` | DOS: install ISR with ring buffer. Unix: set VMIN=1 for immediate reads. Win: SetCommMask EV_RXCHAR. OS/2: start transmit event. |
| `SerDisableIRQ(Handle)` | Reverse of SerEnableIRQ. |

## Platform Implementation Notes

### Unix (Linux, FreeBSD, Darwin, BSD)
All functions use POSIX termios, ioctl with TIOCMGET/TIOCMSET, tcflush, tcdrain, tcsendbreak, and fpSelect. Source: `src/rtl/unix/serial.pp`.

### Windows (Win32, Win64)
Uses CreateFile, SetCommState, GetCommModemStatus, SetCommMask, ClearCommError, PurgeComm, SetupComm, GetCommProperties. Source: `src/rtl/win/serial.pp` (from FPC 3.2.2, extended).

### OS/2
Uses DosOpen, DosRead, DosWrite, DosDevIOCtl with IOCTL_ASYNC category ($01). Functions $41-$4E for set, $61-$68 for get. Source: `src/rtl/os2/serial.pp` (new, 247 lines).

### DOS (go32v2)
Direct UART 8250/16550 register access via Port[]. ISR-driven ring buffer for interrupt receive (requires native DOS build for ISR; cross-compiled builds stub SerEnableIRQ/SerDisableIRQ). Source: `src/packages/serial/serial.pp` + `serial_irq.inc`.

## Building

```bash
# Test compiles on all platforms with:
fpc -Mdelphi test/test_serial.pas

# Run with hardware test:
./test_serial -hw
```

## Source Files

| File | Platform | Lines |
|------|----------|-------|
| `src/rtl/unix/serial.pp` | Linux, FreeBSD, Darwin, BSD | 343 |
| `src/rtl/win/serial.pp` | Win32, Win64 | 558 |
| `src/rtl/os2/serial.pp` | OS/2 | 247 |
| `src/packages/serial/serial.pp` | DOS go32v2 | 260 |
| `src/packages/serial/serial_irq.inc` | DOS ISR ring buffer | — |
| `test/test_serial.pas` | Cross-platform test | 200 |
