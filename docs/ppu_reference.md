# FPC 2.6.4irc — PPU Reference Guide

## Quick Start

Every unit is used with `uses UnitName;` in your Pascal source. Compile with the target's compiler and `-Fu` pointing to the PPU directory.

```pascal
program hello;
uses sysutils, sockets;  // just add units you need
begin
  writeln('Date: ', DateToStr(Now));
end.
```

Compile: `ppc386 -Fu/path/to/bin/units/i386-linux hello.pas`

---

## PPU Availability Matrix

✅ = available, — = not applicable

| Unit | Linux64 | Linux32 | Win32 | go32v2 | FreeBSD | OS/2 | i8086 | Darwin |
|------|---------|---------|-------|--------|---------|------|-------|--------|
| system | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| objpas | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| strings | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| dos | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| crt | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | — |
| sysutils | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| classes | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| math | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| sockets | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| typinfo | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| fgl | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| types | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| strutils | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| dateutils | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| md5 | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | — |
| sha1 | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | — |
| keyboard | ✅ | ✅ | ✅ | ✅ | — | ✅ | ✅ | — |
| mouse | ✅ | ✅ | ✅ | ✅ | — | ✅ | ✅ | — |
| video | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | — |
| objects | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | — |
| variants | ✅ | ✅ | ✅ | ✅ | — | ✅ | — | — |
| gtk2 | ✅ | ✅ | ✅ | — | ✅ | — | — | ✅ |
| windows | — | — | ✅ | — | — | — | — | — |

---

## Unit Categories

### 1. Core RTL — Available on ALL 8 targets

These compile everywhere. Write once, run on all platforms.

**system** — Compiler runtime. Loaded automatically, never put in `uses`.
Provides: WriteLn, ReadLn, New, Dispose, Move, FillChar, Copy, Length, SetLength, Halt, Exit, Inc, Dec, Ord, Chr, Str, Val, Concat, Pos, Delete, Insert, Assigned, SizeOf.

**objpas** — Object Pascal mode support. Loaded automatically in `{$mode objfpc}` or `{$mode delphi}`.
Provides: AnsiString, WideString, exceptions, RTTI basics, string helpers.

**strings** — Null-terminated string operations (PChar).
```pascal
uses strings;
var buf: array[0..255] of char;
begin
  StrPCopy(buf, 'Hello');
  writeln(StrLen(buf));  // 5
end.
```

**dos** — DOS-compatible file/directory/environment operations.
```pascal
uses dos;
var sr: SearchRec;
begin
  FindFirst('*.pas', Archive, sr);
  while DosError = 0 do begin
    writeln(sr.Name);
    FindNext(sr);
  end;
  FindClose(sr);
end.
```

**sysutils** — Modern file I/O, date/time, string formatting, exceptions.
```pascal
uses sysutils;
begin
  writeln(ExtractFileName('/home/user/test.pas'));  // test.pas
  writeln(FormatDateTime('yyyy-mm-dd', Now));       // 2026-07-18
  writeln(IntToStr(42));                            // 42
  if FileExists('config.ini') then writeln('found');
end.
```

**classes** — TList, TStringList, TStream, TComponent, TThread.
```pascal
uses classes;
var sl: TStringList;
begin
  sl := TStringList.Create;
  sl.Add('alpha');
  sl.Add('beta');
  sl.Sort;
  writeln(sl[0]);  // alpha
  sl.Free;
end.
```

**math** — Mathematical functions beyond system unit.
```pascal
uses math;
begin
  writeln(Power(2, 10):0:0);  // 1024
  writeln(Log2(1024):0:0);    // 10
  writeln(Max(3, 7));          // 7
  writeln(Ceil(3.2):0:0);     // 4
end.
```

**types** — Basic type definitions (TPoint, TRect, TSize, TSmallPoint).
```pascal
uses types;
var r: TRect;
begin
  r := Rect(10, 20, 100, 200);
  writeln(r.Right - r.Left);  // 90
end.
```

