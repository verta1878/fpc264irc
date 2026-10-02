#!/bin/bash
# fpc264irc i8086-msdos graph unit build (byte, 2026-10-01)
# Source: FPC 3.2.2 upstream packages/graph/src/msdos + src/inc (matches ppcross8086 3.2.2, PPU207).
# Run from repo root. Smartlinked (-CX) like the rest of the i8086 units.
P=bin/ppcross8086; K=tools/i8086-graph-build
for d in i8086-msdos:huge i8086-msdos-medium:medium i8086-msdos-large:large i8086-msdos-huge:huge; do
  dir=${d%%:*}; m=${d##*:}
  $P -Tmsdos -Pi8086 -Wm$m -O2 -CX -n -FUbin/units/$dir -Fubin/units/$dir -Fi$K/src/inc -Fi$K/src/msdos $K/src/msdos/graph.pp || exit 1
done
# tiny/small/compact: NOT built -- one 64KB code segment; graph + RTL does not fit (link fails).
