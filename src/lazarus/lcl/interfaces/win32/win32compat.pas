{ win32compat.pas — A/W API compatibility layer for Win9x
  
  FPC 2.6.4irc — Phase U-1
  
  When UNICODE is defined: calls W-variant APIs (NT/2K/XP+)
  When not defined: calls A-variant APIs (Win95/98/ME)
  
  LCL source calls these wrapper functions instead of
  Windows.XXXXxW directly. The compiler picks A or W.
}
unit win32compat;

{$mode objfpc}{$H+}

interface

uses
  Windows, SysUtils;

{ String conversion }
{$IFDEF UNICODE}
function WinStr(const S: String): WideString;
function FromWinStr(const W: WideString): String;
{$ELSE}
function WinStr(const S: String): AnsiString;
function FromWinStr(const A: AnsiString): String;
{$ENDIF}

{ Window creation }
function WinRegisterClass(WndClassPtr: Pointer): Boolean;
function WinCreateWindowEx(ExStyle: DWORD; ClassName, WindowName: PChar;
  Style: DWORD; X, Y, W, H: Integer; Parent, Menu, Instance: HANDLE;
  Param: Pointer): HWND;
function WinDefWindowProc(Wnd: HWND; Msg: UINT; WP: WPARAM; LP: LPARAM): LRESULT;

{ Window text }
function WinSetWindowText(Wnd: HWND; const S: String): Boolean;
function WinGetWindowText(Wnd: HWND): String;
function WinGetWindowTextLength(Wnd: HWND): Integer;

{ Messages }
function WinSendMessage(Wnd: HWND; Msg: UINT; WP: WPARAM; LP: LPARAM): LRESULT;

{ Drawing }
function WinDrawText(DC: HDC; const S: String; var R: TRect; Flags: UINT): Integer;

{ Dialogs — handled directly in win32wsdialogs.pp }

{ NT-only W functions, loaded at run time (fpc264irc 2026-11-14, byte).
  The LCL calls these only inside "if UnicodeEnabledOS" (NT) branches. They are not static imports, so the
  exe's import table stays the one U-1 made for Win9x (BUG-040); without UNICODE the Win* wrappers above are
  the A functions, which broke NT (G-017: "Window" registered as "W", DefWindowProcA on wide windows). If a
  name is not found, the A function is used. }
function DynDefWindowProcW(Wnd: HWND; Msg: UINT; WP: WPARAM; LP: LPARAM): LRESULT;
function DynRegisterClassW(lpWndClass: Pointer): ATOM;
function DynUnregisterClassW(lpClassName: PWideChar; hInst: HINST): BOOL;
function DynGetClassInfoW(hInst: HINST; lpClassName: PWideChar; lpWndClass: Pointer): BOOL;
function DynSetWindowTextW(Wnd: HWND; lpString: PWideChar): BOOL;
function DynGetWindowTextW(Wnd: HWND; lpString: PWideChar; nMaxCount: Integer): Integer;
function DynGetWindowTextLengthW(Wnd: HWND): Integer;
function DynGetWindowLongPtrW(Wnd: HWND; nIndex: Integer): PtrInt;
function DynSetWindowLongPtrW(Wnd: HWND; nIndex: Integer; NewLong: PtrInt): PtrInt;
function DynPeekMessageW(lpMsg: Pointer; Wnd: HWND; wMsgFilterMin, wMsgFilterMax, wRemoveMsg: UINT): BOOL;
function DynCreateFontIndirectW(lplf: Pointer): HFONT;
function DynGetObjectW(h: HGDIOBJ; c: Integer; pv: Pointer): Integer;

implementation

{$IFDEF UNICODE}
{ --- Unicode (NT/2K/XP+) --- }

function WinStr(const S: String): WideString;
begin
  Result := UTF8Decode(S);
end;

function FromWinStr(const W: WideString): String;
begin
  Result := UTF8Encode(W);
end;

function WinRegisterClass(var WndClass: WNDCLASSW): Boolean;
begin
  Result := Windows.RegisterClassW(WndClass) <> 0;
