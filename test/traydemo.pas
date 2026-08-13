program traydemo;
{ Demo for utrayit - builds on every FPC 2.6.4irc target.
    Windows : trays the console for 10 seconds (click the icon to
              restore it early), then restores automatically.
    Unix    : iconifies the terminal for 3 seconds via XTWINOPS,
              then de-iconifies (xterm-compatible emulators).
    DOS/OS2 : reports that the feature is unavailable and exits. }
{$mode objfpc}{$H+}

uses
  SysUtils, utrayit;

procedure Pause(ms: LongInt);
begin
  Sleep(ms);
end;

var
  t: TTrayIt;
  i: Integer;
begin
  WriteLn('utrayit demo');
  WriteLn('  console minimize supported: ', TTrayIt.ConsoleSupported);
  WriteLn('  tray supported:             ', TTrayIt.TraySupported);

  t := TTrayIt.Create;
  try
    if TTrayIt.TraySupported then
    begin
      WriteLn('Sending console to the tray for ~10s (click icon to restore)...');
      if t.TrayConsole('traydemo - click to restore') then
      begin
        for i := 1 to 10 do Pause(1000);
        t.UnTrayConsole;
        WriteLn('Back from the tray.');
      end
      else
        WriteLn('TrayConsole failed.');
    end
    else if TTrayIt.ConsoleSupported then
    begin
      WriteLn('Minimizing terminal for ~3s (XTWINOPS)...');
      if t.MinimizeConsole then
      begin
        for i := 1 to 3 do Pause(1000);
        t.RestoreConsole;
        WriteLn('Restored.');
      end
      else
        WriteLn('Terminal did not accept the sequence.');
    end
    else
      WriteLn('Console minimize is not available on this platform.');
  finally
    t.Free;
  end;
end.
