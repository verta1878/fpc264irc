program trayit_r;
{ ==========================================================================
  TrayIt! Remake  (clean-room reimplementation, no original code used)

  Minimize any window to the notification area:
    * Hold Ctrl while minimizing a window   -> goes to the tray
    * Ctrl+Shift+T                          -> trays the active window
    * Per-program "always tray on minimize" profiles (stored in HKCU)

  Windows 7 "stuck icon" fixes over the original TrayIt! 4.6.5.5:
    1. A global WinEvent hook (EVENT_OBJECT_DESTROY) removes our tray icon
       the instant the trayed window dies - even if the program crashes.
    2. A 1-second watchdog timer double-checks every tracked window with
       IsWindow() and deletes orphaned icons.
    3. The "TaskbarCreated" broadcast is handled, so all icons are re-added
       after Explorer restarts.
    4. Icons are deleted on WM_ENDSESSION / normal exit, and all hidden
       windows are made visible again so nothing is lost.
    5. "Clean stuck tray icons" sweeps the notification-area toolbars
       (including the Win7 overflow window) with WM_MOUSEMOVE, forcing
       Explorer to drop dead icons left behind by ANY program.

  Target: i386-win32, Free Pascal 2.6.4irc (fpc264irc), pure Win32 API.
  ========================================================================== }
{$mode objfpc}{$H+}
{$apptype gui}

uses
  Windows, Messages;

const
  APPTITLE      = 'TrayIt! Remake';
  WNDCLASS_NAME = 'TrayItRemakeWnd';

  WM_TRAYICON   = WM_APP + 1;   { callback from our notification icons  }
  WM_TRAYEDDIED = WM_APP + 2;   { posted by the WinEvent hook           }

  HSHELL_GETMINRECT      = 5;
  ICON_SMALL2            = 2;
  EVENT_OBJECT_DESTROY   = $8001;
  WINEVENT_OUTOFCONTEXT  = $0000;
  WINEVENT_SKIPOWNPROCESS= $0002;
  OBJID_WINDOW           = 0;
  CHILDID_SELF           = 0;
  GA_ROOT                = 2;
  GCL_HICON              = -14;
  GCL_HICONSM            = -34;
  PROCESS_QUERY_LIMITED_INFORMATION = $1000;

  NIM_ADD    = 0;  NIM_MODIFY = 1;  NIM_DELETE = 2;
  NIF_MESSAGE= 1;  NIF_ICON   = 2;  NIF_TIP    = 4;

  TIMER_POLL    = 1;   { watchdog: catch dead windows the hook missed }
  TIMER_PENDING = 2;   { short timer: confirm a minimize really happened }

  MAXTRAY   = 64;
  MAXPEND   = 8;

  { menu command ids }
  CMD_RESTORE    = 100;
  CMD_AUTOTRAY   = 101;
  CMD_CLOSEAPP   = 102;
  CMD_UNTRAY     = 103;
  CMD_TRAYACTIVE = 200;
  CMD_CLEAN      = 201;
  CMD_RESTOREALL = 202;
  CMD_EXIT       = 203;
  CMD_ABOUT      = 204;

  HOTKEY_TRAY = 1;

type
  { NOTIFYICONDATAW, Windows 2000 layout (936 bytes) - valid on Win2k..Win11 }
  TNID = packed record
    cbSize          : DWORD;
    hWnd            : HWND;
    uID             : UINT;
    uFlags          : UINT;
    uCallbackMessage: UINT;
    hIcon           : HICON;
    szTip           : array[0..127] of WideChar;
    dwState         : DWORD;
    dwStateMask     : DWORD;
    szInfo          : array[0..255] of WideChar;
    uVersion        : UINT;
    szInfoTitle     : array[0..63] of WideChar;
    dwInfoFlags     : DWORD;
  end;

  TEntry = record
    used : boolean;
    h    : HWND;        { the window we hid                      }
    id   : UINT;        { our notification icon id               }
    icon : HICON;       { private copy - we own it               }
    exe  : WideString;  { lowercase exe basename, for profiles   }
  end;

  TPending = record
    h     : HWND;
    ticks : DWORD;
  end;

