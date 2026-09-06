{
  usbmsd.pas — USB Mass Storage Driver (Bulk-Only Transport)

  Implements USB Mass Storage Class with Bulk-Only Transport (BOT)
  and SCSI Transparent Command Set. Supports USB flash drives,
  external hard drives, and card readers.

  Works on all platforms via USBTrans transport abstraction:
    DOS:    direct hardware (xHCI/UHCI) → block device
    Other:  libusb → block device

  Protocol stack:
    Application → Read/Write sectors
    usbmsd.pas → SCSI commands (READ10, WRITE10, INQUIRY)
    usbtrans.pas → Bulk transfers (CBW/CSW/Data)
    usbxhci/libusb → USB hardware

  Reference: USB Mass Storage Class Bulk-Only Transport Rev 1.0
  Reference: SCSI Primary Commands (SPC-4)
  Reference: SCSI Block Commands (SBC-3)
  GPLv3 — the crew 4free — sysop/0
}
unit USBMSD;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, USBCore, USBTrans;

const
  { Mass Storage class/subclass/protocol }
  USB_CLASS_MASS_STORAGE = $08;
  USB_SUBCLASS_SCSI      = $06;   { SCSI transparent command set }
  USB_SUBCLASS_RBC       = $01;   { Reduced Block Commands }
  USB_SUBCLASS_UFI       = $04;   { USB Floppy Interface }
  USB_PROTOCOL_BOT       = $50;   { Bulk-Only Transport }
  USB_PROTOCOL_CBI       = $00;   { Control/Bulk/Interrupt }

  { Bulk-Only Transport signatures }
  CBW_SIGNATURE = $43425355;  { 'USBC' }
  CSW_SIGNATURE = $53425355;  { 'USBS' }

  { CBW flags }
  CBW_FLAG_DATA_IN  = $80;
  CBW_FLAG_DATA_OUT = $00;

  { CSW status }
  CSW_STATUS_PASSED = $00;
  CSW_STATUS_FAILED = $01;
  CSW_STATUS_PHASE  = $02;

  { SCSI commands }
  SCSI_TEST_UNIT_READY = $00;
  SCSI_REQUEST_SENSE   = $03;
  SCSI_INQUIRY         = $12;
  SCSI_READ_CAPACITY   = $25;
  SCSI_READ_10         = $28;
  SCSI_WRITE_10        = $2A;
  SCSI_MODE_SENSE_6    = $1A;
  SCSI_START_STOP_UNIT = $1B;

  { Max transfer }
  MSD_MAX_TRANSFER = 65536;  { 64KB per transfer }
  MSD_SECTOR_SIZE  = 512;

type
  { Command Block Wrapper — 31 bytes }
  TCBW = packed record
    dCBWSignature:         LongWord;  { CBW_SIGNATURE }
    dCBWTag:               LongWord;  { unique tag }
    dCBWDataTransferLength: LongWord; { bytes to transfer }
    bmCBWFlags:            Byte;      { direction }
    bCBWLUN:               Byte;      { logical unit number }
    bCBWCBLength:          Byte;      { command block length (6-16) }
    CBWCB:                 array[0..15] of Byte; { SCSI command }
  end;

  { Command Status Wrapper — 13 bytes }
  TCSW = packed record
    dCSWSignature: LongWord;  { CSW_SIGNATURE }
    dCSWTag:       LongWord;  { matches CBW tag }
    dCSWDataResidue: LongWord; { bytes not transferred }
    bCSWStatus:    Byte;      { status }
  end;

  { SCSI Inquiry data }
  TSCSIInquiry = packed record
    DeviceType:    Byte;       { bits 4:0 = peripheral type }
    RMB:           Byte;       { bit 7 = removable }
    Version:       Byte;       { SCSI version }
    ResponseFormat: Byte;
    AdditionalLength: Byte;
    Flags:         array[0..2] of Byte;
    VendorID:      array[0..7] of Char;
    ProductID:     array[0..15] of Char;
    ProductRev:    array[0..3] of Char;
  end;

  { SCSI Read Capacity data }
  TSCSICapacity = packed record
    LastLBA:       LongWord;   { big-endian! }
    BlockLength:   LongWord;   { big-endian! }
  end;

  { Mass Storage Device state }
  TUSBMassStorage = record
    Trans:         ^TUSBTransport;
    DevAddr:       Byte;
    EpIn:          Byte;       { bulk IN endpoint }
    EpOut:         Byte;       { bulk OUT endpoint }
    MaxPacketIn:   Word;
    MaxPacketOut:  Word;
    LUN:           Byte;
    Tag:           LongWord;   { CBW tag counter }
    SectorSize:    LongWord;
    TotalSectors:  QWord;
    TotalMB:       LongWord;
    Vendor:        String[8];
    Product:       String[16];
    Revision:      String[4];
    Removable:     Boolean;
    Ready:         Boolean;
    Connected:     Boolean;
  end;

