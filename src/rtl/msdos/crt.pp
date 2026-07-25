{
  CRT unit for i8086-msdos (real mode)
  Direct BIOS INT 10h/16h calls — no DPMI needed.
  GPLv3 — backported for fpc264irc r3.1
}
unit crt;

interface

const
  BW40 = 0; CO40 = 1; BW80 = 2; CO80 = 3;
  Mono = 7; Font8x8 = 256;
  Black = 0; Blue = 1; Green = 2; Cyan = 3;
  Red = 4; Magenta = 5; Brown = 6; LightGray = 7;
  DarkGray = 8; LightBlue = 9; LightGreen = 10;
  LightCyan = 11; LightRed = 12; LightMagenta = 13;
  Yellow = 14; White = 15;
  Blink = 128;

var
  TextAttr   : Byte;
  WindMin    : Word;
  WindMax    : Word;
  LastMode   : Word;
  CheckBreak : Boolean;
  CheckEOF   : Boolean;
  DirectVideo: Boolean;

procedure AssignCrt(var F: Text);
function  KeyPressed: Boolean;
function  ReadKey: Char;
procedure TextMode(Mode: Word);
procedure Window(X1, Y1, X2, Y2: Byte);
procedure GotoXY(X, Y: Byte);
function  WhereX: Byte;
function  WhereY: Byte;
procedure ClrScr;
procedure ClrEol;
procedure InsLine;
procedure DelLine;
procedure TextColor(Color: Byte);
procedure TextBackground(Color: Byte);
procedure LowVideo;
procedure HighVideo;
procedure NormVideo;
procedure Delay(MS: Word);
procedure Sound(Hz: Word);
procedure NoSound;

implementation

uses Dos;

procedure TextMode(Mode: Word);
var R: Registers;
begin
  R.AH := $00;
  R.AL := Lo(Mode);
  Intr($10, R);
  LastMode := Mode;
  TextAttr := $07;
  WindMin := 0;
  WindMax := (24 shl 8) or 79;
end;

function KeyPressed: Boolean;
var R: Registers;
begin
  R.AH := $01;
  Intr($16, R);
  KeyPressed := (R.Flags and $40) = 0;
end;

function ReadKey: Char;
var R: Registers;
begin
  R.AH := $00;
  Intr($16, R);
  ReadKey := Chr(R.AL);
end;

procedure GotoXY(X, Y: Byte);
var R: Registers;
begin
  R.AH := $02;
  R.BH := 0;
  R.DH := Y - 1 + Hi(WindMin);
  R.DL := X - 1 + Lo(WindMin);
  Intr($10, R);
end;

function WhereX: Byte;
var R: Registers;
begin
  R.AH := $03;
  R.BH := 0;
  Intr($10, R);
  WhereX := R.DL - Lo(WindMin) + 1;
end;

function WhereY: Byte;
var R: Registers;
begin
  R.AH := $03;
  R.BH := 0;
  Intr($10, R);
  WhereY := R.DH - Hi(WindMin) + 1;
end;

procedure ClrScr;
var R: Registers;
begin
  R.AH := $06;
  R.AL := 0;
  R.BH := TextAttr;
  R.CH := Hi(WindMin);
  R.CL := Lo(WindMin);
  R.DH := Hi(WindMax);
  R.DL := Lo(WindMax);
  Intr($10, R);
  GotoXY(1, 1);
end;

procedure ClrEol;
var R: Registers; X, Y, W: Byte;
begin
  X := WhereX;
  Y := WhereY;
  W := Lo(WindMax) - Lo(WindMin) + 1;
  R.AH := $09;
  R.AL := Ord(' ');
  R.BH := 0;
  R.BL := TextAttr;
  R.CX := W - X + 1;
  Intr($10, R);
end;

procedure InsLine;
var R: Registers;
begin
  R.AH := $07;
  R.AL := 1;
  R.BH := TextAttr;
  R.CH := WhereY - 1 + Hi(WindMin);
  R.CL := Lo(WindMin);
  R.DH := Hi(WindMax);
  R.DL := Lo(WindMax);
  Intr($10, R);
end;

procedure DelLine;
var R: Registers;
begin
  R.AH := $06;
  R.AL := 1;
  R.BH := TextAttr;
  R.CH := WhereY - 1 + Hi(WindMin);
  R.CL := Lo(WindMin);
  R.DH := Hi(WindMax);
  R.DL := Lo(WindMax);
  Intr($10, R);
end;

procedure Window(X1, Y1, X2, Y2: Byte);
begin
  if (X1 <= X2) and (Y1 <= Y2) then begin
    WindMin := ((Y1 - 1) shl 8) or (X1 - 1);
    WindMax := ((Y2 - 1) shl 8) or (X2 - 1);
  end;
end;

procedure TextColor(Color: Byte);
begin
  TextAttr := (TextAttr and $70) or (Color and $8F);
end;

procedure TextBackground(Color: Byte);
begin
  TextAttr := (TextAttr and $8F) or ((Color and $07) shl 4);
end;

procedure LowVideo;
begin
  TextAttr := TextAttr and $F7;
end;

procedure HighVideo;
begin
  TextAttr := TextAttr or $08;
end;

procedure NormVideo;
begin
  TextAttr := $07;
end;

procedure Delay(MS: Word);
var R: Registers;
begin
  R.AH := $86;
  R.CX := Hi(LongInt(MS) * 1000);
  R.DX := Lo(LongInt(MS) * 1000);
  Intr($15, R);
end;

procedure Sound(Hz: Word);
var Count: Word;
begin
  if Hz = 0 then Exit;
  Count := 1193180 div Hz;
  Port[$43] := $B6;
  Port[$42] := Lo(Count);
  Port[$42] := Hi(Count);
  Port[$61] := Port[$61] or 3;
end;

procedure NoSound;
begin
  Port[$61] := Port[$61] and $FC;
end;

procedure AssignCrt(var F: Text);
begin
  { Assign text file to CRT — minimal stub }
end;

begin
  TextAttr := $07;
  WindMin := 0;
  WindMax := (24 shl 8) or 79;
  CheckBreak := True;
  CheckEOF := False;
  DirectVideo := True;
  LastMode := CO80;
end.
