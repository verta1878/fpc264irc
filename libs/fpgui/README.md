# fpGUI Toolkit

**Version:** master branch (2024 snapshot from github.com/graemeg/fpgui)
**License:** Modified LGPL / GPLv2 (see LICENSE.txt)
**Status:** ARCHIVED — included as reference, not compiled

fpGUI is a cross-platform GUI toolkit for Free Pascal. It provides its
own widget set with backends for X11 (Linux), GDI (Windows), Cocoa (macOS),
and OS/2 Presentation Manager.

## Why it's here

- Reference for potential RIPView SDL replacement (Phase 26)
- Reference for PabloDraw Pascal port (Phase 26-B)
- OS/2 PM GUI support (one of few Pascal GUI toolkits with OS/2 backend)

## Why it's not compiled

- Dead upstream project (last activity ~2016)
- Requires X11/GDI/PM runtime — not useful for headless BBS servers
- Free Vision (TUI) covers our actual needs
- Lazarus LCL is the maintained alternative for GUI work

## Structure

```
framework/src/main/pascal/
  corelib/     Core types, canvas, fonts, image loading
  gui/         Widgets: buttons, edits, grids, menus, dialogs
  native/      Platform backends: X11, GDI, Cocoa
```
