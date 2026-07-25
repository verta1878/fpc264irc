{ truncating a signed 32-bit value into a 16-bit result }
unit t10_trunc32;
interface
function trunc32to16(l: longint): word;
implementation
function trunc32to16(l: longint): word;
begin
  trunc32to16 := word(l);
end;
end.
