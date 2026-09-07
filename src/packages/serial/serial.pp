{$MODE OBJFPC}
{$H+}
unit serial;
{ Serial port unit for DOS - direct UART 8250/16550 access.
  Same API as FPC serial unit (Unix/Windows).
  Supports COM1-COM4 via hardware I/O ports. }

interface

type
  TParityType = (NoneParity, OddParity, EvenParity, MarkParity, SpaceParity);
  TSerialHandle = LongInt;
  TSerialFlags = set of (sfRtsControl);

const
  InvalidSerialHandle = TSerialHandle(-1);

const
  RtsCtsFlowControl = sfRtsControl;  { alias for m_serial.pas compatibility }

type
  TSerialState = record
    BitsPerSec: LongInt;
    ByteSize: Integer;
    Parity: TParityType;
    StopBits: Integer;
    Flags: TSerialFlags;
  end;

const
  COM_BASE: array[0..3] of Word = ($3F8, $2F8, $3E8, $2E8);
  UART_RBR = 0; UART_THR = 0; UART_IER = 1; UART_IIR = 2;
  UART_FCR = 2; UART_LCR = 3; UART_MCR = 4; UART_LSR = 5;
  UART_MSR = 6; UART_DLL = 0; UART_DLH = 1;
  LSR_DR = $01; LSR_THRE = $20; LSR_TEMT = $40;
  MCR_DTR = $01; MCR_RTS = $02;
  MSR_CTS = $10; MSR_DSR = $20; MSR_RI = $40; MSR_DCD = $80;
  UART_CLOCK = 115200;

function  SerOpen(const DeviceName: String): TSerialHandle;
procedure SerClose(Handle: TSerialHandle);
function  SerRead(Handle: TSerialHandle; var Buffer; Count: LongInt): LongInt;
function  SerWrite(Handle: TSerialHandle; const Buffer; Count: LongInt): LongInt;
procedure SerSetParams(Handle: TSerialHandle; BitsPerSec: LongInt;
            ByteSize: Integer; Parity: TParityType; StopBits: Integer;
            Flags: TSerialFlags);
function  SerSaveState(Handle: TSerialHandle): TSerialState;
procedure SerRestoreState(Handle: TSerialHandle; State: TSerialState);
procedure SerSetDTR(Handle: TSerialHandle; State: Boolean);
procedure SerSetRTS(Handle: TSerialHandle; State: Boolean);
function  SerGetCTS(Handle: TSerialHandle): Boolean;
function  SerGetDSR(Handle: TSerialHandle): Boolean;
function  SerGetDCD(Handle: TSerialHandle): Boolean;
function  SerGetCD(Handle: TSerialHandle): Boolean;
function  SerReadTimeout(Handle: TSerialHandle; var Buffer; Count: LongInt; Timeout: LongInt): LongInt;
function  SerGetRI(Handle: TSerialHandle): Boolean;
procedure SerFlushInput(Handle: TSerialHandle);
procedure SerFlushOutput(Handle: TSerialHandle);
procedure SerSync(Handle: TSerialHandle);
procedure SerDrain(Handle: TSerialHandle);
function  SerDataAvailable(Handle: TSerialHandle): Boolean;
procedure SerBreak(Handle: TSerialHandle);
procedure SerFlush(Handle: TSerialHandle);  { flush both input and output }
function  SerDetectUART(Handle: TSerialHandle): String;
function  SerGetBase(Handle: TSerialHandle): Word;
procedure SerSetFIFO(Handle: TSerialHandle; Enable: Boolean; TriggerLevel: Byte);

{ IRQ-driven receive (FOSSIL-grade) }
procedure SerEnableIRQ(Handle: TSerialHandle);
procedure SerDisableIRQ(Handle: TSerialHandle);
function  SerRingCount(Handle: TSerialHandle): Word;
function  SerRingOverruns(Handle: TSerialHandle): LongInt;

implementation

uses SysUtils{$IFDEF GO32V2}, Ports{$ENDIF};

var SerCleanupIdx: Integer;

function GetBase(Handle: TSerialHandle): Word; inline;
begin
  if (Handle >= 0) and (Handle <= 3) then Result := COM_BASE[Handle] else Result := 0;
end;

