{
  dynlibs_linux.pas — Minimal dynamic library loading for Linux

  Replaces stock dynlibs.pas which can't recompile due to
  FPC 2.6.4 overloaded function limitation.

  GPLv3 — the crew 4free — sysop/0
}
unit dynlibs;

{$mode objfpc}{$H+}

interface

uses
  dl;

type
  TLibHandle = PtrInt;

const
  NilHandle = TLibHandle(0);
  SharedSuffix = 'so';

function LoadLibrary(const Name: AnsiString): TLibHandle;
function UnloadLibrary(Lib: TLibHandle): Boolean;
function GetProcedureAddress(Lib: TLibHandle; const ProcName: AnsiString): Pointer;

implementation

function LoadLibrary(const Name: AnsiString): TLibHandle;
begin
  Result := TLibHandle(dlopen(PChar(Name), RTLD_LAZY));
end;

function UnloadLibrary(Lib: TLibHandle): Boolean;
begin
  Result := dlclose(Pointer(Lib)) = 0;
end;

function GetProcedureAddress(Lib: TLibHandle; const ProcName: AnsiString): Pointer;
begin
  Result := dlsym(Pointer(Lib), PChar(ProcName));
end;

end.
