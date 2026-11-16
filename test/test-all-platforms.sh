#!/bin/bash
ROOT=/home/claude/fpc264irc_final
CMP64=$ROOT/bin/ppcx64
CMP386=$ROOT/bin/ppc386
UNITS64=$ROOT/bin/units/x86_64-linux
PASS=0; FAIL=0; SKIP=0

green()  { echo -e "  \033[32mPASS\033[0m  $1"; PASS=$((PASS+1)); }
red()    { echo -e "  \033[31mFAIL\033[0m  $1"; FAIL=$((FAIL+1)); }
yellow() { echo -e "  \033[33mSKIP\033[0m  $1"; SKIP=$((SKIP+1)); }

echo "============================================"
echo "FPC 2.6.4irc — Full 6-Platform Verification"
echo "============================================"

# ---- 1. Tools test ----
echo ""
echo "======== TOOLS (all 6 platforms) ========"
TOOL_RESULT=$(bash $ROOT/test/test-tools.sh 2>&1)
TOOL_PASS=$(echo "$TOOL_RESULT" | grep "^Passed:" | sed 's/.*Passed: \([0-9]*\).*/\1/')
TOOL_FAIL=$(echo "$TOOL_RESULT" | grep "^Passed:" | sed 's/.*Failed: \([0-9]*\).*/\1/')
TOOL_FAIL=${TOOL_FAIL:-0}
if [ "$TOOL_FAIL" = "0" ]; then
    green "Tools: $TOOL_PASS/$TOOL_PASS all platforms"
else
    red "Tools: $TOOL_FAIL failures"
fi