{ --- Device lifecycle --- }

function  USBMSDInit(var MSD: TUSBMassStorage; Trans: PUSBTransport;
            DevAddr, EpIn, EpOut: Byte): Integer;
procedure USBMSDDone(var MSD: TUSBMassStorage);

{ --- SCSI commands --- }

function  USBMSDInquiry(var MSD: TUSBMassStorage;
            var Inq: TSCSIInquiry): Integer;
function  USBMSDTestReady(var MSD: TUSBMassStorage): Boolean;
function  USBMSDReadCapacity(var MSD: TUSBMassStorage): Integer;
function  USBMSDRequestSense(var MSD: TUSBMassStorage;
            var SenseKey, ASC, ASCQ: Byte): Integer;
function  USBMSDStartStop(var MSD: TUSBMassStorage;
            Start, LoadEject: Boolean): Integer;

{ --- Block I/O --- }

function  USBMSDReadSectors(var MSD: TUSBMassStorage;
            LBA: LongWord; Count: Word; var Buf): Integer;
function  USBMSDWriteSectors(var MSD: TUSBMassStorage;
            LBA: LongWord; Count: Word; const Buf): Integer;

{ --- Bulk-Only Transport --- }

function  USBMSDSendCBW(var MSD: TUSBMassStorage;
            const CBW: TCBW): Integer;
function  USBMSDRecvCSW(var MSD: TUSBMassStorage;
            var CSW: TCSW; ExpectedTag: LongWord): Integer;

implementation

{ --- Helpers --- }

function SwapEndian32(V: LongWord): LongWord;
begin
  Result := ((V and $FF) shl 24) or
            ((V and $FF00) shl 8) or
            ((V and $FF0000) shr 8) or
            ((V and $FF000000) shr 24);
end;

function NextTag(var MSD: TUSBMassStorage): LongWord;
begin
  Inc(MSD.Tag);
  Result := MSD.Tag;
end;

{ --- Bulk-Only Transport --- }

function USBMSDSendCBW(var MSD: TUSBMassStorage;
  const CBW: TCBW): Integer;
begin
  Result := USBTransBulkWrite(MSD.Trans^, MSD.DevAddr,
    MSD.EpOut, CBW, SizeOf(TCBW), 5000);
end;

function USBMSDRecvCSW(var MSD: TUSBMassStorage;
  var CSW: TCSW; ExpectedTag: LongWord): Integer;
begin
  FillChar(CSW, SizeOf(CSW), 0);
  Result := USBTransBulkRead(MSD.Trans^, MSD.DevAddr,
    MSD.EpIn, CSW, SizeOf(TCSW), 5000);
  if Result < 0 then Exit;

  { Validate CSW }
  if CSW.dCSWSignature <> CSW_SIGNATURE then begin
    Result := -1;
    Exit;
  end;
  if CSW.dCSWTag <> ExpectedTag then begin
    Result := -2;
    Exit;
  end;
  if CSW.bCSWStatus <> CSW_STATUS_PASSED then begin
    Result := -CSW.bCSWStatus;
    Exit;
  end;
  Result := 0;
