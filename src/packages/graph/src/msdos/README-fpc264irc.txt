fpc264irc note (byte, 2026-10-02)

These are the FPC 3.0.4 msdos graph sources, kept so src/packages/graph matches 3.0.4 as a whole.
The i8086-msdos graph units shipped in bin/units/i8086-msdos* were built from the FPC 3.2.2 msdos
backend instead, because ppcross8086 is FPC 3.2.2 (PPU207). Those sources, with their matching
3.2.2 include files, live in tools/i8086-graph-build/ — rebuild the i8086 units from there.
