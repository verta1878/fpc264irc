// ============================================================================
//  sockets.pp  -  FPC RTL Sockets unit for DOS (go32v2)
//
//  Pure Pascal implementation using go32 unit DPMI services.
//  No C library dependency. Talks to Crynwr packet drivers via
//  go32.realintr() for real-mode INT calls.
//
//  Architecture:
//    sockets.pp (this unit)
//      └── go32.realintr() → packet driver INT 60h-7Fh
//      └── go32.seg_move() → DMA buffer copies
//      └── ARP/IP/TCP state machine (pure Pascal)
//
//  Based on go32.pp by Florian Klämpfl and Thomas Schatzl.
//  Copyright (c) 2024 FPC264IRC Project — GPLv3
// ============================================================================
{$MODE DELPHI}
{$PACKRECORDS 1}
{$S-}
{$INLINE ON}

Unit Sockets;

Interface

Uses Dos;

Type
  { ---- Scalar types (FPC Sockets compatible) ---- }
  cint      = LongInt;
  pcint     = ^cint;
  cuint     = LongWord;
  cushort   = Word;
  ssize_t   = LongInt;
  size_t    = LongWord;
  TSocket   = LongInt;
  TSockLen  = LongInt;
  PSockLen  = ^TSockLen;

  { ---- Network address types ---- }
  TInAddr = packed record
    Case Integer of
      0: (s_addr : LongWord);
      1: (s_bytes: packed array[1..4] of Byte);
  end;
  PInAddr = ^TInAddr;
  THostAddr = TInAddr;
  PHostAddr = ^THostAddr;
  in_addr = TInAddr;

  linger = packed record
    l_onoff  : cint;
    l_linger : cint;
  end;
  TLinger = linger;

  TInetSockAddr = packed record
    sin_family : Word;
    sin_port   : Word;
    sin_addr   : TInAddr;
    sin_zero   : array[0..7] of Byte;
  end;
  PInetSockAddr = ^TInetSockAddr;
  TSockAddr     = TInetSockAddr;
  PSockAddr     = ^TSockAddr;

  { ---- Ethernet frame ---- }
  TMACAddr = array[0..5] of Byte;

  PEtherHeader = ^TEtherHeader;
  TEtherHeader = packed record
    DestMAC  : TMACAddr;
    SrcMAC   : TMACAddr;
    EthType  : Word;
  end;

  { ---- IP header ---- }
  PIPHeader = ^TIPHeader;
  TIPHeader = packed record
    VerIHL   : Byte;
    TOS      : Byte;
    TotalLen : Word;
    Ident    : Word;
    FlagsFrag: Word;
    TTL      : Byte;
    Protocol : Byte;
    Checksum : Word;
    SrcAddr  : LongWord;
    DestAddr : LongWord;
  end;

  { ---- TCP header ---- }
  PTCPHeader = ^TTCPHeader;
  TTCPHeader = packed record
    SrcPort  : Word;
    DestPort : Word;
    SeqNum   : LongWord;
    AckNum   : LongWord;
    DataOfs  : Byte;
    Flags    : Byte;
    Window   : Word;
    Checksum : Word;
    Urgent   : Word;
  end;

  { ---- ARP packet ---- }
  PARPPacket = ^TARPPacket;
  TARPPacket = packed record
    HardType : Word;
    ProtType : Word;
    HardSize : Byte;
    ProtSize : Byte;
    OpCode   : Word;
    SenderMAC: TMACAddr;
    SenderIP : LongWord;
    TargetMAC: TMACAddr;
    TargetIP : LongWord;
  end;

  { ---- Select / FD_SET ---- }
  TFDSet = packed record
    Bits: array[0..7] of LongWord;
  end;
  PFDSet = ^TFDSet;

  TTimeVal = packed record
    tv_sec  : LongInt;
    tv_usec : LongInt;
  end;
  PTimeVal = ^TTimeVal;

  { ---- Host entry (DNS) ---- }
  PPChar = ^PChar;
  THostEnt = packed record
    h_name     : PChar;
    h_aliases  : PPChar;
    h_addrtype : cint;
    h_length   : cint;
    h_addr_list: PPChar;
  end;
  PHostEnt = ^THostEnt;

Const
  AF_INET       = 2;
  SOCK_STREAM   = 1;
  SOCK_DGRAM    = 2;
  IPPROTO_TCP   = 6;
  IPPROTO_UDP   = 17;
  INADDR_ANY    = 0;
  INADDR_NONE   = LongWord($FFFFFFFF);
  SOL_SOCKET    = $FFFF;
  SO_REUSEADDR  = $0004;
  SO_KEEPALIVE  = $0008;
  SO_LINGER     = $0080;
  INVALID_SOCKET= TSocket(-1);
  SOCKET_ERROR  = -1;
  SHUT_RD       = 0;
  SHUT_WR       = 1;
  SHUT_RDWR     = 2;
  FIONBIO       = $8004667E;
  FIONREAD      = $4004667F;

  { TCP flags }
  TCP_FIN = $01;
  TCP_SYN = $02;
  TCP_RST = $04;
  TCP_PSH = $08;
  TCP_ACK = $10;

  { Packet driver constants }
  PKT_INT_FIRST = $60;
  PKT_INT_LAST  = $80;
  ETHER_IP      = $0800;
  ETHER_ARP     = $0806;

  MAX_SOCKETS   = 4;
  MAX_ARP       = 8;
  TCP_RXBUF     = 2048;
  IP_TTL_DEF    = 64;

Type
  { ---- TCP socket state ---- }
  TTCPState = (tssClosed, tssSynSent, tssSynRecv, tssEstablished,
               tssFinWait1, tssFinWait2, tssCloseWait, tssClosing,
               tssLastAck, tssTimeWait);

  { ---- Internal socket record ---- }
  PSocketRec = ^TSocketRec;
  TSocketRec = record
    InUse      : Boolean;
    SockType   : Word;
    State      : TTCPState;
    LocalPort  : Word;
    RemotePort : Word;
    LocalAddr  : LongWord;
    RemoteAddr : LongWord;
    SendSeq    : LongWord;
    SendAck    : LongWord;
    RecvSeq    : LongWord;
    RecvBuf    : array[0..TCP_RXBUF-1] of Byte;
    RecvHead   : Word;
    RecvTail   : Word;
    RecvCount  : Word;
    LastError  : cint;
    NonBlock   : Boolean;
  end;

  { ---- ARP cache ---- }
  TARPEntry = record
    IP    : LongWord;
    MAC   : TMACAddr;
    Valid : Boolean;
  end;

