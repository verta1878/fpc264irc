{$MODE OBJFPC}
unit pktdrv;
{ Crynwr Packet Driver interface for i8086 real-mode DOS.
  Provides raw Ethernet send/receive via INT 60h-7Fh.
  Copyright (c) 2024 FPC264IRC Project — GPLv3 }

interface

uses Dos;

const
  PKT_INT_FIRST = $60;
  PKT_INT_LAST  = $7F;
  PKT_CLASS_ETHERNET = 1;

  PKT_DRIVER_INFO  = $01;
  PKT_ACCESS_TYPE  = $02;
  PKT_RELEASE_TYPE = $03;
  PKT_SEND_PKT     = $04;
  PKT_TERMINATE    = $05;
  PKT_GET_ADDRESS  = $06;
  PKT_GET_STATS    = $18;

  ETHER_IP  = $0800;
  ETHER_ARP = $0806;

type
  TMACAddr = array[0..5] of Byte;

var
  PktInterrupt : Byte;
  PktHandle    : Word;
  PktError     : Word;
  PktMAC       : TMACAddr;

function  PktInit: Boolean;
function  PktAccessType(DrvClass, DrvType, DrvNumber: Word;
            TypeBuf: Pointer; TypeLen: Word): Boolean;
function  PktReleaseType(Handle: Word): Boolean;
function  PktSendPkt(Buffer: Pointer; Length: Word): Boolean;
function  PktGetAddress(Handle: Word; var Addr: TMACAddr): Boolean;
function  PktTerminate(Handle: Word): Boolean;

implementation

var
  Regs: Registers;

function PktCall(Func: Byte): Boolean;
begin
  Regs.AH := Func;
  Intr(PktInterrupt, Regs);
  if (Regs.Flags and FCarry) <> 0 then begin
    PktError := Regs.DH;
    PktCall := False;
  end else begin
    PktError := 0;
    PktCall := True;
  end;
end;

function PktInit: Boolean;
var
  IntNo: Byte;
  ISRSeg, ISROfs: Word;
  Sig: array[0..7] of Char;
  P: FarPointer;
begin
  PktInit := False;
  PktInterrupt := 0;
  for IntNo := PKT_INT_FIRST to PKT_INT_LAST do begin
    GetIntVec(IntNo, P);
    if P <> nil then begin
      { Read 8 bytes at ISR+3 looking for "PKT DRVR" }
      ISRSeg := Seg(P^);
      ISROfs := Ofs(P^);
      Move(Ptr(ISRSeg, ISROfs + 3)^, Sig, 8);
      if (Sig[0]='P') and (Sig[1]='K') and (Sig[2]='T') and (Sig[3]=' ') and
         (Sig[4]='D') and (Sig[5]='R') and (Sig[6]='V') and (Sig[7]='R') then
      begin
        PktInterrupt := IntNo;
        PktInit := True;
        Exit;
      end;
    end;
  end;
end;

function PktAccessType(DrvClass, DrvType, DrvNumber: Word;
  TypeBuf: Pointer; TypeLen: Word): Boolean;
begin
  Regs.AL := Lo(DrvClass);
  Regs.BX := DrvType;
  Regs.DL := Lo(DrvNumber);
  Regs.CX := TypeLen;
  { ES:DI = receiver — nil for polling }
  Regs.ES := 0;
  Regs.DI := 0;
  if PktCall(PKT_ACCESS_TYPE) then begin
    PktHandle := Regs.AX;
    PktAccessType := True;
  end else
    PktAccessType := False;
end;

function PktReleaseType(Handle: Word): Boolean;
begin
  Regs.BX := Handle;
  PktReleaseType := PktCall(PKT_RELEASE_TYPE);
end;

function PktSendPkt(Buffer: Pointer; Length: Word): Boolean;
begin
  Regs.CX := Length;
  PktSendPkt := PktCall(PKT_SEND_PKT);
end;

function PktGetAddress(Handle: Word; var Addr: TMACAddr): Boolean;
begin
  Regs.BX := Handle;
  Regs.ES := Seg(Addr);
  Regs.DI := Ofs(Addr);
  Regs.CX := 6;
  PktGetAddress := PktCall(PKT_GET_ADDRESS);
end;

function PktTerminate(Handle: Word): Boolean;
begin
  Regs.BX := Handle;
  PktTerminate := PktCall(PKT_TERMINATE);
end;

end.
