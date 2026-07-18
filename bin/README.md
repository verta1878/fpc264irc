# FPC 2.6.4irc — Prebuilt Binaries

```
bin/
├── ppc386                    # i386 compiler (COFF fix included)
├── ppcx64                    # x86_64 compiler
└── units/
    ├── x86_64-linux/         # 62 units + sockets.ppu
    ├── i386-linux/           # RTL (needs rebuild with new compiler)
    ├── i386-freebsd/         # RTL (needs rebuild with new compiler)
    ├── i386-go32v2/          # 52 units + sockets.ppu (COFF fix, no -Aas needed)
    ├── i386-win32/           # RTL (needs rebuild with new compiler)
    └── i386-os2/             # empty (needs patched toolchain)
```

## Proven

```bash
bin/ppc386 -iW                # 2.6.4irc
bin/ppc386 -Tgo32v2 -Fubin/units/i386-go32v2 -Fllib/watt32/lib prog.pas
# → 148KB DJGPP go32 DOS executable, no -Aas
```