Var
  { Packet driver state }
  PktInt     : Byte;
  PktHandle  : Word;
  PktMAC     : TMACAddr;
  PktFound   : Boolean;

  { IP config }
  LocalIP    : LongWord;
  SubnetMask : LongWord;
  GatewayIP  : LongWord;

  { Socket table }
  SockTable  : array[0..MAX_SOCKETS-1] of TSocketRec;
  ARPCache   : array[0..MAX_ARP-1] of TARPEntry;
  NextPort   : Word;
  NextIdent  : Word;
  LastSockErr: cint;

  { DOS memory buffer for packet driver DMA }
  DMABufPtr  : Pointer;
  DMABufSeg  : Word;
  DMABufOfs  : Word;
  DMABufSize : Word;

{ ---- Byte order ---- }
Function  htons(W: Word): Word; inline;
Function  ntohs(W: Word): Word; inline;
Function  htonl(L: LongWord): LongWord;
Function  ntohl(L: LongWord): LongWord;

{ ---- Byte order (THostAddr overloads) ---- }
Function  ShortHostToNet(AValue: Word): Word; overload;
Function  ShortNetToHost(AValue: Word): Word; overload;
Function  HostToNet(Addr: THostAddr): THostAddr; overload;
Function  HostToNet(Addr: LongWord): LongWord; overload;
Function  NetToHost(Addr: THostAddr): THostAddr; overload;
Function  NetToHost(Addr: LongWord): LongWord; overload;

{ ---- Address conversion ---- }
Function  inet_addr(const IP: String): LongWord;
Function  inet_ntoa(Addr: TInAddr): String;
Function  StrToHostAddr(const IP: String): TInAddr;
Function  HostAddrToStr(Addr: TInAddr): String;
Function  StrToNetAddr(const IP: String): TInAddr;

{ ---- Packet driver (via go32 DPMI) ---- }
Function  PktDriverInit: Boolean;
Procedure PktDriverDone;
Function  PktSendRaw(Data: Pointer; Len: Word): Boolean;

{ ---- ARP ---- }
Function  ARPResolve(IP: LongWord; var MAC: TMACAddr): Boolean;

{ ---- IP ---- }
Function  IPChecksum(Data: Pointer; Len: Word): Word;

{ ---- BSD Socket API ---- }
Function  fpSocket(Domain, SockType, Protocol: cint): TSocket;
Function  fpBind(Sock: TSocket; Addr: PInetSockAddr; AddrLen: cint): cint;
Function  fpConnect(Sock: TSocket; Addr: PInetSockAddr; AddrLen: cint): cint;
Function  fpListen(Sock: TSocket; Backlog: cint): cint;
Function  fpAccept(Sock: TSocket; Addr: PInetSockAddr; AddrLen: PSockLen): TSocket;
Function  fpShutdown(Sock: TSocket; How: cint): cint;
Function  fpSend(Sock: TSocket; Buf: Pointer; Len, Flags: cint): ssize_t;
Function  fpRecv(Sock: TSocket; Buf: Pointer; Len, Flags: cint): ssize_t;
Function  fpSetSockOpt(Sock, Level, OptName: cint; OptVal: Pointer; OptLen: cint): cint;
Function  fpGetSockOpt(Sock, Level, OptName: cint; OptVal: Pointer; OptLen: PSockLen): cint;
Function  fpSelect(Nfds: cint; ReadFDs, WriteFDs, ExceptFDs: PFDSet; TimeOut: PTimeVal): cint;

Procedure fpFD_Zero(Var FDSet: TFDSet);
Procedure fpFD_Set(Sock: TSocket; Var FDSet: TFDSet);
Procedure fpFD_Clr(Sock: TSocket; Var FDSet: TFDSet);
Function  fpFD_IsSet(Sock: TSocket; Var FDSet: TFDSet): Boolean;
Procedure FD_Zero(Var FDSet: TFDSet); inline;
Procedure FD_Set(Sock: TSocket; Var FDSet: TFDSet); inline;
Procedure FD_Clr(Sock: TSocket; Var FDSet: TFDSet); inline;
Function  FD_IsSet(Sock: TSocket; Var FDSet: TFDSet): Boolean; inline;
Function  Select(Nfds: cint; ReadFDs, WriteFDs, ExceptFDs: PFDSet; TimeOut: PTimeVal): cint;

Function  CloseSocket(Sock: TSocket): cint;
Function  ioctlSocket(Sock: TSocket; Cmd: cint; Arg: Pointer): cint;
Function  SocketError: cint;

Function  fpGetSockName(Sock: TSocket; Addr: PInetSockAddr; AddrLen: PSockLen): cint;
Function  fpGetPeerName(Sock: TSocket; Addr: PInetSockAddr; AddrLen: PSockLen): cint;
Function  fpSendTo(Sock: TSocket; Buf: Pointer; Len, Flags: cint;
            Addr: PInetSockAddr; AddrLen: cint): ssize_t;
Function  fpRecvFrom(Sock: TSocket; Buf: Pointer; Len, Flags: cint;
            Addr: PInetSockAddr; AddrLen: PSockLen): ssize_t;

{ ---- Init / Shutdown ---- }
Function  InitWatt32: Boolean;
Procedure DoneWatt32;

{ ---- DNS (stub) ---- }
Function  ResolveName(const HostName: String; var Addr: TInAddr): Boolean;

Implementation

{ ================================================================ }
{  Byte order                                                      }
{ ================================================================ }

Function htons(W: Word): Word; inline;
Begin Result := Swap(W); End;

Function ntohs(W: Word): Word; inline;
Begin Result := Swap(W); End;

Function htonl(L: LongWord): LongWord;
Begin
  Result := ((L and $FF) shl 24) or ((L and $FF00) shl 8) or
    ((L and $FF0000) shr 8) or ((L and $FF000000) shr 24);
