unit unixcp;
{$mode objfpc}
interface

function GetSystemCodepage: Word;

implementation

uses Dos;

function GetSystemCodepage: Word;
{$IFDEF GO32V2}
var Regs: Registers;
{$ENDIF}
begin
  {$IFDEF GO32V2}
  { DOS INT 21h, AH=66h, AL=01h — Get Global Code Page }
  Regs.AX := $6601;
  MsDos(Regs);
  if (Regs.Flags and FCarry) = 0 then
    Result := Regs.BX  { active codepage }
  else
    Result := 437;
  {$ENDIF}
  {$IFDEF OS2}
  { OS/2 DosQueryCp — for now use environment }
  Result := 437;
  {$ENDIF}
  {$IFDEF UNIX}
  Result := 65001; { UTF-8 }
  {$ENDIF}
  {$IFDEF MSWINDOWS}
  Result := 1252; { Windows ANSI }
  {$ENDIF}
end;

end.
