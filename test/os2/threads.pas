program threads;
{ fpc264irc OS/2 test 6: threads - BeginThread, a critical section, WaitForThreadTerminate.
  Four threads each add 1 to a shared counter 100000 times; the result must be exactly 400000. }
{$mode objfpc}
uses sysutils;
const N = 4; LOOPS = 100000;
var cs: TRTLCriticalSection; counter: longint; ids: array[1..N] of TThreadID; i: integer;

function Worker(p: pointer): ptrint;
var k: longint;
begin
  for k := 1 to LOOPS do
  begin
    EnterCriticalSection(cs);
    inc(counter);
    LeaveCriticalSection(cs);
  end;
  Result := ptrint(p);
end;

begin
  writeln('fpc264irc OS/2 test 6: threads');
  InitCriticalSection(cs);
  counter := 0;
  for i := 1 to N do ids[i] := BeginThread(@Worker, pointer(ptrint(i)));
  for i := 1 to N do writeln('thread ', i, ' finished, exit code ', WaitForThreadTerminate(ids[i], 0));
  DoneCriticalSection(cs);
  if counter = N * LOOPS then writeln('counter = ', counter, '  OK')
  else writeln('counter = ', counter, '  WRONG (expected ', N * LOOPS, ')');
  writeln('test 6 done');
end.