**typinfo** — Runtime type information (RTTI).
```pascal
uses typinfo, classes;
var sl: TStringList;
begin
  sl := TStringList.Create;
  writeln(sl.ClassName);                         // TStringList
  writeln(GetPropInfo(sl, 'Count') <> nil);      // TRUE
  sl.Free;
end.
```

**fgl** — Generic containers (TFPGList, TFPGMap, TFPGObjectList).
```pascal
uses fgl;
type TIntList = specialize TFPGList<Integer>;
var list: TIntList;
begin
  list := TIntList.Create;
  list.Add(42);
  list.Add(7);
  list.Sort;
  writeln(list[0]);  // 7
  list.Free;
end.
```

**strutils** — Extended string operations.
```pascal
uses strutils;
begin
  writeln(ReverseString('hello'));           // olleh
  writeln(DupeString('ab', 3));             // ababab
  writeln(ContainsText('Hello World', 'world')); // TRUE
  writeln(ReplaceStr('foo bar', 'bar', 'baz'));  // foo baz
end.
```

**getopts** — Command-line option parsing (getopt/getopt_long).
```pascal
uses getopts;
var c: char;
begin
  repeat
    c := GetOpt('hv');
    case c of
      'h': writeln('Help');
      'v': writeln('Verbose');
    end;
  until c = EndOfOptions;
end.
```

**ctypes** — C-compatible types (cint, cuint, clong, cdouble).
```pascal
uses ctypes;
var x: cint;      // maps to C int
    d: cdouble;   // maps to C double
begin
  x := 42;
  d := 3.14;
end.
```

**iso7185** — ISO 7185 Standard Pascal compatibility.

**macpas** — Mac Pascal compatibility (Cycle, Leave string operations).

**charset** — Character set conversion tables.

**sysconst** — System error message constants.

**rtlconst** / **rtlconsts** — RTL resource string constants.

### 2. Sockets — Available on ALL 8 targets

The same BSD socket API works identically everywhere. Backend differs per platform but API is the same.

```pascal
uses sockets;
var
  s: TSocket;
  addr: TInetSockAddr;
  buf: array[0..1023] of char;
  n: ssize_t;
begin
  { DOS only: InitWatt32; }
  s := fpSocket(AF_INET, SOCK_STREAM, 0);
  addr.sin_family := AF_INET;
  addr.sin_port := htons(80);
  addr.sin_addr.s_addr := htonl($7F000001);  // 127.0.0.1
  fpConnect(s, @addr, SizeOf(addr));
  fpSend(s, @buf, Length(buf), 0);
  n := fpRecv(s, @buf, SizeOf(buf), 0);
  CloseSocket(s);
  { DOS only: DoneWatt32; }
end.
```

| Target | Backend |
|--------|---------|
| Linux | kernel syscalls (socketcall / direct) |
| Win32 | WinSock2 (ws2_32.dll) |
| FreeBSD | kernel syscalls (BSD native) |
| OS/2 | OS/2 TCP/IP stack |
| go32v2 | Watt-32 libwatt.a |
| i8086 | Watt-32 wattcpwl.lib |
| Darwin | kernel syscalls (XNU BSD) |

**Key functions:** fpSocket, fpConnect, fpBind, fpListen, fpAccept, fpSend, fpRecv, fpSendTo, fpRecvFrom, fpSelect, fpSetSockOpt, fpGetSockOpt, CloseSocket, htons, htonl, ntohs, ntohl, inet_addr, inet_ntoa, gethostbyname.

**DOS-specific:** InitWatt32 (call before any socket op), DoneWatt32 (cleanup). Needs packet driver at runtime.

### 3. Date/Time and Conversion — All platforms

**dateutils** (dateutil on some targets) — Extended date/time operations.
```pascal
uses dateutils;
begin
  writeln(DaysBetween(Now, EncodeDate(2025, 1, 1)));
  writeln(YearOf(Now));
  writeln(IsPM(Now));
end.
```

