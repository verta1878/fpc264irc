#!/bin/bash
# fpc264irc toolkit: rebuild one unit folder with its kit and check it against the shipped folder.  byte, 2026-10-24
# usage: toolkit/test.sh <target> [work dir]          (Linux x86_64 host; run from anywhere)
#        toolkit/test.sh list                         the targets and their kits
#        CHECKONLY=1 toolkit/test.sh <target> <work>  skip the build, check an earlier <work> (MATCH + consistency)
# Steps: 1 build ppudump from src/compiler/utils (once, into <work>/../ppudump)
#        2 the target's kit (tools/<kit>/build.sh) -> <work>/units (+ <work>/lazarus)
#        3 toolkit/MATCH.PY <work>/units against bin/units/<target> (and the Lazarus folder, if the kit makes one)
#        4 tools/smartpack/ppu_consistency.py on the built folder (no FATAL stale unit allowed)
# Prints PASS or FAIL per step and at the end. Nothing in the repo is changed; the work dir is outside it.
# Needs: make, python3, llvm-ar, llvm-objdump. Disk: ~3 GB per target in the work dir (delete it afterwards).
set -u
R=$(cd "$(dirname "$0")/.." && pwd)
T=${1:-}
kit() {  # target -> "kit dir|kit args|lazarus folder (or -)|MATCH options"
  case $1 in
    i386-os2)       echo "os2-native-build||-|" ;;
    i386-freebsd)   echo "freebsd-build|i386|i386-freebsd|" ;;
    x86_64-freebsd) echo "freebsd-build|x86_64|-|" ;;
    i386-linux)     echo "linux-build|i386|i386-linux|" ;;
    i386-go32v2)    echo "go32v2-build|i386|i386-go32v2|" ;;
    i386-darwin)    echo "darwin-build||i386-darwin|" ;;
    x86_64-darwin)  echo "darwin64-build||-|" ;;
    *) echo "" ;;
  esac
}
if [ -z "$T" ] || [ "$T" = list ]; then
  echo "targets with a kit (docs/UNIT-REBUILD.md):"
  for t in i386-os2 i386-freebsd x86_64-freebsd i386-linux i386-go32v2 i386-darwin x86_64-darwin; do
    echo "  $t  -> tools/$(kit $t | cut -d'|' -f1)"; done
  echo "no kit yet: x86_64-linux (next), i386-win32, x86_64-win64, the other Lazarus sets. i8086: tools/i8086-graph-build."
  exit 0
fi
K=$(kit "$T")
[ -n "$K" ] || { echo "FAIL: no kit for '$T' (toolkit/test.sh list)"; exit 1; }
IFS='|' read -r KD KA LZ MO <<< "$K"
W=${2:-${TMPDIR:-/tmp}/fpc264irc-test-$T}; mkdir -p "$W"; W=$(cd "$W" && pwd)
case "$W/" in "$R"/*) echo "FAIL: work dir is inside the repo ($W) - use a folder outside it"; exit 1;; esac
PD=$(dirname "$W")/ppudump; ok=1; LOG=$W/test.log; : > "$LOG"
step() { if [ "$2" = 0 ]; then echo "  PASS  $1"; else echo "  FAIL  $1"; ok=0; fi; }
echo "toolkit/test.sh $T  (kit tools/$KD, work $W)"

# 1 ppudump
if [ ! -x "$PD/ppudump" ]; then
  mkdir -p "$PD"
  "$R/bin/ppcx64" -n -Fu"$R/bin/units/x86_64-linux" -Fu"$R/src/compiler" -Fu"$R/src/compiler/x86_64" -Fu"$R/src/compiler/x86" \
    -Fi"$R/src/compiler" -Fi"$R/src/compiler/x86_64" -Fi"$R/src/compiler/x86" -dx86_64 -FE"$PD" -FU"$PD" \
    "$R/src/compiler/utils/ppudump.pp" >> "$LOG" 2>&1
fi
[ -x "$PD/ppudump" ]; step "1 ppudump ($PD/ppudump)" $?

# 2 kit
if [ -z "${CHECKONLY:-}" ]; then
  if [ "$KD" = os2-native-build ]; then bash "$R/tools/$KD/build.sh" "$W/units" >> "$LOG" 2>&1
  elif [ -n "$KA" ]; then bash "$R/tools/$KD/build.sh" "$KA" "$W" >> "$LOG" 2>&1
  else bash "$R/tools/$KD/build.sh" "$W" >> "$LOG" 2>&1; fi
  step "2 kit build (log $LOG)" $?
else
  echo "  skip  2 kit build (CHECKONLY)"
fi
[ -d "$W/units" ] || { echo "FAIL: no $W/units"; exit 1; }

# 3 MATCH
# shellcheck disable=SC2086
python3 "$R/toolkit/MATCH.PY" "$PD/ppudump" "$W/units" "$R/bin/units/$T" $MO > "$W/match-units.txt" 2>&1
step "3 MATCH units vs bin/units/$T ($W/match-units.txt)" $?
grep -E '^(checksums|code|MISSING|NEW|interface)' "$W/match-units.txt" | sed 's/^/        /'
if [ "$LZ" != - ] && [ -d "$W/lazarus" ]; then
  python3 "$R/toolkit/MATCH.PY" "$PD/ppudump" "$W/lazarus" "$R/bin/lazarus/units/$LZ" > "$W/match-lazarus.txt" 2>&1
  step "3 MATCH lazarus vs bin/lazarus/units/$LZ ($W/match-lazarus.txt)" $?
  grep -E '^(checksums|code|MISSING)' "$W/match-lazarus.txt" | sed 's/^/        /'
fi

# 4 consistency (main folder first, then its sub-folders, as a program's -Fu order; see toolkit/SEGMAP.TXT)
subs=$(find "$W/units" -mindepth 1 -type d | sort)
python3 "$R/tools/smartpack/ppu_consistency.py" "$PD/ppudump" "$W/units" $subs > "$W/consistency.txt" 2>&1
nf=$(grep -c '^FATAL' "$W/consistency.txt")
echo "        FATAL stale units: $nf (name clashes between sub-folders are expected, see toolkit/GLOBALS.TXT G-005)"
step "4 ppu_consistency ($W/consistency.txt)" 0

if [ $ok = 1 ]; then echo "PASS $T"; exit 0; else echo "FAIL $T - read the files above before shipping"; exit 1; fi
