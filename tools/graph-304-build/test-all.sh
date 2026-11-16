#!/bin/bash
# fpc264irc graph 3.0.4 backport — compile + runtime tests (byte, 2026-10-02)
# Needs: Xvfb, Wine (win32+win64), DOSBox, i386 X11 + SDL 1.2 libs, libc6-dev-i386, and a lib32/ folder here with
# libX11.so libXext.so libXrandr.so libXxf86vm.so libXxf86dga.so libGL.so libSDL.so symlinks to the i386 libraries.
# Tests run against bin/units overlaid with out/ (out/ keeps the .o files needed to link the test programs).
K=$(cd $(dirname $0) && pwd); R=${R:-$(cd $K/../.. && pwd)}; W=$K/testrun; rm -rf $W; mkdir -p $W
V=$W/units; for t in $(ls $K/out); do mkdir -p $V/$t; cp -a $R/bin/units/$t/. $V/$t/; cp $K/out/$t/*.ppu $K/out/$t/*.o $K/out/$t/*.a $V/$t/ 2>/dev/null; done
TS=$R/src/packages/graph/tests
chmod +x $R/bin/ppc386 $R/bin/ppcx64 $R/bin/tools/*/* 2>/dev/null   # git from Windows drops the exec bit
export WINEPREFIX=/root/.wine WINEDEBUG=-all SDL_VIDEODRIVER=dummy SDL_AUDIODRIVER=dummy
XV='xvfb-run -a -s "-screen 0 1280x1024x24"'
pc(){ case $1 in i386-*) echo $R/bin/ppc386;; *) echo $R/bin/ppcx64;; esac; }
echo "## compile tests"
for x in i386-go32v2:graphtest i386-win32:graphtest x86_64-win64:graphtest i386-linux:graphtest i386-freebsd:graphtest x86_64-freebsd:graphtest i386-darwin:graphtest i386-os2:graphtest \
         i386-win32:graphtest_ptc x86_64-win64:graphtest_ptc i386-linux:graphtest_ptc x86_64-linux:graphtest_ptc \
         i386-linux:ggi x86_64-linux:ggi i386-freebsd:ggi x86_64-freebsd:ggi \
         i386-win32:sdl i386-linux:sdl i386-freebsd:sdl i386-darwin:sdl \
         i386-go32v2:ptctest i386-win32:ptctest x86_64-win64:ptctest i386-linux:ptctest x86_64-linux:ptctest; do
  t=${x%%:*}; p=${x##*:}; D=$W/c-$t-$p; mkdir -p $D; xf=""; [ $t = i386-darwin ] && xf=-Sg; src=$TS/$p.pp
  case $p in ggi) src=$D/ggitest.pp; sed 's/uses Graph;/uses ggigraph;/' $TS/graphtest.pp > $src;; sdl) src=$D/sdltest.pp; sed 's/uses Graph;/uses sdlgraph;/' $TS/graphtest.pp > $src;; esac
  $(pc $t) -T${t#*-} -n -s $xf -FU$D -Fu$V/$t $src > $D/L 2>&1; rc=$?
  echo "$t $p: $([ $rc = 0 ] && echo PASS || echo FAIL) $(ls $D | grep -c ppu) units recompiled"
done
echo "## runtime tests"
run_win(){ t=$1; k=$2; D=$W/r-$t-$k; mkdir -p $D; d=""; [ $k = ptc ] && d=-dPTC
  $(pc $t) -T${t#*-} $d -n -FU$D -FE$D -Fu$V/$t $TS/rtest.pp > $D/L 2>&1 || { echo "$t $k: LINK FAIL"; return; }
  (cd $D; : > RESULT.TXT; eval timeout 90 $XV wine rtest.exe >/dev/null 2>&1; echo "$t $k (Wine, all modes in one process):"; tr -d '\r' < RESULT.TXT | sed 's/^/   /'); }
run_lin(){ t=$1; D=$W/r-$t-ptc; mkdir -p $D; fl="-Fl/usr/lib/x86_64-linux-gnu"; [ $t = i386-linux ] && fl="-Fl$K/lib32 -Fl/usr/lib/i386-linux-gnu -Fl/usr/lib32"
  $(pc $t) -Tlinux -dPTC -n -FU$D -FE$D -Fu$V/$t $fl $TS/rtest.pp > $D/L 2>&1 || { echo "$t ptc: LINK FAIL"; return; }
  (cd $D; eval timeout 60 $XV ./rtest >/dev/null 2>&1; echo "$t ptc (Xvfb):"; sed 's/^/   /' RESULT.TXT); }
run_dos(){ D=$W/r-go32v2; mkdir -p $D/run; T=$R/bin/tools/i386-go32v2
  $R/bin/ppc386 -Tgo32v2 -n -XX -FU$D -FE$D -FD$T -XPi386-go32v2- -Fu$V/i386-go32v2 $TS/rtest.pp > $D/L 2>&1 || { echo "go32v2: LINK FAIL"; return; }
  cp $D/rtest.exe $D/run/RTEST.EXE; cp $R/lib/cwsdpmi/CWSDPMI.EXE $D/run/
  printf '[sdl]\noutput=surface\n[dosbox]\nmachine=svga_s3\nmemsize=32\n[cpu]\ncycles=max\n[autoexec]\nmount c %s\nc:\nRTEST.EXE\nexit\n' $D/run > $D/dosbox.conf
  timeout 120 dosbox -conf $D/dosbox.conf -noconsole >/dev/null 2>&1; echo "i386-go32v2 graph (DOSBox svga_s3):"; tr -d '\r' < $D/run/RESULT.TXT | sed 's/^/   /'; }
run_ptcdos(){ D=$W/r-go32v2-ptc; mkdir -p $D/run; T2=$R/bin/tools/i386-go32v2
  $R/bin/ppc386 -Tgo32v2 -n -XX -FU$D -FE$D -FD$T2 -XPi386-go32v2- -Fu$V/i386-go32v2 $TS/ptctest.pp > $D/L 2>&1 || { echo "go32v2 ptc: LINK FAIL"; return; }
  cp $D/ptctest.exe $D/run/PTCTEST.EXE; cp $R/lib/cwsdpmi/CWSDPMI.EXE $D/run/
  printf '[sdl]\noutput=surface\n[dosbox]\nmachine=svga_s3\nmemsize=32\n[cpu]\ncycles=max\n[autoexec]\nmount c %s\nc:\nPTCTEST.EXE\nexit\n' $D/run > $D/dosbox.conf
  timeout 120 dosbox -conf $D/dosbox.conf -noconsole >/dev/null 2>&1; echo "i386-go32v2 ptc (DOSBox svga_s3):"; tr -d '\r' < $D/run/RESULT.TXT | sed 's/^/   /'; }
run_sdl(){ D=$W/r-i386-linux-sdl; mkdir -p $D
  $R/bin/ppc386 -Tlinux -dSDLG -n -FU$D -FE$D -Fu$V/i386-linux -Fl$K/lib32 -Fl/usr/lib/i386-linux-gnu -Fl/usr/lib32 $TS/rtest.pp > $D/L 2>&1 || { echo "i386-linux sdl: LINK FAIL"; return; }
  (cd $D; SDL_VIDEODRIVER=x11 eval timeout 60 $XV ./rtest > run.log 2>&1; echo "i386-linux sdlgraph (Xvfb, SDL 1.2): exit $?"; sed 's/^/   /' RESULT.TXT; grep -m2 -E 'Exception|Access' run.log | sed 's/^/   /'); }
run_dos; run_ptcdos; run_sdl; run_win i386-win32 graph; run_win i386-win32 ptc; run_win x86_64-win64 graph; run_win x86_64-win64 ptc; run_lin i386-linux; run_lin x86_64-linux