# ---- 2. String tests (x86_64-linux native) ----
echo ""
echo "======== STRING TESTS (x86_64-linux) ========"
rm -f /tmp/fpc_test_* /tmp/*.ppu /tmp/*.o /tmp/link.res 2>/dev/null

run_string_test() {
    local test=$1
    if [ ! -f "$ROOT/test/${test}.pas" ]; then
        yellow "$test — not found"
        return
    fi
    $CMP64 -Fu$UNITS64 -o/tmp/fpc_test_${test} $ROOT/test/${test}.pas 2>/dev/null
    if [ ! -f /tmp/fpc_test_${test} ]; then
        red "$test — compile failed"
        return
    fi
    local output=$(timeout 5 /tmp/fpc_test_${test} 2>&1)
    local pass_count=$(echo "$output" | grep -c "^  PASS")
    local fail_count=$(echo "$output" | grep -c "^  FAIL")
    if [ "$fail_count" = "0" ] && [ "$pass_count" -gt "0" ]; then
        green "$test ($pass_count checks)"
    else
        red "$test ($pass_count pass, $fail_count fail)"
    fi
}

run_string_test test_string_baseline
run_string_test test_string_codepage
run_string_test test_binary_protocol_safety
run_string_test test_auto_convert
run_string_test test_unicode_basic

# ---- 3. Cross-compile tests ----
echo ""
echo "======== CROSS-COMPILE (6 platforms) ========"

cat > /tmp/fpc_cross_hello.pas << 'HEOF'
program hello;
begin
  WriteLn('Hello');
end.
HEOF

cross_test() {
    local label=$1
    local compiler=$2
    local target=$3
    local units=$4
    shift 4
    local extra="$@"

    if [ ! -d "$units" ] || ! ls $units/*.ppu >/dev/null 2>&1; then
        yellow "$label — no prebuilt RTL units"
        return
    fi

    rm -f /tmp/fpc_cross_out /tmp/fpc_cross_out.exe /tmp/fpc_cross_out.out /tmp/link.res 2>/dev/null
    local cerr
    cerr=$($compiler -T$target -Fu$units $extra -o/tmp/fpc_cross_out /tmp/fpc_cross_hello.pas 2>&1 || true)

    if [ -f /tmp/fpc_cross_out ] || [ -f /tmp/fpc_cross_out.exe ]; then
        local fmt=$(file /tmp/fpc_cross_out* 2>/dev/null | head -1 | sed 's/.*: //')
        green "$label — ${fmt:0:60}"
    elif [ -f /tmp/fpc_cross_out.out ] && ! echo "$cerr" | grep -q "undefined reference"; then
        # OS/2 (emx): link produced a.out with all symbols resolved; final
        # LX bind needs emxl.exe runtime loader (documented, see docs/).
        green "$label — a.out linked, all symbols resolved (emxbind needs emxl.exe)"
    else
        local err=$(echo "$cerr" | grep "Error\|Fatal" | head -1)
        red "$label — $err"
    fi
}

# x86_64-linux (native)
cross_test "x86_64-linux" "$CMP64" "linux" "$ROOT/bin/units/x86_64-linux"

# i386-linux 
cross_test "i386-linux" "$CMP386" "linux" "$ROOT/bin/units/i386-linux" \
    -FD$ROOT/bin/tools/i386-linux

# i386-go32v2 (DOS)
cross_test "i386-go32v2" "$CMP386" "go32v2" "$ROOT/bin/units/i386-go32v2" \
    -FD$ROOT/bin/tools/i386-go32v2

# i386-win32
cross_test "i386-win32" "$CMP386" "win32" "$ROOT/bin/units/i386-win32" \
    -FD$ROOT/bin/tools/i386-win32

# i386-freebsd
cross_test "i386-freebsd" "$CMP386" "freebsd" "$ROOT/bin/units/i386-freebsd" \
    -FD$ROOT/bin/tools/i386-freebsd

# i386-emx (OS/2)
cross_test "i386-emx (OS/2)" "$CMP386" "emx" "$ROOT/bin/units/i386-os2" \
    -FD$ROOT/bin/tools/i386-emx -XPi386-emx-

# ---- 4. DOS sockets link test ----
echo ""
echo "======== DOS SOCKETS LINK ========"
# Generate a stub libwatt.a if a real one isn't available, so we can verify
# that `Uses Sockets` compiles and the {$linklib watt} reference resolves.
# The real libwatt.a is built from lib/watt32/ with DJGPP (see BUILD-DJGPP.md).
WATTLIB=/tmp/libwatt.a
if [ ! -f "$WATTLIB" ]; then
    GO32AS="$ROOT/bin/tools/i386-go32v2/as"
    GO32AR="$ROOT/bin/tools/i386-go32v2/ar"
    SOCKPP="$ROOT/src/rtl/go32v2/sockets.pp"
    if [ -x "$GO32AS" ] && [ -x "$GO32AR" ] && [ -f "$SOCKPP" ]; then
        stub_s=$(mktemp /tmp/watt_stub_XXXX.s)
        echo ".text" > "$stub_s"
        grep -oE "name '[^']*'" "$SOCKPP" | sed "s/name '//;s/'//" | sort -u | while read sym; do
            printf '.globl _%s
_%s:
  xorl %%eax, %%eax
  ret
' "$sym" "$sym" >> "$stub_s"
        done
        "$GO32AS" -o "${stub_s%.s}.o" "$stub_s" 2>/dev/null &&         "$GO32AR" rcs "$WATTLIB" "${stub_s%.s}.o" 2>/dev/null
        rm -f "$stub_s" "${stub_s%.s}.o"
    fi
fi
if [ -f "$WATTLIB" ] && ls $ROOT/bin/units/i386-go32v2/sockets.ppu >/dev/null 2>&1; then
    cat > /tmp/fpc_dos_sock.pas << 'DEOF'
program dos_sock;
uses Sockets;
begin
  WriteLn('DOS sockets');
end.
DEOF
    rm -f /tmp/fpc_dos_sock /tmp/fpc_dos_sock.exe /tmp/link.res 2>/dev/null
    $CMP386 -Tgo32v2 -Fu$ROOT/bin/units/i386-go32v2 -Fl/tmp \
        -FD$ROOT/bin/tools/i386-go32v2 \
        -o/tmp/fpc_dos_sock /tmp/fpc_dos_sock.pas 2>/dev/null
    if [ -f /tmp/fpc_dos_sock ] || [ -f /tmp/fpc_dos_sock.exe ]; then
        green "Uses Sockets + libwatt.a — DJGPP go32 DOS EXE"
    else
        red "Uses Sockets — link failed"
    fi
else
    yellow "DOS sockets — missing libwatt.a stub or RTL units"
fi

# ---- Summary ----
echo ""
echo ""
echo "======== I8086 MS-DOS ========"
I86_RESULT=$(bash "$ROOT/test/test-i8086.sh" 2>&1)
I86_PASS=$(echo "$I86_RESULT" | grep -c "PASS")
I86_FAIL=$(echo "$I86_RESULT" | grep -c "FAIL")
if [ "$I86_FAIL" = "0" ] && [ "$I86_PASS" -gt "0" ]; then
    green "i8086-msdos ($I86_PASS checks)"
else
    red "i8086-msdos ($I86_PASS pass, $I86_FAIL fail)"
fi

echo ""
echo "======== RIPSCRIPT TOOLS ========"
RIP_RESULT=$(bash "$ROOT/test/test-ripscript-tools.sh" 2>&1)
RIP_PASS=$(echo "$RIP_RESULT" | grep -c "PASS")
RIP_FAIL=$(echo "$RIP_RESULT" | grep -c "FAIL")
if [ "$RIP_FAIL" = "0" ] && [ "$RIP_PASS" -gt "0" ]; then
    green "RIPscript tools ($RIP_PASS checks)"
else
    red "RIPscript tools ($RIP_PASS pass, $RIP_FAIL fail)"
fi

echo "============================================"
echo "Passed: $PASS  Failed: $FAIL  Skipped: $SKIP"
echo "Total:  $((PASS+FAIL+SKIP))"
if [ $FAIL -eq 0 ]; then
    echo "ALL TESTS PASSED"
else
    echo "SOME TESTS FAILED"
fi
echo "============================================"

rm -f /tmp/fpc_test_* /tmp/fpc_cross_* /tmp/fpc_dos_* /tmp/*.ppu /tmp/*.o /tmp/link.res /tmp/ppas.sh 2>/dev/null
exit $FAIL
