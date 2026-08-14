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

end.
