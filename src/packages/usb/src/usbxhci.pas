{
  usbxhci.pas — xHCI (USB 3.0) Host Controller Driver

  Extensible Host Controller Interface — Intel xHCI Rev 1.2
  Handles USB 3.0 SuperSpeed, 2.0 High/Full, 1.1 Low speed.
  One controller for all speeds.

  Architecture:
    Capability Registers → read-only HW caps
    Operational Registers → run/stop, device slots, ports
    Runtime Registers → interrupters, event ring
    Doorbell Registers → ring doorbells to start transfers

  Transfer Ring → queue TRBs (Transfer Request Blocks)
  Event Ring → controller posts completion events
  Command Ring → host issues commands (enable slot, address device)

  DOS:  direct MMIO via PCI BAR (go32v2 DPMI)
  Other: not used (kernel owns xHCI; use libusb instead)

  Reference: Intel xHCI Specification Rev 1.2 (public)
  GPLv3 — the crew 4free — sysop/0
}
unit USBxHCI;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, USBCore, USBPCI;

const
  { Capability Register offsets }
  XHCI_CAP_CAPLENGTH  = $00;  { 1 byte: cap register length }
  XHCI_CAP_HCIVERSION = $02;  { 2 bytes: HCI version (0x0100 = 1.0) }
  XHCI_CAP_HCSPARAMS1 = $04;  { struct params 1: max slots/intrs/ports }
  XHCI_CAP_HCSPARAMS2 = $08;  { struct params 2: IST, ERST max }
  XHCI_CAP_HCSPARAMS3 = $0C;  { struct params 3: latencies }
  XHCI_CAP_HCCPARAMS1 = $10;  { cap params 1: 64-bit, context size }
  XHCI_CAP_DBOFF      = $14;  { doorbell offset }
  XHCI_CAP_RTSOFF     = $18;  { runtime register offset }
  XHCI_CAP_HCCPARAMS2 = $1C;  { cap params 2 }

  { Operational Register offsets (relative to OpBase) }
  XHCI_OP_USBCMD    = $00;
  XHCI_OP_USBSTS    = $04;
  XHCI_OP_PAGESIZE  = $08;
  XHCI_OP_DNCTRL    = $14;
  XHCI_OP_CRCR      = $18;  { command ring control }
  XHCI_OP_DCBAAP    = $30;  { device context base address array pointer }
  XHCI_OP_CONFIG    = $38;  { max device slots enabled }

  { USBCMD bits }
  XHCI_CMD_RUN   = $01;
  XHCI_CMD_RESET = $02;
  XHCI_CMD_INTE  = $04;  { interrupter enable }

  { USBSTS bits }
  XHCI_STS_HALT  = $01;
  XHCI_STS_EINT  = $08;  { event interrupt }
  XHCI_STS_PCD   = $10;  { port change detect }
  XHCI_STS_CNR   = $0800; { controller not ready }

  { Port Register offsets (relative to OpBase + $400) }
  XHCI_PORTSC  = $00;  { port status/control }
  XHCI_PORTPMSC = $04;
  XHCI_PORTLI  = $08;
  XHCI_PORTHLPMC = $0C;

  { PORTSC bits }
  XHCI_PORT_CCS   = $0001;  { current connect status }
  XHCI_PORT_PED   = $0002;  { port enabled }
  XHCI_PORT_PR    = $0010;  { port reset }
  XHCI_PORT_PLS   = $01E0;  { port link state (bits 8:5) }
  XHCI_PORT_PP    = $0200;  { port power }
  XHCI_PORT_SPEED = $3C00;  { port speed (bits 13:10) }
  XHCI_PORT_CSC   = $020000; { connect status change }
  XHCI_PORT_PRC   = $200000; { port reset change }

  { Port speeds (PORTSC bits 13:10) }
  XHCI_SPEED_FULL  = 1;
  XHCI_SPEED_LOW   = 2;
  XHCI_SPEED_HIGH  = 3;
  XHCI_SPEED_SUPER = 4;

  { TRB types }
  TRB_TYPE_NORMAL      = 1;
  TRB_TYPE_SETUP       = 2;
  TRB_TYPE_DATA        = 3;
  TRB_TYPE_STATUS      = 4;
  TRB_TYPE_LINK        = 6;
  TRB_TYPE_ENABLE_SLOT = 9;
  TRB_TYPE_DISABLE_SLOT = 10;
  TRB_TYPE_ADDRESS_DEV = 11;
  TRB_TYPE_CONFIG_EP   = 12;
  TRB_TYPE_EVAL_CTX    = 13;
  TRB_TYPE_RESET_EP    = 14;
  TRB_TYPE_NOOP_CMD    = 23;
  TRB_TYPE_TRANSFER    = 32;  { transfer event }
  TRB_TYPE_CMD_COMPL   = 33;  { command completion event }
  TRB_TYPE_PORT_STATUS = 34;  { port status change event }

  { TRB completion codes }
  TRB_CC_SUCCESS      = 1;
  TRB_CC_SHORT_PACKET = 13;
  TRB_CC_STALL        = 6;

  XHCI_MAX_SLOTS = 256;
  XHCI_MAX_PORTS = 127;