end;

function WinCreateWindowEx(ExStyle: DWORD; ClassName, WindowName: PChar;
  Style: DWORD; X, Y, W, H: Integer; Parent, Menu, Instance: HANDLE;
  Param: Pointer): HWND;
var
  WClass, WName: WideString;
begin
  WClass := UTF8Decode(ClassName);
  WName := UTF8Decode(WindowName);
  Result := Windows.CreateWindowExW(ExStyle, PWideChar(WClass),
    PWideChar(WName), Style, X, Y, W, H, Parent, Menu, Instance, Param);
end;

function WinDefWindowProc(Wnd: HWND; Msg: UINT; WP: WPARAM; LP: LPARAM): LRESULT;
begin
  Result := Windows.DefWindowProcW(Wnd, Msg, WP, LP);
end;

function WinSetWindowText(Wnd: HWND; const S: String): Boolean;
var W: WideString;
begin
  W := UTF8Decode(S);
  Result := Windows.SetWindowTextW(Wnd, PWideChar(W));
end;

function WinGetWindowText(Wnd: HWND): String;
var
  Len: Integer;
  W: WideString;
begin
  Len := Windows.GetWindowTextLengthW(Wnd);
  if Len > 0 then begin
    SetLength(W, Len + 1);
    Windows.GetWindowTextW(Wnd, PWideChar(W), Len + 1);
    Result := UTF8Encode(W);
  end else
    Result := '';
end;

function WinGetWindowTextLength(Wnd: HWND): Integer;
begin
  Result := Windows.GetWindowTextLengthW(Wnd);
end;

function WinSendMessage(Wnd: HWND; Msg: UINT; WP: WPARAM; LP: LPARAM): LRESULT;
begin
  Result := Windows.SendMessageW(Wnd, Msg, WP, LP);
end;

function WinDrawText(DC: HDC; const S: String; var R: TRect; Flags: UINT): Integer;
var W: WideString;
begin
  W := UTF8Decode(S);
  Result := Windows.DrawTextW(DC, PWideChar(W), -1, R, Flags);
end;



{$ELSE}
{ --- ANSI (Win95/98/ME) --- }

function WinStr(const S: String): AnsiString;
begin
  Result := S;  { already ANSI in non-Unicode mode }
end;

function FromWinStr(const A: AnsiString): String;
begin
  Result := A;
end;

function WinRegisterClass(WndClassPtr: Pointer): Boolean;
type
  PWndClass = ^TWndClass;
begin
  Result := Windows.RegisterClass(PWndClass(WndClassPtr)^) <> 0;
end;

function WinCreateWindowEx(ExStyle: DWORD; ClassName, WindowName: PChar;
  Style: DWORD; X, Y, W, H: Integer; Parent, Menu, Instance: HANDLE;
  Param: Pointer): HWND;
begin
  Result := Windows.CreateWindowEx(ExStyle, ClassName, WindowName,
    Style, X, Y, W, H, Parent, Menu, Instance, Param);
end;

function WinDefWindowProc(Wnd: HWND; Msg: UINT; WP: WPARAM; LP: LPARAM): LRESULT;
begin
  Result := Windows.DefWindowProc(Wnd, Msg, WP, LP);
end;

function WinSetWindowText(Wnd: HWND; const S: String): Boolean;
begin
  Result := Windows.SetWindowText(Wnd, PChar(S));
end;

function WinGetWindowText(Wnd: HWND): String;
var
  Len: Integer;
begin
  Len := Windows.GetWindowTextLength(Wnd);
  if Len > 0 then begin
    SetLength(Result, Len + 1);
    Windows.GetWindowText(Wnd, PChar(Result), Len + 1);
    SetLength(Result, Len);
  end else
    Result := '';
end;

function WinGetWindowTextLength(Wnd: HWND): Integer;
begin
  Result := Windows.GetWindowTextLength(Wnd);
end;

function WinSendMessage(Wnd: HWND; Msg: UINT; WP: WPARAM; LP: LPARAM): LRESULT;
begin
  Result := Windows.SendMessage(Wnd, Msg, WP, LP);
