TrayIt! Remake
==============

A clean-room reimplementation of TrayIt! 4.6.5.5 (no original code was
used or reverse-engineered), written in Free Pascal against the raw
Win32 API. Single 60 KB exe, no DLL, no installation. Runs on Windows XP, Vista,
7, 8, 10 and 11 (Vista-only APIs are loaded dynamically with XP
fallbacks; PE subsystem version 4.0).

USAGE
-----
  * Hold Ctrl while minimizing any window  -> it goes to the tray
  * Ctrl+Shift+T                           -> tray the active window
  * Left-click a tray icon                 -> restore the window
  * Right-click a tray icon                -> Restore / Always place in
    tray when minimized (per-program profile) / Remove icon / Close
  * Right-click the TrayIt! Remake icon    -> Tray active window,
    Clean stuck tray icons, Restore all windows, Exit

Profiles ("always place in tray when minimized") are stored in
  HKCU\Software\TrayItRemake\AutoTray
one value per exe name. Delete the key to reset everything.

THE WINDOWS 7 "STUCK ICON" FIX
------------------------------
The original TrayIt! left dead icons in the Win7 notification area when
a trayed program closed or crashed; they stayed until you moved the
mouse over them. This remake fixes that five ways:

  1. A system-wide WinEvent hook (EVENT_OBJECT_DESTROY) deletes our
     icon the instant the trayed window is destroyed - including
     crashes. No polling delay, no injection, no hook DLL.
  2. A 1-second watchdog re-checks every tracked window with IsWindow()
     as a backstop and deletes orphaned icons.
  3. The "TaskbarCreated" broadcast is handled, so when Explorer
     crashes/restarts every icon is re-registered instead of vanishing.
  4. On exit, logoff, or shutdown (WM_ENDSESSION) all icons are deleted
     and every hidden window is shown again - nothing gets lost.
  5. "Clean stuck tray icons" (also run automatically at startup and
     whenever a tracked program dies) sweeps WM_MOUSEMOVE across the
     notification-area toolbars - both the visible one inside
     Shell_TrayWnd and the Windows 7 NotifyIconOverflowWindow - which
     makes Explorer validate each icon's owner and silently discard the
     dead ones. This clears stuck icons left behind by ANY program, not
     just windows trayed by this tool.

NOTE: detection of Ctrl+minimize relies on the shell hook notification
(HSHELL_GETMINRECT). If you have disabled minimize animations and a
Ctrl+minimize is ever missed, use Ctrl+Shift+T instead - it always
works.

BUILDING FROM SOURCE
--------------------
Built with the fpc264irc preservation fork of Free Pascal 2.6.4
(https://github.com/verta1878/fpc264irc), cross-compiled from Linux
with the bundled compiler and MinGW binutils:

  git clone https://github.com/verta1878/fpc264irc
  cd fpc264irc && chmod +x bin/ppc386 bin/ppcx64 bin/tools/i386-win32/*

  # one-time: build fpcres (needed to link the icon resource);
  # rebuild the native RTL first per the repo README, then:
  cd src/rtl
  make all OS_TARGET=linux CPU_TARGET=x86_64 FPC=$PWD/../../bin/ppcx64 BINUTILSPREFIX=
  cd ../utils/fpcres
  ../../../bin/ppcx64 -O2 -Fu../../rtl/units/x86_64-linux \
      -Fu../../packages/fcl-res/src -Fi../../packages/fcl-res/src fpcres.pas
  cp fpcres ../../../bin/tools/i386-win32/i386-win32-fpcres

  # build the remake:
  FPCDIR=/path/to/fpc264irc
  PATH=$FPCDIR/bin/tools/i386-win32:$PATH \
  $FPCDIR/bin/ppc386 -Twin32 -WG -O2 -XX -Xs \
      -Fu$FPCDIR/bin/units/i386-win32 -XPi386-win32- trayit_r.pas

(The cwstring unit fails to build in the fork's native RTL; it is not
needed for fpcres or this program.)

THE utrayit UNIT (all FPC targets)
----------------------------------
utrayit.pas provides class TTrayIt for CONSOLE programs on every FPC
target OS:
  Windows      - MinimizeConsole/RestoreConsole on the real console
                 window; TrayConsole hides the console behind a live
                 tray icon (background message-pump thread, click to
                 restore, icon guaranteed removed on destroy/exit).
  Unix         - minimize/restore via XTWINOPS escape sequences
                 (CSI 2 t / CSI 1 t) on xterm-compatible terminals.
  DOS/OS2/etc  - graceful stubs; code still compiles and runs.
traydemo.pas is a small demo; prebuilt binaries for i386-win32,
x86_64-linux and i386-go32v2 (DOS) are in build/.

FILES
-----
  trayit_r.exe            the tray program (all you need on Windows)
  trayit_r.pas            full source, one file, pure Win32 API
  trayit_r.v1.pas         initial version, before the session fixes
  trayit_r.diff           diff v1 -> final (PHWND fix + icon resource)
  utrayit.pas             cross-platform TTrayIt unit (console apps)
  traydemo.pas            demo for the unit
  build/win32/traydemo.exe, build/linux/traydemo, build/dos/traydemo.exe
  trayit_r.ico            application icon
  trayit_r.res            compiled icon resource linked into the exe
  make_icon_res.py        regenerates the .ico and canonical .res
  COMPILER-FIXES.md       every toolchain issue hit + fix, documented
  FOR-FPC264IRC-AUTHOR.md how to integrate utrayit into the compiler
                          repo, plus three upstreamable fixes
  fpc264irc-changes.diff  annotated patch of the compiler repo changes

This remake is original code and carries no license restrictions from
the original freeware TrayIt! by Igor Nys.
