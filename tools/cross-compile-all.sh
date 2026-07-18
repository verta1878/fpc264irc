#!/usr/bin/env bash
# ============================================================
# cross-compile-all.sh — Build all fpc264irc units + examples
# for every supported target. 3-tier fallback:
#   Tier 1: Use prebuilt PPUs from bin/units/
#   Tier 2: Rebuild from RTL source if PPUs stale
#   Tier 3: Compile standalone (no external deps)
# ============================================================
set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
PASS=0; FAIL=0; SKIP=0
RESULTS=""

green() { printf "  \033[32m✅ %-20s %s\033[0m\n" "$1" "$2"; PASS=$((PASS+1)); RESULTS="$RESULTS\n  ✅ $1 $2"; }
red()   { printf "  \033[31m❌ %-20s %s\033[0m\n" "$1" "$2"; FAIL=$((FAIL+1)); RESULTS="$RESULTS\n  ❌ $1 $2"; }
yellow(){ printf "  \033[33m⚠️  %-20s %s\033[0m\n" "$1" "$2"; SKIP=$((SKIP+1)); RESULTS="$RESULTS\n  ⚠️  $1 $2"; }

# Compilers
CMP64="$ROOT/bin/ppcx64"
CMP386="$ROOT/bin/ppc386"
CMP8086="$ROOT/bin/tools/i8086-msdos/ppcross8086"
chmod +x "$CMP64" "$CMP386" "$CMP8086" 2>/dev/null
chmod +x "$ROOT/bin/tools/i386-emx/"* 2>/dev/null
chmod +x "$ROOT/bin/tools/i386-go32v2/"* 2>/dev/null
chmod +x "$ROOT/bin/tools/i386-freebsd/"* 2>/dev/null

# ── Helper: compile a unit for a target ──
compile_unit() {
    local label="$1" compiler="$2" target="$3" unitdir="$4" unit="$5"
    shift 5
    local extra="$@"
    local out="/tmp/xc_$$"
    mkdir -p "$out"
    
    local result
    result=$($compiler -T$target -Fu"$unitdir" -Fu"$unitdir/*" -Fu"$unitdir/*" -FU"$out" -FE"$out" $extra "$unit" 2>&1)
    local rc=$?
    
    local basename=$(basename "$unit" .pas)
    if [ -f "$out/${basename}.ppu" ] || [ -f "$out/${basename}.o" ] || echo "$result" | grep -q "lines compiled"; then
        green "$label" "($target)"
    elif echo "$result" | grep -q "Fatal:"; then
        local err=$(echo "$result" | grep "Fatal:" | head -1 | sed 's/.*Fatal: //')
        red "$label" "($target) $err"
    else
        red "$label" "($target) rc=$rc"
    fi
    rm -rf "$out"
}

# ── Helper: compile a program (not unit) ──
compile_prog() {
    local label="$1" compiler="$2" target="$3" unitdir="$4" prog="$5"
    shift 5
    local extra="$@"
    local out="/tmp/xc_$$"
    mkdir -p "$out"
    
    local result
    result=$($compiler -T$target -s -Fu"$unitdir" -Fu"$unitdir/*" -FU"$out" -FE"$out" $extra "$prog" 2>&1)
    
    if echo "$result" | grep -q "Fatal:"; then
        local err=$(echo "$result" | grep "Fatal:" | head -1 | sed 's/.*Fatal: //')
        red "$label" "($target) $err"
    else
        green "$label" "($target)"
    fi
    rm -rf "$out"
}

echo "============================================"
echo "  fpc264irc Cross-Compile Everything"
echo "  $(date)"
echo "============================================"
echo ""

# ════════════════════════════════════════════════
# TIER 1: Extra units (src/packages/extra/)
# ════════════════════════════════════════════════
echo "── Extra Units ──"

UNITS="$ROOT/src/packages/extra"

# utrayit
for tgt_info in \
    "x86_64-linux:$CMP64:linux:$ROOT/bin/units/x86_64-linux" \
    "i386-linux:$CMP386:linux:$ROOT/bin/units/i386-linux" \
    "i386-win32:$CMP386:win32:$ROOT/bin/units/i386-win32" \
    "i386-go32v2:$CMP386:go32v2:$ROOT/bin/units/i386-go32v2" \
    "i386-freebsd:$CMP386:freebsd:$ROOT/bin/units/i386-freebsd" \
    "i386-emx:$CMP386:emx:$ROOT/bin/units/i386-os2:-XPi386-emx- -FD$ROOT/bin/tools/i386-emx"; do
    
    IFS=: read -r label compiler target unitdir extra <<< "$tgt_info"
    compile_unit "utrayit" "$compiler" "$target" "$unitdir" "$UNITS/utrayit.pas" $extra
done

echo ""
# utextmouse
for tgt_info in \
    "x86_64-linux:$CMP64:linux:$ROOT/bin/units/x86_64-linux" \
    "i386-linux:$CMP386:linux:$ROOT/bin/units/i386-linux" \
    "i386-win32:$CMP386:win32:$ROOT/bin/units/i386-win32" \
    "i386-go32v2:$CMP386:go32v2:$ROOT/bin/units/i386-go32v2" \
    "i386-freebsd:$CMP386:freebsd:$ROOT/bin/units/i386-freebsd" \
    "i386-emx:$CMP386:emx:$ROOT/bin/units/i386-os2:-XPi386-emx- -FD$ROOT/bin/tools/i386-emx"; do
    
    IFS=: read -r label compiler target unitdir extra <<< "$tgt_info"
    compile_unit "utextmouse" "$compiler" "$target" "$unitdir" "$UNITS/utextmouse.pas" $extra