type
  { Transfer Request Block — 16 bytes }
  TXHCITRB = packed record
    Param:   QWord;    { parameter (address or data) }
    Status:  LongWord; { status/transfer length }
    Control: LongWord; { control: TRB type, flags }
  end;
  PXHCITRB = ^TXHCITRB;

  { xHCI controller state }
  TXHCIController = record
    PCIBus:     Byte;
    PCIDev:     Byte;
    PCIFunc:    Byte;
    BaseMMIO:   LongWord;   { physical MMIO base from BAR0 }
    MappedBase: LongWord;   { DPMI-mapped linear address }
    CapLength:  Byte;        { capability register length }
    OpBase:     LongWord;    { operational registers = MappedBase + CapLength }
    RTBase:     LongWord;    { runtime registers }
    DBBase:     LongWord;    { doorbell registers }
    PortBase:   LongWord;    { port registers = OpBase + $400 }
    MaxSlots:   Byte;
    MaxPorts:   Byte;
    MaxIntrs:   Word;
    Context64:  Boolean;     { 64-byte context structures? }
    PageSize:   LongWord;
    HCIVersion: Word;
    Initialized: Boolean;
  end;

{ --- Controller lifecycle --- }

function  XHCIDetect(var HC: TXHCIController;
            Bus, Dev, Func: Byte): Boolean;
function  XHCIInit(var HC: TXHCIController): Integer;
procedure XHCIDone(var HC: TXHCIController);
function  XHCIReset(var HC: TXHCIController): Integer;
function  XHCIStart(var HC: TXHCIController): Integer;
function  XHCIStop(var HC: TXHCIController): Integer;

{ --- Port operations --- }

function  XHCIPortCount(var HC: TXHCIController): Byte;
function  XHCIPortConnected(var HC: TXHCIController; Port: Byte): Boolean;
function  XHCIPortSpeed(var HC: TXHCIController; Port: Byte): Byte;
function  XHCIPortReset(var HC: TXHCIController; Port: Byte): Integer;
function  XHCIPortPowerOn(var HC: TXHCIController; Port: Byte): Integer;

{ --- Register access --- }

function  XHCIReadCap(var HC: TXHCIController; Offset: Word): LongWord;
function  XHCIReadOp(var HC: TXHCIController; Offset: Word): LongWord;
procedure XHCIWriteOp(var HC: TXHCIController; Offset: Word; Value: LongWord);
function  XHCIReadPort(var HC: TXHCIController; Port: Byte;
            Offset: Word): LongWord;
procedure XHCIWritePort(var HC: TXHCIController; Port: Byte;
            Offset: Word; Value: LongWord);

implementation

{$IFDEF GO32V2}
uses
  Go32;
uses
  Go32;

