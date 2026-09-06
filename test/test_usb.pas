{
  test_usb.pas — USB Stack Unit Tests
  Part of FPC 2.6.4irc r311 test suite

  Tests compile-time correctness and record layout of the USB stack.
  Does NOT require USB hardware — tests types, constants, sizes only.

  Run: ppc386 -Sd -Fusrc/packages/usb/src -Fusrc/rtl/usb test/test_usb.pas
       ./test_usb

  GPLv3 — the crew 4free
}
{$mode objfpc}{$H+}
program test_usb;

uses
  SysUtils, USBCore, USBTrans,
  {$IFNDEF GO32V2}{$IFNDEF MSDOS}
  libusb, usbserial,
  {$ENDIF}{$ENDIF}
  USBHub, USBMSD;

var
  Pass, Fail: Integer;

procedure Check(const Name: String; Cond: Boolean);
begin
  if Cond then begin
    WriteLn('  PASS: ', Name);
    Inc(Pass);
  end else begin
    WriteLn('  FAIL: ', Name);
    Inc(Fail);
  end;
end;

{ --- USBCore tests --- }

procedure TestUSBCore;
var
  Desc: TUSBDeviceDescriptor;
  Setup: TUSBSetupPacket;
begin
  WriteLn('=== USBCore ===');

  Check('DeviceDescriptor size = 18',
    SizeOf(Desc) = 18);

  Check('SetupPacket size = 8',
    SizeOf(Setup) = 8);

  Check('USB_REQ_GET_DESCRIPTOR = 6',
    USB_REQ_GET_DESCRIPTOR = 6);

  Check('USB_REQ_SET_ADDRESS = 5',
    USB_REQ_SET_ADDRESS = 5);

  Check('USB_REQ_SET_CONFIGURATION = 9',
    USB_REQ_SET_CONFIGURATION = 9);
end;

{ --- USBTrans tests --- }

procedure TestUSBTrans;
var
  T: TUSBTransport;
  Dev: TUSBDeviceInfo;
begin
  WriteLn('=== USBTrans ===');

  Check('USB_SPEED_LOW = 0',     USB_SPEED_LOW = 0);
  Check('USB_SPEED_FULL = 1',    USB_SPEED_FULL = 1);
  Check('USB_SPEED_HIGH = 2',    USB_SPEED_HIGH = 2);
  Check('USB_SPEED_SUPER = 3',   USB_SPEED_SUPER = 3);

  Check('USB_TRANS_OK = 0',      USB_TRANS_OK = 0);
  Check('USB_TRANS_STALL = -1',  USB_TRANS_STALL = -1);

  Check('USB_RT_HOST_TO_DEVICE = $00', USB_RT_HOST_TO_DEVICE = $00);
  Check('USB_RT_DEVICE_TO_HOST = $80', USB_RT_DEVICE_TO_HOST = $80);
  Check('USB_RT_CLASS = $20',          USB_RT_CLASS = $20);
  Check('USB_RT_VENDOR = $40',         USB_RT_VENDOR = $40);

  Check('TUSBDeviceInfo.Endpoints array = 16',
    High(Dev.Endpoints) - Low(Dev.Endpoints) + 1 = 16);

  FillChar(T, SizeOf(T), 0);
  Check('Transport uninitialized',   T.Initialized = False);
  Check('Transport zero devices',    T.DeviceCount = 0);
end;

{ --- USBHub tests --- }

procedure TestUSBHub;
var
  Hub: TUSBHub;
  PS: TUSBHubPortStatus;
begin
  WriteLn('=== USBHub ===');

  Check('HubPortStatus size = 4',
    SizeOf(PS) = 4);

  Check('HUB_FEAT_PORT_POWER = 8',
    HUB_FEAT_PORT_POWER = 8);
  Check('HUB_FEAT_PORT_RESET = 4',
    HUB_FEAT_PORT_RESET = 4);
  Check('HUB_FEAT_C_PORT_CONNECTION = 16',
    HUB_FEAT_C_PORT_CONNECTION = 16);

  Check('HUB_PORT_CONNECTION = $0001',
    HUB_PORT_CONNECTION = $0001);
  Check('HUB_PORT_POWER = $0100',
    HUB_PORT_POWER = $0100);
  Check('HUB_PORT_HIGH_SPEED = $0400',
    HUB_PORT_HIGH_SPEED = $0400);

  Check('USB_HUB_MAX_PORTS = 15',
    USB_HUB_MAX_PORTS = 15);

  FillChar(Hub, SizeOf(Hub), 0);
  Check('Hub uninitialized', Hub.Initialized = False);
