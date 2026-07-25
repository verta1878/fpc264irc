{$MODE OBJFPC}
unit mslan;
{ Microsoft LAN Manager / Windows for Workgroups network interface.
  DOS network drive mapping via INT 21h redirector calls.

  Copyright (c) 2024 FPC264IRC Project — GPLv3

  Works with:
    - MS LAN Manager 2.x client (LANMAN.DOS)
    - Windows for Workgroups 3.11 DOS client
    - MS Client 3.0 for DOS
    - Any MSNET-compatible redirector

  The redirector TSR hooks INT 21h and intercepts file operations
  on network paths (\\SERVER\SHARE). These functions manage the
  network connections and drives.
}

interface

uses Dos;

const
  { INT 21h network functions }
  NET_ASSIGN_DRIVE    = $5F03;  { Map network drive }
  NET_CANCEL_DRIVE    = $5F04;  { Unmap network drive }
  NET_GET_ASSIGN      = $5F02;  { Get drive assignment }
  NET_GET_MACHINE     = $5E00;  { Get machine name }
  NET_SET_MACHINE     = $5E01;  { Set machine name }
  NET_GET_PRINTER     = $5E02;  { Get printer setup }
  NET_SET_PRINTER     = $5E03;  { Set printer setup }

  { Device types }
  NET_DEV_DISK        = $03;    { Disk drive }
  NET_DEV_PRINTER     = $04;    { Printer }

  { Error codes }
  NET_ERR_NONE        = 0;
  NET_ERR_FUNC        = 1;     { Invalid function }
  NET_ERR_NOT_FOUND   = 3;     { Path not found }
  NET_ERR_ACCESS      = 5;     { Access denied }
  NET_ERR_BAD_NET     = 53;    { Network not found }
  NET_ERR_DUP_NAME    = 52;    { Duplicate name }
  NET_ERR_BAD_PASS    = 86;    { Invalid password }

type
  TNetPath  = String[128];   { \\SERVER\SHARE }
  TPassword = String[64];

var
  NetError: Word;

{ Redirector check }
function  NetInstalled: Boolean;

{ Machine name }
function  NetGetMachineName(var Name: String): Boolean;

{ Drive mapping }
function  NetMapDrive(Drive: Char; const NetPath: TNetPath;
            const Password: TPassword): Boolean;
function  NetUnmapDrive(Drive: Char): Boolean;
function  NetGetDriveMap(Drive: Char; var NetPath: TNetPath): Boolean;

{ Printer redirection }
function  NetMapPrinter(Port: String; const NetPath: TNetPath;
            const Password: TPassword): Boolean;
function  NetUnmapPrinter(const Port: String): Boolean;

implementation

var
  Regs: Registers;

function NetInstalled: Boolean;
{ Check if network redirector is loaded via INT 2Fh, AX=1100h }
begin
  Regs.AX := $1100;
  Intr($2F, Regs);
  NetInstalled := (Regs.AL = $FF);
end;

function NetGetMachineName(var Name: String): Boolean;
var
  Buf: array[0..15] of Char;
  I: Integer;
begin
  FillChar(Buf, SizeOf(Buf), 0);
  Regs.AX := $5E00;
  Regs.DS := Seg(Buf);
  Regs.DX := Ofs(Buf);
  MsDos(Regs);
  if (Regs.Flags and FCarry) = 0 then begin
    Name := '';
    for I := 0 to 14 do begin
      if Buf[I] = #0 then Break;
      Name := Name + Buf[I];
    end;
    NetError := 0;
    NetGetMachineName := True;
  end else begin
    NetError := Regs.AX;
    NetGetMachineName := False;
  end;
end;

function NetMapDrive(Drive: Char; const NetPath: TNetPath;
  const Password: TPassword): Boolean;
var
  LocalBuf: array[0..15] of Char;
  RemoteBuf: array[0..128] of Char;
  PassBuf: array[0..64] of Char;
  I: Integer;
