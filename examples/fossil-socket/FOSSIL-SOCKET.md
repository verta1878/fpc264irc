# FOSSIL Socket Backend

## What This Is

A socket-based FOSSIL replacement for BBS software on modern platforms.
Traditional FOSSIL uses INT 14h (DOS) or SIO (OS/2) to talk to serial
hardware. This unit provides the same API shape over TCP sockets,
Unix domain sockets, or pseudo-terminals.

## Platforms

| Platform | FOSSIL method | Unit/File |
|----------|--------------|-----------|
| DOS | INT 14h (X00/BNU/NetFoss) | m_fossil.pas (existing) |
| OS/2 | SIO/VMODEM | m_fossil.pas + SIO driver |
| Linux | Socket fd from netmodem2irc | **m_fossil_socket.pas** |
| FreeBSD | Same as Linux (POSIX) | **m_fossil_socket.pas** |
| macOS | Same as Linux (POSIX) | **m_fossil_socket.pas** |
| Windows | Named pipe or TCP loopback | **m_fossil_socket.pas** |

## Architecture

```
Caller → telnet → netmodem2irc ──┐
                                  │ socketpair / TCP loopback
                                  ▼
                          TFossilSocket.InitFromFD(fd)
                                  │
                          BBS reads/writes via
                          Send(), Recv(), RecvReady()
                                  │
                          Carrier detect via Connected()
                          Hangup via HangUp() (SHUT_WR)
```

## Three Init Modes

### Option A: fd from netmodem2irc (recommended)
```pascal
fd := StrToInt(GetEnvironmentVariable('BBSFD'));
Socket := TFossilSocket.Create;
Socket.InitFromFD(fd);
```
netmodem2irc creates a socketpair, forks the BBS process, passes
one fd via environment variable. Simplest, no port conflicts.

### Option B: listen + accept
```pascal
Socket := TFossilSocket.Create;
Socket.InitAccept(9000);  // blocks until netmodem2irc connects
```
BBS listens on localhost:9000. netmodem2irc connects to it.
Same pattern as DOSBox nullmodem but native.

### Option C: connect to port
```pascal
Socket := TFossilSocket.Create;
Socket.InitConnect(9000);  // connects to netmodem2irc
```
netmodem2irc listens, BBS connects. Good for testing.

## API Reference

| Method | FOSSIL equivalent | Notes |
|--------|-------------------|-------|
| InitFromFD(fd) | FOSSIL init (04h) | Open from existing fd |
| InitAccept(port) | FOSSIL init (04h) | Listen + accept |
| InitConnect(port) | FOSSIL init (04h) | Connect to port |
| Deinit | FOSSIL deinit (05h) | Close socket |
| Send(S) | Send byte/string (01h) | Returns bytes sent |
| SendByte(B) | Send byte (01h) | Single byte |
| Recv(MaxLen) | Receive (02h) | Returns string |
| RecvReady | Status check (03h) | select() with 10ms timeout |
| Connected | Carrier detect (03h) | MSG_PEEK test |
| Flush | Flush output (08h) | No-op for TCP |
| PurgeInput | Purge input (0Ah) | Drain receive buffer |
| HangUp | DTR drop (06h) | fpShutdown(SHUT_WR) |

## CPU Hog Fix

The DOS FOSSIL busy-polls for input. This unit uses `select()` with
a 10ms timeout in RecvReady — yields CPU instead of spinning at 100%.
This fix should be backported to the DOS FOSSIL path too (use INT 28h
idle interrupt between polls).

## Integration with TFossil (MDL)

Add `fbSocket` to `TFossilBackend` enum in `m_fossil_io.pas`:

```pascal
Type
  TFossilBackend = (fbSerial, fbInt14, fbSocket);
```

Add `TFossilSocket` as a third backend in the Case statements.
TIOFossil constructor selects the backend based on command-line flags:

```
mystic -COM1 -FOSSIL         → fbInt14 (DOS)
mystic -COM1                 → fbSerial (Win32/Unix serial)
mystic -SOCKET -FD=5         → fbSocket (netmodem2irc)
mystic -SOCKET -PORT=9000    → fbSocket (listen mode)
```

## OpenWatcom Port (for hexadecimal / PCBoard)

The same logic ports to C for PCBoard's `async_linux.c`:

```c
#include <sys/socket.h>
#include <sys/select.h>

static int comm_fd = -1;
static int comm_active = 0;

int ASYNC_INIT_SOCKET(int fd) {
    comm_fd = fd;
    comm_active = (fd >= 0);
    return comm_active;
}

int ASYNC_COMMINKEY(void) {
    fd_set fds;
    struct timeval tv = {0, 10000};  /* 10ms */
    char ch;
    FD_ZERO(&fds);
    FD_SET(comm_fd, &fds);
    if (select(comm_fd + 1, &fds, NULL, NULL, &tv) > 0) {
        if (read(comm_fd, &ch, 1) == 1) return (unsigned char)ch;
        comm_active = 0;
        return -1;
    }
    return -1;
}

int ASYNC_ONLINE(void) {
    char buf;
    int n = recv(comm_fd, &buf, 1, MSG_PEEK | MSG_DONTWAIT);
    if (n == 0) { comm_active = 0; return 0; }
    return comm_active;
}

void ASYNC_TURNOFFDTR(void) {
    shutdown(comm_fd, SHUT_WR);  /* simulate hangup */
    comm_active = 0;
}
```

Map all 23 ASYNC_* functions per wrench's LINUX_SERIAL_PLAN.md.
Compile with `wcc386 -bt=linux` (OpenWatcom) or `gcc`.

## Files

- `m_fossil_socket.pas` — Pascal implementation (189 lines)
- `FOSSIL-SOCKET.md` — this document
- `LINUX_SERIAL_PLAN.md` — wrench's full 23-function mapping

## Credits

- wrench — LINUX_SERIAL_PLAN.md, netmodem2irc, architecture
- sysop/0 — m_fossil_socket.pas implementation
- hexadecimal — OpenWatcom/C port (planned)
- The Crew: verta1878, evga, kiddo

## License

GPLv3
