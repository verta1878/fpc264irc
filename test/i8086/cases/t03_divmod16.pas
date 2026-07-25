{ 16-bit division and modulo }
unit t03_divmod16;
interface
function divw(a, b: word): word;
function modw(a, b: word): word;
implementation
function divw(a, b: word): word;
begin
  divw := a div b;
end;
function modw(a, b: word): word;
begin
  modw := a mod b;
end;
end.
