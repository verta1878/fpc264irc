{ comparison operators generate correct conditional code }
unit t11_compare;
interface
function lt16(a, b: word): boolean;
function lt32(a, b: longint): boolean;
implementation
function lt16(a, b: word): boolean;
begin
  lt16 := a < b;
end;
function lt32(a, b: longint): boolean;
begin
  lt32 := a < b;
end;
end.
