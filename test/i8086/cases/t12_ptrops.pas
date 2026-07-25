{ pointer arithmetic and typed pointer operations }
unit t12_ptrops;
interface
type PW = ^word;
function nextword(p: PW): word;
implementation
function nextword(p: PW): word;
begin
  Inc(p);
  nextword := p^;
end;
end.
