{$MODE DELPHI}
{$H-}
program emxbind;
{
  emxbind — Convert EMX a.out to OS/2 executable
  Part of fpc264irc — GPLv3
}
var
  EmxlFile, AoutFile, ExeFile: File;
  EmxlBuf, AoutBuf, ZeroBuf: array of Byte;
  EmxlSize, AoutSize, PadSize: LongInt;
  Magic: Word;
begin
  if ParamCount < 3 then
  begin
    WriteLn('Usage: emxbind emxl.exe input.out output.exe');
    Halt(1);
  end;

  Assign(EmxlFile, ParamStr(1));
  {$I-} Reset(EmxlFile, 1); {$I+}
  if IOResult <> 0 then begin WriteLn('Error: cannot open ', ParamStr(1)); Halt(1); end;
  EmxlSize := FileSize(EmxlFile);
  SetLength(EmxlBuf, EmxlSize);
  BlockRead(EmxlFile, EmxlBuf[0], EmxlSize);
  Close(EmxlFile);

  if (EmxlSize < 2) or (EmxlBuf[0] <> $4D) or (EmxlBuf[1] <> $5A) then
  begin WriteLn('Error: not MZ'); Halt(1); end;

  Assign(AoutFile, ParamStr(2));
  {$I-} Reset(AoutFile, 1); {$I+}
  if IOResult <> 0 then begin WriteLn('Error: cannot open ', ParamStr(2)); Halt(1); end;
  AoutSize := FileSize(AoutFile);
  SetLength(AoutBuf, AoutSize);
  BlockRead(AoutFile, AoutBuf[0], AoutSize);
  Close(AoutFile);

  Magic := AoutBuf[0] or (AoutBuf[1] shl 8);
  if (Magic <> $0107) and (Magic <> $010B) then
  begin WriteLn('Error: not a.out (0x', HexStr(Magic, 4), ')'); Halt(1); end;

  PadSize := (512 - (EmxlSize mod 512)) mod 512;

  Assign(ExeFile, ParamStr(3));
  {$I-} Rewrite(ExeFile, 1); {$I+}
  if IOResult <> 0 then begin WriteLn('Error: cannot create ', ParamStr(3)); Halt(1); end;

  BlockWrite(ExeFile, EmxlBuf[0], EmxlSize);
  if PadSize > 0 then
  begin
    SetLength(ZeroBuf, PadSize);
    FillChar(ZeroBuf[0], PadSize, 0);
    BlockWrite(ExeFile, ZeroBuf[0], PadSize);
  end;
  BlockWrite(ExeFile, AoutBuf[0], AoutSize);
  Close(ExeFile);

  WriteLn(ParamStr(3), ': ', EmxlSize + PadSize + AoutSize, ' bytes');
end.