**convutils** / **convutil** — Unit conversion framework.
**stdconvs** — Standard conversions (length, mass, temperature, etc.).
```pascal
uses convutils, stdconvs;
begin
  writeln(Convert(100, duCentimeters, duInches):0:2);  // 39.37
  writeln(Convert(72, tuFahrenheit, tuCelsius):0:2);   // 22.22
end.
```

### 4. Hashing and Crypto — 7/8 targets (not Darwin yet)

**md5** — MD5 message digest.
```pascal
uses md5;
begin
  writeln(MD5Print(MD5String('Hello World')));
  // b10a8db164e0754105b7a99be72e3fe5
end.
```

**sha1** — SHA-1 hash.
```pascal
uses sha1;
begin
  writeln(SHA1Print(SHA1String('Hello World')));
end.
```

**crc** — CRC32 checksum.
**adler** — Adler32 checksum.

### 5. Console/Text UI — Platform-dependent

**crt** — Text colors, cursor positioning, keyboard input. Available on all targets.
```pascal
uses crt;
begin
  TextColor(Yellow);
  TextBackground(Blue);
  ClrScr;
  GotoXY(10, 5);
  write('Hello!');
  ReadKey;
end.
```

**keyboard** — Low-level keyboard scan codes and events. Not on FreeBSD/Darwin.
```pascal
uses keyboard;
var k: TKeyEvent;
begin
  InitKeyboard;
  k := GetKeyEvent;
  writeln('Key: ', GetKeyEventChar(k));
  DoneKeyboard;
end.
```

**mouse** — Mouse events and position.
- Linux/Win32/OS2: system mouse driver
- go32v2: INT 33h mouse driver
- i8086: INT 33h (our custom unit)
```pascal
uses mouse;
var e: TMouseEvent;
begin
  InitMouse;
  ShowMouse;
  GetMouseEvent(e);
  writeln('X=', e.X, ' Y=', e.Y);
  DoneMouse;
end.
```

**video** — Direct text buffer access.
- Linux/Win32/OS2: terminal video buffer
- i8086: VGA text buffer at B800:0000
```pascal
uses video;
begin
  InitVideo;
  VideoBuf^[0] := Ord('A') or ($07 shl 8);  // white 'A'
  UpdateScreen(true);
  DoneVideo;
end.
```

**ports** — Hardware I/O port access (DOS/OS2 only).
```pascal
uses ports;
begin
  Port[$3F8] := $41;  // write to COM1
end.
```

**printer** — LPT parallel port output.

### 6. Unix/POSIX — Linux, FreeBSD, Darwin, OS/2(partial)

**baseunix** — Low-level POSIX syscall wrappers.
```pascal
uses baseunix;
var st: stat;
begin
  fpStat('/etc/passwd', st);
  writeln('Size: ', st.st_size);
  writeln('UID:  ', fpGetUID);
  writeln('PID:  ', fpGetPID);
end.
```

**unix** — Higher-level Unix operations (fpFork, fpExecve, fpWait, fpPipe).
```pascal
uses unix, baseunix;
var pid: pid_t;
begin
  pid := fpFork;
  if pid = 0 then begin
    writeln('Child process');
    fpExit(0);
  end else
    writeln('Parent, child PID: ', pid);
end.
```

**unixtype** — Unix type definitions (pid_t, uid_t, gid_t, mode_t, stat, timeval).

**termio** — Terminal I/O control (tcgetattr, tcsetattr, raw mode).

**sysctl** — BSD sysctl interface (FreeBSD, Darwin).

**dl** — Dynamic library loading (dlopen, dlsym, dlclose).
```pascal
uses dl;
var h: pointer;
begin
  h := dlopen('libm.so.6', RTLD_LAZY);
  if h <> nil then begin
    writeln('Loaded');
    dlclose(h);
  end;
end.
```

**dynlibs** — Cross-platform dynamic library loading.

**cthreads** — POSIX threads integration. Add to uses to enable threading.

**cwstring** — Wide string manager using system iconv.

**errors** — POSIX errno to string conversion.

### 7. Unix extras — Our custom units

