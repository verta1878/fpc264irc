# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_TERMIO_TCGETATTR$LONGINT$TERMIOS$$LONGINT
_TERMIO_TCGETATTR$LONGINT$TERMIOS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1076655123,%edx
	call	LFPC_SYSC_IOCTL$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_TERMIO_TCSETATTR$LONGINT$LONGINT$TERMIOS$$LONGINT
_TERMIO_TCSETATTR$LONGINT$LONGINT$TERMIOS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jl	Lj16
	testl	%eax,%eax
	je	Lj17
	decl	%eax
	je	Lj18
	decl	%eax
	je	Lj19
	jmp	Lj16
Lj17:
	movl	$-2144570348,-20(%ebp)
	jmp	Lj15
Lj18:
	movl	$-2144570347,-20(%ebp)
	jmp	Lj15
Lj19:
	movl	$-2144570346,-20(%ebp)
	jmp	Lj15
Lj16:
	movl	$22,%eax
	call	LFPC_SYS_SETERRNO$stub
	movl	$-1,-16(%ebp)
	jmp	Lj13
Lj15:
	movl	-12(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	LFPC_SYSC_IOCTL$stub
	movl	%eax,-16(%ebp)
Lj13:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_TERMIO_CFSETISPEED$TERMIOS$LONGWORD
_TERMIO_CFSETISPEED$TERMIOS$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,36(%eax)
	leave
	ret

.text
	.align 4
.globl	_TERMIO_CFSETOSPEED$TERMIOS$LONGWORD
_TERMIO_CFSETOSPEED$TERMIOS$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,40(%eax)
	leave
	ret

.text
	.align 4
.globl	_TERMIO_CFMAKERAW$TERMIOS
_TERMIO_CFMAKERAW$TERMIOS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	andl	$-10239,%edx
	movl	-4(%ebp),%eax
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	orl	$1,%edx
	movl	-4(%ebp),%eax
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	andl	$-2,%eax
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	andl	$1606416993,%eax
	movl	-4(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	andl	$-4865,%eax
	orl	$2816,%eax
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movb	$1,32(%eax)
	movl	-4(%ebp),%eax
	movb	$0,33(%eax)
	leave
	ret

.text
	.align 4
.globl	_TERMIO_TCSENDBREAK$LONGINT$LONGINT$$LONGINT
_TERMIO_TCSENDBREAK$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_tcsendbreak$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_TERMIO_TCSETPGRP$LONGINT$LONGINT$$LONGINT
_TERMIO_TCSETPGRP$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_tcsetpgrp$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_TERMIO_TCGETPGRP$LONGINT$LONGINT$$LONGINT
_TERMIO_TCGETPGRP$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_TERMIO_ISATTY$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj80
	jmp	Lj81
Lj80:
	movl	$-1,-12(%ebp)
	jmp	Lj78
Lj81:
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1074033783,%edx
	call	LFPC_SYSC_IOCTL$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj94
	jmp	Lj95
Lj94:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
Lj95:
Lj78:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_TERMIO_TCDRAIN$LONGINT$$LONGINT
_TERMIO_TCDRAIN$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	$536900702,%edx
	call	LFPC_SYSC_IOCTL$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_TERMIO_TCFLOW$LONGINT$LONGINT$$LONGINT
_TERMIO_TCFLOW$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_tcflow$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_TERMIO_TCFLUSH$LONGINT$LONGINT$$LONGINT
_TERMIO_TCFLUSH$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_tcflush$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_TERMIO_ISATTY$LONGINT$$LONGINT
_TERMIO_ISATTY$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1076655123,%edx
	call	LFPC_SYSC_IOCTL$stub
	cmpl	$-1,%eax
	setneb	%al
	movzbl	%al,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_TERMIO_ISATTY$TEXT$$LONGINT
_TERMIO_ISATTY$TEXT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_TERMIO_ISATTY$LONGINT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_TERMIO_TTYNAME$LONGINT$$SHORTSTRING
_TERMIO_TTYNAME$LONGINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-116(%ebp)
	call	Lj145
Lj145:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
	leal	-112(%ebp),%edx
	movl	-4(%ebp),%eax
	call	LFPC_SYSC_FSTAT$stub
	cmpl	$-1,%eax
	je	Lj150
	jmp	Lj152
Lj152:
	movl	-4(%ebp),%eax
	call	L_TERMIO_ISATTY$LONGINT$$LONGINT$stub
	cmpl	$1,%eax
	jne	Lj150
	jmp	Lj151
Lj150:
	jmp	Lj144
Lj151:
	movl	-112(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-108(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	%ebp,%eax
	movl	L_$TERMIO$_Ld2$non_lazy_ptr-Lj145(%ebx),%edx
	call	L_TERMIO_TTYNAME$LONGINT$$SHORTSTRING_MYSEARCH$SHORTSTRING$$BOOLEAN$stub
Lj144:
	movl	-116(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_TERMIO_TTYNAME$LONGINT$$SHORTSTRING_MYSEARCH$SHORTSTRING$$BOOLEAN
_TERMIO_TTYNAME$LONGINT$$SHORTSTRING_MYSEARCH$SHORTSTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1160,%esp
	movl	%ebx,-1144(%ebp)
	call	Lj147
Lj147:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-628(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	leal	-628(%ebp),%ecx
	leal	-884(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	L_$TERMIO$_Ld3$non_lazy_ptr-Lj147(%ebx),%eax
	movl	%eax,(%esp)
	leal	-884(%ebp),%ecx
	leal	-884(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	leal	-883(%ebp),%eax
	call	LFPC_SYSC_OPENDIR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj188
	jmp	Lj189
Lj188:
	movb	$0,-9(%ebp)
	jmp	Lj146
Lj189:
	movl	-16(%ebp),%eax
	call	LFPC_SYSC_READDIR$stub
	movl	%eax,-20(%ebp)
	jmp	Lj197
	.align 2
Lj196:
	movl	$2,(%esp)
	leal	-628(%ebp),%eax
	movl	%eax,-640(%ebp)
	movl	L_$TERMIO$_Ld4$non_lazy_ptr-Lj147(%ebx),%eax
	movl	%eax,-636(%ebp)
	movl	-20(%ebp),%eax
	leal	8(%eax),%eax
	leal	-1140(%ebp),%edx
	call	L_SYSTEM_STRPAS$PCHAR$$SHORTSTRING$stub
	leal	-1140(%ebp),%eax
	movl	%eax,-632(%ebp)
	leal	-640(%ebp),%ecx
	leal	-276(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
	leal	-372(%ebp),%edx
	leal	-276(%ebp),%eax
	call	L_BASEUNIX_FPSTAT$SHORTSTRING$STAT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj211
	jmp	Lj212
Lj211:
	movw	-364(%ebp),%ax
	call	L_BASEUNIX_FPS_ISDIR$WORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj222
	jmp	Lj218
Lj222:
	movl	-20(%ebp),%eax
	leal	8(%eax),%eax
	leal	-884(%ebp),%edx
	call	L_SYSTEM_STRPAS$PCHAR$$SHORTSTRING$stub
	leal	-884(%ebp),%eax
	movl	L_$TERMIO$_Ld5$non_lazy_ptr-Lj147(%ebx),%edx
	call	Lfpc_shortstr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj221
	jmp	Lj218
Lj221:
	movl	-20(%ebp),%eax
	leal	8(%eax),%eax
	leal	-884(%ebp),%edx
	call	L_SYSTEM_STRPAS$PCHAR$$SHORTSTRING$stub
	leal	-884(%ebp),%eax
	movl	L_$TERMIO$_Ld6$non_lazy_ptr-Lj147(%ebx),%edx
	call	Lfpc_shortstr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj220
	jmp	Lj218
Lj220:
	movl	-20(%ebp),%eax
	leal	8(%eax),%eax
	leal	-884(%ebp),%edx
	call	L_SYSTEM_STRPAS$PCHAR$$SHORTSTRING$stub
	movzbl	-884(%ebp),%eax
	testl	%eax,%eax
	jne	Lj219
	jmp	Lj218
Lj219:
	movl	-20(%ebp),%eax
	leal	8(%eax),%eax
	leal	-884(%ebp),%edx
	call	L_SYSTEM_STRPAS$PCHAR$$SHORTSTRING$stub
	leal	-884(%ebp),%eax
	movl	L_$TERMIO$_Ld7$non_lazy_ptr-Lj147(%ebx),%edx
	call	Lfpc_shortstr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj217
	jmp	Lj218
Lj217:
	leal	-276(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_TERMIO_TTYNAME$LONGINT$$SHORTSTRING_MYSEARCH$SHORTSTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj253
	jmp	Lj254
Lj253:
	movl	-16(%ebp),%eax
	call	LFPC_SYSC_CLOSEDIR$stub
	movb	$1,-9(%ebp)
	jmp	Lj146
Lj254:
	jmp	Lj263
Lj218:
	movl	-20(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%eax),%eax
	cmpl	-16(%edx),%eax
	je	Lj266
	jmp	Lj265
Lj266:
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	cmpl	-372(%ebp),%eax
	je	Lj264
	jmp	Lj265
Lj264:
	movl	-16(%ebp),%eax
	call	LFPC_SYSC_CLOSEDIR$stub
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	leal	-276(%ebp),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movb	$1,-9(%ebp)
	jmp	Lj146
Lj265:
Lj263:
Lj212:
	movl	-16(%ebp),%eax
	call	LFPC_SYSC_READDIR$stub
	movl	%eax,-20(%ebp)
Lj197:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj196
	jmp	Lj198
Lj198:
	movl	-16(%ebp),%eax
	call	LFPC_SYSC_CLOSEDIR$stub
	movb	$0,-9(%ebp)
Lj146:
	movb	-9(%ebp),%al
	movl	-1144(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_TERMIO_TTYNAME$TEXT$$SHORTSTRING
_TERMIO_TTYNAME$TEXT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_TERMIO_TTYNAME$LONGINT$$SHORTSTRING$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_TERMIO
_THREADVARLIST_TERMIO:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
.globl	_TC_TERMIO_TTYDEFCHARS
_TC_TERMIO_TTYDEFCHARS:
	.byte	4,31,31,31,23,21,18,255,3,2,26,25,17,19,22,15,1,0,20,255

.const
	.align 2
.globl	_$TERMIO$_Ld1
_$TERMIO$_Ld1:
	.ascii	"\000\000"

.const
	.align 2
.globl	_$TERMIO$_Ld2
_$TERMIO$_Ld2:
	.ascii	"\004/dev\000"

.const
	.align 2
.globl	_$TERMIO$_Ld3
_$TERMIO$_Ld3:
	.ascii	"\001\000\000"

.const
	.align 2
.globl	_$TERMIO$_Ld4
_$TERMIO$_Ld4:
	.ascii	"\001/\000"

.const
	.align 2
.globl	_$TERMIO$_Ld5
_$TERMIO$_Ld5:
	.ascii	"\001.\000"

.const
	.align 2
.globl	_$TERMIO$_Ld6
_$TERMIO$_Ld6:
	.ascii	"\002..\000"

.const
	.align 2
.globl	_$TERMIO$_Ld7
_$TERMIO$_Ld7:
	.ascii	"\002fd\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_IOCTL$stub:
.indirect_symbol FPC_SYSC_IOCTL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYS_SETERRNO$stub:
.indirect_symbol FPC_SYS_SETERRNO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_tcsendbreak$stub:
.indirect_symbol _tcsendbreak
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_tcsetpgrp$stub:
.indirect_symbol _tcsetpgrp
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TERMIO_ISATTY$LONGINT$$LONGINT$stub:
.indirect_symbol _TERMIO_ISATTY$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_tcflow$stub:
.indirect_symbol _tcflow
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_tcflush$stub:
.indirect_symbol _tcflush
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_FSTAT$stub:
.indirect_symbol FPC_SYSC_FSTAT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TERMIO_TTYNAME$LONGINT$$SHORTSTRING_MYSEARCH$SHORTSTRING$$BOOLEAN$stub:
.indirect_symbol _TERMIO_TTYNAME$LONGINT$$SHORTSTRING_MYSEARCH$SHORTSTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SHORTSTR_ASSIGN$stub:
.indirect_symbol FPC_SHORTSTR_ASSIGN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_shortstr$stub:
.indirect_symbol fpc_shortstr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_concat$stub:
.indirect_symbol fpc_shortstr_concat
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_OPENDIR$stub:
.indirect_symbol FPC_SYSC_OPENDIR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_READDIR$stub:
.indirect_symbol FPC_SYSC_READDIR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_STRPAS$PCHAR$$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_STRPAS$PCHAR$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_concat_multi$stub:
.indirect_symbol fpc_shortstr_concat_multi
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPSTAT$SHORTSTRING$STAT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPSTAT$SHORTSTRING$STAT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPS_ISDIR$WORD$$BOOLEAN$stub:
.indirect_symbol _BASEUNIX_FPS_ISDIR$WORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_compare_equal$stub:
.indirect_symbol fpc_shortstr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_CLOSEDIR$stub:
.indirect_symbol FPC_SYSC_CLOSEDIR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TERMIO_TTYNAME$LONGINT$$SHORTSTRING$stub:
.indirect_symbol _TERMIO_TTYNAME$LONGINT$$SHORTSTRING
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
.globl	_INIT_TERMIO_WINSIZE
_INIT_TERMIO_WINSIZE:
	.byte	13,7
	.ascii	"winsize"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_TERMIO_WINSIZE
_RTTI_TERMIO_WINSIZE:
	.byte	13,7
	.ascii	"winsize"
	.long	8,4
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_SYSTEM_WORD
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	6

.const_data
	.align 2
.globl	_INIT_TERMIO_TERMIOS
_INIT_TERMIO_TERMIOS:
	.byte	13,7
	.ascii	"termios"
	.long	44,0

.const_data
	.align 2
.globl	_RTTI_TERMIO_DEF2
_RTTI_TERMIO_DEF2:
	.byte	12
	.ascii	"\000"
	.long	1,20
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_TERMIO_TERMIOS
_RTTI_TERMIO_TERMIOS:
	.byte	13,7
	.ascii	"termios"
	.long	44,7
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_TERMIO_DEF2
	.long	16
	.long	_RTTI_SYSTEM_LONGINT
	.long	36
	.long	_RTTI_SYSTEM_LONGINT
	.long	40
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
L_$TERMIO$_Ld2$non_lazy_ptr:
.indirect_symbol _$TERMIO$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TERMIO$_Ld3$non_lazy_ptr:
.indirect_symbol _$TERMIO$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TERMIO$_Ld4$non_lazy_ptr:
.indirect_symbol _$TERMIO$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TERMIO$_Ld5$non_lazy_ptr:
.indirect_symbol _$TERMIO$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TERMIO$_Ld6$non_lazy_ptr:
.indirect_symbol _$TERMIO$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TERMIO$_Ld7$non_lazy_ptr:
.indirect_symbol _$TERMIO$_Ld7
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

