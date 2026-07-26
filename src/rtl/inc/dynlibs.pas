{$MODE OBJFPC}
unit dynlibs;

interface

Type
{$IFDEF WINDOWS}
  TLibHandle = THandle;
{$ELSE}
  TLibHandle = PtrInt;
{$ENDIF}
  TOrdinalEntry = Word;

Const
  NilHandle = TLibHandle(0);
  SharedSuffix =
    {$IFDEF WINDOWS}'dll'{$ELSE}
    {$IFDEF DARWIN}'dylib'{$ELSE}
    {$IFDEF OS2}'dll'{$ELSE}
    'so'{$ENDIF}{$ENDIF}{$ENDIF};

Function SafeLoadLibrary(const Name: AnsiString): TLibHandle;
Function LoadLibrary(const Name: AnsiString): TLibHandle;
Function GetProcedureAddress(Lib: TLibHandle; const ProcName: AnsiString): Pointer;
Function GetProcAddress(Lib: TLibHandle; const ProcName: AnsiString): Pointer;
Function UnloadLibrary(Lib: TLibHandle): Boolean;
Function FreeLibrary(Lib: TLibHandle): Boolean;
Function GetLoadErrorStr: String;

Type
  HModule = TLibHandle;

Implementation

{$i dynlibs.inc}

Function LoadLibrary(const Name: AnsiString): TLibHandle;
begin
  Result := DoLoadLibrary(Name);
end;

Function SafeLoadLibrary(const Name: AnsiString): TLibHandle;
begin
  Result := LoadLibrary(Name);
end;

Function GetProcedureAddress(Lib: TLibHandle; const ProcName: AnsiString): Pointer;
begin
  Result := DoGetProcedureAddress(Lib, ProcName);
end;

Function GetProcAddress(Lib: TLibHandle; const ProcName: AnsiString): Pointer;
begin
  Result := GetProcedureAddress(Lib, ProcName);
end;

Function UnloadLibrary(Lib: TLibHandle): Boolean;
begin
  Result := DoUnloadLibrary(Lib);
end;

Function FreeLibrary(Lib: TLibHandle): Boolean;
begin
  Result := UnloadLibrary(Lib);
end;

Function GetLoadErrorStr: String;
begin
  Result := '';
end;

end.
