{$MODE OBJFPC}
unit ipx;
{ IPX/SPX network interface for i8086 real-mode DOS.
  Talks to Novell IPX via INT 7Ah.

  Copyright (c) 2024 FPC264IRC Project — GPLv3

  IPX is loaded by IPX.COM or IPXODI.COM before your program.
  All calls go through INT 7Ah with BX = function number.
}

interface

uses Dos;

const
  { IPX functions (BX register) }
  IPX_OPEN_SOCKET     = $0000;
  IPX_CLOSE_SOCKET    = $0001;
  IPX_GET_LOCAL_TGT   = $0002;
  IPX_SEND_PACKET     = $0003;
  IPX_LISTEN_PACKET   = $0004;
  IPX_SCHEDULE_EVENT  = $0005;
  IPX_CANCEL_EVENT    = $0006;
  IPX_GET_INTERVAL    = $0008;
  IPX_GET_ADDR        = $0009;
  IPX_RELINQUISH      = $000A;
  IPX_DISCONNECT      = $000B;

  { SPX functions }
  SPX_INSTALL_CHECK   = $0010;
  SPX_ESTABLISH_CONN  = $0011;
  SPX_LISTEN_CONN     = $0012;
  SPX_TERMINATE_CONN  = $0013;
  SPX_ABORT_CONN      = $0014;
  SPX_GET_STATUS      = $0015;
  SPX_SEND_PACKET     = $0016;
  SPX_LISTEN_PACKET   = $0017;

  { Socket types }
  IPX_SHORT_LIVED = $00;
  IPX_LONG_LIVED  = $FF;

type
  TIPXAddress = packed record
    Network : array[0..3] of Byte;   { 4-byte network number }
    Node    : array[0..5] of Byte;   { 6-byte node (MAC) address }
    Socket  : Word;                   { socket number }
  end;

  PIPXHeader = ^TIPXHeader;
  TIPXHeader = packed record
    Checksum    : Word;
    Length      : Word;
    TransCtrl   : Byte;
    PacketType  : Byte;
    Dest        : TIPXAddress;
    Source      : TIPXAddress;
  end;

  PECB = ^TECB;
  TECB = packed record
    Link        : FarPointer;        { link to next ECB }
    ESRAddress  : FarPointer;        { Event Service Routine }
    InUse       : Byte;              { 0=available, FFh=sending, FEh=listening }
    CompCode    : Byte;              { completion code }
    Socket      : Word;              { socket number }
    IPXWork     : array[0..3] of Byte;
    DrvWork     : array[0..11] of Byte;
    ImmAddr     : array[0..5] of Byte; { immediate address }
    FragCount   : Word;              { fragment count }
    FragAddr    : FarPointer;        { first fragment address }
    FragSize    : Word;              { first fragment size }
  end;

var
  IPXInstalled : Boolean;
  IPXError     : Byte;

function  IPXInit: Boolean;
function  IPXOpenSocket(var Socket: Word; SocketType: Byte): Boolean;
procedure IPXCloseSocket(Socket: Word);
procedure IPXGetAddress(var Addr: TIPXAddress);
function  IPXSendPacket(var ECB: TECB): Boolean;
function  IPXListenPacket(var ECB: TECB): Boolean;
procedure IPXRelinquish;

{ SPX }
function  SPXInstalled: Boolean;
function  SPXEstablishConn(var ECB: TECB; RetryCount: Byte;
            WatchDog: Byte; var ConnID: Word): Boolean;
procedure SPXTerminateConn(ConnID: Word; var ECB: TECB);

implementation

var
  Regs: Registers;

function IPXInit: Boolean;
begin
  { Check if IPX is loaded: INT 2Fh, AX=7A00h }
  Regs.AX := $7A00;
  Intr($2F, Regs);
  IPXInstalled := (Regs.AL = $FF);
  IPXInit := IPXInstalled;
end;

function IPXOpenSocket(var Socket: Word; SocketType: Byte): Boolean;
begin
  Regs.BX := IPX_OPEN_SOCKET;
  Regs.AL := SocketType;
  Regs.DX := Socket;
  Intr($7A, Regs);
  IPXError := Regs.AL;
  Socket := Regs.DX;
  IPXOpenSocket := (IPXError = 0);
end;

procedure IPXCloseSocket(Socket: Word);
begin
  Regs.BX := IPX_CLOSE_SOCKET;
  Regs.DX := Socket;
  Intr($7A, Regs);
end;

procedure IPXGetAddress(var Addr: TIPXAddress);
begin
  Regs.BX := IPX_GET_ADDR;
  Regs.ES := Seg(Addr);
  Regs.SI := Ofs(Addr);
  Intr($7A, Regs);
end;

function IPXSendPacket(var ECB: TECB): Boolean;
begin
  Regs.BX := IPX_SEND_PACKET;
  Regs.ES := Seg(ECB);
  Regs.SI := Ofs(ECB);
  Intr($7A, Regs);
  IPXSendPacket := True;
end;

function IPXListenPacket(var ECB: TECB): Boolean;
begin
  Regs.BX := IPX_LISTEN_PACKET;
  Regs.ES := Seg(ECB);
  Regs.SI := Ofs(ECB);
  Intr($7A, Regs);
  IPXListenPacket := (Regs.AL = 0);
end;

procedure IPXRelinquish;
begin
  Regs.BX := IPX_RELINQUISH;
  Intr($7A, Regs);
end;

function SPXInstalled: Boolean;
begin
  Regs.BX := SPX_INSTALL_CHECK;
  Regs.AL := 0;
  Intr($7A, Regs);
  SPXInstalled := (Regs.AL = $FF);
end;

function SPXEstablishConn(var ECB: TECB; RetryCount: Byte;
  WatchDog: Byte; var ConnID: Word): Boolean;
begin
  Regs.BX := SPX_ESTABLISH_CONN;
  Regs.AL := RetryCount;
  Regs.AH := WatchDog;
  Regs.ES := Seg(ECB);
  Regs.SI := Ofs(ECB);
  Intr($7A, Regs);
  ConnID := Regs.DX;
  IPXError := Regs.AL;
  SPXEstablishConn := (IPXError = 0);
end;

procedure SPXTerminateConn(ConnID: Word; var ECB: TECB);
begin
  Regs.BX := SPX_TERMINATE_CONN;
  Regs.DX := ConnID;
  Regs.ES := Seg(ECB);
  Regs.SI := Ofs(ECB);
  Intr($7A, Regs);
end;

end.
