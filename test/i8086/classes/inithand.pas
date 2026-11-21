program inithand;
{ fpc264irc BUG-052 test: the init handler list after the i8086 classes change - an own handler is used, the TComponent
  default stays in the list. Does not fit in the i8086 memory-model folders (component streaming is bigger than 64K);
  checked on x86_64-linux with the patch applied for CPUX86_64 instead of CPUI8086: ALL OK.  byte, 2026-11-21 }
{$mode objfpc}{$H+}
uses classes;
type TMy = class(TComponent) end;
var Hits, Bad: Integer;
function MyHandler(Instance: TComponent; RootAncestor: TClass): Boolean;
begin Inc(Hits); Result := True; end;
procedure Check(Ok: Boolean; const What: string);
begin if Ok then writeln('ok   ', What) else begin writeln('FAIL ', What); Inc(Bad); end; end;
var L: TStringList; C: TComponent; M: TMy;
begin
  Bad := 0; Hits := 0;
  L := TStringList.Create; L.Add('b'); L.Add('a'); L.Sort;
  Check((L.Count = 2) and (L[0] = 'a'), 'TStringList');
  L.Free;
  RegisterInitComponentHandler(TMy, @MyHandler);
  M := TMy.Create(nil);
  Check(InitInheritedComponent(M, TComponent) and (Hits = 1), 'own handler for TMy');
  C := TComponent.Create(nil);
  Check(not InitInheritedComponent(C, TComponent) and (Hits = 1), 'default handler for TComponent (no resource)');
  C.Free; M.Free;
  if Bad = 0 then writeln('ALL OK') else writeln(Bad, ' FAILED');
end.