function SerOpen(const DeviceName: String): TSerialHandle;
var S: String; PortIdx: Integer; Base: Word;
begin
  Result := -1; S := UpperCase(DeviceName);
  if Copy(S,1,3) <> 'COM' then Exit;
  PortIdx := StrToIntDef(Copy(S,4,Length(S)-3), 0) - 1;
  if (PortIdx < 0) or (PortIdx > 3) then Exit;
  Base := COM_BASE[PortIdx];
  Port[Base + 7] := $55;
  if Port[Base + 7] <> $55 then Exit;
  Result := PortIdx;
  SerSetParams(Result, 9600, 8, NoneParity, 1, []);
  SerSetDTR(Result, True); SerSetRTS(Result, True);
end;

procedure SerClose(Handle: TSerialHandle);
var B: Word;
begin B:=GetBase(Handle); if B=0 then Exit;
  Port[B+UART_MCR]:=0; Port[B+UART_IER]:=0; end;

function SerRead(Handle: TSerialHandle; var Buffer; Count: LongInt): LongInt;
var B: Word; P: PByte; I: LongInt;
begin
  B:=GetBase(Handle); Result:=0; if B=0 then Exit; P:=@Buffer;
  for I:=0 to Count-1 do begin
    if (Port[B+UART_LSR] and LSR_DR)=0 then Break;
    P[I]:=Port[B+UART_RBR]; Inc(Result);
  end;
end;

function SerWrite(Handle: TSerialHandle; const Buffer; Count: LongInt): LongInt;
var B: Word; P: PByte; I: LongInt;
begin
  B:=GetBase(Handle); Result:=0; if B=0 then Exit; P:=@Buffer;
  for I:=0 to Count-1 do begin
    while (Port[B+UART_LSR] and LSR_THRE)=0 do;
    Port[B+UART_THR]:=P[I]; Inc(Result);
  end;
end;

procedure SerSetParams(Handle: TSerialHandle; BitsPerSec: LongInt;
  ByteSize: Integer; Parity: TParityType; StopBits: Integer; Flags: TSerialFlags);
var B: Word; LCR, DL: Word;
begin
  B:=GetBase(Handle); if B=0 then Exit;
  LCR := (ByteSize - 5) and 3;
  if StopBits = 2 then LCR := LCR or $04;
  case Parity of OddParity: LCR:=LCR or $08; EvenParity: LCR:=LCR or $18; end;
  if BitsPerSec > 0 then DL := 115200 div BitsPerSec else DL := 12;
  Port[B+UART_LCR] := $80; Port[B+UART_DLL] := Lo(DL); Port[B+UART_DLH] := Hi(DL);
  Port[B+UART_LCR] := LCR;
end;

function SerSaveState(Handle: TSerialHandle): TSerialState;
var B: Word; LCR: Byte; DL: Word;
begin
  B:=GetBase(Handle); FillChar(Result, SizeOf(Result), 0); if B=0 then Exit;
  LCR := Port[B+UART_LCR];
  Port[B+UART_LCR] := LCR or $80; DL := Port[B+UART_DLL] or (Port[B+UART_DLH] shl 8);
  Port[B+UART_LCR] := LCR;
  if DL > 0 then Result.BitsPerSec := 115200 div DL else Result.BitsPerSec := 9600;
  Result.ByteSize := (LCR and 3) + 5;
  if (LCR and $08)=0 then Result.Parity := NoneParity
  else if (LCR and $10)=0 then Result.Parity := OddParity
  else Result.Parity := EvenParity;
  if (LCR and $04)<>0 then Result.StopBits := 2 else Result.StopBits := 1;
  Result.Flags := [];
end;

procedure SerRestoreState(Handle: TSerialHandle; State: TSerialState);
begin SerSetParams(Handle, State.BitsPerSec, State.ByteSize, State.Parity, State.StopBits, State.Flags); end;

procedure SerSetDTR(Handle: TSerialHandle; State: Boolean);
var B: Word;
begin B:=GetBase(Handle); if B=0 then Exit;
  if State then Port[B+UART_MCR]:=Port[B+UART_MCR] or $01
  else Port[B+UART_MCR]:=Port[B+UART_MCR] and $FE; end;

procedure SerSetRTS(Handle: TSerialHandle; State: Boolean);
var B: Word;
begin B:=GetBase(Handle); if B=0 then Exit;
  if State then Port[B+UART_MCR]:=Port[B+UART_MCR] or $02
  else Port[B+UART_MCR]:=Port[B+UART_MCR] and $FD; end;

