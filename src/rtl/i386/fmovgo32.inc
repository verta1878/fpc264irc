{
  fmovgo32.inc - go32v2 only, included by fastmove.inc (byte, 2026-10-15)

  Forwards_IA32_3 / Backwards_IA32_3 - Move of more than SMALLMOVESIZE (36) bytes on a CPU without SSE / MMX - copy
  8 bytes at a time through the FPU (fild / fistp qword). A real x87 does that exactly. An emulated FPU that keeps
  only a double (53 bits, e.g. DOSBox 0.74) loses the low bits of every 8 bytes, so a DOS program run there got its
  strings and buffers corrupted (s := 'aGk='; s := s + ' ' + 32 chars: a zero byte every 8 bytes).

  go32v2 never runs setup_fastmove (the other targets call it from fpc_cpucodeinit, go32v2 has none), so the FPU copy
  is what Move uses there. fpc_cpuinit (i386.inc) now calls setup_fastmove_go32 below on go32v2; SSE / MMX stay off
  as before, only the FPU check is new.

  Build knob FPC_MOVE_NOFPU - define it when building the go32v2 RTL (-dFPC_MOVE_NOFPU, e.g.
  OPT=-dFPC_MOVE_NOFPU tools/go32v2-build/build.sh i386):
    0 (not defined, the default) - at startup one qword goes through fild / fistp; if it does not come back the same,
                                   Move uses the plain copy (Forwards_Valgrind / Backwards_Valgrind: rep movsb, no
                                   FPU); a real x87 passes and keeps the FPU copy
    1 (defined)                  - the FPU copy is never used: always the plain copy, no startup check
  Other targets: not affected (this file is included for go32v2 only; fastmove.inc and i386.inc keep their line
  numbers, so the other targets' system units rebuild byte-identical).
}
{$ifdef FPC_MOVE_NOFPU}
const
   fastmoveproc_forward : pointer = @Forwards_Valgrind;
   fastmoveproc_backward : pointer = @Backwards_Valgrind;
{$else FPC_MOVE_NOFPU}
const
   fastmoveproc_forward : pointer = @Forwards_IA32_3;
   fastmoveproc_backward : pointer = @Backwards_IA32_3;

{ true if a qword goes through fild / fistp unchanged (real x87) }
{$asmmode intel}
function fastmove_fpu_exact: boolean;
var
  a, b: int64;
begin
  a:=$4847464544434241;
  b:=0;
  asm
    fild    qword ptr [a]
    fistp   qword ptr [b]
  end;
  fastmove_fpu_exact:=a=b;
end;
{$endif FPC_MOVE_NOFPU}

procedure setup_fastmove_go32;
begin
{$ifndef FPC_MOVE_NOFPU}
  if not fastmove_fpu_exact then
    begin
      fastmoveproc_forward:=@Forwards_Valgrind;
      fastmoveproc_backward:=@Backwards_Valgrind;
    end;
{$endif FPC_MOVE_NOFPU}
end;
