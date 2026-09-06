{
  usbtrans.pas — USB Transport Abstraction Layer

  Provides a common interface for USB transfers across platforms:
    DOS:        direct hardware access via usbxhci/usbuhci
    Linux:      libusb-1.0.so.0
    Windows:    libusb-1.0.dll
    FreeBSD:    libusb.so
    macOS:      libusb-1.0.dylib
    OS/2:       usb10.dll

  Higher-level drivers (hub, mass storage, HID) use this unit
  instead of calling hardware or libusb directly.

  GPLv3 — the crew 4free — sysop/0
}
unit USBTrans;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, USBCore
  {$IFNDEF GO32V2}
  {$IFNDEF MSDOS}
  , libusb
  {$ENDIF}
  {$ENDIF}
  ;

const
  USB_SPEED_LOW   = 0;   { 1.5 Mbps }
  USB_SPEED_FULL  = 1;   { 12 Mbps }
  USB_SPEED_HIGH  = 2;   { 480 Mbps }
  USB_SPEED_SUPER = 3;   { 5 Gbps }

  USB_TRANS_OK      =  0;
  USB_TRANS_STALL   = -1;
  USB_TRANS_NAK     = -2;
  USB_TRANS_TIMEOUT = -3;
  USB_TRANS_ERROR   = -4;
  USB_TRANS_NODEV   = -5;

  { USB request type bits }
  USB_RT_HOST_TO_DEVICE = $00;
  USB_RT_DEVICE_TO_HOST = $80;
  USB_RT_STANDARD       = $00;
  USB_RT_CLASS          = $20;
  USB_RT_VENDOR         = $40;
  USB_RT_DEVICE         = $00;
  USB_RT_INTERFACE      = $01;
  USB_RT_ENDPOINT       = $02;
  USB_RT_OTHER          = $03;

  { USB standard requests }
  USB_REQ_SET_ADDRESS       = 5;
  USB_REQ_GET_DESCRIPTOR    = 6;
  USB_REQ_SET_CONFIGURATION = 9;

type
  TUSBControllerType = (
    uctNone,
    uctUHCI,     { Universal HCI — Intel, legacy }
    uctOHCI,     { Open HCI — VIA, NEC, legacy }
    uctEHCI,     { Enhanced HCI — USB 2.0 }
    uctXHCI,     { Extensible HCI — USB 3.0 }
    uctLibUSB    { Kernel-managed, accessed via libusb }
  );

  TUSBEndpoint = record
    Address:     Byte;     { endpoint address (bit 7 = direction) }
    Attributes:  Byte;     { transfer type }
    MaxPacket:   Word;     { max packet size }
    Interval:    Byte;     { polling interval }
  end;

  TUSBDeviceInfo = record
    Address:     Byte;     { device address on bus }
    Speed:       Byte;     { USB_SPEED_xxx }
    VID:         Word;     { vendor ID }
    PID:         Word;     { product ID }
    DevClass:    Byte;     { device class }
    DevSubClass: Byte;     { device subclass }
    DevProtocol: Byte;     { device protocol }
    NumEndpoints: Byte;
    Endpoints:   array[0..15] of TUSBEndpoint;
    PortNumber:  Byte;     { hub port this device is on }
    ParentHub:   Byte;     { address of parent hub (0 = root) }
    Connected:   Boolean;
  end;

  { Abstract transport handle }
  PUSBTransport = ^TUSBTransport;
  TUSBTransport = record
    CtrlType:    TUSBControllerType;
    CtrlIndex:   Byte;      { which controller (for multi-controller) }
    {$IFDEF GO32V2}
    BaseAddr:    LongWord;  { BAR for UHCI I/O or xHCI MMIO }
    IRQ:         Byte;
    {$ENDIF}
    {$IFNDEF GO32V2}
    {$IFNDEF MSDOS}
    LibCtx:      Plibusb_context;
    {$ENDIF}
    {$ENDIF}
    Initialized: Boolean;
    MaxDevices:  Byte;
    Devices:     array[0..127] of TUSBDeviceInfo;
    DeviceCount: Byte;
  end;

{ --- Initialization --- }

function  USBTransInit(var T: TUSBTransport): Integer;
procedure USBTransDone(var T: TUSBTransport);

{ --- Enumeration --- }

function  USBTransEnumerate(var T: TUSBTransport): Integer;
function  USBTransGetDevice(var T: TUSBTransport; Index: Byte;
            var Dev: TUSBDeviceInfo): Boolean;

{ --- Control transfers --- }

function  USBTransControlMsg(var T: TUSBTransport; DevAddr: Byte;
            RequestType, Request: Byte; Value, Index: Word;
            var Data; Length: Word; Timeout: LongWord): Integer;

{ --- Bulk transfers --- }

function  USBTransBulkWrite(var T: TUSBTransport; DevAddr, Endpoint: Byte;
            const Data; Length: Integer; Timeout: LongWord): Integer;
