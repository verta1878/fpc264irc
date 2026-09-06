# FPC 2.6.4irc USB Stack

9 units, 3,334 lines. Hardware drivers + user-space bindings.

## Architecture

```
Application
    │
    ├── usbserial.pp    FTDI/CH340/CP2102/PL2303 serial adapters
    ├── libusb.pp       libusb-1.0 bindings (Linux/Win32/FreeBSD/Darwin/OS2)
    │
    ├── usbmsd.pas      Mass storage (SCSI/BOT)
    ├── usbhub.pas      Hub driver
    ├── usbhid.pas      HID (keyboards, mice, gamepads)
    │
    ├── usbtrans.pas    Transport abstraction (DOS ↔ libusb)
    ├── usbxhci.pas     xHCI controller (USB 3.0/2.0/1.1, DOS/DPMI only)
    │
    ├── usbpci.pas      PCI bus enumeration
    └── usbcore.pas     Core types, descriptors, enumeration
```

## Units

### usbcore.pas (314 lines)
Core USB types and descriptor parsing.

- `TUSBDeviceDescriptor`, `TUSBConfigDescriptor`, `TUSBEndpointDescriptor`
- `USBBCDVersionStr(bcdUSB)` — format BCD version (e.g. `'2.00'`)
- `USBClassStr(bClass)` — human-readable class name
- Constants: `USB_DIR_IN`, `USB_DIR_OUT`, `USB_TYPE_STANDARD/CLASS/VENDOR`

### usbpci.pas (389 lines)
PCI bus scanning for USB host controllers.

- `TPCIDevice` — BDF address, VID/PID, class/subclass, BAR
- `PCIScanBus(Bus)` — enumerate all PCI devices
- `PCIFindClass(BaseClass, SubClass)` — find by class code
- `PCIReadConfig32/16/8`, `PCIWriteConfig32/16/8`
- Constants: `PCI_CLASS_SERIAL_BUS`, `PCI_SUBCLASS_USB`

### usbhid.pas (274 lines)
HID device driver.

- `THIDDevice` — endpoint, report descriptor, protocol
- `HIDInit(var Dev; Intf)` — initialize HID device
- `HIDGetReport(var Dev; ReportType, ReportID, var Buf, Len)`
- `HIDSetReport(var Dev; ReportType, ReportID, var Buf, Len)`
- `HIDSetProtocol(var Dev; Protocol)` — boot/report protocol
- `HIDSetIdle(var Dev; Duration, ReportID)`

### usbtrans.pas (403 lines)
Transport abstraction layer.

- `TUSBTransport` — abstract transport handle
- `USBTransferControl(var T; RequestType, Request, Value, Index, var Buf, Len)`
- `USBTransferBulk(var T; Endpoint, var Buf, Len, var Transferred)`
- `USBTransferInterrupt(var T; Endpoint, var Buf, Len, var Transferred)`
- Platform backends: DOS direct I/O, libusb wrapper

### usbxhci.pas (448 lines)
xHCI (USB 3.0) host controller driver. DOS/DPMI only — other platforms get stubs returning `-1`/`False`.

- `TXHCIController` — MMIO base, capability/operational registers, port count
- `XHCIDetect(var HC; Bus, Dev, Func)` — detect xHCI at PCI BDF
- `XHCIInit/Done/Reset/Start/Stop` — controller lifecycle
- `XHCIPortCount/PortConnected/PortSpeed/PortReset/PortPowerOn`
- `XHCIReadCap/ReadOp/WriteOp/ReadPort/WritePort` — register access

### usbhub.pas (316 lines)
USB hub driver.

- `TUSBHub` — port count, power mode, per-port status
- `HubInit(var Hub; var Dev)` — initialize hub device
- `HubGetPortStatus(var Hub; Port; var Status)`
- `HubSetPortFeature/ClearPortFeature(var Hub; Port; Feature)`
- `HubResetPort(var Hub; Port)` — reset and wait for enable

### usbmsd.pas (422 lines)
Mass storage device driver (SCSI/BOT protocol).

- `TUSBMassStorage` — vendor, product, revision, block size, block count
- `MSDInit(var MSD; var Dev)` — initialize, send INQUIRY + READ CAPACITY
- `MSDRead(var MSD; LBA, Count, var Buf)` — read sectors
- `MSDWrite(var MSD; LBA, Count, var Buf)` — write sectors
- `MSDTestUnitReady(var MSD)` — check media presence
- `MSDRequestSense(var MSD; var Sense)` — get error details

### libusb.pp (256 lines)
Bindings for libusb-1.0. Platforms: Linux, Win32, FreeBSD, Darwin, OS/2, Unix.

- `libusb_init/exit` — library lifecycle
- `libusb_get_device_list/free_device_list`
- `libusb_open/close/claim_interface/release_interface`
- `libusb_control_transfer/bulk_transfer/interrupt_transfer`
- `libusb_get_device_descriptor`
- Dynamic loading via `{$LINKLIB usb-1.0}`

### usbserial.pp (512 lines)
USB-to-serial adapter driver. Supports FTDI, CH340, CP2102, PL2303.

- `TUSBSerialDevice` — chip type, baud rate, data/stop/parity
- `USBSerialOpen(VID, PID; var Dev)` — open by VID/PID
- `USBSerialClose(var Dev)`
- `USBSerialSetBaud(var Dev; Baud)` — 300..3000000
- `USBSerialSetLineParams(var Dev; DataBits, StopBits, Parity)`
- `USBSerialRead(var Dev; var Buf; Len; var BytesRead)`
- `USBSerialWrite(var Dev; var Buf; Len; var BytesWritten)`
- `USBSerialSetDTR/RTS(var Dev; State)`
- Auto-detects chip type from VID/PID

## Example

```pascal
uses USBSerial;

var
  Dev: TUSBSerialDevice;
  Buf: array[0..255] of Byte;
  N: Integer;
begin
  if USBSerialOpen($0403, $6001, Dev) = 0 then  { FTDI FT232 }
  begin
    USBSerialSetBaud(Dev, 115200);
    USBSerialSetLineParams(Dev, 8, 1, 0);  { 8N1 }
    USBSerialWrite(Dev, PChar('AT'#13)^, 3, N);
    USBSerialRead(Dev, Buf, SizeOf(Buf), N);
    USBSerialClose(Dev);
  end;
end.
```
