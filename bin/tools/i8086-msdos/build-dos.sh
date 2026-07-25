#!/bin/bash
# build-dos.sh — Compile and link Pascal for i8086 MS-DOS
# Usage: build-dos.sh program.pas [output.exe]
set -e
ROOT="$(cd "$(dirname "$0")" && pwd)"
COMPILER="$ROOT/ppcross8086"
UNITS="$(cd "$ROOT/../../units/i8086-msdos" && pwd)"
TOOLS="$ROOT"
WLINK=$(command -v wlink 2>/dev/null || echo "/opt/watcom/binl64/wlink")

[ $# -lt 1 ] && echo "Usage: $0 program.pas [output.exe]" && exit 1
SOURCE="$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
BASENAME=$(basename "$SOURCE" .pas)
OUTPUT="${2:-$(pwd)/${BASENAME}.exe}"
WORKDIR=$(mktemp -d)
trap "rm -rf $WORKDIR" EXIT

echo "=== FPC i8086-msdos build ==="

# 1. Compile
echo "[1/4] Compiling..."
cd "$(dirname "$SOURCE")"
"$COMPILER" -Tmsdos -s -a -Fu"$UNITS" "$SOURCE" 2>&1 | tail -1

# 2. Fix + assemble
echo "[2/4] Assembling..."
python3 "$TOOLS/fixasm.py" "$(pwd)/${BASENAME}.s"
nasm -f obj -o "$WORKDIR/${BASENAME}.o" "$(pwd)/${BASENAME}.s"
nasm -f obj -o "$WORKDIR/fpcheap.o" "$TOOLS/fpcheap.asm"

# 3. Resolve deps
echo "[3/4] Resolving dependencies..."
python3 - "$WORKDIR/${BASENAME}.o" "$UNITS" "$WORKDIR" "$TOOLS" << 'PYEOF'
import os, sys, re
test_o, units_dir, workdir, tools = sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4]
sys.path.insert(0, tools)
exec(open(os.path.join(tools, 'omfinfo.py')).read().replace('for fn in sys.argv[1:]:', 'if False:'))
prt0_o = os.path.join(units_dir, 'prt0s.o')
heap_o = os.path.join(workdir, 'fpcheap.o')
init_o = os.path.join(units_dir, 'system.sl', 'system0s1127.o')
objs = [test_o, prt0_o, init_o]
pi = {}
for unit in ['system', 'dos', 'crt', 'strings']:
    sl = os.path.join(units_dir, unit + '.sl')
    if not os.path.isdir(sl): continue
    for fn in sorted(os.listdir(sl)):
        if not fn.endswith('.o'): continue
        try: o = OMFObj(os.path.join(sl, fn)); [pi.__setitem__(n, os.path.join(sl, fn)) for n in o.pubdefs]
        except: pass
nd = set([init_o]); ap = set(); ur = set()
for p in objs: o = OMFObj(p); ap.update(o.pubdefs); ur.update(o.extdefs)
ur -= ap
for _ in range(60):
    nf = set(); ne = set()
    for s in list(ur):
        if s in pi:
            fp = pi[s]
            if fp not in nd: nf.add(fp); nd.add(fp); o=OMFObj(fp); ap.update(o.pubdefs); ne.update(o.extdefs)
    ur = (ur | ne) - ap
    if not nf: break
for unit in ['system', 'dos', 'crt', 'strings']:
    sl = os.path.join(units_dir, unit + '.sl')
    if not os.path.isdir(sl): continue
    for fn in sorted(os.listdir(sl)):
        if not fn.endswith('.s'): continue
        if re.search(r'GLOBAL\s+_\$\w+\$_Ld\d+', open(os.path.join(sl, fn)).read()):
            nd.add(os.path.join(sl, fn[:-2]+'.o'))
for fn in ['system0s532','system0s533','system0s534','system0s540','system0s541','system0s521','system0s17','system0s16','system0s1128','system0s1129']:
    fp = os.path.join(units_dir, 'system.sl', fn+'.o')
    if os.path.exists(fp): nd.add(fp)
with open(os.path.join(workdir, 'link.res'), 'w') as f:
    f.write('option quiet\nformat dos\noption stack=4096\n')
    f.write('name ' + os.path.join(workdir, 'output.exe') + '\n')
    f.write('file ' + prt0_o + '\nfile ' + test_o + '\nfile ' + heap_o + '\n')
    for fp in sorted(nd): f.write('file ' + fp + '\n')
print(f"  {len(nd)} deps")
PYEOF

# 4. Link (with iterative resolution)
echo "[4/4] Linking..."
for i in $(seq 1 10); do
    ERRS=$("$WLINK" @"$WORKDIR/link.res" 2>&1 | grep "E2028" | wc -l)
    [ "$ERRS" -eq 0 ] && break
    "$WLINK" @"$WORKDIR/link.res" 2>&1 | grep "E2028" | sed 's/.*E2028: //;s/ is.*//' | while read sym; do
        for sl in "$UNITS"/system.sl "$UNITS"/dos.sl "$UNITS"/crt.sl "$UNITS"/strings.sl; do
            fn=$(grep -rl "GLOBAL.*${sym}" "$sl"/*.s 2>/dev/null | head -1)
            [ -n "$fn" ] && echo "file ${fn%.s}.o" >> "$WORKDIR/link.res" && break
        done
    done
done
if [ ! -f "$WORKDIR/output.exe" ]; then
    echo "LINK FAILED:"
    "$WLINK" @"$WORKDIR/link.res" 2>&1 | grep "E2028" | head -5
    exit 1
fi
cp "$WORKDIR/output.exe" "$OUTPUT"
SIZE=$(stat -c%s "$OUTPUT")
echo ""
echo "=== SUCCESS: $OUTPUT ($SIZE bytes) ==="
