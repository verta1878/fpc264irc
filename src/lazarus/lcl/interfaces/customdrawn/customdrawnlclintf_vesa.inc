{%MainUnit customdrawnint.pas}
{ DOS VGA/VESA timer stubs }

function TCDWidgetSet.CreateTimer(Interval: integer; TimerFunc: TWSTimerProc): THandle;
begin
  Result := 0; // DOS: no native timer support
end;

function TCDWidgetSet.DestroyTimer(TimerHandle: THandle): boolean;
begin
  Result := True;
end;
