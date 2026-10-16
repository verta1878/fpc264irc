# x64graph — graph on the x86_64 targets — byte, 2026-10-16

One graph program (`x64graph.pas`, `uses graph`) built for every x86_64 target, so you can see which targets have the
`graph` unit, what the compiler says on the ones that do not, and the fix.

```
test/x64graph/build.sh [out dir]      # Linux x86_64 host; default $TMPDIR/fpc264irc-x64graph-test
```

| # | Target | `uses graph` | Fix |
|---|---|---|---|
| 1 | x86_64-win64 | builds (GDI `graph`) | none needed; `uses ptcgraph` also builds (hi-colour / 24-bit) |
| 2 | x86_64-linux | **stops** with the message below | `x64ptcgraph.pas`: change `uses graph` to `uses ptcgraph` |
| 3 | x86_64-freebsd | builds (compile only: there is no x86_64 FreeBSD linker here) | none needed |
| 4 | x86_64-darwin | **stops** with the message below | build the same program 32-bit: `bin/ppc386 -Tdarwin ... -Fubin/units/i386-darwin` |

## The messages
x86_64-linux:
```
graph.pp(6,2) Fatal: User defined: x86_64-linux has no graph unit (FPC builds graph for Linux/i386 only, it needs
svgalib). Use ptcgraph instead: uses ptcgraph; (ptccrt / ptcmouse for crt / mouse). See tools/graph-322-build/README.md
```
x86_64-darwin:
```
graph.pp(6,2) Fatal: User defined: x86_64-darwin has no graph unit (the Mac graph uses Carbon, which is 32-bit only).
Build the program for i386-darwin instead: bin/ppc386 -Tdarwin -Fubin/units/i386-darwin. See tools/graph-322-build/README.md
```
(`User defined:` is the compiler's own label for such a message.) Without them the compiler only said
`Fatal: Can't find unit graph used by x64graph`.

## Why
- **x86_64-linux**: the Linux `graph` is built on svgalib (`libvga`) and FPC builds it for Linux/i386 only
  (`src/packages/graph/fpmake.pp`: `AddUnit('graph.pp',[i386],[linux])`). `ptcgraph` (X11 through ptc) is the graph
  backend there: the same routines as `graph`, plus 24-bit colour. Use `ptccrt` / `ptcmouse` with it for crt / mouse.
- **x86_64-darwin**: the Mac `graph` draws through Carbon (QuickDraw windows), which Apple only ever made 32-bit;
  there is no ptc for darwin either. i386-darwin programs run on Intel Macs up to macOS 10.14 (32-bit apps were dropped
  in 10.15).

## How the message works
`bin/units/x86_64-linux/graph.pp` and `bin/units/x86_64-darwin/graph.pp` are 6-line source files: when the compiler
finds no `graph.ppu` in the unit folder it compiles `graph.pp` from there, and that file only holds a `{$fatal ...}`
with the text above. Nothing is written, and programs that do not use `graph` never see it. x86_64-win64 and
x86_64-freebsd have a real `graph` unit and no such file.

## Checked (2026-10-16, this host)
`build.sh`: all 7 lines as in the table ("all as expected"). Run: x86_64-linux `x64ptcgraph` (Xvfb) - InitGraph 0,
1280x1024, 16,777,216 colours; x86_64-win64 `x64graph.exe` (Wine) - InitGraph 0, 256 colours; `x64ptcgraph.exe`
(Wine) - InitGraph 0, 16,777,216 colours. i386-darwin `x64graph` links (not run: no Mac here).
