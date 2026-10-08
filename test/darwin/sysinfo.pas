program sysinfo;
{ fpc264irc Mac test 4: system information through the unix units - uname, process id, user ids, environment,
  current time. Checks the libSystem calls behind BaseUnix / Unix work. }
uses baseunix, unix, sysutils;
var u: UtsName;
begin
  writeln('fpc264irc Mac test 4: system information');
  if FpUname(u) = 0 then
  begin
    writeln('system   : ', u.sysname);
    writeln('node     : ', u.nodename);
    writeln('release  : ', u.release, '   (Darwin 8 = 10.4, 9 = 10.5, 10 = 10.6 ... 18 = 10.14)');
    writeln('machine  : ', u.machine);
  end
  else writeln('fpUname failed, errno ', fpgeterrno);
  writeln('pid      : ', FpGetpid, '   uid ', FpGetuid, '   gid ', FpGetgid);
  writeln('HOME     : ', GetEnvironmentVariable('HOME'));
  writeln('now      : ', DateTimeToStr(Now));
  writeln('test 4 done');
end.
