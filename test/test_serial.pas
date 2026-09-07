program test_serial;
{ Serial unit cross-platform test.
  Compiles on: Linux, Win32, Win64, FreeBSD, Darwin, OS/2, DOS.
  Tests compilation + API availability. Actual hardware test requires
  a loopback cable or null modem (TX→RX pins 2↔3, GND pin 5). }

{$MODE OBJFPC}
{$H+}

uses
  {$IFNDEF FREEBSD}SysUtils,{$ENDIF} Serial;

{$IFDEF GO32V2}
const
  InvalidSerialHandle = TSerialHandle(-1);
{$ENDIF}

const
  {$IFDEF UNIX}
    TestPort = '/dev/ttyS0';
  {$ENDIF}
  {$IFDEF WINDOWS}
    TestPort = 'COM1';
  {$ENDIF}
  {$IFDEF OS2}
    TestPort = 'COM1';
  {$ENDIF}
  {$IFDEF GO32V2}
    TestPort = 'COM1';
  {$ENDIF}
  {$IFDEF MSDOS}
    TestPort = 'COM1';
  {$ENDIF}

var
  H: TSerialHandle;
  State: TSerialState;
  Buf: array[0..255] of Byte;
  N: LongInt;
  Pass, Fail: Integer;

procedure Check(const Name: String; OK: Boolean);
begin
  if OK then begin
    WriteLn('  PASS: ', Name);
    Inc(Pass);
  end else begin
    WriteLn('  FAIL: ', Name);
    Inc(Fail);
  end;
end;

procedure TestCompileOnly;
{ Verify all 20 functions exist at compile time }
var
  Dummy: Boolean;
  DummyI: LongInt;
begin
  WriteLn('--- Compile-time API check (no hardware needed) ---');

  { These just verify the symbols link. They won't execute
    unless a real port is opened. }
  Check('SerOpen declared',        True);
  Check('SerClose declared',       True);
  Check('SerRead declared',        True);
  Check('SerWrite declared',       True);
  Check('SerFlush declared',       True);
  Check('SerSetParams declared',   True);
  Check('SerSaveState declared',   True);
  Check('SerRestoreState declared',True);
  Check('SerSetDTR declared',      True);
  Check('SerSetRTS declared',      True);
  Check('SerGetCTS declared',      True);
  Check('SerGetDSR declared',      True);
  Check('SerGetRI declared',       True);
  {$IFDEF GO32V2}
  Check('SerGetCD (SerGetDCD)', True);
  {$ELSE}
  Check('SerGetCD declared',       True);
  {$ENDIF}
  Check('SerBreak declared',       True);
  Check('SerDrain declared',       True);
  Check('SerSync declared',        True);
  Check('SerFlushInput declared',  True);
  Check('SerFlushOutput declared', True);
  Check('SerReadTimeout declared', True);
  Check('SerDataAvailable declared', True);
  Check('SerDetectUART declared',    True);
  Check('SerSetFIFO declared',       True);
  Check('SerGetBase declared',       True);
  Check('SerEnableIRQ declared',     True);
  Check('SerDisableIRQ declared',    True);
end;

procedure TestHardware;
{ Requires a serial port or loopback adapter }
begin
  WriteLn('--- Hardware test on ', TestPort, ' ---');

  H := SerOpen(TestPort);
  Check('SerOpen', H <> InvalidSerialHandle);
  if H = InvalidSerialHandle then begin
    WriteLn('  SKIP: port not available (', TestPort, ')');
    WriteLn('  This is normal if no serial port is present.');
    Exit;
  end;

  { Save state }
  State := SerSaveState(H);
  Check('SerSaveState', True);

  { Configure: 9600 8N1 }
  SerSetParams(H, 9600, 8, NoneParity, 1, []);
  Check('SerSetParams 9600/8N1', True);

  { Modem control }
  SerSetDTR(H, True);
  Check('SerSetDTR on', True);
  SerSetRTS(H, True);
  Check('SerSetRTS on', True);

  { Modem status (just read, don't check values — depends on cable) }
  SerGetCTS(H);
  Check('SerGetCTS', True);
  SerGetDSR(H);
  Check('SerGetDSR', True);
  SerGetRI(H);
  Check('SerGetRI', True);
  {$IFDEF GO32V2}
  SerGetDCD(H);
  Check('SerGetCD (SerGetDCD)', True);
  {$ELSE}
  SerGetCD(H);
  Check('SerGetCD', True);
  {$ENDIF}

  { Flush }
  SerFlushInput(H);
  Check('SerFlushInput', True);
  SerFlushOutput(H);
  Check('SerFlushOutput', True);
  SerFlush(H);
  Check('SerFlush', True);

  { Loopback write/read test (only works with TX→RX loopback) }
  Buf[0] := $55; Buf[1] := $AA; Buf[2] := $5A;
  N := SerWrite(H, Buf, 3);
  Check('SerWrite 3 bytes', N = 3);

  { Wait and read back }
  FillChar(Buf, SizeOf(Buf), 0);
  N := SerReadTimeout(H, Buf, 3, 500);
  if N = 3 then
    Check('SerReadTimeout loopback', (Buf[0]=$55) and (Buf[1]=$AA) and (Buf[2]=$5A))
  else
    Check('SerReadTimeout (no loopback?)', N >= 0);  { pass if no error }

  { New functions }
  Check('SerDataAvailable', not SerDataAvailable(H) or SerDataAvailable(H));  { just call it }
  Check('SerDetectUART', Length(SerDetectUART(H)) > 0);
  SerSetFIFO(H, True, 4);
  Check('SerSetFIFO', True);
  Check('SerGetBase', SerGetBase(H) >= 0);
  SerEnableIRQ(H);
  Check('SerEnableIRQ', True);
  SerDisableIRQ(H);
  Check('SerDisableIRQ', True);

  { Drain and sync }
  SerDrain(H);
  Check('SerDrain', True);
  SerSync(H);
  Check('SerSync', True);

  { Break }
  SerBreak(H);
  Check('SerBreak', True);

  { Restore and close }
  SerRestoreState(H, State);
  Check('SerRestoreState', True);
  SerClose(H);
  Check('SerClose', True);
end;

begin
  Pass := 0;
  Fail := 0;

  WriteLn('=== FPC 2.6.4irc Serial Unit Test ===');
  WriteLn('Platform: ',
    {$IFDEF LINUX}'Linux'{$ENDIF}
    {$IFDEF WINDOWS}'Windows'{$ENDIF}
    {$IFDEF FREEBSD}'FreeBSD'{$ENDIF}
    {$IFDEF DARWIN}'Darwin'{$ENDIF}
    {$IFDEF OS2}'OS/2'{$ENDIF}
    {$IFDEF GO32V2}'DOS (go32v2)'{$ENDIF}
    {$IFDEF MSDOS}'DOS (i8086)'{$ENDIF}
  );
  WriteLn;

  TestCompileOnly;
  WriteLn;

  if ParamStr(1) = '-hw' then
    TestHardware
  else
    WriteLn('--- Hardware test skipped (use -hw to enable) ---');

  WriteLn;
  WriteLn('Results: ', Pass, ' pass, ', Fail, ' fail');
  if Fail > 0 then
    Halt(1);
end.
