{%MainUnit customdrawnint.pas}
{ OS/2 PM backend for customdrawn widgetset }

procedure TCDWidgetSet.BackendCreate;
begin
  Hab := OS2_Initialize;
  Hmq := OS2_CreateMsgQueue(Hab);
end;

procedure TCDWidgetSet.BackendDestroy;
begin
  OS2_DestroyMsgQueue(Hmq);
  OS2_Terminate(Hab);
end;

procedure TCDWidgetSet.AppInit(var ScreenInfo: TScreenInfo);
begin
  ScreenInfo.PixelsPerInchX := 96;
  ScreenInfo.PixelsPerInchY := 96;
  ScreenInfo.ColorDepth := 24;
end;

procedure TCDWidgetSet.AppRun(const ALoop: TApplicationMainLoop);
var
  AMsg: TOS2Msg;
begin
  if Assigned(ALoop) then
    ALoop
  else
  begin
    while OS2_GetMsg(Hab, AMsg) do
      OS2_DispatchMsg(Hab, AMsg);
  end;
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
var
  AMsg: TOS2Msg;
begin
  while OS2_PeekMsg(Hab, AMsg) do
    OS2_DispatchMsg(Hab, AMsg);
end;

procedure TCDWidgetSet.AppWaitMessage;
var
  AMsg: TOS2Msg;
begin
  if OS2_GetMsg(Hab, AMsg) then
    OS2_DispatchMsg(Hab, AMsg);
end;

procedure TCDWidgetSet.AppTerminate;
begin
  OS2_PostQuit(Hab);
end;

function TCDWidgetSet.GetAppHandle: THandle;
begin Result := Hab; end;

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
