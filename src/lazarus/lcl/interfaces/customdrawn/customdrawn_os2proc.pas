unit customdrawn_os2proc;

{$mode objfpc}{$H+}

{$I customdrawndefines.inc}

interface

uses
  Types, Classes, SysUtils,
  fpimage, fpcanvas,
  os2def, pmwin, pmgpi, pmbitmap,
  IntfGraphics, lazcanvas,
  GraphType, Controls, LCLMessageGlue, WSControls, LCLType, LCLProc,
  LMessages,
  customdrawnproc;

type
  TOS2WindowInfo = class(TCDForm)
  public
    Window: Cardinal; // OS/2 PM window handle
    PMHandle: Cardinal;
  end;

  // Wrapper record to avoid pmwin.TQMSG leaking into customdrawnint
  TOS2Msg = record
    hwnd: Cardinal;
    msg: Cardinal;
    mp1, mp2: Pointer;
    time: Cardinal;
    ptl_x, ptl_y: LongInt;
  end;

// PM initialization wrappers (avoid pmwin types in customdrawnint)
function OS2_Initialize: Cardinal;
function OS2_CreateMsgQueue(hab: Cardinal): Cardinal;
procedure OS2_DestroyMsgQueue(hmq: Cardinal);
procedure OS2_Terminate(hab: Cardinal);
function OS2_GetMsg(hab: Cardinal; out AMsg: TOS2Msg): Boolean;
procedure OS2_DispatchMsg(hab: Cardinal; const AMsg: TOS2Msg);
function OS2_PeekMsg(hab: Cardinal; out AMsg: TOS2Msg): Boolean;
procedure OS2_PostQuit(hab: Cardinal);

implementation

function OS2_Initialize: Cardinal;
begin
  Result := WinInitialize(0);
end;

function OS2_CreateMsgQueue(hab: Cardinal): Cardinal;
begin
  Result := WinCreateMsgQueue(hab, 0);
end;

procedure OS2_DestroyMsgQueue(hmq: Cardinal);
begin
  WinDestroyMsgQueue(hmq);
end;

procedure OS2_Terminate(hab: Cardinal);
begin
  WinTerminate(hab);
end;

function OS2_GetMsg(hab: Cardinal; out AMsg: TOS2Msg): Boolean;
var
  QMsg: pmwin.TQMSG;
begin
  Result := WinGetMsg(hab, QMsg, 0, 0, 0);
  AMsg.hwnd := QMsg.hwnd;
  AMsg.msg := QMsg.msg;
  AMsg.mp1 := QMsg.mp1;
  AMsg.mp2 := QMsg.mp2;
end;

procedure OS2_DispatchMsg(hab: Cardinal; const AMsg: TOS2Msg);
var
  QMsg: pmwin.TQMSG;
begin
  QMsg.hwnd := AMsg.hwnd;
  QMsg.msg := AMsg.msg;
  QMsg.mp1 := AMsg.mp1;
  QMsg.mp2 := AMsg.mp2;
  WinDispatchMsg(hab, QMsg);
end;

function OS2_PeekMsg(hab: Cardinal; out AMsg: TOS2Msg): Boolean;
var
  QMsg: pmwin.TQMSG;
begin
  Result := WinPeekMsg(hab, QMsg, 0, 0, 0, PM_REMOVE);
  if Result then begin
    AMsg.hwnd := QMsg.hwnd;
    AMsg.msg := QMsg.msg;
    AMsg.mp1 := QMsg.mp1;
    AMsg.mp2 := QMsg.mp2;
  end;
end;

procedure OS2_PostQuit(hab: Cardinal);
begin
  WinPostMsg(0, pmwin.WM_QUIT, nil, nil);
end;

end.
