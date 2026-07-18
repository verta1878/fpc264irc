# Watt-32 Integration for i8086 DOS Sockets

## Status

| Component | Status |
|-----------|--------|
| `sockets.pp` source | ✅ Written (`src/rtl/msdos/sockets.pp`) |
| `wattcpwl.lib` (16-bit) | ⏳ Needs building with OpenWatcom |
| `sockets.ppu` | ⏳ Blocked on `wattcpwl.lib` |
| `netmodem.pas` (FOSSIL↔TCP) | ✅ Written, waiting on sockets.ppu |

## Build Steps for the Author

### Step 1: Build Watt-32 for 16-bit DOS

```bash
git clone https://github.com/gvanem/Watt-32.git
cd Watt-32/src
wmake -f watcom_l.mak
# → lib/wattcpwl.lib (16-bit large model OMF)
```

### Step 2: Add to repo

```bash
cp Watt-32/lib/wattcpwl.lib fpc264irc/lib/watt32/
```

### Step 3: Compile sockets for i8086

```bash
ppcross8086 -Tmsdos -s -CX \
  -Fl lib/watt32 \
  -Fu bin/units/i8086-msdos \
  -FU bin/units/i8086-msdos \
  src/rtl/msdos/sockets.pp
```

### Step 4: Process smartlinks + commit

```bash
cd bin/units/i8086-msdos/sockets.sl
for f in *.s; do
    fixasm.py "$f"
    nasm -f obj -o "${f%.s}.o" "$f"
done
git add -f bin/units/i8086-msdos/sockets.ppu
git add bin/units/i8086-msdos/sockets.sl/
git push
```

### Step 5: Build netmodem

```bash
build-dos.sh netmodem.pas nm.exe
# → nm.exe: DOS MZ executable, FOSSIL↔TCP bridge
```

## Architecture

```
nm.exe (netmodem)
├── FOSSIL half: INT 14h via Intr()     ← WORKS NOW
│   init/deinit/read/write/status
└── TCP half: Watt-32 BSD sockets       ← NEEDS wattcpwl.lib
    socket/connect/send/recv/close
    DNS via gethostbyname()
```

## Notes

- Socket handle type is `LongInt` (32-bit) — FPC handles this on i8086
  via register pairs (DX:AX)
- Watt-32 external names use `_s` suffix (`bind_s`, `connect_s` etc.)
  to avoid conflicts with Pascal reserved words
- The FPC-compatible wrappers (`WattInit`, `WattTCPConnect` etc.) provide
  a simpler API for door/BBS programs
- `htons`/`htonl`/`ntohs`/`ntohl` handle byte order conversion
- DNS resolution via `gethostbyname` returns host-order address
