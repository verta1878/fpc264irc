{ doordemo — Example BBS door using doorkit86
  Compile: build-dos.sh doordemo.pas
  Run: DOORDEMO.EXE [DOOR.SYS]  (or just run for local mode) }
program doordemo;
uses dos, doorkit86;
var
  choice: string;
  score: integer;
  r: registers;
  guess, target: integer;
begin
  { Init — pass command line arg as drop file, or '' for local }
  if ParamCount > 0 then
    DoorInit(ParamStr(1))
  else
    DoorInit('');

  DoorColor(acLightCyan, acBlack);
  DoorWriteLn('=======================================');
  DoorWriteLn('   DOORKIT86 DEMO DOOR v1.0');
  DoorWriteLn('   Built with FPC 2.6.4irc i8086');
  DoorWriteLn('=======================================');
  DoorColor(acLightGray, acBlack);
  DoorWriteLn('');

  if DoorUser.Name <> '' then
    DoorWriteLn('Welcome, ' + DoorUser.Name + '!')
  else
    DoorWriteLn('Welcome, Local User!');

  DoorWriteLn('Time remaining: ' + IntToStr(DoorUser.TimeLeft) + ' min');
  if FossilOK then
    DoorWriteLn('FOSSIL: active')
  else
    DoorWriteLn('Mode: Local (no FOSSIL)');
  DoorWriteLn('');

  { Simple number guessing game }
  DoorColor(acYellow, acBlack);
  DoorWriteLn('--- Number Guessing Game ---');
  DoorColor(acLightGray, acBlack);

  { Get a "random" number from DOS timer }
  r.ah := $2C;
  MsDos(r);
  target := (r.dl mod 10) + 1;  { 1-10 }
  score := 0;

  DoorWriteLn('I am thinking of a number 1-10.');
  repeat
    choice := DoorInput('Your guess (Q to quit): ', 2, 60);
    if (choice = 'Q') or (choice = 'q') then break;
    Val(choice, guess);
    Inc(score);
    if guess = target then
    begin
      DoorColor(acLightGreen, acBlack);
      DoorWriteLn('Correct! You got it in ' + IntToStr(score) + ' tries!');
      DoorColor(acLightGray, acBlack);
      break;
    end
    else if guess < target then
      DoorWriteLn('Higher!')
    else
      DoorWriteLn('Lower!');
  until score >= 10;

  if score >= 10 then
    DoorWriteLn('Out of guesses! It was ' + IntToStr(target));

  DoorWriteLn('');
  DoorPause;
  DoorShutdown;
end.
