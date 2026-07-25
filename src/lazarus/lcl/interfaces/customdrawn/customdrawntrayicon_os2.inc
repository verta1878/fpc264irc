{%MainUnit customdrawnwsextctrls.pas}
{ OS/2 TrayIcon stubs }

class function TCDWSCustomTrayIcon.Hide(const ATrayIcon: TCustomTrayIcon): Boolean;
begin
  Result := False;
end;

class function TCDWSCustomTrayIcon.Show(const ATrayIcon: TCustomTrayIcon): Boolean;
begin
  Result := False;
end;

class procedure TCDWSCustomTrayIcon.InternalUpdate(const ATrayIcon: TCustomTrayIcon);
begin
end;

class function TCDWSCustomTrayIcon.ShowBalloonHint(const ATrayIcon: TCustomTrayIcon): Boolean;
begin
  Result := False;
end;

class function TCDWSCustomTrayIcon.GetPosition(const ATrayIcon: TCustomTrayIcon): TPoint;
begin
  Result := Point(0, 0);
end;
