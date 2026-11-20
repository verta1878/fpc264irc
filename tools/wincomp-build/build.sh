#!/bin/bash
# fpc264irc Windows compilers - byte, 2026-11-20
# usage: tools/wincomp-build/build.sh [work dir]      (Linux x86_64 host; default $TMPDIR/fpc264irc-wincomp)
# Builds bin/ppc386.exe (i386-win32, runs on Windows 95/98 - 11) and bin/ppcx64.exe (x86_64-win64) from
# src/compiler with the Linux compilers bin/ppc386 / bin/ppcx64 and the shipped units bin/units/i386-win32 /
# bin/units/x86_64-win64. Internal assembler + linker (no bin/tools needed). Options as the FPC compiler Makefile:
#   -d<cpu> -dGDB -dBROWSERLOG, unit + include folders <cpu>, systems, x86, the compiler folder; -Xs (stripped).
# The compiler puts its build date in the binary ("[YYYY/MM/DD]" in -i output, {$i %DATE%}): two runs on the same day
# give the same bytes, a run on another day differs in those 10 bytes only.
set -e
export TZ=UTC
K=$(cd "$(dirname "$0")" && pwd); R=$(cd "$K/../.." && pwd)
D=${1:-${TMPDIR:-/tmp}/fpc264irc-wincomp}; mkdir -p "$D"; W=$(cd "$D" && pwd)
for f in bin/ppc386 bin/ppcx64; do [ -x "$R/$f" ] || chmod +x "$R/$f"; done
rm -rf "$W/c" "$W/u386" "$W/ux64" "$W/out"; mkdir -p "$W/u386" "$W/ux64" "$W/out"
cp -rL "$R/src/compiler" "$W/c"
find "$W/c" -exec touch -h -d '2025-01-01 00:00:00' {} +
cd "$W/c"
echo "[1/2] ppc386.exe (i386-win32)"
"$R/bin/ppc386" -Twin32 -di386 -dGDB -dBROWSERLOG -Fui386 -Fusystems -Fux86 -Fu. -Fii386 -Fix86 -Fi. -Xs \
  -Fu"$R/bin/units/i386-win32" -FU"$W/u386" -FE"$W/out" pp.pas -oppc386.exe > "$W/ppc386.log" 2>&1 || { tail -20 "$W/ppc386.log"; exit 1; }
echo "[2/2] ppcx64.exe (x86_64-win64)"
"$R/bin/ppcx64" -Twin64 -dx86_64 -dGDB -dBROWSERLOG -Fux86_64 -Fusystems -Fux86 -Fu. -Fix86_64 -Fix86 -Fi. -Xs \
  -Fu"$R/bin/units/x86_64-win64" -FU"$W/ux64" -FE"$W/out" pp.pas -oppcx64.exe > "$W/ppcx64.log" 2>&1 || { tail -20 "$W/ppcx64.log"; exit 1; }
ls -l "$W/out/ppc386.exe" "$W/out/ppcx64.exe"
echo "done: copy $W/out/ppc386.exe and ppcx64.exe to bin/"
