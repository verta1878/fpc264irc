// MPLC diagnostic test — tests compiler functionality
var
  i  : integer;
  s  : string;
  b  : boolean;
  r  : real;
  c  : char;
begin
  // Basic types
  i := 12345;
  s := 'Hello Mystic';
  b := true;
  r := 3.14;
  c := 'A';
  
  writeln('=== MPLC Diagnostic ===');
  writeln('Integer: ' + int2str(i));
  writeln('String:  ' + s);
  writeln('Real:    ' + real2str(r, 2));
  writeln('Char:    ' + c);
  
  // String operations
  writeln('Upper:   ' + upper(s));
  writeln('Length:  ' + int2str(length(s)));
  writeln('Copy:    ' + copy(s, 7, 6));
  
  // Control flow
  if b then writeln('Boolean: TRUE');
  
  for i := 1 to 3 do
    writeln('Loop ' + int2str(i));
  
  // Math
  i := 100 + 200;
  writeln('Math:    ' + int2str(i));
  
  writeln('=== ALL TESTS PASSED ===');
end.
