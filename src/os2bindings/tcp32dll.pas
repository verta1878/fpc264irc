{$MODE DELPHI}
Unit TCP32DLL;
{
  OS/2 TCP/IP 32-bit Socket Pascal Bindings — Phase 12.5
  Wraps SO32DLL.DLL + TCP32DLL.DLL
  GPLv3 — The Crew
}

Interface

Type
  ULONG = Cardinal;



Type
  TSocket = LongInt;

  sockaddr_in = Record
    sin_len    : Byte;
    sin_family : Byte;
    sin_port   : Word;
    sin_addr   : ULONG;
    sin_zero   : Array[0..7] Of Byte;
  End;

  hostent = Record
    h_name      : PChar;
    h_aliases   : ^PChar;
    h_addrtype  : LongInt;
    h_length    : LongInt;
    h_addr_list : ^PChar;
  End;
  Phostent = ^hostent;

Const
  AF_INET     = 2;
  SOCK_STREAM = 1;
  SOCK_DGRAM  = 2;
  IPPROTO_TCP = 6;
  IPPROTO_UDP = 17;
  INADDR_ANY  = 0;
  INVALID_SOCKET = TSocket(-1);
  SOCKET_ERROR   = -1;

Function sock_init: LongInt;
Function socket(domain, socktype, protocol: LongInt): TSocket;
Function bind(s: TSocket; var addr: sockaddr_in; addrlen: LongInt): LongInt;
Function listen(s: TSocket; backlog: LongInt): LongInt;
Function accept(s: TSocket; var addr: sockaddr_in; var addrlen: LongInt): TSocket;
Function connect(s: TSocket; var addr: sockaddr_in; addrlen: LongInt): LongInt;
Function send(s: TSocket; buf: Pointer; len, flags: LongInt): LongInt;
Function recv(s: TSocket; buf: Pointer; len, flags: LongInt): LongInt;
Function soclose(s: TSocket): LongInt;
Function gethostbyname(name: PChar): Phostent;
Function htons(hostshort: Word): Word;
Function inet_addr(cp: PChar): ULONG;

Implementation

Function sock_init; external 'SO32DLL' index 26;
Function socket; external 'SO32DLL' index 16;
Function bind; external 'SO32DLL' index 2;
Function listen; external 'SO32DLL' index 10;
Function accept; external 'SO32DLL' index 1;
Function connect; external 'SO32DLL' index 3;
Function send; external 'SO32DLL' index 14;
Function recv; external 'SO32DLL' index 12;
Function soclose; external 'SO32DLL' index 17;
Function gethostbyname; external 'TCP32DLL' index 52;
Function htons; external 'SO32DLL' index 101;
Function inet_addr; external 'SO32DLL' index 100;

End.
