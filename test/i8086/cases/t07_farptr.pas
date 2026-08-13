{ far/huge pointer types: assignment and typed dereference }
unit t07_farptr;
interface
type
  PByteHuge = ^byte; { huge model: this is a far/huge pointer }
function derefptr(p: PByteHuge): byte;
procedure setptr(p: PByteHuge; v: byte);
implementation
function derefptr(p: PByteHuge): byte;
begin
  derefptr := p^;
end;
procedure setptr(p: PByteHuge; v: byte);
begin
  p^ := v;
end;
end.
