# Building libwatt.a for DJGPP (go32v2)

## Prerequisites

- DJGPP cross-compiler: `apt install djgpp` or build from
  https://github.com/andrewwutw/build-djgpp
- The `i386-pc-msdosdjgpp-gcc` must be on PATH

## Build

```bash
cd lib/watt32/src
./configur.sh djgpp
make -f djgpp.mak
```

## Output

The build produces `lib/watt32/lib/libwatt.a` — this is the static
library that FPC's `sockets.pp` links against via `{$linklib watt}`.

## Usage with FPC 2.6.4irc

Place `libwatt.a` where the linker can find it:

```bash
# Option 1: copy to FPC lib path
cp lib/watt32/lib/libwatt.a /usr/local/lib/

# Option 2: specify at compile time
bin/ppc386 -Tgo32v2 -Fubin/units/i386-go32v2 -Fllib/watt32/lib myprogram.pas
```

## Runtime

DOS programs built with Watt-32 need:
- A packet driver loaded (e.g., `ne2000.com` for NE2000 NICs)
- `WATTCP.CFG` in the program's directory, or DHCP enabled

Example `WATTCP.CFG`:
```
my_ip = dhcp
hostname = "mystic"
```
