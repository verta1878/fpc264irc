#!/bin/bash
# Run all MPL compiler tests
MPLC=${MPLC:-mplc}
PASS=0; FAIL=0
cd "$(dirname "$0")"

for f in *.mps; do
    result=$($MPLC "$f" 2>&1)
    if echo "$result" | grep -q "Success"; then
        echo "  ✅ $f"
        PASS=$((PASS+1))
    else
        err=$(echo "$result" | cat -v | grep "Error" | sed 's/.*Error/Error/')
        echo "  ❌ $f — $err"
        FAIL=$((FAIL+1))
    fi
done

echo ""
echo "Passed: $PASS  Failed: $FAIL"
[ $FAIL -eq 0 ] && echo "ALL MPLC TESTS PASSED" || echo "SOME TESTS FAILED"
