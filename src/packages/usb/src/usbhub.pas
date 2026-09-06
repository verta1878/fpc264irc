{
  usbhub.pas — USB Hub Driver

  Handles USB hub enumeration, port power, device attach/detach.
  Works on all platforms via USBTrans transport abstraction:
    DOS:    direct hardware (xHCI/UHCI)
    Other:  libusb (kernel-managed)

  Reference: USB 2.0 Specification, Chapter 11 (Hub)
  Reference: USB 3.2 Specification, Chapter 10 (SuperSpeed Hub)
  GPLv3 — the crew 4free — sysop/0
}
unit USBHub;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, USBCore, USBTrans;

const
  { Hub class requests }
  HUB_REQ_GET_STATUS      = 0;
  HUB_REQ_CLEAR_FEATURE   = 1;
  HUB_REQ_SET_FEATURE      = 3;
  HUB_REQ_GET_DESCRIPTOR  = 6;

  { Hub class feature selectors }
  HUB_FEAT_PORT_CONNECTION   = 0;
  HUB_FEAT_PORT_ENABLE       = 1;
  HUB_FEAT_PORT_SUSPEND      = 2;
  HUB_FEAT_PORT_OVER_CURRENT = 3;
  HUB_FEAT_PORT_RESET        = 4;
  HUB_FEAT_PORT_POWER        = 8;
  HUB_FEAT_PORT_LOW_SPEED    = 9;
  HUB_FEAT_C_PORT_CONNECTION = 16;
  HUB_FEAT_C_PORT_ENABLE     = 17;
  HUB_FEAT_C_PORT_SUSPEND    = 18;
  HUB_FEAT_C_PORT_OVER_CURRENT = 19;
  HUB_FEAT_C_PORT_RESET      = 20;

  { Port status bits }
  HUB_PORT_CONNECTION  = $0001;
  HUB_PORT_ENABLE      = $0002;
  HUB_PORT_SUSPEND     = $0004;
  HUB_PORT_OVER_CURRENT = $0008;
  HUB_PORT_RESET       = $0010;
  HUB_PORT_POWER       = $0100;
  HUB_PORT_LOW_SPEED   = $0200;
  HUB_PORT_HIGH_SPEED  = $0400;

  { Port change bits (in high word of status) }
  HUB_C_PORT_CONNECTION  = $0001;
  HUB_C_PORT_ENABLE      = $0002;
  HUB_C_PORT_SUSPEND     = $0004;
  HUB_C_PORT_OVER_CURRENT = $0008;
  HUB_C_PORT_RESET       = $0010;

  USB_HUB_MAX_PORTS = 15;