{ --- MMIO helpers --- }

function MMIORead32(Addr: LongWord): LongWord;
begin
  Result := PLongWord(Addr)^;
end;

procedure MMIOWrite32(Addr: LongWord; Value: LongWord);
begin
  PLongWord(Addr)^ := Value;
end;

function MMIORead8(Addr: LongWord): Byte;
begin
  Result := PByte(Addr)^;
end;

function MMIORead16(Addr: LongWord): Word;
begin
  Result := PWord(Addr)^;
end;

{ --- Register access --- }

function XHCIReadCap(var HC: TXHCIController; Offset: Word): LongWord;
begin
  Result := MMIORead32(HC.MappedBase + Offset);
end;

function XHCIReadOp(var HC: TXHCIController; Offset: Word): LongWord;
begin
  Result := MMIORead32(HC.OpBase + Offset);
end;

procedure XHCIWriteOp(var HC: TXHCIController; Offset: Word; Value: LongWord);
begin
  MMIOWrite32(HC.OpBase + Offset, Value);
end;

function XHCIReadPort(var HC: TXHCIController; Port: Byte;
  Offset: Word): LongWord;
begin
  Result := MMIORead32(HC.PortBase + (Port - 1) * $10 + Offset);
end;

procedure XHCIWritePort(var HC: TXHCIController; Port: Byte;
  Offset: Word; Value: LongWord);
begin
  MMIOWrite32(HC.PortBase + (Port - 1) * $10 + Offset, Value);
end;

{ --- Controller lifecycle --- }

function XHCIDetect(var HC: TXHCIController;
  Bus, Dev, Func: Byte): Boolean;
var
  ClassCode: LongWord;
  BAR0: LongWord;
begin
  Result := False;
  FillChar(HC, SizeOf(HC), 0);

  { Read PCI class: must be 0Ch (serial bus), 03h (USB), 30h (xHCI) }
  ClassCode := PCIConfigRead(Bus, Dev, Func, $08);
  if (ClassCode shr 8) and $FFFFFF <> $0C0330 then
    Exit;

  { Read BAR0 — must be MMIO (bit 0 = 0) }
  BAR0 := PCIConfigRead(Bus, Dev, Func, $10);
  if (BAR0 and 1) <> 0 then
    Exit;  { I/O space, not MMIO }

  HC.PCIBus  := Bus;
  HC.PCIDev  := Dev;
  HC.PCIFunc := Func;
  HC.BaseMMIO := BAR0 and $FFFFFFF0;
  Result := True;
end;

function XHCIInit(var HC: TXHCIController): Integer;
var
  HCSParams1: LongWord;
  HCCParams1: LongWord;
  DBOFF, RTSOFF: LongWord;
  Selector: Word;
  MapSize: LongWord;
begin
  Result := -1;
  MapSize := 65536;  { map 64KB of MMIO space }

  { Map physical MMIO into linear address space (DPMI) }
  Selector := Allocate_LDT_Descriptors(1);
  if Selector = 0 then Exit;
  Set_Segment_Base_Address(Selector, HC.BaseMMIO);
  Set_Segment_Limit(Selector, MapSize - 1);
  HC.MappedBase := HC.BaseMMIO;  { TODO: proper DPMI physical mapping }

  { Read capability length }
  HC.CapLength := MMIORead8(HC.MappedBase + XHCI_CAP_CAPLENGTH);
  HC.HCIVersion := MMIORead16(HC.MappedBase + XHCI_CAP_HCIVERSION);
  HC.OpBase := HC.MappedBase + HC.CapLength;

  { Read structural parameters }
  HCSParams1 := XHCIReadCap(HC, XHCI_CAP_HCSPARAMS1);
  HC.MaxSlots := Byte(HCSParams1);
  HC.MaxIntrs := Word(HCSParams1 shr 8) and $7FF;
  HC.MaxPorts := Byte(HCSParams1 shr 24);

  { Read capability parameters }
  HCCParams1 := XHCIReadCap(HC, XHCI_CAP_HCCPARAMS1);
  HC.Context64 := (HCCParams1 and $04) <> 0;

  { Read offsets }
  DBOFF := XHCIReadCap(HC, XHCI_CAP_DBOFF) and $FFFFFFFC;
  RTSOFF := XHCIReadCap(HC, XHCI_CAP_RTSOFF) and $FFFFFFE0;
  HC.DBBase := HC.MappedBase + DBOFF;
  HC.RTBase := HC.MappedBase + RTSOFF;
  HC.PortBase := HC.OpBase + $400;

  { Read page size }
  HC.PageSize := (XHCIReadOp(HC, XHCI_OP_PAGESIZE) and $FFFF) shl 12;
  if HC.PageSize = 0 then
    HC.PageSize := 4096;

  { Enable bus mastering }
  PCIEnableBusMaster(HC.PCIBus, HC.PCIDev, HC.PCIFunc);

  HC.Initialized := True;
  Result := 0;
