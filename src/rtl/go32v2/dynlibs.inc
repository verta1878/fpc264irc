{ dynlibs.inc for go32v2 — stub (no DLLs on DOS) }

procedure InitDynLibs;
begin
end;

Function DoLoadLibrary(const Name: AnsiString): TLibHandle;
begin
  Result := NilHandle;
end;

Function DoUnloadLibrary(Lib: TLibHandle): Boolean;
begin
  Result := False;
end;

Function DoGetProcedureAddress(Lib: TLibHandle; const ProcName: AnsiString): Pointer;
begin
  Result := nil;
end;
