program sysinfo;
{ fpc264irc OS/2 test 5: direct OS/2 API calls through the doscalls unit - OS version, memory, boot drive, uptime,
  code page. Checks DosQuerySysInfo / DosQueryCP imports and that the values make sense. }
uses doscalls;
var v: array[1..26] of cardinal; rc: cardinal; cps: array[0..3] of word; cpsize: cardinal;
begin
  writeln('fpc264irc OS/2 test 5: system information (doscalls)');
  rc := DosQuerySysInfo(1, 26, v, SizeOf(v));
  if rc <> 0 then begin writeln('DosQuerySysInfo failed, rc=', rc); halt(1); end;
  writeln('OS/2 version     : ', v[svVersionMajor] div 10, '.', v[svVersionMinor], ' (revision ', v[svVersionRevision], ')');
  writeln('boot drive       : ', chr(ord('A') + v[svBootDrive] - 1), ':');
  writeln('physical memory  : ', v[svTotPhysMem] div 1024, ' KB');
  writeln('available memory : ', v[svTotAvailMem] div 1024, ' KB');
  writeln('page size        : ', v[svPageSize], ' bytes');
  writeln('max path length  : ', v[svMaxPathLength]);
  writeln('uptime           : ', v[svMsCount] div 1000, ' s');
  cpsize := 0;
  rc := DosQueryCP(SizeOf(cps), @cps, cpsize);
  if rc = 0 then writeln('code page        : ', cps[0]) else writeln('DosQueryCP rc=', rc);
  writeln('test 5 done');
end.