end;

{ --- SCSI command helper --- }

function SCSICommand(var MSD: TUSBMassStorage;
  const CDB: array of Byte; CDBLen: Byte;
  DataIn: Boolean; var Data; DataLen: LongWord): Integer;
var
  CBW: TCBW;
  CSW: TCSW;
  Tag: LongWord;
begin
  Tag := NextTag(MSD);

  { Build CBW }
  FillChar(CBW, SizeOf(CBW), 0);
  CBW.dCBWSignature := CBW_SIGNATURE;
  CBW.dCBWTag := Tag;
  CBW.dCBWDataTransferLength := DataLen;
  if DataIn then
    CBW.bmCBWFlags := CBW_FLAG_DATA_IN
  else
    CBW.bmCBWFlags := CBW_FLAG_DATA_OUT;
  CBW.bCBWLUN := MSD.LUN;
  CBW.bCBWCBLength := CDBLen;
  Move(CDB[0], CBW.CBWCB[0], CDBLen);

  { Send CBW }
  Result := USBMSDSendCBW(MSD, CBW);
  if Result < 0 then Exit;

  { Data phase }
  if DataLen > 0 then begin
    if DataIn then
      Result := USBTransBulkRead(MSD.Trans^, MSD.DevAddr,
        MSD.EpIn, Data, DataLen, 10000)
    else
      Result := USBTransBulkWrite(MSD.Trans^, MSD.DevAddr,
        MSD.EpOut, Data, DataLen, 10000);
    if Result < 0 then Exit;
  end;

  { Status phase }
  Result := USBMSDRecvCSW(MSD, CSW, Tag);
end;

{ --- Device lifecycle --- }

function USBMSDInit(var MSD: TUSBMassStorage; Trans: PUSBTransport;
  DevAddr, EpIn, EpOut: Byte): Integer;
var
  Inq: TSCSIInquiry;
begin
  FillChar(MSD, SizeOf(MSD), 0);
  MSD.Trans := Trans;
  MSD.DevAddr := DevAddr;
  MSD.EpIn := EpIn;
  MSD.EpOut := EpOut;
  MSD.LUN := 0;
  MSD.SectorSize := MSD_SECTOR_SIZE;
  MSD.Connected := True;

  { Inquiry }
  Result := USBMSDInquiry(MSD, Inq);
  if Result < 0 then Exit;

  MSD.Vendor   := StrPas(PChar(@Inq.VendorID));
  MSD.Product  := StrPas(PChar(@Inq.ProductID));
  MSD.Revision := StrPas(PChar(@Inq.ProductRev));
  MSD.Removable := (Inq.RMB and $80) <> 0;

  { Wait for ready }
  USBMSDTestReady(MSD);

  { Read capacity }
  USBMSDReadCapacity(MSD);

  Result := 0;
end;

procedure USBMSDDone(var MSD: TUSBMassStorage);
begin
  if MSD.Connected then
    USBMSDStartStop(MSD, False, True);  { safe eject }
  FillChar(MSD, SizeOf(MSD), 0);
end;

{ --- SCSI commands --- }

function USBMSDInquiry(var MSD: TUSBMassStorage;
  var Inq: TSCSIInquiry): Integer;
var
  CDB: array[0..5] of Byte;
begin
  FillChar(CDB, SizeOf(CDB), 0);
  CDB[0] := SCSI_INQUIRY;
  CDB[4] := 36;  { allocation length }
  FillChar(Inq, SizeOf(Inq), 0);
  Result := SCSICommand(MSD, CDB, 6, True, Inq, 36);
end;

function USBMSDTestReady(var MSD: TUSBMassStorage): Boolean;
var
  CDB: array[0..5] of Byte;
  Dummy: Byte;
begin
  FillChar(CDB, SizeOf(CDB), 0);
  CDB[0] := SCSI_TEST_UNIT_READY;
  Result := SCSICommand(MSD, CDB, 6, False, Dummy, 0) = 0;
  MSD.Ready := Result;
