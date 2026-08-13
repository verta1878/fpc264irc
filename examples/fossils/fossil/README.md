# FOSSIL Drivers

FOSSIL drivers for 4 platforms. Each driver bridges TCP/IP
(telnet callers) to the BBS software's serial I/O API.

```
Caller (Telnet)
  → NMServer (TCP listener)
    → FOSSIL driver (platform-specific)
      → BBS software (Mystic/PCBoard)
```

## Platforms

| Platform | Driver | Status |
|----------|--------|--------|
| DOS | fossil.pas + serial.pas + serial_irq.pas | ✅ Done |
| Linux | async_linux.c | In progress (wrench) |
| OS/2 | netfosol.pas (SIO/SIO2K) | In progress |
| Windows | netfoswl.pas (Win32 API) | In progress |

## Also See
- `examples/fossil-socket/` — socket-based FOSSIL backend (all platforms)
- `libs/serial/serial_ext.pas` — bridge between FPC serial and MDL
- `libs/fossil/fossil.pas` — canonical FOSSIL INT 14h driver
- `examples/sio/` — evga's OS/2 SIO2K rebuild
