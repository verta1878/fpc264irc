{ doorkit86 — DOS BBS door framework for FPC i8086
  Demonstrates: writeln, strings, file I/O, dos unit, Intr(),
  FOSSIL INT 14h, ANSI output, drop file parsing.

  Compile: build-dos.sh doorkit86.pas
  Run:     doorkit86.exe (standalone or from BBS door.sys)

  Part of fpc264irc — the Free Pascal 2.6.4irc project.
  Copyright (c) 2026 fpc264irc contributors
  License: GPLv3+ (see examples/LICENSE) }

program doorkit86;

uses dos;

const
  VERSION = '1.0';
  FOSSIL_PORT = 0;     { COM1 }

type
  TDropInfo = record
    ComPort   : byte;
    BaudRate  : longint;
    UserName  : string[35];
    TimeLeft  : word;     { minutes }
    NodeNum   : byte;
    LocalMode : boolean;
  end;

var
  Drop     : TDropInfo;
  IsLocal  : boolean;

{ ── ANSI helpers ──────────────────────────────────────────── }

procedure AnsiColor(fg, bg: byte);
begin
  write(#27'[', fg, ';', bg, 'm');
end;

procedure AnsiCls;
begin
  write(#27'[2J'#27'[1;1H');
end;

procedure AnsiXY(x, y: byte);
begin
  write(#27'[', y, ';', x, 'H');
end;

{ ── FOSSIL driver interface ──────────────────────────────── }

function FossilInit(port: byte): boolean;
var r: registers;
begin
  r.ah := $04;           { FOSSIL init }
  r.dx := port;
  Intr($14, r);
  FossilInit := (r.ax = $1954);
end;

procedure FossilDeinit(port: byte);
var r: registers;
begin
  r.ah := $05;           { FOSSIL deinit }
  r.dx := port;
  Intr($14, r);
end;

procedure FossilWriteChar(port: byte; ch: char);
var r: registers;
begin
  r.ah := $01;           { write char with wait }
  r.al := ord(ch);
  r.dx := port;
  Intr($14, r);
end;

function FossilReadChar(port: byte): char;
var r: registers;
begin
  r.ah := $02;           { read char with wait }
  r.dx := port;
  Intr($14, r);
  FossilReadChar := chr(r.al);
end;

function FossilCharReady(port: byte): boolean;
var r: registers;
begin
  r.ah := $03;           { status }
  r.dx := port;
  Intr($14, r);
  FossilCharReady := (r.ah and $01) <> 0;
end;

procedure FossilWriteStr(port: byte; const s: string);
var i: integer;
begin
  for i := 1 to Length(s) do
    FossilWriteChar(port, s[i]);
end;

{ ── Drop file parser (DOOR.SYS) ─────────────────────────── }

function ParseDropFile(const fn: string; var info: TDropInfo): boolean;
var
  f: text;
  line: string;
  code: integer;
begin
  ParseDropFile := false;
  info.LocalMode := true;
  info.UserName := 'Local User';
  info.TimeLeft := 60;
  info.NodeNum := 1;
  info.ComPort := 0;
  info.BaudRate := 0;

  Assign(f, fn);
  {$I-} Reset(f); {$I+}
  if IOResult <> 0 then exit;

  { Line 1: COM port (COM1: or COM0: for local) }
  ReadLn(f, line);
  if (Length(line) >= 4) and (line[4] >= '1') and (line[4] <= '4') then
  begin
    info.ComPort := ord(line[4]) - ord('1');
    info.LocalMode := false;
  end;

  { Line 2: baud rate }
  ReadLn(f, line);
  Val(line, info.BaudRate, code);

  { Skip lines 3-6 }
  ReadLn(f, line); ReadLn(f, line); ReadLn(f, line); ReadLn(f, line);

  { Line 7: user first name }
  ReadLn(f, info.UserName);

  { Skip to line 18: time remaining }
  ReadLn(f, line); ReadLn(f, line); ReadLn(f, line);
  ReadLn(f, line); ReadLn(f, line); ReadLn(f, line);
  ReadLn(f, line); ReadLn(f, line); ReadLn(f, line);
  ReadLn(f, line); ReadLn(f, line);
  ReadLn(f, line);
  Val(line, info.TimeLeft, code);

  Close(f);
  ParseDropFile := true;
end;

{ ── Output routing (local + remote) ─────────────────────── }

procedure DoorWrite(const s: string);
begin
  write(s);
  if not IsLocal then
    FossilWriteStr(Drop.ComPort, s);
end;

procedure DoorWriteLn(const s: string);
begin
  DoorWrite(s + #13#10);
end;

{ ── Main ─────────────────────────────────────────────────── }

var
  y, m, d, dow: word;
  h, mi, sec, s100: word;
  hasFossil: boolean;
  choice: char;
  logf: text;

begin
  { Parse drop file if available }
  ParseDropFile('DOOR.SYS', Drop);
  IsLocal := Drop.LocalMode;

  { Try FOSSIL init }
  if not IsLocal then
  begin
    hasFossil := FossilInit(Drop.ComPort);
    if not hasFossil then
    begin
      writeln('FOSSIL driver not found — running in local mode.');
      IsLocal := true;
    end;
  end;

  { Welcome screen }
  AnsiCls;
  AnsiColor(1, 37);
  DoorWriteLn('╔══════════════════════════════════════════╗');
  DoorWriteLn('║                                          ║');
  AnsiColor(1, 33);
  DoorWrite  ('║    doorkit86 v' + VERSION);
  DoorWriteLn('                          ║');
  AnsiColor(1, 37);
  DoorWriteLn('║    FPC 2.6.4irc i8086 DOS Door Kit       ║');
  DoorWriteLn('║                                          ║');
  DoorWriteLn('╚══════════════════════════════════════════╝');
  AnsiColor(0, 37);
  DoorWriteLn('');

  { User info }
  DoorWriteLn('Hello, ' + Drop.UserName + '!');
  DoorWriteLn('Time remaining: ' + chr(Drop.TimeLeft div 10 + 48) +
              chr(Drop.TimeLeft mod 10 + 48) + ' minutes');

  { System info }
  DoorWriteLn('');
  AnsiColor(1, 36);
  DoorWriteLn('── System Info ──');
  AnsiColor(0, 37);
  DoorWriteLn('DOS version: ' + chr(Lo(DosVersion) + 48) + '.' +
              chr(Hi(DosVersion) + 48));
  GetDate(y, m, d, dow);
  DoorWriteLn('Date: ' + chr(m div 10 + 48) + chr(m mod 10 + 48) + '/' +
              chr(d div 10 + 48) + chr(d mod 10 + 48) + '/' +
              chr((y mod 100) div 10 + 48) + chr(y mod 100 mod 10 + 48));
  GetTime(h, mi, sec, s100);
  DoorWriteLn('Time: ' + chr(h div 10 + 48) + chr(h mod 10 + 48) + ':' +
              chr(mi div 10 + 48) + chr(mi mod 10 + 48));

  if IsLocal then
    DoorWriteLn('Mode: LOCAL')
  else
    DoorWriteLn('Mode: REMOTE (COM' + chr(Drop.ComPort + 49) + ')');

  { Demo menu }
  DoorWriteLn('');
  AnsiColor(1, 33);
  DoorWriteLn('── Menu ──');
  AnsiColor(0, 37);
  DoorWriteLn('[F] Write a file');
  DoorWriteLn('[Q] Quit');
  DoorWriteLn('');
  DoorWrite('Choice: ');

  { Simple input — just demonstrate file I/O }
  { In a real door, you'd read from FOSSIL too }
  choice := 'F';
  DoorWriteLn(choice);

  if (choice = 'F') or (choice = 'f') then
  begin
    Assign(logf, 'DOORKIT.LOG');
    Rewrite(logf);
    writeln(logf, 'doorkit86 v' + VERSION + ' was here!');
    writeln(logf, 'User: ' + Drop.UserName);
    GetDate(y, m, d, dow);
    GetTime(h, mi, sec, s100);
    writeln(logf, 'Date: ', y, '-', m, '-', d);
    writeln(logf, 'Time: ', h, ':', mi, ':', sec);
    Close(logf);
    DoorWriteLn('Wrote DOORKIT.LOG');
  end;

  DoorWriteLn('');
  DoorWriteLn('Thanks for trying doorkit86!');

  { FOSSIL cleanup }
  if not IsLocal and hasFossil then
    FossilDeinit(Drop.ComPort);
end.
