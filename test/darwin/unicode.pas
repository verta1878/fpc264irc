program unicode;
{ fpc264irc Mac test 5: wide strings and code pages through cwstring (libiconv) - UTF-8 <-> UTF-16 round trip,
  upper/lower case of non-ASCII letters. }
{$mode objfpc}{$H+}
uses cwstring, sysutils;
var u: UnicodeString; s: UTF8String;
begin
  writeln('fpc264irc Mac test 5: unicode (cwstring / libiconv)');
  s := 'Gr'#$C3#$BC#$C3#$9F'e, '#$C3#$A9't'#$C3#$A9;          { Grüße, été  in UTF-8 }
  u := UTF8Decode(s);
  writeln('UTF-8 bytes ', Length(s), ' -> UTF-16 chars ', Length(u), '  (expected 11)');
  writeln('round trip  ', UTF8Encode(u) = s);
  writeln('upper       ', UTF8Encode(WideUpperCase(u)));
  writeln('lower       ', UTF8Encode(WideLowerCase(u)));
  writeln('test 5 done');
end.
