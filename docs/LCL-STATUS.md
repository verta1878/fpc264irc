# LCL (Lazarus Component Library) — Build Status

## Win32 Target — 253+ PPUs compiled

All compiled with ppc386 2.6.4irc. No external compiler needed.

### RTL (56 PPUs)
system, sysutils, classes, math, typinfo, etc.

### Packages
fcl-base, paszlib, hash/crc, fcl-image, fcl-process,
winunits-base, rtl-objpas (strutils, rttiutils), fcl-registry

### Stubs
activex, comobj, shellapi, shlobj, multimon, win9xwsmanager,
fpreadjpeg, fpwritejpeg, avl_tree

### LazUtils
lazutf8, lazfileutils, lazlogger, masks, avglvltree,
lazfglhash, textstrings, lazfilecache, etc.

### LCL Core
lclversion, lcltype, lclstrconsts, lclproc, lresources,
wslclclasses, lclclasses, lmessages, interfacebase,
intfgraphics, graphics, controls, stdctrls, extctrls,
comctrls, buttons, menus, forms, dialogs, imglist, actnlist

### Win32 Widgetset
interfaces.pp compiled after:
- Disabling `{$DEFINE UseVistaDialogs}` in win32defines.inc
- Converting GUID string constants to record initializers in win32extra.pas
- LCL_7182 patch: skip CreateWidgetset when IsLibrary=true

### Full recipe
See `docs/LCL-CROSS-COMPILE-HOWTO.md` (198 lines)