end;

procedure XHCIDone(var HC: TXHCIController);
begin
  if HC.Initialized then
    XHCIStop(HC);
  FillChar(HC, SizeOf(HC), 0);
end;

function XHCIReset(var HC: TXHCIController): Integer;
var
  Timeout: Integer;
begin
  Result := -1;
  if not HC.Initialized then Exit;

  { Stop controller first }
  XHCIStop(HC);

  { Issue reset }
  XHCIWriteOp(HC, XHCI_OP_USBCMD, XHCI_CMD_RESET);

  { Wait for reset to complete (CNR bit clears) }
  Timeout := 1000;
  while (XHCIReadOp(HC, XHCI_OP_USBSTS) and XHCI_STS_CNR) <> 0 do begin
    Dec(Timeout);
    if Timeout <= 0 then Exit;
    { TODO: delay 1ms }
  end;

  Result := 0;
end;

function XHCIStart(var HC: TXHCIController): Integer;
var
  Cmd: LongWord;
  Timeout: Integer;
begin
  Result := -1;
  if not HC.Initialized then Exit;

  Cmd := XHCIReadOp(HC, XHCI_OP_USBCMD);
  Cmd := Cmd or XHCI_CMD_RUN or XHCI_CMD_INTE;
  XHCIWriteOp(HC, XHCI_OP_USBCMD, Cmd);

  { Wait for HALT bit to clear }
  Timeout := 1000;
  while (XHCIReadOp(HC, XHCI_OP_USBSTS) and XHCI_STS_HALT) <> 0 do begin
    Dec(Timeout);
    if Timeout <= 0 then Exit;
  end;

  Result := 0;
end;

function XHCIStop(var HC: TXHCIController): Integer;
var
  Cmd: LongWord;
  Timeout: Integer;
begin
  Result := -1;
  if not HC.Initialized then Exit;

  Cmd := XHCIReadOp(HC, XHCI_OP_USBCMD);
  Cmd := Cmd and (not XHCI_CMD_RUN);
  XHCIWriteOp(HC, XHCI_OP_USBCMD, Cmd);

  { Wait for HALT }
  Timeout := 1000;
  while (XHCIReadOp(HC, XHCI_OP_USBSTS) and XHCI_STS_HALT) = 0 do begin
    Dec(Timeout);
    if Timeout <= 0 then Exit;
  end;

  Result := 0;
end;

{ --- Port operations --- }

function XHCIPortCount(var HC: TXHCIController): Byte;
begin
  Result := HC.MaxPorts;
end;

function XHCIPortConnected(var HC: TXHCIController; Port: Byte): Boolean;
var
  PORTSC: LongWord;
begin
  PORTSC := XHCIReadPort(HC, Port, XHCI_PORTSC);
  Result := (PORTSC and XHCI_PORT_CCS) <> 0;
end;

function XHCIPortSpeed(var HC: TXHCIController; Port: Byte): Byte;
var
  PORTSC: LongWord;
