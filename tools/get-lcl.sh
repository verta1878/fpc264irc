#!/usr/bin/env bash
# ============================================================
#  3-tier provisioning for the Lazarus 1.2.6 LCL (GUI library).
#  Guarantees you never dead-end without a usable LCL for a
#  given widgetset.
#
#  Tier 1 — system:  use a system Lazarus LCL if its units for
#                    the requested widgetset are installed.
#  Tier 2 — bundled: use the prebuilt LCL units shipped in
#                    bin/lazarus/units/<cpu-os>/.
#  Tier 3 — source:  build from bundled Lazarus source
#                    (build-lcl.sh <widgetset>).
#
#  Usage: tools/get-lcl.sh <widgetset> [--which | --unitpath]
#         widgetsets: win32 (i386-win32), gtk2 (i386-linux)
# ============================================================
set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
WS="${1:-win32}"
MODE="${2:---which}"

green() { printf '  \033[32m%s\033[0m\n' "$1"; }
yellow(){ printf '  \033[33m%s\033[0m\n' "$1"; }

case "$WS" in
  win32) CPUOS=i386-win32 ;;
  gtk2)  CPUOS=i386-linux ;;
  qt)    CPUOS=i386-linux ;;
  nogui) CPUOS=i386-linux ;;
  *) echo "Unsupported widgetset: $WS (try win32, gtk2, qt, nogui)"; exit 1 ;;
esac

BUNDLED="$ROOT/bin/lazarus/units/$CPUOS"

# Tier 1: system Lazarus (look for lcl.ppu in common install locations)
sys_lcl() {
  for d in /usr/lib/lazarus/*/lcl/units/$CPUOS \
           /usr/share/lazarus/*/lcl/units/$CPUOS \
           "$HOME"/.lazarus/lib/lcl/units/$CPUOS; do
    if ls "$d/$WS"/lcl.ppu >/dev/null 2>&1 || ls "$d"/lcl.ppu >/dev/null 2>&1; then
      echo "$d"; return 0
    fi
  done
  return 1
}

# Tier 2: bundled LCL units
bundled_lcl() {
  if ls "$BUNDLED/lcl/$WS"/lcl.ppu >/dev/null 2>&1 || \
     ls "$BUNDLED/lcl"/lcl.ppu >/dev/null 2>&1 || \
     ls "$BUNDLED/lcl/$WS"/*.ppu >/dev/null 2>&1; then
    echo "$BUNDLED"; return 0
  fi
  return 1
}

TIER="" ; UNITDIR=""
if D="$(sys_lcl)"; then TIER=system; UNITDIR="$D"
elif D="$(bundled_lcl)"; then TIER=bundled; UNITDIR="$D"
else TIER=source; fi

if [ "$MODE" = --unitpath ]; then
  if [ "$TIER" = source ]; then
    echo ""   # nothing to point at until built
    exit 3
  fi
  # Emit -Fu flags for the LCL base + widgetset + lazutils
  if [ "$TIER" = bundled ]; then
    echo "-Fu$UNITDIR/lcl -Fu$UNITDIR/lcl/$WS -Fu$UNITDIR/lazutils"
  else
    echo "-Fu$UNITDIR -Fu$UNITDIR/$WS"
  fi
  exit 0
fi

# --which (default)
case "$TIER" in
  system)  green "Tier 1 (system):  $UNITDIR" ;;
  bundled) green "Tier 2 (bundled): $BUNDLED  (lcl + $WS + lazutils)" ;;
  source)
    yellow "Tier 3 (source): no LCL units for $WS found."
    echo   "         Build them with:  ./build-lcl.sh $WS" ;;
esac
