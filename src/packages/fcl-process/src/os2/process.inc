{
    This file is part of the Free Pascal run time library.
    Copyright (c) 2026 by the fpc264irc project.

    OS/2 implementation of the TProcess.Execute machinery, built on the
    native DosExecPgm / DosWaitChild / DosCreatePipe primitives from the
    DosCalls unit. Upstream FPC (through 3.x) never shipped an OS/2
    process.inc; this provides asynchronous process spawning with pipe
    redirection so programs that relay a child's stdin/stdout (e.g. a BBS
    internet server spawning per-node children) work on OS/2.

    See the file COPYING.FPC, included in this distribution, for details
    about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 **********************************************************************}

Resourcestring
  SNoCommandLine        = 'Cannot execute empty command-line';
  SErrCannotExecute     = 'Failed to execute %s : %d';
  SErrNoSuchProgram     = 'Executable not found: "%s"';

const
  { file-handle state bit that marks a handle non-inheritable }
  OS2_FH_NOINHERIT = $0080;

{ Build an ASCIIZ argument block for DosExecPgm.

  The block is: <program name>#0 <arguments>#0#0
  DosExecPgm expects argv[0] (the program name) followed by the argument
  string, each terminated by #0, with an extra #0 ending the block. }
function BuildArgBlock(const ExecName, Params: string): DosCalls.PByteArray;
var
  Total, P, I: Longint;
  Blk: DosCalls.PByteArray;
begin
  Total := Length(ExecName) + 1 + Length(Params) + 1 + 1;
  GetMem(Blk, Total);
  P := 0;
  for I := 1 to Length(ExecName) do
  begin
    Blk^[P] := Byte(ExecName[I]);
    Inc(P);
  end;
  Blk^[P] := 0; Inc(P);
  for I := 1 to Length(Params) do
  begin
    Blk^[P] := Byte(Params[I]);
    Inc(P);
  end;
  Blk^[P] := 0; Inc(P);
  Blk^[P] := 0;
  BuildArgBlock := Blk;
end;

procedure TProcess.CloseProcessHandles;
begin
  { Nothing to close explicitly on OS/2 - the child PID handle is not a
    kernel object that must be released the way a Win32 HANDLE is. }
end;

Function TProcess.PeekExitStatus : Boolean;
var
  Res     : TResultCodes;
  TermPID : Cardinal;
  RC      : Cardinal;
begin
  Result := False;
  if FProcessID = 0 then
  begin
    Result := True;
    Exit;
  end;
  { dpProcess + non-blocking poll: DosWaitChild with the no-wait option
    returns immediately. When the child has ended it fills Res/TermPID and
    returns 0; while still running it returns ERROR_CHILD_NOT_COMPLETE (0). }
  RC := DosWaitChild(dpProcess, 1 {DCWW_NOWAIT}, Res, TermPID, Cardinal(FProcessID));
  if RC = 0 then
  begin
    FExitCode := Res.ExitCode;
    Result := True;
  end;
end;

Procedure TProcess.Execute;
var
  ExecName, Params, Cmd : string;
  I                     : Integer;
  ArgBlk                : DosCalls.PByteArray;
  ObjBuf                : array[0..259] of Char;
  Res                   : TResultCodes;
  RC                    : Cardinal;
  ChildIn, ChildOut,
  ChildErr              : THandle;   { ends handed to the child }
  ParentIn, ParentOut,
  ParentOut2            : THandle;
  SaveIn, SaveOut,
  SaveErr               : THandle;
  Dup                   : THandle;
  UsePipes              : Boolean;
begin
  if (ApplicationName = '') and (CommandLine = '') and (Executable = '') then
    Raise EProcess.Create(SNoCommandline);

  { Work out the executable name and the argument string. }
  ExecName := '';
  Params   := '';
  if (FApplicationName <> '') then
    ExecName := FApplicationName;
  if (FCommandLine <> '') then
  begin
    Cmd := FCommandLine;
    if ExecName = '' then
    begin
      I := Pos(' ', Cmd);
      if I = 0 then
      begin
        ExecName := Cmd;
        Params   := '';
      end
      else
      begin
        ExecName := Copy(Cmd, 1, I - 1);
        Params   := Copy(Cmd, I + 1, Length(Cmd));
      end;
    end
    else
      Params := Cmd;
  end
  else if (FExecutable <> '') then
  begin
    ExecName := FExecutable;
    for I := 0 to Parameters.Count - 1 do
      if Pos(' ', Parameters[I]) <> 0 then
        Params := Params + ' "' + Parameters[I] + '"'
      else
        Params := Params + ' ' + Parameters[I];
    Params := Trim(Params);
  end;

  UsePipes := poUsePipes in FProcessOptions;

  ParentIn := 0; ParentOut := 0; ParentOut2 := 0;
  ChildIn := 0; ChildOut := 0; ChildErr := 0;
  SaveIn := 0; SaveOut := 0; SaveErr := 0;

  if UsePipes then
  begin
    { A pipe returns (read, write). For the child's stdin the child reads,
      the parent writes; for stdout/stderr the child writes, parent reads. }
    if DosCreatePipe(ChildIn, ParentIn, FPipeBufferSize) <> 0 then
      Raise EProcess.CreateFmt(SErrCannotExecute, [FCommandLine, -1]);
    if DosCreatePipe(ParentOut, ChildOut, FPipeBufferSize) <> 0 then
      Raise EProcess.CreateFmt(SErrCannotExecute, [FCommandLine, -2]);
    if poStderrToOutPut in FProcessOptions then
      ChildErr := ChildOut
    else
    begin
      if DosCreatePipe(ParentOut2, ChildErr, FPipeBufferSize) <> 0 then
        Raise EProcess.CreateFmt(SErrCannotExecute, [FCommandLine, -3]);
    end;

    { Keep the parent ends out of the child's inheritance. }
    DosSetFHState(ParentIn,  OS2_FH_NOINHERIT);
    DosSetFHState(ParentOut, OS2_FH_NOINHERIT);
    if ParentOut2 <> 0 then
      DosSetFHState(ParentOut2, OS2_FH_NOINHERIT);

    { OS/2 has no per-child handle table in DosExecPgm; the child inherits
      the current standard handles 0/1/2. Redirect them to the child pipe
      ends, spawn, then restore.

      DosDupHandle(Src, var Dup): if Dup is preset to a valid handle number,
      that handle is redirected to Src; if Dup = $FFFFFFFF a fresh handle is
      allocated. So to save 0/1/2 we allocate fresh copies, and to redirect
      we preset Dup to the target standard-handle number. }
    Dup := THandle($FFFFFFFF); DosDupHandle(0, Dup); SaveIn  := Dup;
    Dup := THandle($FFFFFFFF); DosDupHandle(1, Dup); SaveOut := Dup;
    Dup := THandle($FFFFFFFF); DosDupHandle(2, Dup); SaveErr := Dup;

    Dup := 0; DosDupHandle(ChildIn,  Dup);
    Dup := 1; DosDupHandle(ChildOut, Dup);
    Dup := 2; DosDupHandle(ChildErr, Dup);
  end;

  { Spawn asynchronously so the caller can relay I/O while the child runs.
    deAsyncResult keeps the result codes for a later DosWaitChild. }
  ArgBlk := BuildArgBlock(ExecName, Params);
  ObjBuf[0] := #0;
  try
    RC := DosExecPgm(@ObjBuf, SizeOf(ObjBuf), deAsyncResult,
                     ArgBlk, nil, Res, PChar(ExecName));
  finally
    FreeMem(ArgBlk);
  end;

  if UsePipes then
  begin
    { Restore the parent's own standard handles and drop the saved copies. }
    Dup := 0; DosDupHandle(SaveIn,  Dup);
    Dup := 1; DosDupHandle(SaveOut, Dup);
    Dup := 2; DosDupHandle(SaveErr, Dup);
    DosClose(SaveIn); DosClose(SaveOut); DosClose(SaveErr);
    { The child owns its ends now; close ours. }
    DosClose(ChildIn); DosClose(ChildOut);
    if (ParentOut2 <> 0) then DosClose(ChildErr);
  end;

  if RC <> 0 then
  begin
    if UsePipes then
    begin
      DosClose(ParentIn); DosClose(ParentOut);
      if ParentOut2 <> 0 then DosClose(ParentOut2);
    end;
    Raise EProcess.CreateFmt(SErrCannotExecute, [FCommandLine, RC]);
  end;

  { For deAsyncResult the child PID is returned in Res.PID. }
  FProcessID     := Res.PID;
  FProcessHandle := Res.PID;
  FThreadHandle  := 0;
  FThreadID      := 0;
  FRunning       := True;

  if UsePipes then
  begin
    if poStderrToOutPut in FProcessOptions then
      CreateStreams(ParentIn, ParentOut, ParentOut)
    else
      CreateStreams(ParentIn, ParentOut, ParentOut2);
  end;
end;

Function TProcess.WaitOnExit : Boolean;
var
  Res     : TResultCodes;
  TermPID : Cardinal;
begin
  Result := False;
  if FProcessID = 0 then
    Exit;
  { Blocking wait for the child to finish. }
  if DosWaitChild(dpProcess, 0 {DCWW_WAIT}, Res, TermPID, Cardinal(FProcessID)) = 0 then
  begin
    FExitCode := Res.ExitCode;
    FRunning  := False;
    Result    := True;
  end;
end;

Function TProcess.Suspend : Longint;
begin
  { OS/2 DosSuspendThread operates on threads, not whole processes; whole-
    process suspend is not exposed here. }
  Result := -1;
end;

Function TProcess.Resume : LongInt;
begin
  Result := -1;
end;

Function TProcess.Terminate(AExitCode : Integer) : Boolean;
begin
  Result := False;
  if FProcessID <> 0 then
    Result := DosKillProcess(dpProcess, Cardinal(FProcessID)) = 0;
end;

Procedure TProcess.SetShowWindow (Value : TShowWindowOptions);
begin
  { No windowed sessions are managed here. }
end;
