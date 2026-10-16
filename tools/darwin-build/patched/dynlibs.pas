{
    fpc264irc: dynlibs for the x86_64-darwin RTL build - byte, 2026-10-09
    The FPC 2.6.4 layout (OS part in unix/dynlibs.inc, read twice) with the Patch 5 names GetProcAddress and
    FreeLibrary; same interface as bin/units/i386-darwin/dynlibs.ppu. src/rtl/inc/dynlibs.pas cannot be used with
    unix/dynlibs.inc (both define LoadLibrary & co.), see HISTORY.md Patch 5.
}
{$MODE OBJFPC}
unit dynlibs;

interface

{$define readinterface}
{$i dynlibs.inc}
{$undef readinterface}

Function SafeLoadLibrary(const Name: AnsiString): TLibHandle;
Function LoadLibrary(const Name: AnsiString): TLibHandle;
Function GetProcedureAddress(Lib: TLibHandle; const ProcName: AnsiString): Pointer;
Function UnloadLibrary(Lib: TLibHandle): Boolean;
Function GetLoadErrorStr: String;
Function FreeLibrary(Lib: TLibHandle): Boolean;
Function GetProcAddress(Lib: TLibHandle; const ProcName: AnsiString): Pointer;

Type
  HModule = TLibHandle;

Implementation

{$i dynlibs.inc}

Function SafeLoadLibrary(const Name: AnsiString): TLibHandle;
begin
  Result := LoadLibrary(Name);
end;

Function FreeLibrary(Lib: TLibHandle): Boolean;
begin
  Result := UnloadLibrary(Lib);
end;

Function GetProcAddress(Lib: TLibHandle; const ProcName: AnsiString): Pointer;
begin
  Result := GetProcedureAddress(Lib, ProcName);
end;

end.
