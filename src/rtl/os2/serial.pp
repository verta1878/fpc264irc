{ Serial port unit for OS/2 — uses DosOpen/DosDevIOCtl for COM ports.
  Same API as FPC serial unit (Unix/Windows).
  Copyright (C) 2026 FPC 2.6.4irc contributors. GPLv2. }

{$MODE OBJFPC}
{$H+}
unit Serial;

interface

uses DosCalls;

type
  TSerialHandle = THandle;
  TParityType = (NoneParity, OddParity, EvenParity);
  TSerialFlags = set of (sfRtsControl);
  TSerialState = record
    BitsPerSec: LongInt;
    ByteSize: Integer;
    Parity: TParityType;
    StopBits: Integer;
    Flags: TSerialFlags;
  end;

const
  InvalidSerialHandle = TSerialHandle(-1);

function  SerOpen(const DeviceName: string): TSerialHandle;
procedure SerClose(Handle: TSerialHandle);
procedure SerFlush(Handle: TSerialHandle);
function  SerRead(Handle: TSerialHandle; var Buffer; Count: LongInt): LongInt;
function  SerWrite(Handle: TSerialHandle; var Buffer; Count: LongInt): LongInt;
procedure SerSetParams(Handle: TSerialHandle; BitsPerSec: LongInt;
  ByteSize: Integer; Parity: TParityType; StopBits: Integer; Flags: TSerialFlags);
function  SerSaveState(Handle: TSerialHandle): TSerialState;
procedure SerRestoreState(Handle: TSerialHandle; State: TSerialState);
procedure SerSetDTR(Handle: TSerialHandle; State: Boolean);
procedure SerSetRTS(Handle: TSerialHandle; State: Boolean);
function  SerGetCTS(Handle: TSerialHandle): Boolean;
function  SerGetDSR(Handle: TSerialHandle): Boolean;
function  SerGetRI(Handle: TSerialHandle): Boolean;
function  SerGetCD(Handle: TSerialHandle): Boolean;
procedure SerBreak(Handle: TSerialHandle);
procedure SerDrain(Handle: TSerialHandle);
procedure SerSync(Handle: TSerialHandle);
procedure SerFlushInput(Handle: TSerialHandle);
procedure SerFlushOutput(Handle: TSerialHandle);
function  SerReadTimeout(Handle: TSerialHandle; var Buffer; Count: LongInt; Timeout: LongInt): LongInt;
function  SerDataAvailable(Handle: TSerialHandle): Boolean;
function  SerDetectUART(Handle: TSerialHandle): String;
procedure SerSetFIFO(Handle: TSerialHandle; Enable: Boolean; TriggerLevel: Byte);
function  SerGetBase(Handle: TSerialHandle): Word;
procedure SerEnableIRQ(Handle: TSerialHandle);
procedure SerDisableIRQ(Handle: TSerialHandle);

implementation

const
  IOCTL_ASYNC = $01;

type
  TBaudRate = record BaudRate: Cardinal; Fraction: Byte; end;
  TLineCtrl = record DataBits, Parity, StopBits: Byte; end;
  TModemCtrl = record OnMask, OffMask: Byte; end;
  TModemInput = record Signals: Byte; end;

function SerOpen(const DeviceName: string): TSerialHandle;
var H: THandle; Action, RC: Cardinal;
begin
  RC := DosOpen(PChar(DeviceName), H, Action, 0, 0, 1, $0042, nil);
  if RC = 0 then Result := H else Result := InvalidSerialHandle;
end;

procedure SerClose(Handle: TSerialHandle);
begin if Handle <> InvalidSerialHandle then DosClose(Handle); end;

procedure SerFlush(Handle: TSerialHandle);
var Cmd: Byte; PL, DL: Cardinal;
begin Cmd:=0; PL:=1; DL:=0;
  DosDevIOCtl(Handle, IOCTL_ASYNC, $47, Cmd, PL, PL, Cmd, DL, DL); end;

function SerRead(Handle: TSerialHandle; var Buffer; Count: LongInt): LongInt;
var BR: Cardinal;
begin if DosRead(Handle, Buffer, Count, BR)=0 then Result:=BR else Result:=-1; end;

