{ int64 arithmetic: result in physical DX/CX/BX/AX, negate, add }
unit t05_int64;
interface
function ret64: int64;
function neg64(l: int64): int64;
function add64(a, b: int64): int64;
implementation
function ret64: int64;
begin
  ret64 := 42;
end;
function neg64(l: int64): int64;
begin
  neg64 := -l;
end;
function add64(a, b: int64): int64;
begin
  add64 := a + b;
end;
end.
