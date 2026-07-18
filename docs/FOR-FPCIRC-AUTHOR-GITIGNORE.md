# For the fpc264irc Author — .gitignore PPU Blocker

## The Problem

Your `.gitignore` line 4 has `*.ppu` which blocks ALL `.ppu` files from
being committed. The i8086 RTL `.ppu` files never make it to GitHub.
Users who clone the repo get:

```
Fatal: Can't find unit system used by <program>
```

## The Fix (3 commands)

```bash
# 1. Allow shipped PPUs through .gitignore:
echo '!bin/units/**/*.ppu' >> .gitignore
echo '!bin/units/**/*.o'   >> .gitignore

# 2. Force-add the i8086 RTL PPUs (and all other target PPUs):
git add -f bin/units/i8086-msdos/*.ppu
git add -f bin/units/i386-linux/*.ppu
git add -f bin/units/i386-win32/*.ppu
git add -f bin/units/i386-go32v2/*.ppu
git add -f bin/units/i386-freebsd/*.ppu
git add -f bin/units/i386-os2/*.ppu
git add -f bin/units/x86_64-linux/*.ppu

# 3. Push:
git commit -m "Fix .gitignore: allow shipped PPU files (were blocked by *.ppu rule)"
git push
```

## What This Unblocks

Your `sockets.pp` Watt-32 wrapper at `src/rtl/go32v2/sockets.pp` is
ready. We have `netmodem.pas` (FOSSIL + sockets bridge, 135 lines)
waiting to compile against it.

Once `system.ppu` + `dos.ppu` + `sockets.ppu` are in the repo,
netmodem2irc compiles and links to a DOS .exe.

## Current i8086 PPU Inventory (in our zip)

We rebuilt 17 PPUs from FPC 3.0.4 source with the fixed ppcross8086:

```
system    (1941 smartlinks)    keyboard  (59 smartlinks)
dos       (84 smartlinks)     objects   (242 smartlinks)
crt       (71 smartlinks)     ports     (14 smartlinks)
strings   (25 smartlinks)     getopts   (35 smartlinks)
objpas    (36 smartlinks)     printer   (10 smartlinks)
sysconst                      sha1      (18 smartlinks)
rtlconst                      crc       (23 smartlinks)
utextmouse (17 smartlinks)    seteuid_unit (stub)
doorkit86
```

All verified: doorkit86 compiles + links + runs on DOSBox.

---

## Sockets for i8086-msdos

Your `src/rtl/go32v2/sockets.pp` (Watt-32 wrapper) is the go32v2
(32-bit DPMI) version. For i8086 (16-bit real mode), it needs:

1. **Recompile with ppcross8086** — may compile as-is if the API
   surface uses `Word`/`Integer` instead of `LongWord`/`PtrInt`
2. **16-bit type adjustments** — pointer sizes are 2 bytes not 4,
   `LongWord` is 4 bytes on both but socket handles may differ
3. **`{$linklib watt}`** needs a 16-bit `libwatt.a` — Watt-32 has
   a small-model 16-bit build (`watt16s.lib` or similar)
4. **Commit** `sockets.ppu` + `sockets.sl/*.o` to
   `bin/units/i8086-msdos/`

**What we have working:**

```
netmodem.pas (135 lines) — FOSSIL ↔ TCP bridge
├── FOSSIL half: INT 14h via Intr() — COMPILED, VERIFIED on DOSBox
└── TCP half: uses sockets — WAITING on sockets.ppu for i8086
```

The FOSSIL side (doorkit86 example) compiles and runs. Once
`sockets.ppu` lands for i8086-msdos, netmodem2irc links to a
single DOS .exe that bridges a FOSSIL port to a TCP socket.

**Quick test once sockets.ppu exists:**

```bash
ppcross8086 -Tmsdos -Fubin/units/i8086-msdos netmodem.pas
# → netmodem.exe (DOS MZ, runs under DOSBox with Watt-32)
```
