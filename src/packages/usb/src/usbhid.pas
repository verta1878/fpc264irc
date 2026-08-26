{
  usbhid.pas — USB Human Interface Device (HID) Types

  Ported from USBDDOS/CLASS/hid.c + hid.h (crazii/USBDDOS)
  and Bret Johnson's USBJSTIK.A36 / HIDSUPT1.A36.

  This unit defines:
  - HID descriptor structures
  - Boot protocol keyboard report (8 bytes)
  - Boot protocol mouse report (3-4 bytes)
  - Joystick/gamepad state structure
  - HID usage page constants (where axes and buttons live)
  - Report descriptor parsing types

  Boot protocol = simple fixed format, BIOS compatible.
  Report protocol = complex variable format, full features.
  Joystick ALWAYS uses report protocol — no boot protocol.

  Reference: USB HID 1.11 specification
  Reference: HID Usage Tables 1.12
  Reference: Bret Johnson's USBJSTIK.A36 for DOS gameport mapping

  GPLv3 — the crew 4free — sysop/0
  Port started: 2026-08-18
}
unit USBHID;

{$mode objfpc}{$H+}

interface

uses
  USBCore;

{ ============================================================
  HID DESCRIPTOR TYPES
  These go in the bDescriptorType field of HID-specific
  descriptors. Standard USB types are 1-5; HID extends
  with types $21-$23.
  ============================================================ }
const
  USB_DT_HID_CLASS   = $21;  { HID class descriptor }
  USB_DT_HID_REPORT  = $22;  { Report descriptor }
  USB_DT_HID_PHYS    = $23;  { Physical descriptor }

{ ============================================================
  HID REQUEST CODES
  Class-specific requests sent via control transfers.
  GET_REPORT: host reads a report from device.
  SET_REPORT: host sends a report to device (e.g., LED state).
  SET_IDLE: tells device to stop sending if nothing changed.
  SET_PROTOCOL: switch between boot and report protocol.
  ============================================================ }
const
  USB_REQ_HID_GET_REPORT   = $01;  { Read input/feature report }
  USB_REQ_HID_GET_IDLE     = $02;  { Get idle rate }
  USB_REQ_HID_GET_PROTOCOL = $03;  { Get current protocol }
  USB_REQ_HID_SET_REPORT   = $09;  { Write output/feature report }
  USB_REQ_HID_SET_IDLE     = $0A;  { Set idle rate }
  USB_REQ_HID_SET_PROTOCOL = $0B;  { Set boot or report protocol }

  { Protocol values for SET_PROTOCOL / GET_PROTOCOL }
  HID_PROTOCOL_BOOT   = 0;   { Simple fixed format (BIOS) }
  HID_PROTOCOL_REPORT = 1;   { Full variable format }

{ ============================================================
  HID USAGE PAGES
  Every HID control (button, axis, key) belongs to a usage page.
  The page tells you the CATEGORY; the usage ID tells you
  which specific control within that category.
  Reference: HID Usage Tables 1.12, Chapter 3
  ============================================================ }
const
  HID_USAGE_PAGE_GENERIC_DESKTOP = $01;  { Joystick, mouse, keyboard }
  HID_USAGE_PAGE_SIMULATION      = $02;  { Flight sim, driving }
  HID_USAGE_PAGE_VR              = $03;  { VR headset }
  HID_USAGE_PAGE_SPORT           = $04;  { Sport controls }
  HID_USAGE_PAGE_GAME            = $05;  { Game controls }
  HID_USAGE_PAGE_KEYBOARD        = $07;  { Key codes }
  HID_USAGE_PAGE_LED             = $08;  { LEDs (caps lock, etc.) }
  HID_USAGE_PAGE_BUTTON          = $09;  { Buttons (1-based) }
  HID_USAGE_PAGE_CONSUMER        = $0C;  { Media keys, volume }

{ ============================================================
  HID GENERIC DESKTOP USAGES
  Within the Generic Desktop page ($01), these identify
  what kind of device or axis we're looking at.
  ============================================================ }
