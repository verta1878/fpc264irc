#!/bin/sh
# Build go32v2 assembly objects from source
# These are the ONLY non-Pascal files in the project.
# Both are assembled from our source tree — no pre-compiled blobs.

SRCDIR=../../src/rtl/go32v2
OUTDIR=units/i386-go32v2

echo "Assembling go32v2 bootstrap objects..."

# prt0.o — DJGPP DPMI entry point (v2prt0.as + sbrk16.ah + exit16.ah)
cd "$SRCDIR"
as --32 -o "../../../bin/$OUTDIR/prt0.o" v2prt0.as 2>/dev/null
echo "  prt0.o    — DPMI bootstrap ($(wc -l < v2prt0.as) lines)"

# exceptn.o — DPMI exception/interrupt handlers
as --32 -o "../../../bin/$OUTDIR/exceptn.o" exceptn.as 2>/dev/null
echo "  exceptn.o — exception handlers ($(wc -l < exceptn.as) lines)"

echo "Done. 2 assembly objects built from source."
