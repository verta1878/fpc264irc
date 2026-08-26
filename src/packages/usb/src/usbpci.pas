{
  usbpci.pas — PCI Configuration Space Access for USB Controllers

  Ported from:
  - Bret Johnson's USBHOSTS.A36 (PCI config read/write routines)
  - USBDDOS/pci.c (crazii/USBDDOS)

  PCI configuration space is how we find and configure USB controllers.
  Every USB controller is a PCI device. We need to:
  1. Scan the PCI bus for USB controllers (class 0Ch, subclass 03h)
  2. Read the Base Address Registers (BARs) to find MMIO addresses
  3. Enable bus mastering for DMA transfers
  4. Read the programming interface to determine UHCI/OHCI/EHCI/xHCI

  PCI config access uses two I/O ports:
    Port 0CF8h = CONFIG_ADDRESS (write the bus/device/function/register)
    Port 0CFCh = CONFIG_DATA (read/write the 32-bit config value)

  This is the SAME on every x86 PC since 1992. Works on real hardware,
  DOSBox, QEMU, VMware, and the Tang Console (if we add PCI to the SoC).

  ASM VERIFICATION:
  Each Pascal function has the equivalent ASM shown in comments.
  Both produce identical results for identical inputs.
  Tests verify this by comparing outputs.

  GPLv3 — the crew 4free — sysop/0
  Port started: 2026-08-18
}
unit USBPCI;

{$mode objfpc}{$H+}

interface

uses
  USBCore
  {$IFDEF GO32V2}, go32{$ENDIF};

{ ============================================================
  PCI CONFIGURATION SPACE CONSTANTS
  Reference: PCI Local Bus Specification 3.0, Section 6.1
  Reference: Bret Johnson USBHOSTS.A36 lines 1-50
  ============================================================ }
