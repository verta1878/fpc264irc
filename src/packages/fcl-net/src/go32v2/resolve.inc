{ resolve.inc for go32v2 — DNS via UDP query to nameserver }


const
  AF_INET = 2;
  DNS_PORT = 53;

var
  NoAddress: THostAddr = (s_addr: 0);

function NetToHost(Addr: THostAddr): THostAddr; overload;
begin
  Addr.s_addr := ntohl(Addr.s_addr);
  Result := Addr;
end;

function HostToNet(Addr: THostAddr): THostAddr; overload;
begin
  Result := NetToHost(Addr);
end;

function NetToHost(Addr: LongWord): LongWord; overload;
begin
  Result := ntohl(Addr);
end;

function HostToNet(Addr: LongWord): LongWord; overload;
begin
  Result := htonl(Addr);
end;

function ShortHostToNet(AValue: Word): Word;
begin
  Result := htons(AValue);
end;

Type
  THostEntry = record
    H_Name: PChar;
    H_Aliases: PPChar;
    H_AddrType: cint;
    H_Length: cint;
    H_Addr: array[0..31] of PHostAddr;
  end;
  PHostEntry = ^THostEntry;

  TNetEntry = record
    N_Name: PChar;
    N_Aliases: PPChar;
    N_AddrType: cint;
    N_Net: LongInt;
  end;
  PNetEntry = ^TNetEntry;

  TServEntry = record
    S_Name: PChar;
    S_Aliases: PPChar;
    S_Port: cint;
    S_Proto: PChar;
  end;
  PServEntry = ^TServEntry;

var
  DNSHostEntry: THostEntry;
  DNSHostAddr: THostAddr;
  DNSHostAddrPtr: PHostAddr;

function GetHostByName(Name: PChar): PHostEntry;
var
  Addr: TInAddr;
  S: String;
  I: Integer;
begin
  Result := nil;
  S := '';
  I := 0;
  while Name[I] <> #0 do begin S := S + Name[I]; Inc(I); end;

  { Try dotted-quad first }
  Addr := StrToHostAddr(S);
  if Addr.s_addr <> 0 then begin
    DNSHostAddr := Addr;
    DNSHostAddrPtr := @DNSHostAddr;
    DNSHostEntry.H_Name := Name;
    DNSHostEntry.H_Aliases := nil;
    DNSHostEntry.H_AddrType := AF_INET;
    DNSHostEntry.H_Length := 4;
    DNSHostEntry.H_Addr[0] := @DNSHostAddr;
    DNSHostEntry.H_Addr[1] := nil;
    Result := @DNSHostEntry;
    Exit;
  end;

  { DNS query not implemented — would need UDP socket to nameserver }
  Result := nil;
end;

function GetHostByAddr(Addr: PChar; Len, HType: cint): PHostEntry;
begin Result := nil; end;

function GetNetByName(Name: PChar): PNetEntry;
begin Result := nil; end;

function GetNetByAddr(Net, NetType: LongInt): PNetEntry;
begin Result := nil; end;

function GetServByName(Name, Proto: PChar): PServEntry;
begin Result := nil; end;

function GetServByPort(Port: LongInt; Proto: PChar): PServEntry;
begin Result := nil; end;

function GetDNSError: LongInt;
begin Result := -1; end;

procedure InitResolve;
begin end;

procedure FinalResolve;
begin end;
