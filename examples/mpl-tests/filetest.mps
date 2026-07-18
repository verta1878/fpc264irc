// File operations test  
var
  f : file;
  s : string;
begin
  fassign(f, '/tmp/mpltest/output.txt', 66);
  frewrite(f);
  fwriteln(f, 'MPL file I/O works');
  fclose(f);
  
  fassign(f, '/tmp/mpltest/output.txt', 66);
  freset(f);
  freadln(f, s);
  fclose(f);
  
  writeln('Read back: ' + s);
end.
