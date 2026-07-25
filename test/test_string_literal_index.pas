program test_string_literal_index;
{ Tests string literal indexing: 'text'[i] — a feature not in stock FPC 2.6.4 }
var
  c: char;
  i: integer;
  ok: boolean;
begin
  ok := true;
  c := 'Hello'[1];
  if c <> 'H' then begin writeln('FAIL: const index [1]'); ok := false; end;
  c := 'Hello'[5];
  if c <> 'o' then begin writeln('FAIL: const index [5]'); ok := false; end;
  i := 3;
  c := 'Hello'[i];
  if c <> 'l' then begin writeln('FAIL: var index [3]'); ok := false; end;
  if 'YN'[1] <> 'Y' then begin writeln('FAIL: expr index'); ok := false; end;
  if ord('Hi'[0]) <> 2 then begin writeln('FAIL: length byte'); ok := false; end;
  if ok then writeln('PASS: string literal indexing')
  else begin writeln('FAIL'); halt(1); end;
end.
