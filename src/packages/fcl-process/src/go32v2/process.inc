{ process.inc for go32v2 — stub (no process spawning on DOS) }

Procedure TProcess.CloseProcessHandles;
begin
end;

Function TProcess.PeekExitStatus : Boolean;
begin
  Result := True;
end;

function TProcess.WaitOnExit : Boolean;
begin
  Result := True;
end;

procedure TProcess.SetShowWindow(Value: TShowWindowOptions);
begin
end;

procedure TProcess.Execute;
begin

end;

function TProcess.Resume: LongInt;
begin
  Result := 0;
end;

function TProcess.Suspend: LongInt;
begin
  Result := 0;
end;

function TProcess.Terminate(AExitCode: LongInt): Boolean;
begin
end;