function SerWrite(Handle: TSerialHandle; var Buffer; Count: LongInt): LongInt;
var BW: Cardinal;
begin if DosWrite(Handle, Buffer, Count, BW)=0 then Result:=BW else Result:=-1; end;

procedure SerSetParams(Handle: TSerialHandle; BitsPerSec: LongInt;
  ByteSize: Integer; Parity: TParityType; StopBits: Integer; Flags: TSerialFlags);
var BR: TBaudRate; LC: TLineCtrl; PL, DL: Cardinal;
begin
  BR.BaudRate:=BitsPerSec; BR.Fraction:=0; PL:=SizeOf(BR); DL:=0;
  DosDevIOCtl(Handle, IOCTL_ASYNC, $41, BR, PL, PL, BR, DL, DL);
  LC.DataBits:=ByteSize;
  case Parity of NoneParity:LC.Parity:=0; OddParity:LC.Parity:=1; EvenParity:LC.Parity:=2; end;
  if StopBits=2 then LC.StopBits:=2 else LC.StopBits:=0;
  PL:=SizeOf(LC); DL:=0;
  DosDevIOCtl(Handle, IOCTL_ASYNC, $42, LC, PL, PL, LC, DL, DL);
end;

function  SerSaveState(Handle: TSerialHandle): TSerialState;
var BR: TBaudRate; LC: TLineCtrl; PL, DL: Cardinal;
begin
  PL:=0; DL:=SizeOf(BR); FillChar(BR,SizeOf(BR),0);
  DosDevIOCtl(Handle, IOCTL_ASYNC, $61, BR, PL, PL, BR, DL, DL);
  Result.BitsPerSec:=BR.BaudRate;
  PL:=0; DL:=SizeOf(LC); FillChar(LC,SizeOf(LC),0);
  DosDevIOCtl(Handle, IOCTL_ASYNC, $62, LC, PL, PL, LC, DL, DL);
  Result.ByteSize:=LC.DataBits;
  case LC.Parity of 1:Result.Parity:=OddParity; 2:Result.Parity:=EvenParity; else Result.Parity:=NoneParity; end;
  if LC.StopBits=2 then Result.StopBits:=2 else Result.StopBits:=1;
  Result.Flags:=[];
end;

procedure SerRestoreState(Handle: TSerialHandle; State: TSerialState);
begin SerSetParams(Handle, State.BitsPerSec, State.ByteSize, State.Parity, State.StopBits, State.Flags); end;

procedure SetModem(Handle: TSerialHandle; OnM, OffM: Byte);
var MC: TModemCtrl; PL, DL: Cardinal;
begin MC.OnMask:=OnM; MC.OffMask:=OffM; PL:=SizeOf(MC); DL:=0;
  DosDevIOCtl(Handle, IOCTL_ASYNC, $46, MC, PL, PL, MC, DL, DL); end;

function GetModemIn(Handle: TSerialHandle): Byte;
var MI: TModemInput; PL, DL: Cardinal;
begin MI.Signals:=0; PL:=0; DL:=SizeOf(MI);
  DosDevIOCtl(Handle, IOCTL_ASYNC, $67, MI, PL, PL, MI, DL, DL);
  Result:=MI.Signals; end;

procedure SerSetDTR(Handle: TSerialHandle; State: Boolean);
begin if State then SetModem(Handle,$01,$FF) else SetModem(Handle,$00,$FE); end;

procedure SerSetRTS(Handle: TSerialHandle; State: Boolean);
begin if State then SetModem(Handle,$02,$FF) else SetModem(Handle,$00,$FD); end;

function SerGetCTS(Handle: TSerialHandle): Boolean;
begin Result:=(GetModemIn(Handle) and $10)<>0; end;

function SerGetDSR(Handle: TSerialHandle): Boolean;
begin Result:=(GetModemIn(Handle) and $20)<>0; end;

function SerGetRI(Handle: TSerialHandle): Boolean;
begin Result:=(GetModemIn(Handle) and $40)<>0; end;

function SerGetCD(Handle: TSerialHandle): Boolean;
begin Result:=(GetModemIn(Handle) and $80)<>0; end;

