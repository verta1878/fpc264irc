{
  usbcore.pas — USB Core Types and Constants

  Ported from USBDDOS (C, GPL) to Pascal.
  Reference: USB 2.0 Specification, Chapter 9
  Reference: USBDDOS/usb.h + usb.c (crazii/USBDDOS)

  This unit defines the fundamental USB data structures:
  - Device descriptors (what is this device?)
  - Configuration descriptors (how does it behave?)
  - Endpoint descriptors (how do we talk to it?)
  - Setup packets (control transfers)
  - Request types and standard requests

  All structures match the USB 2.0 spec byte-for-byte.
  Packed records ensure correct wire format alignment.

  GPLv3 — the crew 4free — sysop/0
  Port started: 2026-08-18
}
unit USBCore;

{$mode objfpc}{$H+}

interface

uses
  SysUtils;

{ ============================================================
  USB SPEED DEFINITIONS
  USB 1.1: Low (1.5 Mbps) and Full (12 Mbps)
  USB 2.0: High (480 Mbps)
  USB 3.0: SuperSpeed (5 Gbps)
  USB 3.1: SuperSpeed+ (10 Gbps)
  ============================================================ }
const
  USB_SPEED_LOW       = 0;    { 1.5 Mbps — keyboards, mice }
  USB_SPEED_FULL      = 1;    { 12 Mbps — audio, serial }
  USB_SPEED_HIGH      = 2;    { 480 Mbps — mass storage, video }
  USB_SPEED_SUPER     = 3;    { 5 Gbps — USB 3.0 }
  USB_SPEED_SUPERPLUS = 4;    { 10 Gbps — USB 3.1 }

{ ============================================================
  USB TRANSFER TYPES
  Four ways to move data on USB:
  - Control: device setup, configuration (guaranteed delivery)
  - Bulk: large data, no timing (mass storage)
  - Interrupt: small data, guaranteed latency (keyboard, mouse)
  - Isochronous: timed data, no retransmit (audio, video)
  ============================================================ }
const
  USB_TRANSFER_CONTROL     = 0;
  USB_TRANSFER_ISOCHRONOUS = 1;
  USB_TRANSFER_BULK        = 2;
  USB_TRANSFER_INTERRUPT   = 3;

{ ============================================================
  USB DIRECTION
  From the HOST's perspective:
  - OUT = host sends data TO device (bit 7 = 0)
  - IN  = host receives data FROM device (bit 7 = 1)
  ============================================================ }
const
  USB_DIR_OUT = $00;   { Host → Device }
  USB_DIR_IN  = $80;   { Device → Host }

{ ============================================================
  USB REQUEST TYPES (bmRequestType field)
  Bits 6-5: Type (Standard/Class/Vendor)
  Bits 4-0: Recipient (Device/Interface/Endpoint/Other)
  Bit 7:    Direction (0=OUT, 1=IN)
  ============================================================ }
const
  { Type field (bits 6-5) }
  USB_REQTYPE_STANDARD = $00;  { Standard USB request }
  USB_REQTYPE_CLASS    = $20;  { Class-specific (HID, MSC, etc.) }
  USB_REQTYPE_VENDOR   = $40;  { Vendor-specific }

  { Recipient field (bits 4-0) }
  USB_REQREC_DEVICE    = $00;  { Request is for the device }
  USB_REQREC_INTERFACE = $01;  { Request is for an interface }
  USB_REQREC_ENDPOINT  = $02;  { Request is for an endpoint }
  USB_REQREC_OTHER     = $03;  { Request is for something else }

{ ============================================================
  STANDARD USB REQUESTS (bRequest field)
  These are the 13 standard requests every USB device must support.
  Reference: USB 2.0 Spec, Table 9-4
  ============================================================ }
const
  USB_REQ_GET_STATUS        = 0;
  USB_REQ_CLEAR_FEATURE     = 1;
  USB_REQ_SET_FEATURE       = 3;
  USB_REQ_SET_ADDRESS       = 5;
  USB_REQ_GET_DESCRIPTOR    = 6;
  USB_REQ_SET_DESCRIPTOR    = 7;
  USB_REQ_GET_CONFIGURATION = 8;
  USB_REQ_SET_CONFIGURATION = 9;
  USB_REQ_GET_INTERFACE     = 10;
  USB_REQ_SET_INTERFACE     = 11;
  USB_REQ_SYNCH_FRAME       = 12;

{ ============================================================
  USB DESCRIPTOR TYPES
  Every descriptor starts with bLength + bDescriptorType.
  The type tells you what the rest of the bytes mean.
  ============================================================ }
