{ Darwin i386 syscall wrapper via INT 0x80
  BSD calling convention: args on stack, syscall# in EAX }

function FpSysCall(sysnr:TSysParam):TSysResult; assembler;[public,alias:'FPC_SYSCALL0'];
asm
  movl sysnr,%eax
  int  $0x80
  jnc  .Lnoerror
  negl %eax
.Lnoerror:
end;

function FpSysCall(sysnr,p1:TSysParam):TSysResult; assembler;[public,alias:'FPC_SYSCALL1'];
asm
  movl sysnr,%eax
  pushl p1
  int  $0x80
  jnc  .Lnoerror
  negl %eax
.Lnoerror:
  addl $4,%esp
end;

function FpSysCall(sysnr,p1,p2:TSysParam):TSysResult; assembler;[public,alias:'FPC_SYSCALL2'];
asm
  movl sysnr,%eax
  pushl p2
  pushl p1
  int  $0x80
  jnc  .Lnoerror
  negl %eax
.Lnoerror:
  addl $8,%esp
end;

function FpSysCall(sysnr,p1,p2,p3:TSysParam):TSysResult; assembler;[public,alias:'FPC_SYSCALL3'];
asm
  movl sysnr,%eax
  pushl p3
  pushl p2
  pushl p1
  int  $0x80
  jnc  .Lnoerror
  negl %eax
.Lnoerror:
  addl $12,%esp
end;

function FpSysCall(sysnr,p1,p2,p3,p4:TSysParam):TSysResult; assembler;[public,alias:'FPC_SYSCALL4'];
asm
  movl sysnr,%eax
  pushl p4
  pushl p3
  pushl p2
  pushl p1
  int  $0x80
  jnc  .Lnoerror
  negl %eax
.Lnoerror:
  addl $16,%esp
end;

function FpSysCall(sysnr,p1,p2,p3,p4,p5:TSysParam):TSysResult; assembler;[public,alias:'FPC_SYSCALL5'];
asm
  movl sysnr,%eax
  pushl p5
  pushl p4
  pushl p3
  pushl p2
  pushl p1
  int  $0x80
  jnc  .Lnoerror
  negl %eax
.Lnoerror:
  addl $20,%esp
end;

function FpSysCall(sysnr,p1,p2,p3,p4,p5,p6:TSysParam):TSysResult; assembler;[public,alias:'FPC_SYSCALL6'];
asm
  movl sysnr,%eax
  pushl p6
  pushl p5
  pushl p4
  pushl p3
  pushl p2
  pushl p1
  int  $0x80
  jnc  .Lnoerror
  negl %eax
.Lnoerror:
  addl $24,%esp
end;