{ ---- Win32 imports not reliably present in the 2.6.4 Windows unit ------- }
function Shell_NotifyIconW(dwMessage: DWORD; var nid: TNID): BOOL; stdcall;
  external 'shell32.dll' name 'Shell_NotifyIconW';
function RegisterShellHookWindow(h: HWND): BOOL; stdcall;
  external 'user32.dll' name 'RegisterShellHookWindow';
function DeregisterShellHookWindow(h: HWND): BOOL; stdcall;
  external 'user32.dll' name 'DeregisterShellHookWindow';
function SetWinEventHook(eventMin, eventMax: DWORD; hmodWEP: THandle;
  pfn: Pointer; idProcess, idThread, dwFlags: DWORD): THandle; stdcall;
  external 'user32.dll' name 'SetWinEventHook';
function UnhookWinEvent(hook: THandle): BOOL; stdcall;
  external 'user32.dll' name 'UnhookWinEvent';
function QueryFullProcessImageNameW(hProcess: THandle; dwFlags: DWORD;
  lpExeName: PWideChar; var lpdwSize: DWORD): BOOL; stdcall;
  external 'kernel32.dll' name 'QueryFullProcessImageNameW';
function XSendMessageTimeoutW(hw: HWND; Msg: UINT; wp: WPARAM; lp: LPARAM;
  fuFlags, uTimeout: UINT; out lpdwResult: PtrUInt): LRESULT; stdcall;
  external 'user32.dll' name 'SendMessageTimeoutW';
function XGetAncestor(h: HWND; gaFlags: UINT): HWND; stdcall;
  external 'user32.dll' name 'GetAncestor';

{ ---- globals ------------------------------------------------------------ }
var
  hInst            : THandle;
  hMain            : HWND = 0;
  msgShellHook     : UINT = 0;
  msgTaskbarCreated: UINT = 0;
  hEventHook       : THandle = 0;
  shellHookOk      : boolean = false;
  nextId           : UINT = 1;
  entries          : array[0..MAXTRAY-1] of TEntry;
  pend             : array[0..MAXPEND-1] of TPending;
  pendTimerOn      : boolean = false;
  menuTarget       : integer = -1;   { entry index the popup menu refers to }
  regPath          : WideString = 'Software\TrayItRemake\AutoTray';

{ ========================================================================= }
{  small helpers                                                            }
{ ========================================================================= }

procedure WStrToBuf(const s: WideString; dst: PWideChar; maxChars: integer);
var n: integer;
begin
  n := Length(s);
  if n > maxChars - 1 then n := maxChars - 1;
  if n > 0 then Move(s[1], dst^, n * SizeOf(WideChar));
  dst[n] := #0;
end;

function LowerW(const s: WideString): WideString;
var i: integer;
begin
  Result := s;
  for i := 1 to Length(Result) do
    if (Result[i] >= 'A') and (Result[i] <= 'Z') then
      Result[i] := WideChar(Ord(Result[i]) + 32);
end;

function WindowTitle(h: HWND): WideString;
var buf: array[0..255] of WideChar;
begin
  buf[0] := #0;
  GetWindowTextW(h, buf, 256);
  Result := WideString(PWideChar(@buf[0]));
  if Result = '' then Result := APPTITLE;
end;

{ lowercase basename of the exe owning window h, '' on failure }
function ExeBaseName(h: HWND): WideString;
var
  pid: DWORD; hp: THandle; sz: DWORD; i: integer;
  buf: array[0..MAX_PATH] of WideChar;
  full: WideString;