const
  USB_DT_DEVICE        = 1;   { 18 bytes — one per device }
  USB_DT_CONFIGURATION = 2;   { Variable — describes a config }
  USB_DT_STRING        = 3;   { Variable — UTF-16LE text }
  USB_DT_INTERFACE     = 4;   { 9 bytes — one per interface }
  USB_DT_ENDPOINT      = 5;   { 7 bytes — one per endpoint }
  USB_DT_HID           = $21; { HID class descriptor }
  USB_DT_HID_REPORT    = $22; { HID report descriptor }
  USB_DT_HUB           = $29; { Hub descriptor }
  USB_DT_SS_HUB        = $2A; { SuperSpeed hub descriptor }
  USB_DT_BOS           = $0F; { Binary Object Store (USB 3.0) }

{ ============================================================
  USB DEVICE CLASS CODES
  Assigned by USB-IF. Identifies what kind of device this is.
  Class 0 = look at interface descriptors instead.
  ============================================================ }
const
  USB_CLASS_PER_INTERFACE = $00;  { Class defined per interface }
  USB_CLASS_AUDIO         = $01;  { Speakers, microphones }
  USB_CLASS_CDC           = $02;  { Modems, serial ports }
  USB_CLASS_HID           = $03;  { Keyboards, mice, gamepads }
  USB_CLASS_PHYSICAL      = $05;  { Force feedback }
  USB_CLASS_IMAGE         = $06;  { Cameras }
  USB_CLASS_PRINTER       = $07;  { Printers }
  USB_CLASS_MSC           = $08;  { Mass storage (USB drives) }
  USB_CLASS_HUB           = $09;  { USB hubs }
  USB_CLASS_CDC_DATA      = $0A;  { CDC data interface }
  USB_CLASS_VIDEO         = $0E;  { Webcams }
  USB_CLASS_WIRELESS      = $E0;  { Bluetooth, WiFi }
  USB_CLASS_VENDOR        = $FF;  { Vendor-specific }

{ ============================================================
  USB HID PROTOCOL CODES
  For HID devices, the protocol tells us the device type.
  Boot protocol = simple fixed format (BIOS compatible).
  Report protocol = complex variable format (full features).
  ============================================================ }
const
  USB_HID_PROTOCOL_NONE     = 0;  { Not a boot device }
  USB_HID_PROTOCOL_KEYBOARD = 1;  { Boot keyboard }
  USB_HID_PROTOCOL_MOUSE    = 2;  { Boot mouse }
  { No standard protocol for joystick — uses report protocol }

