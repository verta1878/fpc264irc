# CWSDPMI r7 — DPMI host for DOS

CWSDPMI is a 32-bit DPMI host by Charles W. Sandmann. It provides the
protected-mode environment that FPC go32v2 binaries need to run on DOS.

## Files

| File | Purpose |
|------|---------|
| `CWSDPMI.EXE` | DPMI host — ship alongside your DOS `.exe` |
| `CWSDSTUB.EXE` | Stub with embedded DPMI — use with FPC `-WS` flag |
| `CWSDPR0.EXE` | Ring 0 variant of CWSDPMI |
| `CWSDSTR0.EXE` | Ring 0 stub variant |
| `CWSPARAM.EXE` | Configuration tool for CWSDPMI parameters |

## Usage with FPC 2.6.4irc

**Option 1 — Separate DPMI host:**
```bash
bin/ppc386 -Tgo32v2 -Fubin/units/i386-go32v2 myprogram.pas
# Ship CWSDPMI.EXE alongside myprogram.exe
cp lib/cwsdpmi/CWSDPMI.EXE ./
```

**Option 2 — Standalone EXE (embedded DPMI):**
```bash
bin/ppc386 -Tgo32v2 -WSlib/cwsdpmi/CWSDSTUB.EXE -Fubin/units/i386-go32v2 myprogram.pas
# myprogram.exe runs on bare DOS without any external files
```

## License

GPL v2 (with source) or redistributable without source per COPYING.CWS.
See `COPYING` and `COPYING.CWS`.

## Source

Full source included: `cwsdstub.asm`, `start.asm`, `mswitch.asm`,
`tables.asm`, `dpmisim.asm`, `control.c`, `exphdlr.c`, `paging.c`, etc.
Build with DJGPP: `make -f makefile`.
