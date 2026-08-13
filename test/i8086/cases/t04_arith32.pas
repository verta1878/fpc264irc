{ 32-bit arithmetic uses 16-bit register pairs }
unit t04_arith32;
interface
function add32(a, b: longint): longint;
function sub32(a, b: longint): longint;
implementation
function add32(a, b: longint): longint;
begin
  add32 := a + b;
end;
function sub32(a, b: longint): longint;
begin
  sub32 := a - b;
end;
end.