end;

{ --- USBMSD tests --- }

procedure TestUSBMSD;
var
  CBW: TCBW;
  CSW: TCSW;
  MSD: TUSBMassStorage;
  Inq: TSCSIInquiry;
  Cap: TSCSICapacity;
begin
  WriteLn('=== USBMSD ===');

  Check('CBW size = 31',  SizeOf(CBW) = 31);
  Check('CSW size = 13',  SizeOf(CSW) = 13);
  Check('Inquiry size = 36', SizeOf(Inq) = 36);
  Check('Capacity size = 8', SizeOf(Cap) = 8);

  Check('CBW_SIGNATURE = $43425355',
    CBW_SIGNATURE = $43425355);
  Check('CSW_SIGNATURE = $53425355',
    CSW_SIGNATURE = $53425355);

  Check('SCSI_READ_10 = $28',    SCSI_READ_10 = $28);
  Check('SCSI_WRITE_10 = $2A',   SCSI_WRITE_10 = $2A);
  Check('SCSI_INQUIRY = $12',    SCSI_INQUIRY = $12);

  Check('USB_CLASS_MASS_STORAGE = $08',
    USB_CLASS_MASS_STORAGE = $08);
  Check('USB_PROTOCOL_BOT = $50',
    USB_PROTOCOL_BOT = $50);

  FillChar(MSD, SizeOf(MSD), 0);
  Check('MSD not connected', MSD.Connected = False);
  Check('MSD not ready',     MSD.Ready = False);
end;

{$IFNDEF GO32V2}{$IFNDEF MSDOS}
{ --- libusb tests --- }

procedure TestLibUSB;
begin
  WriteLn('=== libusb ===');

  Check('LIBUSB_SUCCESS = 0',           LIBUSB_SUCCESS = 0);
  Check('LIBUSB_ERROR_NOT_FOUND = -5',  LIBUSB_ERROR_NOT_FOUND = -5);
  Check('LIBUSB_ENDPOINT_IN = $80',     LIBUSB_ENDPOINT_IN = $80);
  Check('LIBUSB_ENDPOINT_OUT = $00',    LIBUSB_ENDPOINT_OUT = $00);

  Check('DeviceDescriptor size = 18',
    SizeOf(libusb_device_descriptor) = 18);

  Check('libusb not loaded initially',
    LibUSBLoaded = False);
end;

{ --- usbserial tests --- }

procedure TestUSBSerial;
var
  Port: TUSBSerial;
begin
  WriteLn('=== usbserial ===');

  Check('USB_VID_FTDI = $0403',     USB_VID_FTDI = $0403);
  Check('USB_PID_FT232 = $6001',    USB_PID_FT232 = $6001);
  Check('USB_VID_CH340 = $1A86',    USB_VID_CH340 = $1A86);
  Check('USB_PID_CH340 = $7523',    USB_PID_CH340 = $7523);
  Check('USB_VID_CP210X = $10C4',   USB_VID_CP210X = $10C4);
  Check('USB_VID_PROLIFIC = $067B', USB_VID_PROLIFIC = $067B);

  Check('USB_PARITY_NONE = 0',  USB_PARITY_NONE = 0);
  Check('USB_PARITY_ODD = 1',   USB_PARITY_ODD = 1);
  Check('USB_PARITY_EVEN = 2',  USB_PARITY_EVEN = 2);

  FillChar(Port, SizeOf(Port), 0);
  Check('Serial not connected', Port.Connected = False);
end;
{$ENDIF}{$ENDIF}

{ --- Main --- }

begin
  Pass := 0;
  Fail := 0;
  WriteLn('FPC 2.6.4irc r311 — USB Stack Test Suite');
  WriteLn('');

  TestUSBCore;
  TestUSBTrans;
  TestUSBHub;
  TestUSBMSD;
  {$IFNDEF GO32V2}{$IFNDEF MSDOS}
  TestLibUSB;
  TestUSBSerial;
  {$ENDIF}{$ENDIF}

  WriteLn('');
  WriteLn('==========================================');
  WriteLn(' USB Tests: ', Pass, ' pass, ', Fail, ' fail');
  WriteLn('==========================================');

  if Fail > 0 then
    Halt(1);
end.
