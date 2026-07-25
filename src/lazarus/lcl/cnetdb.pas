{ cnetdb.pas -- Compatibility shim for Mystic BBS code.
  Maps retired cNetDB types (PHostEnt, gethostbyaddr) to netdb unit.
  FPC 2.6.4irc — cNetDB was retired, netdb is the replacement. }
{$MODE OBJFPC}{$H+}
unit cnetdb;
interface
uses Sockets, netdb;
type
  THostEnt = record
    h_name: PChar;
    h_length: Integer;
    h_addrtype: Integer;
    h_addr: PChar;
  end;
  PHostEnt = ^THostEnt;
function gethostbyname(Name: PChar): PHostEnt;
function gethostbyaddr(Addr: PChar; Len, Typ: Integer): PHostEnt;
procedure freehostent(P: PHostEnt);
implementation
var
  StaticEntry: THostEnt;
  StaticAddr: array[0..3] of Byte;
  StaticName: array[0..255] of Char;
function gethostbyname(Name: PChar): PHostEnt;
var H: THostEntry; S: String; I: Integer;
begin
  Result := nil;
  S := StrPas(Name);
  if ResolveHostByName(S, H) then begin
    for I := 0 to Length(H.Name) - 1 do StaticName[I] := H.Name[I + 1];
    StaticName[Length(H.Name)] := #0;
    Move(H.Addr, StaticAddr, 4);
    StaticEntry.h_name := @StaticName[0];
    StaticEntry.h_length := 4;
    StaticEntry.h_addrtype := 2;
    StaticEntry.h_addr := @StaticAddr[0];
    Result := @StaticEntry;
  end;
end;
function gethostbyaddr(Addr: PChar; Len, Typ: Integer): PHostEnt;
var H: THostEntry; HA: THostAddr;
begin
  Result := nil;
  Move(Addr^, HA, 4);
  if ResolveHostByAddr(HA, H) then begin
    Move(H.Name[1], StaticName[0], Length(H.Name));
    StaticName[Length(H.Name)] := #0;
    Move(H.Addr, StaticAddr, 4);
    StaticEntry.h_name := @StaticName[0];
    StaticEntry.h_length := 4;
    StaticEntry.h_addrtype := 2;
    StaticEntry.h_addr := @StaticAddr[0];
    Result := @StaticEntry;
  end;
end;
procedure freehostent(P: PHostEnt);
begin end;
end.
