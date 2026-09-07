# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_SERIAL_SEROPEN$ANSISTRING$$LONGINT
_SERIAL_SEROPEN$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$438,8(%esp)
	movl	$32770,4(%esp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj15
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj4(%ebx),%edx
	movl	%edx,%eax
Lj15:
	movl	%eax,(%esp)
	call	L_open$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SERIAL_SERCLOSE$LONGINT
_SERIAL_SERCLOSE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_close$stub
	leave
	ret

.text
	.align 4
.globl	_SERIAL_SERFLUSH$LONGINT
_SERIAL_SERFLUSH$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_fsync$stub
	leave
	ret

.text
	.align 4
.globl	_SERIAL_SERREAD$LONGINT$formal$LONGINT$$LONGINT
_SERIAL_SERREAD$LONGINT$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_BASEUNIX_FPREAD$LONGINT$formal$LONGWORD$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SERIAL_SERWRITE$LONGINT$formal$LONGINT$$LONGINT
_SERIAL_SERWRITE$LONGINT$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_BASEUNIX_FPWRITE$LONGINT$formal$LONGWORD$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SERIAL_SERSETPARAMS$LONGINT$LONGINT$LONGINT$TPARITYTYPE$LONGINT$TSERIALFLAGS
_SERIAL_SERSETPARAMS$LONGINT$LONGINT$LONGINT$TPARITYTYPE$LONGINT$TSERIALFLAGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-56(%ebp),%eax
	movb	$0,%cl
	movl	$44,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	-8(%ebp),%eax
	cmpl	$50,%eax
	jl	Lj53
	subl	$50,%eax
	je	Lj54
	subl	$25,%eax
	je	Lj55
	subl	$35,%eax
	je	Lj56
	subl	$24,%eax
	je	Lj57
	subl	$16,%eax
	je	Lj58
	subl	$50,%eax
	je	Lj59
	subl	$100,%eax
	je	Lj60
	subl	$300,%eax
	je	Lj61
	subl	$600,%eax
	je	Lj62
	subl	$600,%eax
	je	Lj63
	subl	$600,%eax
	je	Lj64
	subl	$2400,%eax
	je	Lj65
	subl	$14400,%eax
	je	Lj66
	subl	$19200,%eax
	je	Lj67
	subl	$19200,%eax
	je	Lj68
	subl	$57600,%eax
	je	Lj69
	subl	$115200,%eax
	je	Lj70
	jmp	Lj53
Lj54:
	movl	$50,-48(%ebp)
	jmp	Lj52
Lj55:
	movl	$75,-48(%ebp)
	jmp	Lj52
Lj56:
	movl	$110,-48(%ebp)
	jmp	Lj52
Lj57:
	movl	$134,-48(%ebp)
	jmp	Lj52
Lj58:
	movl	$150,-48(%ebp)
	jmp	Lj52
Lj59:
	movl	$200,-48(%ebp)
	jmp	Lj52
Lj60:
	movl	$300,-48(%ebp)
	jmp	Lj52
Lj61:
	movl	$600,-48(%ebp)
	jmp	Lj52
Lj62:
	movl	$1200,-48(%ebp)
	jmp	Lj52
Lj63:
	movl	$1800,-48(%ebp)
	jmp	Lj52
Lj64:
	movl	$2400,-48(%ebp)
	jmp	Lj52
Lj65:
	movl	$4800,-48(%ebp)
	jmp	Lj52
Lj66:
	movl	$19200,-48(%ebp)
	jmp	Lj52
Lj67:
	movl	$38400,-48(%ebp)
	jmp	Lj52
Lj68:
	movl	$57600,-48(%ebp)
	jmp	Lj52
Lj69:
	movl	$115200,-48(%ebp)
	jmp	Lj52
Lj70:
	movl	$230400,-48(%ebp)
	jmp	Lj52
Lj53:
	movl	$9600,-48(%ebp)
Lj52:
	movl	-48(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-48(%ebp),%eax
	orl	$2048,%eax
	orl	$32768,%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$5,%eax
	jl	Lj114
	subl	$5,%eax
	je	Lj115
	decl	%eax
	je	Lj116
	decl	%eax
	je	Lj117
	jmp	Lj114
Lj115:
	movl	-48(%ebp),%eax
	movl	%eax,-48(%ebp)
	jmp	Lj113
Lj116:
	movl	-48(%ebp),%eax
	orl	$256,%eax
	movl	%eax,-48(%ebp)
	jmp	Lj113
Lj117:
	movl	-48(%ebp),%eax
	orl	$512,%eax
	movl	%eax,-48(%ebp)
	jmp	Lj113
Lj114:
	movl	-48(%ebp),%eax
	orl	$768,%eax
	movl	%eax,-48(%ebp)
Lj113:
	movl	16(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj127
	decl	%eax
	je	Lj128
	decl	%eax
	je	Lj129
	jmp	Lj127
Lj128:
	movl	-48(%ebp),%eax
	orl	$4096,%eax
	orl	$8192,%eax
	movl	%eax,-48(%ebp)
	jmp	Lj126
Lj129:
	movl	-48(%ebp),%eax
	orl	$4096,%eax
	movl	%eax,-48(%ebp)
	jmp	Lj126
Lj127:
Lj126:
	movl	12(%ebp),%eax
	cmpl	$2,%eax
	je	Lj134
	jmp	Lj135
Lj134:
	movl	-48(%ebp),%eax
	orl	$1024,%eax
	movl	%eax,-48(%ebp)
Lj135:
	testl	$1,8(%ebp)
	jne	Lj138
	jmp	Lj139
Lj138:
	movl	-48(%ebp),%eax
	orl	$196608,%eax
	movl	%eax,-48(%ebp)
Lj139:
	movl	-4(%ebp),%eax
	movl	$3,%edx
	call	L_TERMIO_TCFLUSH$LONGINT$LONGINT$$LONGINT$stub
	leal	-56(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_TERMIO_TCSETATTR$LONGINT$LONGINT$TERMIOS$$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_SERIAL_SERSAVESTATE$LONGINT$$TSERIALSTATE
_SERIAL_SERSAVESTATE$LONGINT$$TSERIALSTATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1074033770,%edx
	call	L_BASEUNIX_FPIOCTL$LONGINT$LONGWORD$POINTER$$LONGINT$stub
	movl	-8(%ebp),%eax
	leal	4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	$1076655123,%edx
	call	L_BASEUNIX_FPIOCTL$LONGINT$LONGWORD$POINTER$$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_SERIAL_SERRESTORESTATE$LONGINT$TSERIALSTATE
_SERIAL_SERRESTORESTATE$LONGINT$TSERIALSTATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%esi
	leal	-56(%ebp),%edi
	cld
	movl	$12,%ecx
	rep
	movsl
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_TERMIO_TCSETATTR$LONGINT$LONGINT$TERMIOS$$LONGINT$stub
	leal	-56(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$-2147191699,%edx
	call	L_BASEUNIX_FPIOCTL$LONGINT$LONGWORD$POINTER$$LONGINT$stub
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SERIAL_SERSETDTR$LONGINT$BOOLEAN
_SERIAL_SERSETDTR$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj183
Lj183:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj184
	jmp	Lj185
Lj184:
	movl	L_TC_SERIAL_SERSETDTR$LONGINT$BOOLEAN_DTR$non_lazy_ptr-Lj183(%ebx),%ecx
	movl	-4(%ebp),%eax
	movl	$-2147191700,%edx
	call	L_BASEUNIX_FPIOCTL$LONGINT$LONGWORD$POINTER$$LONGINT$stub
	jmp	Lj192
Lj185:
	movl	L_TC_SERIAL_SERSETDTR$LONGINT$BOOLEAN_DTR$non_lazy_ptr-Lj183(%ebx),%ecx
	movl	-4(%ebp),%eax
	movl	$-2147191701,%edx
	call	L_BASEUNIX_FPIOCTL$LONGINT$LONGWORD$POINTER$$LONGINT$stub
Lj192:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SERIAL_SERSETRTS$LONGINT$BOOLEAN
_SERIAL_SERSETRTS$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj200
Lj200:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj201
	jmp	Lj202
Lj201:
	movl	L_TC_SERIAL_SERSETRTS$LONGINT$BOOLEAN_RTS$non_lazy_ptr-Lj200(%ebx),%ecx
	movl	-4(%ebp),%eax
	movl	$-2147191700,%edx
	call	L_BASEUNIX_FPIOCTL$LONGINT$LONGWORD$POINTER$$LONGINT$stub
	jmp	Lj209
Lj202:
	movl	L_TC_SERIAL_SERSETRTS$LONGINT$BOOLEAN_RTS$non_lazy_ptr-Lj200(%ebx),%ecx
	movl	-4(%ebp),%eax
	movl	$-2147191701,%edx
	call	L_BASEUNIX_FPIOCTL$LONGINT$LONGWORD$POINTER$$LONGINT$stub
Lj209:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SERIAL_SERGETCTS$LONGINT$$BOOLEAN
_SERIAL_SERGETCTS$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1074033770,%edx
	call	L_BASEUNIX_FPIOCTL$LONGINT$LONGWORD$POINTER$$LONGINT$stub
	movl	-12(%ebp),%eax
	andl	$64,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SERIAL_SERGETDSR$LONGINT$$BOOLEAN
_SERIAL_SERGETDSR$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1074033770,%edx
	call	L_BASEUNIX_FPIOCTL$LONGINT$LONGWORD$POINTER$$LONGINT$stub
	movl	-12(%ebp),%eax
	andl	$1024,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SERIAL_SERGETRI$LONGINT$$BOOLEAN
_SERIAL_SERGETRI$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1074033770,%edx
	call	L_BASEUNIX_FPIOCTL$LONGINT$LONGWORD$POINTER$$LONGINT$stub
	movl	-12(%ebp),%eax
	andl	$512,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_SERIAL
_THREADVARLIST_SERIAL:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_SERIAL_SERSETDTR$LONGINT$BOOLEAN_DTR
_TC_SERIAL_SERSETDTR$LONGINT$BOOLEAN_DTR:
	.long	2

.data
	.align 2
.globl	_TC_SERIAL_SERSETRTS$LONGINT$BOOLEAN_RTS
_TC_SERIAL_SERSETRTS$LONGINT$BOOLEAN_RTS:
	.long	4
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_open$stub:
.indirect_symbol _open
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_close$stub:
.indirect_symbol _close
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_fsync$stub:
.indirect_symbol _fsync
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPREAD$LONGINT$formal$LONGWORD$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPREAD$LONGINT$formal$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPWRITE$LONGINT$formal$LONGWORD$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPWRITE$LONGINT$formal$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TERMIO_TCFLUSH$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _TERMIO_TCFLUSH$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TERMIO_TCSETATTR$LONGINT$LONGINT$TERMIOS$$LONGINT$stub:
.indirect_symbol _TERMIO_TCSETATTR$LONGINT$LONGINT$TERMIOS$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPIOCTL$LONGINT$LONGWORD$POINTER$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPIOCTL$LONGINT$LONGWORD$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.const_data
	.align 2
.globl	_INIT_SERIAL_TPARITYTYPE
_INIT_SERIAL_TPARITYTYPE:
	.byte	3,11
	.ascii	"TParityType"
	.byte	5
	.long	0,2,0
	.byte	10
	.ascii	"NoneParity"
	.byte	9
	.ascii	"OddParity"
	.byte	10
	.ascii	"EvenParity"
	.byte	6
	.ascii	"Serial"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_SERIAL_TPARITYTYPE
_RTTI_SERIAL_TPARITYTYPE:
	.byte	3,11
	.ascii	"TParityType"
	.byte	5
	.long	0,2,0
	.byte	10
	.ascii	"NoneParity"
	.byte	9
	.ascii	"OddParity"
	.byte	10
	.ascii	"EvenParity"
	.byte	6
	.ascii	"Serial"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_SERIAL_TPARITYTYPE_s2o
_RTTI_SERIAL_TPARITYTYPE_s2o:
	.long	3,2
	.long	_RTTI_SERIAL_TPARITYTYPE+47
	.long	0
	.long	_RTTI_SERIAL_TPARITYTYPE+26
	.long	1
	.long	_RTTI_SERIAL_TPARITYTYPE+37

.const_data
	.align 2
.globl	_RTTI_SERIAL_TPARITYTYPE_o2s
_RTTI_SERIAL_TPARITYTYPE_o2s:
	.long	0
	.long	_RTTI_SERIAL_TPARITYTYPE+26
	.long	_RTTI_SERIAL_TPARITYTYPE+37
	.long	_RTTI_SERIAL_TPARITYTYPE+47

.const_data
	.align 2
.globl	_INIT_SERIAL_DEF1
_INIT_SERIAL_DEF1:
	.byte	3
	.ascii	"\000"
	.byte	5
	.long	0,0,0
	.byte	17
	.ascii	"RtsCtsFlowControl"
	.byte	6
	.ascii	"Serial"
	.byte	0

.const_data
	.align 2
.globl	_INIT_SERIAL_TSERIALFLAGS
_INIT_SERIAL_TSERIALFLAGS:
	.byte	5,12
	.ascii	"TSerialFlags"
	.byte	5
	.long	_INIT_SERIAL_DEF1

.const_data
	.align 2
.globl	_RTTI_SERIAL_DEF1
_RTTI_SERIAL_DEF1:
	.byte	3
	.ascii	"\000"
	.byte	5
	.long	0,0,0
	.byte	17
	.ascii	"RtsCtsFlowControl"
	.byte	6
	.ascii	"Serial"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_SERIAL_DEF1_s2o
_RTTI_SERIAL_DEF1_s2o:
	.long	1,0
	.long	_RTTI_SERIAL_DEF1+15

.const_data
	.align 2
.globl	_RTTI_SERIAL_DEF1_o2s
_RTTI_SERIAL_DEF1_o2s:
	.long	0
	.long	_RTTI_SERIAL_DEF1+15

.const_data
	.align 2
.globl	_RTTI_SERIAL_TSERIALFLAGS
_RTTI_SERIAL_TSERIALFLAGS:
	.byte	5,12
	.ascii	"TSerialFlags"
	.byte	5
	.long	_RTTI_SERIAL_DEF1

.const_data
	.align 2
.globl	_INIT_SERIAL_TSERIALSTATE
_INIT_SERIAL_TSERIALSTATE:
	.byte	13,12
	.ascii	"TSerialState"
	.long	48,0

.const_data
	.align 2
.globl	_RTTI_SERIAL_TSERIALSTATE
_RTTI_SERIAL_TSERIALSTATE:
	.byte	13,12
	.ascii	"TSerialState"
	.long	48,2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_TERMIO_TERMIOS
	.long	4
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame
# End asmlist al_dwarf_frame
# Begin asmlist al_dwarf_info
# End asmlist al_dwarf_info
# Begin asmlist al_dwarf_abbrev
# End asmlist al_dwarf_abbrev
# Begin asmlist al_dwarf_line
# End asmlist al_dwarf_line
# Begin asmlist al_picdata

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SERIAL_SERSETDTR$LONGINT$BOOLEAN_DTR$non_lazy_ptr:
.indirect_symbol _TC_SERIAL_SERSETDTR$LONGINT$BOOLEAN_DTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SERIAL_SERSETRTS$LONGINT$BOOLEAN_RTS$non_lazy_ptr:
.indirect_symbol _TC_SERIAL_SERSETRTS$LONGINT$BOOLEAN_RTS
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

