{ 16-bit shifts must stay 16-bit (not promote to 32-bit ax:dx) }
unit t02_shift16;
interface
function shl1(w: word): word;
function shr1(w: word): word;
implementation
function shl1(w: word): word;
begin
  shl1 := w shl 1;
end;
function shr1(w: word): word;
begin
  shr1 := w shr 1;
end;
end.