begin
  Result := '';
  pid := 0;
  GetWindowThreadProcessId(h, @pid);
  if pid = 0 then Exit;
  hp := OpenProcess(PROCESS_QUERY_LIMITED_INFORMATION, false, pid);
  if hp = 0 then
    hp := OpenProcess(PROCESS_QUERY_INFORMATION, false, pid);
  if hp = 0 then Exit;
  sz := MAX_PATH;
  buf[0] := #0;
  if QueryFullProcessImageNameW(hp, 0, @buf[0], sz) then
  begin
    full := WideString(PWideChar(@buf[0]));
    for i := Length(full) downto 1 do
      if full[i] = '\' then begin full := Copy(full, i + 1, MaxInt); break; end;
    Result := LowerW(full);
  end;
  CloseHandle(hp);
end;

{ a private copy of the best icon we can find for window h }
function GetWindowIconSafe(h: HWND): HICON;
var r: PtrUInt;
begin
  Result := 0;
  r := 0;
  if XSendMessageTimeoutW(h, WM_GETICON, ICON_SMALL2, 0, SMTO_ABORTIFHUNG, 200, r) <> 0 then
    Result := HICON(r);
  if Result = 0 then
    if XSendMessageTimeoutW(h, WM_GETICON, ICON_SMALL, 0, SMTO_ABORTIFHUNG, 200, r) <> 0 then
      Result := HICON(r);
  if Result = 0 then
    if XSendMessageTimeoutW(h, WM_GETICON, ICON_BIG, 0, SMTO_ABORTIFHUNG, 200, r) <> 0 then
      Result := HICON(r);
  if Result = 0 then Result := HICON(GetClassLongW(h, GCL_HICONSM));
  if Result = 0 then Result := HICON(GetClassLongW(h, GCL_HICON));
  if Result = 0 then Result := LoadIcon(0, IDI_APPLICATION);
  Result := CopyIcon(Result);
end;

{ ========================================================================= }
{  "always tray" profiles in the registry                                   }
{ ========================================================================= }

function IsAutoTray(const exe: WideString): boolean;
var k: HKEY; t, sz: DWORD;
begin
  Result := false;
  if exe = '' then Exit;
  if RegOpenKeyExW(HKEY_CURRENT_USER, PWideChar(regPath), 0, KEY_READ, k) = ERROR_SUCCESS then
  begin
    sz := 0; t := 0;
    Result := RegQueryValueExW(k, PWideChar(exe), nil, @t, nil, @sz) = ERROR_SUCCESS;
    RegCloseKey(k);
  end;
end;

procedure SetAutoTray(const exe: WideString; enable: boolean);
var k: HKEY; disp, one: DWORD;
begin
  if exe = '' then Exit;
  if RegCreateKeyExW(HKEY_CURRENT_USER, PWideChar(regPath), 0, nil, 0,
                     KEY_READ or KEY_WRITE, nil, k, @disp) = ERROR_SUCCESS then
  begin
    if enable then
    begin
      one := 1;
      RegSetValueExW(k, PWideChar(exe), 0, REG_DWORD, @one, SizeOf(one));
    end
    else
      RegDeleteValueW(k, PWideChar(exe));
    RegCloseKey(k);
  end;
end;

{ ========================================================================= }
{  notification icon plumbing                                               }
{ ========================================================================= }

procedure FillNid(var nid: TNID; id: UINT; icon: HICON; const tip: WideString);
begin
  FillChar(nid, SizeOf(nid), 0);
  nid.cbSize := SizeOf(nid);            { 936 = NOTIFYICONDATAW_V2 }
  nid.hWnd   := hMain;
  nid.uID    := id;
  nid.uFlags := NIF_MESSAGE or NIF_ICON or NIF_TIP;
  nid.uCallbackMessage := WM_TRAYICON;
  nid.hIcon  := icon;
  WStrToBuf(tip, @nid.szTip[0], 128);
end;

