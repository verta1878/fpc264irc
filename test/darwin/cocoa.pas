program cocoa;
{ fpc264irc Mac test 9: CocoaAll (Foundation) - autorelease pool, NSString, NSArray, NSProcessInfo, NSLog.
  Links Cocoa, Foundation, CoreFoundation and libobjc. NSLog writes to the console / Console.app. }
{$mode objfpc}{$modeswitch objectivec1}
uses CocoaAll;
var pool: NSAutoreleasePool; s: NSString; a: NSMutableArray;
begin
  writeln('fpc264irc Mac test 9: Cocoa / Foundation');
  pool := NSAutoreleasePool.alloc.init;
  s := NSString.stringWithUTF8String('fpc264irc Cocoa test');
  writeln('NSString length : ', s.length, '   (expected 20)');
  a := NSMutableArray.array_;
  a.addObject(s); a.addObject(NSString.stringWithUTF8String('second'));
  writeln('NSArray count   : ', a.count, '   (expected 2)');
  writeln('process name    : ', NSProcessInfo.processInfo.processName.UTF8String);
  writeln('OS version      : ', NSProcessInfo.processInfo.operatingSystemVersionString.UTF8String);
  NSLog(NSString.stringWithUTF8String('fpc264irc NSLog test'));
  pool.release;
  writeln('test 9 done');
end.
