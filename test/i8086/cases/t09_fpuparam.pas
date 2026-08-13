{ extended float param passed as single contiguous reference }
unit t09_fpuparam;
interface
function passext(d: extended): extended;
implementation
function id(x: extended): extended;
begin
  id := x;
end;
function passext(d: extended): extended;
begin
  passext := id(d);
end;
end.
