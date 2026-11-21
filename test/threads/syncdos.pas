program syncdos;
{ fpc264irc BUG-051 test: syncobjs on single-threaded DOS (go32v2, i8086-msdos) - byte, 2026-11-20 }
{$mode objfpc}{$H+}
uses sysutils, syncobjs;
var bad: integer = 0;
procedure chk(ok: boolean; const s: string);
begin if ok then writeln('OK   ', s) else begin writeln('BAD  ', s); inc(bad); end; end;
var cs: TCriticalSection; ev: TEvent; se: TSimpleEvent; r: TWaitResult;
begin
  cs := TCriticalSection.Create;
  cs.Enter; cs.Enter; chk(cs.TryEnter, 'TryEnter'); cs.Leave; cs.Leave; cs.Leave; cs.Acquire; cs.Release;
  cs.Free; chk(true, 'TCriticalSection enter/leave');
  ev := TEvent.Create(nil, false, false, '');                      { auto reset, not set }
  chk(ev.WaitFor(0) = wrTimeout, 'auto event not set -> wrTimeout');
  chk(ev.WaitFor(INFINITE) = wrError, 'auto event not set, INFINITE -> wrError (no hang)');
  ev.SetEvent; chk(ev.WaitFor(INFINITE) = wrSignaled, 'auto event set -> wrSignaled');
  chk(ev.WaitFor(0) = wrTimeout, 'auto event cleared after wait');
  chk(not ev.ManualReset, 'ManualReset false');
  ev.Free;
  se := TSimpleEvent.Create;                                        { manual reset }
  se.SetEvent; chk(se.WaitFor(0) = wrSignaled, 'manual event set'); chk(se.WaitFor(0) = wrSignaled, 'manual event stays set');
  se.ResetEvent; r := se.WaitFor(55); chk(r = wrTimeout, 'manual event reset -> wrTimeout after 55 ms');
  chk(se.ManualReset, 'ManualReset true'); chk(se.Handle <> nil, 'Handle'); chk(se.LastError = 0, 'LastError');
  se.Free;
  if bad = 0 then writeln('ALL OK') else writeln('FAILED ', bad);
end.
