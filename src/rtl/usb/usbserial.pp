{
  usbserial.pp — USB-serial adapter unit
  Part of FPC 2.6.4irc r311 — USB support
  the crew 4free

  Cross-platform USB-serial support for common adapters:
    FTDI FT232/FT2232    VID=$0403 PID=$6001/$6010
    CH340/CH341          VID=$1A86 PID=$7523
    CP2102/CP2104        VID=$10C4 PID=$EA60
    Prolific PL2303      VID=$067B PID=$2303

  Uses libusb.pp for device access. No kernel driver needed
  (detaches automatically on Linux).

  Platform support:
    Linux:    ✅  libusb-1.0.so.0 + udev rules
    Windows:  ✅  libusb-1.0.dll (WinUSB/libusbK backend)
    FreeBSD:  ✅  libusb.so (base system)
    macOS:    ✅  libusb-1.0.dylib (brew install libusb)
    OS/2:     ✅  usb10.dll (Paul Smedley's port)
    DOS:      ❌  no USB stack (use serial.pp / fossil.pp instead)

  Usage:
    Uses usbserial;
    var Port: TUSBSerial;
    if USBSerialOpen(Port, $0403, $6001) = 0 then begin
      USBSerialSetBaud(Port, 9600);
      USBSerialWrite(Port, 'ATZ'#13, 4);
      N := USBSerialRead(Port, Buf, SizeOf(Buf));
      USBSerialClose(Port);
    end;
}
unit usbserial;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, libusb;

{ --- Constants --- }

const
  { Known USB-serial adapter VID/PID }
  USB_VID_FTDI     = $0403;
  USB_PID_FT232    = $6001;
  USB_PID_FT2232   = $6010;
  USB_PID_FT232H   = $6014;

  USB_VID_CH340    = $1A86;
  USB_PID_CH340    = $7523;

  USB_VID_CP210X   = $10C4;
  USB_PID_CP2102   = $EA60;

  USB_VID_PROLIFIC = $067B;
  USB_PID_PL2303   = $2303;

  { Parity }
  USB_PARITY_NONE  = 0;
  USB_PARITY_ODD   = 1;
  USB_PARITY_EVEN  = 2;
  USB_PARITY_MARK  = 3;
  USB_PARITY_SPACE = 4;

  { Stop bits }
  USB_STOP_1  = 0;
  USB_STOP_15 = 1;
  USB_STOP_2  = 2;

  { Flow control }
  USB_FLOW_NONE    = 0;
  USB_FLOW_RTSCTS  = 1;
  USB_FLOW_XONXOFF = 2;

  { FTDI control requests }
  FTDI_SIO_RESET          = 0;
  FTDI_SIO_SET_BAUD_RATE  = 3;
  FTDI_SIO_SET_DATA       = 4;
  FTDI_SIO_SET_FLOW_CTRL  = 2;
  FTDI_SIO_SET_MODEM_CTRL = 1;
  FTDI_SIO_SET_DTR_HIGH   = $0101;
  FTDI_SIO_SET_DTR_LOW    = $0100;
  FTDI_SIO_SET_RTS_HIGH   = $0202;
  FTDI_SIO_SET_RTS_LOW    = $0200;

  { Default timeout }
  USBSER_TIMEOUT = 1000;

{ --- Types --- }

type
  TUSBSerialChip = (
    uscUnknown,
    uscFTDI,
    uscCH340,
    uscCP210X,
    uscPL2303
  );

  TUSBSerial = record
    Dev:        Plibusb_device_handle;
    Ctx:        Plibusb_context;
    VID:        Word;
    PID:        Word;
    Chip:       TUSBSerialChip;
    EpIn:       Byte;
    EpOut:      Byte;
    BaudRate:   LongWord;
    DataBits:   Byte;
    StopBits:   Byte;
    Parity:     Byte;
    FlowCtrl:   Byte;
    Connected:  Boolean;
  end;

{ --- Public API --- }

function  USBSerialOpen(var Port: TUSBSerial; VID, PID: Word): Integer;
procedure USBSerialClose(var Port: TUSBSerial);

function  USBSerialSetBaud(var Port: TUSBSerial; Baud: LongWord): Integer;
function  USBSerialSetLine(var Port: TUSBSerial;
            DataBits, StopBits, Parity: Byte): Integer;
function  USBSerialSetFlow(var Port: TUSBSerial; Flow: Byte): Integer;
function  USBSerialSetDTR(var Port: TUSBSerial; Active: Boolean): Integer;
function  USBSerialSetRTS(var Port: TUSBSerial; Active: Boolean): Integer;

function  USBSerialWrite(var Port: TUSBSerial;
            const Buf; Len: Integer): Integer;
function  USBSerialRead(var Port: TUSBSerial;
            var Buf; Len: Integer): Integer;

function  USBSerialWriteStr(var Port: TUSBSerial;
            const S: String): Integer;
function  USBSerialReadStr(var Port: TUSBSerial;
            var S: String; MaxLen: Integer): Integer;

implementation

{ --- Internal: detect chip type --- }

function DetectChip(VID, PID: Word): TUSBSerialChip;
begin
  case VID of
    USB_VID_FTDI:     Result := uscFTDI;
    USB_VID_CH340:    Result := uscCH340;
    USB_VID_CP210X:   Result := uscCP210X;
    USB_VID_PROLIFIC: Result := uscPL2303;
  else
    Result := uscUnknown;
  end;
end;

{ --- Internal: FTDI baud rate divisor --- }

function FTDIBaudDivisor(Baud: LongWord): Word;
begin
  { FTDI uses 3MHz base clock / divisor }
  case Baud of
    300:    Result := 10000;
    600:    Result := 5000;
    1200:   Result := 2500;
    2400:   Result := 1250;
    4800:   Result := 625;
    9600:   Result := 312;
    19200:  Result := 156;
    38400:  Result := 78;
    57600:  Result := 52;
    115200: Result := 26;
  else
    { Approximate: 3000000 / baud }
    if Baud > 0 then
      Result := 3000000 div Baud
    else
      Result := 312;  { default 9600 }
  end;
end;

{ --- Internal: FTDI set baud --- }

function FTDISetBaud(var Port: TUSBSerial; Baud: LongWord): Integer;
var
  Divisor: Word;
begin
  Divisor := FTDIBaudDivisor(Baud);
  Result := libusb_control_transfer(Port.Dev,
    LIBUSB_REQUEST_TYPE_VENDOR or LIBUSB_ENDPOINT_OUT,
    FTDI_SIO_SET_BAUD_RATE,
    Divisor, 0, nil, 0, USBSER_TIMEOUT);
end;

{ --- Internal: CH340 set baud --- }

function CH340SetBaud(var Port: TUSBSerial; Baud: LongWord): Integer;
var
  Factor, Divisor: Word;
begin
  { CH340 baud calculation }
  case Baud of
    2400:   begin Factor := $D901; Divisor := $0038; end;
    4800:   begin Factor := $6402; Divisor := $001F; end;
    9600:   begin Factor := $B202; Divisor := $0013; end;
    19200:  begin Factor := $D902; Divisor := $000D; end;
    38400:  begin Factor := $6403; Divisor := $000A; end;
    57600:  begin Factor := $9803; Divisor := $0008; end;
    115200: begin Factor := $CC03; Divisor := $0008; end;
  else
    Factor := $B202; Divisor := $0013; { default 9600 }
  end;

  Result := libusb_control_transfer(Port.Dev,
    LIBUSB_REQUEST_TYPE_VENDOR or LIBUSB_ENDPOINT_OUT,
    $9A, $1312, Factor, nil, 0, USBSER_TIMEOUT);
  if Result < 0 then Exit;
  Result := libusb_control_transfer(Port.Dev,
    LIBUSB_REQUEST_TYPE_VENDOR or LIBUSB_ENDPOINT_OUT,
    $9A, $0F2C, Divisor, nil, 0, USBSER_TIMEOUT);
end;

{ --- Internal: CP210X set baud --- }

function CP210XSetBaud(var Port: TUSBSerial; Baud: LongWord): Integer;
var
  BaudLE: array[0..3] of Byte;
begin
  BaudLE[0] := Byte(Baud);
  BaudLE[1] := Byte(Baud shr 8);
  BaudLE[2] := Byte(Baud shr 16);
  BaudLE[3] := Byte(Baud shr 24);
  Result := libusb_control_transfer(Port.Dev,
    LIBUSB_REQUEST_TYPE_VENDOR or LIBUSB_ENDPOINT_OUT,
    $1E, 0, 0, @BaudLE[0], 4, USBSER_TIMEOUT);
end;

{ --- Public: Connection --- }

function USBSerialOpen(var Port: TUSBSerial; VID, PID: Word): Integer;
begin
  FillChar(Port, SizeOf(Port), 0);
  Port.VID := VID;
  Port.PID := PID;
  Port.Chip := DetectChip(VID, PID);
  Port.BaudRate := 9600;
  Port.DataBits := 8;
  Port.StopBits := USB_STOP_1;
  Port.Parity := USB_PARITY_NONE;

  { Default endpoints (most adapters use these) }
  Port.EpIn  := $81;
  Port.EpOut := $02;
  if Port.Chip = uscFTDI then
    Port.EpOut := $02
  else if Port.Chip = uscCH340 then
    Port.EpOut := $02
  else if Port.Chip = uscCP210X then
    Port.EpOut := $01;

  if not LibUSBLoaded then
    if not LibUSBLoad then begin
      Result := -1;
      Exit;
    end;

  Result := libusb_init(@Port.Ctx);
  if Result <> 0 then Exit;

  Port.Dev := libusb_open_device_with_vid_pid(Port.Ctx, VID, PID);
  if Port.Dev = nil then begin
    libusb_exit(Port.Ctx);
    Port.Ctx := nil;
    Result := LIBUSB_ERROR_NOT_FOUND;
    Exit;
  end;

  if Assigned(libusb_set_auto_detach_kernel_driver) then
    libusb_set_auto_detach_kernel_driver(Port.Dev, 1);

  Result := libusb_claim_interface(Port.Dev, 0);
  if Result <> 0 then begin
    libusb_close(Port.Dev);
    libusb_exit(Port.Ctx);
    Port.Dev := nil;
    Port.Ctx := nil;
    Exit;
  end;

  Port.Connected := True;

  { Initialize chip with default 9600 8N1 }
  USBSerialSetBaud(Port, 9600);
  Result := 0;
end;

procedure USBSerialClose(var Port: TUSBSerial);
begin
  if Port.Connected then begin
    libusb_release_interface(Port.Dev, 0);
    libusb_close(Port.Dev);
  end;
  if Port.Ctx <> nil then
    libusb_exit(Port.Ctx);
  FillChar(Port, SizeOf(Port), 0);
end;

{ --- Public: Configuration --- }

function USBSerialSetBaud(var Port: TUSBSerial; Baud: LongWord): Integer;
begin
  if not Port.Connected then begin
    Result := -1;
    Exit;
  end;

  case Port.Chip of
    uscFTDI:   Result := FTDISetBaud(Port, Baud);
    uscCH340:  Result := CH340SetBaud(Port, Baud);
    uscCP210X: Result := CP210XSetBaud(Port, Baud);
  else
    { PL2303 and unknown: try CP210X-style }
    Result := CP210XSetBaud(Port, Baud);
  end;

  if Result >= 0 then
    Port.BaudRate := Baud;
end;

function USBSerialSetLine(var Port: TUSBSerial;
  DataBits, StopBits, Parity: Byte): Integer;
var
  LineVal: Word;
begin
  if not Port.Connected then begin
    Result := -1;
    Exit;
  end;

  Port.DataBits := DataBits;
  Port.StopBits := StopBits;
  Port.Parity   := Parity;

  case Port.Chip of
    uscFTDI: begin
      LineVal := DataBits;
      if StopBits = USB_STOP_2 then
        LineVal := LineVal or $1000
      else if StopBits = USB_STOP_15 then
        LineVal := LineVal or $0800;
      case Parity of
        USB_PARITY_ODD:  LineVal := LineVal or $0100;
        USB_PARITY_EVEN: LineVal := LineVal or $0200;
        USB_PARITY_MARK: LineVal := LineVal or $0300;
        USB_PARITY_SPACE: LineVal := LineVal or $0400;
      end;
      Result := libusb_control_transfer(Port.Dev,
        LIBUSB_REQUEST_TYPE_VENDOR or LIBUSB_ENDPOINT_OUT,
        FTDI_SIO_SET_DATA, LineVal, 0, nil, 0, USBSER_TIMEOUT);
    end;
  else
    Result := 0;  { other chips: line params set via baud call }
  end;
end;

function USBSerialSetFlow(var Port: TUSBSerial; Flow: Byte): Integer;
var
  FlowVal: Word;
begin
  if not Port.Connected then begin
    Result := -1;
    Exit;
  end;

  Port.FlowCtrl := Flow;

  case Port.Chip of
    uscFTDI: begin
      case Flow of
        USB_FLOW_RTSCTS:  FlowVal := $0100;
        USB_FLOW_XONXOFF: FlowVal := $0400;
      else
        FlowVal := 0;
      end;
      Result := libusb_control_transfer(Port.Dev,
        LIBUSB_REQUEST_TYPE_VENDOR or LIBUSB_ENDPOINT_OUT,
        FTDI_SIO_SET_FLOW_CTRL, 0, FlowVal, nil, 0, USBSER_TIMEOUT);
    end;
  else
    Result := 0;
  end;
end;

function USBSerialSetDTR(var Port: TUSBSerial; Active: Boolean): Integer;
var
  Val: Word;
begin
  if not Port.Connected then begin
    Result := -1;
    Exit;
  end;

  case Port.Chip of
    uscFTDI: begin
      if Active then Val := FTDI_SIO_SET_DTR_HIGH
      else Val := FTDI_SIO_SET_DTR_LOW;
      Result := libusb_control_transfer(Port.Dev,
        LIBUSB_REQUEST_TYPE_VENDOR or LIBUSB_ENDPOINT_OUT,
        FTDI_SIO_SET_MODEM_CTRL, Val, 0, nil, 0, USBSER_TIMEOUT);
    end;
  else
    Result := 0;
  end;
end;

function USBSerialSetRTS(var Port: TUSBSerial; Active: Boolean): Integer;
var
  Val: Word;
begin
  if not Port.Connected then begin
    Result := -1;
    Exit;
  end;

  case Port.Chip of
    uscFTDI: begin
      if Active then Val := FTDI_SIO_SET_RTS_HIGH
      else Val := FTDI_SIO_SET_RTS_LOW;
      Result := libusb_control_transfer(Port.Dev,
        LIBUSB_REQUEST_TYPE_VENDOR or LIBUSB_ENDPOINT_OUT,
        FTDI_SIO_SET_MODEM_CTRL, Val, 0, nil, 0, USBSER_TIMEOUT);
    end;
  else
    Result := 0;
  end;
end;

{ --- Public: I/O --- }

function USBSerialWrite(var Port: TUSBSerial;
  const Buf; Len: Integer): Integer;
var
  Transferred: Integer;
begin
  if not Port.Connected then begin
    Result := -1;
    Exit;
  end;
  Result := libusb_bulk_transfer(Port.Dev, Port.EpOut,
    @Buf, Len, @Transferred, USBSER_TIMEOUT);
  if Result = 0 then
    Result := Transferred;
end;

function USBSerialRead(var Port: TUSBSerial;
  var Buf; Len: Integer): Integer;
var
  Transferred: Integer;
  TmpBuf: array[0..4095] of Byte;
  ReadLen, DataLen: Integer;
begin
  if not Port.Connected then begin
    Result := -1;
    Exit;
  end;

  { FTDI prepends 2 status bytes per 64-byte packet }
  if Port.Chip = uscFTDI then begin
    if Len > 4094 then ReadLen := 4094
    else ReadLen := Len + 2;
    Result := libusb_bulk_transfer(Port.Dev, Port.EpIn,
      @TmpBuf[0], ReadLen, @Transferred, USBSER_TIMEOUT);
    if Result = 0 then begin
      if Transferred > 2 then begin
        DataLen := Transferred - 2;
        if DataLen > Len then DataLen := Len;
        Move(TmpBuf[2], Buf, DataLen);
        Result := DataLen;
      end else
        Result := 0;
    end;
  end else begin
    Result := libusb_bulk_transfer(Port.Dev, Port.EpIn,
      @Buf, Len, @Transferred, USBSER_TIMEOUT);
    if Result = 0 then
      Result := Transferred;
  end;
end;

function USBSerialWriteStr(var Port: TUSBSerial;
  const S: String): Integer;
begin
  if Length(S) > 0 then
    Result := USBSerialWrite(Port, S[1], Length(S))
  else
    Result := 0;
end;

function USBSerialReadStr(var Port: TUSBSerial;
  var S: String; MaxLen: Integer): Integer;
var
  Buf: array of Byte;
begin
  SetLength(Buf, MaxLen);
  Result := USBSerialRead(Port, Buf[0], MaxLen);
  if Result > 0 then begin
    SetLength(S, Result);
    Move(Buf[0], S[1], Result);
  end else
    S := '';
end;

end.
