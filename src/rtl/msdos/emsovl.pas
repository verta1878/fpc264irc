{$MODE OBJFPC}
unit emsovl;
{ EMS Overlay Manager for i8086 real-mode DOS.
  Loads large data files into EMS (expanded memory) at startup.
  Maps 16KB pages into conventional memory for zero-copy access.
  
  Uses LIM EMS 4.0 API via INT 67h.
  Requires EMM386.EXE, QEMM, or compatible EMS driver.
  
  Copyright (c) 2024 FPC264IRC Project — GPLv3
  
  Usage:
    if EMSInit then begin
      Handle := EMSLoadFile('DUCET.DAT');  { load 424KB into EMS }
      P := EMSMapData(Handle, Offset);     { map 16KB page, get pointer }
      { read from P^ — it's in the page frame, no copy needed }
      EMSFreeHandle(Handle);
    end;
}

interface

uses Dos;

const
  EMS_PAGE_SIZE = 16384;  { 16KB per page }
  EMS_INT       = $67;

type
  TEMSHandle = Word;

var
  EMSAvailable : Boolean;
  EMSVersion   : Word;
  EMSPageFrame : Word;    { segment of 64KB page frame }
  EMSTotalPages: Word;
  EMSFreePages : Word;

{ Core EMS API }
function  EMSInit: Boolean;
function  EMSGetStatus: Boolean;
function  EMSGetPageFrame: Word;
function  EMSGetFreePages: Word;
function  EMSAllocPages(NumPages: Word): TEMSHandle;
function  EMSMapPage(Handle: TEMSHandle; LogPage: Word; PhysPage: Byte): Boolean;
function  EMSFreeHandle(Handle: TEMSHandle): Boolean;

{ High-level overlay API }
function  EMSLoadFile(const FileName: String): TEMSHandle;
function  EMSMapData(Handle: TEMSHandle; Offset: LongInt): Pointer;
function  EMSReadByte(Handle: TEMSHandle; Offset: LongInt): Byte;

implementation

var
  Regs: Registers;
  LastMappedHandle: TEMSHandle;
  LastMappedPage: Word;

function EMSGetStatus: Boolean;
begin
  Regs.AH := $40;
  Intr(EMS_INT, Regs);
  Result := (Regs.AH = 0);
end;

function EMSGetPageFrame: Word;
begin
  Regs.AH := $41;
  Intr(EMS_INT, Regs);
  if Regs.AH = 0 then
    Result := Regs.BX
  else
    Result := 0;
end;

function EMSGetFreePages: Word;
begin
  Regs.AH := $42;
  Intr(EMS_INT, Regs);
  if Regs.AH = 0 then begin
    EMSTotalPages := Regs.DX;
    EMSFreePages := Regs.BX;
    Result := Regs.BX;
  end else
    Result := 0;
end;

function EMSAllocPages(NumPages: Word): TEMSHandle;
begin
  Regs.AH := $43;
  Regs.BX := NumPages;
  Intr(EMS_INT, Regs);
  if Regs.AH = 0 then
    Result := Regs.DX
  else
    Result := $FFFF;
end;

function EMSMapPage(Handle: TEMSHandle; LogPage: Word; PhysPage: Byte): Boolean;
begin
  Regs.AH := $44;
  Regs.AL := PhysPage;  { physical page 0-3 in 64KB frame }
  Regs.BX := LogPage;   { logical page in handle }
  Regs.DX := Handle;
  Intr(EMS_INT, Regs);
  Result := (Regs.AH = 0);
end;

function EMSFreeHandle(Handle: TEMSHandle): Boolean;
begin
  Regs.AH := $45;
  Regs.DX := Handle;
  Intr(EMS_INT, Regs);
  Result := (Regs.AH = 0);
end;

function EMSInit: Boolean;
var
  P: FarPointer;
  DevName: array[0..7] of Char;
begin
  EMSAvailable := False;
  
  { Check for EMS driver by looking for 'EMMXXXX0' device name
    at INT 67h handler offset 0Ah }
  GetIntVec(EMS_INT, P);
  if P = nil then begin Result := False; Exit; end;
  
  Move(Ptr(Seg(P^), $000A)^, DevName, 8);
  if (DevName[0] = 'E') and (DevName[1] = 'M') and
     (DevName[2] = 'M') and (DevName[3] = 'X') and
     (DevName[4] = 'X') and (DevName[5] = 'X') and
     (DevName[6] = 'X') and (DevName[7] = '0') then
  begin
    if EMSGetStatus then begin
      EMSPageFrame := EMSGetPageFrame;
      EMSGetFreePages;
      
      { Get EMS version }
      Regs.AH := $46;
      Intr(EMS_INT, Regs);
      if Regs.AH = 0 then
        EMSVersion := Regs.AL;
      
      EMSAvailable := (EMSPageFrame <> 0);
      LastMappedHandle := $FFFF;
      LastMappedPage := $FFFF;
    end;
  end;
  
  Result := EMSAvailable;
end;

function EMSLoadFile(const FileName: String): TEMSHandle;
var
  F: File;
  FSize: LongInt;
  NumPages: Word;
  Page: Word;
  BytesRead: Word;
  BufSeg: Word;
begin
  Result := $FFFF;
  if not EMSAvailable then Exit;
  
  {$I-}
  Assign(F, FileName);
  Reset(F, 1);
  {$I+}
  if IOResult <> 0 then Exit;
  
  FSize := System.FileSize(F);
  NumPages := (FSize + EMS_PAGE_SIZE - 1) div EMS_PAGE_SIZE;
  
  Result := EMSAllocPages(NumPages);
  if Result = $FFFF then begin
    Close(F);
    Exit;
  end;
  
  { Load file into EMS pages }
  BufSeg := EMSPageFrame;
  For Page := 0 to NumPages - 1 do begin
    { Map this logical page to physical page 0 }
    if not EMSMapPage(Result, Page, 0) then begin
      EMSFreeHandle(Result);
      Close(F);
      Result := $FFFF;
      Exit;
    end;
    
    { Read 16KB into the page frame }
    BlockRead(F, Ptr(BufSeg, 0)^, EMS_PAGE_SIZE, BytesRead);
  end;
  
  Close(F);
end;

function EMSMapData(Handle: TEMSHandle; Offset: LongInt): Pointer;
var
  Page: Word;
  PageOfs: Word;
begin
  Page := Offset div EMS_PAGE_SIZE;
  PageOfs := Offset mod EMS_PAGE_SIZE;
  
  { Only remap if different page }
  if (Handle <> LastMappedHandle) or (Page <> LastMappedPage) then begin
    EMSMapPage(Handle, Page, 0);
    LastMappedHandle := Handle;
    LastMappedPage := Page;
  end;
  
  Result := Ptr(EMSPageFrame, PageOfs);
end;

function EMSReadByte(Handle: TEMSHandle; Offset: LongInt): Byte;
var P: Pointer;
begin
  P := EMSMapData(Handle, Offset);
  Result := PByte(P)^;
end;

end.
