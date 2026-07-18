{
  seteuid_unit — portable effective UID/GID management for FPC 2.6.4irc

  Provides fpSetEUID, fpSetEGID, fpGetEUID, fpGetEGID, fpSetREUID,
  fpSetREGID across all fpc264irc targets. Real syscall implementations
  on Linux, FreeBSD, NetBSD, OpenBSD, and Darwin. Graceful stubs on
  Windows, DOS, and OS/2 (return -1, SetEUIDSupported = false).

  Usage:
    uses seteuid_unit;
    if SetEUIDSupported then begin
      writeln('Current EUID: ', fpGetEUID);
      if fpSetEUID(1000) = 0 then
        writeln('Dropped to UID 1000')
      else
        writeln('Failed: errno ', GetLastSetEUIDError);
    end;

  Copyright (c) 2026 fpc264irc contributors
  License: GPLv3+ }
unit seteuid_unit;

{$mode objfpc}

interface

{$IFDEF UNIX}
uses baseunix;
{$ENDIF}

type
  { Platform-neutral UID/GID type. On Unix these map to TUid/TGid.
    On non-Unix, plain longint (unused but allows compilation). }
  {$IFDEF UNIX}
  TEUid = TUid;
  TEGid = TGid;
  {$ELSE}
  TEUid = longint;
  TEGid = longint;
  {$ENDIF}

{ ── Set effective UID/GID ──
  Returns 0 on success, -1 on failure. }
function fpSetEUID(euid: TEUid): longint;
function fpSetEGID(egid: TEGid): longint;

{ ── Get effective UID/GID ──
  Returns the current effective UID/GID, or -1 on non-Unix. }
function fpGetEUID: longint;
function fpGetEGID: longint;

{ ── Set real + effective UID/GID ──
  Pass -1 for either to leave it unchanged.
  Returns 0 on success, -1 on failure. }
function fpSetREUID(ruid, euid: TEUid): longint;
function fpSetREGID(rgid, egid: TEGid): longint;

{ ── Platform query ── }
function SetEUIDSupported: boolean;

{ ── Last error from a failed set operation ──
  Returns the errno value from the last failed call, or 0. }
function GetLastSetEUIDError: longint;

implementation

{$IFDEF UNIX}
uses syscall;
{$ENDIF}

var
  LastError: longint = 0;

{ ══════════════════════════════════════════════════════════════
  LINUX
  ══════════════════════════════════════════════════════════════ }
{$IFDEF LINUX}

function fpSetREUID(ruid, euid: TEUid): longint;
begin
  {$IFDEF CPU64}
  Result := do_syscall(syscall_nr_setreuid, TSysParam(ruid), TSysParam(euid));
  {$ELSE}
  Result := do_syscall(syscall_nr_setreuid32, TSysParam(ruid), TSysParam(euid));
  {$ENDIF}
  if Result < 0 then LastError := fpGetErrno else LastError := 0;
end;

function fpSetREGID(rgid, egid: TEGid): longint;
begin
  {$IFDEF CPU64}
  Result := do_syscall(syscall_nr_setregid, TSysParam(rgid), TSysParam(egid));
  {$ELSE}
  Result := do_syscall(syscall_nr_setregid32, TSysParam(rgid), TSysParam(egid));
  {$ENDIF}
  if Result < 0 then LastError := fpGetErrno else LastError := 0;
end;

function fpSetEUID(euid: TEUid): longint;
begin
  Result := fpSetREUID(TEUid(-1), euid);
end;

function fpSetEGID(egid: TEGid): longint;
begin
  Result := fpSetREGID(TEGid(-1), egid);
end;

function fpGetEUID: longint;
begin
  Result := fpGeteuid;
end;

function fpGetEGID: longint;
begin
  Result := fpGetegid;
end;

function SetEUIDSupported: boolean;
begin
  Result := true;
end;

function GetLastSetEUIDError: longint;
begin
  Result := LastError;
end;
{$ENDIF}

{ ══════════════════════════════════════════════════════════════
  BSD: FreeBSD, NetBSD, OpenBSD, Darwin
  FreeBSD:  setreuid=126, setregid=127
  NetBSD:   setreuid=126, setregid=127
  OpenBSD:  setreuid=126, setregid=127
  Darwin:   setreuid=126, setregid=127 (same Mach/BSD layer)
  ══════════════════════════════════════════════════════════════ }
{$IFDEF FREEBSD}  {$DEFINE BSD_SETEUID} {$ENDIF}
{$IFDEF NETBSD}   {$DEFINE BSD_SETEUID} {$ENDIF}
{$IFDEF OPENBSD}  {$DEFINE BSD_SETEUID} {$ENDIF}
{$IFDEF DARWIN}   {$DEFINE BSD_SETEUID} {$ENDIF}

{$IFDEF BSD_SETEUID}

const
  SYS_SETREUID = 126;
  SYS_SETREGID = 127;

function fpSetREUID(ruid, euid: TEUid): longint;
begin
  Result := do_syscall(SYS_SETREUID, TSysParam(ruid), TSysParam(euid));
  if Result < 0 then LastError := fpGetErrno else LastError := 0;
end;

function fpSetREGID(rgid, egid: TEGid): longint;
begin
  Result := do_syscall(SYS_SETREGID, TSysParam(rgid), TSysParam(egid));
  if Result < 0 then LastError := fpGetErrno else LastError := 0;
end;

function fpSetEUID(euid: TEUid): longint;
begin
  Result := fpSetREUID(TEUid(-1), euid);
end;

function fpSetEGID(egid: TEGid): longint;
begin
  Result := fpSetREGID(TEGid(-1), egid);
end;

function fpGetEUID: longint;
begin
  Result := fpGeteuid;
end;

function fpGetEGID: longint;
begin
  Result := fpGetegid;
end;

function SetEUIDSupported: boolean;
begin
  Result := true;
end;

function GetLastSetEUIDError: longint;
begin
  Result := LastError;
end;
{$ENDIF}

{ ══════════════════════════════════════════════════════════════
  STUB: Windows, DOS (go32v2 + i8086), OS/2
  ══════════════════════════════════════════════════════════════ }
{$IFNDEF LINUX}
{$IFNDEF BSD_SETEUID}

function fpSetEUID(euid: TEUid): longint;
begin
  Result := -1;
  LastError := 1; { EPERM }
end;

function fpSetEGID(egid: TEGid): longint;
begin
  Result := -1;
  LastError := 1;
end;

function fpGetEUID: longint;
begin
  Result := -1;
end;

function fpGetEGID: longint;
begin
  Result := -1;
end;

function fpSetREUID(ruid, euid: TEUid): longint;
begin
  Result := -1;
  LastError := 1;
end;

function fpSetREGID(rgid, egid: TEGid): longint;
begin
  Result := -1;
  LastError := 1;
end;

function SetEUIDSupported: boolean;
begin
  Result := false;
end;

function GetLastSetEUIDError: longint;
begin
  Result := LastError;
end;

{$ENDIF}
{$ENDIF}

end.
