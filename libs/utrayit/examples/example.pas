{$mode objfpc}{$H+}
program TrayExample;

{$IFDEF WINDOWS}
  {$R trayicon.res}
{$ENDIF}

uses
  SysUtils, utrayit;

var
  Tray: TTrayIt;
begin
  WriteLn('Console Tray Example');
  WriteLn('Press ENTER to minimize to tray...');
  ReadLn;

  Tray := TTrayIt.Create;

  if Tray.TrayConsole('My App - click tray icon to restore') then
    WriteLn('Minimized to tray. Click the icon to restore.')
  else
    WriteLn('Tray not supported on this platform.');

  WriteLn('Press ENTER to restore and exit...');
  ReadLn;

  Tray.UnTrayConsole;
  Tray.Free;

  WriteLn('Done.');
end.
