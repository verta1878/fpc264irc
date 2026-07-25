{%MainUnit customdrawnint.pas}
{ DOS VGA/VESA backend for customdrawn widgetset }

procedure TCDWidgetSet.BackendCreate;
begin
  // VESA initialization deferred to AppInit
end;

procedure TCDWidgetSet.BackendDestroy;
begin
  VESA_CloseGraph;
end;

procedure TCDWidgetSet.AppInit(var ScreenInfo: TScreenInfo);
begin
  // Initialize 640x480x256 VESA mode
  VESA_InitGraph(m640x480x256);
  ScreenInfo.PixelsPerInchX := 96;
  ScreenInfo.PixelsPerInchY := 96;
  ScreenInfo.ColorDepth := 8;
end;

procedure TCDWidgetSet.AppRun(const ALoop: TApplicationMainLoop);
begin
  if Assigned(ALoop) then
    ALoop;
  // DOS is single-threaded — the app loop runs until exit
end;

procedure TCDWidgetSet.AppMinimize;
begin
end;

procedure TCDWidgetSet.AppRestore;
begin
end;

procedure TCDWidgetSet.AppBringToFront;
begin
end;

procedure TCDWidgetSet.AppProcessMessages;
begin
  // DOS: no message queue. Check keyboard/mouse directly.
end;

procedure TCDWidgetSet.AppWaitMessage;
begin
  // DOS: block until key/mouse
end;

procedure TCDWidgetSet.AppTerminate;
begin
  VESA_CloseGraph;
  Halt(0);
end;

function TCDWidgetSet.GetAppHandle: THandle;
begin
  Result := 0;
end;

procedure TCDWidgetSet.AppSetIcon(const Small, Big: HICON);
begin end;

procedure TCDWidgetSet.AppSetTitle(const ATitle: String);
begin end;

procedure TCDWidgetSet.AppSetVisible(const AVisible: Boolean);
begin end;

function TCDWidgetSet.AppRemoveStayOnTopFlags(const ASystemTopAlso: Boolean = False): Boolean;
begin Result := False; end;

function TCDWidgetSet.AppRestoreStayOnTopFlags(const ASystemTopAlso: Boolean = False): Boolean;
begin Result := False; end;

procedure TCDWidgetSet.AppSetMainFormOnTaskBar(const DoSet: Boolean);
begin end;

procedure TCDWidgetSet.ShowVirtualKeyboard;
begin end;

procedure TCDWidgetSet.HideVirtualKeyboard;
begin end;

function TCDWidgetSet.IsMobilePlatform: Boolean;
begin Result := False; end;
