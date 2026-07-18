# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DBF_COMMON_GETCOMPLETEPATH$ANSISTRING$ANSISTRING$$ANSISTRING
_DBF_COMMON_GETCOMPLETEPATH$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj5
	movl	-8(%ebp),%eax
	call	L_DBF_COMMON_ISFULLFILEPATH$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj8
	jmp	Lj9
Lj8:
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj14
Lj9:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj17
	movl	-4(%eax),%eax
Lj17:
	cmpl	$0,%eax
	jg	Lj15
	jmp	Lj16
Lj15:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_COMMON_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING$stub
	movl	-60(%ebp),%edx
	movl	-8(%ebp),%ecx
	leal	-56(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-56(%ebp),%eax
	movl	-12(%ebp),%edx
	call	L_SYSUTILS_EXPANDFILENAME$ANSISTRING$$ANSISTRING$stub
	jmp	Lj32
Lj16:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_EXPANDFILENAME$ANSISTRING$$ANSISTRING$stub
Lj32:
Lj14:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj39
	movl	-4(%eax),%eax
Lj39:
	cmpl	$0,%eax
	jg	Lj37
	jmp	Lj38
Lj37:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING$stub
	movl	-60(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	movl	%eax,(%ebx)
Lj38:
Lj5:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj6
	call	LFPC_RERAISE$stub
Lj6:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_COMMON_ISFULLFILEPATH$ANSISTRING$$BOOLEAN
_DBF_COMMON_ISFULLFILEPATH$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj50
	movl	-4(%eax),%eax
Lj50:
	cmpl	$0,%eax
	setgb	-5(%ebp)
	cmpb	$0,-5(%ebp)
	jne	Lj51
	jmp	Lj52
Lj51:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$47,%al
	seteb	-5(%ebp)
Lj52:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_COMMON_GETCOMPLETEFILENAME$ANSISTRING$ANSISTRING$$ANSISTRING
_DBF_COMMON_GETCOMPLETEFILENAME$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj57
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING$stub
	movl	-64(%ebp),%edx
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_DBF_COMMON_GETCOMPLETEPATH$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	leal	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_EXTRACTFILENAME$ANSISTRING$$ANSISTRING$stub
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-16(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-16(%ebp),%eax
	movl	%eax,(%ebx)
Lj57:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj58
	call	LFPC_RERAISE$stub
Lj58:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_COMMON_DATETIMETOBDETIMESTAMP$TDATETIME$$DOUBLE
_DBF_COMMON_DATETIMETOBDETIMESTAMP$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_SYSUTILS_DATETIMETOTIMESTAMP$TDATETIME$$TTIMESTAMP$stub
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	leal	-16(%ebp),%eax
	call	L_SYSUTILS_TIMESTAMPTOMSECS$TTIMESTAMP$$COMP$stub
	fstpl	-24(%ebp)
	fldl	-24(%ebp)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DBF_COMMON_BDETIMESTAMPTODATETIME$DOUBLE$$TDATETIME
_DBF_COMMON_BDETIMESTAMPTODATETIME$DOUBLE$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	fldl	8(%ebp)
	fistpq	-24(%ebp)
	fwait
	fildq	-24(%ebp)
	fistpq	(%esp)
	call	L_SYSUTILS_MSECSTOTIMESTAMP$COMP$$TTIMESTAMP$stub
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	leal	-16(%ebp),%eax
	call	L_SYSUTILS_TIMESTAMPTODATETIME$TTIMESTAMP$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DBF_COMMON_FREEANDNIL$formal
_DBF_COMMON_FREEANDNIL$formal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_COMMON_FREEMEMANDNIL$POINTER
_DBF_COMMON_FREEMEMANDNIL$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	-8(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_COMMON_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING
_DBF_COMMON_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj131
Lj131:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%esi)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj136
	movl	-4(%eax),%eax
Lj136:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj137
	jmp	Lj138
Lj137:
	movl	L_$DBF_COMMON$_Ld1$non_lazy_ptr-Lj131(%ebx),%esi
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj141
Lj138:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$47,%al
	jne	Lj142
	jmp	Lj143
Lj142:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$DBF_COMMON$_Ld1$non_lazy_ptr-Lj131(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj143:
Lj141:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_COMMON_SWAPWORDBE$WORD$$WORD
_DBF_COMMON_SWAPWORDBE$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	andw	$255,%ax
	movzwl	%ax,%eax
	shll	$8,%eax
	movzwl	-4(%ebp),%edx
	shrl	$8,%edx
	andl	$255,%edx
	orl	%edx,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DBF_COMMON_SWAPWORDLE$WORD$$WORD
_DBF_COMMON_SWAPWORDLE$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DBF_COMMON_SWAPINTBE$LONGWORD$$LONGWORD
_DBF_COMMON_SWAPINTBE$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD
_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_COMMON_SWAPINT64BE$POINTER$POINTER
_DBF_COMMON_SWAPINT64BE$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	L_SYSTEM_SWAPENDIAN$INT64$$INT64$stub
	movl	-8(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_COMMON_SWAPINT64LE$POINTER$POINTER
_DBF_COMMON_SWAPINT64LE$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_COMMON_TRANSLATESTRING$LONGWORD$LONGWORD$PCHAR$PCHAR$LONGINT$$LONGINT
_DBF_COMMON_TRANSLATESTRING$LONGWORD$LONGWORD$PCHAR$PCHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$2088,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj192
	jmp	Lj193
Lj192:
	movl	-12(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,8(%ebp)
Lj193:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	call	L_DBF_WTIL_GETOEMCP$$LONGWORD$stub
	cmpl	-4(%ebp),%eax
	je	Lj202
	jmp	Lj201
Lj202:
	call	L_DBF_WTIL_GETACP$$LONGWORD$stub
	cmpl	-8(%ebp),%eax
	je	Lj200
	jmp	Lj201
Lj200:
	movl	8(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_WTIL_OEMTOCHARBUFFA$PCHAR$PCHAR$LONGWORD$$LONGBOOL$stub
	jmp	Lj209
Lj201:
	call	L_DBF_WTIL_GETACP$$LONGWORD$stub
	cmpl	-4(%ebp),%eax
	je	Lj212
	jmp	Lj211
Lj212:
	call	L_DBF_WTIL_GETOEMCP$$LONGWORD$stub
	cmpl	-8(%ebp),%eax
	je	Lj210
	jmp	Lj211
Lj210:
	movl	8(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_WTIL_CHARTOOEMBUFFA$PCHAR$PCHAR$LONGWORD$$LONGBOOL$stub
	jmp	Lj219
Lj211:
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj220
	jmp	Lj221
Lj220:
	movl	-12(%ebp),%eax
	cmpl	12(%ebp),%eax
	jne	Lj222
	jmp	Lj223
Lj222:
	movl	12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	8(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj223:
	jmp	Lj230
Lj221:
	movl	$1024,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-2064(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_DBF_WTIL_MULTIBYTETOWIDECHAR$LONGWORD$LONGWORD$PCHAR$LONGINT$PWIDECHAR$LONGINT$$LONGINT$stub
	movl	%eax,-2068(%ebp)
	movl	$0,(%esp)
	movl	$0,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-2068(%ebp),%eax
	movl	%eax,16(%esp)
	leal	-2064(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_WTIL_WIDECHARTOMULTIBYTE$crc52F3854C$stub
	movl	%eax,-16(%ebp)
Lj230:
Lj219:
Lj209:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_COMMON_FINDNEXTNAME$ANSISTRING$ANSISTRING$LONGINT
_DBF_COMMON_FINDNEXTNAME$ANSISTRING$ANSISTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	call	Lj264
Lj264:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-16(%ebp)
	movl	$0,-80(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj265
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj278
	movl	-4(%ecx),%ecx
Lj278:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj279
	movl	-4(%eax),%eax
Lj279:
	subl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-60(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	movl	%eax,-4(%ebp)
	.align 2
Lj284:
	movl	-12(%ebp),%eax
	incl	(%eax)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	L_$DBF_COMMON$_Ld3$non_lazy_ptr-Lj264(%ebx),%eax
	movl	%eax,-72(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-80(%ebp),%eax
	movl	%eax,-68(%ebp)
	leal	-76(%ebp),%edx
	leal	-64(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-64(%ebp),%eax
	leal	-60(%ebp),%ecx
	movl	-16(%ebp),%edx
	call	L_SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movl	-60(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	movl	%eax,(%esi)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj284
	jmp	Lj286
Lj286:
Lj265:
	call	LFPC_POPADDRSTACK$stub
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj266
	call	LFPC_RERAISE$stub
Lj266:
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_COMMON_MEMSCAN$POINTER$BYTE$LONGINT$$POINTER
_DBF_COMMON_MEMSCAN$POINTER$BYTE$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movb	-8(%ebp),%cl
	movl	-12(%ebp),%edx
	call	L_SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj323
	jmp	Lj324
Lj323:
	movl	$0,-16(%ebp)
	jmp	Lj327
Lj324:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-16(%ebp)
Lj327:
	movl	-16(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$DBF_COMMON$_Ld5
_$DBF_COMMON$_Ld5:
	.byte	9
	.ascii	"EDbfError"

.const_data
	.align 2
.globl	_VMT_DBF_COMMON_EDBFERROR
_VMT_DBF_COMMON_EDBFERROR:
	.long	12,-12
	.long	_VMT_DB_EDATABASEERROR
	.long	_$DBF_COMMON$_Ld5
	.long	0,0
	.long	_$DBF_COMMON$_Ld6
	.long	_RTTI_DBF_COMMON_EDBFERROR
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_SYSTEM_TOBJECT_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	_SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$DBF_COMMON$_Ld8
_$DBF_COMMON$_Ld8:
	.byte	14
	.ascii	"EDbfWriteError"

.const_data
	.align 2
.globl	_VMT_DBF_COMMON_EDBFWRITEERROR
_VMT_DBF_COMMON_EDBFWRITEERROR:
	.long	12,-12
	.long	_VMT_DBF_COMMON_EDBFERROR
	.long	_$DBF_COMMON$_Ld8
	.long	0,0
	.long	_$DBF_COMMON$_Ld9
	.long	_RTTI_DBF_COMMON_EDBFWRITEERROR
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_SYSTEM_TOBJECT_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	_SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_DBF_COMMON
_THREADVARLIST_DBF_COMMON:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$DBF_COMMON$_Ld2
_$DBF_COMMON$_Ld2:
	.short	0,1
	.long	0,-1,1
.reference _$DBF_COMMON$_Ld1
.globl	_$DBF_COMMON$_Ld1
_$DBF_COMMON$_Ld1:
.reference _$DBF_COMMON$_Ld2
	.ascii	"/\000"

.const_data
	.align 2
.globl	_$DBF_COMMON$_Ld4
_$DBF_COMMON$_Ld4:
	.short	0,1
	.long	0,-1,1
.reference _$DBF_COMMON$_Ld3
.globl	_$DBF_COMMON$_Ld3
_$DBF_COMMON$_Ld3:
.reference _$DBF_COMMON$_Ld4
	.ascii	"_\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

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

L_DBF_COMMON_ISFULLFILEPATH$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _DBF_COMMON_ISFULLFILEPATH$ANSISTRING$$BOOLEAN
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _DBF_COMMON_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_concat$stub:
.indirect_symbol fpc_ansistr_concat
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXPANDFILENAME$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_EXPANDFILENAME$ANSISTRING$$ANSISTRING
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

L_SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_GETCOMPLETEPATH$ANSISTRING$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _DBF_COMMON_GETCOMPLETEPATH$ANSISTRING$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXTRACTFILENAME$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_EXTRACTFILENAME$ANSISTRING$$ANSISTRING
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

L_SYSUTILS_DATETIMETOTIMESTAMP$TDATETIME$$TTIMESTAMP$stub:
.indirect_symbol _SYSUTILS_DATETIMETOTIMESTAMP$TDATETIME$$TTIMESTAMP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TIMESTAMPTOMSECS$TTIMESTAMP$$COMP$stub:
.indirect_symbol _SYSUTILS_TIMESTAMPTOMSECS$TTIMESTAMP$$COMP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_MSECSTOTIMESTAMP$COMP$$TTIMESTAMP$stub:
.indirect_symbol _SYSUTILS_MSECSTOTIMESTAMP$COMP$$TTIMESTAMP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TIMESTAMPTODATETIME$TTIMESTAMP$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_TIMESTAMPTODATETIME$TTIMESTAMP$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__FREE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD$stub:
.indirect_symbol _SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_SWAPENDIAN$INT64$$INT64$stub:
.indirect_symbol _SYSTEM_SWAPENDIAN$INT64$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_PCHAR_LENGTH$stub:
.indirect_symbol FPC_PCHAR_LENGTH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_WTIL_GETOEMCP$$LONGWORD$stub:
.indirect_symbol _DBF_WTIL_GETOEMCP$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_WTIL_GETACP$$LONGWORD$stub:
.indirect_symbol _DBF_WTIL_GETACP$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_WTIL_OEMTOCHARBUFFA$PCHAR$PCHAR$LONGWORD$$LONGBOOL$stub:
.indirect_symbol _DBF_WTIL_OEMTOCHARBUFFA$PCHAR$PCHAR$LONGWORD$$LONGBOOL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_WTIL_CHARTOOEMBUFFA$PCHAR$PCHAR$LONGWORD$$LONGBOOL$stub:
.indirect_symbol _DBF_WTIL_CHARTOOEMBUFFA$PCHAR$PCHAR$LONGWORD$$LONGBOOL
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

L_DBF_WTIL_MULTIBYTETOWIDECHAR$LONGWORD$LONGWORD$PCHAR$LONGINT$PWIDECHAR$LONGINT$$LONGINT$stub:
.indirect_symbol _DBF_WTIL_MULTIBYTETOWIDECHAR$LONGWORD$LONGWORD$PCHAR$LONGINT$PWIDECHAR$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_WTIL_WIDECHARTOMULTIBYTE$crc52F3854C$stub:
.indirect_symbol _DBF_WTIL_WIDECHARTOMULTIBYTE$crc52F3854C
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_copy$stub:
.indirect_symbol fpc_ansistr_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_concat_multi$stub:
.indirect_symbol fpc_ansistr_concat_multi
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT$stub:
.indirect_symbol _SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
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
.globl	_$DBF_COMMON$_Ld6
_$DBF_COMMON$_Ld6:
	.short	0
	.long	_$DBF_COMMON$_Ld7
	.align 2
.globl	_$DBF_COMMON$_Ld7
_$DBF_COMMON$_Ld7:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_COMMON_EDBFERROR
_INIT_DBF_COMMON_EDBFERROR:
	.byte	15,9
	.ascii	"EDbfError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_COMMON_EDBFERROR
_RTTI_DBF_COMMON_EDBFERROR:
	.byte	15,9
	.ascii	"EDbfError"
	.long	_VMT_DBF_COMMON_EDBFERROR
	.long	_RTTI_DB_EDATABASEERROR
	.short	0
	.byte	10
	.ascii	"dbf_common"
	.short	0

.const_data
	.align 2
.globl	_$DBF_COMMON$_Ld9
_$DBF_COMMON$_Ld9:
	.short	0
	.long	_$DBF_COMMON$_Ld10
	.align 2
.globl	_$DBF_COMMON$_Ld10
_$DBF_COMMON$_Ld10:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_COMMON_EDBFWRITEERROR
_INIT_DBF_COMMON_EDBFWRITEERROR:
	.byte	15,14
	.ascii	"EDbfWriteError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_COMMON_EDBFWRITEERROR
_RTTI_DBF_COMMON_EDBFWRITEERROR:
	.byte	15,14
	.ascii	"EDbfWriteError"
	.long	_VMT_DBF_COMMON_EDBFWRITEERROR
	.long	_RTTI_DBF_COMMON_EDBFERROR
	.short	0
	.byte	10
	.ascii	"dbf_common"
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_COMMON_TXBASEVERSION
_INIT_DBF_COMMON_TXBASEVERSION:
	.byte	3,13
	.ascii	"TXBaseVersion"
	.byte	1
	.long	0,7,0
	.byte	8
	.ascii	"xUnknown"
	.byte	8
	.ascii	"xClipper"
	.byte	8
	.ascii	"xBaseIII"
	.byte	7
	.ascii	"xBaseIV"
	.byte	6
	.ascii	"xBaseV"
	.byte	7
	.ascii	"xFoxPro"
	.byte	8
	.ascii	"xBaseVII"
	.byte	13
	.ascii	"xVisualFoxPro"
	.byte	10
	.ascii	"dbf_common"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_COMMON_TXBASEVERSION
_RTTI_DBF_COMMON_TXBASEVERSION:
	.byte	3,13
	.ascii	"TXBaseVersion"
	.byte	1
	.long	0,7,0
	.byte	8
	.ascii	"xUnknown"
	.byte	8
	.ascii	"xClipper"
	.byte	8
	.ascii	"xBaseIII"
	.byte	7
	.ascii	"xBaseIV"
	.byte	6
	.ascii	"xBaseV"
	.byte	7
	.ascii	"xFoxPro"
	.byte	8
	.ascii	"xBaseVII"
	.byte	13
	.ascii	"xVisualFoxPro"
	.byte	10
	.ascii	"dbf_common"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_COMMON_TXBASEVERSION_s2o
_RTTI_DBF_COMMON_TXBASEVERSION_s2o:
	.long	8,2
	.long	_RTTI_DBF_COMMON_TXBASEVERSION+46
	.long	3
	.long	_RTTI_DBF_COMMON_TXBASEVERSION+55
	.long	4
	.long	_RTTI_DBF_COMMON_TXBASEVERSION+63
	.long	6
	.long	_RTTI_DBF_COMMON_TXBASEVERSION+78
	.long	1
	.long	_RTTI_DBF_COMMON_TXBASEVERSION+37
	.long	5
	.long	_RTTI_DBF_COMMON_TXBASEVERSION+70
	.long	0
	.long	_RTTI_DBF_COMMON_TXBASEVERSION+28
	.long	7
	.long	_RTTI_DBF_COMMON_TXBASEVERSION+87

.const_data
	.align 2
.globl	_RTTI_DBF_COMMON_TXBASEVERSION_o2s
_RTTI_DBF_COMMON_TXBASEVERSION_o2s:
	.long	0
	.long	_RTTI_DBF_COMMON_TXBASEVERSION+28
	.long	_RTTI_DBF_COMMON_TXBASEVERSION+37
	.long	_RTTI_DBF_COMMON_TXBASEVERSION+46
	.long	_RTTI_DBF_COMMON_TXBASEVERSION+55
	.long	_RTTI_DBF_COMMON_TXBASEVERSION+63
	.long	_RTTI_DBF_COMMON_TXBASEVERSION+70
	.long	_RTTI_DBF_COMMON_TXBASEVERSION+78
	.long	_RTTI_DBF_COMMON_TXBASEVERSION+87

.const_data
	.align 2
.globl	_INIT_DBF_COMMON_TSEARCHKEYTYPE
_INIT_DBF_COMMON_TSEARCHKEYTYPE:
	.byte	3,14
	.ascii	"TSearchKeyType"
	.byte	1
	.long	0,2,0
	.byte	7
	.ascii	"stEqual"
	.byte	14
	.ascii	"stGreaterEqual"
	.byte	9
	.ascii	"stGreater"
	.byte	10
	.ascii	"dbf_common"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_COMMON_TSEARCHKEYTYPE
_RTTI_DBF_COMMON_TSEARCHKEYTYPE:
	.byte	3,14
	.ascii	"TSearchKeyType"
	.byte	1
	.long	0,2,0
	.byte	7
	.ascii	"stEqual"
	.byte	14
	.ascii	"stGreaterEqual"
	.byte	9
	.ascii	"stGreater"
	.byte	10
	.ascii	"dbf_common"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_COMMON_TSEARCHKEYTYPE_s2o
_RTTI_DBF_COMMON_TSEARCHKEYTYPE_s2o:
	.long	3,0
	.long	_RTTI_DBF_COMMON_TSEARCHKEYTYPE+29
	.long	2
	.long	_RTTI_DBF_COMMON_TSEARCHKEYTYPE+52
	.long	1
	.long	_RTTI_DBF_COMMON_TSEARCHKEYTYPE+37

.const_data
	.align 2
.globl	_RTTI_DBF_COMMON_TSEARCHKEYTYPE_o2s
_RTTI_DBF_COMMON_TSEARCHKEYTYPE_o2s:
	.long	0
	.long	_RTTI_DBF_COMMON_TSEARCHKEYTYPE+29
	.long	_RTTI_DBF_COMMON_TSEARCHKEYTYPE+37
	.long	_RTTI_DBF_COMMON_TSEARCHKEYTYPE+52

.const_data
	.align 2
.globl	_INIT_DBF_COMMON_TDATETIMEHANDLING
_INIT_DBF_COMMON_TDATETIMEHANDLING:
	.byte	3,17
	.ascii	"TDateTimeHandling"
	.byte	1
	.long	0,1,0
	.byte	10
	.ascii	"dtDateTime"
	.byte	14
	.ascii	"dtBDETimeStamp"
	.byte	10
	.ascii	"dbf_common"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_COMMON_TDATETIMEHANDLING
_RTTI_DBF_COMMON_TDATETIMEHANDLING:
	.byte	3,17
	.ascii	"TDateTimeHandling"
	.byte	1
	.long	0,1,0
	.byte	10
	.ascii	"dtDateTime"
	.byte	14
	.ascii	"dtBDETimeStamp"
	.byte	10
	.ascii	"dbf_common"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_COMMON_TDATETIMEHANDLING_s2o
_RTTI_DBF_COMMON_TDATETIMEHANDLING_s2o:
	.long	2,1
	.long	_RTTI_DBF_COMMON_TDATETIMEHANDLING+43
	.long	0
	.long	_RTTI_DBF_COMMON_TDATETIMEHANDLING+32

.const_data
	.align 2
.globl	_RTTI_DBF_COMMON_TDATETIMEHANDLING_o2s
_RTTI_DBF_COMMON_TDATETIMEHANDLING_o2s:
	.long	0
	.long	_RTTI_DBF_COMMON_TDATETIMEHANDLING+32
	.long	_RTTI_DBF_COMMON_TDATETIMEHANDLING+43

.const_data
	.align 2
.globl	_INIT_DBF_COMMON_PDATETIME
_INIT_DBF_COMMON_PDATETIME:
	.byte	0
	.ascii	"\011PDateTime"

.const_data
	.align 2
.globl	_RTTI_DBF_COMMON_PDATETIME
_RTTI_DBF_COMMON_PDATETIME:
	.byte	0
	.ascii	"\011PDateTime"

.const_data
	.align 2
.globl	_INIT_DBF_COMMON_PSMALLINT
_INIT_DBF_COMMON_PSMALLINT:
	.byte	0
	.ascii	"\011PSmallInt"

.const_data
	.align 2
.globl	_RTTI_DBF_COMMON_PSMALLINT
_RTTI_DBF_COMMON_PSMALLINT:
	.byte	0
	.ascii	"\011PSmallInt"

.const_data
	.align 2
.globl	_INIT_DBF_COMMON_PCARDINAL
_INIT_DBF_COMMON_PCARDINAL:
	.byte	0
	.ascii	"\011PCardinal"

.const_data
	.align 2
.globl	_RTTI_DBF_COMMON_PCARDINAL
_RTTI_DBF_COMMON_PCARDINAL:
	.byte	0
	.ascii	"\011PCardinal"

.const_data
	.align 2
.globl	_INIT_DBF_COMMON_PDOUBLE
_INIT_DBF_COMMON_PDOUBLE:
	.byte	0
	.ascii	"\007PDouble"

.const_data
	.align 2
.globl	_RTTI_DBF_COMMON_PDOUBLE
_RTTI_DBF_COMMON_PDOUBLE:
	.byte	0
	.ascii	"\007PDouble"

.const_data
	.align 2
.globl	_INIT_DBF_COMMON_PSTRING
_INIT_DBF_COMMON_PSTRING:
	.byte	0
	.ascii	"\007PString"

.const_data
	.align 2
.globl	_RTTI_DBF_COMMON_PSTRING
_RTTI_DBF_COMMON_PSTRING:
	.byte	0
	.ascii	"\007PString"

.const_data
	.align 2
.globl	_INIT_DBF_COMMON_DEF47
_INIT_DBF_COMMON_DEF47:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256
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
L_$DBF_COMMON$_Ld1$non_lazy_ptr:
.indirect_symbol _$DBF_COMMON$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_COMMON$_Ld3$non_lazy_ptr:
.indirect_symbol _$DBF_COMMON$_Ld3
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