function AddIcon(id: UINT; icon: HICON; const tip: WideString): boolean;
var nid: TNID;
begin
  FillNid(nid, id, icon, tip);
  Result := Shell_NotifyIconW(NIM_ADD, nid);
  if not Result then
  begin                                  { tray busy? try once more }
    Sleep(150);
    Result := Shell_NotifyIconW(NIM_ADD, nid);
  end;
end;

procedure DeleteIcon(id: UINT);
var nid: TNID;
begin
  FillChar(nid, SizeOf(nid), 0);
  nid.cbSize := SizeOf(nid);
  nid.hWnd   := hMain;
  nid.uID    := id;
  Shell_NotifyIconW(NIM_DELETE, nid);
end;

{ ========================================================================= }
{  FIX #5 - sweep the Win7 notification area so Explorer discards           }
{  icons whose owner process is gone ("stuck icons" from any program)       }
{ ========================================================================= }

procedure NudgeToolbar(tb: HWND);
var rc: TRect; x, y: integer;
begin
  if tb = 0 then Exit;
  if not GetClientRect(tb, @rc) then Exit;
  y := 2;
  while y < rc.Bottom do
  begin
    x := 2;
    while x < rc.Right do
    begin
      { Explorer validates the icon under the cursor on WM_MOUSEMOVE and
        silently removes it when its owner window no longer exists. }
      SendMessage(tb, WM_MOUSEMOVE, 0, MAKELONG(x, y));
      Inc(x, 8);
    end;
    Inc(y, 8);
  end;
end;

procedure CleanStuckIcons;
var tray, notify, pager, ovf: HWND;
  cnTray, cnNotify, cnPager, cnTb, cnOvf: WideString;
begin
  cnTray   := 'Shell_TrayWnd';
  cnNotify := 'TrayNotifyWnd';
  cnPager  := 'SysPager';
  cnTb     := 'ToolbarWindow32';
  cnOvf    := 'NotifyIconOverflowWindow';

  tray := FindWindowW(PWideChar(cnTray), nil);
  if tray <> 0 then
  begin
    notify := FindWindowExW(tray, 0, PWideChar(cnNotify), nil);
    if notify <> 0 then
    begin
      pager := FindWindowExW(notify, 0, PWideChar(cnPager), nil);
      if pager <> 0 then
        NudgeToolbar(FindWindowExW(pager, 0, PWideChar(cnTb), nil))
      else                              { some setups have no SysPager }
        NudgeToolbar(FindWindowExW(notify, 0, PWideChar(cnTb), nil));
    end;
  end;
  { Windows 7: hidden icons live in a separate top-level overflow window }
  ovf := FindWindowW(PWideChar(cnOvf), nil);
  if ovf <> 0 then
    NudgeToolbar(FindWindowExW(ovf, 0, PWideChar(cnTb), nil));
end;

{ ========================================================================= }
{  tracked-window list                                                      }
{ ========================================================================= }

function FindEntryByHwnd(h: HWND): integer;
var i: integer;
begin
  Result := -1;
  for i := 0 to MAXTRAY - 1 do
    if entries[i].used and (entries[i].h = h) then begin Result := i; Exit; end;
end;

function FindEntryById(id: UINT): integer;
var i: integer;
begin
  Result := -1;
  for i := 0 to MAXTRAY - 1 do
    if entries[i].used and (entries[i].id = id) then begin Result := i; Exit; end;
end;

procedure DropEntry(idx: integer);
begin
  if (idx < 0) or (idx >= MAXTRAY) or not entries[idx].used then Exit;
  DeleteIcon(entries[idx].id);
  if entries[idx].icon <> 0 then DestroyIcon(entries[idx].icon);
  entries[idx].used := false;
  entries[idx].h    := 0;
  entries[idx].icon := 0;
  entries[idx].exe  := '';
end;

function IsEligible(h: HWND): boolean;
var buf: array[0..63] of WideChar; cls: WideString;
begin
  Result := false;
  if (h = 0) or (h = hMain) or not IsWindow(h) then Exit;
  if XGetAncestor(h, GA_ROOT) <> h then Exit;
  buf[0] := #0;
  GetClassNameW(h, buf, 64);
  cls := WideString(PWideChar(@buf[0]));
  if (cls = 'Shell_TrayWnd') or (cls = 'Progman') or (cls = 'WorkerW') or
     (cls = 'NotifyIconOverflowWindow') or (cls = 'Button') then Exit;
  Result := true;
end;

function TrayWindow(h: HWND): boolean;
var i, idx: integer; title: WideString;
begin
  Result := false;
  if not IsEligible(h) then Exit;
  if FindEntryByHwnd(h) >= 0 then Exit;      { already trayed }
  idx := -1;
  for i := 0 to MAXTRAY - 1 do
    if not entries[i].used then begin idx := i; break; end;
  if idx < 0 then Exit;

  title := WindowTitle(h);
  entries[idx].used := true;
  entries[idx].h    := h;
  entries[idx].id   := nextId; Inc(nextId);
  entries[idx].icon := GetWindowIconSafe(h);
  entries[idx].exe  := ExeBaseName(h);

  if not AddIcon(entries[idx].id, entries[idx].icon, title) then
  begin
    if entries[idx].icon <> 0 then DestroyIcon(entries[idx].icon);
    entries[idx].used := false;
    Exit;
  end;
  ShowWindow(h, SW_HIDE);
  Result := true;
end;

procedure RestoreEntry(idx: integer; activate: boolean);
var h: HWND;
begin
  if (idx < 0) or (idx >= MAXTRAY) or not entries[idx].used then Exit;
  h := entries[idx].h;
  DropEntry(idx);
  if not IsWindow(h) then Exit;
  ShowWindow(h, SW_SHOW);
  if activate then
  begin
    if IsIconic(h) then ShowWindow(h, SW_RESTORE);
    SetForegroundWindow(h);
  end;
end;

procedure RestoreAll(activate: boolean);
var i: integer;
begin
  for i := 0 to MAXTRAY - 1 do
    if entries[i].used then RestoreEntry(i, activate);
end;

{ FIX #3 - Explorer restarted: put every icon back }
procedure ReAddAllIcons;
var i: integer; title: WideString;
begin
  AddIcon(0, LoadIcon(0, IDI_APPLICATION),
          APPTITLE + ' - Ctrl+minimize sends a window here');
  for i := 0 to MAXTRAY - 1 do
    if entries[i].used then
    begin
      if IsWindow(entries[i].h) then
      begin
        title := WindowTitle(entries[i].h);
        AddIcon(entries[i].id, entries[i].icon, title);
      end
      else
        DropEntry(i);
    end;
end;

{ ========================================================================= }
{  pending-minimize bookkeeping (HSHELL_GETMINRECT fires for both           }
{  minimize and restore, so we confirm with IsIconic a moment later)        }
{ ========================================================================= }

procedure AddPending(h: HWND);
var i: integer;
begin
  for i := 0 to MAXPEND - 1 do
    if pend[i].h = h then Exit;
  for i := 0 to MAXPEND - 1 do
    if pend[i].h = 0 then
    begin
      pend[i].h := h;
      pend[i].ticks := GetTickCount;
      if not pendTimerOn then
      begin
        SetTimer(hMain, TIMER_PENDING, 60, nil);
        pendTimerOn := true;
      end;
      Exit;
    end;
end;

procedure CheckPending;
var i: integer; any: boolean;
begin
  any := false;
  for i := 0 to MAXPEND - 1 do
    if pend[i].h <> 0 then
    begin
      if not IsWindow(pend[i].h) then
        pend[i].h := 0
      else if IsIconic(pend[i].h) then
      begin
        TrayWindow(pend[i].h);
        pend[i].h := 0;
      end
      else if GetTickCount - pend[i].ticks > 1500 then
        pend[i].h := 0                    { was a restore, not a minimize }
      else
        any := true;
    end;
  if (not any) and pendTimerOn then
  begin
    KillTimer(hMain, TIMER_PENDING);
    pendTimerOn := false;
  end;
end;

{ ========================================================================= }
{  FIX #1 - WinEvent hook: instant icon removal when a window dies          }
{ ========================================================================= }

procedure WinEventProc(hHook: THandle; event: DWORD; hwnd: HWND;
  idObject, idChild: LongInt; idEventThread, dwmsEventTime: DWORD); stdcall;
begin
  if (event = EVENT_OBJECT_DESTROY) and (idObject = OBJID_WINDOW) and
     (idChild = CHILDID_SELF) and (hwnd <> 0) then
    if FindEntryByHwnd(hwnd) >= 0 then
      PostMessage(hMain, WM_TRAYEDDIED, WPARAM(hwnd), 0);
end;

{ ========================================================================= }
{  menus                                                                    }
{ ========================================================================= }

procedure ShowPopup(m: HMENU);
var pt: TPoint;
begin
  GetCursorPos(@pt);
  SetForegroundWindow(hMain);            { classic fix: menu closes properly }
  TrackPopupMenu(m, TPM_RIGHTBUTTON or TPM_BOTTOMALIGN, pt.x, pt.y, 0, hMain, nil);
  PostMessage(hMain, WM_NULL, 0, 0);
  DestroyMenu(m);
end;

procedure ShowIconMenu(idx: integer);
var m: HMENU; flags: UINT;
  s1, s2, s3, s4: WideString;
begin
  menuTarget := idx;
  m := CreatePopupMenu;
  s1 := 'Restore window';
  s2 := 'Always place in tray when minimized';
  s3 := 'Restore and close program';
  s4 := 'Remove icon (back to taskbar)';
  AppendMenuW(m, MF_STRING, CMD_RESTORE, PWideChar(s1));
  flags := MF_STRING;
  if IsAutoTray(entries[idx].exe) then flags := flags or MF_CHECKED;
  AppendMenuW(m, flags, CMD_AUTOTRAY, PWideChar(s2));
  AppendMenuW(m, MF_SEPARATOR, 0, nil);
  AppendMenuW(m, MF_STRING, CMD_UNTRAY, PWideChar(s4));
  AppendMenuW(m, MF_STRING, CMD_CLOSEAPP, PWideChar(s3));
  SetMenuDefaultItem(m, CMD_RESTORE, 0);
  ShowPopup(m);
end;

procedure ShowMainMenu;
var m: HMENU;
  s1, s2, s3, s4, s5: WideString;
begin
  menuTarget := -1;
  m := CreatePopupMenu;
  s1 := 'Tray active window'#9'Ctrl+Shift+T';
  s2 := 'Clean stuck tray icons';
  s3 := 'Restore all windows';
  s4 := 'About';
  s5 := 'Exit';
  AppendMenuW(m, MF_STRING, CMD_TRAYACTIVE, PWideChar(s1));
  AppendMenuW(m, MF_STRING, CMD_CLEAN, PWideChar(s2));
  AppendMenuW(m, MF_STRING, CMD_RESTOREALL, PWideChar(s3));
  AppendMenuW(m, MF_SEPARATOR, 0, nil);
  AppendMenuW(m, MF_STRING, CMD_ABOUT, PWideChar(s4));
  AppendMenuW(m, MF_STRING, CMD_EXIT, PWideChar(s5));
  ShowPopup(m);
end;

procedure ShowAbout;
var s, t: WideString;
begin
  s := APPTITLE + #13#10 +
       'Clean-room remake built with Free Pascal 2.6.4irc.'#13#10#13#10 +
       'Hold Ctrl while minimizing a window to send it to the tray.'#13#10 +
       'Ctrl+Shift+T trays the active window.'#13#10 +
       'Left-click an icon to restore, right-click for options.'#13#10#13#10 +
       'Stuck-icon fixes: icons are removed the moment their program'#13#10 +
       'closes or crashes, restored after an Explorer restart, and the'#13#10 +
       '"Clean stuck tray icons" command clears dead icons left behind'#13#10 +
       'by any application.';
  t := APPTITLE;
  MessageBoxW(hMain, PWideChar(s), PWideChar(t), MB_OK or MB_ICONINFORMATION);
end;

{ ========================================================================= }
{  window procedure                                                         }
{ ========================================================================= }

procedure DoCommand(cmd: UINT);
var idx: integer; on_: boolean; h: HWND;
begin
  idx := menuTarget;
  case cmd of
    CMD_RESTORE:
      RestoreEntry(idx, true);
    CMD_AUTOTRAY:
      if (idx >= 0) and entries[idx].used then
      begin
        on_ := IsAutoTray(entries[idx].exe);
        SetAutoTray(entries[idx].exe, not on_);
      end;
    CMD_UNTRAY:
      if (idx >= 0) and entries[idx].used then
      begin
        h := entries[idx].h;
        DropEntry(idx);
        if IsWindow(h) then ShowWindow(h, SW_SHOW);   { stays minimized }
      end;
    CMD_CLOSEAPP:
      if (idx >= 0) and entries[idx].used then
      begin
        h := entries[idx].h;
        RestoreEntry(idx, true);        { visible first, so save prompts show }
        if IsWindow(h) then PostMessage(h, WM_CLOSE, 0, 0);
      end;
    CMD_TRAYACTIVE:
      TrayWindow(XGetAncestor(GetForegroundWindow, GA_ROOT));
    CMD_CLEAN:
      CleanStuckIcons;
    CMD_RESTOREALL:
      RestoreAll(false);
    CMD_ABOUT:
      ShowAbout;
    CMD_EXIT:
      DestroyWindow(hMain);
  end;
end;

procedure PollWatchdog;                  { FIX #2 }
var i: integer; died: boolean;
begin
  died := false;
  for i := 0 to MAXTRAY - 1 do
    if entries[i].used and not IsWindow(entries[i].h) then
    begin
      DropEntry(i);
      died := true;
    end;
  if died then CleanStuckIcons;          { also nudge Explorer's own list }
end;

procedure Cleanup;
begin
  RestoreAll(false);                     { FIX #4: never lose a hidden window }
  DeleteIcon(0);
  if hEventHook <> 0 then begin UnhookWinEvent(hEventHook); hEventHook := 0; end;
  if shellHookOk then begin DeregisterShellHookWindow(hMain); shellHookOk := false; end;
  KillTimer(hMain, TIMER_POLL);
  if pendTimerOn then KillTimer(hMain, TIMER_PENDING);
  UnregisterHotKey(hMain, HOTKEY_TRAY);
end;

function WndProc(h: HWND; msg: UINT; wp: WPARAM; lp: LPARAM): LRESULT; stdcall;
var idx: integer; tgt: HWND; ctrl: boolean; exe: WideString;
begin
  Result := 0;

  if (msg = msgShellHook) and (msgShellHook <> 0) then
  begin
    if (wp and $7FFF) = HSHELL_GETMINRECT then
    begin
      tgt := PHWND(lp)^;
      if (tgt <> 0) and (FindEntryByHwnd(tgt) < 0) then
      begin
        ctrl := (GetAsyncKeyState(VK_CONTROL) and $8000) <> 0;
        if ctrl then
          AddPending(tgt)
        else
        begin
          exe := ExeBaseName(tgt);
          if (exe <> '') and IsAutoTray(exe) then AddPending(tgt);
        end;
      end;
    end;
    Exit;
  end;

  if (msg = msgTaskbarCreated) and (msgTaskbarCreated <> 0) then
  begin
    ReAddAllIcons;                       { FIX #3 }
    Exit;
  end;

  case msg of
    WM_TRAYICON:
      begin
        idx := FindEntryById(UINT(wp));
        case LOWORD(lp) of
          WM_LBUTTONUP, WM_LBUTTONDBLCLK:
            if UINT(wp) = 0 then ShowMainMenu
            else RestoreEntry(idx, true);
          WM_RBUTTONUP:
            if UINT(wp) = 0 then ShowMainMenu
            else if idx >= 0 then ShowIconMenu(idx);
        end;
      end;

    WM_TRAYEDDIED:                       { FIX #1 delivery }
      begin
        idx := FindEntryByHwnd(HWND(wp));
        if idx >= 0 then DropEntry(idx);
        CleanStuckIcons;
      end;

    WM_TIMER:
      case wp of
        TIMER_POLL:    PollWatchdog;
        TIMER_PENDING: CheckPending;
      end;

    WM_HOTKEY:
      if wp = HOTKEY_TRAY then
        TrayWindow(XGetAncestor(GetForegroundWindow, GA_ROOT));

    WM_COMMAND:
      DoCommand(LOWORD(wp));

    WM_QUERYENDSESSION:
      Result := 1;

    WM_ENDSESSION:
      if wp <> 0 then Cleanup;           { FIX #4 }

    WM_CLOSE:
      DestroyWindow(h);

    WM_DESTROY:
      begin
        Cleanup;
        PostQuitMessage(0);
      end;

    else
      Result := DefWindowProcW(h, msg, wp, lp);
  end;
end;

{ ========================================================================= }
{  main                                                                     }
{ ========================================================================= }

var
  wc: TWndClassExW;
  m: TMsg;
  clsName, wndName, hookName, tbcName: WideString;
begin
  hInst := GetModuleHandleW(nil);
  FillChar(entries, SizeOf(entries), 0);
  FillChar(pend, SizeOf(pend), 0);

  clsName := WNDCLASS_NAME;
  wndName := APPTITLE;

  FillChar(wc, SizeOf(wc), 0);
  wc.cbSize        := SizeOf(wc);
  wc.lpfnWndProc   := @WndProc;
  wc.hInstance     := hInst;
  wc.lpszClassName := PWideChar(clsName);
  wc.hCursor       := LoadCursor(0, IDC_ARROW);
  if RegisterClassExW(wc) = 0 then Halt(1);

  { hidden top-level window: must be top-level so it receives the
    TaskbarCreated broadcast and shell-hook notifications }
  hMain := CreateWindowExW(0, PWideChar(clsName), PWideChar(wndName),
             WS_OVERLAPPED, 0, 0, 0, 0, 0, 0, hInst, nil);
  if hMain = 0 then Halt(1);

  hookName := 'SHELLHOOK';
  tbcName  := 'TaskbarCreated';
  msgShellHook      := RegisterWindowMessageW(PWideChar(hookName));
  msgTaskbarCreated := RegisterWindowMessageW(PWideChar(tbcName));
  shellHookOk := RegisterShellHookWindow(hMain);

  hEventHook := SetWinEventHook(EVENT_OBJECT_DESTROY, EVENT_OBJECT_DESTROY,
                  0, @WinEventProc, 0, 0,
                  WINEVENT_OUTOFCONTEXT or WINEVENT_SKIPOWNPROCESS);

  RegisterHotKey(hMain, HOTKEY_TRAY, MOD_CONTROL or MOD_SHIFT, Ord('T'));

  AddIcon(0, LoadIcon(0, IDI_APPLICATION),
          APPTITLE + ' - Ctrl+minimize sends a window here');

  CleanStuckIcons;                       { clear leftovers from before }
  SetTimer(hMain, TIMER_POLL, 1000, nil);

  while GetMessageW(m, 0, 0, 0) do
  begin
    TranslateMessage(m);
    DispatchMessageW(m);
  end;
end.
