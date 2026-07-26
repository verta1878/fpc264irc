{ tthread.inc for go32v2 — single-threaded DOS stubs }
{ Only methods NOT already in classes.inc }

procedure TThread.CallOnTerminate;
begin
  if Assigned(FOnTerminate) then FOnTerminate(Self);
end;

function TThread.GetPriority: TThreadPriority;
begin
  Result := tpNormal;
end;

procedure TThread.SetPriority(Value: TThreadPriority);
begin
end;

procedure TThread.SetSuspended(Value: Boolean);
begin
end;

procedure TThread.DoTerminate;
begin
  CallOnTerminate;
end;

constructor TThread.Create(CreateSuspended: Boolean;
                           const StackSize: SizeUInt = DefaultStackSize);
begin
  inherited Create;
  FTerminated := False;
  FSuspended := CreateSuspended;
  if not CreateSuspended then
    Execute;
end;

destructor TThread.Destroy;
begin
  inherited Destroy;
end;

procedure TThread.Resume;
begin
  if FSuspended then begin
    FSuspended := False;
    Execute;
  end;
end;

procedure TThread.Suspend;
begin
  FSuspended := True;
end;

procedure TThread.Terminate;
begin
  FTerminated := True;
end;

function TThread.WaitFor: Integer;
begin
  Result := 0; { single-threaded — already done }
end;
