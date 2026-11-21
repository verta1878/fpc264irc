program clist;
{ fpc264irc BUG-052 test (i8086): a program using classes links in the memory-model folders.
  ppcross8086 -Tmsdos -Wmmedium -XX -Fubin/units/i8086-msdos-medium clist.pas   (also -Wmlarge; huge: use the default
  folder bin/units/i8086-msdos, -Wmhuge - the -huge folder's system is 94 bytes too big here). Run in DOSBox: ALL OK.
  byte, 2026-11-21 }
{$mode objfpc}{$H+}
uses classes;
var L: TStringList;
begin
  L := TStringList.Create;
  L.Add('b'); L.Add('a'); L.Sort;
  if (L.Count = 2) and (L[0] = 'a') and (L[1] = 'b') then writeln('ALL OK') else writeln('FAIL');
  L.Free;
end.