**seteuid_unit** — UID/GID management (fpSetEUID, fpSetEGID, fpSetREUID, fpSetREGID, fpGetGroups, fpSetGroups, fpInitGroups, fpIsRoot). Linux/FreeBSD.
```pascal
uses seteuid_unit;
begin
  if fpIsRoot then begin
    fpSetEUID(1000);  // drop to normal user
    writeln('Dropped privileges');
  end;
end.
```

**uforkpty** — Pure-FPC forkpty replacement (no libc). Linux only.
```pascal
uses uforkpty;
var masterfd: LongInt; pid: LongInt;
begin
  pid := ForkPTY_Pure(@masterfd, nil, nil, nil);
  if pid = 0 then begin
    // child: slave PTY is stdin/stdout
    writeln('Hello from PTY');
  end;
end.
```

**utextmouse** — Text-mode mouse with ANSI escape sequences. All platforms.

**utrayit** — Console tray/minimize support. All platforms.

### 8. Win32 API — Windows only (i386-win32)

**windows** — Core Win32 API (CreateFile, MessageBox, GetTickCount, etc.).
```pascal
uses windows;
begin
  MessageBox(0, 'Hello', 'Test', MB_OK);
  writeln(GetTickCount);
end.
```

**messages** — Windows message constants (WM_CREATE, WM_PAINT, etc.).
**commctrl** — Common controls (ListView, TreeView, StatusBar, ToolBar).
**commdlg** — Common dialogs (Open/Save file, Print, Font, Color).
**shellapi** — Shell functions (ShellExecute, SHFileOperation).
**shlobj** — Shell objects (SHGetSpecialFolderPath, IShellFolder).
**richedit** — Rich text edit control.
**mmsystem** — Multimedia (PlaySound, waveOut, midiOut, timer).
**wininet** — Internet functions (InternetOpen, HttpOpenRequest).
**uxtheme** — Visual styles / themes.
**activex** — ActiveX/OLE automation.
**comobj** — COM object support (CreateComObject, OleCheck).
**comserv** — COM server implementation.
**registry** — Windows registry access.
```pascal
uses registry;
var reg: TRegistry;
begin
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;
  if reg.OpenKeyReadOnly('\Software\Microsoft') then
    writeln('Key opened');
  reg.Free;
end.
```

**inifiles** — INI file reading/writing (cross-platform but built for Win32 + x86_64-linux).

### 9. GTK2 GUI — Linux, Win32, FreeBSD, Darwin

Pure FPC bindings, no Lazarus needed. Link against system GTK2 libraries.

```pascal
uses gtk2, glib2;
var win: PGtkWidget;
begin
  gtk_init(@argc, @argv);
  win := gtk_window_new(GTK_WINDOW_TOPLEVEL);
  gtk_window_set_title(PGtkWindow(win), 'Hello GTK2');
  gtk_widget_set_size_request(win, 400, 300);
  g_signal_connect(win, 'destroy', TGCallback(@gtk_main_quit), nil);
  gtk_widget_show(win);
  gtk_main;
end.
```

**Stack:** x, xlib, xrender (X11) → glib2 → atk → pango, pangocairo → cairo → gdk2pixbuf → gdk2, gdk2x → gtk2, gtk2ext → libglade2.

### 10. Carbon/macOS — Darwin only (partial)

**MacTypes** — Basic Mac types (OSStatus, OSErr, Str255, etc.).
**CFBase, CFString, CFArray, CFData, CFDictionary, CFLocale, CFCharacterSet** — Core Foundation types.
**MacOSAll** — Master unit for all Carbon APIs (partial).
**ConditionalMacros** — Compiler conditionals for Mac Pascal.

### 11. DOS-specific — go32v2 + i8086

**go32** — DPMI interface (go32v2 only, not i8086).
**dpmiexcp** — DPMI exception handling.
**msmouse** — MS Mouse compatibility alias.
**vesamode** — VESA video modes (go32v2 only).
**doorkit86** — BBS door development kit (i8086 only).
```pascal
uses doorkit86;
begin
  dk_init;
  dk_write('Welcome to my door!');
  dk_writeln('Press any key...');
  dk_readkey;
  dk_done;
end.
```

