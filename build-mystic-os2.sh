#!/usr/bin/env bash
# ============================================================
#  Build Mystic BBS for OS/2 using the FPC 2.6.4irc fork.
#
#  This is the companion to the Mystic tree's own build-os2.sh: it
#  supplies the exact compiler, RTL, and package unit paths this fork
#  provides — including the OS/2 TProcess support (fcl-process
#  os2/process.inc) that upstream FPC never had, which the Mystic
#  internet server (mis) needs.
#
#  Usage:
#    ./build-mystic-os2.sh /path/to/mystic            # all 14 targets
#    ./build-mystic-os2.sh /path/to/mystic mis        # one target
#
#  Output: <mystic>/out/bin-os2/<target>.out  (a.out, all symbols
#  resolved). Producing the final runnable .exe needs emxbind + the
#  emxl.exe loader on OS/2 — see docs/os2_linking_solved.md and
#  patches/os2-cross/EMXL-LOADER.md.
# ============================================================
set -u
ROOT="$(cd "$(dirname "$0")" && pwd)"
MYSTIC="${1:?Usage: build-mystic-os2.sh /path/to/mystic [target...]}"
shift || true
[ -d "$MYSTIC/mystic" ] || { echo "Not a Mystic source tree: $MYSTIC"; exit 1; }

FPC="$ROOT/bin/ppc386"
RTL="$ROOT/bin/units/i386-os2"
TOOLS="$ROOT/bin/tools/i386-emx"
PKG="$ROOT/src/packages"

# Package unit paths. The networked targets (mis/fidopoll/nodespy/qwkpoll)
# need fcl-net + fcl-process; mis specifically needs the OS/2 TProcess in
# fcl-process/src/os2. The non-networked targets ignore the extra paths.
PKGPATHS="-Fu$PKG/fcl-net/src -Fu$PKG/fcl-base/src -Fu$PKG/paszlib/src \
-Fu$PKG/hash/src -Fu$PKG/fcl-process/src \
-Fi$PKG/fcl-process/src/os2 -Fi$PKG/fcl-process/src"

BIN="$MYSTIC/out/bin-os2"
UNITS="$MYSTIC/out/units-os2"
mkdir -p "$BIN" "$UNITS"

ALL="mystic mis mutil mplc mide mbbsutil fidopoll nodespy qwkpoll \
     mystpack install install_make maketheme 109to110"
TARGETS="$*"; [ -z "$TARGETS" ] && TARGETS="$ALL"

clean() {
  find "$MYSTIC" -name '*.ppu' -delete 2>/dev/null
  find "$MYSTIC" -name '*.o' -not -path '*/libs/*' -delete 2>/dev/null
}

# Ensure the OS/2 import archives carry a symbol index (needed by ld).
for a in "$RTL"/*.a; do "$TOOLS/ar" s "$a" 2>/dev/null; done

echo "Mystic OS/2 build (FPC 2.6.4irc) — target(s): $TARGETS"
rc=0; ok=0; n=0
for t in $TARGETS; do
  n=$((n+1)); clean
  [ -f "$MYSTIC/mystic/$t.pas" ] || { printf "  SKIP  %-14s\n" "$t"; continue; }
  # shellcheck disable=SC2086
  out=$("$FPC" -Temx -Pi386 -Mdelphi -Fu"$RTL" \
        -Fu"$MYSTIC/mdl" -Fu"$MYSTIC/mystic" -Fi"$MYSTIC/mdl" -Fi"$MYSTIC/mystic" \
        $PKGPATHS -FD"$TOOLS" -FU"$UNITS" -FE"$BIN" \
        "$MYSTIC/mystic/$t.pas" 2>&1)
  if [ -f "$BIN/$t.out" ] && ! echo "$out" | grep -q "undefined reference"; then
    printf "  OK    %-14s -> out/bin-os2/%s.out (all symbols resolved)\n" "$t" "$t"
    ok=$((ok+1))
  else
    printf "  FAIL  %-14s\n" "$t"
    echo "$out" | grep -iE 'undefined reference|Error|Fatal' | head -2 | sed 's/^/          /'
    rc=1
  fi
done
clean
echo ""
echo "OS/2: $ok/$n linked (all symbols resolved)."
echo "Final .exe: run emxbind + emxl.exe on OS/2 (see docs/os2_linking_solved.md)."
exit $rc
