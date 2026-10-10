#!/bin/bash
# fpc264irc graph 3.2.2 — build all targets (byte, 2026-10-02; 3.0.4 -> 3.2.2 and packing 2026-10-09)
# Sources: src/packages/graph (FPC 3.2.2 + our os2 backend), src/packages/ptc (FPC 3.2.2 ptc 0.99.15 + fpc264irc patches),
#          patched-i386-linux/ (2.6.4 opengl gl/glext/glx + dynlibs shim), patched-sdl/ (2.6.4 sdlutils/logger with a
#          renamed jedi-sdl include so the prebuilt sdl.ppu stays valid), plus 2.6.4 hermes, x11, pthreads, sdl, fcl-base syncobjs.
# Output: tools/graph-322-build/out/<target>: .ppu + .o (for test-all.sh) and out/packed/<target>: .ppu + .a, the way
# bin/units ships them -> copy the units listed in README.md ("Shipped") into bin/units/<target>.
# No -O2: the 2.6.4 optimizer miscompiles the go32v2 VESA code. No -CX on go32v2 (breaks mode detection).
K=$(cd $(dirname $0) && pwd); R=${R:-$(cd $K/../.. && pwd)}; OUT=${OUT:-$K/out}
G=$R/src/packages/graph/src; P0=$R/src/packages/ptc/src; S=$R/src/packages
chmod +x $R/bin/ppc386 $R/bin/ppcx64 2>/dev/null
c(){ t=$1; src=$2; shift 2
  case $t in i386-*) PC=$R/bin/ppc386;; *) PC=$R/bin/ppcx64;; esac; os=${t#*-}; O=$OUT/$t; mkdir -p $O
  INC="-Fi$G/inc -Fi$P0 -Fi$P0/core"
  case $os in win32|win64) INC="$INC -Fi$P0/win32 -Fi$P0/win32/base -Fi$P0/win32/directx -Fi$P0/win32/gdi";;
              linux) INC="$INC -Fi$P0/x11";;
              go32v2) INC="$INC -Fi$P0/dos -Fi$P0/dos/base -Fi$P0/dos/cga -Fi$P0/dos/textfx2 -Fi$P0/dos/timeunit -Fi$P0/dos/vesa -Fi$P0/dos/vga";; esac
  $PC -T$os -n -s -FU$O -Fu$O -Fu$R/bin/units/$t $INC -Fi$(dirname $src) "$@" $src > $O/$(basename $src).log 2>&1
  rc=$?; echo "$t $(basename $src) rc=$rc $(grep -m1 -E 'Error|Fatal' $O/$(basename $src).log)"; [ $rc = 0 ] || exit 1; }
# isolated copy (so the compiler cannot pick up and rebuild neighbouring units); includes aged so prebuilt PPUs stay valid
iso(){ d=$K/iso/$(basename ${1%.*}); mkdir -p $d; cp $1 $d/; shift; for x in "$@"; do cp $x $d/; done; echo $d/$(basename $(ls $d/*.p* | head -1)); }
rm -rf $OUT $K/iso
# --- graph (plain) ---
c i386-go32v2    $G/go32v2/graph.pp
c i386-freebsd   $G/unix/graph.pp
c x86_64-freebsd $G/unix/graph.pp
c i386-darwin    $G/macosx/graph.pp -Sg
c i386-os2       $G/os2/graph.pp
c i386-linux     $G/unix/graph.pp
for t in i386-win32 x86_64-win64; do c $t $G/win32/graph.pp; c $t $G/win32/wincrt.pp; c $t $G/win32/winmouse.pp; done
# --- ggigraph (GGI backend; declares its own libggi imports) ---
for t in i386-linux x86_64-linux i386-freebsd x86_64-freebsd; do c $t $G/unix/ggigraph.pp; done
# --- ptc dependencies ---
c i386-win32 $(iso $S/opengl/src/gl.pp); c i386-win32 $(iso $S/opengl/src/glext.pp); c i386-win32 $P0/win32/directx/p_ddraw.pp
c i386-linux $S/hermes/src/hermes.pp
c i386-linux $K/patched-i386-linux/gl.pp; c i386-linux $K/patched-i386-linux/glext.pp; c i386-linux $K/patched-i386-linux/glx.pp
c i386-linux $(iso $S/fcl-base/src/syncobjs.pp)
c i386-go32v2 $S/hermes/src/hermes.pp
for u in base/mouse33h cga/cga textfx2/textfx2 timeunit/timeunit vesa/vesa vga/vga; do c i386-go32v2 $P0/dos/$u.pp; done
# --- ptc + ptcgraph ---
for t in i386-win32 x86_64-win64 i386-linux x86_64-linux i386-go32v2; do
  c $t $P0/ptc.pp; c $t $P0/ptcwrapper/ptceventqueue.pp; c $t $P0/ptcwrapper/ptcwrapper.pp
  [ $t = i386-go32v2 ] && continue   # upstream builds no ptcgraph for go32v2
  for u in ptcgraph ptccrt ptcmouse; do c $t $G/ptcgraph/$u.pp; done
done
# --- sdlgraph (i386 win32/linux/freebsd/darwin, like upstream) ---
c i386-win32 $(iso $K/patched-sdl/logger.pas $K/patched-sdl/jedi-sdl-copy.inc); c i386-win32 $(iso $K/patched-sdl/sdlutils.pas $K/patched-sdl/jedi-sdl-copy.inc)
c i386-win32 $G/sdlgraph/sdlgraph.pp
for t in i386-linux i386-freebsd i386-darwin; do
  [ $t = i386-darwin ] && { c $t $(iso $S/x11/src/x.pp); c $t $(iso $S/x11/src/xlib.pp); } || c $t $(iso $S/pthreads/src/pthreads.pp $S/pthreads/src/*.inc)
  c $t $(iso $S/sdl/src/sdl.pas $S/sdl/src/jedi-sdl.inc)
  c $t $(iso $K/patched-sdl/logger.pas $K/patched-sdl/jedi-sdl-copy.inc); c $t $(iso $K/patched-sdl/sdlutils.pas $K/patched-sdl/jedi-sdl-copy.inc)
  c $t $G/sdlgraph/sdlgraph.pp $( [ $t = i386-darwin ] && echo -Sg )
done
rm -rf $K/iso
# i386-darwin and i386-os2 have no internal assembler here: assemble the .s with the repo's own as
for s in $OUT/i386-darwin/*.s; do $R/bin/tools/i386-darwin/as -arch i386 -o ${s%.s}.o $s && rm $s || exit 1; done
for s in $OUT/i386-os2/*.s; do $R/bin/tools/i386-os2/as -o ${s%.s}.o $s && rm $s || exit 1; done
rm -f $OUT/*/ppas.sh $OUT/*/link*.res
# pack like bin/units: <unit>.o -> libp<unit>.a (go32v2: <unit>.a), .ppu rewritten to link the archive
for t in $(ls $OUT | grep -v '^packed$'); do
  D=$OUT/packed/$t; rm -rf $D; mkdir -p $D; cp $OUT/$t/*.ppu $OUT/$t/*.o $D/; cp $OUT/$t/*.a $D/ 2>/dev/null
  AX=""; [ $t = i386-os2 ] && AX=$R/bin/tools/i386-emx/emx-ar
  ARX=$AX R=$R bash $R/tools/smartpack/pack-units.sh $D $t /dev/null 2>&1 | sed 's/^/  /'; rm -f $D/*.o
done
echo "built: $(ls $OUT/*/*.ppu | wc -l) PPUs in $(ls $OUT | grep -vc '^packed$') targets"
