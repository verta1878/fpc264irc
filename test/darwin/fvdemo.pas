program fvdemo;
{ fpc264irc Mac test 7: Free Vision text-mode application - menu bar, status line, a window and a message box.
  Alt+X or F10 -> File -> Exit quits. Shows the FV units (app, menus, dialogs, msgbox, views, drivers) work on the Mac (Terminal). }
uses objects, drivers, views, menus, dialogs, msgbox, app;
const cmAbout = 1001; cmNewWin = 1002;
type
  TDemoApp = object(TApplication)
    procedure InitMenuBar; virtual;
    procedure InitStatusLine; virtual;
    procedure HandleEvent(var Event: TEvent); virtual;
  end;
var
  DemoApp: TDemoApp; WinCount: integer;

procedure TDemoApp.InitMenuBar;
var R: TRect;
begin
  GetExtent(R); R.B.Y := R.A.Y + 1;
  MenuBar := New(PMenuBar, Init(R, NewMenu(
    NewSubMenu('~F~ile', hcNoContext, NewMenu(
      NewItem('~N~ew window', 'F3', kbF3, cmNewWin, hcNoContext,
      NewItem('~A~bout...', 'F1', kbF1, cmAbout, hcNoContext,
      NewLine(
      NewItem('E~x~it', 'Alt-X', kbAltX, cmQuit, hcNoContext, nil))))), nil))));
end;

procedure TDemoApp.InitStatusLine;
var R: TRect;
begin
  GetExtent(R); R.A.Y := R.B.Y - 1;
  StatusLine := New(PStatusLine, Init(R, NewStatusDef(0, $FFFF,
    NewStatusKey('~Alt-X~ Exit', kbAltX, cmQuit,
    NewStatusKey('~F3~ New window', kbF3, cmNewWin,
    NewStatusKey('~F1~ About', kbF1, cmAbout, nil))), nil)));
end;

procedure TDemoApp.HandleEvent(var Event: TEvent);
var R: TRect; W: PWindow;
begin
  inherited HandleEvent(Event);
  if Event.What = evCommand then
  begin
    case Event.Command of
      cmAbout: MessageBox(#3'fpc264irc Free Vision demo'#13#3'running on the Mac', nil, mfInformation or mfOKButton);
      cmNewWin:
        begin
          inc(WinCount);
          R.Assign(2 + WinCount * 2, 1 + WinCount, 42 + WinCount * 2, 11 + WinCount);
          W := New(PWindow, Init(R, 'Window', WinCount));
          InsertWindow(W);
        end;
    else exit;
    end;
    ClearEvent(Event);
  end;
end;

begin
  WinCount := 0;
  DemoApp.Init;
  DemoApp.Run;
  DemoApp.Done;
end.
