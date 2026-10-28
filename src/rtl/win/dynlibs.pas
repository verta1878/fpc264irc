{
  dynlibs.pas — Minimal dynamic library loading for Win32

  Replaces stock dynlibs.pas which can't recompile due to
  FPC 2.6.4 overloaded function limitation.

  GPLv3 — the crew 4free — sysop/0
  2026-10-27 byte: + GetProcAddress / FreeLibrary, the names Patch 5 added to the
  unix dynlibs (openssl and gl call them)
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
function GetProcAddress(Lib: TLibHandle; const ProcName: AnsiString): Pointer;
function FreeLibrary(Lib: TLibHandle): Boolean;

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

function GetProcAddress(Lib: TLibHandle; const ProcName: AnsiString): Pointer;
begin
  Result := GetProcedureAddress(Lib, ProcName);
end;

function FreeLibrary(Lib: TLibHandle): Boolean;
begin
  Result := UnloadLibrary(Lib);
end;

end.