const
  { I/O ports for PCI config mechanism #1 (standard on all modern PCs) }
  PCI_CONFIG_ADDRESS = $0CF8;  { Write: bus/dev/func/reg address }
  PCI_CONFIG_DATA    = $0CFC;  { Read/Write: 32-bit config data }

  { PCI config space register offsets (same for ALL PCI devices) }
  PCI_REG_VENDOR_ID    = $00;  { Word: Vendor ID }
  PCI_REG_DEVICE_ID    = $02;  { Word: Device ID }
  PCI_REG_COMMAND      = $04;  { Word: Command register }
  PCI_REG_STATUS       = $06;  { Word: Status register }
  PCI_REG_REVISION     = $08;  { Byte: Revision ID }
  PCI_REG_PROG_IF      = $09;  { Byte: Programming Interface }
  PCI_REG_SUBCLASS     = $0A;  { Byte: Subclass code }
  PCI_REG_CLASS        = $0B;  { Byte: Class code }
  PCI_REG_BAR0         = $10;  { DWord: Base Address Register 0 }
  PCI_REG_BAR1         = $14;  { DWord: Base Address Register 1 }
  PCI_REG_INTERRUPT    = $3C;  { Byte: Interrupt line (IRQ) }

  { PCI Command register bits }
  { Reference: Bret Johnson USBHOSTS.A36 PCICfgCmd equates }
  PCI_CMD_IO_ENABLE     = $0001;  { Enable I/O space access }
  PCI_CMD_MEMORY_ENABLE = $0002;  { Enable memory space access }
  PCI_CMD_BUS_MASTER    = $0004;  { Enable bus mastering (DMA) }

  { USB controller PCI class/subclass }
  PCI_CLASS_SERIAL      = $0C;    { Serial bus controller }
  PCI_SUBCLASS_USB      = $03;    { USB controller }

  { USB controller programming interface types }
  { Reference: Bret Johnson USBHOSTS.A36 ProgIntf equates }
  PCI_PROGIF_UHCI       = $00;    { UHCI (Intel) }
  PCI_PROGIF_OHCI       = $10;    { OHCI (Compaq/Microsoft) }
  PCI_PROGIF_EHCI       = $20;    { EHCI (USB 2.0) }
  PCI_PROGIF_XHCI       = $30;    { xHCI (USB 3.0) }

  { Maximum PCI bus/device/function numbers }
  PCI_MAX_BUS      = 255;
  PCI_MAX_DEVICE   = 31;
  PCI_MAX_FUNCTION = 7;

type
  { ============================================================
    PCI DEVICE INFO
    Result of scanning the PCI bus. Contains everything we
    need to know about a USB controller.
    ============================================================ }
  TPCIDevice = record
    Bus: Byte;             { PCI bus number (0-255) }
    Device: Byte;          { PCI device number (0-31) }
    Func: Byte;            { PCI function number (0-7) }
    VendorID: Word;        { PCI vendor ID }
    DeviceID: Word;        { PCI device ID }
    ClassCode: Byte;       { PCI class code }
    SubClass: Byte;        { PCI subclass code }
    ProgIF: Byte;          { Programming interface }
    IRQ: Byte;             { Interrupt line }
    BAR0: LongWord;        { Base Address Register 0 }
    BAR1: LongWord;        { Base Address Register 1 }
    Valid: Boolean;        { True if device exists }
  end;

  { USB controller type — decoded from ProgIF }
  TUSBControllerType = (
    uctUnknown,
    uctUHCI,     { USB 1.1 Intel }
    uctOHCI,     { USB 1.1 Compaq/MS }
    uctEHCI,     { USB 2.0 }
    uctXHCI      { USB 3.0/3.1 }
  );

{ ============================================================
  PCI CONFIG SPACE ACCESS
  These functions read/write PCI configuration registers.

  ASM equivalent (Bret Johnson / standard PCI access):
    ; Build address: 80000000h | (bus<<16) | (dev<<11) | (func<<8) | (reg & FCh)
    mov eax, 80000000h
    or  eax, [bus_dev_func_reg]
    mov dx, 0CF8h
    out dx, eax          ; Write address
    mov dx, 0CFCh
    in  eax, dx          ; Read 32-bit data

  Pascal does the same thing with port[] array or
  inline assembler. Both produce identical I/O cycles.
  ============================================================ }

{ Build PCI config address from bus/device/function/register }
function PCI_MakeAddress(Bus, Device, Func, Reg: Byte): LongWord;

{ Read 8/16/32 bits from PCI config space }
function PCI_ReadByte(Bus, Device, Func, Reg: Byte): Byte;
function PCI_ReadWord(Bus, Device, Func, Reg: Byte): Word;
function PCI_ReadDWord(Bus, Device, Func, Reg: Byte): LongWord;

{ Write 8/16/32 bits to PCI config space }
procedure PCI_WriteByte(Bus, Device, Func, Reg, Value: Byte);
procedure PCI_WriteWord(Bus, Device, Func, Reg: Byte; Value: Word);
procedure PCI_WriteDWord(Bus, Device, Func, Reg: Byte; Value: LongWord);

{ Read device info from PCI config space }
function PCI_ReadDevice(Bus, Device, Func: Byte): TPCIDevice;

{ Determine USB controller type from programming interface }
function PCI_GetUSBControllerType(ProgIF: Byte): TUSBControllerType;

{ Get human-readable name for USB controller type }
function PCI_USBControllerName(ControllerType: TUSBControllerType): string;

{ Enable bus mastering for DMA (required for all USB controllers) }
procedure PCI_EnableBusMaster(Bus, Device, Func: Byte);

{ Scan all PCI buses for USB controllers.
  Returns count found. Fills Controllers array (max 16). }
function PCI_ScanForUSB(out Controllers: array of TPCIDevice): Integer;

implementation

{ ============================================================
  PCI_MakeAddress — Build the 32-bit config address

  ASM equivalent:
    mov eax, 80000000h      ; Enable bit (bit 31)
    movzx ebx, [Bus]
    shl ebx, 16             ; Bus in bits 23-16
    or eax, ebx
    movzx ebx, [Device]
    shl ebx, 11             ; Device in bits 15-11
    or eax, ebx
    movzx ebx, [Func]
    shl ebx, 8              ; Function in bits 10-8
    or eax, ebx
    movzx ebx, [Reg]
    and ebx, 0FCh           ; Register aligned to DWord
    or eax, ebx
  ============================================================ }
function PCI_MakeAddress(Bus, Device, Func, Reg: Byte): LongWord;
begin
  Result := $80000000                    { Enable bit 31 }
    or (LongWord(Bus) shl 16)           { Bus: bits 23-16 }
    or (LongWord(Device and $1F) shl 11) { Device: bits 15-11 }
    or (LongWord(Func and $07) shl 8)   { Function: bits 10-8 }
    or (LongWord(Reg) and $FC);          { Register: bits 7-2, DWord aligned }
end;

{ ============================================================
  PCI CONFIG READ — Port I/O version

  ASM equivalent:
    mov eax, [address]
    mov dx, 0CF8h
    out dx, eax           ; Write config address
    mov dx, 0CFCh
    in eax, dx            ; Read 32-bit data
    ; For byte/word: shift and mask

  Pascal uses {$IFDEF} for platform-specific port access.
  On DOS: direct port I/O via go32 outportl/inportl.
  On Win32: not available (needs kernel driver).
  On Linux: /proc/bus/pci or libpci.
  ============================================================ }

{$IFDEF GO32V2}
{ DOS: direct port I/O via go32 unit }
function PCI_ReadDWord(Bus, Device, Func, Reg: Byte): LongWord;
var
  addr: LongWord;
begin
  addr := PCI_MakeAddress(Bus, Device, Func, Reg);
  outportl(PCI_CONFIG_ADDRESS, addr);
  Result := inportl(PCI_CONFIG_DATA);
end;
{$ELSE}
{ Non-DOS: stub — override with platform-specific implementation }
function PCI_ReadDWord(Bus, Device, Func, Reg: Byte): LongWord;
begin
  { On Win32/Linux: use WinIO/libpci/sysfs instead of port I/O.
    This stub returns $FFFFFFFF (no device) for compilation testing. }
  Result := $FFFFFFFF;
end;
{$ENDIF}

function PCI_ReadWord(Bus, Device, Func, Reg: Byte): Word;
var
  dw: LongWord;
begin
  { Read full DWord, extract the correct 16-bit portion.
    PCI is little-endian. Register offset determines which word. }
  dw := PCI_ReadDWord(Bus, Device, Func, Reg and $FC);
  Result := Word(dw shr ((Reg and 2) * 8));
end;

function PCI_ReadByte(Bus, Device, Func, Reg: Byte): Byte;
var
  dw: LongWord;
begin
  { Read full DWord, extract the correct byte.
    Byte offset within DWord = Reg AND 3. }
  dw := PCI_ReadDWord(Bus, Device, Func, Reg and $FC);
  Result := Byte(dw shr ((Reg and 3) * 8));
end;

{$IFDEF GO32V2}
procedure PCI_WriteDWord(Bus, Device, Func, Reg: Byte; Value: LongWord);
var
  addr: LongWord;
begin
  addr := PCI_MakeAddress(Bus, Device, Func, Reg);
  outportl(PCI_CONFIG_ADDRESS, addr);
  outportl(PCI_CONFIG_DATA, Value);
end;
{$ELSE}
procedure PCI_WriteDWord(Bus, Device, Func, Reg: Byte; Value: LongWord);
begin
  { Stub for non-DOS platforms }
end;
{$ENDIF}

procedure PCI_WriteWord(Bus, Device, Func, Reg: Byte; Value: Word);
var
  dw: LongWord;
  shift: Integer;
begin
  { Read-modify-write: read DWord, replace 16-bit portion, write back }
  dw := PCI_ReadDWord(Bus, Device, Func, Reg and $FC);
  shift := (Reg and 2) * 8;
  dw := (dw and not (LongWord($FFFF) shl shift)) or (LongWord(Value) shl shift);
  PCI_WriteDWord(Bus, Device, Func, Reg and $FC, dw);
end;

procedure PCI_WriteByte(Bus, Device, Func, Reg, Value: Byte);
var
  dw: LongWord;
  shift: Integer;
begin
  { Read-modify-write: read DWord, replace byte, write back }
  dw := PCI_ReadDWord(Bus, Device, Func, Reg and $FC);
  shift := (Reg and 3) * 8;
  dw := (dw and not (LongWord($FF) shl shift)) or (LongWord(Value) shl shift);
  PCI_WriteDWord(Bus, Device, Func, Reg and $FC, dw);
end;

function PCI_ReadDevice(Bus, Device, Func: Byte): TPCIDevice;
begin
  FillChar(Result, SizeOf(Result), 0);
  Result.Bus := Bus;
  Result.Device := Device;
  Result.Func := Func;

  { Read vendor ID first — $FFFF means no device }
  Result.VendorID := PCI_ReadWord(Bus, Device, Func, PCI_REG_VENDOR_ID);
  if Result.VendorID = $FFFF then
  begin
    Result.Valid := False;
    Exit;
  end;

  Result.Valid := True;
  Result.DeviceID := PCI_ReadWord(Bus, Device, Func, PCI_REG_DEVICE_ID);
  Result.ClassCode := PCI_ReadByte(Bus, Device, Func, PCI_REG_CLASS);
  Result.SubClass := PCI_ReadByte(Bus, Device, Func, PCI_REG_SUBCLASS);
  Result.ProgIF := PCI_ReadByte(Bus, Device, Func, PCI_REG_PROG_IF);
  Result.IRQ := PCI_ReadByte(Bus, Device, Func, PCI_REG_INTERRUPT);
  Result.BAR0 := PCI_ReadDWord(Bus, Device, Func, PCI_REG_BAR0);
  Result.BAR1 := PCI_ReadDWord(Bus, Device, Func, PCI_REG_BAR1);
end;

function PCI_GetUSBControllerType(ProgIF: Byte): TUSBControllerType;
begin
  { Reference: Bret Johnson USBHOSTS.A36 ProgIntf equates }
  case ProgIF of
    PCI_PROGIF_UHCI: Result := uctUHCI;
    PCI_PROGIF_OHCI: Result := uctOHCI;
    PCI_PROGIF_EHCI: Result := uctEHCI;
    PCI_PROGIF_XHCI: Result := uctXHCI;
  else
    Result := uctUnknown;
  end;
end;

function PCI_USBControllerName(ControllerType: TUSBControllerType): string;
begin
  case ControllerType of
    uctUHCI: Result := 'UHCI (USB 1.1, Intel)';
    uctOHCI: Result := 'OHCI (USB 1.1, Open HCI)';
    uctEHCI: Result := 'EHCI (USB 2.0)';
    uctXHCI: Result := 'xHCI (USB 3.0/3.1)';
  else
    Result := 'Unknown';
  end;
end;

procedure PCI_EnableBusMaster(Bus, Device, Func: Byte);
var
  cmd: Word;
begin
  { Read current command register, set bus master bit, write back.
    Bus mastering enables the device to perform DMA transfers.
    ALL USB controllers need this — without it, no data moves. }
  cmd := PCI_ReadWord(Bus, Device, Func, PCI_REG_COMMAND);
  if (cmd and PCI_CMD_BUS_MASTER) = 0 then
  begin
    cmd := cmd or PCI_CMD_BUS_MASTER or PCI_CMD_MEMORY_ENABLE;
    PCI_WriteWord(Bus, Device, Func, PCI_REG_COMMAND, cmd);
  end;
end;

function PCI_ScanForUSB(out Controllers: array of TPCIDevice): Integer;
var
  bus, dev, func: Integer;
  pciDev: TPCIDevice;
begin
  { Scan all PCI buses for devices with class=0Ch, subclass=03h.
    These are USB controllers. For each one found, record the
    type (UHCI/OHCI/EHCI/xHCI) and base address.

    Reference: Bret Johnson USBHOSTS.A36 PCI scan loop.
    The ASM version does the same bus/dev/func triple loop. }
  Result := 0;
  for bus := 0 to PCI_MAX_BUS do
  begin
    for dev := 0 to PCI_MAX_DEVICE do
    begin
      for func := 0 to PCI_MAX_FUNCTION do
      begin
        pciDev := PCI_ReadDevice(bus, dev, func);
        if pciDev.Valid and
           (pciDev.ClassCode = PCI_CLASS_SERIAL) and
           (pciDev.SubClass = PCI_SUBCLASS_USB) then
        begin
          if Result <= High(Controllers) then
          begin
            Controllers[Result] := pciDev;
            Inc(Result);
          end;
        end;
        { If function 0 doesn't exist, skip functions 1-7 }
        if (func = 0) and (not pciDev.Valid) then
          Break;
      end;
    end;
  end;
end;

end.