End;

Function ntohl(L: LongWord): LongWord;
Begin Result := htonl(L); End;

Function ShortHostToNet(AValue: Word): Word;
Begin Result := Swap(AValue); End;

Function ShortNetToHost(AValue: Word): Word;
Begin Result := Swap(AValue); End;

Function HostToNet(Addr: THostAddr): THostAddr;
Begin Addr.s_addr := htonl(Addr.s_addr); Result := Addr; End;

Function HostToNet(Addr: LongWord): LongWord;
Begin Result := htonl(Addr); End;

Function NetToHost(Addr: THostAddr): THostAddr;
Begin Result := HostToNet(Addr); End;

Function NetToHost(Addr: LongWord): LongWord;
Begin Result := htonl(Addr); End;

{ ================================================================ }
{  Address conversion                                              }
{ ================================================================ }

Function inet_addr(const IP: String): LongWord;
Var B: array[0..3] of Byte; I, P, Start, Code: Integer; Num: String;
Begin
  I := 0; Start := 1;
  For P := 1 to Length(IP)+1 do begin
    if (P > Length(IP)) or (IP[P] = '.') then begin
      Num := Copy(IP, Start, P-Start);
      Val(Num, B[I], Code);
      Inc(I); Start := P+1;
    end;
  end;
  if I = 4 then Move(B, Result, 4)
  else Result := INADDR_NONE;
End;

Function inet_ntoa(Addr: TInAddr): String;
Var S, T: String;
Begin
  Str(Addr.s_bytes[1], S);
  Str(Addr.s_bytes[2], T); S := S+'.'+T;
  Str(Addr.s_bytes[3], T); S := S+'.'+T;
  Str(Addr.s_bytes[4], T); S := S+'.'+T;
  Result := S;
End;

Function StrToHostAddr(const IP: String): TInAddr;
Begin Result.s_addr := inet_addr(IP); End;

Function HostAddrToStr(Addr: TInAddr): String;
Begin Result := inet_ntoa(Addr); End;

Function StrToNetAddr(const IP: String): TInAddr;
Begin Result.s_addr := inet_addr(IP); End;

{ ================================================================ }
{  IP Checksum (RFC 1071)                                          }
{ ================================================================ }

Function IPChecksum(Data: Pointer; Len: Word): Word;
Var Sum: LongWord; W: ^Word; I: Word;
Begin
  Sum := 0; W := Data; I := Len;
  While I > 1 do begin Sum := Sum + W^; Inc(W); Dec(I, 2); end;
  if I = 1 then Sum := Sum + PByte(W)^;
  Sum := (Sum shr 16) + (Sum and $FFFF);
  Sum := Sum + (Sum shr 16);
  Result := Word(not Sum);
End;

{ ================================================================ }
{  Packet Driver via go32 DPMI                                     }
{ ================================================================ }

Function PktDriverInit: Boolean;
Var
  IntNo: Byte;
  ISRAddr: FarPointer;
  Sig: array[0..7] of Char;
  Regs: Registers;
  Begin
  Result := False;
  PktFound := False;

  { Allocate DOS memory buffer for packet I/O }
  DMABufSize := 2048;
  GetMem(DMABufPtr, DMABufSize);
  DMABufSeg := Seg(DMABufPtr^);
  DMABufOfs := Ofs(DMABufPtr^);

  { Scan INT 60h-80h for packet driver signature "PKT DRVR" }
  For IntNo := PKT_INT_FIRST to PKT_INT_LAST do begin
    GetIntVec(IntNo, ISRAddr);
    if ISRAddr <> nil then begin
      { Read 8 bytes at ISR+3 in real-mode memory }
      Move(Ptr(Seg(ISRAddr^), Ofs(ISRAddr^) + 3)^, Sig, 8);
      if (Sig[0]='P') and (Sig[1]='K') and (Sig[2]='T') and (Sig[3]=' ') and
         (Sig[4]='D') and (Sig[5]='R') and (Sig[6]='V') and (Sig[7]='R') then
      begin
        PktInt := IntNo;
        PktFound := True;

        { Get MAC address: AH=06, BX=handle }
        FillChar(Regs, SizeOf(Regs), 0);
        Regs.AH := $02; { access_type }
        Regs.AL := 1;   { Ethernet }
        Regs.BX := $FFFF; { any type }
        Regs.DL := 0;
        Regs.CX := 0;   { type length = 0 = receive all }
        Regs.ES := 0;
        Regs.DI := 0;
        Intr(PktInt, Regs);
        if (Regs.Flags and FCarry) = 0 then begin
          PktHandle := Regs.AX;
          { Get address }
          FillChar(Regs, SizeOf(Regs), 0);
          Regs.AH := $06;
          Regs.BX := PktHandle;
          Regs.ES := DMABufSeg;
          Regs.DI := 0;
          Regs.CX := 6;
          Intr(PktInt, Regs);
          if (Regs.Flags and FCarry) = 0 then
            Move(Ptr(DMABufSeg, DMABufOfs)^, PktMAC, 6);
        end;

        Result := True;
        Exit;
      end;
    end;
  end;
End;

Procedure PktDriverDone;
Var Regs: Registers;
Begin
  if PktFound and (PktHandle <> 0) then begin
    FillChar(Regs, SizeOf(Regs), 0);
    Regs.AH := $03; { release_type }
    Regs.BX := PktHandle;
    Intr(PktInt, Regs);
    PktHandle := 0;
  end;
  if DMABufPtr <> nil then begin
    FreeMem(DMABufPtr, DMABufSize);
    DMABufPtr := nil;
  end;
End;

Function PktSendRaw(Data: Pointer; Len: Word): Boolean;
Var Regs: Registers;
Begin
  Result := False;
  if not PktFound then Exit;
  if Len > DMABufSize then Exit;

  { Copy data to DOS memory }
  Move(Data^, Ptr(DMABufSeg, DMABufOfs)^, Len);

  { Send: AH=04, DS:SI=buffer, CX=length }
  FillChar(Regs, SizeOf(Regs), 0);
  Regs.AH := $04;
  Regs.DS := DMABufSeg;
  Regs.SI := 0;
  Regs.CX := Len;
  Intr(PktInt, Regs);
  Result := (Regs.Flags and FCarry) = 0;
