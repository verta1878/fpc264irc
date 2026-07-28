{$MODE OBJFPC}
{$H+}
program make_icon_res;
{ Port of make_icon_res.py to Pascal
  Creates a .res file from a .ico file for embedding in executables.
  
  Usage: make_icon_res <icon.ico> [output.res]
  
  The .res file contains a MAINICON resource that Windows uses
  for the application icon and system tray icon.
  
  Ported for Rowan Lipkovits / PabloDraw DOS compatibility. }

uses SysUtils, Classes;

const
  { Windows resource file structures }
  RT_ICON = 3;
  RT_GROUP_ICON = 14;

type
  TResHeader = packed record
    DataSize: LongWord;
    HeaderSize: LongWord;
    ResType: Word;   { type as ordinal }
    ResTypePad: Word;
    ResName: Word;   { name as ordinal }
    ResNamePad: Word;
    DataVersion: LongWord;
    MemoryFlags: Word;
    LanguageID: Word;
    Version: LongWord;
    Characteristics: LongWord;
  end;

  TIconDirEntry = packed record
    Width: Byte;
    Height: Byte;
    ColorCount: Byte;
    Reserved: Byte;
    Planes: Word;
    BitCount: Word;
    BytesInRes: LongWord;
    ImageOffset: LongWord;
  end;

  TIconDir = packed record
    Reserved: Word;
    ResType: Word;    { 1 = icon }
    Count: Word;
  end;

  TGrpIconDirEntry = packed record
    Width: Byte;
    Height: Byte;
    ColorCount: Byte;
    Reserved: Byte;
    Planes: Word;
    BitCount: Word;
    BytesInRes: LongWord;
    ID: Word;
  end;

procedure WriteResHeader(S: TStream; DataSize: LongWord; ResType, ResName: Word);
var H: TResHeader;
begin
  FillChar(H, SizeOf(H), 0);
  H.DataSize := DataSize;
  H.HeaderSize := SizeOf(TResHeader);
  H.ResType := ResType;
  H.ResName := ResName;
  H.MemoryFlags := $1030;  { MOVEABLE | PURE }
  S.Write(H, SizeOf(H));
end;

procedure PadToAlign(S: TStream);
var Pad: LongWord;
begin
  Pad := 0;
  while (S.Position mod 4) <> 0 do
    S.Write(Pad, 1);
end;

var
  IcoFile, ResFile: String;
  IcoStream, ResStream: TFileStream;
  Dir: TIconDir;
  Entries: array of TIconDirEntry;
  GrpEntries: array of TGrpIconDirEntry;
  ImageData: array of TBytes;
  GrpSize: LongWord;
  I: Integer;
begin
  if ParamCount < 1 then begin
    WriteLn('make_icon_res — Create .res from .ico');
    WriteLn('Usage: make_icon_res <icon.ico> [output.res]');
    WriteLn;
    WriteLn('Ported from Python for fpc264irc.');
    Halt(1);
  end;

  IcoFile := ParamStr(1);
  if ParamCount >= 2 then
    ResFile := ParamStr(2)
  else
    ResFile := ChangeFileExt(IcoFile, '.res');

  if not FileExists(IcoFile) then begin
    WriteLn('Error: ', IcoFile, ' not found');
    Halt(1);
  end;

  { Read .ico file }
  IcoStream := TFileStream.Create(IcoFile, fmOpenRead);
  try
    IcoStream.Read(Dir, SizeOf(Dir));
    if Dir.ResType <> 1 then begin
      WriteLn('Error: Not an icon file');
      Halt(1);
    end;

    SetLength(Entries, Dir.Count);
    SetLength(GrpEntries, Dir.Count);
    SetLength(ImageData, Dir.Count);

    { Read directory entries }
    for I := 0 to Dir.Count - 1 do
      IcoStream.Read(Entries[I], SizeOf(TIconDirEntry));

    { Read image data }
    for I := 0 to Dir.Count - 1 do begin
      SetLength(ImageData[I], Entries[I].BytesInRes);
      IcoStream.Position := Entries[I].ImageOffset;
      IcoStream.Read(ImageData[I][0], Entries[I].BytesInRes);
    end;
  finally
    IcoStream.Free;
  end;

  { Write .res file }
  ResStream := TFileStream.Create(ResFile, fmCreate);
  try
    { Empty header (required by .res format) }
    WriteResHeader(ResStream, 0, 0, 0);

    { Write individual icon resources (RT_ICON, ID 1..N) }
    for I := 0 to Dir.Count - 1 do begin
      WriteResHeader(ResStream, Entries[I].BytesInRes, RT_ICON, I + 1);
      ResStream.Write(ImageData[I][0], Entries[I].BytesInRes);
      PadToAlign(ResStream);
    end;

    { Build group icon directory }
    for I := 0 to Dir.Count - 1 do begin
      GrpEntries[I].Width := Entries[I].Width;
      GrpEntries[I].Height := Entries[I].Height;
      GrpEntries[I].ColorCount := Entries[I].ColorCount;
      GrpEntries[I].Reserved := 0;
      GrpEntries[I].Planes := Entries[I].Planes;
      GrpEntries[I].BitCount := Entries[I].BitCount;
      GrpEntries[I].BytesInRes := Entries[I].BytesInRes;
      GrpEntries[I].ID := I + 1;
    end;

    { Write group icon resource (RT_GROUP_ICON, ID 1 = MAINICON) }
    GrpSize := SizeOf(TIconDir) + Dir.Count * SizeOf(TGrpIconDirEntry);
    WriteResHeader(ResStream, GrpSize, RT_GROUP_ICON, 1);
    ResStream.Write(Dir, SizeOf(Dir));
    for I := 0 to Dir.Count - 1 do
      ResStream.Write(GrpEntries[I], SizeOf(TGrpIconDirEntry));
    PadToAlign(ResStream);
  finally
    ResStream.Free;
  end;

  WriteLn('Created: ', ResFile);
  WriteLn('  ', Dir.Count, ' icon(s): ');
  for I := 0 to Dir.Count - 1 do
    WriteLn('    ', Entries[I].Width, 'x', Entries[I].Height,
      ' ', Entries[I].BitCount, 'bpp (',
      Entries[I].BytesInRes, ' bytes)');
end.
