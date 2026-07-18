# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DBF_WTIL_LOCKFILE$LONGINT$LONGWORD$LONGWORD$LONGWORD$LONGWORD$$LONGBOOL
_DBF_WTIL_LOCKFILE$LONGINT$LONGWORD$LONGWORD$LONGWORD$LONGWORD$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movw	$1,-20(%ebp)
	movw	$0,-18(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	%eax,-40(%ebp)
	movl	%edx,-36(%ebp)
	movl	12(%ebp),%edx
	movl	$0,%eax
	movl	%edx,-32(%ebp)
	movl	%eax,-28(%ebp)
	call	LFPC_SYSC_GETPID$stub
	movl	%eax,-24(%ebp)
	leal	-40(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$8,%edx
	call	L_BASEUNIX_FPFCNTL$LONGINT$LONGINT$FLOCK$$LONGINT$stub
	cmpl	$-1,%eax
	setneb	%al
	movzbl	%al,%eax
	negl	%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj25
	jmp	Lj26
Lj25:
	call	L_DBF_WTIL_GETLASTERROR$$LONGINT$stub
	movl	%eax,-44(%ebp)
	movl	-44(%ebp),%eax
	cmpl	$13,%eax
	je	Lj29
	jmp	Lj31
Lj31:
	movl	-44(%ebp),%eax
	cmpl	$35,%eax
	je	Lj29
	jmp	Lj30
Lj29:
	movl	$13,%eax
	call	L_DBF_WTIL_SETLASTERROR$LONGINT$stub
	jmp	Lj34
Lj30:
	movl	$-1,-16(%ebp)
Lj34:
Lj26:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_WTIL_UNLOCKFILE$LONGINT$LONGWORD$LONGWORD$LONGWORD$LONGWORD$$LONGBOOL
_DBF_WTIL_UNLOCKFILE$LONGINT$LONGWORD$LONGWORD$LONGWORD$LONGWORD$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movw	$2,-20(%ebp)
	movw	$0,-18(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	%eax,-40(%ebp)
	movl	%edx,-36(%ebp)
	movl	12(%ebp),%eax
	movl	$0,%edx
	movl	%eax,-32(%ebp)
	movl	%edx,-28(%ebp)
	call	LFPC_SYSC_GETPID$stub
	movl	%eax,-24(%ebp)
	leal	-40(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$8,%edx
	call	L_BASEUNIX_FPFCNTL$LONGINT$LONGINT$FLOCK$$LONGINT$stub
	cmpl	$-1,%eax
	setneb	%al
	movzbl	%al,%eax
	negl	%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_WTIL_DATETIMETOSYSTEMTIME$TDATETIME$TSYSTEMTIME
_DBF_WTIL_DATETIMETOSYSTEMTIME$TDATETIME$TSYSTEMTIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	4(%eax),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	leal	6(%eax),%ecx
	movl	-4(%ebp),%eax
	leal	2(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_DECODEDATEFULLY$TDATETIME$WORD$WORD$WORD$WORD$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	decw	4(%eax)
	movl	-4(%ebp),%eax
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	leal	12(%eax),%ecx
	movl	-4(%ebp),%eax
	leal	10(%eax),%edx
	movl	-4(%ebp),%eax
	leal	8(%eax),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_WTIL_SYSTEMTIMETODATETIME$TSYSTEMTIME$$TDATETIME
_DBF_WTIL_SYSTEMTIMETODATETIME$TSYSTEMTIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	6(%eax),%cx
	movl	-4(%ebp),%eax
	movw	2(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-12(%ebp)
	fldz
	fldl	-12(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jae	Lj91
	jmp	Lj92
Lj91:
	movl	-4(%ebp),%eax
	movw	14(%eax),%ax
	movw	%ax,(%esp)
	movl	-4(%ebp),%eax
	movw	12(%eax),%cx
	movl	-4(%ebp),%eax
	movw	10(%eax),%dx
	movl	-4(%ebp),%eax
	movw	8(%eax),%ax
	call	L_SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fldl	-12(%ebp)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj103
Lj92:
	movl	-4(%ebp),%eax
	movw	14(%eax),%ax
	movw	%ax,(%esp)
	movl	-4(%ebp),%eax
	movw	12(%eax),%cx
	movl	-4(%ebp),%eax
	movw	10(%eax),%dx
	movl	-4(%ebp),%eax
	movw	8(%eax),%ax
	call	L_SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fldl	-12(%ebp)
	fsubp	%st,%st(1)
	fstpl	-12(%ebp)
Lj103:
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DBF_WTIL_GETLOCALTIME$TSYSTEMTIME
_DBF_WTIL_GETLOCALTIME$TSYSTEMTIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	call	L_SYSUTILS_NOW$$TDATETIME$stub
	fstpl	(%esp)
	movl	-4(%ebp),%eax
	call	L_DBF_WTIL_DATETIMETOSYSTEMTIME$TDATETIME$TSYSTEMTIME$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_WTIL_GETOEMCP$$LONGWORD
_DBF_WTIL_GETOEMCP$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$-1,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_WTIL_GETACP$$LONGWORD
_DBF_WTIL_GETACP$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$1252,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_WTIL_OEMTOCHAR$PCHAR$PCHAR$$LONGBOOL
_DBF_WTIL_OEMTOCHAR$PCHAR$PCHAR$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj130
	jmp	Lj131
Lj130:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_STRCOPY$PCHAR$PCHAR$$PCHAR$stub
Lj131:
	movl	$-1,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_WTIL_CHARTOOEM$PCHAR$PCHAR$$LONGBOOL
_DBF_WTIL_CHARTOOEM$PCHAR$PCHAR$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj140
	jmp	Lj141
Lj140:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_STRCOPY$PCHAR$PCHAR$$PCHAR$stub
Lj141:
	movl	$-1,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_WTIL_OEMTOCHARBUFFA$PCHAR$PCHAR$LONGWORD$$LONGBOOL
_DBF_WTIL_OEMTOCHARBUFFA$PCHAR$PCHAR$LONGWORD$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj150
	jmp	Lj151
Lj150:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_STRLCOPY$PCHAR$PCHAR$LONGINT$$PCHAR$stub
Lj151:
	movl	$-1,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_WTIL_CHARTOOEMBUFFA$PCHAR$PCHAR$LONGWORD$$LONGBOOL
_DBF_WTIL_CHARTOOEMBUFFA$PCHAR$PCHAR$LONGWORD$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj162
	jmp	Lj163
Lj162:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_STRLCOPY$PCHAR$PCHAR$LONGINT$$PCHAR$stub
Lj163:
	movl	$-1,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_WTIL_MULTIBYTETOWIDECHAR$LONGWORD$LONGWORD$PCHAR$LONGINT$PWIDECHAR$LONGINT$$LONGINT
_DBF_WTIL_MULTIBYTETOWIDECHAR$LONGWORD$LONGWORD$PCHAR$LONGINT$PWIDECHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj174
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	leal	-20(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-20(%ebp),%eax
	call	Lfpc_ansistr_to_unicodestr$stub
	movl	-68(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	-24(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj189
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj189:
	movl	%eax,-16(%ebp)
	movl	12(%ebp),%edx
	movl	-16(%ebp),%ecx
	leal	-24(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj174:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj175
	call	LFPC_RERAISE$stub
Lj175:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_WTIL_WIDECHARTOMULTIBYTE$crc52F3854C
_DBF_WTIL_WIDECHARTOMULTIBYTE$crc52F3854C:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj210
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	leal	-24(%ebp),%edx
	call	Lfpc_uchar_to_unicodestr$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-24(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj225
	movl	-4(%eax),%eax
Lj225:
	movl	%eax,-16(%ebp)
	movl	20(%ebp),%edx
	movl	-16(%ebp),%ecx
	leal	-20(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj210:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj211
	call	LFPC_RERAISE$stub
Lj211:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_WTIL_COMPARESTRING$LONGWORD$LONGWORD$PCHAR$LONGINT$PCHAR$LONGINT$$LONGINT
_DBF_WTIL_COMPARESTRING$LONGWORD$LONGWORD$PCHAR$LONGINT$PCHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	16(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SYSUTILS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT$stub
	addl	$2,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$2,%eax
	jg	Lj254
	jmp	Lj255
Lj254:
	movl	$3,-16(%ebp)
Lj255:
	movl	-16(%ebp),%eax
	cmpl	$2,%eax
	jl	Lj258
	jmp	Lj259
Lj258:
	movl	$1,-16(%ebp)
Lj259:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_WTIL_ENUMSYSTEMCODEPAGES$POINTER$LONGWORD$$LONGBOOL
_DBF_WTIL_ENUMSYSTEMCODEPAGES$POINTER$LONGWORD$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$-1,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_WTIL_ENUMSYSTEMLOCALES$POINTER$LONGWORD$$LONGBOOL
_DBF_WTIL_ENUMSYSTEMLOCALES$POINTER$LONGWORD$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$-1,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_WTIL_GETUSERDEFAULTLCID$$LONGWORD
_DBF_WTIL_GETUSERDEFAULTLCID$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$2057,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_WTIL_GETLASTERROR$$LONGINT
_DBF_WTIL_GETLASTERROR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	LFPC_SYS_GETERRNO$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_WTIL_SETLASTERROR$LONGINT
_DBF_WTIL_SETLASTERROR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_SYS_SETERRNO$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_DBF_WTIL
_THREADVARLIST_DBF_WTIL:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_GETPID$stub:
.indirect_symbol FPC_SYSC_GETPID
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPFCNTL$LONGINT$LONGINT$FLOCK$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPFCNTL$LONGINT$LONGINT$FLOCK$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_WTIL_GETLASTERROR$$LONGINT$stub:
.indirect_symbol _DBF_WTIL_GETLASTERROR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_WTIL_SETLASTERROR$LONGINT$stub:
.indirect_symbol _DBF_WTIL_SETLASTERROR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DECODEDATEFULLY$TDATETIME$WORD$WORD$WORD$WORD$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_DECODEDATEFULLY$TDATETIME$WORD$WORD$WORD$WORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub:
.indirect_symbol _SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_NOW$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_NOW$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_WTIL_DATETIMETOSYSTEMTIME$TDATETIME$TSYSTEMTIME$stub:
.indirect_symbol _DBF_WTIL_DATETIMETOSYSTEMTIME$TDATETIME$TSYSTEMTIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRCOPY$PCHAR$PCHAR$$PCHAR$stub:
.indirect_symbol _SYSUTILS_STRCOPY$PCHAR$PCHAR$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRLCOPY$PCHAR$PCHAR$LONGINT$$PCHAR$stub:
.indirect_symbol _SYSUTILS_STRLCOPY$PCHAR$PCHAR$LONGINT$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_PUSHEXCEPTADDR$stub:
.indirect_symbol FPC_PUSHEXCEPTADDR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SETJMP$stub:
.indirect_symbol FPC_SETJMP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_char_to_ansistr$stub:
.indirect_symbol fpc_char_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_UNICODESTR_DECR_REF$stub:
.indirect_symbol FPC_UNICODESTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_to_unicodestr$stub:
.indirect_symbol fpc_ansistr_to_unicodestr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_UNICODESTR_INCR_REF$stub:
.indirect_symbol FPC_UNICODESTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_MOVE$formal$formal$LONGINT$stub:
.indirect_symbol _SYSTEM_MOVE$formal$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_POPADDRSTACK$stub:
.indirect_symbol FPC_POPADDRSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_RERAISE$stub:
.indirect_symbol FPC_RERAISE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_decr_ref$stub:
.indirect_symbol fpc_unicodestr_decr_ref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_uchar_to_unicodestr$stub:
.indirect_symbol fpc_uchar_to_unicodestr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_to_ansistr$stub:
.indirect_symbol fpc_unicodestr_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSUTILS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYS_GETERRNO$stub:
.indirect_symbol FPC_SYS_GETERRNO
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
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.const_data
	.align 2
.globl	_INIT_DBF_WTIL_PBOOL
_INIT_DBF_WTIL_PBOOL:
	.byte	0
	.ascii	"\005PBOOL"

.const_data
	.align 2
.globl	_RTTI_DBF_WTIL_PBOOL
_RTTI_DBF_WTIL_PBOOL:
	.byte	0
	.ascii	"\005PBOOL"

.const_data
	.align 2
.globl	_INIT_DBF_WTIL_PLPSTR
_INIT_DBF_WTIL_PLPSTR:
	.byte	0
	.ascii	"\006PLPSTR"

.const_data
	.align 2
.globl	_RTTI_DBF_WTIL_PLPSTR
_RTTI_DBF_WTIL_PLPSTR:
	.byte	0
	.ascii	"\006PLPSTR"

.const_data
	.align 2
.globl	_INIT_DBF_WTIL_PLPWSTR
_INIT_DBF_WTIL_PLPWSTR:
	.byte	0
	.ascii	"\007PLPWSTR"

.const_data
	.align 2
.globl	_RTTI_DBF_WTIL_PLPWSTR
_RTTI_DBF_WTIL_PLPWSTR:
	.byte	0
	.ascii	"\007PLPWSTR"

.const_data
	.align 2
.globl	_INIT_DBF_WTIL_PSYSTEMTIME
_INIT_DBF_WTIL_PSYSTEMTIME:
	.byte	0
	.ascii	"\013PSystemTime"

.const_data
	.align 2
.globl	_RTTI_DBF_WTIL_PSYSTEMTIME
_RTTI_DBF_WTIL_PSYSTEMTIME:
	.byte	0
	.ascii	"\013PSystemTime"

.const_data
	.align 2
.globl	_INIT_DBF_WTIL_TSYSTEMTIME
_INIT_DBF_WTIL_TSYSTEMTIME:
	.byte	13,11
	.ascii	"TSystemTime"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_DBF_WTIL_TSYSTEMTIME
_RTTI_DBF_WTIL_TSYSTEMTIME:
	.byte	13,11
	.ascii	"TSystemTime"
	.long	16,8
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_SYSTEM_WORD
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	6
	.long	_RTTI_SYSTEM_WORD
	.long	8
	.long	_RTTI_SYSTEM_WORD
	.long	10
	.long	_RTTI_SYSTEM_WORD
	.long	12
	.long	_RTTI_SYSTEM_WORD
	.long	14
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

