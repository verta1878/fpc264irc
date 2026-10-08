program crttest;
{ fpc264irc Mac test 2: crt unit - colours, cursor positioning, keyboard }
uses crt;
var c: byte; k: char;
begin
  clrscr;
  for c := 1 to 15 do
  begin
    textcolor(c);
    gotoxy(5, c + 1);
    write('fpc264irc Mac crt colour ', c);
  end;
  textcolor(7);
  gotoxy(5, 18); write('Screen: ', ScreenWidth, 'x', ScreenHeight, '   press a key...');
  k := readkey;
  gotoxy(5, 19); writeln('you pressed #', ord(k));
end.