function SerGetCTS(Handle: TSerialHandle): Boolean;
begin Result:=(Port[GetBase(Handle)+UART_MSR] and MSR_CTS)<>0; end;

function SerGetDSR(Handle: TSerialHandle): Boolean;
begin Result:=(Port[GetBase(Handle)+UART_MSR] and MSR_DSR)<>0; end;

function SerGetRI(Handle: TSerialHandle): Boolean;
begin Result:=(Port[GetBase(Handle)+UART_MSR] and MSR_RI)<>0; end;

function SerGetDCD(Handle: TSerialHandle): Boolean;
begin Result:=(Port[GetBase(Handle)+UART_MSR] and MSR_DCD)<>0; end;

function SerGetCD(Handle: TSerialHandle): Boolean;
begin Result := SerGetDCD(Handle); end;

function SerDataAvailable(Handle: TSerialHandle): Boolean;
begin Result:=(Port[GetBase(Handle)+UART_LSR] and LSR_DR)<>0; end;

procedure SerBreak(Handle: TSerialHandle);
var B: Word; L: Byte;
begin B:=GetBase(Handle); if B=0 then Exit;
  L:=Port[B+UART_LCR]; Port[B+UART_LCR]:=L or $40; Port[B+UART_LCR]:=L; end;

procedure SerDrain(Handle: TSerialHandle);
var B: Word;
begin B:=GetBase(Handle); if B=0 then Exit;
  while (Port[B+UART_LSR] and LSR_TEMT)=0 do; end;

procedure SerSync(Handle: TSerialHandle);
begin SerDrain(Handle); end;

procedure SerFlushInput(Handle: TSerialHandle);
var B: Word;
begin B:=GetBase(Handle); if B=0 then Exit;
  while (Port[B+UART_LSR] and LSR_DR)<>0 do Port[B+UART_RBR]; end;

procedure SerFlushOutput(Handle: TSerialHandle);
begin SerDrain(Handle); end;

procedure SerFlush(Handle: TSerialHandle);
begin SerFlushInput(Handle); SerDrain(Handle); end;

function SerReadTimeout(Handle: TSerialHandle; var Buffer; Count: LongInt; Timeout: LongInt): LongInt;
var Start: LongInt;
begin
  Start := 0; Result := 0;
  while (Start < Timeout) and (Result = 0) do begin
    if SerDataAvailable(Handle) then begin
      Result := SerRead(Handle, Buffer, Count); Exit;
    end;
    Inc(Start);
  end;
end;

function SerDetectUART(Handle: TSerialHandle): String;
var B: Word;
begin
  B:=GetBase(Handle); if B=0 then begin Result:='none'; Exit; end;
  Port[B+UART_FCR]:=$E7;
  if (Port[B+UART_IIR] and $C0)=$C0 then begin
    if (Port[B+UART_IIR] and $20)<>0 then Result:='16750' else Result:='16550A';
  end else if (Port[B+UART_IIR] and $80)<>0 then Result:='16550'
  else begin Port[B+7]:=$5A; if Port[B+7]=$5A then Result:='16450' else Result:='8250'; end;
  Port[B+UART_FCR]:=$00;
end;

function SerGetBase(Handle: TSerialHandle): Word;
begin Result:=GetBase(Handle); end;

procedure SerSetFIFO(Handle: TSerialHandle; Enable: Boolean; TriggerLevel: Byte);
var B: Word; F: Byte;
begin B:=GetBase(Handle); if B=0 then Exit;
  if not Enable then begin Port[B+UART_FCR]:=0; Exit; end;
  case TriggerLevel of 1:F:=$01; 4:F:=$41; 8:F:=$81; else F:=$C1; end;
  Port[B+UART_FCR]:=F or $06;
end;

{$IFDEF GO32V2_NATIVE}
{$I serial_irq.inc}
initialization
  InitIRQState;
finalization
  for SerCleanupIdx := 0 to 3 do
    if IRQState[SerCleanupIdx].Active then SerDisableIRQ(SerCleanupIdx);
{$ELSE}
procedure SerEnableIRQ(Handle: TSerialHandle); begin end;
procedure SerDisableIRQ(Handle: TSerialHandle); begin end;
function SerRingCount(Handle: TSerialHandle): Word; begin Result := 0; end;
function SerRingOverruns(Handle: TSerialHandle): LongInt; begin Result := 0; end;
{$ENDIF}

end.
