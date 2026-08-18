{
  dynlibs_fix.pas — Minimal dynamic library loading for Win32

  Replaces stock dynlibs.pas which can't recompile due to
  FPC 2.6.4 overloaded function limitation.

  GPLv3 — the crew 4free — sysop/0
}
unit dynlibs;

{$mode objfpc}{$H+}

interface

uses
  windows;

type
  TLibHandle = THandle;

const
  NilHandle = TLibHandle(0);

function LoadLibrary(const Name: AnsiString): TLibHandle;
function UnloadLibrary(Lib: TLibHandle): Boolean;
function GetProcedureAddress(Lib: TLibHandle; const ProcName: AnsiString): Pointer;

implementation

function LoadLibrary(const Name: AnsiString): TLibHandle;
begin
  Result := Windows.LoadLibraryA(PChar(Name));
end;

function UnloadLibrary(Lib: TLibHandle): Boolean;
begin
  Result := Windows.FreeLibrary(Lib);
end;

function GetProcedureAddress(Lib: TLibHandle; const ProcName: AnsiString): Pointer;
begin
  Result := Windows.GetProcAddress(Lib, PChar(ProcName));
end;

end.
