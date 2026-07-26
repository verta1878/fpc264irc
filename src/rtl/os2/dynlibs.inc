{ dynlibs.inc for OS/2 EMX — real implementation using DosLoadModule }

uses doscalls;

procedure InitDynLibs;
begin
end;

Function DoLoadLibrary(const Name: AnsiString): TLibHandle;
var
  ObjName: String;
  Handle: THandle;
  RC: Cardinal;
  NameZ: String;
begin
  ObjName := '';
  NameZ := Name;
  RC := DosLoadModule(ObjName, 255, NameZ, Handle);
  if RC = 0 then
    Result := TLibHandle(Handle)
  else
    Result := NilHandle;
end;

Function DoUnloadLibrary(Lib: TLibHandle): Boolean;
begin
  Result := (DosFreeModule(THandle(Lib)) = 0);
end;

Function DoGetProcedureAddress(Lib: TLibHandle; const ProcName: AnsiString): Pointer;
var
  Addr: Pointer;
  RC: Cardinal;
  ProcZ: String;
begin
  ProcZ := ProcName;
  RC := DosQueryProcAddr(THandle(Lib), 0, ProcZ, Addr);
  if RC = 0 then
    Result := Addr
  else
    Result := nil;
end;
