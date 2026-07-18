# Watt-32 TCP/IP Library for DOS

Watt-32 provides BSD sockets for DOS programs. Two builds needed:

## Files

| File | Model | Target | Build |
|------|-------|--------|-------|
| `libwatt.a` | 32-bit DJGPP | i386-go32v2 | `make -f djgpp.mak` |
| `wattcpwl.lib` | 16-bit Watcom large | i8086-msdos | `wmake -f watcom_l.mak` |

## Source

Clone from: `https://github.com/gvanem/Watt-32`

## Build (16-bit for i8086)

Requires OpenWatcom C compiler (already installed for `wlink`):

```bash
git clone https://github.com/gvanem/Watt-32.git
cd Watt-32/src
wmake -f watcom_l.mak
cp ../lib/wattcpwl.lib /path/to/fpc264irc/lib/watt32/
```

## Build (32-bit for go32v2)

Requires DJGPP GCC:

```bash
cd Watt-32/src
make -f djgpp.mak
cp ../lib/libwatt.a /path/to/fpc264irc/lib/watt32/
```

## License

Watt-32 is released under a BSD-style license by Gisle Vanem.
See https://github.com/gvanem/Watt-32/blob/master/COPYING