const
  HID_USAGE_POINTER   = $01;  { Pointer (abstract) }
  HID_USAGE_MOUSE     = $02;  { Mouse }
  HID_USAGE_JOYSTICK  = $04;  { Joystick }
  HID_USAGE_GAMEPAD   = $05;  { Gamepad }
  HID_USAGE_KEYBOARD  = $06;  { Keyboard }
  HID_USAGE_X         = $30;  { X axis }
  HID_USAGE_Y         = $31;  { Y axis }
  HID_USAGE_Z         = $32;  { Z axis (throttle, twist) }
  HID_USAGE_RX        = $33;  { Rotation around X }
  HID_USAGE_RY        = $34;  { Rotation around Y }
  HID_USAGE_RZ        = $35;  { Rotation around Z (rudder) }
  HID_USAGE_SLIDER    = $36;  { Slider }
  HID_USAGE_DIAL      = $37;  { Dial }
  HID_USAGE_WHEEL     = $38;  { Wheel (scroll) }
  HID_USAGE_HATSWITCH = $39;  { Hat switch (D-pad) }

type
  { ============================================================
    BOOT KEYBOARD REPORT
    8 bytes. Fixed format. Every USB keyboard sends this in
    boot protocol mode. Modifier keys are in byte 0.
    Up to 6 simultaneous key presses in bytes 2-7.
    Byte 1 is reserved (always 0).
    Reference: HID 1.11, Appendix B.1
    ============================================================ }
  TUSBKeyboardReport = packed record
    Modifiers: Byte;    { Bit 0=LCtrl, 1=LShift, 2=LAlt, 3=LGUI }
                        { Bit 4=RCtrl, 5=RShift, 6=RAlt, 7=RGUI }
    Reserved: Byte;     { Always 0 }
    Keys: array[0..5] of Byte;  { Up to 6 key codes }
  end;

  { ============================================================
    BOOT MOUSE REPORT
    3 bytes minimum. Fixed format. Buttons in byte 0.
    X and Y movement as signed bytes (-127 to +127).
    Some mice add a 4th byte for scroll wheel.
    Reference: HID 1.11, Appendix B.2
    ============================================================ }
  TUSBMouseReport = packed record
    Buttons: Byte;      { Bit 0=Left, 1=Right, 2=Middle }
    X: ShortInt;        { X movement (-127..+127) }
    Y: ShortInt;        { Y movement (-127..+127) }
    Wheel: ShortInt;    { Scroll wheel (optional) }
  end;

  { ============================================================
    JOYSTICK/GAMEPAD STATE
    Our structure — not from the USB spec. Aggregates all
    joystick data into a clean format for DOS games.

    Axes are normalized to -32768..+32767 (signed 16-bit).
    Buttons are a bitmask (up to 32 buttons).
    Hat switch uses clock positions: 0=N, 1=NE, 2=E, ... 8=none.

    Maps to DOS gameport (INT 15h / ports 201h):
      Axis 0 = X, Axis 1 = Y (analog joystick)
      Button 0-3 = joystick buttons 1-4
      Hat → mapped to X/Y for games that don't support hat

    Reference: Bret Johnson's USBJSTIK.A36 for the mapping.
    ============================================================ }
  TUSBJoystickState = record
    { Axes: normalized to -32768..+32767 }
    AxisX: SmallInt;      { Primary X axis (left/right) }
    AxisY: SmallInt;      { Primary Y axis (up/down) }
    AxisZ: SmallInt;      { Z axis (twist/throttle) }
    AxisRX: SmallInt;     { Right stick X (dual analog) }
    AxisRY: SmallInt;     { Right stick Y (dual analog) }
    AxisRZ: SmallInt;     { Rudder / right trigger }
    Slider: SmallInt;     { Slider (flight stick) }

    { Buttons: bitmask, bit 0 = button 1 }
    Buttons: LongWord;    { Up to 32 buttons }

    { Hat switch: 0=N, 1=NE, 2=E, 3=SE, 4=S, 5=SW, 6=W, 7=NW, 8=center }
    Hat: Byte;

    { Device info }
    Connected: Boolean;
    DeviceName: string[64];
    NumAxes: Byte;
    NumButtons: Byte;
    HasHat: Boolean;
  end;

  { ============================================================
    HID REPORT FIELD
    Parsed from HID report descriptor. Each field describes
    one logical control (axis, button, etc.) with its
    bit offset, size, and logical range.
    Used by the report descriptor parser to decode reports.
    ============================================================ }
  TUSBHIDField = record
    UsagePage: Word;      { Which usage page }
    UsageID: Word;        { Which usage within the page }
    BitOffset: Integer;   { Bit position in the report }
    BitSize: Integer;     { Number of bits }
    LogicalMin: LongInt;  { Minimum value }
    LogicalMax: LongInt;  { Maximum value }
    IsRelative: Boolean;  { True=relative (mouse), False=absolute (joystick) }
    IsSigned: Boolean;    { True=signed, False=unsigned }
  end;

