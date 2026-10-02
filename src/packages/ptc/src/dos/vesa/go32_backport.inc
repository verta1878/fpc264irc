{ fpc264irc backport: go32 routines that FPC 3.0's go32 unit has and the 2.6.4 one does not:
  get_page_attributes / set_page_attributes (DPMI 0506h/0507h), free_linear_addr_mapping (0801h),
  get_dpmi_version (0400h) + tdpmiversioninfo. Same register
  usage as the 3.0.4 go32.pp versions; error code goes to go32.int31error. }

{$ASMMODE ATT}
function dpmi_page_attr_call(func, handle, offset, pagecount: dword; buf: pointer): boolean;
var
  err: word;
  ok: byte;
begin
  asm
    pushl %ebx
    pushl %ecx
    pushl %edx
    pushl %esi
    pushw %es
    pushw %ds
    popw %es
    movl buf,%edx
    movl handle,%esi
    movl offset,%ebx
    movl pagecount,%ecx
    movl func,%eax
    int $0x31
    movb $1,ok
    movw $0,err
    jnc .Lpageattr_ok
    movb $0,ok
    movw %ax,err
  .Lpageattr_ok:
    popw %es
    popl %esi
    popl %edx
    popl %ecx
    popl %ebx
  end;
  int31error := err;
  dpmi_page_attr_call := ok <> 0;
end;

function get_page_attributes(handle, offset, pagecount: dword; buf: pointer): boolean;
begin
  get_page_attributes := dpmi_page_attr_call($0506, handle, offset, pagecount, buf);
end;

function set_page_attributes(handle, offset, pagecount: dword; buf: pointer): boolean;
begin
  set_page_attributes := dpmi_page_attr_call($0507, handle, offset, pagecount, buf);
end;

type
  tdpmiversioninfo = record
    major, minor: byte;
    flags: word;
    cpu: byte;
    master_pic, slave_pic: byte;
  end;

function free_linear_addr_mapping(linear_addr: dword): boolean;
var
  err: word;
  ok: byte;
begin
  asm
    pushl %ebx
    pushl %ecx
    movl linear_addr,%ebx
    movl %ebx,%ecx
    shrl $16,%ebx
    movl $0x801,%eax
    int $0x31
    movb $1,ok
    movw $0,err
    jnc .Lfreelin_ok
    movb $0,ok
    movw %ax,err
  .Lfreelin_ok:
    popl %ecx
    popl %ebx
  end;
  int31error := err;
  free_linear_addr_mapping := ok <> 0;
end;

function get_dpmi_version(var version: tdpmiversioninfo): boolean;
var
  _version, _flags, _cpu, _pic, err: word;
  ok: byte;
begin
  asm
    pushl %ebx
    pushl %ecx
    pushl %edx
    movl $0x0400,%eax
    int $0x31
    movw %ax,_version
    movw %bx,_flags
    movw %cx,_cpu
    movw %dx,_pic
    movb $1,ok
    movw $0,err
    jnc .Ldpmiver_ok
    movb $0,ok
    movw %ax,err
  .Ldpmiver_ok:
    popl %edx
    popl %ecx
    popl %ebx
  end;
  int31error := err;
  get_dpmi_version := ok <> 0;
  if ok <> 0 then
  begin
    FillChar(version, SizeOf(version), 0);
    version.major := _version shr 8;
    version.minor := _version and $ff;
    version.flags := _flags;
    version.cpu := _cpu and $ff;
    version.master_pic := _pic shr 8;
    version.slave_pic := _pic and $ff;
  end;
end;

{$ASMMODE INTEL} { back to vesa.pp mode; 2.6.4 $PUSH/$POP does not save the asm mode }