begin
  { Build local device name: "D:" }
  LocalBuf[0] := UpCase(Drive);
  LocalBuf[1] := ':';
  LocalBuf[2] := #0;

  { Copy remote path }
  for I := 1 to Length(NetPath) do
    RemoteBuf[I-1] := NetPath[I];
  RemoteBuf[Length(NetPath)] := #0;

  { Copy password }
  for I := 1 to Length(Password) do
    PassBuf[I-1] := Password[I];
  PassBuf[Length(Password)] := #0;

  Regs.AX := NET_ASSIGN_DRIVE;
  Regs.BL := NET_DEV_DISK;
  Regs.DS := Seg(LocalBuf);
  Regs.SI := Ofs(LocalBuf);
  Regs.ES := Seg(RemoteBuf);
  Regs.DI := Ofs(RemoteBuf);
  MsDos(Regs);

  if (Regs.Flags and FCarry) = 0 then begin
    NetError := 0;
    NetMapDrive := True;
  end else begin
    NetError := Regs.AX;
    NetMapDrive := False;
  end;
end;

function NetUnmapDrive(Drive: Char): Boolean;
var
  LocalBuf: array[0..15] of Char;
begin
  LocalBuf[0] := UpCase(Drive);
  LocalBuf[1] := ':';
  LocalBuf[2] := #0;

  Regs.AX := NET_CANCEL_DRIVE;
  Regs.DS := Seg(LocalBuf);
  Regs.SI := Ofs(LocalBuf);
  MsDos(Regs);

  if (Regs.Flags and FCarry) = 0 then begin
    NetError := 0;
    NetUnmapDrive := True;
  end else begin
    NetError := Regs.AX;
    NetUnmapDrive := False;
  end;
end;

function NetGetDriveMap(Drive: Char; var NetPath: TNetPath): Boolean;
var
  LocalBuf: array[0..15] of Char;
  RemoteBuf: array[0..128] of Char;
  I: Integer;
begin
  LocalBuf[0] := UpCase(Drive);
  LocalBuf[1] := ':';
  LocalBuf[2] := #0;
  FillChar(RemoteBuf, SizeOf(RemoteBuf), 0);

  Regs.AX := NET_GET_ASSIGN;
  Regs.BX := Ord(UpCase(Drive)) - Ord('A');
  Regs.DS := Seg(LocalBuf);
  Regs.SI := Ofs(LocalBuf);
  Regs.ES := Seg(RemoteBuf);
  Regs.DI := Ofs(RemoteBuf);
  MsDos(Regs);

  if (Regs.Flags and FCarry) = 0 then begin
    NetPath := '';
    for I := 0 to 127 do begin
      if RemoteBuf[I] = #0 then Break;
      NetPath := NetPath + RemoteBuf[I];
    end;
    NetError := 0;
    NetGetDriveMap := True;
  end else begin
    NetError := Regs.AX;
    NetGetDriveMap := False;
  end;
end;

function NetMapPrinter(Port: String; const NetPath: TNetPath;
  const Password: TPassword): Boolean;
var
  LocalBuf: array[0..15] of Char;
  RemoteBuf: array[0..128] of Char;
  I: Integer;
begin
  for I := 1 to Length(Port) do
    LocalBuf[I-1] := Port[I];
  LocalBuf[Length(Port)] := #0;

  for I := 1 to Length(NetPath) do
    RemoteBuf[I-1] := NetPath[I];
  RemoteBuf[Length(NetPath)] := #0;

  Regs.AX := NET_ASSIGN_DRIVE;
  Regs.BL := NET_DEV_PRINTER;
  Regs.DS := Seg(LocalBuf);
  Regs.SI := Ofs(LocalBuf);
  Regs.ES := Seg(RemoteBuf);
  Regs.DI := Ofs(RemoteBuf);
  MsDos(Regs);

  if (Regs.Flags and FCarry) = 0 then begin
    NetError := 0;
    NetMapPrinter := True;
  end else begin
    NetError := Regs.AX;
    NetMapPrinter := False;
  end;
end;

function NetUnmapPrinter(const Port: String): Boolean;
var
  LocalBuf: array[0..15] of Char;
  I: Integer;
begin
  for I := 1 to Length(Port) do
    LocalBuf[I-1] := Port[I];
  LocalBuf[Length(Port)] := #0;

  Regs.AX := NET_CANCEL_DRIVE;
  Regs.DS := Seg(LocalBuf);
  Regs.SI := Ofs(LocalBuf);
  MsDos(Regs);

  if (Regs.Flags and FCarry) = 0 then begin
    NetError := 0;
    NetUnmapPrinter := True;
  end else begin
    NetError := Regs.AX;
    NetUnmapPrinter := False;
  end;
end;

end.
