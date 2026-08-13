{
  test_darwin_sockets.pas — macOS (Darwin) sockets verification test

  Proves:
    1. Uses Sockets compiles for Darwin (i386 and x86_64)
    2. Same Unix Sockets API as Linux/FreeBSD
    3. Cross-compilation or native build works

  Build (native on macOS):
    ppc386 test_darwin_sockets.pas
    or
    ppcx64 test_darwin_sockets.pas

  Build (cross from Linux — needs Darwin binutils/SDK):
    ppc386 -Tdarwin -Furtl/units/i386-darwin test_darwin_sockets.pas

  Run (on macOS):
    ./test_darwin_sockets
}
program test_darwin_sockets;

uses
  Sockets;

var
  Sock    : LongInt;
  Addr    : TInetSockAddr;
  OptVal  : LongInt;
  OptLen  : LongInt;
  Err     : LongInt;
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
    WriteLn('  FAIL  ', Name, ' (errno=', SocketError, ')');
    Inc(Failed);
  end;
end;

begin
  Passed := 0;
  Failed := 0;

  WriteLn('FPC 2.6.4irc macOS (Darwin) Sockets Test');
  WriteLn;

  WriteLn('[Byte Order]');
  Check('htons(1) = 256', htons(1) = 256);
  Check('ntohs(256) = 1', ntohs(256) = 1);
  Check('htonl round-trip', htonl(ntohl($12345678)) = $12345678);
  WriteLn;

  WriteLn('[Address Conversion]');
  Check('StrToHostAddr <> 0', StrToHostAddr('127.0.0.1').s_addr <> 0);
  Check('HostAddrToStr = 127.0.0.1',
    HostAddrToStr(StrToHostAddr('127.0.0.1')) = '127.0.0.1');
  Check('StrToNetAddr <> 0', StrToNetAddr('10.0.0.1').s_addr <> 0);
  WriteLn;

  WriteLn('[Socket]');
  Sock := fpSocket(AF_INET, SOCK_STREAM, 0);
  Check('fpSocket >= 0', Sock >= 0);

  if Sock < 0 then
  begin
    WriteLn('Cannot continue.');
    Halt(1);
  end;

  WriteLn('[Options]');
  OptVal := 1;
  Err := fpSetSockOpt(Sock, SOL_SOCKET, SO_REUSEADDR, @OptVal, SizeOf(OptVal));
  Check('fpSetSockOpt(SO_REUSEADDR) = 0', Err = 0);

  OptLen := SizeOf(OptVal);
  OptVal := 0;
  Err := fpGetSockOpt(Sock, SOL_SOCKET, SO_TYPE, @OptVal, @OptLen);
  Check('fpGetSockOpt(SO_TYPE) = 0', Err = 0);
  Check('SO_TYPE = SOCK_STREAM', OptVal = SOCK_STREAM);
  WriteLn;

  WriteLn('[Bind]');
  FillChar(Addr, SizeOf(Addr), 0);
  Addr.sin_family := AF_INET;
  Addr.sin_port := htons(19996);
  Addr.sin_addr.s_addr := 0;
  Err := fpBind(Sock, @Addr, SizeOf(Addr));
  Check('fpBind to port 19996 = 0', Err = 0);

  if Err = 0 then
  begin
    Err := fpListen(Sock, 5);
    Check('fpListen(5) = 0', Err = 0);
  end;
  WriteLn;

  WriteLn('[Cleanup]');
  Err := CloseSocket(Sock);
  Check('CloseSocket = 0', Err = 0);
  WriteLn;

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
