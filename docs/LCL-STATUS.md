# LCL (Lazarus Component Library) — Build Status

## Compiled (52 PPUs, Win32)

### LCL Base
lclversion, lcltype, lclstrconsts, lclproc, lresources, lmessages

### WidgetSet Base
wsreferences, wsfactory

### LazUtils (15 units)
lazutf8, lazfileutils, fileutil, lazlogger, lazloggerbase,
laztracer, lconvencoding, lazutf8classes, masks, lazutilities,
lazsysutils, lazstringutils, avglvltree, lazfglhash, textstrings

### FCL-Image
fpimage, fpreadpng, fpwritepng, fpreadbmp, fpwritebmp,
fpreadgif, fpreadtga, fpreadxpm, fpwritexpm, clipping, fppixlcanv

## Blocked — Compiler Crash

```
intfgraphics → wslclclasses → controls → graphics → forms
```

**Cause:** ppc386 2.6.4 hits EAccessViolation at $00000000000F17E2
when compiling deep class hierarchies (TControl→TWinControl→TForm).
This is a known compiler limitation with very complex type graphs.
Not a source issue.

## Workarounds

1. **Build on native Windows** — Install Lazarus IDE + FPC on
   Windows. Compile LCL natively. Copy PPUs to our tree.
   This is what Lazarus users do.

2. **Use FPC 3.2.2 compiler** — Bootstrap FPC 3.2.2 from source
   (multi-step: 2.6.4 → 3.0 → 3.2.2). Its compiler handles
   deep hierarchies. Use it only for LCL, keep 2.6.4irc for
   everything else.

3. **Replace LCL with FV** — If NMServer only needs basic UI
   (menus, dialogs, status), use Free Vision instead. Already
   compiled and working on all targets.

4. **Direct Win32 API** — For a Win32-only tool, call CreateWindow/
   MessageBox etc. directly. No LCL needed. ~200 lines for a
   basic GUI.

## For NMServer

NMServer needs LCL for its GUI. Options:
- wrench builds LCL PPUs on her Windows box, sends them
- Port NMServer GUI to FV (mterm already proves FV works)
- Strip GUI, make NMServer CLI-only with FV status display
