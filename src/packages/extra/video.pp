{ video.pp — FPC video unit for i8086-msdos
  Direct VGA text buffer access at B800:0000.
  API-compatible with FPC's rtl-console video unit. }
unit video;
{$mode objfpc}
interface
type
  TVideoCell = Word; { low byte=char, high byte=attr }
  TVideoMode = record
    Col, Row: Word;
    Color: Boolean;
  end;

var
  ScreenWidth  : Word;
  ScreenHeight : Word;
  VideoBuf     : PWord;
  VideoBufSize : Word;

procedure InitVideo;
procedure DoneVideo;
procedure ClearScreen;
procedure SetCursorPos(X, Y: Word);
procedure UpdateScreen(Force: Boolean);

implementation
uses dos;

var
  OldMode: Byte;
  ScreenSeg: Word;

procedure InitVideo;
var r: Registers;
begin
  r.AH := $0F; Intr($10, r);
  OldMode := r.AL;
  ScreenWidth := r.AH;
  ScreenHeight := 25;
  ScreenSeg := $B800;
  VideoBufSize := ScreenWidth * ScreenHeight * 2;
  GetMem(VideoBuf, VideoBufSize);
  FillChar(VideoBuf^, VideoBufSize, 0);
end;

procedure DoneVideo;
begin
  if VideoBuf <> nil then FreeMem(VideoBuf, VideoBufSize);
  VideoBuf := nil;
end;

procedure ClearScreen;
var r: Registers;
begin
  r.AH := $06; r.AL := 0; r.BH := $07;
  r.CX := 0; r.DH := ScreenHeight-1; r.DL := ScreenWidth-1;
  Intr($10, r);
end;

procedure SetCursorPos(X, Y: Word);
var r: Registers;
begin
  r.AH := $02; r.BH := 0; r.DH := Y; r.DL := X;
  Intr($10, r);
end;

procedure UpdateScreen(Force: Boolean);
begin
  { Copy VideoBuf to VGA text buffer at B800:0000 }
  if (VideoBuf <> nil) and (Force or True) then
    Move(VideoBuf^, Ptr(ScreenSeg, 0)^, VideoBufSize);
end;

end.