### 12. Compression — 32-bit targets only

**paszlib** — zlib compression/decompression.
**zstream** — Stream-based zlib (TCompressionStream, TDecompressionStream).
**zipper** — ZIP archive creation/extraction.
**gzio** — GZip file I/O.

Not available on i8086 (64K segment limit).

```pascal
uses zipper;
var z: TZipper;
begin
  z := TZipper.Create;
  z.FileName := 'test.zip';
  z.Entries.AddFileEntry('readme.txt');
  z.ZipAllFiles;
  z.Free;
end.
```

### 13. Database — x86_64-linux, i386-linux, i386-win32

**db** — Abstract database interface (TDataSet, TField, TParam).
**bufdataset** — In-memory dataset.
**memds** — Memory dataset.
**sdfdata** — SDF (fixed-width) text file dataset.
**sqldb** — SQL database connectivity framework.
**dbf** — dBASE file format access.

### 14. XML/JSON — x86_64-linux, select others

**dom** — DOM XML parser.
**xmlread** / **xmlwrite** — XML reader/writer.
**xmlconf** — XML configuration files.
**fpjson** — JSON parser/generator.
**jsonconf** — JSON configuration files.
**sax** — SAX event-based XML parser.

### 15. Image — x86_64-linux

**fpimage** — Abstract image framework.
**fpcanvas** — Drawing canvas.
**fpreadpng** / **fpwritepng** — PNG support.
**fpreadjpeg** / **fpwritejpeg** — JPEG support.
**fpreadbmp** / **fpwritebmp** — BMP support.
**fpreadgif** — GIF reading.
**fpreadtiff** / **fpwritetiff** — TIFF support.

### 16. LCL (Lazarus Component Library) — x86_64-linux

51 LazUtils PPUs + 154 LCL PPUs with CustomDrawn widgetset. No external GUI libs needed.

```pascal
uses Interfaces, Forms, StdCtrls;
// CustomDrawn draws widgets via X11 protocol directly
```

---

## PPU Counts by Target

| Target | RTL | Packages | GUI | Total |
|--------|-----|----------|-----|-------|
| x86_64-linux | 88 | 225 | 14 | 327 |
| i386-linux | 95 | 8 | 14 | 117 |
| i386-win32 | 80 | 9 | 26 | 115 |
| i386-go32v2 | 74 | — | — | 74 |
| i386-freebsd | 67 | — | 14 | 81 |
| i386-os2 | 84 | — | — | 84 |
| i8086-msdos | 42 | — | — | 42 |
| i386-darwin | 42 | — | 12 | 54 |
| **TOTAL** | | | | **894** |

## Smartlinks

Smartlinks split each unit into per-function .o files so the linker only includes functions you actually call. Critical on i8086-msdos where the 640KB limit means every byte counts.

| Target | Smartlinks | Notes |
|--------|-----------|-------|
| i8086-msdos | 4,369 .o files | Essential for DOS |
| i386-go32v2 | Per-unit .o | Standard FPC |
| All others | Per-unit .o | Standard FPC |
| i386-darwin | PPU only | Assemble/link on Mac |

## Compilation Examples

### Cross-compile for all targets:

```bash
# Linux i386:
ppc386 -Fu bin/units/i386-linux myapp.pas

# Win32:
ppc386 -Twin32 -Fu bin/units/i386-win32 myapp.pas

# DOS go32v2:
ppc386 -Tgo32v2 -Fu bin/units/i386-go32v2 myapp.pas

# OS/2:
ppc386 -Temx -Fu bin/units/i386-os2 myapp.pas

# FreeBSD:
ppc386 -Tfreebsd -Fu bin/units/i386-freebsd myapp.pas

# Darwin:
ppc386 -Tdarwin -s -Fu bin/units/i386-darwin myapp.pas

# DOS i8086:
ppcross8086 -Tmsdos -Fu bin/units/i8086-msdos myapp.pas

# Linux x86_64:
ppcx64 -Fu bin/units/x86_64-linux myapp.pas
```