function  USBTransBulkRead(var T: TUSBTransport; DevAddr, Endpoint: Byte;
            var Data; Length: Integer; Timeout: LongWord): Integer;

{ --- Interrupt transfers --- }

function  USBTransIntRead(var T: TUSBTransport; DevAddr, Endpoint: Byte;
            var Data; Length: Integer; Timeout: LongWord): Integer;

{ --- Device management --- }

function  USBTransSetAddress(var T: TUSBTransport; DevAddr, NewAddr: Byte): Integer;
function  USBTransSetConfig(var T: TUSBTransport; DevAddr: Byte;
            Config: Byte): Integer;
function  USBTransGetDescriptor(var T: TUSBTransport; DevAddr: Byte;
            DescType, DescIndex: Byte; var Buf; BufLen: Word): Integer;
function  USBTransResetPort(var T: TUSBTransport; Port: Byte): Integer;

implementation

{$IFDEF GO32V2}
{ --- DOS: Direct hardware access --- }

function USBTransInit(var T: TUSBTransport): Integer;
begin
  FillChar(T, SizeOf(T), 0);
  T.MaxDevices := 127;
  { Scan PCI for USB controllers }
  { TODO: call USBPCI.ScanForControllers, set CtrlType/BaseAddr }
  T.Initialized := True;
  Result := USB_TRANS_OK;
end;

procedure USBTransDone(var T: TUSBTransport);
begin
  T.Initialized := False;
end;

function USBTransEnumerate(var T: TUSBTransport): Integer;
begin
  { TODO: reset root ports, enumerate devices on each port }
  T.DeviceCount := 0;
  Result := USB_TRANS_OK;
end;

function USBTransGetDevice(var T: TUSBTransport; Index: Byte;
  var Dev: TUSBDeviceInfo): Boolean;
begin
  if Index < T.DeviceCount then begin
    Dev := T.Devices[Index];
    Result := True;
  end else
    Result := False;
end;

function USBTransControlMsg(var T: TUSBTransport; DevAddr: Byte;
  RequestType, Request: Byte; Value, Index: Word;
  var Data; Length: Word; Timeout: LongWord): Integer;
begin
  case T.CtrlType of
    uctXHCI: begin
      { TODO: build TRB, ring doorbell, wait for completion }
      Result := USB_TRANS_ERROR;
    end;
    uctUHCI: begin
      { TODO: build TD chain, schedule on frame list }
      Result := USB_TRANS_ERROR;
    end;
  else
    Result := USB_TRANS_ERROR;
  end;
end;

function USBTransBulkWrite(var T: TUSBTransport; DevAddr, Endpoint: Byte;
  const Data; Length: Integer; Timeout: LongWord): Integer;
begin
  case T.CtrlType of
    uctXHCI: Result := USB_TRANS_ERROR; { TODO: bulk TRB }
    uctUHCI: Result := USB_TRANS_ERROR; { TODO: bulk TD }
  else
    Result := USB_TRANS_ERROR;
  end;
end;

function USBTransBulkRead(var T: TUSBTransport; DevAddr, Endpoint: Byte;
  var Data; Length: Integer; Timeout: LongWord): Integer;
begin
  case T.CtrlType of
    uctXHCI: Result := USB_TRANS_ERROR; { TODO: bulk TRB }
    uctUHCI: Result := USB_TRANS_ERROR; { TODO: bulk TD }
  else
    Result := USB_TRANS_ERROR;
  end;
end;

function USBTransIntRead(var T: TUSBTransport; DevAddr, Endpoint: Byte;
  var Data; Length: Integer; Timeout: LongWord): Integer;
begin
  case T.CtrlType of
    uctXHCI: Result := USB_TRANS_ERROR; { TODO: interrupt TRB }
    uctUHCI: Result := USB_TRANS_ERROR; { TODO: interrupt TD }
  else
    Result := USB_TRANS_ERROR;
  end;
end;

function USBTransSetAddress(var T: TUSBTransport; DevAddr, NewAddr: Byte): Integer;
var
  Dummy: Byte;
begin
  Result := USBTransControlMsg(T, DevAddr,
    USB_RT_HOST_TO_DEVICE or USB_RT_STANDARD or USB_RT_DEVICE,
    USB_REQ_SET_ADDRESS, NewAddr, 0, Dummy, 0, 1000);
end;

function USBTransSetConfig(var T: TUSBTransport; DevAddr: Byte;
  Config: Byte): Integer;
var
  Dummy: Byte;
begin
  Result := USBTransControlMsg(T, DevAddr,
    USB_RT_HOST_TO_DEVICE or USB_RT_STANDARD or USB_RT_DEVICE,
    USB_REQ_SET_CONFIGURATION, Config, 0, Dummy, 0, 1000);
end;

function USBTransGetDescriptor(var T: TUSBTransport; DevAddr: Byte;
  DescType, DescIndex: Byte; var Buf; BufLen: Word): Integer;
