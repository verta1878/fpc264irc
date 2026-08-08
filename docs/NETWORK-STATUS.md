# FPC 2.6.4irc r3.1 — Network Stack Status

## TCP/IP — Full Support

| Unit | Target | PPU | What |
|------|--------|-----|------|
| sockets | go32v2 | ✅ | Pure Pascal via go32 DPMI → packet driver |
| sockets | win32 | ✅ | Winsock (system) |
| sockets | linux | ✅ | BSD sockets (system) |
| sockets | freebsd | ✅ | BSD sockets (system) |
| sockets | darwin | ✅ | BSD sockets (system) |
| sockets | os2 | ✅ | EMX sockets |
| sockets | i8086 | ✅ | Pure Pascal via Dos.Intr → packet driver |

## Features — All Supported

| Feature | Status | Implementation |
|---------|--------|----------------|
| FIONREAD | ✅ | termios.inc / winsock.pp |
| UDP | ✅ | SOCK_DGRAM + fpsendto/fprecvfrom |
| DNS | ✅ | netdb.pp + resolve.pp |
| Serial | ✅ | UART 8250/16550 + FOSSIL INT 14h |
| Serial bridge | ✅ | serial_ext.pas (wrench) |
| Socket FOSSIL | ✅ | m_fossil_socket.pas |
