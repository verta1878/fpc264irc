#!/bin/bash
# fpc264irc test/x64graph: build the graph test on every x86_64 target and show what happens - byte, 2026-10-16
# usage: test/x64graph/build.sh [out dir]      (Linux x86_64 host; default $TMPDIR/fpc264irc-x64graph-test)
# x86_64-linux and x86_64-darwin have no graph unit: there "uses graph" stops with a message (bin/units/<target>/graph.pp)
# that says what to use instead; the next line builds that fix. See README.md.
K=$(cd "$(dirname "$0")" && pwd); R=$(cd "$K/../.." && pwd); O=${1:-${TMPDIR:-/tmp}/fpc264irc-x64graph-test}; mkdir -p "$O"
chmod +x "$R/bin/ppcx64" "$R/bin/ppc386" "$R"/bin/tools/i386-darwin/* 2>/dev/null
DT=$R/bin/tools/i386-darwin
run() {   # run <label> <expect: ok|stop> <out name> <compiler + options...>
  local label=$1 expect=$2 out=$3; shift 3; local d="$O/$out"; rm -rf "$d"; mkdir -p "$d"
  "$@" -FE"$d" -FU"$d" > "$d/build.log" 2>&1; local rc=$?
  if [ $rc = 0 ]; then r="builds"; else r="stops"; fi
  printf '%-48s %s' "$label" "$r"
  if [ $rc != 0 ]; then echo; grep -E 'Fatal: User defined' "$d/build.log" | sed 's/^/    /'
     grep -q 'Fatal: User defined' "$d/build.log" || grep -E 'Error|Fatal' "$d/build.log" | head -3 | sed 's/^/    /'
  else p=$(cd "$d" && ls -1 | grep -v -E '\.(o|ppu|log|res)$|^ppas\.sh$|^link' | tr '\n' ' ')
     echo " -> ${p:-compiled, not linked}"; fi
  case "$expect$r" in okbuilds|stopstops) ;; *) echo "    UNEXPECTED (expected: $expect)"; FAIL=1;; esac
  rm -f "$d"/*.o "$d"/*.ppu "$d"/link*.res "$d"/ppas.sh
}
FAIL=0
echo "1  x86_64-win64"
run "   uses graph     (GDI)"            ok   win64-graph     "$R/bin/ppcx64" -Twin64 -Fu"$R/bin/units/x86_64-win64" "$K/x64graph.pas"
run "   uses ptcgraph"                   ok   win64-ptcgraph  "$R/bin/ppcx64" -Twin64 -Fu"$R/bin/units/x86_64-win64" "$K/x64ptcgraph.pas"
echo "2  x86_64-linux"
run "   uses graph"                      stop linux-graph     "$R/bin/ppcx64" -Tlinux -Fu"$R/bin/units/x86_64-linux" "$K/x64graph.pas"
run "   fix: uses ptcgraph"              ok   linux-ptcgraph  "$R/bin/ppcx64" -Tlinux -Fu"$R/bin/units/x86_64-linux" "$K/x64ptcgraph.pas"
echo "3  x86_64-freebsd"
run "   uses graph     (compile only, -Cn)" ok freebsd-graph  "$R/bin/ppcx64" -Tfreebsd -Cn -Fu"$R/bin/units/x86_64-freebsd" "$K/x64graph.pas"
echo "4  x86_64-darwin"
run "   uses graph"                      stop darwin64-graph  "$R/bin/ppcx64" -Tdarwin -FD"$DT" -XR"$DT/MacOSX10.6.sdk" -Fu"$R/bin/units/x86_64-darwin" "$K/x64graph.pas"
run "   fix: build for i386-darwin"      ok   darwin32-graph  "$R/bin/ppc386" -Tdarwin -FD"$DT" -XR"$DT/MacOSX10.6.sdk" -Fu"$R/bin/units/i386-darwin" "$K/x64graph.pas"
[ $FAIL = 0 ] && echo "all as expected" || { echo "SOMETHING UNEXPECTED"; exit 1; }
