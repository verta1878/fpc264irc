{$MODE OBJFPC}
unit tcpip;
{ TCP/IP protocol stack for i8086 real-mode DOS.
  Sits on top of pktdrv unit (Crynwr packet driver).

  Copyright (c) 2024 FPC264IRC Project — GPLv3
  Reference: WatTCP v1.02 (sdk/desqview/potpouri/WATTCP.ZIP)

  Provides:
    ARP    — address resolution (IP → MAC)
    IP     — send/receive IP datagrams
    UDP    — connectionless datagrams
    TCP    — connection-oriented streams
    DNS    — hostname resolution

  Usage:
    TCPInit('192.168.1.100', '255.255.255.0', '192.168.1.1');
    sock := TCPOpen('bbs.example.com', 23);  { telnet }
    TCPWrite(sock, @data, len);
    TCPRead(sock, @buf, bufsize, got);
    TCPClose(sock);
    TCPShutdown;
}

interface

uses Dos, pktdrv;

const
  MAX_SOCKETS    = 8;
  MAX_ARP_CACHE  = 16;
  TCP_MSS        = 536;    { Maximum segment size }
  TCP_WINDOW     = 2048;   { Receive window }
  IP_TTL         = 64;

  { IP protocols }
  IPPROTO_ICMP = 1;
  IPPROTO_TCP  = 6;
  IPPROTO_UDP  = 17;

  { TCP states }
  TCP_CLOSED      = 0;
  TCP_LISTEN      = 1;
  TCP_SYN_SENT    = 2;
  TCP_SYN_RECV    = 3;
  TCP_ESTABLISHED = 4;
  TCP_FIN_WAIT1   = 5;
  TCP_FIN_WAIT2   = 6;
  TCP_CLOSE_WAIT  = 7;
  TCP_CLOSING     = 8;
  TCP_LAST_ACK    = 9;
  TCP_TIME_WAIT   = 10;

  { TCP flags }
  TCP_FIN = $01;
  TCP_SYN = $02;
  TCP_RST = $04;
  TCP_PSH = $08;
  TCP_ACK = $10;
  TCP_URG = $20;

type
  TIPAddr = LongInt;  { 4 bytes, network byte order }

  PEtherHeader = ^TEtherHeader;
  TEtherHeader = packed record
    DestMAC  : TMACAddr;
    SrcMAC   : TMACAddr;
    EthType  : Word;    { network byte order }
  end;

  PIPHeader = ^TIPHeader;
  TIPHeader = packed record
    VerIHL   : Byte;    { version + IHL }
    TOS      : Byte;
    TotalLen : Word;
    Ident    : Word;
    FlagsFrag: Word;
    TTL      : Byte;
    Protocol : Byte;
    Checksum : Word;
    SrcAddr  : TIPAddr;
    DestAddr : TIPAddr;
  end;

  PTCPHeader = ^TTCPHeader;
  TTCPHeader = packed record
    SrcPort  : Word;
    DestPort : Word;
    SeqNum   : LongInt;
    AckNum   : LongInt;
    DataOfs  : Byte;    { upper 4 bits = offset in 32-bit words }
    Flags    : Byte;
    Window   : Word;
    Checksum : Word;
    Urgent   : Word;
  end;

  PUDPHeader = ^TUDPHeader;
  TUDPHeader = packed record
    SrcPort  : Word;
    DestPort : Word;
    Length   : Word;
    Checksum : Word;
  end;

  PARPPacket = ^TARPPacket;
  TARPPacket = packed record
    HardType : Word;
    ProtType : Word;
    HardSize : Byte;
    ProtSize : Byte;
    OpCode   : Word;
    SenderMAC: TMACAddr;
    SenderIP : TIPAddr;
    TargetMAC: TMACAddr;
    TargetIP : TIPAddr;
  end;

  TARPEntry = record
    IP      : TIPAddr;
    MAC     : TMACAddr;
    Valid   : Boolean;
    Age     : Word;
  end;

  TTCPSocket = record
    State    : Byte;
    LocalPort: Word;
    RemotePort: Word;
    RemoteIP : TIPAddr;
    SendSeq  : LongInt;   { next seq to send }
    SendAck  : LongInt;   { last ack received }
    RecvSeq  : LongInt;   { next seq expected }
    RecvBuf  : array[0..TCP_WINDOW-1] of Byte;
    RecvLen  : Word;
    InUse    : Boolean;
  end;

