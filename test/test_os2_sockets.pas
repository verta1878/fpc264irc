{
  test_os2_sockets.pas — OS/2 (EMX) sockets verification test

  Proves:
    1. Uses Sockets compiles for OS/2 EMX target
    2. Links against OS/2 TCP/IP stack (so32dll.dll / tcp32dll.dll)
    3. All socket API symbols resolve via FPC's os2/sockets.pas + winsock.pas
    4. The patched binutils handles N_IMP1/N_IMP2 EMX import symbols

  Build (from Linux cross with patched binutils + emxbind):
    ppc386 -Temx -Furtl/units/i386-emx test_os2_sockets.pas

  Run (on OS/2 / eComStation / ArcaOS):
    test_os2_sockets.exe

  Expected output:
    FPC 2.6.4irc OS/2 Sockets Test
    [Byte] htons/ntohs/htonl/ntohl OK
    [Sock] Socket created
    [Opt]  SO_REUSEADDR set
    [Close] Socket closed
    ALL TESTS PASSED
}
program test_os2_sockets;

uses
  Sockets;

var
  Sock    : LongInt;
  Addr    : TInetSockAddr;
  OptVal  : LongInt;
  Err     : LongInt;
  AddrLen : LongInt;
  Passed  : Integer;
  Failed  : Integer;

procedure Check(const Name: String; OK: Boolean);
begin
  if OK then
  begin
    WriteLn('  PASS  ', Name);
    Inc(Passed);
  end
  else
  begin
    WriteLn('  FAIL  ', Name);
    Inc(Failed);
  end;
end;

begin
  Passed := 0;
  Failed := 0;

  WriteLn('FPC 2.6.4irc OS/2 Sockets Test');
  WriteLn;

  { Byte order }
  WriteLn('[Byte Order]');
  Check('htons(1) = 256', htons(1) = 256);
  Check('ntohs(256) = 1', ntohs(256) = 1);
  Check('htonl round-trip', htonl(ntohl($12345678)) = $12345678);
  WriteLn;

  { Address conversion }
  WriteLn('[Address Conversion]');
  Check('StrToHostAddr <> 0', StrToHostAddr('127.0.0.1').s_addr <> 0);
  Check('HostAddrToStr = 127.0.0.1', HostAddrToStr(StrToHostAddr('127.0.0.1')) = '127.0.0.1');
  WriteLn;

  { Socket creation }
  WriteLn('[Socket]');
  Sock := fpSocket(AF_INET, SOCK_STREAM, 0);
  Check('fpSocket >= 0', Sock >= 0);

  if Sock < 0 then
  begin
    WriteLn('Cannot continue without a socket.');
    Halt(1);
  end;

  { Socket options }
  WriteLn('[Options]');
  OptVal := 1;
  Err := fpSetSockOpt(Sock, SOL_SOCKET, SO_REUSEADDR, @OptVal, SizeOf(OptVal));
  Check('fpSetSockOpt(SO_REUSEADDR) = 0', Err = 0);
  WriteLn;

  { Bind }
  WriteLn('[Bind]');
  FillChar(Addr, SizeOf(Addr), 0);
  Addr.sin_family := AF_INET;
  Addr.sin_port := htons(19998);
  Addr.sin_addr.s_addr := 0;
  Err := fpBind(Sock, @Addr, SizeOf(Addr));
  Check('fpBind to port 19998 = 0', Err = 0);

  if Err = 0 then
  begin
    Err := fpListen(Sock, 5);
    Check('fpListen(5) = 0', Err = 0);
  end;

  { getsockname }
  WriteLn('[GetSockName]');
  FillChar(Addr, SizeOf(Addr), 0);
  AddrLen := SizeOf(Addr);
  Err := fpGetSockName(Sock, @Addr, @AddrLen);
  Check('fpGetSockName = 0', Err = 0);
  Check('family = AF_INET', Addr.sin_family = AF_INET);
  WriteLn;

  { Cleanup }
  WriteLn('[Cleanup]');
  Err := CloseSocket(Sock);
  Check('CloseSocket = 0', Err = 0);
  WriteLn;

  { Summary }
  WriteLn('=============================');
  WriteLn('Passed: ', Passed, '  Failed: ', Failed);
  if Failed = 0 then
    WriteLn('ALL TESTS PASSED')
  else
    WriteLn('SOME TESTS FAILED');
  WriteLn('=============================');

  if Failed > 0 then
    Halt(1);
end.
