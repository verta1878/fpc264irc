# FPC 2.6.4irc — GUI & Interface Map

All GUI/interface bindings are from FPC's own package source. No Lazarus LCL required.

## Platform → Interface Matrix

| Platform | GUI Toolkit | Interface | PPUs | Status |
|----------|------------|-----------|------|--------|
| **x86_64-linux** | GTK2 | X11 + GTK+ 2.x | 14/14 | ✅ |
| **i386-linux** | GTK2 | X11 + GTK+ 2.x | 14/14 | ✅ |
| **i386-win32** | Win32 API | Native Windows | 16/16 | ✅ |
| **i386-win32** | GTK2 | GTK+ runtime for Windows | 10/10 | ✅ |
| **i386-darwin** | GTK2 | X11/XQuartz + GTK+ 2.x | 9/10 | ✅ (gtk2ext needs dynlibs) |
| **i386-darwin** | Carbon | Universal Interfaces | ❌ | univint needs macpas {$setc} support |
| **i386-freebsd** | GTK2 | X11 + GTK+ 2.x | 3/14 | ⚠️ RTL cascade blocks glib2+ |
| **i386-go32v2** | FPC IDE | Text-mode (Free Vision) | — | Console only |
| **i386-os2** | — | OS/2 PM (not in FPC) | — | Console only |
| **i8086-msdos** | FPC IDE | Text-mode (INT 10h/B800h) | — | Console only |

## GTK2 Stack (14 units)

Dependency order — same code compiles on Linux, Win32, Darwin, and FreeBSD:

```
x → xlib → xrender                    (X11 protocol)
glib2                                  (GLib 2.x core)
atk                                    (Accessibility)
pango → pangocairo                     (Text rendering)
cairo                                  (2D vector graphics)
gdk2pixbuf                             (Image loading)
gdk2 → gdk2x                          (Drawing primitives + X11 backend)
gtk2 → gtk2ext                         (Widget toolkit)
libglade2                              (UI builder)
```

Usage: `uses gtk2;` — gives the full GTK+ 2.x API. Link against system GTK2 libraries at runtime.

## Win32 API Stack (16 units)

Native Windows API — no GTK runtime needed:

```
windows, messages                      (Core Win32 API)
commctrl, commdlg                      (Common controls/dialogs)
shellapi, shlobj                       (Shell integration)
richedit                               (Rich text)
mmsystem                               (Multimedia)
wininet                                (Internet/HTTP)
uxtheme                                (Visual styles)
activex, comobj, comserv, comconst     (COM/ActiveX)
registry, inifiles                     (Configuration)
```

Usage: `uses windows, commctrl;` — direct Win32 API calls. No runtime dependencies beyond Windows itself.

## Console/Text-Mode Interfaces

### DOS (go32v2 + i8086-msdos)

Uses FPC's text-mode units — no graphical GUI:

| Unit | What | Backend |
|------|------|---------|
| crt | Text colors, cursor, keyboard | INT 10h BIOS |
| keyboard | Scan codes, key events | INT 16h BIOS |
| mouse | Mouse position, buttons | INT 33h driver |
| video | Direct VGA text buffer | B800:0000 segment |
| ports | Hardware I/O port access | IN/OUT instructions |
| printer | LPT parallel port output | INT 17h BIOS |

The FPC IDE (`build-ide.sh`) uses Free Vision — a text-mode windowing framework built on these units. It provides menus, dialogs, editors, and scrollbars in 80x25/80x50 text mode.

### OS/2 (i386-os2)

Console-only in this repo. OS/2 Presentation Manager (PM) is not included in FPC's package collection. Text-mode units (crt, keyboard) work via EMX runtime.

## Smartlinks

Smartlinks do **not** apply to GUI toolkit PPUs. These units contain only `external` function declarations that reference shared libraries loaded at runtime:

```pascal
// From gtk2.pas — no static code, just declarations:
function gtk_window_new(type_: TGtkWindowType): PGtkWidget;
  cdecl; external gtklib;
```

The actual GTK/Win32/X11 code lives in the operating system's shared libraries. Your binary stays small — the linker only includes the function stubs you call.

Smartlinks matter for the **RTL units** (system, sysutils, math, classes, etc.) where FPC's own code is statically linked into your binary. On i8086-msdos with 640KB limit, smartlinks eliminate unused functions — 4,369 individual .o files across 42 PPUs.

## What About Qt?

Qt bindings are **not** in FPC's package collection. They exist only in Lazarus as `qt4pas`/`qt5pas` — C++ wrapper libraries that bridge Qt's C++ API to Pascal. This requires:

1. A C++ compiler to build the wrapper (qt4pas.so/qt5pas.dll)
2. The Lazarus LCL Qt widgetset
3. Qt development libraries on the build host

Since this repo targets self-contained FPC-only builds, Qt is out of scope. GTK2 provides equivalent cross-platform GUI capability using pure C bindings that FPC handles natively.

## What About Cocoa/Carbon?

FPC ships the `univint` package (450 source files) containing Apple's Universal Interfaces for Carbon. However, these files use `{$setc}`/`{$endc}` — Apple Pascal compiler directives that require macpas mode. FPC 2.6.4's macpas mode doesn't fully support this syntax in all contexts.

Carbon is also deprecated by Apple (removed in 64-bit macOS). For macOS GUI development, GTK2 via XQuartz is the practical option with this compiler.

## Headless/Server (nogui)

For server applications that need no GUI at all, the RTL provides everything: sockets, sysutils, classes, threads. No X11/GTK2 libraries needed on the target machine.

```pascal
uses sockets, sysutils;
// Full BSD socket API — same code on all 8 targets
```

## PPU Counts by Platform

| Platform | Total PPUs | RTL | Packages | GUI |
|----------|-----------|-----|----------|-----|
| x86_64-linux | 102 | 88 | — | 14 (GTK2) |
| i386-linux | 117 | 95 | 8 | 14 (GTK2) |
| i386-win32 | 115 | 80 | 9 | 26 (Win32 API + GTK2) |
| i386-go32v2 | 74 | 74 | — | — (console) |
| i386-freebsd | 93 | 89 | — | 4 (X11 only) |
| i386-os2 | 84 | 84 | — | — (console) |
| i8086-msdos | 42 | 42 | — | — (console) |
| i386-darwin | 42 | 24 | — | 18 (GTK2 partial) |