type
  TUSBHubDescriptor = packed record
    bLength:         Byte;
    bDescriptorType: Byte;    { $29 = hub descriptor }
    bNbrPorts:       Byte;
    wHubCharacteristics: Word;
    bPwrOn2PwrGood:  Byte;    { time in 2ms units }
    bHubContrCurrent: Byte;
    DeviceRemovable: array[0..7] of Byte;
  end;

  TUSBHubPortStatus = packed record
    wPortStatus: Word;
    wPortChange: Word;
  end;

  TUSBHub = record
    Trans:        ^TUSBTransport;
    DevAddr:      Byte;           { hub's USB address }
    NumPorts:     Byte;
    PowerOnDelay: Word;           { ms }
    PortStatus:   array[1..USB_HUB_MAX_PORTS] of TUSBHubPortStatus;
    PortDevice:   array[1..USB_HUB_MAX_PORTS] of Byte; { addr of attached dev }
    IsRoot:       Boolean;
    Initialized:  Boolean;
  end;

{ --- Hub lifecycle --- }

function  USBHubInit(var Hub: TUSBHub; Trans: PUSBTransport;
            DevAddr: Byte): Integer;
procedure USBHubDone(var Hub: TUSBHub);

{ --- Port operations --- }

function  USBHubGetPortStatus(var Hub: TUSBHub; Port: Byte;
            var Status: TUSBHubPortStatus): Integer;
function  USBHubPortPowerOn(var Hub: TUSBHub; Port: Byte): Integer;
function  USBHubPortPowerOff(var Hub: TUSBHub; Port: Byte): Integer;
function  USBHubPortReset(var Hub: TUSBHub; Port: Byte): Integer;
function  USBHubPortEnable(var Hub: TUSBHub; Port: Byte): Integer;
function  USBHubPortDisable(var Hub: TUSBHub; Port: Byte): Integer;
function  USBHubClearPortChange(var Hub: TUSBHub; Port: Byte;
            Feature: Word): Integer;

{ --- Enumeration --- }

function  USBHubPollPorts(var Hub: TUSBHub): Integer;
function  USBHubPortConnected(var Hub: TUSBHub; Port: Byte): Boolean;
function  USBHubPortSpeed(var Hub: TUSBHub; Port: Byte): Byte;

{ --- Power management --- }

function  USBHubPowerAllPorts(var Hub: TUSBHub): Integer;

implementation

{ --- Internal: hub class requests --- }

function HubGetDescriptor(var Hub: TUSBHub;
  var Desc: TUSBHubDescriptor): Integer;
begin
  Result := USBTransControlMsg(Hub.Trans^, Hub.DevAddr,
    USB_RT_DEVICE_TO_HOST or USB_RT_CLASS or USB_RT_DEVICE,
    HUB_REQ_GET_DESCRIPTOR, $2900, 0,
    Desc, SizeOf(Desc), 1000);
end;

function HubSetPortFeature(var Hub: TUSBHub;
  Port: Byte; Feature: Word): Integer;
var
  Dummy: Byte;
begin
  Result := USBTransControlMsg(Hub.Trans^, Hub.DevAddr,
    USB_RT_HOST_TO_DEVICE or USB_RT_CLASS or USB_RT_OTHER,
    HUB_REQ_SET_FEATURE, Feature, Port,
    Dummy, 0, 1000);
end;

function HubClearPortFeature(var Hub: TUSBHub;
  Port: Byte; Feature: Word): Integer;
var
  Dummy: Byte;
begin
  Result := USBTransControlMsg(Hub.Trans^, Hub.DevAddr,
    USB_RT_HOST_TO_DEVICE or USB_RT_CLASS or USB_RT_OTHER,
    HUB_REQ_CLEAR_FEATURE, Feature, Port,
    Dummy, 0, 1000);
end;

{ --- Hub lifecycle --- }

function USBHubInit(var Hub: TUSBHub; Trans: PUSBTransport;
  DevAddr: Byte): Integer;
var
  Desc: TUSBHubDescriptor;
begin
  FillChar(Hub, SizeOf(Hub), 0);
  Hub.Trans := Trans;
  Hub.DevAddr := DevAddr;

  { Get hub descriptor }
  FillChar(Desc, SizeOf(Desc), 0);
  Result := HubGetDescriptor(Hub, Desc);
  if Result < 0 then Exit;

  Hub.NumPorts := Desc.bNbrPorts;
  if Hub.NumPorts > USB_HUB_MAX_PORTS then
    Hub.NumPorts := USB_HUB_MAX_PORTS;
  Hub.PowerOnDelay := Desc.bPwrOn2PwrGood * 2;  { convert to ms }
  Hub.Initialized := True;

  { Power on all ports }
  USBHubPowerAllPorts(Hub);
  Result := 0;
end;

procedure USBHubDone(var Hub: TUSBHub);
begin
  FillChar(Hub, SizeOf(Hub), 0);
end;

{ --- Port operations --- }

function USBHubGetPortStatus(var Hub: TUSBHub; Port: Byte;
  var Status: TUSBHubPortStatus): Integer;
begin
  if (Port < 1) or (Port > Hub.NumPorts) then begin
    Result := -1;
    Exit;
  end;
  Result := USBTransControlMsg(Hub.Trans^, Hub.DevAddr,
    USB_RT_DEVICE_TO_HOST or USB_RT_CLASS or USB_RT_OTHER,
    HUB_REQ_GET_STATUS, 0, Port,
    Status, SizeOf(Status), 1000);
  if Result >= 0 then
    Hub.PortStatus[Port] := Status;
end;

function USBHubPortPowerOn(var Hub: TUSBHub; Port: Byte): Integer;
begin
  Result := HubSetPortFeature(Hub, Port, HUB_FEAT_PORT_POWER);
end;

function USBHubPortPowerOff(var Hub: TUSBHub; Port: Byte): Integer;
begin
  Result := HubClearPortFeature(Hub, Port, HUB_FEAT_PORT_POWER);
end;

function USBHubPortReset(var Hub: TUSBHub; Port: Byte): Integer;
var
  Status: TUSBHubPortStatus;
  Timeout: Integer;
begin
  Result := HubSetPortFeature(Hub, Port, HUB_FEAT_PORT_RESET);
  if Result < 0 then Exit;

  { Wait for reset complete }
  Timeout := 500;
  repeat
    Dec(Timeout);
    if Timeout <= 0 then begin
      Result := -1;
      Exit;
    end;
    USBHubGetPortStatus(Hub, Port, Status);
  until (Status.wPortChange and HUB_C_PORT_RESET) <> 0;

  { Clear reset change }
  USBHubClearPortChange(Hub, Port, HUB_FEAT_C_PORT_RESET);
  Result := 0;
end;

function USBHubPortEnable(var Hub: TUSBHub; Port: Byte): Integer;
begin
  Result := HubSetPortFeature(Hub, Port, HUB_FEAT_PORT_ENABLE);
end;

function USBHubPortDisable(var Hub: TUSBHub; Port: Byte): Integer;
begin
  Result := HubClearPortFeature(Hub, Port, HUB_FEAT_PORT_ENABLE);
end;

function USBHubClearPortChange(var Hub: TUSBHub; Port: Byte;
  Feature: Word): Integer;
begin
  Result := HubClearPortFeature(Hub, Port, Feature);
end;

{ --- Enumeration --- }

function USBHubPollPorts(var Hub: TUSBHub): Integer;
var
  Port: Byte;
  Status: TUSBHubPortStatus;
  Changes: Integer;
begin
  Changes := 0;
  for Port := 1 to Hub.NumPorts do begin
    USBHubGetPortStatus(Hub, Port, Status);
    if (Status.wPortChange and HUB_C_PORT_CONNECTION) <> 0 then begin
      { Connection change detected }
      USBHubClearPortChange(Hub, Port, HUB_FEAT_C_PORT_CONNECTION);
      if (Status.wPortStatus and HUB_PORT_CONNECTION) <> 0 then begin
        { Device attached — reset port to enable it }
        USBHubPortReset(Hub, Port);
      end else begin
        { Device detached }
        Hub.PortDevice[Port] := 0;
      end;
      Inc(Changes);
    end;
  end;
  Result := Changes;
end;

function USBHubPortConnected(var Hub: TUSBHub; Port: Byte): Boolean;
begin
  if (Port < 1) or (Port > Hub.NumPorts) then
    Result := False
  else
    Result := (Hub.PortStatus[Port].wPortStatus and HUB_PORT_CONNECTION) <> 0;
end;

function USBHubPortSpeed(var Hub: TUSBHub; Port: Byte): Byte;
var
  S: Word;
begin
  if (Port < 1) or (Port > Hub.NumPorts) then begin
    Result := USB_SPEED_FULL;
    Exit;
  end;
  S := Hub.PortStatus[Port].wPortStatus;
  if (S and HUB_PORT_HIGH_SPEED) <> 0 then
    Result := USB_SPEED_HIGH
  else if (S and HUB_PORT_LOW_SPEED) <> 0 then
    Result := USB_SPEED_LOW
  else
    Result := USB_SPEED_FULL;
end;

{ --- Power management --- }

function USBHubPowerAllPorts(var Hub: TUSBHub): Integer;
var
  Port: Byte;
begin
  for Port := 1 to Hub.NumPorts do
    USBHubPortPowerOn(Hub, Port);
  { Wait for power good }
  { TODO: delay Hub.PowerOnDelay ms }
  Result := 0;
end;

end.
