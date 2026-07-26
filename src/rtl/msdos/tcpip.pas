{$MODE OBJFPC}
unit tcpip;
{ TCP/IP convenience layer for i8086.
  Thin wrapper around sockets unit.
  Copyright (c) 2024 FPC264IRC Project — GPLv3 }

interface

uses Sockets;

{ Re-export key types and functions from sockets }
type
  TIPAddr = LongWord;

function StrToIP(const S: String): TIPAddr;
function IPToStr(IP: TIPAddr): String;

function TCPInit(const SelfIP, Mask, Gateway: String): Boolean;
procedure TCPShutdown;
function TCPOpen(RemoteIP: TIPAddr; RemotePort: Word): TSocket;
procedure TCPClose(Sock: TSocket);
function TCPWrite(Sock: TSocket; Data: Pointer; Len: Word): Word;
function TCPRead(Sock: TSocket; Buf: Pointer; BufSize: Word): Word;
function TCPConnected(Sock: TSocket): Boolean;

implementation

function StrToIP(const S: String): TIPAddr;
begin
  Result := inet_addr(S);
end;

function IPToStr(IP: TIPAddr): String;
var A: TInAddr;
begin
  A.s_addr := IP;
  Result := inet_ntoa(A);
end;

function TCPInit(const SelfIP, Mask, Gateway: String): Boolean;
begin
  LocalIP := inet_addr(SelfIP);
  SubnetMask := inet_addr(Mask);
  GatewayIP := inet_addr(Gateway);
  Result := InitWatt32;
end;

procedure TCPShutdown;
begin
  DoneWatt32;
end;

function TCPOpen(RemoteIP: TIPAddr; RemotePort: Word): TSocket;
var Addr: TInetSockAddr;
begin
  Result := fpSocket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
  if Result = INVALID_SOCKET then Exit;
  
  Addr.sin_family := AF_INET;
  Addr.sin_port := htons(RemotePort);
  Addr.sin_addr.s_addr := RemoteIP;
  FillChar(Addr.sin_zero, 8, 0);
  
  if fpConnect(Result, @Addr, SizeOf(Addr)) <> 0 then begin
    CloseSocket(Result);
    Result := INVALID_SOCKET;
  end;
end;

procedure TCPClose(Sock: TSocket);
begin
  fpShutdown(Sock, SHUT_RDWR);
  CloseSocket(Sock);
end;

function TCPWrite(Sock: TSocket; Data: Pointer; Len: Word): Word;
var R: ssize_t;
begin
  R := fpSend(Sock, Data, Len, 0);
  if R > 0 then Result := R else Result := 0;
end;

function TCPRead(Sock: TSocket; Buf: Pointer; BufSize: Word): Word;
var R: ssize_t;
begin
  R := fpRecv(Sock, Buf, BufSize, 0);
  if R > 0 then Result := R else Result := 0;
end;

function TCPConnected(Sock: TSocket): Boolean;
begin
  if (Sock >= 0) and (Sock < MAX_SOCKETS) then
    Result := SockTable[Sock].State = tssEstablished
  else
    Result := False;
end;

end.