var
  LocalIP    : TIPAddr;
  SubnetMask : TIPAddr;
  GatewayIP  : TIPAddr;
  DNSIP      : TIPAddr;
  ARPCache   : array[0..MAX_ARP_CACHE-1] of TARPEntry;
  Sockets    : array[0..MAX_SOCKETS-1] of TTCPSocket;
  NextPort   : Word;
  IPIdent    : Word;

{ Byte order }
function HtoNS(W: Word): Word;
function NtoHS(W: Word): Word;
function HtoNL(L: LongInt): LongInt;
function NtoHL(L: LongInt): LongInt;

{ IP address helpers }
function StrToIP(const S: String): TIPAddr;
function IPToStr(IP: TIPAddr): String;

{ Core API }
function  TCPInit(const SelfIP, Mask, Gateway: String): Boolean;
procedure TCPShutdown;
procedure TCPTick;    { Must call periodically — processes packets }

{ TCP connections }
function  TCPOpen(RemoteIP: TIPAddr; RemotePort: Word): Integer;
procedure TCPClose(Sock: Integer);
function  TCPWrite(Sock: Integer; Data: Pointer; Len: Word): Word;
function  TCPRead(Sock: Integer; Buf: Pointer; BufSize: Word): Word;
function  TCPState(Sock: Integer): Byte;
function  TCPConnected(Sock: Integer): Boolean;

{ UDP }
function  UDPSend(DestIP: TIPAddr; SrcPort, DestPort: Word;
            Data: Pointer; Len: Word): Boolean;

{ ARP }
function  ARPResolve(IP: TIPAddr; var MAC: TMACAddr): Boolean;

{ Checksum }
function  IPChecksum(Data: Pointer; Len: Word): Word;

implementation

{ ---- Byte order ---- }

function HtoNS(W: Word): Word;
begin
  HtoNS := Swap(W);
end;

function NtoHS(W: Word): Word;
begin
  NtoHS := Swap(W);
end;

function HtoNL(L: LongInt): LongInt;
var B: array[0..3] of Byte absolute L;
    R: array[0..3] of Byte;
begin
  R[0] := B[3]; R[1] := B[2]; R[2] := B[1]; R[3] := B[0];
  Move(R, HtoNL, 4);
end;

function NtoHL(L: LongInt): LongInt;
begin
  NtoHL := HtoNL(L);
end;

{ ---- IP address helpers ---- }

function StrToIP(const S: String): TIPAddr;
var
  P, Start: Integer;
  Octet, I: Integer;
  B: array[0..3] of Byte;
  Num: String;
begin
  I := 0;
  Start := 1;
  for P := 1 to Length(S) + 1 do begin
    if (P > Length(S)) or (S[P] = '.') then begin
      Num := Copy(S, Start, P - Start);
      Val(Num, Octet, Start);
      if I < 4 then B[I] := Octet;
      Inc(I);
      Start := P + 1;
    end;
  end;
  Move(B, StrToIP, 4);
end;

function IPToStr(IP: TIPAddr): String;
var B: array[0..3] of Byte absolute IP;
    S: String;
    T: String;
begin
  Str(B[0], S);
  Str(B[1], T); S := S + '.' + T;
  Str(B[2], T); S := S + '.' + T;
  Str(B[3], T); S := S + '.' + T;
  IPToStr := S;
end;

{ ---- Checksum ---- }

function IPChecksum(Data: Pointer; Len: Word): Word;
var
  Sum: LongInt;
  W: ^Word;
  I: Word;
begin
  Sum := 0;
  W := Data;
  I := Len;
  while I > 1 do begin
    Sum := Sum + W^;
    Inc(W);
    Dec(I, 2);
  end;
  if I = 1 then
    Sum := Sum + PByte(W)^;
  Sum := (Sum shr 16) + (Sum and $FFFF);
  Sum := Sum + (Sum shr 16);
  IPChecksum := Word(not Sum);
end;

{ ---- Init / Shutdown ---- }