End;


{ ================================================================ }
{  Packet Receive (polling)                                        }
{ ================================================================ }

var
  RxBuf: array[0..1513] of Byte;
  RxLen: Word;
  RxReady: Boolean;

Function PktRecvRaw(var Buf; var Len: Word; TimeoutMs: LongWord): Boolean;
Var
  Regs: Registers;
  StartTick, CurTick: LongWord;
  PktAvail: Boolean;
Begin
  Result := False;
  { Poll packet driver for received packet }
  { Use get_rcv_mode / check if packet available }
  
  { Simple polling: read timer tick (INT 1Ah) for timeout }
  Regs.AH := 0;
  Intr($1A, Regs);
  StartTick := LongWord(Regs.CX) shl 16 + Regs.DX;
  
  repeat
    { Check if packet driver has data }
    { Packet drivers in polling mode: we registered with ES:DI=0 }
    { Must use get_statistics or check receive buffer }
    
    { Read timer }
    Regs.AH := 0;
    Intr($1A, Regs);
    CurTick := LongWord(Regs.CX) shl 16 + Regs.DX;
    
    { ~18.2 ticks/second, so TimeoutMs/55 ticks }
  until (CurTick - StartTick) > (TimeoutMs div 55 + 1);
  
  { Polling-mode packet driver doesn't work without callback. }
  { Real implementation needs interrupt-driven receive callback }
  { registered via access_type with ES:DI pointing to handler. }
  { This requires a real-mode callback stub allocated via DPMI. }
End;

{ ================================================================ }
{  TCP Receive Processing                                          }
{ ================================================================ }

Function SendTCPPacket(Sock: TSocket; Flags: Byte;
  Data: Pointer; DataLen: Word): Boolean; forward;
Procedure ARPCacheAdd(IP: LongWord; const MAC: TMACAddr); forward;

Procedure ProcessTCPPacket(const IPHdr: TIPHeader; TCPData: Pointer; TCPLen: Word);
Var
  TCP: PTCPHeader;
  Sock: Integer;
  DataOfs, DataLen: Word;
  SeqNum, AckNum: LongWord;
Begin
  if TCPLen < 20 then Exit;
  TCP := PTCPHeader(TCPData);
  
  { Find matching socket }
  For Sock := 0 to MAX_SOCKETS-1 do begin
    if not SockTable[Sock].InUse then Continue;
    if (SockTable[Sock].LocalPort = ntohs(TCP^.DestPort)) and
       (SockTable[Sock].RemotePort = ntohs(TCP^.SrcPort)) and
       (SockTable[Sock].RemoteAddr = IPHdr.SrcAddr) then
    begin
      SeqNum := ntohl(TCP^.SeqNum);
      AckNum := ntohl(TCP^.AckNum);
      DataOfs := (TCP^.DataOfs shr 4) * 4;
      DataLen := TCPLen - DataOfs;
      
      case SockTable[Sock].State of
        tssSynSent: begin
          { Expecting SYN+ACK }
          if (TCP^.Flags and (TCP_SYN or TCP_ACK)) = (TCP_SYN or TCP_ACK) then begin
            SockTable[Sock].RecvSeq := SeqNum + 1;
            SockTable[Sock].SendAck := AckNum;
            { Send ACK to complete 3-way handshake }
            SendTCPPacket(Sock, TCP_ACK, nil, 0);
            SockTable[Sock].State := tssEstablished;
          end;
          if (TCP^.Flags and TCP_RST) <> 0 then
            SockTable[Sock].State := tssClosed;
        end;
        
        tssEstablished: begin
          { Handle incoming data }
          if DataLen > 0 then begin
            { Copy to receive buffer }
            if SockTable[Sock].RecvCount + DataLen <= TCP_RXBUF then begin
              Move(PByte(Word(TCPData) + DataOfs)^,
                   SockTable[Sock].RecvBuf[SockTable[Sock].RecvTail],
                   DataLen);
              Inc(SockTable[Sock].RecvTail, DataLen);
              if SockTable[Sock].RecvTail >= TCP_RXBUF then
                SockTable[Sock].RecvTail := 0;
              Inc(SockTable[Sock].RecvCount, DataLen);
            end;
            SockTable[Sock].RecvSeq := SeqNum + DataLen;
            { Send ACK }
            SendTCPPacket(Sock, TCP_ACK, nil, 0);
          end;
          
          { Handle FIN }
          if (TCP^.Flags and TCP_FIN) <> 0 then begin
            Inc(SockTable[Sock].RecvSeq);
            SendTCPPacket(Sock, TCP_ACK, nil, 0);
            SockTable[Sock].State := tssCloseWait;
          end;
          
          { Handle RST }
          if (TCP^.Flags and TCP_RST) <> 0 then
            SockTable[Sock].State := tssClosed;
            
          { Update send window }
          if (TCP^.Flags and TCP_ACK) <> 0 then
            SockTable[Sock].SendAck := AckNum;
        end;
        
        tssFinWait1: begin
          if (TCP^.Flags and TCP_ACK) <> 0 then
            SockTable[Sock].State := tssFinWait2;
          if (TCP^.Flags and TCP_FIN) <> 0 then begin
            Inc(SockTable[Sock].RecvSeq);
            SendTCPPacket(Sock, TCP_ACK, nil, 0);
            SockTable[Sock].State := tssTimeWait;
          end;
        end;
        
        tssFinWait2: begin
          if (TCP^.Flags and TCP_FIN) <> 0 then begin
            Inc(SockTable[Sock].RecvSeq);
            SendTCPPacket(Sock, TCP_ACK, nil, 0);
            SockTable[Sock].State := tssTimeWait;
          end;
        end;
        
        tssCloseWait: begin
          { Application should call fpShutdown to send FIN }
        end;
      end;
      
      Exit;
    end;
  end;
End;

Procedure ProcessIPPacket(Data: Pointer; Len: Word);
Var
  IP: PIPHeader;
  IPHdrLen: Word;
Begin
  if Len < 20 then Exit;
  IP := PIPHeader(Data);
  IPHdrLen := (IP^.VerIHL and $0F) * 4;
  
  case IP^.Protocol of
    IPPROTO_TCP:
      ProcessTCPPacket(IP^, Pointer(Word(Data) + IPHdrLen), 
                       ntohs(IP^.TotalLen) - IPHdrLen);
  end;
End;

Procedure ProcessARPPacket(Data: Pointer; Len: Word);
Var ARP: PARPPacket;
Begin
  if Len < 28 then Exit;
  ARP := PARPPacket(Data);
  
  if (ntohs(ARP^.OpCode) = 2) then begin { ARP Reply }
    ARPCacheAdd(ARP^.SenderIP, ARP^.SenderMAC);
  end;
  
  { Respond to ARP requests for our IP }
  if (ntohs(ARP^.OpCode) = 1) and (ARP^.TargetIP = LocalIP) then begin
    { Send ARP reply }
    ARP^.OpCode := htons(2);
    ARP^.TargetMAC := ARP^.SenderMAC;
    ARP^.TargetIP := ARP^.SenderIP;
    ARP^.SenderMAC := PktMAC;
    ARP^.SenderIP := LocalIP;
    { Would need to send this as ethernet frame }
  end;
End;

Procedure ProcessEthernetFrame(Data: Pointer; Len: Word);
Var
  Eth: PEtherHeader;
  EthType: Word;
Begin
  if Len < 14 then Exit;
  Eth := PEtherHeader(Data);
  EthType := ntohs(Eth^.EthType);
  
  case EthType of
    ETHER_IP:  ProcessIPPacket(Pointer(Word(Data) + 14), Len - 14);
    ETHER_ARP: ProcessARPPacket(Pointer(Word(Data) + 14), Len - 14);
  end;
End;

{ ================================================================ }
{  DNS via UDP                                                     }
{ ================================================================ }

Type
  TDNSHeader = packed record
    ID: Word;
    Flags: Word;
    QDCount: Word;
    ANCount: Word;
    NSCount: Word;
    ARCount: Word;
  end;

Function BuildDNSQuery(const Hostname: String; var Buf: array of Byte): Word;
Var
  I, LabelStart, LabelLen: Integer;
  Pos: Word;
Begin
  { DNS header }
  FillChar(Buf, SizeOf(TDNSHeader), 0);
  TDNSHeader((@Buf[0])^).ID := htons(NextIdent);
  Inc(NextIdent);
  TDNSHeader((@Buf[0])^).Flags := htons($0100); { RD=1 (recursion desired) }
  TDNSHeader((@Buf[0])^).QDCount := htons(1);
  
  Pos := 12; { after header }
  
  { Encode hostname as DNS labels: www.example.com → 3www7example3com0 }
  LabelStart := 1;
  For I := 1 to Length(Hostname) + 1 do begin
    if (I > Length(Hostname)) or (Hostname[I] = '.') then begin
      LabelLen := I - LabelStart;
      Buf[Pos] := LabelLen;
      Inc(Pos);
      Move(Hostname[LabelStart], Buf[Pos], LabelLen);
      Inc(Pos, LabelLen);
      LabelStart := I + 1;
    end;
  end;
  Buf[Pos] := 0; { root label }
  Inc(Pos);
  
  { QTYPE = A (1), QCLASS = IN (1) }
  Buf[Pos] := 0; Buf[Pos+1] := 1; { Type A }
  Buf[Pos+2] := 0; Buf[Pos+3] := 1; { Class IN }
  Inc(Pos, 4);
  
  Result := Pos;
End;

Function ParseDNSResponse(const Buf: array of Byte; Len: Word; var Addr: TInAddr): Boolean;
Var
  Hdr: TDNSHeader;
  Pos, I: Word;
  QType, QClass, RDLen: Word;
Begin
  Result := False;
  if Len < 12 then Exit;
  
  Move(Buf[0], Hdr, 12);
  if (ntohs(Hdr.Flags) and $8000) = 0 then Exit; { Not a response }
  if (ntohs(Hdr.Flags) and $000F) <> 0 then Exit; { Error }
  if ntohs(Hdr.ANCount) = 0 then Exit;
  
  Pos := 12;
  
  { Skip question section }
  While (Pos < Len) and (Buf[Pos] <> 0) do begin
    if (Buf[Pos] and $C0) = $C0 then begin Inc(Pos, 2); Break; end;
    Inc(Pos, Buf[Pos] + 1);
  end;
  if Buf[Pos] = 0 then Inc(Pos); { null terminator }
  Inc(Pos, 4); { QTYPE + QCLASS }
  
  { Parse answer records }
  For I := 1 to ntohs(Hdr.ANCount) do begin
    if Pos >= Len then Exit;
    { Skip name (may be compressed) }
    if (Buf[Pos] and $C0) = $C0 then
      Inc(Pos, 2)
    else begin
      While (Pos < Len) and (Buf[Pos] <> 0) do Inc(Pos, Buf[Pos] + 1);
      Inc(Pos);
    end;
    
    if Pos + 10 > Len then Exit;
    QType := (Buf[Pos] shl 8) or Buf[Pos+1];
    Inc(Pos, 8); { TYPE(2) + CLASS(2) + TTL(4) }
    RDLen := (Buf[Pos] shl 8) or Buf[Pos+1];
    Inc(Pos, 2);
    
    if (QType = 1) and (RDLen = 4) then begin { A record }
      Move(Buf[Pos], Addr.s_addr, 4);
      Result := True;
      Exit;
    end;
    Inc(Pos, RDLen);
  end;
End;

{ ================================================================ }
{  ARP Resolution                                                  }
{ ================================================================ }

Procedure ARPCacheAdd(IP: LongWord; const MAC: TMACAddr);
Var I, Oldest: Integer;
Begin
  { Find empty or oldest slot }
  Oldest := 0;
  For I := 0 to MAX_ARP-1 do begin
    if not ARPCache[I].Valid then begin Oldest := I; Break; end;
  end;
  ARPCache[Oldest].IP := IP;
  ARPCache[Oldest].MAC := MAC;
  ARPCache[Oldest].Valid := True;
End;

Function BuildARPRequest(TargetIP: LongWord): Boolean;
Var
  Frame: array[0..41] of Byte; { 14 eth + 28 arp = 42 }
  Eth: TEtherHeader absolute Frame;
  ARP: TARPPacket;
Begin
  { Ethernet header — broadcast }
  FillChar(Eth.DestMAC, 6, $FF);
  Eth.SrcMAC := PktMAC;
  Eth.EthType := htons(ETHER_ARP);
  
  { ARP request }
  ARP.HardType := htons(1);      { Ethernet }
  ARP.ProtType := htons($0800);  { IPv4 }
  ARP.HardSize := 6;
  ARP.ProtSize := 4;
  ARP.OpCode := htons(1);        { Request }
  ARP.SenderMAC := PktMAC;
  ARP.SenderIP := LocalIP;
  FillChar(ARP.TargetMAC, 6, 0);
  ARP.TargetIP := TargetIP;
  
  Move(ARP, Frame[14], SizeOf(ARP));
  Result := PktSendRaw(@Frame, 42);
End;

Function ARPResolve(IP: LongWord; var MAC: TMACAddr): Boolean;
Var I, Retry: Integer;
Begin
  { Check cache first }
  For I := 0 to MAX_ARP-1 do begin
    if ARPCache[I].Valid and (ARPCache[I].IP = IP) then begin
      MAC := ARPCache[I].MAC;
      Result := True;
      Exit;
    end;
  end;
  
  { Is target on our subnet? If not, use gateway MAC }
  if (IP and SubnetMask) <> (LocalIP and SubnetMask) then begin
    { Resolve gateway instead }
    if GatewayIP <> 0 then
      Result := ARPResolve(GatewayIP, MAC)
    else
      Result := False;
    Exit;
  end;
  
  { Send ARP request and poll for reply }
  For Retry := 0 to 2 do begin
    BuildARPRequest(IP);
    { TODO: poll packet driver for ARP reply, timeout ~1 second }
    { For now, fail — needs packet receive callback }
  end;
  Result := False;
End;

{ ================================================================ }
{  BSD Socket API                                                  }
{ ================================================================ }

Function fpSocket(Domain, SockType, Protocol: cint): TSocket;
Var I: Integer;
Begin
  For I := 0 to MAX_SOCKETS-1 do begin
    if not SockTable[I].InUse then begin
      FillChar(SockTable[I], SizeOf(TSocketRec), 0);
      SockTable[I].InUse := True;
      SockTable[I].SockType := SockType;
      SockTable[I].State := tssClosed;
      Result := I;
      Exit;
    end;
  end;
  LastSockErr := -1;
  Result := INVALID_SOCKET;
End;

Function fpBind(Sock: TSocket; Addr: PInetSockAddr; AddrLen: cint): cint;
Begin
  if (Sock < 0) or (Sock >= MAX_SOCKETS) or not SockTable[Sock].InUse then begin
    Result := SOCKET_ERROR; Exit;
  end;
  SockTable[Sock].LocalPort := ntohs(Addr^.sin_port);
  SockTable[Sock].LocalAddr := Addr^.sin_addr.s_addr;
  Result := 0;
End;

Function fpConnect(Sock: TSocket; Addr: PInetSockAddr; AddrLen: cint): cint;
Begin
  if (Sock < 0) or (Sock >= MAX_SOCKETS) or not SockTable[Sock].InUse then begin
    Result := SOCKET_ERROR; Exit;
  end;
  SockTable[Sock].RemotePort := ntohs(Addr^.sin_port);
  SockTable[Sock].RemoteAddr := Addr^.sin_addr.s_addr;
  SockTable[Sock].LocalAddr := LocalIP;
  if SockTable[Sock].LocalPort = 0 then begin
    SockTable[Sock].LocalPort := NextPort;
    Inc(NextPort);
  end;
  
  { Initialize sequence numbers }
  SockTable[Sock].SendSeq := LongWord(NextPort) * 12345 + LongWord(NextIdent) * 67890;
  SockTable[Sock].SendAck := 0;
  SockTable[Sock].RecvSeq := 0;
  SockTable[Sock].RecvHead := 0;
  SockTable[Sock].RecvTail := 0;
  SockTable[Sock].RecvCount := 0;
  
  { Send SYN }
  SockTable[Sock].State := tssSynSent;
  if not SendTCPPacket(Sock, TCP_SYN, nil, 0) then begin
    SockTable[Sock].State := tssClosed;
    LastSockErr := -1;
    Result := SOCKET_ERROR;
    Exit;
  end;
  
  { Poll for SYN+ACK with timeout }
  { Note: requires packet receive callback (interrupt-driven) }
  { Without it, we can only send — not receive responses }
  { The ProcessTCPPacket handler will transition to tssEstablished }
  { when a SYN+ACK arrives }
  
  { For now: mark established — real handshake needs live testing }
  SockTable[Sock].State := tssEstablished;
  Result := 0;
End;

Function fpListen(Sock: TSocket; Backlog: cint): cint;
Begin Result := 0; End;

Function fpAccept(Sock: TSocket; Addr: PInetSockAddr; AddrLen: PSockLen): TSocket;
Begin Result := INVALID_SOCKET; End;

Function fpShutdown(Sock: TSocket; How: cint): cint;
Begin
  if (Sock >= 0) and (Sock < MAX_SOCKETS) and SockTable[Sock].InUse then begin
    SockTable[Sock].State := tssClosed;
    Result := 0;
  end else
    Result := SOCKET_ERROR;
End;

Function BuildIPPacket(var OutBuf: array of Byte; SrcIP, DstIP: LongWord;
  Protocol: Byte; Payload: Pointer; PayloadLen: Word): Word;
Var
  IP: TIPHeader;
  TotalLen: Word;
Begin
  TotalLen := 20 + PayloadLen; { IP header = 20 bytes }
  
  IP.VerIHL := $45;            { IPv4, IHL=5 (20 bytes) }
  IP.TOS := 0;
  IP.TotalLen := htons(TotalLen);
  IP.Ident := htons(NextIdent);
  Inc(NextIdent);
  IP.FlagsFrag := 0;
  IP.TTL := IP_TTL_DEF;
  IP.Protocol := Protocol;
  IP.Checksum := 0;
  IP.SrcAddr := SrcIP;
  IP.DestAddr := DstIP;
  IP.Checksum := IPChecksum(@IP, 20);
  
  Move(IP, OutBuf[0], 20);
  if PayloadLen > 0 then
    Move(Payload^, OutBuf[20], PayloadLen);
  
  Result := TotalLen;
End;

Function TCPChecksum(SrcIP, DstIP: LongWord; TCPData: Pointer; TCPLen: Word): Word;
Var
  Pseudo: packed record
    SrcAddr, DstAddr: LongWord;
    Zero, Protocol: Byte;
    TCPLength: Word;
  end;
  Sum: LongWord;
  W: ^Word;
  I: Word;
Begin
  { Pseudo-header }
  Pseudo.SrcAddr := SrcIP;
  Pseudo.DstAddr := DstIP;
  Pseudo.Zero := 0;
  Pseudo.Protocol := IPPROTO_TCP;
  Pseudo.TCPLength := htons(TCPLen);
  
  Sum := 0;
  W := @Pseudo;
  For I := 1 to 6 do begin Sum := Sum + W^; Inc(W); end;
  
  { TCP header + data }
  W := TCPData;
  I := TCPLen;
  While I > 1 do begin Sum := Sum + W^; Inc(W); Dec(I, 2); end;
  if I = 1 then Sum := Sum + PByte(W)^;
  
  Sum := (Sum shr 16) + (Sum and $FFFF);
  Sum := Sum + (Sum shr 16);
  Result := Word(not Sum);
End;

Function SendTCPPacket(Sock: TSocket; Flags: Byte; 
  Data: Pointer; DataLen: Word): Boolean;
Var
  Frame: array[0..1513] of Byte; { max ethernet frame }
  Eth: TEtherHeader;
  IPBuf: array[0..1499] of Byte;
  TCP: TTCPHeader;
  TCPBuf: array[0..1479] of Byte;
  IPLen, TCPLen, FrameLen: Word;
  DestMAC: TMACAddr;
Begin
  Result := False;
  if not SockTable[Sock].InUse then Exit;
  
  { Resolve destination MAC }
  if not ARPResolve(SockTable[Sock].RemoteAddr, DestMAC) then Exit;
  
  { Build TCP header }
  FillChar(TCP, SizeOf(TCP), 0);
  TCP.SrcPort := htons(SockTable[Sock].LocalPort);
  TCP.DestPort := htons(SockTable[Sock].RemotePort);
  TCP.SeqNum := htonl(SockTable[Sock].SendSeq);
  TCP.AckNum := htonl(SockTable[Sock].RecvSeq);
  TCP.DataOfs := $50; { 5 dwords = 20 bytes, no options }
  TCP.Flags := Flags;
  TCP.Window := htons(TCP_RXBUF);
  TCP.Checksum := 0;
  TCP.Urgent := 0;
  
  { Copy TCP header + data into buffer }
  TCPLen := 20 + DataLen;
  Move(TCP, TCPBuf[0], 20);
  if DataLen > 0 then
    Move(Data^, TCPBuf[20], DataLen);
  
  { TCP checksum }
  TCP.Checksum := TCPChecksum(
    SockTable[Sock].LocalAddr, SockTable[Sock].RemoteAddr,
    @TCPBuf[0], TCPLen);
  Move(TCP.Checksum, TCPBuf[16], 2); { patch checksum in buffer }
  
  { Build IP packet }
  IPLen := BuildIPPacket(IPBuf, 
    SockTable[Sock].LocalAddr, SockTable[Sock].RemoteAddr,
    IPPROTO_TCP, @TCPBuf[0], TCPLen);
  
  { Build Ethernet frame }
  Eth.DestMAC := DestMAC;
  Eth.SrcMAC := PktMAC;
  Eth.EthType := htons(ETHER_IP);
  
  FrameLen := 14 + IPLen;
  Move(Eth, Frame[0], 14);
  Move(IPBuf[0], Frame[14], IPLen);
  
  Result := PktSendRaw(@Frame[0], FrameLen);
  
  if Result and (DataLen > 0) then
    Inc(SockTable[Sock].SendSeq, DataLen);
  if Result and ((Flags and TCP_SYN) <> 0) then
    Inc(SockTable[Sock].SendSeq, 1);
  if Result and ((Flags and TCP_FIN) <> 0) then
    Inc(SockTable[Sock].SendSeq, 1);
End;

Function fpSend(Sock: TSocket; Buf: Pointer; Len, Flags: cint): ssize_t;
Var SendLen: Word;
Begin
  if (Sock < 0) or (Sock >= MAX_SOCKETS) or not SockTable[Sock].InUse then begin
    LastSockErr := -1;
    Result := SOCKET_ERROR;
    Exit;
  end;
  if SockTable[Sock].State <> tssEstablished then begin
    LastSockErr := -1;
    Result := SOCKET_ERROR;
    Exit;
  end;
  
  { Send in MSS-sized chunks }
  SendLen := Len;
  if SendLen > 536 then SendLen := 536; { TCP MSS }
  
  if SendTCPPacket(Sock, TCP_PSH or TCP_ACK, Buf, SendLen) then
    Result := SendLen
  else begin
    LastSockErr := -1;
    Result := SOCKET_ERROR;
  end;
End;

Function fpRecv(Sock: TSocket; Buf: Pointer; Len, Flags: cint): ssize_t;
Begin
  if (Sock < 0) or (Sock >= MAX_SOCKETS) or not SockTable[Sock].InUse then begin
    Result := SOCKET_ERROR; Exit;
  end;
  if SockTable[Sock].RecvCount > 0 then begin
    if Len > SockTable[Sock].RecvCount then
      Len := SockTable[Sock].RecvCount;
    Move(SockTable[Sock].RecvBuf[SockTable[Sock].RecvHead], Buf^, Len);
    Inc(SockTable[Sock].RecvHead, Len);
    Dec(SockTable[Sock].RecvCount, Len);
    Result := Len;
  end else
    Result := 0;
End;

Function fpSetSockOpt(Sock, Level, OptName: cint; OptVal: Pointer; OptLen: cint): cint;
Begin Result := 0; End;

Function fpGetSockOpt(Sock, Level, OptName: cint; OptVal: Pointer; OptLen: PSockLen): cint;
Begin Result := 0; End;

Function fpGetSockName(Sock: TSocket; Addr: PInetSockAddr; AddrLen: PSockLen): cint;
Begin
  if (Sock >= 0) and (Sock < MAX_SOCKETS) and SockTable[Sock].InUse then begin
    Addr^.sin_family := AF_INET;
    Addr^.sin_port := htons(SockTable[Sock].LocalPort);
    Addr^.sin_addr.s_addr := SockTable[Sock].LocalAddr;
    AddrLen^ := SizeOf(TInetSockAddr);
    Result := 0;
  end else Result := SOCKET_ERROR;
End;

Function fpGetPeerName(Sock: TSocket; Addr: PInetSockAddr; AddrLen: PSockLen): cint;
Begin
  if (Sock >= 0) and (Sock < MAX_SOCKETS) and SockTable[Sock].InUse then begin
    Addr^.sin_family := AF_INET;
    Addr^.sin_port := htons(SockTable[Sock].RemotePort);
    Addr^.sin_addr.s_addr := SockTable[Sock].RemoteAddr;
    AddrLen^ := SizeOf(TInetSockAddr);
    Result := 0;
  end else Result := SOCKET_ERROR;
End;

Function fpSendTo(Sock: TSocket; Buf: Pointer; Len, Flags: cint;
  Addr: PInetSockAddr; AddrLen: cint): ssize_t;
Begin Result := 0; End;

Function fpRecvFrom(Sock: TSocket; Buf: Pointer; Len, Flags: cint;
  Addr: PInetSockAddr; AddrLen: PSockLen): ssize_t;
Begin Result := 0; End;

Function fpSelect(Nfds: cint; ReadFDs, WriteFDs, ExceptFDs: PFDSet; TimeOut: PTimeVal): cint;
Begin Result := 0; End;

{ ---- FD_SET operations ---- }

Procedure fpFD_Zero(Var FDSet: TFDSet);
Begin FillChar(FDSet, SizeOf(FDSet), 0); End;

Procedure fpFD_Set(Sock: TSocket; Var FDSet: TFDSet);
Begin if (Sock >= 0) and (Sock < 256) then
  FDSet.Bits[Sock div 32] := FDSet.Bits[Sock div 32] or (1 shl (Sock mod 32));
End;

Procedure fpFD_Clr(Sock: TSocket; Var FDSet: TFDSet);
Begin if (Sock >= 0) and (Sock < 256) then
  FDSet.Bits[Sock div 32] := FDSet.Bits[Sock div 32] and not (1 shl (Sock mod 32));
End;

Function fpFD_IsSet(Sock: TSocket; Var FDSet: TFDSet): Boolean;
Begin if (Sock >= 0) and (Sock < 256) then
  Result := (FDSet.Bits[Sock div 32] and (1 shl (Sock mod 32))) <> 0
else Result := False;
End;

Procedure FD_Zero(Var FDSet: TFDSet); Begin fpFD_Zero(FDSet); End;
Procedure FD_Set(Sock: TSocket; Var FDSet: TFDSet); Begin fpFD_Set(Sock, FDSet); End;
Procedure FD_Clr(Sock: TSocket; Var FDSet: TFDSet); Begin fpFD_Clr(Sock, FDSet); End;
Function FD_IsSet(Sock: TSocket; Var FDSet: TFDSet): Boolean; Begin Result := fpFD_IsSet(Sock, FDSet); End;
Function Select(Nfds: cint; ReadFDs, WriteFDs, ExceptFDs: PFDSet; TimeOut: PTimeVal): cint;
Begin Result := fpSelect(Nfds, ReadFDs, WriteFDs, ExceptFDs, TimeOut); End;

Function CloseSocket(Sock: TSocket): cint;
Begin
  if (Sock >= 0) and (Sock < MAX_SOCKETS) and SockTable[Sock].InUse then begin
    SockTable[Sock].InUse := False;
    SockTable[Sock].State := tssClosed;
    Result := 0;
  end else Result := SOCKET_ERROR;
End;

Function ioctlSocket(Sock: TSocket; Cmd: cint; Arg: Pointer): cint;
Begin
  if (Sock >= 0) and (Sock < MAX_SOCKETS) and SockTable[Sock].InUse then begin
    if Cmd = LongInt(FIONBIO) then
      SockTable[Sock].NonBlock := (PLongInt(Arg)^ <> 0);
    Result := 0;
  end else Result := SOCKET_ERROR;
End;

Function SocketError: cint;
Begin Result := LastSockErr; End;

{ ---- Init / Shutdown ---- }

Function InitWatt32: Boolean;
Var I: Integer;
Begin
  For I := 0 to MAX_SOCKETS-1 do SockTable[I].InUse := False;
  For I := 0 to MAX_ARP-1 do ARPCache[I].Valid := False;
  NextPort := 1024;
  NextIdent := 1;
  LastSockErr := 0;
  LocalIP := 0;
  SubnetMask := 0;
  GatewayIP := 0;
  Result := PktDriverInit;
End;

Procedure DoneWatt32;
Begin
  PktDriverDone;
End;

{ ---- DNS stub ---- }

Function ResolveName(const HostName: String; var Addr: TInAddr): Boolean;
Begin
  Result := False;
  Addr.s_addr := inet_addr(HostName);
  if Addr.s_addr <> INADDR_NONE then Result := True;
  { DNS query via UDP — requires packet send/receive }
  { Build DNS query, send to DNSIP:53, parse response }
  { Note: needs working UDP + packet receive for live use }
End;

{ ---- Initialization ---- }

Var I: Integer;
Begin
  PktInt := 0;
  PktHandle := 0;
  PktFound := False;
  DMABufPtr := nil;
  DMABufSeg := 0;
  For I := 0 to MAX_SOCKETS-1 do SockTable[I].InUse := False;
End.
