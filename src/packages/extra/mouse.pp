{ mouse.pp — FPC mouse unit for i8086-msdos via INT 33h
  API-compatible with FPC's rtl-console mouse unit.
  Copyright (c) 2026 fpc264irc contributors. License: GPLv3+ }
unit mouse;
{$mode objfpc}
interface

type
  TMouseEvent = record
    Buttons : Word;
    X, Y    : Word;
    Action  : Word;
  end;
  PMouseEvent = ^TMouseEvent;

const
  MouseActionDown = 1;
  MouseActionUp   = 2;
  MouseActionMove = 4;
  MouseLeftButton   = 1;
  MouseRightButton  = 2;
  MouseMiddleButton = 4;

procedure InitMouse;
procedure DoneMouse;
function  DetectMouse: Boolean;
procedure ShowMouse;
procedure HideMouse;
procedure GetMouseEvent(var e: TMouseEvent);
function  PollMouseEvent(var e: TMouseEvent): Boolean;
procedure GetMouseXY(var x, y: Word);
function  GetMouseButtons: Word;

implementation
uses dos;

var
  MousePresent: Boolean;
  LastButtons: Word;

procedure InitMouse;
var r: Registers;
begin
  r.AX := $0000;
  Intr($33, r);
  MousePresent := r.AX = $FFFF;
  LastButtons := 0;
end;

procedure DoneMouse;
begin
  MousePresent := false;
end;

function DetectMouse: Boolean;
var r: Registers;
begin
  r.AX := $0000;
  Intr($33, r);
  DetectMouse := r.AX = $FFFF;
end;

procedure ShowMouse;
var r: Registers;
begin
  if MousePresent then begin r.AX := $0001; Intr($33, r); end;
end;

procedure HideMouse;
var r: Registers;
begin
  if MousePresent then begin r.AX := $0002; Intr($33, r); end;
end;

procedure GetMouseXY(var x, y: Word);
var r: Registers;
begin
  if MousePresent then begin
    r.AX := $0003; Intr($33, r);
    x := r.CX shr 3; y := r.DX shr 3;
  end else begin x := 0; y := 0; end;
end;

function GetMouseButtons: Word;
var r: Registers;
begin
  if MousePresent then begin
    r.AX := $0003; Intr($33, r);
    GetMouseButtons := r.BX;
  end else GetMouseButtons := 0;
end;

procedure GetMouseEvent(var e: TMouseEvent);
var r: Registers;
begin
  FillChar(e, SizeOf(e), 0);
  if not MousePresent then exit;
  r.AX := $0003; Intr($33, r);
  e.X := r.CX shr 3; e.Y := r.DX shr 3;
  e.Buttons := r.BX;
  if e.Buttons <> LastButtons then begin
    if e.Buttons > LastButtons then e.Action := MouseActionDown
    else e.Action := MouseActionUp;
  end else e.Action := MouseActionMove;
  LastButtons := e.Buttons;
end;

function PollMouseEvent(var e: TMouseEvent): Boolean;
var r: Registers;
begin
  if not MousePresent then begin PollMouseEvent := false; exit; end;
  r.AX := $0003; Intr($33, r);
  PollMouseEvent := (r.BX <> LastButtons);
  e.X := r.CX shr 3; e.Y := r.DX shr 3;
  e.Buttons := r.BX;
  if e.Buttons <> LastButtons then e.Action := MouseActionDown
  else e.Action := MouseActionMove;
end;

end.
