{%MainUnit customdrawnint.pas}
{ OS/2 PM LCLIntf implementation }

function TCDWidgetSet.CreateTimer(Interval: integer; TimerFunc: TWSTimerProc): THandle;
begin
  Result := 0; // TODO: implement with WinStartTimer
end;

function TCDWidgetSet.DestroyTimer(TimerHandle: THandle): boolean;
begin
  Result := True; // TODO: implement with WinStopTimer
end;