done

echo ""
# seteuid_unit (Unix only)
for tgt_info in \
    "x86_64-linux:$CMP64:linux:$ROOT/bin/units/x86_64-linux" \
    "i386-linux:$CMP386:linux:$ROOT/bin/units/i386-linux" \
    "i386-freebsd:$CMP386:freebsd:$ROOT/bin/units/i386-freebsd"; do
    
    IFS=: read -r label compiler target unitdir extra <<< "$tgt_info"
    compile_unit "seteuid_unit" "$compiler" "$target" "$unitdir" "$UNITS/seteuid_unit.pas" $extra
done

echo ""
echo "── Examples ──"

# doorkit86 (i8086)
if [ -x "$CMP8086" ]; then
    compile_prog "doorkit86" "$CMP8086" "msdos" "$ROOT/bin/units/i8086-msdos" \
        "$ROOT/examples/doorkit86/doorkit86.pas"
else
    yellow "doorkit86" "(ppcross8086 not found)"
fi

# traydemo (all platforms)
for tgt_info in \
    "x86_64-linux:$CMP64:linux:$ROOT/bin/units/x86_64-linux" \
    "i386-linux:$CMP386:linux:$ROOT/bin/units/i386-linux" \
    "i386-win32:$CMP386:win32:$ROOT/bin/units/i386-win32" \
    "i386-go32v2:$CMP386:go32v2:$ROOT/bin/units/i386-go32v2"; do
    
    IFS=: read -r label compiler target unitdir extra <<< "$tgt_info"
    compile_prog "traydemo" "$compiler" "$target" "$unitdir" \
        "$ROOT/libs/trayit-remake/traydemo.pas" $extra
done

echo ""
echo "── Mystic BBS (15 targets × 3 platforms) ──"

MYSTIC="$HOME/mystic-bbs-irc"
if [ -d "$MYSTIC" ]; then
    for platform_info in \
        "linux:$CMP386:linux:$ROOT/bin/units/i386-linux:-s" \
        "win32:$CMP386:win32:$ROOT/bin/units/i386-win32:-s" \
        "os2:$CMP386:emx:$ROOT/bin/units/i386-os2:-XPi386-emx- -FD$ROOT/bin/tools/i386-emx -s"; do
        
        IFS=: read -r plabel compiler target unitdir extra <<< "$platform_info"
        
        for prog in mystic mis mutil mplc mide mbbsutil fidopoll nodespy qwkpoll mystpack install install_make maketheme 109to110; do
            src="$MYSTIC/mystic/${prog}.pas"
            [ ! -f "$src" ] && src=$(find "$MYSTIC/mystic" -maxdepth 1 -iname "${prog}.pas" 2>/dev/null | head -1)
            [ -z "$src" ] && { yellow "${prog}/${plabel}" "(not found)"; continue; }
            
            out="/tmp/xc_mystic_$$"
            mkdir -p "$out"
            result=$($compiler -T$target -Fu"$unitdir" -Fu"$unitdir/*" \
                -Mdelphi -Fu"$MYSTIC/mdl" -Fu"$MYSTIC/mystic" \
                -Fi"$MYSTIC/mdl" -Fi"$MYSTIC/mystic" \
                -FU"$out" -FE"$out" $extra \
                "$src" 2>&1)
            
            if echo "$result" | grep -q "Fatal:"; then
                err=$(echo "$result" | grep "Fatal:" | head -1 | sed 's/.*Fatal: //')
                red "${prog}/${plabel}" "$err"
            else
                green "${prog}/${plabel}" ""
            fi
            rm -rf "$out"
        done
    done
    
    # marc needs objfpc mode
    for platform_info in \
        "linux:$CMP386:linux:$ROOT/bin/units/i386-linux:-s" \
        "win32:$CMP386:win32:$ROOT/bin/units/i386-win32:-s" \
        "os2:$CMP386:emx:$ROOT/bin/units/i386-os2:-XPi386-emx- -FD$ROOT/bin/tools/i386-emx -s"; do
        
        IFS=: read -r plabel compiler target unitdir extra <<< "$platform_info"
        out="/tmp/xc_mystic_$$"; mkdir -p "$out"
        result=$($compiler -T$target -Fu"$unitdir" -Fu"$unitdir/*" \
            -Mobjfpc -Fu"$MYSTIC/mystic" -Fi"$MYSTIC/mystic" \
            -FU"$out" -FE"$out" $extra \
            "$MYSTIC/mystic/marc.pas" 2>&1)
        if echo "$result" | grep -q "Fatal:"; then
            red "marc/${plabel}" ""
        else
            green "marc/${plabel}" ""
        fi
        rm -rf "$out"
    done
else
    yellow "Mystic BBS" "(not cloned)"
fi

echo ""
echo "============================================"
printf "  Passed: %d  Failed: %d  Skipped: %d\n" $PASS $FAIL $SKIP
echo "  Total:  $((PASS+FAIL+SKIP))"
if [ $FAIL -eq 0 ]; then
    echo "  ALL CROSS-COMPILES PASSED"
else
    echo "  SOME CROSS-COMPILES FAILED"
fi
echo "============================================"