end;

function WinDrawText(DC: HDC; const S: String; var R: TRect; Flags: UINT): Integer;
begin
  Result := Windows.DrawText(DC, PChar(S), -1, R, Flags);
end;



{$ENDIF}


{ --- NT-only W functions, loaded at run time --- }
var
  User32, Gdi32: HMODULE;

function GetW(var M: HMODULE; const DLL: String; const Name: String): Pointer;
begin
  if M = 0 then M := GetModuleHandle(PChar(DLL));
  if M = 0 then M := LoadLibrary(PChar(DLL));
  if M <> 0 then Result := GetProcAddress(M, PChar(Name)) else Result := nil;
end;

type
  TDefWindowProcW = function(Wnd: HWND; Msg: UINT; WP: WPARAM; LP: LPARAM): LRESULT; stdcall;
  TRegisterClassW = function(lpWndClass: Pointer): ATOM; stdcall;
  TUnregisterClassW = function(lpClassName: PWideChar; hInst: HINST): BOOL; stdcall;
  TGetClassInfoW = function(hInst: HINST; lpClassName: PWideChar; lpWndClass: Pointer): BOOL; stdcall;
  TSetWindowTextW = function(Wnd: HWND; lpString: PWideChar): BOOL; stdcall;
  TGetWindowTextW = function(Wnd: HWND; lpString: PWideChar; nMaxCount: Integer): Integer; stdcall;
  TGetWindowTextLengthW = function(Wnd: HWND): Integer; stdcall;
  TGetWindowLongW = function(Wnd: HWND; nIndex: Integer): LongInt; stdcall;
  TSetWindowLongW = function(Wnd: HWND; nIndex: Integer; NewLong: LongInt): LongInt; stdcall;
  TPeekMessageW = function(lpMsg: Pointer; Wnd: HWND; wMsgFilterMin, wMsgFilterMax, wRemoveMsg: UINT): BOOL; stdcall;
  TCreateFontIndirectW = function(lplf: Pointer): HFONT; stdcall;
  TGetObjectW = function(h: HGDIOBJ; c: Integer; pv: Pointer): Integer; stdcall;

var
  pDefWindowProcW: TDefWindowProcW = nil;
  pRegisterClassW: TRegisterClassW = nil;
  pUnregisterClassW: TUnregisterClassW = nil;
  pGetClassInfoW: TGetClassInfoW = nil;
  pSetWindowTextW: TSetWindowTextW = nil;
  pGetWindowTextW: TGetWindowTextW = nil;
  pGetWindowTextLengthW: TGetWindowTextLengthW = nil;
  pGetWindowLongW: TGetWindowLongW = nil;
  pSetWindowLongW: TSetWindowLongW = nil;
  pPeekMessageW: TPeekMessageW = nil;
  pCreateFontIndirectW: TCreateFontIndirectW = nil;
  pGetObjectW: TGetObjectW = nil;

function DynDefWindowProcW(Wnd: HWND; Msg: UINT; WP: WPARAM; LP: LPARAM): LRESULT;
begin
  if not Assigned(pDefWindowProcW) then Pointer(pDefWindowProcW) := GetW(User32, 'user32.dll', 'DefWindowProcW');
  if Assigned(pDefWindowProcW) then Result := pDefWindowProcW(Wnd, Msg, WP, LP)
  else Result := Windows.DefWindowProc(Wnd, Msg, WP, LP);
end;

function DynRegisterClassW(lpWndClass: Pointer): ATOM;
begin
  if not Assigned(pRegisterClassW) then Pointer(pRegisterClassW) := GetW(User32, 'user32.dll', 'RegisterClassW');
  if Assigned(pRegisterClassW) then Result := pRegisterClassW(lpWndClass) else Result := 0;
end;

function DynUnregisterClassW(lpClassName: PWideChar; hInst: HINST): BOOL;
begin
  if not Assigned(pUnregisterClassW) then Pointer(pUnregisterClassW) := GetW(User32, 'user32.dll', 'UnregisterClassW');
  if Assigned(pUnregisterClassW) then Result := pUnregisterClassW(lpClassName, hInst) else Result := False;
