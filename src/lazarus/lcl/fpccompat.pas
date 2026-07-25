{ This file is part of FPC 2.6.4irc.
  Copyright (C) 2026 fpc264irc contributors.

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program. If not, see <https://www.gnu.org/licenses/>.
}
{ FPC/Delphi VCL Compatibility Unit
  Provides missing Delphi functions and type helpers for FPC 2.6.4irc.
  Used by Inno Setup 5.6.1 port and other Delphi→FPC ports. }
unit FPCCompat;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LCLType
  {$IFDEF WINDOWS}, Windows, ShellAPI{$ENDIF};

{ Re-export SListIndexError from RTLConsts for Delphi compatibility }
resourcestring
  SListIndexError = 'List index (%d) out of bounds';

{ Byte ↔ Set casting helpers (FPC is stricter than Delphi) }
function SetToByte(const ASet; Size: Integer): Byte;
function ByteToSet(AByte: Byte): Byte; inline;

{$IFDEF WINDOWS}
{ DragQueryPoint — Delphi-compatible overload using var instead of LPPOINT }
function DragQueryPoint(Drop: HDROP; var Point: TPoint): BOOL;

{ Application handle helpers }
function GetAppHandle: THandle;

{ Ctl3D / OEMConvert runtime helpers }
procedure SetCtl3D(Handle: THandle; Value: Boolean);
procedure SetOEMConvert(Handle: THandle; Value: Boolean);

{ DisableTaskWindows — no-op (Win16 legacy) }
procedure DisableTaskWindows(SkipWindow: THandle);
procedure EnableTaskWindows(SkipWindow: THandle);
{$ENDIF}

implementation

function SetToByte(const ASet; Size: Integer): Byte;
begin
  Result := 0;
  if Size >= 1 then
    Move(ASet, Result, 1);
end;

function ByteToSet(AByte: Byte): Byte; inline;
begin
  Result := AByte;
end;

{$IFDEF WINDOWS}
function DragQueryPoint(Drop: HDROP; var Point: TPoint): BOOL;
begin
  Result := ShellAPI.DragQueryPoint(Drop, @Point);
end;

function GetAppHandle: THandle;
begin
  Result := 0;

  Result := GetActiveWindow;
end;

procedure SetCtl3D(Handle: THandle; Value: Boolean);
var
  Style: LongInt;
begin
  Style := GetWindowLong(Handle, GWL_EXSTYLE);
  if Value then
    Style := Style or WS_EX_CLIENTEDGE
  else
    Style := Style and not WS_EX_CLIENTEDGE;
  SetWindowLong(Handle, GWL_EXSTYLE, Style);
end;

procedure SetOEMConvert(Handle: THandle; Value: Boolean);
const
  ES_OEMCONVERT = $0400;
var
  Style: LongInt;
begin
  Style := GetWindowLong(Handle, GWL_STYLE);
  if Value then
    Style := Style or ES_OEMCONVERT
  else
    Style := Style and not ES_OEMCONVERT;
  SetWindowLong(Handle, GWL_STYLE, Style);
end;

procedure DisableTaskWindows(SkipWindow: THandle);
begin
  // No-op — Win16 legacy
end;

procedure EnableTaskWindows(SkipWindow: THandle);
begin
  // No-op — Win16 legacy
end;
{$ENDIF}

end.
