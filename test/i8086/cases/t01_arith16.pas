{ 16-bit integer arithmetic: add, sub, mul, and, or, xor }
unit t01_arith16;
interface
function test(a, b: word): word;
implementation
function test(a, b: word): word;
var r: word;
begin
  r := a + b;
  r := r - a;
  r := r and b;
  r := r or a;
  r := r xor b;
  test := r;
end;
end.
