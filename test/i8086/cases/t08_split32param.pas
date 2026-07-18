{ passing a 32-bit value by value exercises split-register param handling }
unit t08_split32param;
interface
function consume(l: longint): longint;
implementation
function helper(x: longint): longint;
begin
  helper := x;
end;
function consume(l: longint): longint;
begin
  consume := helper(l);
end;
end.
