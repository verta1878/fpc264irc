# Linux Serial/Socket Layer — Plan for wrench

## What This Is

PCBoard's serial I/O on DOS and OS/2 goes through FOSSIL drivers
(INT 14h). Linux has no FOSSIL concept. For native Linux PCBoard
binaries, we need a replacement layer that provides the same API
but talks to sockets or pseudo-terminals instead of UART hardware.

## The Three Platforms

```
DOS:    caller → telnet → netmodem2irc → netfosdl (FOSSIL INT 14h) → PCBOARD.EXE
OS/2:   caller → telnet → netmodem2irc → netfosol (FOSSIL INT 14h) → PCBOARD2.EXE
Linux:  caller → telnet → netmodem2irc → netfosll (socket/pty)     → pcboard
```

wrench owns all three: netfosdl (done), netfosol (in progress),
netfosll (this plan).

## What ASYNC.C Exports

These are the 23 functions PCBoard calls for serial I/O. The Linux
layer must provide all of them. Current implementations:

- `ASYNC_INIT(irq, addr, inbuf, outbuf, insize, outsize, cts, share)`
  → Linux: open socket or accept fd from netmodem2irc
- `ASYNC_OPENCOM(baud, databits)`
  → Linux: no-op (socket has no baud rate)
- `ASYNC_CLOSECOM()`
  → Linux: close(fd)
- `ASYNC_COMMINKEY()`
  → Linux: non-blocking read(fd, &ch, 1) — return char or -1
- `ASYNC_CSENDBYTE(ch)`
  → Linux: write(fd, &ch, 1)
- `ASYNC_CSENDSTR(str, len)`
  → Linux: write(fd, str, len)
- `ASYNC_CGETBUF(buf, maxlen)`
  → Linux: read(fd, buf, maxlen) — return bytes read
- `ASYNC_CGETSTR(buf, maxlen)`
  → Linux: read until CR/LF or maxlen
- `ASYNC_CHECKCOMM()`
  → Linux: select(fd, timeout=0) or poll() — return 1 if data waiting
- `ASYNC_ONLINE()`
  → Linux: check if fd is still valid (fcntl or write test)
- `ASYNC_CDSTILLUP()`
  → Linux: same as ONLINE
- `ASYNC_CLEARINBUF()`
  → Linux: tcflush(fd, TCIFLUSH) or read-and-discard loop
- `ASYNC_CLEAROUTBUF()`
  → Linux: tcflush(fd, TCOFLUSH) or no-op for sockets
- `ASYNC_COMMGO()` → no-op
- `ASYNC_COMMSTOP()` → no-op
- `ASYNC_COMMPAUSE()` → no-op (or usleep for CPU yield)
- `ASYNC_TURNONDTR()` → no-op (no hardware lines on sockets)
- `ASYNC_TURNOFFDTR()` → Linux: shutdown(fd) to simulate hangup
- `ASYNC_TURNONRTS()` → no-op
- `ASYNC_TURNOFFRTS()` → no-op
- `ASYNC_TURNONFIFO()` → no-op
- `ASYNC_TURNONXMIT()` → no-op
- `ASYNC_SETPORT()` → no-op

## Globals to Provide

```c
char volatile CDokay;       /* 1 = connected, 0 = disconnected */
char volatile _CTSokay;     /* always 1 on sockets */
char volatile _RingDetect;  /* always 0 */
char CDup;                  /* 1 = connected */
char B8250, B16550, B16550A, B16650;  /* all 0, no UART */
int volatile _InBytes;      /* bytes received counter */
int volatile _OutBytes;     /* bytes sent counter */
int volatile _OverrunErrors, _ParityErrors, _FramingErrors;  /* all 0 */
```

## Architecture Options

### Option A: Unix Domain Socket (simplest)

netmodem2irc listens on telnet port, accepts caller, creates a
Unix domain socket pair. Passes one fd to pcboard via environment
variable or command-line arg. pcboard opens that fd in ASYNC_INIT.

```
netmodem2irc
  ├─ listen(:23)
  ├─ accept(caller)
  ├─ socketpair(AF_UNIX, SOCK_STREAM, fds[2])
  ├─ fork/exec pcboard with fd=fds[1]
  └─ proxy: caller ↔ fds[0]

pcboard (ASYNC_INIT)
  └─ fd = atoi(getenv("PCBFD"))  /* or argv */
```