end;

function USBMSDReadCapacity(var MSD: TUSBMassStorage): Integer;
var
  CDB: array[0..9] of Byte;
  Cap: TSCSICapacity;
begin
  FillChar(CDB, SizeOf(CDB), 0);
  CDB[0] := SCSI_READ_CAPACITY;
  FillChar(Cap, SizeOf(Cap), 0);
  Result := SCSICommand(MSD, CDB, 10, True, Cap, 8);
  if Result < 0 then Exit;

  MSD.TotalSectors := QWord(SwapEndian32(Cap.LastLBA)) + 1;
  MSD.SectorSize := SwapEndian32(Cap.BlockLength);
  if MSD.SectorSize = 0 then
    MSD.SectorSize := 512;
  MSD.TotalMB := LongWord((MSD.TotalSectors * MSD.SectorSize) div (1024 * 1024));
end;

function USBMSDRequestSense(var MSD: TUSBMassStorage;
  var SenseKey, ASC, ASCQ: Byte): Integer;
var
  CDB: array[0..5] of Byte;
  Sense: array[0..17] of Byte;
begin
  FillChar(CDB, SizeOf(CDB), 0);
  CDB[0] := SCSI_REQUEST_SENSE;
  CDB[4] := 18;
  FillChar(Sense, SizeOf(Sense), 0);
  Result := SCSICommand(MSD, CDB, 6, True, Sense, 18);
  if Result < 0 then Exit;

  SenseKey := Sense[2] and $0F;
  ASC := Sense[12];
  ASCQ := Sense[13];
end;

function USBMSDStartStop(var MSD: TUSBMassStorage;
  Start, LoadEject: Boolean): Integer;
var
  CDB: array[0..5] of Byte;
  Dummy: Byte;
begin
  FillChar(CDB, SizeOf(CDB), 0);
  CDB[0] := SCSI_START_STOP_UNIT;
  CDB[4] := 0;
  if Start then CDB[4] := CDB[4] or $01;
  if LoadEject then CDB[4] := CDB[4] or $02;
  Result := SCSICommand(MSD, CDB, 6, False, Dummy, 0);
end;

{ --- Block I/O --- }

function USBMSDReadSectors(var MSD: TUSBMassStorage;
  LBA: LongWord; Count: Word; var Buf): Integer;
var
  CDB: array[0..9] of Byte;
  Len: LongWord;
begin
  if not MSD.Ready then begin
    Result := -1;
    Exit;
  end;

  FillChar(CDB, SizeOf(CDB), 0);
  CDB[0] := SCSI_READ_10;
  CDB[2] := Byte(LBA shr 24);
  CDB[3] := Byte(LBA shr 16);
  CDB[4] := Byte(LBA shr 8);
  CDB[5] := Byte(LBA);
  CDB[7] := Byte(Count shr 8);
  CDB[8] := Byte(Count);

  Len := LongWord(Count) * MSD.SectorSize;
  Result := SCSICommand(MSD, CDB, 10, True, Buf, Len);
end;

function USBMSDWriteSectors(var MSD: TUSBMassStorage;
  LBA: LongWord; Count: Word; const Buf): Integer;
var
  CDB: array[0..9] of Byte;
  Len: LongWord;
  WriteBuf: Pointer;
begin
  if not MSD.Ready then begin
    Result := -1;
    Exit;
  end;

  FillChar(CDB, SizeOf(CDB), 0);
  CDB[0] := SCSI_WRITE_10;
  CDB[2] := Byte(LBA shr 24);
  CDB[3] := Byte(LBA shr 16);
  CDB[4] := Byte(LBA shr 8);
  CDB[5] := Byte(LBA);
  CDB[7] := Byte(Count shr 8);
  CDB[8] := Byte(Count);

  Len := LongWord(Count) * MSD.SectorSize;
  WriteBuf := @Buf;
  Result := SCSICommand(MSD, CDB, 10, False, WriteBuf^, Len);
end;

end.