procedure SerBreak(Handle: TSerialHandle);
var Cmd: Word; PL, DL: Cardinal;
begin Cmd:=0; PL:=SizeOf(Cmd); DL:=0;
  DosDevIOCtl(Handle, IOCTL_ASYNC, $4D, Cmd, PL, PL, Cmd, DL, DL);
  DosSleep(250);
  DosDevIOCtl(Handle, IOCTL_ASYNC, $4E, Cmd, PL, PL, Cmd, DL, DL); end;

procedure SerDrain(Handle: TSerialHandle);
begin SerFlush(Handle); end;

procedure SerSync(Handle: TSerialHandle);
begin SerFlush(Handle); end;

procedure SerFlushInput(Handle: TSerialHandle);
var Cmd: Byte; PL, DL: Cardinal;
begin Cmd:=0; PL:=1; DL:=0;
  DosDevIOCtl(Handle, IOCTL_ASYNC, $48, Cmd, PL, PL, Cmd, DL, DL); end;

procedure SerFlushOutput(Handle: TSerialHandle);
begin SerFlush(Handle); end;

function SerReadTimeout(Handle: TSerialHandle; var Buffer; Count: LongInt; Timeout: LongInt): LongInt;
var BR: Cardinal;
begin
  { Simple blocking read. For timeout, configure DCBINFO read timeout. }
  if DosRead(Handle, Buffer, Count, BR)=0 then Result:=BR else Result:=-1;
end;


function SerDataAvailable(Handle: TSerialHandle): Boolean;
var
  QueueInfo: record InCount, InSize, OutCount, OutSize: Word; end;
  PL, DL: Cardinal;
begin
  PL := 0; DL := SizeOf(QueueInfo);
  FillChar(QueueInfo, SizeOf(QueueInfo), 0);
  DosDevIOCtl(Handle, IOCTL_ASYNC, $68, { ASYNC_GETINQUECOUNT }
    QueueInfo, PL, PL, QueueInfo, DL, DL);
  Result := QueueInfo.InCount > 0;
end;

function SerDetectUART(Handle: TSerialHandle): String;
begin
  { OS/2: the COM driver abstracts the UART type.
    Return generic identifier. }
  if Handle <> InvalidSerialHandle then
    Result := 'SIO'
  else
    Result := 'none';
end;

procedure SerSetFIFO(Handle: TSerialHandle; Enable: Boolean; TriggerLevel: Byte);
var
  FIFOCtrl: record Enable: Byte; Size: Word; end;
  PL, DL: Cardinal;
begin
  { OS/2: Set receive trigger level via DCBINFO extended. }
  if Enable then begin
    FIFOCtrl.Enable := 1;
    FIFOCtrl.Size := TriggerLevel;
  end else begin
    FIFOCtrl.Enable := 0;
    FIFOCtrl.Size := 1;
  end;
  PL := SizeOf(FIFOCtrl); DL := 0;
  DosDevIOCtl(Handle, IOCTL_ASYNC, $53, { ASYNC_SETDCBINFO }
    FIFOCtrl, PL, PL, FIFOCtrl, DL, DL);
end;

function SerGetBase(Handle: TSerialHandle): Word;
begin
  { OS/2: no direct I/O port access. Return handle as identifier. }
  Result := Word(Handle and $FFFF);
end;

procedure SerEnableIRQ(Handle: TSerialHandle);
var
  Cmd: Word; PL, DL: Cardinal;
begin
  { OS/2: enable COM port event notification. }
  Cmd := $0001; { enable RX data available event }
  PL := SizeOf(Cmd); DL := 0;
  DosDevIOCtl(Handle, IOCTL_ASYNC, $45, { ASYNC_STARTTRANSMIT }
    Cmd, PL, PL, Cmd, DL, DL);
end;

procedure SerDisableIRQ(Handle: TSerialHandle);
var
  Cmd: Word; PL, DL: Cardinal;
begin
  { OS/2: disable COM port event notification. }
  Cmd := $0000;
  PL := SizeOf(Cmd); DL := 0;
  DosDevIOCtl(Handle, IOCTL_ASYNC, $47, { ASYNC_STOPTRANSMIT }
    Cmd, PL, PL, Cmd, DL, DL);
end;


end.