function TCPInit(const SelfIP, Mask, Gateway: String): Boolean;
var I: Integer;
begin
  LocalIP := StrToIP(SelfIP);
  SubnetMask := StrToIP(Mask);
  GatewayIP := StrToIP(Gateway);
  DNSIP := 0;
  NextPort := 1024;
  IPIdent := 1;

  for I := 0 to MAX_ARP_CACHE - 1 do
    ARPCache[I].Valid := False;
  for I := 0 to MAX_SOCKETS - 1 do begin
    Sockets[I].InUse := False;
    Sockets[I].State := TCP_CLOSED;
  end;

  if not PktInit then begin
    TCPInit := False;
    Exit;
  end;
  PktGetAddress(PktHandle, PktMAC);
  TCPInit := True;
end;

procedure TCPShutdown;
begin
  if PktHandle <> 0 then
    PktReleaseType(PktHandle);
end;

procedure TCPTick;
begin
  { Poll packet driver for incoming packets }
  { TODO: receive and dispatch to ARP/IP/TCP handlers }
end;

{ ---- ARP ---- }

function ARPResolve(IP: TIPAddr; var MAC: TMACAddr): Boolean;
var I: Integer;
begin
  { Check cache first }
  for I := 0 to MAX_ARP_CACHE - 1 do begin
    if ARPCache[I].Valid and (ARPCache[I].IP = IP) then begin
      MAC := ARPCache[I].MAC;
      ARPResolve := True;
      Exit;
    end;
  end;
  { TODO: send ARP request, wait for reply }
  ARPResolve := False;
end;

{ ---- TCP ---- }

function TCPOpen(RemoteIP: TIPAddr; RemotePort: Word): Integer;
var I: Integer;
begin
  for I := 0 to MAX_SOCKETS - 1 do begin
    if not Sockets[I].InUse then begin
      Sockets[I].InUse := True;
      Sockets[I].State := TCP_SYN_SENT;
      Sockets[I].LocalPort := NextPort;
      Inc(NextPort);
      Sockets[I].RemotePort := RemotePort;
      Sockets[I].RemoteIP := RemoteIP;
      Sockets[I].SendSeq := LongInt(NextPort) * 12345;
      Sockets[I].RecvLen := 0;
      { TODO: send SYN packet }
      TCPOpen := I;
      Exit;
    end;
  end;
  TCPOpen := -1;
end;

procedure TCPClose(Sock: Integer);
begin
  if (Sock >= 0) and (Sock < MAX_SOCKETS) then begin
    { TODO: send FIN }
    Sockets[Sock].State := TCP_CLOSED;
    Sockets[Sock].InUse := False;
  end;
end;

function TCPWrite(Sock: Integer; Data: Pointer; Len: Word): Word;
begin
  { TODO: build IP+TCP headers, send via pktdrv }
  TCPWrite := 0;
end;

function TCPRead(Sock: Integer; Buf: Pointer; BufSize: Word): Word;
begin
  if (Sock >= 0) and (Sock < MAX_SOCKETS) then begin
    if Sockets[Sock].RecvLen > 0 then begin
      if Sockets[Sock].RecvLen < BufSize then
        BufSize := Sockets[Sock].RecvLen;
      Move(Sockets[Sock].RecvBuf, Buf^, BufSize);
      Dec(Sockets[Sock].RecvLen, BufSize);
      if Sockets[Sock].RecvLen > 0 then
        Move(Sockets[Sock].RecvBuf[BufSize], Sockets[Sock].RecvBuf, Sockets[Sock].RecvLen);
      TCPRead := BufSize;
      Exit;
    end;
  end;
  TCPRead := 0;
end;

function TCPState(Sock: Integer): Byte;
begin
  if (Sock >= 0) and (Sock < MAX_SOCKETS) then
    TCPState := Sockets[Sock].State
  else
    TCPState := TCP_CLOSED;
end;

function TCPConnected(Sock: Integer): Boolean;
begin
  TCPConnected := TCPState(Sock) = TCP_ESTABLISHED;
end;

{ ---- UDP ---- }

function UDPSend(DestIP: TIPAddr; SrcPort, DestPort: Word;
  Data: Pointer; Len: Word): Boolean;
begin
  { TODO: build IP+UDP headers, send via pktdrv }
  UDPSend := False;
end;

end.
