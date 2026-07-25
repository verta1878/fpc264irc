{%MainUnit customdrawnwsforms.pp}
{ DOS VGA/VESA implementation stubs for customdrawn forms }

class function TCDWSCustomForm.GetText(const AWinControl: TWinControl; var AText: String): Boolean;
begin
  AText := AWinControl.Caption;
  Result := True;
end;

class function TCDWSCustomForm.GetTextLen(const AWinControl: TWinControl; var ALength: Integer): Boolean;
begin
  ALength := Length(AWinControl.Caption);
  Result := True;
end;

class procedure TCDWSCustomForm.SetText(const AWinControl: TWinControl; const AText: String);
begin
  // TODO: WinSetWindowText when window handle available
end;

class function TCDWSCustomForm.GetClientBounds(const AWincontrol: TWinControl; var ARect: TRect): Boolean;
begin
  ARect := Bounds(0, 0, AWinControl.Width, AWinControl.Height);
  Result := True;
end;

class function TCDWSCustomForm.GetClientRect(const AWincontrol: TWinControl; var ARect: TRect): Boolean;
begin
  ARect := Bounds(0, 0, AWinControl.Width, AWinControl.Height);
  Result := True;
end;

class function TCDWSCustomForm.CreateHandle(const AWinControl: TWinControl;
  const AParams: TCreateParams): TLCLIntfHandle;
begin
  // TODO: WinCreateWindow
  Result := inherited CreateHandle(AWinControl, AParams);
end;

class procedure TCDWSCustomForm.DestroyHandle(const AWinControl: TWinControl);
begin
  inherited DestroyHandle(AWinControl);
end;

class procedure TCDWSCustomForm.SetIcon(const AForm: TCustomForm; const Small, Big: HICON);
begin
end;

class procedure TCDWSCustomForm.SetShowInTaskbar(const AForm: TCustomForm; const AValue: TShowInTaskbar);
begin
end;

class procedure TCDWSCustomForm.ShowModal(const ACustomForm: TCustomForm);
begin
end;

class procedure TCDWSCustomForm.ShowHide(const AWinControl: TWinControl);
begin
  inherited ShowHide(AWinControl);
end;

class function TCDWSCustomForm.DoCreateHandle(const AWinControl: TWinControl;
  const AParams: TCreateParams): TLCLIntfHandle;
begin
  Result := 0; // TODO: WinCreateWindow
end;

class procedure TCDWSCustomForm.DoShowHide(const AWinControl: TWinControl);
begin
  // TODO: WinShowWindow
end;

class procedure TCDWSCustomForm.SetBounds(const AWinControl: TWinControl;
  const ALeft, ATop, AWidth, AHeight: Integer);
begin
  // TODO: WinSetWindowPos
end;

class procedure TCDWSCustomForm.SetBorderIcons(const AForm: TCustomForm;
  const ABorderIcons: TBorderIcons);
begin
end;

class procedure TCDWSCustomForm.SetFormBorderStyle(const AForm: TCustomForm;
  const AFormBorderStyle: TFormBorderStyle);
begin
end;
