{ Seg() intrinsic on a huge pointer reads the segment word }
unit t06_seg;
interface
function segof(p: HugePointer): word;
implementation
function segof(p: HugePointer): word;
begin
  segof := Seg(p^);
end;
end.
