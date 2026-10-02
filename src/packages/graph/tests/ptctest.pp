{ fpc264irc ptc runtime test — byte, 2026-10-02
  Opens a ptc console (320x200, 32-bit surface), copies a test pattern to it,
  reads the console back and writes RESULT.TXT. No key input needed. }
program ptctest;
{$MODE objfpc}
uses ptc, SysUtils;
var
  f: text;
  console: IPTCConsole;
  surface: IPTCSurface;
  format: IPTCFormat;
  px: PUint32;
  back: PUint32;
begin
  assign(f, 'RESULT.TXT'); rewrite(f);
  try
    console := TPTCConsoleFactory.CreateNew;
    format := TPTCFormatFactory.CreateNew(32, $00FF0000, $0000FF00, $000000FF);
    console.open('ptctest', 320, 200, format);
    writeln(f, 'open OK ', console.width, 'x', console.height, ' bits=', console.format.bits, ' name=', console.name);
    surface := TPTCSurfaceFactory.CreateNew(console.width, console.height, format);
    px := surface.lock;
    px[10 + 20 * surface.width] := $00FF0000;
    px[25 + 25 * surface.width] := $0000FF00;
    surface.unlock;
    surface.copy(console);
    console.update;
    back := surface.lock;
    writeln(f, 'surface readback red=', IntToHex(back[10 + 20 * surface.width], 8),
               ' green=', IntToHex(back[25 + 25 * surface.width], 8));
    surface.unlock;
    console.close;
    writeln(f, 'close OK');
  except
    on e: Exception do writeln(f, 'ERROR ', e.ClassName, ': ', e.Message);
  end;
  writeln(f, 'DONE');
  close(f);
end.