type
  { ============================================================
    USB SETUP PACKET
    8 bytes. Sent at the start of every control transfer.
    This is the "command" that tells the device what to do.
    Reference: USB 2.0 Spec, Table 9-2
    ============================================================ }
  TUSBSetupPacket = packed record
    bmRequestType: Byte;    { Direction + Type + Recipient }
    bRequest: Byte;         { Specific request number }
    wValue: Word;           { Request-specific parameter }
    wIndex: Word;           { Interface or endpoint number }
    wLength: Word;          { Number of bytes to transfer }
  end;

  { ============================================================
    USB DEVICE DESCRIPTOR
    18 bytes. One per device. Identifies manufacturer, product,
    USB version, device class, max packet size for endpoint 0.
    This is the FIRST thing the host reads from any device.
    Reference: USB 2.0 Spec, Table 9-8
    ============================================================ }
  TUSBDeviceDescriptor = packed record
    bLength: Byte;            { Size of this descriptor (18) }
    bDescriptorType: Byte;    { USB_DT_DEVICE (1) }
    bcdUSB: Word;             { USB spec version (BCD: $0200 = 2.0) }
    bDeviceClass: Byte;       { Device class code }
    bDeviceSubClass: Byte;    { Device subclass code }
    bDeviceProtocol: Byte;    { Device protocol code }
    bMaxPacketSize0: Byte;    { Max packet size for EP0 (8/16/32/64) }
    idVendor: Word;           { Vendor ID (assigned by USB-IF) }
    idProduct: Word;          { Product ID (assigned by vendor) }
    bcdDevice: Word;          { Device version (BCD) }
    iManufacturer: Byte;      { String index: manufacturer name }
    iProduct: Byte;           { String index: product name }
    iSerialNumber: Byte;      { String index: serial number }
    bNumConfigurations: Byte; { Number of configurations }
  end;

  { ============================================================
    USB CONFIGURATION DESCRIPTOR
    9 bytes header, followed by all interface and endpoint
    descriptors for this configuration. wTotalLength tells
    you how many bytes to read to get everything.
    Reference: USB 2.0 Spec, Table 9-10
    ============================================================ }
  TUSBConfigDescriptor = packed record
    bLength: Byte;             { Size of this descriptor (9) }
    bDescriptorType: Byte;     { USB_DT_CONFIGURATION (2) }
    wTotalLength: Word;        { Total length including all IFs + EPs }
    bNumInterfaces: Byte;      { Number of interfaces }
    bConfigurationValue: Byte; { Value to select this config }
    iConfiguration: Byte;      { String index: config name }
    bmAttributes: Byte;        { Self-powered, remote wakeup flags }
    bMaxPower: Byte;           { Max power in 2 mA units }
  end;

  { ============================================================
    USB INTERFACE DESCRIPTOR
    9 bytes. Describes one interface within a configuration.
    A device can have multiple interfaces (e.g., keyboard +
    media keys on the same device = 2 interfaces).
    bInterfaceClass tells you what this interface does.
    Reference: USB 2.0 Spec, Table 9-12
    ============================================================ }
  TUSBInterfaceDescriptor = packed record
    bLength: Byte;             { Size of this descriptor (9) }
    bDescriptorType: Byte;     { USB_DT_INTERFACE (4) }
    bInterfaceNumber: Byte;    { Zero-based interface index }
    bAlternateSetting: Byte;   { Alternate setting number }
    bNumEndpoints: Byte;       { Number of endpoints (excl. EP0) }
    bInterfaceClass: Byte;     { Interface class code }
    bInterfaceSubClass: Byte;  { Interface subclass code }
    bInterfaceProtocol: Byte;  { Interface protocol code }
    iInterface: Byte;          { String index: interface name }
  end;

  { ============================================================
    USB ENDPOINT DESCRIPTOR
    7 bytes. Describes one endpoint — a data pipe to/from
    the device. Endpoint 0 (control) is always present and
    doesn't get a descriptor.
    Reference: USB 2.0 Spec, Table 9-13
    ============================================================ }
  TUSBEndpointDescriptor = packed record
    bLength: Byte;             { Size of this descriptor (7) }
    bDescriptorType: Byte;     { USB_DT_ENDPOINT (5) }
    bEndpointAddress: Byte;    { EP number + direction (bit 7) }
    bmAttributes: Byte;        { Transfer type (bits 1-0) }
    wMaxPacketSize: Word;      { Max bytes per transfer }
    bInterval: Byte;           { Polling interval (ms or microframes) }
  end;

  { ============================================================
    USB DEVICE — Runtime state for an enumerated device.
    Created when a device is plugged in and enumerated.
    Holds the device address, speed, descriptors, and strings.
    This is OUR structure, not from the USB spec.
    ============================================================ }
  PUSBDevice = ^TUSBDevice;
  TUSBDevice = record
    Address: Byte;              { Assigned USB address (1-127) }
    Speed: Byte;                { USB_SPEED_* }
    MaxPacketSize0: Byte;       { EP0 max packet size }
    VendorID: Word;             { From device descriptor }
    ProductID: Word;            { From device descriptor }
    DeviceClass: Byte;          { From device descriptor }
    DeviceSubClass: Byte;       { From device descriptor }
    DeviceProtocol: Byte;       { From device descriptor }
    NumConfigurations: Byte;    { From device descriptor }
    NumInterfaces: Byte;        { From active configuration }
    Manufacturer: string[64];   { Decoded string descriptor }
    Product: string[64];        { Decoded string descriptor }
    SerialNumber: string[32];   { Decoded string descriptor }
    Connected: Boolean;         { Device is still plugged in }
  end;

{ ============================================================
  HELPER FUNCTIONS
  ============================================================ }

{ Extract endpoint number from bEndpointAddress (bits 3-0) }
function USB_EndpointNumber(bEndpointAddress: Byte): Byte; inline;

{ Extract endpoint direction from bEndpointAddress (bit 7) }
function USB_EndpointDir(bEndpointAddress: Byte): Byte; inline;

{ Extract transfer type from bmAttributes (bits 1-0) }
function USB_EndpointType(bmAttributes: Byte): Byte; inline;

{ Format USB version from BCD to string (e.g., $0200 → '2.00') }
function USB_VersionString(bcdUSB: Word): string;

implementation

function USB_EndpointNumber(bEndpointAddress: Byte): Byte; inline;
begin
  { Bits 3-0 = endpoint number (0-15) }
  Result := bEndpointAddress and $0F;
end;

function USB_EndpointDir(bEndpointAddress: Byte): Byte; inline;
begin
  { Bit 7 = direction: 0=OUT, 1=IN }
  Result := bEndpointAddress and $80;
end;

function USB_EndpointType(bmAttributes: Byte): Byte; inline;
begin
  { Bits 1-0 = transfer type: 0=Control, 1=Isoch, 2=Bulk, 3=Interrupt }
  Result := bmAttributes and $03;
end;

function USB_VersionString(bcdUSB: Word): string;
begin
  { BCD format: $0200 = 2.00, $0310 = 3.10 }
  Result := IntToStr(bcdUSB shr 8);
  Result := Result + '.';
  Result := Result + IntToStr((bcdUSB shr 4) and $0F);
  Result := Result + IntToStr(bcdUSB and $0F);
end;

end.
