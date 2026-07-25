{%MainUnit customdrawnint.pas}
{ DOS VGA/VESA WinAPI stubs for customdrawn widgetset }

function TCDWidgetSet.ClientToScreen(Handle: HWND; var P: TPoint): Boolean;
begin Result := False; end;

function TCDWidgetSet.ClipboardGetData(ClipboardType: TClipboardType; FormatID: TClipboardFormat; Stream: TStream): Boolean;
begin Result := False; end;

function TCDWidgetSet.ClipboardGetOwnerShip(ClipboardType: TClipboardType; OnRequestProc: TClipboardRequestEvent; FormatCount: integer; Formats: PClipboardFormat): Boolean;
begin Result := False; end;

procedure TCDWidgetSet.BackendListFontPaths(var AFontPaths: TStringList; var AFontList: THashedStringList);
begin end;

function TCDWidgetSet.BackendGetFontPath(const LogFont: LOGFONTA; const LongFontName: string): string;
begin Result := ''; end;

function TCDWidgetSet.EnumFontFamiliesEx(DC: HDC; lpLogFont: PLogFontA; Callback: FontEnumExProc; lParam: LPARAM; flags: DWord): LongInt;
begin Result := 0; end;

function TCDWidgetSet.BackendGetClientBounds(handle: HWND; var ARect: TRect): Boolean;
begin Result := False; ARect := Bounds(0, 0, 0, 0); end;

function TCDWidgetSet.GetCursorPos(var lpPoint: TPoint): Boolean;
begin Result := False; lpPoint.X := 0; lpPoint.Y := 0; end;

function TCDWidgetSet.GetDeviceCaps(DC: HDC; Index: Integer): Integer;
begin Result := 0; end;

function TCDWidgetSet.GetKeyState(nVirtKey: Integer): SmallInt;
begin Result := 0; end;

function TCDWidgetSet.GetSystemMetrics(nIndex: Integer): Integer;
begin Result := 0; end;

function TCDWidgetSet.BackendGetWindowRelativePosition(Handle: HWND; var Left, Top: Integer): Boolean;
begin Result := False; Left := 0; Top := 0; end;

function TCDWidgetSet.BackendGetWindowSize(Handle: HWND; var Width, Height: Integer): Boolean;
begin Result := False; Width := 0; Height := 0; end;

function TCDWidgetSet.BackendInvalidateRect(aHandle: HWND; Rect: pRect; bErase: Boolean): Boolean;
begin Result := False; end;

function TCDWidgetSet.BackendSetFocus(hWnd: HWND): HWND;
begin Result := 0; end;

function TCDWidgetSet.MessageBox(hWnd: HWND; lpText, lpCaption: PChar; uType: Cardinal): Integer;
begin Result := 0; end;

function TCDWidgetSet.PromptUser(const DialogCaption, DialogMessage: String; DialogType: LongInt; Buttons: PLongint; ButtonCount, DefaultIndex, EscapeResult: LongInt): LongInt;
begin Result := EscapeResult; end;

function TCDWidgetSet.AskUser(const DialogCaption, DialogMessage: String; DialogType: LongInt; Buttons: TDialogButtons; HelpCtx: LongInt): LongInt;
begin Result := mrCancel; end;

function TCDWidgetSet.RawImage_FromDevice(out ARawImage: TRawImage; ADC: HDC; const ARect: TRect): Boolean;
begin Result := False; end;

function TCDWidgetSet.ScreenToClient(Handle: HWND; var P: TPoint): Integer;
begin Result := 0; end;

