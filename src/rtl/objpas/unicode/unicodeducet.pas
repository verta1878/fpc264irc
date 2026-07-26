{$MODE OBJFPC}
unit unicodeducet;
{ Unicode DUCET — disk-based lookup for i8086.
  
  On 32-bit platforms, includes the full DUCET table as const arrays.
  On i8086, loads from DUCET.DAT via file I/O (424KB won't fit in RAM).
  
  Uses a 4KB read cache for performance. SMARTDRV recommended on DOS.
  
  Copyright (c) 2024 FPC264IRC Project — GPLv3
}

interface

uses unicodedata;

{$IF defined(CPUI8086)}

const
  DUCET_FILENAME = 'DUCET.DAT';
  DUCET_CACHE_SIZE = 4096;

type
  TDUCETHeader = packed record
    Magic      : array[0..7] of Char;
    PropsOfs   : LongInt;
    PropsSize  : LongInt;
    Table2Ofs  : LongInt;
    Table2Size : LongInt;
    OTable2Ofs : LongInt;
    OTable2Size: LongInt;
  end;

var
  DUCETLoaded : Boolean;
  DUCETFile   : File;
  DUCETHeader : TDUCETHeader;

function  DUCETInit: Boolean;
procedure DUCETDone;
function  DUCETReadProps(Index: LongInt): Byte;

var
  DUCETUseEMS : Boolean;  { True if loaded into EMS }
function  DUCETReadTable2(Index: LongInt; var R: UInt24): Boolean;
function  DUCETReadOTable2(Index: LongInt; var R: UInt24): Boolean;

{$ELSE}

{ 32-bit platforms: full const arrays in memory }
  {$ifdef ENDIAN_LITTLE}
    {$I ucadata_le.inc}
  {$else}
    {$I ucadata_be.inc}
  {$endif}

{$ENDIF}

var
  UCA_DEFAULT : TUCA_DataBook;

implementation

{$IF defined(CPUI8086)}

uses emsovl;

var
  EMSHandle  : TEMSHandle;
  CacheBuf   : array[0..DUCET_CACHE_SIZE-1] of Byte;
  CacheStart : LongInt;
  CacheLen   : Word;
  CacheTable : Byte; { 0=props, 1=table2, 2=otable2 }

procedure InvalidateCache;
begin
  CacheStart := -1;
  CacheLen := 0;
  CacheTable := 255;
end;

function DUCETInit: Boolean;
var Magic: array[0..7] of Char;
begin
  DUCETLoaded := False;
  DUCETUseEMS := False;
  InvalidateCache;
  
  { Try EMS first — load entire DUCET.DAT into expanded memory }
  if EMSInit then begin
    EMSHandle := EMSLoadFile(DUCET_FILENAME);
    if EMSHandle <> $FFFF then begin
      { Read header from EMS }
      Move(EMSMapData(EMSHandle, 0)^, DUCETHeader, SizeOf(DUCETHeader));
      if (DUCETHeader.Magic[0] = 'D') and (DUCETHeader.Magic[1] = 'U') and
         (DUCETHeader.Magic[2] = 'C') and (DUCETHeader.Magic[3] = 'E') then
      begin
        DUCETLoaded := True;
        DUCETUseEMS := True;
        DUCETInit := True;
        Exit;
      end;
      EMSFreeHandle(EMSHandle);
    end;
  end;
  
  { Fall back to disk I/O }
  
  {$I-}
  Assign(DUCETFile, DUCET_FILENAME);
  Reset(DUCETFile, 1);
  {$I+}
  if IOResult <> 0 then begin
    DUCETInit := False;
    Exit;
  end;
  
  BlockRead(DUCETFile, DUCETHeader, SizeOf(DUCETHeader));
  if (DUCETHeader.Magic[0] <> 'D') or (DUCETHeader.Magic[1] <> 'U') or
     (DUCETHeader.Magic[2] <> 'C') or (DUCETHeader.Magic[3] <> 'E') then
  begin
    Close(DUCETFile);
    DUCETInit := False;
    Exit;
  end;
  
  DUCETLoaded := True;
  DUCETInit := True;
end;

procedure DUCETDone;
begin
  if DUCETLoaded then begin
    if DUCETUseEMS then
      EMSFreeHandle(EMSHandle)
    else
      Close(DUCETFile);
    DUCETLoaded := False;
    DUCETUseEMS := False;
  end;
end;

procedure ReadFromFile(FileOfs: LongInt; TableId: Byte);
var BytesRead: Word;
begin
  if (CacheTable = TableId) and (FileOfs >= CacheStart) and 
     (FileOfs < CacheStart + CacheLen) then
    Exit; { Already cached }
  
  Seek(DUCETFile, FileOfs);
  BlockRead(DUCETFile, CacheBuf, DUCET_CACHE_SIZE, BytesRead);
  CacheStart := FileOfs;
  CacheLen := BytesRead;
  CacheTable := TableId;
end;

function DUCETReadProps(Index: LongInt): Byte;
var FileOfs: LongInt;
begin
  if not DUCETLoaded then begin
    DUCETReadProps := 0;
    Exit;
  end;
  
  if DUCETUseEMS then begin
    DUCETReadProps := EMSReadByte(EMSHandle, DUCETHeader.PropsOfs + Index);
    Exit;
  end;
  if (Index < 0) or (Index >= DUCETHeader.PropsSize) then begin
    DUCETReadProps := 0;
    Exit;
  end;
  
  FileOfs := DUCETHeader.PropsOfs + Index;
  ReadFromFile(FileOfs, 0);
  DUCETReadProps := CacheBuf[FileOfs - CacheStart];
end;

function DUCETReadTable2(Index: LongInt; var R: UInt24): Boolean;
var FileOfs: LongInt; Ofs: Word;
begin
  if not DUCETLoaded then begin Result := False; Exit; end;
  FileOfs := DUCETHeader.Table2Ofs + Index * 3;
  ReadFromFile(FileOfs, 1);
  Ofs := FileOfs - CacheStart;
  if Ofs + 3 <= CacheLen then begin
    R.byte0 := CacheBuf[Ofs];
    R.byte1 := CacheBuf[Ofs+1];
    R.byte2 := CacheBuf[Ofs+2];
    Result := True;
  end else
    Result := False;
end;

function DUCETReadOTable2(Index: LongInt; var R: UInt24): Boolean;
var FileOfs: LongInt; Ofs: Word;
begin
  if not DUCETLoaded then begin Result := False; Exit; end;
  FileOfs := DUCETHeader.OTable2Ofs + Index * 3;
  ReadFromFile(FileOfs, 2);
  Ofs := FileOfs - CacheStart;
  if Ofs + 3 <= CacheLen then begin
    R.byte0 := CacheBuf[Ofs];
    R.byte1 := CacheBuf[Ofs+1];
    R.byte2 := CacheBuf[Ofs+2];
    Result := True;
  end else
    Result := False;
end;

{$ENDIF}

end.
