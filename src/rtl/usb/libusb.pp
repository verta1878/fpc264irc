{
  libusb.pp — libusb-1.0 Pascal bindings (dynamic loading)
  Part of FPC 2.6.4irc r311 — USB support
  the crew 4free

  Cross-platform dynamic loading of libusb-1.0:
    Linux:    libusb-1.0.so.0
    Windows:  libusb-1.0.dll
    FreeBSD:  libusb.so
    macOS:    libusb-1.0.dylib
    OS/2:     usb10.dll        (Paul Smedley's libusb-1.0 port)
    DOS:      NOT SUPPORTED    (no USB stack; use ISA/serial)

  Usage:
    if LibUSBLoad then begin
      libusb_init(@ctx);
      ...
      libusb_exit(ctx);
    end;
    LibUSBUnload;
}
unit libusb;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, DynLibs;

{ --- Constants --- }

const
  LIBUSB_SUCCESS             =  0;
  LIBUSB_ERROR_IO            = -1;
  LIBUSB_ERROR_INVALID_PARAM = -2;
  LIBUSB_ERROR_ACCESS        = -3;
  LIBUSB_ERROR_NO_DEVICE     = -4;
  LIBUSB_ERROR_NOT_FOUND     = -5;
  LIBUSB_ERROR_BUSY          = -6;
  LIBUSB_ERROR_TIMEOUT       = -7;
  LIBUSB_ERROR_OVERFLOW      = -8;
  LIBUSB_ERROR_PIPE          = -9;
  LIBUSB_ERROR_INTERRUPTED   = -10;
  LIBUSB_ERROR_NO_MEM        = -11;
  LIBUSB_ERROR_NOT_SUPPORTED = -12;
  LIBUSB_ERROR_OTHER         = -99;

  LIBUSB_ENDPOINT_IN         = $80;
  LIBUSB_ENDPOINT_OUT        = $00;

  LIBUSB_REQUEST_TYPE_VENDOR = $40;

  LIBUSB_TRANSFER_TYPE_BULK  = 2;

  LIBUSB_DT_DEVICE           = 1;
  LIBUSB_DT_CONFIG           = 2;
  LIBUSB_DT_INTERFACE        = 4;
  LIBUSB_DT_ENDPOINT         = 5;

{ --- Types --- }

type
  Plibusb_context = Pointer;
  PPlibusb_context = ^Plibusb_context;
  Plibusb_device = Pointer;
  PPlibusb_device = ^Plibusb_device;
  Plibusb_device_handle = Pointer;
  PPlibusb_device_handle = ^Plibusb_device_handle;

  libusb_device_descriptor = packed record
    bLength:            Byte;
    bDescriptorType:    Byte;
    bcdUSB:             Word;
    bDeviceClass:       Byte;
    bDeviceSubClass:    Byte;
    bDeviceProtocol:    Byte;
    bMaxPacketSize0:    Byte;
    idVendor:           Word;
    idProduct:          Word;
    bcdDevice:          Word;
    iManufacturer:      Byte;
    iProduct:           Byte;
    iSerialNumber:      Byte;
    bNumConfigurations: Byte;
  end;
  Plibusb_device_descriptor = ^libusb_device_descriptor;

  libusb_endpoint_descriptor = packed record
    bLength:          Byte;
    bDescriptorType:  Byte;
    bEndpointAddress: Byte;
    bmAttributes:     Byte;
    wMaxPacketSize:   Word;
    bInterval:        Byte;
    bRefresh:         Byte;
    bSynchAddress:    Byte;
    extra:            PByte;
    extra_length:     Integer;
  end;
  Plibusb_endpoint_descriptor = ^libusb_endpoint_descriptor;

  libusb_interface_descriptor = packed record
    bLength:            Byte;
    bDescriptorType:    Byte;
    bInterfaceNumber:   Byte;
    bAlternateSetting:  Byte;
    bNumEndpoints:      Byte;
    bInterfaceClass:    Byte;
    bInterfaceSubClass: Byte;
    bInterfaceProtocol: Byte;
    iInterface:         Byte;
    endpoint:           Plibusb_endpoint_descriptor;
    extra:              PByte;
    extra_length:       Integer;
  end;
  Plibusb_interface_descriptor = ^libusb_interface_descriptor;

{ --- Function pointers --- }

var
  libusb_init:                    function(ctx: PPlibusb_context): Integer; cdecl;
  libusb_exit:                    procedure(ctx: Plibusb_context); cdecl;
  libusb_get_device_list:         function(ctx: Plibusb_context; list: Pointer): Integer; cdecl;
  libusb_free_device_list:        procedure(list: Pointer; unref: Integer); cdecl;
  libusb_get_device_descriptor:   function(dev: Plibusb_device; desc: Plibusb_device_descriptor): Integer; cdecl;
  libusb_open:                    function(dev: Plibusb_device; handle: PPlibusb_device_handle): Integer; cdecl;
  libusb_close:                   procedure(handle: Plibusb_device_handle); cdecl;
  libusb_open_device_with_vid_pid: function(ctx: Plibusb_context; vid, pid: Word): Plibusb_device_handle; cdecl;
  libusb_set_configuration:       function(handle: Plibusb_device_handle; config: Integer): Integer; cdecl;
  libusb_claim_interface:         function(handle: Plibusb_device_handle; iface: Integer): Integer; cdecl;
  libusb_release_interface:       function(handle: Plibusb_device_handle; iface: Integer): Integer; cdecl;
  libusb_bulk_transfer:           function(handle: Plibusb_device_handle; endpoint: Byte; data: PByte; length: Integer; transferred: PInteger; timeout: Cardinal): Integer; cdecl;
  libusb_control_transfer:        function(handle: Plibusb_device_handle; bmRequestType, bRequest: Byte; wValue, wIndex: Word; data: PByte; wLength: Word; timeout: Cardinal): Integer; cdecl;
  libusb_set_auto_detach_kernel_driver: function(handle: Plibusb_device_handle; enable: Integer): Integer; cdecl;
  libusb_kernel_driver_active:    function(handle: Plibusb_device_handle; iface: Integer): Integer; cdecl;
  libusb_detach_kernel_driver:    function(handle: Plibusb_device_handle; iface: Integer): Integer; cdecl;
  libusb_strerror:                function(errcode: Integer): PChar; cdecl;

{ --- Public API --- }

function  LibUSBLoad: Boolean;
procedure LibUSBUnload;
function  LibUSBLoaded: Boolean;

implementation

var
  hLib: TLibHandle = NilHandle;

function GetLibName: string;
begin
  {$IFDEF LINUX}
  Result := 'libusb-1.0.so.0';
  {$ELSE}
  {$IFDEF FREEBSD}
  Result := 'libusb.so';
  {$ELSE}
  {$IFDEF DARWIN}
  Result := 'libusb-1.0.dylib';
  {$ELSE}
  {$IFDEF WINDOWS}
  Result := 'libusb-1.0.dll';
  {$ELSE}
  {$IFDEF OS2}
  Result := 'usb10.dll';   { libusb-1.0 OS/2 port (Paul Smedley) }
  {$ELSE}
  Result := 'libusb-1.0.so';  { generic Unix fallback }
  {$ENDIF}
  {$ENDIF}
  {$ENDIF}
  {$ENDIF}
  {$ENDIF}
end;

function LibUSBLoaded: Boolean;
begin
  Result := hLib <> 0;
end;

function LibUSBLoad: Boolean;

  function GetProc(const Name: string): Pointer;
  begin
    Result := GetProcedureAddress(hLib, PChar(Name));
  end;

begin
  Result := False;
  if hLib <> 0 then begin
    Result := True;
    Exit;
  end;

  hLib := LoadLibrary(PChar(GetLibName));
  if hLib = 0 then
    Exit;

  Pointer(libusb_init)                    := GetProc('libusb_init');
  Pointer(libusb_exit)                    := GetProc('libusb_exit');
  Pointer(libusb_get_device_list)         := GetProc('libusb_get_device_list');
  Pointer(libusb_free_device_list)        := GetProc('libusb_free_device_list');
  Pointer(libusb_get_device_descriptor)   := GetProc('libusb_get_device_descriptor');
  Pointer(libusb_open)                    := GetProc('libusb_open');
  Pointer(libusb_close)                   := GetProc('libusb_close');
  Pointer(libusb_open_device_with_vid_pid) := GetProc('libusb_open_device_with_vid_pid');
  Pointer(libusb_set_configuration)       := GetProc('libusb_set_configuration');
  Pointer(libusb_claim_interface)         := GetProc('libusb_claim_interface');
  Pointer(libusb_release_interface)       := GetProc('libusb_release_interface');
  Pointer(libusb_bulk_transfer)           := GetProc('libusb_bulk_transfer');
  Pointer(libusb_control_transfer)        := GetProc('libusb_control_transfer');
  Pointer(libusb_set_auto_detach_kernel_driver) := GetProc('libusb_set_auto_detach_kernel_driver');
  Pointer(libusb_kernel_driver_active)    := GetProc('libusb_kernel_driver_active');
  Pointer(libusb_detach_kernel_driver)    := GetProc('libusb_detach_kernel_driver');
  Pointer(libusb_strerror)                := GetProc('libusb_strerror');

  if not Assigned(libusb_init) or
     not Assigned(libusb_exit) or
     not Assigned(libusb_open_device_with_vid_pid) or
     not Assigned(libusb_bulk_transfer) then begin
    LibUSBUnload;
    Exit;
  end;

  Result := True;
end;

procedure LibUSBUnload;
begin
  if hLib <> 0 then begin
    UnloadLibrary(hLib);
    hLib := 0;
  end;
  libusb_init := nil;
  libusb_exit := nil;
  libusb_get_device_list := nil;
  libusb_free_device_list := nil;
  libusb_get_device_descriptor := nil;
  libusb_open := nil;
  libusb_close := nil;
  libusb_open_device_with_vid_pid := nil;
  libusb_set_configuration := nil;
  libusb_claim_interface := nil;
  libusb_release_interface := nil;
  libusb_bulk_transfer := nil;
  libusb_control_transfer := nil;
  libusb_set_auto_detach_kernel_driver := nil;
  libusb_kernel_driver_active := nil;
  libusb_detach_kernel_driver := nil;
  libusb_strerror := nil;
end;

finalization
  LibUSBUnload;

end.
