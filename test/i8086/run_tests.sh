#!/bin/bash
# i8086 codegen test suite for FPC 2.6.4irc
# Compiles each case with ppcross8086, verifies:
#   1. compilation to assembly succeeds (no Fatal/Error)
#   2. a real 8086 OMF object is produced
#   3. expected instruction patterns appear in the generated NASM
set -u
WORK="${WORK:-/home/claude/i8086_work}"
PP="$WORK/compiler/ppcross8086"
CASES="$WORK/tests/i8086/cases"
TMP=$(mktemp -d)
INCS="-Fu$WORK/rtl/inc -Fu$WORK/rtl/i8086 -Fi$WORK/rtl/inc -Fi$WORK/rtl/i8086"

pass=0; fail=0; failed_list=""

# compile <case> : emits .s and .o into $TMP, returns 0 if asm+obj produced
compile_case() {
  local name="$1"
  rm -f "$TMP/$name.s" "$TMP/$name.o"
  # -a keep asm, produce object (assemble). Unit link error is expected+ignored.
  "$PP" -Tmsdos -Us -a $INCS -FU"$TMP" "$CASES/$name.pas" > "$TMP/$name.log" 2>&1
  # Also emit .s explicitly for pattern checks
  "$PP" -Tmsdos -Us -a -s $INCS -FU"$TMP" "$CASES/$name.pas" > /dev/null 2>&1
}

# check: name, description, then grep patterns (all must be present in .s)
check() {
  local name="$1"; shift
  local desc="$1"; shift
  compile_case "$name"
  local ok=1 reason=""
  # 1. no CODEGEN error (internalerror / syntax / type errors happen BEFORE the
  #    harmless "Error while linking" that standalone units always emit).
  if grep -qiE "Internal error|Error: (Syntax|Illegal|Incompatible|overloaded|Data element|Identifier not found|Unknown compilerproc)" "$TMP/$name.log"; then
    ok=0; reason="$(grep -iE "Internal error|Error:" "$TMP/$name.log" | grep -iv "while linking" | head -1 | sed "s/^[^)]*) //")"
  fi
  # 2. object produced (real OMF) — the true success signal (compile+assemble ok)
  if [ $ok -eq 1 ] && [ ! -f "$TMP/$name.o" ]; then
    ok=0; reason="no object file"
  fi
  if [ $ok -eq 1 ] && ! file "$TMP/$name.o" 2>/dev/null | grep -q "8086 relocatable"; then
    ok=0; reason="object not 8086 OMF"
  fi
  # 3. asm patterns
  if [ $ok -eq 1 ]; then
    if ! grep -q "BITS 16" "$TMP/$name.s" 2>/dev/null; then
      ok=0; reason="no BITS 16"
    fi
    for pat in "$@"; do
      if ! grep -iqE "$pat" "$TMP/$name.s" 2>/dev/null; then
        ok=0; reason="missing pattern: $pat"
      fi
    done
  fi
  if [ $ok -eq 1 ]; then
    pass=$((pass+1)); printf "  PASS  %-16s %s\n" "$name" "$desc"
  else
    fail=$((fail+1)); failed_list="$failed_list $name"
    printf "  FAIL  %-16s %s  [%s]\n" "$name" "$desc" "$reason"
  fi
}

echo "=== i8086 codegen test suite ==="
echo "compiler: $("$PP" -iV 2>/dev/null) target: $("$PP" -iTP 2>/dev/null)-$("$PP" -iTO 2>/dev/null)"
echo ""

check t01_arith16  "16-bit add/sub/and/or/xor"   '\badd\b' '\bsub\b' '\band\b' '\bor\b' '\bxor\b'
check t02_shift16  "16-bit shifts stay 16-bit"   '\bshl\b' '\bshr\b'
check t03_divmod16 "16-bit div/mod"              '\b(div|idiv)\b'
check t04_arith32  "32-bit register-pair math"   '\badd\b' '\badc\b'
check t05_int64    "int64 result/negate/add"     '\bneg\b' '\bsbb\b'
check t06_seg      "Seg() on huge pointer"        'mov.*ax.*\[bp\+6\]'
check t07_farptr   "far/huge pointer deref"       '\bmov\b'
check t08_split32param "32-bit split-reg param"   'call'
check t09_fpuparam "extended float param"         'call'
check t10_trunc32  "32-bit -> 16-bit truncate"    '\bmov\b'
check t11_compare  "16/32-bit comparisons"        '\b(cmp|jl|jb|setl|setb)\b'
check t12_ptrops   "pointer arithmetic + deref"   '\b(add|inc)\b'

echo ""
echo "=== Total: $pass pass, $fail fail ==="
if [ $fail -eq 0 ]; then
  echo "ALL I8086 TESTS GREEN"
else
  echo "FAILED:$failed_list"
fi
rm -rf "$TMP"
[ $fail -eq 0 ]