begin
  PORTSC := XHCIReadPort(HC, Port, XHCI_PORTSC);
  Result := Byte((PORTSC and XHCI_PORT_SPEED) shr 10);
end;

function XHCIPortReset(var HC: TXHCIController; Port: Byte): Integer;
var
  PORTSC: LongWord;
  Timeout: Integer;
begin
  Result := -1;

  { Set port reset bit (preserve RW1C bits) }
  PORTSC := XHCIReadPort(HC, Port, XHCI_PORTSC);
  PORTSC := (PORTSC and $0E00C3E0) or XHCI_PORT_PR;
  XHCIWritePort(HC, Port, XHCI_PORTSC, PORTSC);

  { Wait for reset complete (PRC bit set) }
  Timeout := 500;
  while True do begin
    PORTSC := XHCIReadPort(HC, Port, XHCI_PORTSC);
    if (PORTSC and XHCI_PORT_PRC) <> 0 then Break;
    Dec(Timeout);
    if Timeout <= 0 then Exit;
  end;

  { Clear PRC by writing 1 to it }
  PORTSC := (PORTSC and $0E00C3E0) or XHCI_PORT_PRC;
  XHCIWritePort(HC, Port, XHCI_PORTSC, PORTSC);

  Result := 0;
end;

function XHCIPortPowerOn(var HC: TXHCIController; Port: Byte): Integer;
var
  PORTSC: LongWord;
begin
  PORTSC := XHCIReadPort(HC, Port, XHCI_PORTSC);
  if (PORTSC and XHCI_PORT_PP) = 0 then begin
    PORTSC := (PORTSC and $0E00C3E0) or XHCI_PORT_PP;
    XHCIWritePort(HC, Port, XHCI_PORTSC, PORTSC);
  end;
  Result := 0;
end;

{$ELSE}

{ Platform stub - xHCI direct MMIO only available on DOS/DPMI }

function XHCIDetect(var HC: TXHCIController;
            Bus, Dev, Func: Byte): Boolean;
begin Result := False; end;

function XHCIInit(var HC: TXHCIController): Integer;
begin Result := -1; end;

procedure XHCIDone(var HC: TXHCIController);
begin end;

function XHCIReset(var HC: TXHCIController): Integer;
begin Result := -1; end;

function XHCIStart(var HC: TXHCIController): Integer;
begin Result := -1; end;

function XHCIStop(var HC: TXHCIController): Integer;
begin Result := -1; end;

function XHCIPortCount(var HC: TXHCIController): Byte;
begin Result := 0; end;

function XHCIPortConnected(var HC: TXHCIController; Port: Byte): Boolean;
begin Result := False; end;

function XHCIPortSpeed(var HC: TXHCIController; Port: Byte): Byte;
begin Result := 0; end;

function XHCIPortReset(var HC: TXHCIController; Port: Byte): Integer;
begin Result := -1; end;

function XHCIPortPowerOn(var HC: TXHCIController; Port: Byte): Integer;
begin Result := -1; end;

function XHCIReadCap(var HC: TXHCIController; Offset: Word): LongWord;
begin Result := 0; end;

function XHCIReadOp(var HC: TXHCIController; Offset: Word): LongWord;
begin Result := 0; end;

function XHCIReadPort(var HC: TXHCIController; Port: Byte;
            Offset: Word): LongWord;
begin Result := 0; end;

procedure XHCIWritePort(var HC: TXHCIController; Port: Byte;
            Offset: Word; Value: LongWord);
begin end;


procedure XHCIWriteOp(var HC: TXHCIController; Offset: Word; Value: LongWord);
begin end;

function MMIORead32(Addr: LongWord): LongWord;
begin Result := 0; end;

procedure MMIOWrite32(Addr: LongWord; Value: LongWord);
begin end;

function MMIORead8(Addr: LongWord): Byte;
begin Result := 0; end;

function MMIORead16(Addr: LongWord): Word;
begin Result := 0; end;

{$ENDIF}

end.
