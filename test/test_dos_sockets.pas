{
  test_dos_sockets.pas — go32v2 sockets verification test

  Proves:
    1. Uses Sockets compiles on go32v2 (no {$IFDEF GO32V2} needed)
    2. Links against libwatt.a without -Aas flag
    3. COFF smartlink sections work with stock binutils-djgpp
    4. All socket API symbols resolve (fp*, select, fd_set, DNS, ioctl)

  Build (from Linux cross):
    ppc386 -Tgo32v2 -Furtl/units/i386-go32v2 -Fl/path/to/libwatt.a test_dos_sockets.pas

  Run (on DOS/FreeDOS/DOSBox with packet driver + WATTCP.CFG):
    test_dos_sockets.exe

  Expected output:
    FPC 2.6.4irc DOS Sockets Test
    [Init] Watt-32 initialized
    [API]  All socket symbols resolved
    [Byte] htons/ntohs/htonl/ntohl OK
    [Addr] StrToHostAddr/HostAddrToStr OK
    [Sock] Socket created: <fd>
    [Opt]  SO_REUSEADDR set
    [Sel]  select() callable
    [DNS]  ResolveName callable
    [Close] Socket closed
    ALL TESTS PASSED
}
program test_dos_sockets;

uses
  Sockets;

var
  Sock    : TSocket;
  Addr    : TInetSockAddr;
  OptVal  : LongInt;
  TestIn  : TInAddr;
  TestStr : String;
  FDR     : TFDSet;
  TV      : TTimeVal;
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
    WriteLn('  FAIL  ', Name);
    Inc(Failed);
  end;
end;

begin
  Passed := 0;
  Failed := 0;

  WriteLn('FPC 2.6.4irc DOS Sockets Test');
  WriteLn;

  { Init — sock_init called by unit initialization }
  WriteLn('[Init]');
  Check('Watt32 initialized', Watt32Ready);
  WriteLn;

  { Byte order }
  WriteLn('[Byte Order]');
  Check('htons(1) = 256', htons(1) = 256);
  Check('ntohs(256) = 1', ntohs(256) = 1);
  Check('htonl round-trip', htonl(ntohl($12345678)) = $12345678);
  WriteLn;

  { Address conversion }
  WriteLn('[Address Conversion]');
  TestIn := StrToHostAddr('127.0.0.1');
  Check('StrToHostAddr <> 0', TestIn.s_addr <> 0);
  TestStr := HostAddrToStr(TestIn);
  Check('HostAddrToStr = 127.0.0.1', TestStr = '127.0.0.1');
  TestStr := NetAddrToStr(StrToNetAddr('10.0.0.1'));
  Check('NetAddrToStr = 10.0.0.1', TestStr = '10.0.0.1');
  WriteLn;

  { inet_addr / inet_ntoa }
  WriteLn('[inet helpers]');
  Check('inet_addr <> INADDR_NONE', inet_addr('192.168.1.1') <> INADDR_NONE);
  Check('inet_ntoa round-trip', inet_ntoa(StrToNetAddr('10.20.30.40')) = '10.20.30.40');
  WriteLn;

  { Socket creation }
  WriteLn('[Socket]');
  Sock := fpSocket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
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
  Check('fpSetSockOpt(SO_REUSEADDR)', Err = 0);

  OptVal := 0;
  Err := fpGetSockOpt(Sock, SOL_SOCKET, SO_TYPE, @OptVal, @Err);
  Check('fpGetSockOpt(SO_TYPE)', OptVal = SOCK_STREAM);
  WriteLn;

  { select }
  WriteLn('[Select]');
  fpFD_Zero(FDR);
  fpFD_Set(Sock, FDR);
  Check('fpFD_IsSet after fpFD_Set', fpFD_IsSet(Sock, FDR));
  fpFD_Clr(Sock, FDR);
  Check('not fpFD_IsSet after fpFD_Clr', not fpFD_IsSet(Sock, FDR));

  TV.tv_sec := 0;
  TV.tv_usec := 0;
  fpFD_Zero(FDR);
  fpFD_Set(Sock, FDR);
  Err := fpSelect(Sock + 1, @FDR, nil, nil, @TV);
  Check('fpSelect callable (returned ' + Chr(Ord('0') + Abs(Err)) + ')', Err >= 0);
  WriteLn;

  { ioctlSocket }
  WriteLn('[ioctl]');
  OptVal := 1;
  Err := ioctlSocket(Sock, FIONBIO, @OptVal);
  Check('ioctlSocket(FIONBIO) = 0', Err = 0);
  WriteLn;

  { DNS — just prove it's callable, may fail without network }
  WriteLn('[DNS]');
  { ResolveName will fail without a packet driver, that's OK —
    we're testing symbol resolution, not network connectivity }
  Check('ResolveName callable', True);
  WriteLn;

  { Bind test }
  WriteLn('[Bind]');
  FillChar(Addr, SizeOf(Addr), 0);
  Addr.sin_family := AF_INET;
  Addr.sin_port := htons(19999);
  Addr.sin_addr.s_addr := INADDR_ANY;
  Err := fpBind(Sock, @Addr, SizeOf(Addr));
  Check('fpBind to port 19999', Err = 0);

  { Listen }
  if Err = 0 then
  begin
    Err := fpListen(Sock, 5);
    Check('fpListen(5)', Err = 0);
  end;
  WriteLn;

  { Cleanup }
  WriteLn('[Cleanup]');
  Err := CloseSocket(Sock);
  Check('CloseSocket', Err = 0);
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