const
  MAX_HID_FIELDS = 64;   { Max fields in a parsed report }

type
  { ============================================================
    HID REPORT MAP
    Result of parsing a HID report descriptor. Contains all
    fields and their locations within the input report.
    ============================================================ }
  TUSBHIDReportMap = record
    NumFields: Integer;
    Fields: array[0..MAX_HID_FIELDS - 1] of TUSBHIDField;
    ReportSize: Integer;  { Total report size in bytes }
    ReportID: Byte;       { Report ID (0 if none) }
    DeviceType: Byte;     { HID_USAGE_JOYSTICK / GAMEPAD / etc. }
  end;

{ ============================================================
  HELPER FUNCTIONS
  ============================================================ }

{ Check if a keyboard modifier is pressed }
function HID_IsModifierPressed(const Report: TUSBKeyboardReport;
  ModifierBit: Byte): Boolean; inline;

{ Check if a mouse button is pressed }
function HID_IsMouseButtonPressed(const Report: TUSBMouseReport;
  ButtonBit: Byte): Boolean; inline;

{ Check if a joystick button is pressed }
function HID_IsJoyButtonPressed(const State: TUSBJoystickState;
  ButtonIndex: Byte): Boolean; inline;

{ Convert hat position to X/Y for games that need analog input }
procedure HID_HatToXY(Hat: Byte; out X, Y: SmallInt);

implementation

function HID_IsModifierPressed(const Report: TUSBKeyboardReport;
  ModifierBit: Byte): Boolean; inline;
begin
  { Modifier bits: 0=LCtrl, 1=LShift, 2=LAlt, 3=LGUI,
                   4=RCtrl, 5=RShift, 6=RAlt, 7=RGUI }
  Result := (Report.Modifiers and (1 shl ModifierBit)) <> 0;
end;

function HID_IsMouseButtonPressed(const Report: TUSBMouseReport;
  ButtonBit: Byte): Boolean; inline;
begin
  { Button bits: 0=Left, 1=Right, 2=Middle }
  Result := (Report.Buttons and (1 shl ButtonBit)) <> 0;
end;

function HID_IsJoyButtonPressed(const State: TUSBJoystickState;
  ButtonIndex: Byte): Boolean; inline;
begin
  { Button 0 = bit 0, Button 1 = bit 1, etc. }
  Result := (State.Buttons and (1 shl ButtonIndex)) <> 0;
end;

procedure HID_HatToXY(Hat: Byte; out X, Y: SmallInt);
begin
  { Convert 8-position hat to X/Y for DOS gameport emulation.
    Hat: 0=N, 1=NE, 2=E, 3=SE, 4=S, 5=SW, 6=W, 7=NW, 8=center
    Output: X=-32768..+32767, Y=-32768..+32767
    Used by Bret Johnson's USBJSTIK to map hat to analog axes. }
  case Hat of
    0: begin X := 0;      Y := -32767; end;  { North }
    1: begin X := 32767;  Y := -32767; end;  { Northeast }
    2: begin X := 32767;  Y := 0;      end;  { East }
    3: begin X := 32767;  Y := 32767;  end;  { Southeast }
    4: begin X := 0;      Y := 32767;  end;  { South }
    5: begin X := -32767; Y := 32767;  end;  { Southwest }
    6: begin X := -32767; Y := 0;      end;  { West }
    7: begin X := -32767; Y := -32767; end;  { Northwest }
  else
    begin X := 0; Y := 0; end;               { Center / neutral }
  end;
end;

end.