begin
  Result := USBTransControlMsg(T, DevAddr,
    USB_RT_DEVICE_TO_HOST or USB_RT_STANDARD or USB_RT_DEVICE,
    USB_REQ_GET_DESCRIPTOR, (Word(DescType) shl 8) or DescIndex,
    0, Buf, BufLen, 1000);
end;

function USBTransResetPort(var T: TUSBTransport; Port: Byte): Integer;
begin
  { TODO: controller-specific port reset }
  Result := USB_TRANS_ERROR;
end;

{$ELSE}
{$IFNDEF MSDOS}
{ --- Non-DOS: libusb backend --- }

function USBTransInit(var T: TUSBTransport): Integer;
begin
  FillChar(T, SizeOf(T), 0);
  T.CtrlType := uctLibUSB;
  T.MaxDevices := 127;

  if not LibUSBLoaded then
    if not LibUSBLoad then begin
      Result := USB_TRANS_ERROR;
      Exit;
    end;

  Result := libusb_init(@T.LibCtx);
  if Result <> 0 then begin
    Result := USB_TRANS_ERROR;
    Exit;
  end;

  T.Initialized := True;
  Result := USB_TRANS_OK;
end;

procedure USBTransDone(var T: TUSBTransport);
begin
  if T.Initialized and (T.LibCtx <> nil) then
    libusb_exit(T.LibCtx);
  FillChar(T, SizeOf(T), 0);
end;

function USBTransEnumerate(var T: TUSBTransport): Integer;
var
  DevList: Pointer;
  Count, I: Integer;
  Dev: Plibusb_device;
  Desc: libusb_device_descriptor;
begin
  T.DeviceCount := 0;
  Count := libusb_get_device_list(T.LibCtx, @DevList);
  if Count < 0 then begin
    Result := USB_TRANS_ERROR;
    Exit;
  end;

  for I := 0 to Count - 1 do begin
    if T.DeviceCount >= T.MaxDevices then Break;
    Dev := PPlibusb_device(DevList + I * SizeOf(Pointer))^;
    if libusb_get_device_descriptor(Dev, @Desc) = 0 then begin
      with T.Devices[T.DeviceCount] do begin
        Address := T.DeviceCount + 1;
        VID := Desc.idVendor;
        PID := Desc.idProduct;
        DevClass := Desc.bDeviceClass;
        DevSubClass := Desc.bDeviceSubClass;
        DevProtocol := Desc.bDeviceProtocol;
        Connected := True;
      end;
      Inc(T.DeviceCount);
    end;
  end;

  libusb_free_device_list(DevList, 1);
  Result := T.DeviceCount;
end;

function USBTransGetDevice(var T: TUSBTransport; Index: Byte;
  var Dev: TUSBDeviceInfo): Boolean;
begin
  if Index < T.DeviceCount then begin
    Dev := T.Devices[Index];
    Result := True;
  end else
    Result := False;
end;

function USBTransControlMsg(var T: TUSBTransport; DevAddr: Byte;
  RequestType, Request: Byte; Value, Index: Word;
  var Data; Length: Word; Timeout: LongWord): Integer;
begin
  { libusb control transfers need a device handle, not just address.
    Higher-level code must open the device first via libusb. }
  Result := USB_TRANS_ERROR; { TODO: needs per-device handle tracking }
end;

function USBTransBulkWrite(var T: TUSBTransport; DevAddr, Endpoint: Byte;
  const Data; Length: Integer; Timeout: LongWord): Integer;
begin
  Result := USB_TRANS_ERROR; { TODO: per-device handle }
end;

function USBTransBulkRead(var T: TUSBTransport; DevAddr, Endpoint: Byte;
  var Data; Length: Integer; Timeout: LongWord): Integer;
begin
  Result := USB_TRANS_ERROR; { TODO: per-device handle }
end;

function USBTransIntRead(var T: TUSBTransport; DevAddr, Endpoint: Byte;
  var Data; Length: Integer; Timeout: LongWord): Integer;
begin
  Result := USB_TRANS_ERROR; { TODO: per-device handle }
end;

function USBTransSetAddress(var T: TUSBTransport; DevAddr, NewAddr: Byte): Integer;
begin
  Result := USB_TRANS_OK;  { kernel handles this }
end;

function USBTransSetConfig(var T: TUSBTransport; DevAddr: Byte;
  Config: Byte): Integer;
begin
  Result := USB_TRANS_OK;  { kernel handles this }
end;

function USBTransGetDescriptor(var T: TUSBTransport; DevAddr: Byte;
  DescType, DescIndex: Byte; var Buf; BufLen: Word): Integer;
begin
  Result := USB_TRANS_ERROR; { TODO: per-device handle }
end;

function USBTransResetPort(var T: TUSBTransport; Port: Byte): Integer;
begin
  Result := USB_TRANS_OK;  { kernel handles this }
end;

{$ENDIF}
{$ENDIF}

end.