### Option B: TCP Loopback (matches DOSBox nullmodem)

netmodem2irc connects to localhost:port. pcboard listens on that
port in ASYNC_INIT. Same pattern as DOSBox nullmodem but native.

```
pcboard (ASYNC_INIT)
  ├─ listen(localhost:PORT)
  └─ accept() → fd

netmodem2irc
  └─ connect(localhost:PORT)
```

### Option C: Pseudo-Terminal (most Unix-like)

netmodem2irc creates a pty pair. PCBoard reads/writes the slave
side. Allows mgetty-style integration and `screen`/`minicom` attach.

```
netmodem2irc
  ├─ openpty(&master, &slave, ...)
  ├─ fork/exec pcboard with slave as stdin/stdout
  └─ proxy: caller ↔ master

pcboard (ASYNC_INIT)
  └─ fd = STDIN_FILENO  /* or open(slave_path) */
```

## Recommendation

**Option A (Unix domain socket)** is simplest and most reliable.
No port conflicts, no pty weirdness, no listen/accept race.
netmodem2irc already manages the caller connection — it just
needs to pipe bytes to pcboard's fd.

Option C (pty) is nice for debugging (can attach minicom to the
slave side) but adds complexity.

## Key Differences from FOSSIL

| FOSSIL (DOS/OS/2) | Linux Socket |
|---|---|
| INT 14h software interrupt | read()/write() syscalls |
| Polling loop for input | select()/poll() — blocks efficiently |
| UART status register bits | Return value from read/select |
| Carrier Detect (DCD pin) | Socket EOF / EPIPE |
| DTR drop = hangup | shutdown(fd, SHUT_WR) |
| Baud rate setting | No-op (TCP has no baud rate) |
| Hardware flow control | TCP handles flow control |
| IRQ-driven receive | Kernel buffered, select() notifies |

## CPU Hog Fix

The DOS FOSSIL code busy-polls for input (known bug, 23-reply
thread on alt.bbs.pcboard). The Linux version MUST NOT do this.
Use select() with a timeout instead of tight polling:

```c
int ASYNC_COMMINKEY(void) {
    fd_set fds;
    struct timeval tv;
    char ch;

    FD_ZERO(&fds);
    FD_SET(comm_fd, &fds);
    tv.tv_sec = 0;
    tv.tv_usec = 10000;  /* 10ms timeout — yield CPU */

    if (select(comm_fd + 1, &fds, NULL, NULL, &tv) > 0) {
        if (read(comm_fd, &ch, 1) == 1) {
            _InBytes++;
            return (unsigned char)ch;
        }
        CDokay = 0;  /* read failed = disconnected */
        return -1;
    }
    return -1;  /* no data */
}
```

This applies to the DOS FOSSIL version too — add a brief
`int 28h` (DOS idle) or HLT between polls.

## Files to Create

```
platform/linux/async_linux.c    — Linux ASYNC implementation
platform/linux/async_linux.h    — Platform-specific defines
platform/os2/async_os2.c        — OS/2 ASYNC (wraps netfosol/SIO)
MAIN/SOURCE/ASM/ASYNC.C         — DOS ASYNC (wraps netfosdl, exists)
```

## Build Integration

```c
/* In the main PCBoard source, select backend at compile time: */
#if defined(__LINUX__)
  #include "async_linux.c"
#elif defined(__OS2__)
  #include "async_os2.c"
#else
  /* DOS — existing ASYNC.C with FOSSIL INT 14h */
#endif
```

## Testing

1. Compile async_linux.c standalone, link with a test harness
   that opens a socket, sends "ATZ\r\n", reads response
2. Test with netmodem2irc on localhost — telnet in, verify
   characters echo correctly through the socket layer
3. Stress test: sustained transfer (download), verify _InBytes
   and _OutBytes counters, check for data loss
4. Hangup test: disconnect telnet client, verify CDokay goes to 0
   and pcboard detects carrier loss

## Dependencies

- POSIX: sys/socket.h, sys/select.h, unistd.h, fcntl.h
- No external libraries needed
- OpenWatcom Linux target or GCC

## Timeline

This is blocked by the Linux native compile effort (all the DOS
int86/bdos/inp/outp calls need porting first). The serial layer
is one piece of a larger port. But it can be developed and tested
standalone before the full PCBoard Linux port is ready.
