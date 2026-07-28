# FOSSIL Driver + Network Layer

Pure Pascal FOSSIL driver and serial-to-TCP bridge for DOS.

## Architecture

```
Modem ←→ UART 16550 ←→ IRQ 4 ←→ SerISR ←→ Ring Buffer (4KB)
         serial.pas    serial_irq.inc            ↓
         (sysop/0)       (kiddo)           SerReadRing
                                                 ↓
                                      FossilDispatch (fossil.pas)
                                                 ↓
                                         netfosdl.pas
                                                 ↓
                                    TCP (sockets.pp) ←→ IRC
```

## Files

| File | Lines | What |
|------|-------|------|
| fossil.pas | FOSSIL INT 14h API — Init, Send, Recv, Status, Block I/O |
| netfosdl.pas | Serial ←→ TCP bridge — transparent, AT cmd, Telnet modes |
| README.md | This file |

## FOSSIL Functions

| AH | Function | Description |
|----|----------|-------------|
| $00 | SetBaud | Set baud rate from FOSSIL code byte |
| $01 | SendChar | Transmit one byte (blocking) |
| $02 | RecvChar | Receive one byte (from ring buffer) |
| $03 | Status | RX data available + TX ready flags |
| $04 | Init | Open port, enable IRQ, return $1954 |
| $05 | Deinit | Close port, disable IRQ |
| $08 | FlushOutput | Drain TX |
| $09 | PurgeOutput | Discard TX |
| $0A | PurgeInput | Discard RX ring |
| $0B | SendNoWait | Transmit one byte (non-blocking) |
| $0C | Peek | Look at next byte without consuming |
| $0F | SetFlow | RTS/CTS and XON/XOFF control |
| $10 | SetDTR | Raise/lower DTR |
| $18 | ReadBlock | Bulk read from ring buffer |
| $19 | WriteBlock | Bulk write to UART |
| $1B | GetInfo | Driver info structure |

## Credits

| Who | What |
|-----|------|
| sysop/0 | serial.pas, fossil.pas, netfosdl.pas |
| kiddo | serial_irq.inc (ISR + ring buffer), SerFlush |
| wrench | tork netmodem2irc integration |

## License

GPLv3 — Part of fpc264irc.
