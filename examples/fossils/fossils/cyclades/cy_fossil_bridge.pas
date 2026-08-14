{ ===========================================================================
  cy_fossil_bridge — Bridge between Cyclades CD1400 and netmodem2irc engine
  GPLv3 — Copyright (C) 2026 wrench (netmodem2irc)
  ---------------------------------------------------------------------------
  Maps CD1400 channels to NM_UART16550 UART emulation instances.
  Each Cyclom-Y port (up to 32) gets its own TUart16550 + TNetTransport.

  Architecture:
    CD1400 channel → TCyPortBridge → TUart16550 → TNetTransport → ISocketLink

  For physical modem mode:
    cyfossil.asm → CD1400 hardware → ring buffer → PCBoard

  For virtual modem mode (netmodem2irc):
    NMServer TCP → ISocketLink → TNetTransport → TUart16550
    → TNetModemNode → BBS software (thinks it's talking to a modem)
  =========================================================================== }

{$MODE OBJFPC}{$H+}

unit cy_fossil_bridge;

interface

uses
  SysUtils, cd1400_regs, NM_UART16550;

const
  CY_RING_SIZE = 1024;   { matches cyfossil.asm ring buffer (CY-2 fix) }

type
  PCyPortBridge = ^TCyPortBridge;
  { Per-port bridge state }
  TCyPortBridge = record
    ChipIndex  : Byte;     { 0..7 — which CD1400 chip }
    ChannelIndex: Byte;    { 0..3 — channel within chip }
    PortNumber : Byte;     { 0..31 — flat port number }
    Enabled    : Boolean;
    Uart       : TUart16550;
    BaudIndex  : Byte;     { CY_BAUD_xxx index }
    FlowControl: Byte;     { 0=none, 1=RTS/CTS, 2=XON/XOFF }
    DTRState   : Boolean;
    RTSState   : Boolean;
    CarrierUp  : Boolean;
  end;

  { Multi-port Cyclades manager }
  TCycladesManager = class
  private
    FPorts     : array[0..CY_MAX_PORTS - 1] of TCyPortBridge;
    FPortCount : Integer;   { active ports }
    FMemBase   : LongWord;  { shared memory base address }
    FChipCount : Byte;      { detected chips (1-8) }
    FChipRev   : Byte;      { CD1400_REV_G or CD1400_REV_J }
  public
    constructor Create;

    { Initialize: detect card, probe chips, configure ports }
    function Init(AMemBase: LongWord; AMaxPorts: Integer): Boolean;

    { Per-port operations }
    function  GetPort(Index: Integer): PCyPortBridge;
    procedure EnablePort(Index: Integer; ABaud: LongInt; AFlow: Byte);
    procedure DisablePort(Index: Integer);

    { UART bridge: feed bytes from TCP into port's RX ring }
    procedure NetToPort(Index: Integer; const Buf; Len: Integer);
    { UART bridge: read bytes from port's TX ring for TCP send }
    function  PortToNet(Index: Integer; var Buf; MaxLen: Integer): Integer;

    { Modem signals }
    procedure SetDTR(Index: Integer; State: Boolean);
    procedure SetRTS(Index: Integer; State: Boolean);
    function  GetDCD(Index: Integer): Boolean;
    function  GetCTS(Index: Integer): Boolean;

    { Status }
    property PortCount: Integer read FPortCount;
    property ChipCount: Byte read FChipCount;
    property ChipRev: Byte read FChipRev;
    property MemBase: LongWord read FMemBase;
  end;



implementation

constructor TCycladesManager.Create;
var i: Integer;
begin
  inherited Create;
  FPortCount := 0;
  FMemBase := CY_DEFAULT_MEMBASE;
  FChipCount := 0;
  FChipRev := 0;
  for i := 0 to CY_MAX_PORTS - 1 do
  begin
    FPorts[i].ChipIndex := i div CY_PORTS_PER_CHIP;
    FPorts[i].ChannelIndex := i mod CY_PORTS_PER_CHIP;
    FPorts[i].PortNumber := i;
    FPorts[i].Enabled := False;
    FPorts[i].BaudIndex := CY_BAUD_9600;
    FPorts[i].FlowControl := 0;
    FPorts[i].DTRState := False;
    FPorts[i].RTSState := False;
    FPorts[i].CarrierUp := False;
    UartReset(FPorts[i].Uart);
  end;
end;

function TCycladesManager.Init(AMemBase: LongWord; AMaxPorts: Integer): Boolean;
var
  i: Integer;
  ChipBase: LongWord;
begin
  Result := False;
  FMemBase := AMemBase;
  FChipCount := 0;

  { Probe chips: read GFRCR at each chip offset }
  for i := 0 to CY_MAX_CHIPS - 1 do
  begin
    ChipBase := FMemBase + (LongWord(i) * CY_REG_SIZE);
    { In real hardware: rev := Mem[ChipBase + CyGFRCR]
      In virtual mode: assume chip present if within AMaxPorts range }
    if (i * CY_PORTS_PER_CHIP) < AMaxPorts then
    begin
      Inc(FChipCount);
      if FChipRev = 0 then FChipRev := CD1400_REV_J;  { default 60MHz }
    end;
  end;

  FPortCount := FChipCount * CY_PORTS_PER_CHIP;
  if FPortCount > AMaxPorts then FPortCount := AMaxPorts;
  Result := (FChipCount > 0);
end;

function TCycladesManager.GetPort(Index: Integer): PCyPortBridge;
begin
  if (Index >= 0) and (Index < CY_MAX_PORTS) then
    Result := @FPorts[Index]
  else
    Result := nil;
end;

procedure TCycladesManager.EnablePort(Index: Integer; ABaud: LongInt; AFlow: Byte);
begin
  if (Index < 0) or (Index >= FPortCount) then Exit;
  FPorts[Index].Enabled := True;
  FPorts[Index].FlowControl := AFlow;
  FPorts[Index].DTRState := True;
  FPorts[Index].RTSState := True;
  FPorts[Index].CarrierUp := False;
  UartReset(FPorts[Index].Uart);

  { Map baud rate to CD1400 index }
  case ABaud of
       50: FPorts[Index].BaudIndex := CY_BAUD_50;
       75: FPorts[Index].BaudIndex := CY_BAUD_75;
      110: FPorts[Index].BaudIndex := CY_BAUD_110;
      300: FPorts[Index].BaudIndex := CY_BAUD_300;
      600: FPorts[Index].BaudIndex := CY_BAUD_600;
     1200: FPorts[Index].BaudIndex := CY_BAUD_1200;
     2400: FPorts[Index].BaudIndex := CY_BAUD_2400;
     4800: FPorts[Index].BaudIndex := CY_BAUD_4800;
     9600: FPorts[Index].BaudIndex := CY_BAUD_9600;
    19200: FPorts[Index].BaudIndex := CY_BAUD_19200;
    38400: FPorts[Index].BaudIndex := CY_BAUD_38400;
    57600: FPorts[Index].BaudIndex := CY_BAUD_57600;
    76800: FPorts[Index].BaudIndex := CY_BAUD_76800;
   115200: FPorts[Index].BaudIndex := CY_BAUD_115200;
   150000: FPorts[Index].BaudIndex := CY_BAUD_150000;
   230400: FPorts[Index].BaudIndex := CY_BAUD_230400;
  else
    FPorts[Index].BaudIndex := CY_BAUD_9600;
  end;
end;

procedure TCycladesManager.DisablePort(Index: Integer);
begin
  if (Index < 0) or (Index >= FPortCount) then Exit;
  FPorts[Index].Enabled := False;
  FPorts[Index].DTRState := False;
  FPorts[Index].RTSState := False;
  FPorts[Index].CarrierUp := False;
end;

procedure TCycladesManager.NetToPort(Index: Integer; const Buf; Len: Integer);
var
  P: PByte;
  i: Integer;
begin
  if (Index < 0) or (Index >= FPortCount) or not FPorts[Index].Enabled then Exit;
  P := @Buf;
  for i := 0 to Len - 1 do
  begin
    if not UartNetToGuest(FPorts[Index].Uart, P^) then Break;  { ring full }
    Inc(P);
  end;
  FPorts[Index].CarrierUp := True;
end;

function TCycladesManager.PortToNet(Index: Integer; var Buf; MaxLen: Integer): Integer;
var
  P: PByte;
  b: Byte;
begin
  Result := 0;
  if (Index < 0) or (Index >= FPortCount) or not FPorts[Index].Enabled then Exit;
  P := @Buf;
  while (Result < MaxLen) and UartGuestToNet(FPorts[Index].Uart, b) do
  begin
    P^ := b;
    Inc(P);
    Inc(Result);
  end;
end;

procedure TCycladesManager.SetDTR(Index: Integer; State: Boolean);
begin
  if (Index < 0) or (Index >= FPortCount) then Exit;
  FPorts[Index].DTRState := State;
  if not State then FPorts[Index].CarrierUp := False;  { DTR drop = hangup }
end;

procedure TCycladesManager.SetRTS(Index: Integer; State: Boolean);
begin
  if (Index < 0) or (Index >= FPortCount) then Exit;
  FPorts[Index].RTSState := State;
end;

function TCycladesManager.GetDCD(Index: Integer): Boolean;
begin
  if (Index < 0) or (Index >= FPortCount) then
    Result := False
  else
    Result := FPorts[Index].CarrierUp;
end;

function TCycladesManager.GetCTS(Index: Integer): Boolean;
begin
  if (Index < 0) or (Index >= FPortCount) then
    Result := False
  else
    Result := FPorts[Index].RTSState;  { loopback: our RTS = their CTS }
end;

end.
