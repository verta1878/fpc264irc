# MDL — Mystic Developed Library — OOP Analysis

## Source: Recovered Branch 3 (22,558 lines, 55 units)

## Architecture

The recovered MDL is **already 76% OOP** (42 of 55 units use classes).
Only 13 utility units remain procedural.

### Class Hierarchy

```
I/O Layer (abstract transport):
  TIOBase (m_io_base)
    ├── TIOSocket (m_io_sockets) — TCP/IP
    ├── TIOFossil (m_io_fossil) — FOSSIL driver
    └── TIOStdIO (m_io_stdio)  — stdin/stdout pipe

Input Layer (keyboard/console):
  TInputCRT (m_input_crt)
  TInputWindows (m_input_windows)
  TInputLinux (m_input_linux)
  TInputDarwin (m_input_darwin)
  TInput = TInputXxx (platform alias in m_input)

Output Layer (screen/console):
  TOutputCRT (m_output_crt)
  TOutputWindows (m_output_windows)
  TOutputLinux (m_output_linux)
  TOutputDarwin (m_output_darwin)
  TConsoleScrollback (m_output_scrollback) — extends TOutput
  TOutput = TOutputXxx (platform alias in m_output)

Protocol Layer:
  TProtocolBase (m_protocol_base)
    ├── TProtocolXmodem (m_protocol_xmodem)
    │     └── TProtocolYmodem (m_protocol_ymodem)
    ├── TProtocolZmodem (m_protocol_zmodem)
    └── TBinkP (m_protocol_binkp)

Network Layer:
  TSocketClass (m_socket_class)
  TServerManager (m_socket_server)
    └── TServerClient (m_socket_server) — per-connection thread
  TTCPClient (m_tcp_client)
    ├── TFTPClient (m_tcp_client_ftp)
    └── TSMTPClient (m_tcp_client_smtp)

UI Layer:
  TMenuBox (m_menubox)
  TMenuForm (m_menuform)
  TMenuHelp (m_menuhelp)
  TMenuInput (m_menuinput)

Other:
  TIniReader (m_inireader)
  TLogRoller (m_logroller)
  TFileBuffer (m_fileio)
  TTermAnsi (m_term_ansi)
  TFossil (m_fossil_io)
  TSDLCRT (m_sdlcrt)
```

### Procedural Units (13 — do NOT wrap in classes)

| Unit | Lines | Purpose |
|------|-------|---------|
| m_bits | util | Bit manipulation |
| m_crc | util | CRC-16/32 |
| m_crypt | util | Encryption |
| m_datetime | util | Date/time formatting |
| m_strings | 504 | String manipulation |
| m_types | types | Shared type definitions |
| m_ops | config | Compiler options/defines |
| m_fossil | driver | Raw FOSSIL INT 14h |
| m_prot_base | 893 | Protocol base (procedural) |
| m_prot_zmodem | 2530 | Zmodem (procedural — kiddo's) |
| m_prot_binkp | 695 | BinkP (procedural) |
| serial | driver | Serial port (UART) |
| serial_ext | driver | Extended serial |
| serial_irq | driver | IRQ-driven serial |

### Duplicate Units (Old Procedural vs New OOP)

| Old (procedural) | New (OOP) | Status |
|-------------------|-----------|--------|
| m_prot_base (893 lines) | m_protocol_base (class) | OOP ready |
| m_prot_zmodem (2530 lines) | m_protocol_zmodem (1836 lines) | OOP ready |
| m_prot_binkp (695 lines) | m_protocol_binkp (821 lines) | OOP ready |

**Our Mystic uses the m_prot_* (procedural) versions.**
The m_protocol_* (OOP) versions are the upgrade path.

## Upgrade Plan

### Phase 1: Adapter Layer (safe, reversible)
- Create thin adapter units that import m_protocol_* classes
  but expose the same procedural interface as m_prot_*
- Mystic calls the same functions, internally they use OOP
- Test: 15/15 compile, behavior identical

### Phase 2: Switchover
- Mystic units start using TProtocolZmodem directly
  instead of m_prot_zmodem procedures
- One unit at a time, test after each

### Phase 3: Merge
- Old m_prot_* units become thin wrappers around m_protocol_*
- MDL is fully OOP

## Key Insight
The recovered MDL shows g00r00 was ALREADY migrating to OOP.
The m_protocol_* units are his class rewrites of the m_prot_*
procedural code. We're continuing his work, not starting fresh.

## Credits
- g00r00 — original MDL architecture and OOP migration
- kiddo — m_prot_zmodem (2530 lines, Int64 fix)
- Recovered from Mystic BBS 1.12 branch 3
