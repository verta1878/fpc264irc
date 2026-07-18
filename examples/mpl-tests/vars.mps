var
  i : integer;
  s : string;
begin
  s := 'Testing MPL variables';
  writeln(s);
  for i := 1 to 5 do
    writeln('Count: ' + int2str(i));
  if i = 6 then writeln('Loop completed correctly');
end.
