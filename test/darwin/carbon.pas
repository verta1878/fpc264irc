program carbon;
{ fpc264irc Mac test 8: MacOSAll (Carbon + CoreFoundation) - a CFString round trip, CFNumber, CFArray, Gestalt for the
  system version, and a Carbon SysBeep. Links Carbon and CoreFoundation. }
{$mode macpas}
uses MacOSAll;
var s: CFStringRef; n: CFNumberRef; arr: CFMutableArrayRef; buf: array[0..255] of char; v: SInt32; i: SInt32;
begin
  writeln('fpc264irc Mac test 8: Carbon / CoreFoundation');
  s := CFStringCreateWithCString(nil, 'fpc264irc Carbon test', kCFStringEncodingUTF8);
  if CFStringGetCString(s, @buf[0], 256, kCFStringEncodingUTF8) then writeln('CFString round trip : ', PChar(@buf[0]));
  writeln('CFStringGetLength    : ', CFStringGetLength(s), '   (expected 21)');
  i := 42; n := CFNumberCreate(nil, kCFNumberSInt32Type, @i);
  arr := CFArrayCreateMutable(nil, 0, @kCFTypeArrayCallBacks);
  CFArrayAppendValue(arr, s); CFArrayAppendValue(arr, n);
  writeln('CFArrayGetCount      : ', CFArrayGetCount(arr), '   (expected 2)');
  if Gestalt(gestaltSystemVersion, v) = noErr then writeln('Gestalt system version: ', HexStr(v, 4), '   (e.g. 1068 = 10.6.8)');
  CFRelease(arr); CFRelease(n); CFRelease(s);
  {$ifc defined cpu386} SysBeep(1); {$endc}   { SysBeep is 32-bit only; the 64-bit build (test/darwin64) skips it }
  writeln('test 8 done');
end.