end;

function DynGetClassInfoW(hInst: HINST; lpClassName: PWideChar; lpWndClass: Pointer): BOOL;
begin
  if not Assigned(pGetClassInfoW) then Pointer(pGetClassInfoW) := GetW(User32, 'user32.dll', 'GetClassInfoW');
  if Assigned(pGetClassInfoW) then Result := pGetClassInfoW(hInst, lpClassName, lpWndClass) else Result := False;
end;

function DynSetWindowTextW(Wnd: HWND; lpString: PWideChar): BOOL;
begin
  if not Assigned(pSetWindowTextW) then Pointer(pSetWindowTextW) := GetW(User32, 'user32.dll', 'SetWindowTextW');
  if Assigned(pSetWindowTextW) then Result := pSetWindowTextW(Wnd, lpString) else Result := False;
end;

function DynGetWindowTextW(Wnd: HWND; lpString: PWideChar; nMaxCount: Integer): Integer;
begin
  if not Assigned(pGetWindowTextW) then Pointer(pGetWindowTextW) := GetW(User32, 'user32.dll', 'GetWindowTextW');
  if Assigned(pGetWindowTextW) then Result := pGetWindowTextW(Wnd, lpString, nMaxCount) else Result := 0;
end;

function DynGetWindowTextLengthW(Wnd: HWND): Integer;
begin
  if not Assigned(pGetWindowTextLengthW) then Pointer(pGetWindowTextLengthW) := GetW(User32, 'user32.dll', 'GetWindowTextLengthW');
  if Assigned(pGetWindowTextLengthW) then Result := pGetWindowTextLengthW(Wnd)
  else Result := Windows.GetWindowTextLength(Wnd);
end;

function DynGetWindowLongPtrW(Wnd: HWND; nIndex: Integer): PtrInt;
begin
  if not Assigned(pGetWindowLongW) then Pointer(pGetWindowLongW) := GetW(User32, 'user32.dll', 'GetWindowLongW');
  if Assigned(pGetWindowLongW) then Result := pGetWindowLongW(Wnd, nIndex)
  else Result := Windows.GetWindowLong(Wnd, nIndex);
end;

function DynSetWindowLongPtrW(Wnd: HWND; nIndex: Integer; NewLong: PtrInt): PtrInt;
begin
  if not Assigned(pSetWindowLongW) then Pointer(pSetWindowLongW) := GetW(User32, 'user32.dll', 'SetWindowLongW');
  if Assigned(pSetWindowLongW) then Result := pSetWindowLongW(Wnd, nIndex, NewLong)
  else Result := Windows.SetWindowLong(Wnd, nIndex, NewLong);
end;

function DynPeekMessageW(lpMsg: Pointer; Wnd: HWND; wMsgFilterMin, wMsgFilterMax, wRemoveMsg: UINT): BOOL;
begin
  if not Assigned(pPeekMessageW) then Pointer(pPeekMessageW) := GetW(User32, 'user32.dll', 'PeekMessageW');
  if Assigned(pPeekMessageW) then Result := pPeekMessageW(lpMsg, Wnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg)
  else Result := Windows.PeekMessage(lpMsg, Wnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg);
end;

function DynCreateFontIndirectW(lplf: Pointer): HFONT;
begin
  if not Assigned(pCreateFontIndirectW) then Pointer(pCreateFontIndirectW) := GetW(Gdi32, 'gdi32.dll', 'CreateFontIndirectW');
  if Assigned(pCreateFontIndirectW) then Result := pCreateFontIndirectW(lplf) else Result := 0;
end;

function DynGetObjectW(h: HGDIOBJ; c: Integer; pv: Pointer): Integer;
begin
  if not Assigned(pGetObjectW) then Pointer(pGetObjectW) := GetW(Gdi32, 'gdi32.dll', 'GetObjectW');
  if Assigned(pGetObjectW) then Result := pGetObjectW(h, c, pv) else Result := 0;
end;

end.
