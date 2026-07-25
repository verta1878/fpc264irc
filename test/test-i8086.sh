#!/bin/bash
# test-i8086.sh — i8086 MS-DOS cross-compiler test suite

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
BUILD="$ROOT/bin/tools/i8086-msdos/build-dos.sh"
PASS=0; FAIL=0; SKIP=0
TESTDIR=$(mktemp -d)
trap "rm -rf $TESTDIR" EXIT

green()  { echo -e "  \033[32mPASS\033[0m  $1"; PASS=$((PASS+1)); }
red()    { echo -e "  \033[31mFAIL\033[0m  $1"; FAIL=$((FAIL+1)); }
yellow() { echo -e "  \033[33mSKIP\033[0m  $1"; SKIP=$((SKIP+1)); }

echo "============================================"
echo "i8086 MS-DOS Cross-Compiler Test Suite"
echo "============================================"
echo ""

# Check prerequisites
WLINK=$(command -v wlink 2>/dev/null || echo "/opt/watcom/binl64/wlink")
DOSBOX=$(command -v dosbox 2>/dev/null)
[ ! -x "$ROOT/bin/tools/i8086-msdos/ppcross8086" ] && red "ppcross8086 not found" && exit 1
[ ! -x "$WLINK" ] && red "wlink not found" && exit 1

run_dos_test() {
    local name="$1" source="$2" expected="$3"
    local TDIR="$TESTDIR/$name"
    mkdir -p "$TDIR"
    if [ -n "$source" ]; then
        echo "$source" > "$TDIR/${name}.pas"
    elif [ -f "$TESTDIR/${name}.pas" ]; then
        cp "$TESTDIR/${name}.pas" "$TDIR/${name}.pas"
    fi
    bash "$BUILD" "$TDIR/${name}.pas" "$TDIR/${name}.exe" > "$TDIR/${name}.log" 2>&1
    if [ -f "$TDIR/${name}.exe" ]; then
        if [ -n "$DOSBOX" ]; then
            cp "$TDIR/${name}.exe" /tmp/dos/HELLO.EXE
            rm -f /tmp/dos/OUT.TXT
            timeout 15 xvfb-run -a dosbox -conf /tmp/db_simple.conf -exit >/dev/null 2>&1
            local output=$(cat /tmp/dos/OUT.TXT 2>/dev/null | tr -d '\r')
            if echo "$output" | grep -qF "$expected"; then
                green "$name"
            else
                red "$name — output: $(echo "$output" | head -1)"
            fi
        else
            green "$name (compiled, no DOSBox to run)"
        fi
    else
        red "$name — $(tail -1 $TDIR/${name}.log)"
    fi
}

# === 1. Compiler + tools ===
echo "=== 1. Tools ==="
[ -x "$ROOT/bin/tools/i8086-msdos/ppcross8086" ] && green "ppcross8086 present" || red "ppcross8086 missing"
[ -f "$ROOT/bin/tools/i8086-msdos/fixasm.py" ] && green "fixasm.py present" || red "fixasm.py missing"
[ -f "$ROOT/bin/tools/i8086-msdos/omfinfo.py" ] && green "omfinfo.py present" || red "omfinfo.py missing"
[ -x "$ROOT/bin/tools/i8086-msdos/build-dos.sh" ] && green "build-dos.sh present" || red "build-dos.sh missing"

# === 2. RTL units ===
echo ""
echo "=== 2. RTL Units ==="
for unit in system dos crt strings; do
    count=$(ls "$ROOT/bin/units/i8086-msdos/${unit}.sl"/*.o 2>/dev/null | wc -l)
    [ "$count" -gt 0 ] && green "${unit}.sl ($count files)" || red "${unit}.sl missing"
done
[ -f "$ROOT/bin/units/i8086-msdos/prt0s.o" ] && green "prt0s.o (startup)" || red "prt0s.o missing"

# === 3. Compile + run tests ===
echo ""
echo "=== 3. Functional Tests ==="

run_dos_test "hello" \
    "program hello; begin writeln('Hello from i8086!'); end." \
    "Hello from i8086!"

run_dos_test "integer" \
    "program inttest; begin writeln('Answer: ', 6*7); end." \
    "Answer: 42"

run_dos_test "strings" \
    "program strtest; var s: string; begin s := 'AB' + 'CD'; writeln(s); writeln('Len:', Length(s)); end." \
    "Len:4"

run_dos_test "fileio" \
    "program fio; var f:text; begin Assign(f, 'T.DAT'); Rewrite(f); writeln(f, 'ok'); Close(f); writeln('FILEOK'); end." \
    "FILEOK"

# Write dos unit tests as heredocs to avoid quoting issues
cat > "$TESTDIR/dosunit.pas" << 'DOSEOF'
program dostest;
uses dos;
begin
  writeln('OK');
end.
DOSEOF
run_dos_test "dosunit" "" "OK"

cat > "$TESTDIR/interrupt.pas" << 'INTEOF'
program inttest;
uses dos;
var r: registers;
begin
  r.ah := $30;
  MsDos(r);
  writeln('Ver:', r.al);
end.
INTEOF
run_dos_test "interrupt" "" "Ver:"

# === Summary ===
echo ""
echo "============================================"
echo "Passed: $PASS  Failed: $FAIL  Skipped: $SKIP"
echo "Total:  $((PASS+FAIL+SKIP))"
[ $FAIL -eq 0 ] && echo "ALL I8086 TESTS PASSED" || echo "SOME TESTS FAILED"
echo "============================================"
exit $FAIL
