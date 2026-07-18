# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DBF_IDXFILE_INCWORDLE$WORD$LONGINT
_DBF_IDXFILE_INCWORDLE$WORD$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movl	-4(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_INCINTLE$LONGINT$LONGINT
_DBF_IDXFILE_INCINTLE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_LOCALECALLBACK$PCHAR$$LONGINT
_DBF_IDXFILE_LOCALECALLBACK$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj20
Lj20:
	popl	%ebx
	movl	$0,-52(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj21
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	8(%ebp),%eax
	call	Lfpc_pchar_to_ansistr$stub
	movl	-52(%ebp),%ecx
	leal	-48(%ebp),%eax
	movl	L_$DBF_IDXFILE$_Ld1$non_lazy_ptr-Lj20(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-48(%ebp),%eax
	call	L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub
	movl	%eax,%edx
	movl	L_U_DBF_IDXFILE_LCIDLIST$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	movl	$1,-4(%ebp)
Lj21:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj22
	call	LFPC_RERAISE$stub
Lj22:
	movl	-4(%ebp),%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TLCIDLIST_$__CREATE$$TLCIDLIST
_DBF_IDXFILE_TLCIDLIST_$__CREATE$$TLCIDLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj44
	jmp	Lj45
Lj44:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj45:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj50
	jmp	Lj51
Lj50:
	jmp	Lj42
Lj51:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj54
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj58
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
Lj58:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj59
	call	LFPC_RERAISE$stub
Lj59:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj67
	jmp	Lj66
Lj67:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj65
	jmp	Lj66
Lj65:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj66:
Lj54:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj56
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj71
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj72
	jmp	Lj73
Lj72:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj73:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj71:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj70
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj70:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj56
Lj56:
Lj42:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TLCIDLIST_$__ENUMERATE
_DBF_IDXFILE_TLCIDLIST_$__ENUMERATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj79
Lj79:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	L_DBF_IDXFILE_LOCALECALLBACK$PCHAR$$LONGINT$non_lazy_ptr-Lj79(%ebx),%eax
	movl	$2,%edx
	call	L_DBF_WTIL_ENUMSYSTEMLOCALES$POINTER$LONGWORD$$LONGBOOL$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__CREATE$TINDEXFILE$$TINDEXPAGE
_DBF_IDXFILE_TINDEXPAGE_$__CREATE$TINDEXFILE$$TINDEXPAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj88
	jmp	Lj89
Lj88:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj89:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj94
	jmp	Lj95
Lj94:
	jmp	Lj86
Lj95:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj98
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj102
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%eax
	leal	16(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__CLEAR$stub
Lj102:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj103
	call	LFPC_RERAISE$stub
Lj103:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj117
	jmp	Lj116
Lj117:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj115
	jmp	Lj116
Lj115:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj116:
Lj98:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj100
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj121
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj122
	jmp	Lj123
Lj122:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj123:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj121:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj120
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj120:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj100
Lj100:
Lj86:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__DESTROY
_DBF_IDXFILE_TINDEXPAGE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj130
	jmp	Lj131
Lj130:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj131:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj134
	jmp	Lj135
Lj134:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj135:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__WRITEPAGE$stub
	movl	-8(%ebp),%eax
	leal	16(%eax),%eax
	call	L_DBF_COMMON_FREEMEMANDNIL$POINTER$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj148
	jmp	Lj147
Lj148:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj146
	jmp	Lj147
Lj146:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj147:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__CLEAR
_DBF_IDXFILE_TINDEXPAGE_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	16(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	leal	8(%eax),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
	movl	-4(%ebp),%eax
	movl	$0,12(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,36(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,24(%eax)
	movl	-4(%ebp),%eax
	movl	$1,40(%eax)
	movl	-4(%ebp),%eax
	movb	$0,32(%eax)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	1268(%eax),%eax
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	$0,52(%eax)
	movl	-4(%ebp),%eax
	movl	$0,68(%eax)
	movl	-4(%ebp),%eax
	movl	$0,48(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,64(%eax)
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__GETNEWPAGE
_DBF_IDXFILE_TINDEXPAGE_$__GETNEWPAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETNEWPAGENO$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,36(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__MODIFIED
_DBF_IDXFILE_TINDEXPAGE_$__MODIFIED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,32(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__LOCKPAGE
_DBF_IDXFILE_TINDEXPAGE_$__LOCKPAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj195
	jmp	Lj196
Lj195:
	movl	-4(%ebp),%eax
	movl	36(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movb	$1,%cl
	call	L_DBF_PGFILE_TPAGEDFILE_$__LOCKPAGE$LONGINT$BOOLEAN$$BOOLEAN$stub
Lj196:
	movl	-4(%ebp),%eax
	incl	28(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__UNLOCKPAGE
_DBF_IDXFILE_TINDEXPAGE_$__UNLOCKPAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	decl	28(%eax)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj205
	jmp	Lj206
Lj205:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpb	$0,52(%eax)
	jne	Lj207
	jmp	Lj208
Lj207:
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__WRITEPAGE$stub
Lj208:
	movl	-4(%ebp),%eax
	movl	36(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT$stub
Lj206:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__LOCALINSERT$LONGINT$PCHAR$LONGINT
_DBF_IDXFILE_TINDEXPAGE_$__LOCALINSERT$LONGINT$PCHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__LOCKPAGE$stub
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	524(%eax),%eax
	movw	14(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	movl	-28(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-32(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj227
	jmp	Lj228
Lj227:
	decl	-32(%ebp)
Lj228:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%edx
	incl	%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%ebx
	movl	-28(%ebp),%eax
	subl	%ebx,%eax
	movl	%eax,%ebx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	524(%eax),%eax
	movw	18(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	imull	%eax,%ebx
	movl	%ebx,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj241
	jmp	Lj243
Lj243:
	movl	-32(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj241
	jmp	Lj242
Lj241:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	928(%eax),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-24(%ebp)
Lj242:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	incl	64(%eax)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRY$LONGINT$PCHAR$LONGINT$stub
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__UNLOCKPAGE$stub
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__LOCALDELETE
_DBF_IDXFILE_TINDEXPAGE_$__LOCALDELETE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	24(%eax),%eax
	cmpl	64(%edx),%eax
	jl	Lj272
	jmp	Lj273
Lj272:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	64(%eax),%ebx
	movl	24(%edx),%eax
	subl	%eax,%ebx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	524(%eax),%eax
	movw	18(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	imull	%eax,%ebx
	movl	%ebx,-16(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	jmp	Lj292
Lj273:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj295
	jmp	Lj294
Lj295:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	64(%eax),%eax
	cmpl	48(%edx),%eax
	jg	Lj293
	jmp	Lj294
Lj293:
	movl	-4(%ebp),%eax
	movl	64(%eax),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	$0,%edx
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRY$LONGINT$PCHAR$LONGINT$stub
Lj294:
Lj292:
	decl	-20(%ebp)
	movl	-4(%ebp),%eax
	decl	64(%eax)
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	68(%eax),%eax
	cmpl	36(%edx),%eax
	je	Lj322
	jmp	Lj323
Lj322:
	movl	-4(%ebp),%eax
	decl	60(%eax)
Lj323:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	24(%eax),%eax
	cmpl	64(%edx),%eax
	jg	Lj324
	jmp	Lj325
Lj324:
	movl	-4(%ebp),%eax
	movl	64(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT$stub
Lj325:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	cmpl	$-1,%eax
	je	Lj330
	jmp	Lj331
Lj330:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj332
	jmp	Lj333
Lj332:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	%ebp,%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$_LOCALDELETE_ISONLYENTRY$TINDEXPAGE$$BOOLEAN$stub
	testb	%al,%al
	je	Lj334
	jmp	Lj335
Lj334:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__LOCALDELETE$stub
Lj335:
Lj333:
Lj331:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj342
	jmp	Lj343
Lj342:
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SYNCLOWERPAGE$stub
Lj343:
	movl	-4(%ebp),%eax
	movb	$1,32(%eax)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$_LOCALDELETE_ISONLYENTRY$TINDEXPAGE$$BOOLEAN
_DBF_IDXFILE_TINDEXPAGE_$_LOCALDELETE_ISONLYENTRY$TINDEXPAGE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$1,-9(%ebp)
	.align 2
Lj350:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	cmpl	$0,%eax
	jg	Lj353
	jmp	Lj354
Lj353:
	movb	$0,-9(%ebp)
Lj354:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-4(%ebp)
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj352
	jmp	Lj359
Lj359:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj352
	jmp	Lj350
Lj352:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__MATCHKEY$$LONGINT
_DBF_IDXFILE_TINDEXPAGE_$__MATCHKEY$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEY$PCHAR$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__FINDNEAREST$LONGINT$$LONGINT
_DBF_IDXFILE_TINDEXPAGE_$__FINDNEAREST$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-20(%ebp)
	jmp	Lj381
	.align 2
Lj380:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-8(%ebp),%edx
	movl	%eax,20(%edx)
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__MATCHKEY$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj395
	jmp	Lj397
Lj397:
	movl	-4(%ebp),%eax
	cmpl	$-3,%eax
	jne	Lj398
	jmp	Lj396
Lj398:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj395
	jmp	Lj396
Lj395:
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj401
Lj396:
	movl	-24(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj401:
Lj381:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj380
	jmp	Lj382
Lj382:
	movl	-8(%ebp),%eax
	movl	$-1,24(%eax)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj410
	jmp	Lj411
Lj410:
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj412
	jmp	Lj413
Lj412:
	movl	$1,-12(%ebp)
	jmp	Lj416
Lj413:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__MATCHKEY$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj421
	jmp	Lj422
Lj421:
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj428
	.align 2
Lj427:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	-16(%ebp),%eax
	jne	Lj430
	jmp	Lj431
Lj430:
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-8(%ebp),%edx
	movl	%eax,20(%edx)
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__MATCHKEY$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj431:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj442
	jmp	Lj444
Lj444:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	cmpl	-4(%ebp),%eax
	je	Lj442
	jmp	Lj443
Lj442:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj449
Lj443:
	movl	-8(%ebp),%eax
	incl	24(%eax)
	movl	$1,-12(%ebp)
Lj449:
Lj428:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	-20(%ebp),%eax
	jne	Lj427
	jmp	Lj429
Lj429:
Lj422:
Lj416:
	jmp	Lj452
Lj411:
	movl	$0,-12(%ebp)
Lj452:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__GOTOINSERTENTRY
_DBF_IDXFILE_TINDEXPAGE_$__GOTOINSERTENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	1272(%eax),%eax
	cmpl	20(%edx),%eax
	je	Lj457
	jmp	Lj458
Lj457:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%edx
	movl	%eax,20(%edx)
Lj458:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__SETENTRY$LONGINT$PCHAR$LONGINT
_DBF_IDXFILE_TINDEXPAGE_$__SETENTRY$LONGINT$PCHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj473
	jmp	Lj472
Lj473:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	24(%eax),%eax
	cmpl	64(%edx),%eax
	je	Lj471
	jmp	Lj472
Lj471:
	movl	-12(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	$0,%edx
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRY$LONGINT$PCHAR$LONGINT$stub
Lj472:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj482
	jmp	Lj483
Lj482:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	524(%eax),%eax
	movw	12(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movw	%ax,%cx
	movzwl	%cx,%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	jmp	Lj492
Lj483:
	movl	-16(%ebp),%eax
	movb	$0,(%eax)
Lj492:
	movl	8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*136(%ebx)
	movl	-12(%ebp),%eax
	movb	$1,32(%eax)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__SPLIT
_DBF_IDXFILE_TINDEXPAGE_$__SPLIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	seteb	-49(%ebp)
	cmpb	$0,-49(%ebp)
	jne	Lj507
	jmp	Lj508
Lj507:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__ADDNEWLEVEL$stub
	jmp	Lj511
Lj508:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__LOCKPAGE$stub
Lj511:
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__LOCKPAGE$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	movl	%edx,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj524
	jmp	Lj523
Lj524:
	movl	-36(%ebp),%eax
	cltd
	movl	$2,%ecx
	idivl	%ecx
	cmpl	$1,%edx
	je	Lj522
	jmp	Lj523
Lj522:
	incl	-32(%ebp)
Lj523:
	movl	-36(%ebp),%eax
	movl	-32(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jg	Lj529
	jmp	Lj528
Lj529:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	-32(%ebp),%eax
	jg	Lj527
	jmp	Lj528
Lj527:
	incl	-32(%ebp)
	decl	-40(%ebp)
	jmp	Lj530
Lj528:
	movl	-40(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jl	Lj533
	jmp	Lj532
Lj533:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	-32(%ebp),%eax
	jl	Lj531
	jmp	Lj532
Lj531:
	decl	-32(%ebp)
	incl	-40(%ebp)
Lj532:
Lj530:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	52(%eax),%eax
	cmpl	36(%edx),%eax
	je	Lj536
	jmp	Lj537
Lj536:
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,-44(%ebp)
	jmp	Lj540
Lj537:
	movl	$-1,-44(%ebp)
Lj540:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	68(%eax),%eax
	cmpl	36(%edx),%eax
	je	Lj543
	jmp	Lj544
Lj543:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-48(%ebp)
	jmp	Lj547
Lj544:
	movl	$-1,-48(%ebp)
Lj547:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__CREATE$TINDEXFILE$$TINDEXPAGE$stub
	movl	%eax,-8(%ebp)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj564
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__GETNEWPAGE$stub
	movl	-4(%ebp),%eax
	movb	$1,32(%eax)
	movl	-8(%ebp),%eax
	movb	$1,32(%eax)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	%eax,-16(%ebp)
	movl	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	524(%eax),%eax
	movw	18(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	movl	-40(%ebp),%edx
	imull	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj590
	jmp	Lj591
Lj590:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	928(%eax),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-24(%ebp)
Lj591:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj600
	jmp	Lj601
Lj600:
	movl	$0,(%esp)
	movl	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
Lj601:
	movl	-36(%ebp),%eax
	movl	-40(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-36(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj612
	jmp	Lj613
Lj612:
	decl	-36(%ebp)
Lj613:
	movl	-40(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-36(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,64(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj624
	jmp	Lj625
Lj624:
	movl	-4(%ebp),%eax
	decl	64(%eax)
Lj625:
	movl	-32(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-20(%ebp),%ecx
	movl	$0,%edx
	call	L_DBF_IDXFILE_TINDEXPAGE_$__LOCALINSERT$LONGINT$PCHAR$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	24(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	$0,%ecx
	movl	-4(%ebp),%ebx
	movl	12(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
Lj564:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj565
	decl	%eax
	testl	%eax,%eax
	je	Lj566
Lj566:
	call	LFPC_RERAISE$stub
Lj565:
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__UNLOCKPAGE$stub
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__UNLOCKPAGE$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__UNLOCKHEADER$stub
	movl	-28(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jge	Lj656
	jmp	Lj657
Lj656:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	24(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT$stub
	movl	-28(%ebp),%edx
	movl	-32(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,24(%eax)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%edx
	movl	%eax,20(%edx)
	jmp	Lj670
Lj657:
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT$stub
Lj670:
	movl	-44(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jge	Lj675
	jmp	Lj676
Lj675:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,52(%edx)
	movl	-44(%ebp),%edx
	movl	-32(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,48(%eax)
Lj676:
	movl	-48(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jge	Lj681
	jmp	Lj682
Lj681:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,68(%edx)
	movl	-48(%ebp),%edx
	movl	-32(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,64(%eax)
Lj682:
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__DELETE
_DBF_IDXFILE_TINDEXPAGE_$__DELETE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__LOCALDELETE$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__WRITEPAGE
_DBF_IDXFILE_TINDEXPAGE_$__WRITEPAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,32(%eax)
	jne	Lj695
	jmp	Lj694
Lj695:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	$0,%eax
	jg	Lj693
	jmp	Lj694
Lj693:
	movl	-4(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	36(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*144(%ebx)
	movl	-4(%ebp),%eax
	movb	$0,32(%eax)
Lj694:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__FLUSH
_DBF_IDXFILE_TINDEXPAGE_$__FLUSH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__WRITEPAGE$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj708
	jmp	Lj709
Lj708:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__FLUSH$stub
Lj709:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__RECALCWEIGHT
_DBF_IDXFILE_TINDEXPAGE_$__RECALCWEIGHT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj714
	jmp	Lj715
Lj714:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	524(%eax),%eax
	movw	14(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	movl	40(%ebx),%edx
	imull	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,40(%eax)
	jmp	Lj720
Lj715:
	movl	-4(%ebp),%eax
	movl	$1,40(%eax)
Lj720:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj723
	jmp	Lj724
Lj723:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RECALCWEIGHT$stub
Lj724:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__UPDATEWEIGHT
_DBF_IDXFILE_TINDEXPAGE_$__UPDATEWEIGHT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj729
	jmp	Lj730
Lj729:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__UPDATEWEIGHT$stub
	jmp	Lj733
Lj730:
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RECALCWEIGHT$stub
Lj733:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__SETUPPERPAGE$TINDEXPAGE
_DBF_IDXFILE_TINDEXPAGE_$__SETUPPERPAGE$TINDEXPAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj738
	jmp	Lj739
Lj738:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__UPDATEWEIGHT$stub
Lj739:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__SETLOWPAGE$LONGINT
_DBF_IDXFILE_TINDEXPAGE_$__SETLOWPAGE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj746
	jmp	Lj747
Lj746:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	setneb	%dl
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__UPDATEBOUNDS$BOOLEAN$stub
Lj747:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__SETHIGHPAGE$LONGINT
_DBF_IDXFILE_TINDEXPAGE_$__SETHIGHPAGE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj756
	jmp	Lj757
Lj756:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,68(%eax)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	setneb	%dl
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__UPDATEBOUNDS$BOOLEAN$stub
Lj757:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__UPDATEBOUNDS$BOOLEAN
_DBF_IDXFILE_TINDEXPAGE_$__UPDATEBOUNDS$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	36(%eax),%eax
	cmpl	52(%edx),%eax
	je	Lj766
	jmp	Lj767
Lj766:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,48(%edx)
	jmp	Lj770
Lj767:
	movl	-8(%ebp),%eax
	movl	$0,48(%eax)
Lj770:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	36(%eax),%eax
	cmpl	68(%edx),%eax
	je	Lj773
	jmp	Lj774
Lj773:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,64(%edx)
	jmp	Lj777
Lj774:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	-8(%ebp),%edx
	movl	%eax,64(%edx)
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj782
	jmp	Lj783
Lj782:
	movl	-8(%ebp),%eax
	decl	64(%eax)
Lj783:
Lj777:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDXPAGE_$__GETISINNERNODE$$BOOLEAN
_DBF_IDXFILE_TMDXPAGE_$__GETISINNERNODE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,%ebx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	524(%eax),%eax
	movw	14(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	cmpl	%eax,%ebx
	setbb	-5(%ebp)
	cmpb	$0,-5(%ebp)
	jne	Lj792
	jmp	Lj793
Lj792:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	(%eax),%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
Lj793:
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TNDXPAGE_$__GETISINNERNODE$$BOOLEAN
_DBF_IDXFILE_TNDXPAGE_$__GETISINNERNODE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	(%eax),%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__SETPAGENO$LONGINT
_DBF_IDXFILE_TINDEXPAGE_$__SETPAGENO$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj810
	jmp	Lj812
Lj812:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpb	$0,52(%eax)
	jne	Lj810
	jmp	Lj811
Lj810:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__WRITEPAGE$stub
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,36(%eax)
	movl	-8(%ebp),%eax
	movl	$-1,24(%eax)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj821
	jmp	Lj820
Lj821:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT$stub
	cmpl	-4(%ebp),%eax
	jge	Lj819
	jmp	Lj820
Lj819:
	movl	-8(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%dl
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__UPDATEBOUNDS$BOOLEAN$stub
	cmpb	$0,-9(%ebp)
	jne	Lj838
	jmp	Lj839
Lj838:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj840
	jmp	Lj841
Lj840:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	4(%eax),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__CREATE$TINDEXFILE$$TINDEXPAGE$stub
	movl	-8(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETUPPERPAGE$TINDEXPAGE$stub
Lj841:
	jmp	Lj860
Lj839:
	movl	-8(%ebp),%eax
	movl	48(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT$stub
Lj860:
Lj820:
Lj811:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__SYNCLOWERPAGE
_DBF_IDXFILE_TINDEXPAGE_$__SYNCLOWERPAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETPAGENO$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT
_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj875
	jmp	Lj876
Lj875:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj877
	jmp	Lj878
Lj877:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj879
	jmp	Lj880
Lj879:
	movl	-8(%ebp),%eax
	movl	48(%eax),%edx
	decl	%edx
	movl	-8(%ebp),%eax
	movl	%edx,24(%eax)
Lj880:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	1268(%eax),%eax
	movl	%eax,20(%edx)
	jmp	Lj885
Lj878:
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj886
	jmp	Lj887
Lj886:
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	incl	%eax
	movl	-8(%ebp),%edx
	movl	%eax,24(%edx)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	1272(%eax),%eax
	movl	%eax,20(%edx)
	jmp	Lj892
Lj887:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-8(%ebp),%edx
	movl	%eax,20(%edx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj901
	jmp	Lj902
Lj901:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SYNCLOWERPAGE$stub
Lj902:
Lj892:
Lj885:
Lj876:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__PHYSICALRECNO$$LONGINT
_DBF_IDXFILE_TINDEXPAGE_$__PHYSICALRECNO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	24(%eax),%eax
	cmpl	48(%edx),%eax
	jge	Lj913
	jmp	Lj912
Lj913:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	24(%eax),%eax
	cmpl	64(%edx),%eax
	jle	Lj911
	jmp	Lj912
Lj911:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj916
Lj912:
	movl	$-1,-8(%ebp)
Lj916:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__RECURPREV$$BOOLEAN
_DBF_IDXFILE_TINDEXPAGE_$__RECURPREV$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	1268(%eax),%eax
	cmpl	20(%edx),%eax
	setneb	-5(%ebp)
	cmpb	$0,-5(%ebp)
	jne	Lj927
	jmp	Lj928
Lj927:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj929
	jmp	Lj930
Lj929:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RECURLAST$stub
Lj930:
	jmp	Lj933
Lj928:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj934
	jmp	Lj935
Lj934:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RECURPREV$$BOOLEAN$stub
	movb	%al,-5(%ebp)
Lj935:
Lj933:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__RECURNEXT$$BOOLEAN
_DBF_IDXFILE_TINDEXPAGE_$__RECURNEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	1272(%eax),%eax
	cmpl	20(%edx),%eax
	setneb	-5(%ebp)
	cmpb	$0,-5(%ebp)
	jne	Lj948
	jmp	Lj949
Lj948:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj950
	jmp	Lj951
Lj950:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RECURFIRST$stub
Lj951:
	jmp	Lj954
Lj949:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj955
	jmp	Lj956
Lj955:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RECURNEXT$$BOOLEAN$stub
	movb	%al,-5(%ebp)
Lj956:
Lj954:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__RECURFIRST
_DBF_IDXFILE_TINDEXPAGE_$__RECURFIRST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj967
	jmp	Lj968
Lj967:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RECURFIRST$stub
Lj968:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__RECURLAST
_DBF_IDXFILE_TINDEXPAGE_$__RECURLAST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj977
	jmp	Lj978
Lj977:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RECURLAST$stub
Lj978:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__SAVEBRACKET
_DBF_IDXFILE_TINDEXPAGE_$__SAVEBRACKET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,56(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	movl	%eax,72(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXPAGE_$__RESTOREBRACKET
_DBF_IDXFILE_TINDEXPAGE_$__RESTOREBRACKET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,52(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	movl	%eax,68(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDXPAGE_$__GETENTRY$LONGINT$$POINTER
_DBF_IDXFILE_TMDXPAGE_$__GETENTRY$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	leal	8(%eax),%ebx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	524(%eax),%eax
	movw	18(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	movl	-4(%ebp),%edx
	imull	%edx,%eax
	addl	%eax,%ebx
	movl	%ebx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDXPAGE_$__GETLOWERPAGENO$$LONGINT
_DBF_IDXFILE_TMDXPAGE_$__GETLOWERPAGENO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDXPAGE_$__GETKEYDATA$$PCHAR
_DBF_IDXFILE_TMDXPAGE_$__GETKEYDATA$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	leal	4(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDXPAGE_$__GETNUMENTRIES$$LONGINT
_DBF_IDXFILE_TMDXPAGE_$__GETNUMENTRIES$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movw	(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDXPAGE_$__GETKEYDATAFROMENTRY$LONGINT$$PCHAR
_DBF_IDXFILE_TMDXPAGE_$__GETKEYDATAFROMENTRY$LONGINT$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	leal	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDXPAGE_$__GETRECNO$$LONGINT
_DBF_IDXFILE_TMDXPAGE_$__GETRECNO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDXPAGE_$__SETNUMENTRIES$LONGINT
_DBF_IDXFILE_TMDXPAGE_$__SETNUMENTRIES$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	16(%edx),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDXPAGE_$__INCNUMENTRIES
_DBF_IDXFILE_TMDXPAGE_$__INCNUMENTRIES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	$1,%edx
	call	L_DBF_IDXFILE_INCINTLE$LONGINT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDXPAGE_$__SETRECLOWERPAGENO$LONGINT$LONGINT
_DBF_IDXFILE_TMDXPAGE_$__SETRECLOWERPAGENO$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj1043
	jmp	Lj1044
Lj1043:
	movl	-4(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-12(%ebp),%edx
	movl	20(%edx),%edx
	movl	%eax,(%edx)
	jmp	Lj1049
Lj1044:
	movl	-8(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-12(%ebp),%edx
	movl	20(%edx),%edx
	movl	%eax,(%edx)
Lj1049:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDXPAGE_$__SETRECLOWERPAGENOOFENTRY$LONGINT$LONGINT$LONGINT
_DBF_IDXFILE_TMDXPAGE_$__SETRECLOWERPAGENOOFENTRY$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj1056
	jmp	Lj1057
Lj1056:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	%eax,%ebx
	movl	-8(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,(%ebx)
	jmp	Lj1066
Lj1057:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	%eax,%ebx
	movl	8(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,(%ebx)
Lj1066:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TNDXPAGE_$__GETENTRY$LONGINT$$POINTER
_DBF_IDXFILE_TNDXPAGE_$__GETENTRY$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	leal	4(%eax),%ebx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	524(%eax),%eax
	movw	18(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	movl	-4(%ebp),%edx
	imull	%edx,%eax
	addl	%eax,%ebx
	movl	%ebx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TNDXPAGE_$__GETLOWERPAGENO$$LONGINT
_DBF_IDXFILE_TNDXPAGE_$__GETLOWERPAGENO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TNDXPAGE_$__GETRECNO$$LONGINT
_DBF_IDXFILE_TNDXPAGE_$__GETRECNO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	4(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TNDXPAGE_$__GETKEYDATA$$PCHAR
_DBF_IDXFILE_TNDXPAGE_$__GETKEYDATA$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	leal	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TNDXPAGE_$__GETKEYDATAFROMENTRY$LONGINT$$PCHAR
_DBF_IDXFILE_TNDXPAGE_$__GETKEYDATAFROMENTRY$LONGINT$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	leal	8(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TNDXPAGE_$__GETNUMENTRIES$$LONGINT
_DBF_IDXFILE_TNDXPAGE_$__GETNUMENTRIES$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TNDXPAGE_$__INCNUMENTRIES
_DBF_IDXFILE_TNDXPAGE_$__INCNUMENTRIES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	$1,%edx
	call	L_DBF_IDXFILE_INCINTLE$LONGINT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TNDXPAGE_$__SETNUMENTRIES$LONGINT
_DBF_IDXFILE_TNDXPAGE_$__SETNUMENTRIES$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	16(%edx),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TNDXPAGE_$__SETRECLOWERPAGENO$LONGINT$LONGINT
_DBF_IDXFILE_TNDXPAGE_$__SETRECLOWERPAGENO$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-12(%ebp),%edx
	movl	20(%edx),%edx
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-12(%ebp),%edx
	movl	20(%edx),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TNDXPAGE_$__SETRECLOWERPAGENOOFENTRY$LONGINT$LONGINT$LONGINT
_DBF_IDXFILE_TNDXPAGE_$__SETRECLOWERPAGENOOFENTRY$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	%eax,%ebx
	movl	-8(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,4(%ebx)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	%eax,%ebx
	movl	8(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX4TAG_$__GETHEADERPAGENO$$LONGINT
_DBF_IDXFILE_TMDX4TAG_$__GETHEADERPAGENO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX4TAG_$__GETTAGNAME$$ANSISTRING
_DBF_IDXFILE_TMDX4TAG_$__GETTAGNAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	4(%eax),%eax
	movb	$1,%cl
	movl	$10,%edx
	call	Lfpc_chararray_to_ansistr$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX4TAG_$__GETKEYFORMAT$$BYTE
_DBF_IDXFILE_TMDX4TAG_$__GETKEYFORMAT$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movb	15(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX4TAG_$__GETFORWARDTAG1$$BYTE
_DBF_IDXFILE_TMDX4TAG_$__GETFORWARDTAG1$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movb	16(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX4TAG_$__GETFORWARDTAG2$$BYTE
_DBF_IDXFILE_TMDX4TAG_$__GETFORWARDTAG2$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movb	17(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX4TAG_$__GETBACKWARDTAG$$BYTE
_DBF_IDXFILE_TMDX4TAG_$__GETBACKWARDTAG$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movb	18(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX4TAG_$__GETRESERVED$$BYTE
_DBF_IDXFILE_TMDX4TAG_$__GETRESERVED$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movb	19(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX4TAG_$__GETKEYTYPE$$CHAR
_DBF_IDXFILE_TMDX4TAG_$__GETKEYTYPE$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movb	20(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX4TAG_$__SETHEADERPAGENO$LONGINT
_DBF_IDXFILE_TMDX4TAG_$__SETHEADERPAGENO$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX4TAG_$__SETTAGNAME$ANSISTRING
_DBF_IDXFILE_TMDX4TAG_$__SETTAGNAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1199
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	leal	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	$10,%ecx
	call	L_SYSUTILS_STRPLCOPY$PCHAR$ANSISTRING$LONGWORD$$PCHAR$stub
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movb	$0,14(%eax)
Lj1199:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1200
	call	LFPC_RERAISE$stub
Lj1200:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX4TAG_$__SETKEYFORMAT$BYTE
_DBF_IDXFILE_TMDX4TAG_$__SETKEYFORMAT$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movb	-4(%ebp),%dl
	movb	%dl,15(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX4TAG_$__SETFORWARDTAG1$BYTE
_DBF_IDXFILE_TMDX4TAG_$__SETFORWARDTAG1$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movb	-4(%ebp),%dl
	movb	%dl,16(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX4TAG_$__SETFORWARDTAG2$BYTE
_DBF_IDXFILE_TMDX4TAG_$__SETFORWARDTAG2$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movb	-4(%ebp),%dl
	movb	%dl,17(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX4TAG_$__SETBACKWARDTAG$BYTE
_DBF_IDXFILE_TMDX4TAG_$__SETBACKWARDTAG$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movb	-4(%ebp),%dl
	movb	%dl,18(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX4TAG_$__SETRESERVED$BYTE
_DBF_IDXFILE_TMDX4TAG_$__SETRESERVED$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movb	-4(%ebp),%dl
	movb	%dl,19(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX4TAG_$__SETKEYTYPE$CHAR
_DBF_IDXFILE_TMDX4TAG_$__SETKEYTYPE$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movb	-4(%ebp),%dl
	movb	%dl,20(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX7TAG_$__GETHEADERPAGENO$$LONGINT
_DBF_IDXFILE_TMDX7TAG_$__GETHEADERPAGENO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX7TAG_$__GETTAGNAME$$ANSISTRING
_DBF_IDXFILE_TMDX7TAG_$__GETTAGNAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	4(%eax),%eax
	movb	$1,%cl
	movl	$32,%edx
	call	Lfpc_chararray_to_ansistr$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX7TAG_$__GETKEYFORMAT$$BYTE
_DBF_IDXFILE_TMDX7TAG_$__GETKEYFORMAT$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movb	37(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX7TAG_$__GETFORWARDTAG1$$BYTE
_DBF_IDXFILE_TMDX7TAG_$__GETFORWARDTAG1$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movb	38(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX7TAG_$__GETFORWARDTAG2$$BYTE
_DBF_IDXFILE_TMDX7TAG_$__GETFORWARDTAG2$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movb	39(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX7TAG_$__GETBACKWARDTAG$$BYTE
_DBF_IDXFILE_TMDX7TAG_$__GETBACKWARDTAG$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movb	40(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX7TAG_$__GETRESERVED$$BYTE
_DBF_IDXFILE_TMDX7TAG_$__GETRESERVED$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movb	41(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX7TAG_$__GETKEYTYPE$$CHAR
_DBF_IDXFILE_TMDX7TAG_$__GETKEYTYPE$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movb	42(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX7TAG_$__SETHEADERPAGENO$LONGINT
_DBF_IDXFILE_TMDX7TAG_$__SETHEADERPAGENO$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX7TAG_$__SETTAGNAME$ANSISTRING
_DBF_IDXFILE_TMDX7TAG_$__SETTAGNAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1282
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	leal	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	$32,%ecx
	call	L_SYSUTILS_STRPLCOPY$PCHAR$ANSISTRING$LONGWORD$$PCHAR$stub
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movb	$0,36(%eax)
Lj1282:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1283
	call	LFPC_RERAISE$stub
Lj1283:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX7TAG_$__SETKEYFORMAT$BYTE
_DBF_IDXFILE_TMDX7TAG_$__SETKEYFORMAT$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movb	-4(%ebp),%dl
	movb	%dl,37(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX7TAG_$__SETFORWARDTAG1$BYTE
_DBF_IDXFILE_TMDX7TAG_$__SETFORWARDTAG1$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movb	-4(%ebp),%dl
	movb	%dl,38(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX7TAG_$__SETFORWARDTAG2$BYTE
_DBF_IDXFILE_TMDX7TAG_$__SETFORWARDTAG2$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movb	-4(%ebp),%dl
	movb	%dl,39(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX7TAG_$__SETBACKWARDTAG$BYTE
_DBF_IDXFILE_TMDX7TAG_$__SETBACKWARDTAG$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movb	-4(%ebp),%dl
	movb	%dl,40(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX7TAG_$__SETRESERVED$BYTE
_DBF_IDXFILE_TMDX7TAG_$__SETRESERVED$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movb	-4(%ebp),%dl
	movb	%dl,41(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TMDX7TAG_$__SETKEYTYPE$CHAR
_DBF_IDXFILE_TMDX7TAG_$__SETKEYTYPE$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movb	-4(%ebp),%dl
	movb	%dl,42(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TDBFINDEXPARSER_$__VALIDATEEXPRESSION$ANSISTRING
_DBF_IDXFILE_TDBFINDEXPARSER_$__VALIDATEEXPRESSION$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-108(%ebp)
	call	Lj1318
Lj1318:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1319
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-12(%ebp)
	movb	$0,-21(%ebp)
	jmp	Lj1327
	.align 2
Lj1326:
	movl	$0,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj1331:
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%eax),%edx
	movl	L_TC_DBF_IDXFILE_TDBFINDEXPARSER_$_VALIDATEEXPRESSION$ANSISTRING_ANSISTRFUNCS$non_lazy_ptr-Lj1318(%ebx),%eax
	cmpl	(%eax,%ecx,4),%edx
	je	Lj1332
	jmp	Lj1333
Lj1332:
	movb	$1,-21(%ebp)
	jmp	Lj1330
Lj1333:
	cmpl	$13,-20(%ebp)
	jl	Lj1331
Lj1330:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
Lj1327:
	movb	-21(%ebp),%al
	testb	%al,%al
	je	Lj1338
	jmp	Lj1328
Lj1338:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1326
	jmp	Lj1328
Lj1328:
	movzbl	-21(%ebp),%edx
	movl	L_TC_DBF_IDXFILE_TDBFINDEXPARSER_$_VALIDATEEXPRESSION$ANSISTRING_ANSIFUNCSTOMODE$non_lazy_ptr-Lj1318(%ebx),%eax
	movb	(%eax,%edx,1),%dl
	movl	-8(%ebp),%eax
	call	L_DBF_PARSER_TDBFPARSER_$__SETSTRINGFIELDMODE$TSTRINGFIELDMODE$stub
	movl	-8(%ebp),%eax
	call	L_DBF_PARSER_TDBFPARSER_$__GETRESULTLEN$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,56(%edx)
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$-1,%eax
	je	Lj1347
	jmp	Lj1348
Lj1347:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	16(%eax),%edx
	leal	-16(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj1353
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_DBF_DBFFILE_TDBFFILE_$__INITRECORD$PCHAR$stub
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	call	LFPC_PCHAR_LENGTH$stub
	movl	-8(%ebp),%edx
	movl	%eax,56(%edx)
Lj1353:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj1354
	decl	%eax
	testl	%eax,%eax
	je	Lj1355
Lj1355:
	call	LFPC_RERAISE$stub
Lj1354:
Lj1348:
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$100,%eax
	jg	Lj1371
	jmp	Lj1372
Lj1371:
	movl	$1,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$11,-80(%ebp)
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	$0,-72(%ebp)
	leal	-80(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_U_DBF_STR_STRING_INDEX_EXPRESSION_TOO_LONG$non_lazy_ptr-Lj1318(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr-Lj1318(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj1318(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1372:
Lj1319:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1320
	call	LFPC_RERAISE$stub
Lj1320:
	movl	-108(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__CREATE$POINTER$$TINDEXFILE
_DBF_IDXFILE_TINDEXFILE_$__CREATE$POINTER$$TINDEXFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1385
	jmp	Lj1386
Lj1385:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1386:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1391
	jmp	Lj1392
Lj1391:
	jmp	Lj1383
Lj1392:
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1395
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj1399
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__CREATE$$TPAGEDFILE$stub
	movl	-12(%ebp),%eax
	movb	$0,1281(%eax)
	movl	-12(%ebp),%eax
	movb	$0,1282(%eax)
	movl	-12(%ebp),%eax
	movb	$1,1283(%eax)
	movl	-12(%ebp),%eax
	movb	$0,958(%eax)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	49(%eax),%al
	movb	%al,49(%edx)
	movl	-12(%ebp),%eax
	movl	$-1,952(%eax)
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	call	L_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT$stub
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.align 2
Lj1424:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	$0,100(%eax,%edx,4)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$0,532(%edx,%eax,4)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$0,720(%edx,%eax,4)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	$0,476(%eax,%edx,1)
	cmpl	$46,-16(%ebp)
	jl	Lj1424
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,1276(%edx)
Lj1399:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj1400
	call	LFPC_RERAISE$stub
Lj1400:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1437
	jmp	Lj1436
Lj1437:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1435
	jmp	Lj1436
Lj1435:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1436:
Lj1395:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1397
	leal	-68(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj1441
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1442
	jmp	Lj1443
Lj1442:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1443:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1441:
	call	LFPC_POPADDRSTACK$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj1440
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1440:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1397
Lj1397:
Lj1383:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__DESTROY
_DBF_IDXFILE_TINDEXFILE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1450
	jmp	Lj1451
Lj1450:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1451:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CLOSE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1462
	jmp	Lj1461
Lj1462:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1460
	jmp	Lj1461
Lj1460:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1461:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__OPEN
_DBF_IDXFILE_TINDEXFILE_$__OPEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	call	Lj1466
Lj1466:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1467
	movl	-4(%ebp),%eax
	movb	1281(%eax),%al
	testb	%al,%al
	je	Lj1470
	jmp	Lj1471
Lj1470:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-4(%ebp),%eax
	movb	$0,53(%eax)
	movl	-4(%ebp),%eax
	movb	$0,1280(%eax)
	movl	-4(%ebp),%eax
	movl	$0,1284(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,1288(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,960(%eax)
	movl	-4(%ebp),%eax
	movl	$0,944(%eax)
	movl	-4(%ebp),%eax
	movb	$0,1312(%eax)
	movl	-4(%ebp),%eax
	movb	$0,1313(%eax)
	movl	-4(%ebp),%eax
	movl	$0,920(%eax)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	leal	-60(%ebp),%edx
	call	L_SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING$stub
	movl	-60(%ebp),%eax
	leal	-12(%ebp),%edx
	call	L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movl	L_$DBF_IDXFILE$_Ld3$non_lazy_ptr-Lj1466(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1504
	jmp	Lj1505
Lj1504:
	movl	-4(%ebp),%eax
	movl	$4,928(%eax)
	movl	-4(%ebp),%eax
	movl	$8,932(%eax)
	movl	L_U_DBF_IDXFILE_ENTRY_MDX_BOF$non_lazy_ptr-Lj1466(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,1268(%edx)
	movl	L_U_DBF_IDXFILE_ENTRY_MDX_EOF$non_lazy_ptr-Lj1466(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,1272(%edx)
	movl	-4(%ebp),%eax
	movl	$2048,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	-4(%ebp),%eax
	movl	$1024,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-4(%ebp),%eax
	movl	$512,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETPAGESIZE$LONGINT$stub
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__FILECREATED$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1530
	jmp	Lj1531
Lj1530:
	movl	-4(%ebp),%eax
	movl	1276(%eax),%eax
	movl	-4(%ebp),%edx
	movb	120(%eax),%al
	movb	%al,528(%edx)
	movl	-4(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$2,%al
	je	Lj1536
	jmp	Lj1537
Lj1536:
	movl	-4(%ebp),%eax
	movb	$3,528(%eax)
Lj1537:
	jmp	Lj1540
Lj1531:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movb	(%eax),%al
	cmpb	$3,%al
	jb	Lj1542
	subb	$3,%al
	je	Lj1543
	jmp	Lj1542
Lj1543:
	movl	-4(%ebp),%eax
	movb	$6,528(%eax)
	jmp	Lj1541
Lj1542:
	movl	-4(%ebp),%eax
	movb	$3,528(%eax)
Lj1541:
Lj1540:
	movl	-4(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$6,%al
	jb	Lj1549
	subb	$6,%al
	je	Lj1550
	jmp	Lj1549
Lj1550:
	movl	L_VMT_DBF_IDXFILE_TMDX7TAG$non_lazy_ptr-Lj1466(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-4(%ebp),%edx
	movl	%eax,920(%edx)
	movl	L_VMT_DBF_IDXFILE_TMDX7TAG$non_lazy_ptr-Lj1466(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-4(%ebp),%edx
	movl	%eax,924(%edx)
	jmp	Lj1548
Lj1549:
	movl	L_VMT_DBF_IDXFILE_TMDX4TAG$non_lazy_ptr-Lj1466(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-4(%ebp),%edx
	movl	%eax,920(%edx)
	movl	L_VMT_DBF_IDXFILE_TMDX4TAG$non_lazy_ptr-Lj1466(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-4(%ebp),%edx
	movl	%eax,924(%edx)
Lj1548:
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.align 2
Lj1577:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	leal	288(%eax,%edx,4),%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	288(%eax,%edx,4),%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	cmpl	$46,-8(%ebp)
	jl	Lj1577
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	288(%eax),%eax
	movl	%eax,524(%edx)
	jmp	Lj1590
Lj1505:
	movl	-4(%ebp),%eax
	movb	$2,528(%eax)
	movl	-4(%ebp),%eax
	movl	$8,928(%eax)
	movl	-4(%ebp),%eax
	movl	$4,932(%eax)
	movl	L_U_DBF_IDXFILE_ENTRY_NDX_BOF$non_lazy_ptr-Lj1466(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,1268(%edx)
	movl	L_U_DBF_IDXFILE_ENTRY_NDX_EOF$non_lazy_ptr-Lj1466(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,1272(%edx)
	movl	-4(%ebp),%eax
	movl	$512,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	-4(%ebp),%eax
	movl	$512,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,288(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,524(%edx)
	movl	-4(%ebp),%eax
	movl	1276(%eax),%ecx
	movl	L_VMT_DBF_IDXFILE_TDBFINDEXPARSER$non_lazy_ptr-Lj1466(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PARSER_TDBFPARSER_$__CREATE$POINTER$$TDBFPARSER$stub
	movl	-4(%ebp),%edx
	movl	%eax,100(%edx)
	movl	-4(%ebp),%ecx
	movl	L_VMT_DBF_IDXFILE_TNDXPAGE$non_lazy_ptr-Lj1466(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__CREATE$TINDEXFILE$$TINDEXPAGE$stub
	movl	-4(%ebp),%edx
	movl	%eax,532(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	movl	%eax,908(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	532(%eax),%eax
	movl	%eax,912(%edx)
	movl	-4(%ebp),%eax
	movl	$0,948(%eax)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	524(%eax),%eax
	leal	24(%eax),%eax
	movb	$1,%cl
	movl	$219,%edx
	call	Lfpc_chararray_to_ansistr$stub
	movl	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	908(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	908(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	-4(%ebp),%edx
	movl	L_TC_DBF_COLLATE_BINARY_COLLATION$non_lazy_ptr-Lj1466(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,1320(%edx)
Lj1590:
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__FILECREATED$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1649
	jmp	Lj1650
Lj1649:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	-4(%ebp),%edx
	movl	12(%edx),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CLEAR$stub
	jmp	Lj1661
Lj1650:
	movb	$0,-13(%ebp)
	movl	-4(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj1664
	jmp	Lj1665
Lj1664:
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETDBFLANGUAGEID$$BYTE$stub
	movb	%al,-15(%ebp)
	movzbl	-15(%ebp),%eax
	testl	%eax,%eax
	je	Lj1670
	jmp	Lj1671
Lj1670:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movzbl	31(%eax),%eax
	testl	%eax,%eax
	je	Lj1672
	jmp	Lj1673
Lj1672:
	movl	-4(%ebp),%edx
	movl	L_TC_DBF_COLLATE_BINARY_COLLATION$non_lazy_ptr-Lj1466(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,1320(%edx)
	jmp	Lj1676
Lj1673:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movzbl	31(%eax),%eax
	call	L_DBF_COLLATE_GETCOLLATIONTABLE$LONGINT$$PCOLLATIONTABLE$stub
	movl	-4(%ebp),%edx
	movl	%eax,1320(%edx)
Lj1676:
	jmp	Lj1681
Lj1671:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movzbl	31(%eax),%eax
	testl	%eax,%eax
	je	Lj1682
	jmp	Lj1684
Lj1684:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movb	31(%eax),%al
	cmpb	-15(%ebp),%al
	je	Lj1682
	jmp	Lj1683
Lj1682:
	movzbl	-15(%ebp),%eax
	call	L_DBF_COLLATE_GETCOLLATIONTABLE$LONGINT$$PCOLLATIONTABLE$stub
	movl	-4(%ebp),%edx
	movl	%eax,1320(%edx)
	jmp	Lj1689
Lj1683:
	movb	$2,-13(%ebp)
Lj1689:
Lj1681:
	movl	-4(%ebp),%eax
	movl	1320(%eax),%edx
	movl	L_TC_DBF_COLLATE_UNKNOWN_COLLATION$non_lazy_ptr-Lj1466(%ebx),%eax
	cmpl	(%eax),%edx
	je	Lj1694
	jmp	Lj1693
Lj1694:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj1692
	jmp	Lj1693
Lj1692:
	movb	$1,-13(%ebp)
Lj1693:
	jmp	Lj1697
Lj1665:
	movl	-4(%ebp),%edx
	movl	L_TC_DBF_COLLATE_BINARY_COLLATION$non_lazy_ptr-Lj1466(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,1320(%edx)
Lj1697:
	movb	-13(%ebp),%al
	testb	%al,%al
	jne	Lj1702
	jmp	Lj1701
Lj1702:
	movl	-4(%ebp),%eax
	movl	1320(%eax),%edx
	movl	L_TC_DBF_COLLATE_BINARY_COLLATION$non_lazy_ptr-Lj1466(%ebx),%eax
	cmpl	(%eax),%edx
	jne	Lj1700
	jmp	Lj1701
Lj1700:
	movl	-4(%ebp),%eax
	movl	1320(%eax),%edx
	movl	L_U_DBF_IDXFILE_LCIDLIST$non_lazy_ptr-Lj1466(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TLIST_$__INDEXOF$POINTER$$LONGINT$stub
	cmpl	$0,%eax
	jl	Lj1703
	jmp	Lj1704
Lj1703:
	movb	$3,-13(%ebp)
Lj1704:
Lj1701:
	movb	-13(%ebp),%al
	testb	%al,%al
	jne	Lj1711
	jmp	Lj1712
Lj1711:
	movb	$0,-14(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,1332(%eax)
	jne	Lj1715
	jmp	Lj1716
Lj1715:
	movl	-4(%ebp),%eax
	movl	1336(%eax),%eax
	leal	-14(%ebp),%ecx
	leal	-13(%ebp),%edx
	movl	-4(%ebp),%esi
	movl	1332(%esi),%esi
	call	*%esi
Lj1716:
	movb	-14(%ebp),%al
	testb	%al,%al
	je	Lj1725
	decb	%al
	je	Lj1726
	jmp	Lj1724
Lj1725:
	movl	-4(%ebp),%eax
	movb	$1,1312(%eax)
	jmp	Lj1723
Lj1726:
	movl	-4(%ebp),%eax
	movb	$1,1313(%eax)
	jmp	Lj1723
Lj1724:
	movl	-4(%ebp),%edx
	movl	L_TC_DBF_COLLATE_BINARY_COLLATION$non_lazy_ptr-Lj1466(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,1320(%edx)
Lj1723:
Lj1712:
	movl	-4(%ebp),%eax
	movb	1312(%eax),%al
	testb	%al,%al
	je	Lj1733
	jmp	Lj1734
Lj1733:
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__READINDEXES$stub
Lj1734:
Lj1661:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETUPDATEMODE$TINDEXUPDATEMODE$stub
	movl	-4(%ebp),%eax
	movb	$1,1281(%eax)
Lj1471:
Lj1467:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1468
	call	LFPC_RERAISE$stub
Lj1468:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__CLOSE
_DBF_IDXFILE_TINDEXFILE_$__CLOSE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,1281(%eax)
	jne	Lj1751
	jmp	Lj1752
Lj1751:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*152(%edx)
	movl	-4(%ebp),%eax
	movl	$0,908(%eax)
	movl	-4(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj1757
	jmp	Lj1758
Lj1757:
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.align 2
Lj1761:
	incl	-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leal	288(%edx,%eax,4),%eax
	call	L_DBF_COMMON_FREEMEMANDNIL$POINTER$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leal	100(%edx,%eax,4),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	leal	532(%eax,%edx,4),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
	cmpl	$46,-8(%ebp)
	jl	Lj1761
	jmp	Lj1768
Lj1758:
	movl	-4(%ebp),%eax
	leal	912(%eax),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
Lj1768:
	movl	-4(%ebp),%eax
	movl	920(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-4(%ebp),%eax
	movl	924(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	-4(%ebp),%eax
	movb	$0,1281(%eax)
Lj1752:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__CLEARROOTS
_DBF_IDXFILE_TINDEXFILE_$__CLEARROOTS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	948(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.align 2
Lj1785:
	incl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	testl	%eax,%eax
	jne	Lj1790
	jmp	Lj1791
Lj1790:
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CLEARINDEX$stub
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	532(%edx,%eax,4),%eax
	movl	%eax,720(%ebx,%ecx,4)
Lj1791:
	cmpl	$46,-8(%ebp)
	jl	Lj1785
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_WRITEDBFILENAME$PMDXHDR$ANSISTRING
_DBF_IDXFILE_WRITEDBFILENAME$PMDXHDR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj1801
Lj1801:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-12(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1802
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_EXTRACTFILENAME$ANSISTRING$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	movl	%eax,-8(%ebp)
	leal	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING$stub
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1817
	movl	-4(%eax),%eax
Lj1817:
	cmpl	$0,%eax
	jg	Lj1815
	jmp	Lj1816
Lj1815:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1824
	jmp	Lj1825
Lj1824:
	movl	-16(%ebp),%edx
	decl	%edx
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
Lj1825:
Lj1816:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1832
	movl	-4(%eax),%eax
Lj1832:
	cmpl	$15,%eax
	jg	Lj1830
	jmp	Lj1831
Lj1830:
	leal	-8(%ebp),%eax
	movl	$15,%edx
	call	Lfpc_ansistr_setlength$stub
Lj1831:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1839
	movl	-4(%eax),%eax
Lj1839:
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1842
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1801(%ebx),%edx
	movl	%edx,%eax
Lj1842:
	movl	-4(%ebp),%edx
	leal	4(%edx),%edx
	movl	-20(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-20(%ebp),%edx
	movl	$15,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%ecx
	leal	4(%eax,%ecx,1),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
Lj1802:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1803
	call	LFPC_RERAISE$stub
Lj1803:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__CLEAR
_DBF_IDXFILE_TINDEXFILE_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	call	Lj1860
Lj1860:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*152(%edx)
	movl	-4(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj1863
	jmp	Lj1864
Lj1863:
	call	L_SYSUTILS_NOW$$TDATETIME$stub
	fstpl	(%esp)
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	movl	-4(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$6,%al
	je	Lj1873
	jmp	Lj1874
Lj1873:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movb	$3,(%eax)
	jmp	Lj1877
Lj1874:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movb	$2,(%eax)
Lj1877:
	movl	-4(%ebp),%eax
	movl	40(%eax),%edx
	movzwl	-6(%ebp),%eax
	subl	$1900,%eax
	movb	%al,1(%edx)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movb	-8(%ebp),%dl
	movb	%dl,2(%eax)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movb	-10(%ebp),%dl
	movb	%dl,3(%eax)
	movl	-4(%ebp),%eax
	movl	56(%eax),%edx
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	call	L_DBF_IDXFILE_WRITEDBFILENAME$PMDXHDR$ANSISTRING$stub
	movw	$2,%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movl	-4(%ebp),%edx
	movl	40(%edx),%edx
	movw	%ax,20(%edx)
	movw	$1024,%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movl	-4(%ebp),%edx
	movl	40(%edx),%edx
	movw	%ax,22(%edx)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movb	$1,24(%eax)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movb	$48,25(%eax)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movb	$32,26(%eax)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movb	$0,30(%eax)
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETDBFLANGUAGEID$$BYTE$stub
	movl	-4(%ebp),%edx
	movl	40(%edx),%edx
	movb	%al,31(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	12(%eax),%eax
	cltd
	idivl	20(%ecx)
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	40(%edx),%edx
	movl	%eax,32(%edx)
	movl	-4(%ebp),%eax
	movl	40(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__TOUCHHEADER$POINTER$stub
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movb	$1,529(%eax)
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETDBFLANGUAGEID$$BYTE$stub
	movb	%al,-25(%ebp)
	movzbl	-25(%ebp),%eax
	testl	%eax,%eax
	je	Lj1924
	jmp	Lj1925
Lj1924:
	movl	-4(%ebp),%edx
	movl	L_TC_DBF_COLLATE_BINARY_COLLATION$non_lazy_ptr-Lj1860(%edi),%eax
	movl	(%eax),%eax
	movl	%eax,1320(%edx)
	jmp	Lj1928
Lj1925:
	movzbl	-25(%ebp),%eax
	call	L_DBF_COLLATE_GETCOLLATIONTABLE$LONGINT$$PCOLLATIONTABLE$stub
	movl	-4(%ebp),%edx
	movl	%eax,1320(%edx)
Lj1928:
	movl	-4(%ebp),%eax
	movl	948(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movw	28(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj1936
	decl	-16(%ebp)
	.align 2
Lj1937:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT$stub
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETNEWPAGENO$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	920(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	920(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-4(%ebp),%eax
	movl	524(%eax),%ecx
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*144(%esi)
	cmpl	-16(%ebp),%ebx
	jg	Lj1937
Lj1936:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT$stub
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WRITEFILEHEADER$stub
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CLEARROOTS$stub
	movl	-4(%ebp),%eax
	movl	$32,936(%eax)
	movl	-4(%ebp),%eax
	movl	$544,940(%eax)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	32(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETRECORDCOUNT$LONGINT$stub
	jmp	Lj1978
Lj1864:
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CLEARINDEX$stub
	movl	-4(%ebp),%eax
	movl	524(%eax),%eax
	movl	4(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETRECORDCOUNT$LONGINT$stub
Lj1978:
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__CLEARINDEX
_DBF_IDXFILE_TINDEXFILE_$__CLEARINDEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*152(%edx)
	movl	-4(%ebp),%eax
	movl	960(%eax),%eax
	testl	%eax,%eax
	setneb	-9(%ebp)
	movl	-4(%ebp),%eax
	movl	960(%eax),%eax
	movl	%eax,-8(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj1995
	jmp	Lj1996
Lj1995:
	movl	-4(%ebp),%eax
	movb	$1,%cl
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__LOCKPAGE$LONGINT$BOOLEAN$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	$0,960(%eax)
Lj1996:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	12(%eax),%eax
	cltd
	idivl	20(%ecx)
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	524(%edx),%edx
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__CLEAR$stub
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__GETNEWPAGE$stub
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	movl	36(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	524(%edx),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	948(%eax),%edx
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	movl	%eax,720(%ecx,%edx,4)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	movl	%eax,916(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__MODIFIED$stub
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__WRITEPAGE$stub
	cmpb	$0,-9(%ebp)
	jne	Lj2027
	jmp	Lj2028
Lj2027:
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,960(%edx)
Lj2028:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__CALCKEYPROPERTIES
_DBF_IDXFILE_TINDEXFILE_$__CALCKEYPROPERTIES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	524(%eax),%eax
	movw	12(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	movl	-4(%ebp),%edx
	movl	928(%edx),%edx
	addl	%edx,%eax
	addl	$3,%eax
	andl	$-4,%eax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movl	-4(%ebp),%edx
	movl	524(%edx),%edx
	movw	%ax,18(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%ebx
	movl	932(%edx),%eax
	subl	%eax,%ebx
	movl	-4(%ebp),%eax
	movl	524(%eax),%eax
	movw	18(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movw	%ax,%cx
	movzwl	%cx,%ecx
	movl	%ebx,%eax
	cltd
	idivl	%ecx
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movl	-4(%ebp),%edx
	movl	524(%edx),%edx
	movw	%ax,14(%edx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__GETNAME$$ANSISTRING
_DBF_IDXFILE_TINDEXFILE_$__GETNAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj2051
	jmp	Lj2052
Lj2051:
	movl	-4(%ebp),%esi
	movl	92(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	92(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj2055
Lj2052:
	movl	-4(%ebp),%esi
	movl	56(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	56(%esi),%eax
	movl	%eax,(%ebx)
Lj2055:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__CREATEINDEX$ANSISTRING$ANSISTRING$TINDEXOPTIONS
_DBF_IDXFILE_TINDEXFILE_$__CREATEINDEX$ANSISTRING$ANSISTRING$TINDEXOPTIONS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-116(%ebp)
	movl	%esi,-112(%ebp)
	call	Lj2059
Lj2059:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-108(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj2060
	movl	-12(%ebp),%eax
	movl	1276(%eax),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__CHECKEXCLUSIVEACCESS$stub
	movl	-12(%ebp),%eax
	movl	1276(%eax),%ecx
	movl	L_VMT_DBF_IDXFILE_TDBFINDEXPARSER$non_lazy_ptr-Lj2059(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PARSER_TDBFPARSER_$__CREATE$POINTER$$TDBFPARSER$stub
	movl	%eax,-24(%ebp)
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj2073
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movb	$67,-17(%ebp)
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	testb	%al,%al
	je	Lj2086
	decb	%al
	je	Lj2085
	subb	$2,%al
	jb	Lj2084
	subb	$1,%al
	jbe	Lj2086
	jmp	Lj2084
Lj2085:
	jmp	Lj2083
Lj2086:
	movb	$78,-17(%ebp)
	jmp	Lj2083
Lj2084:
	movl	L_U_DBF_STR_STRING_INVALID_INDEX_TYPE$non_lazy_ptr-Lj2059(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr-Lj2059(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj2059(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2083:
Lj2073:
	call	LFPC_POPADDRSTACK$stub
	movl	-24(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj2074
	decl	%eax
	testl	%eax,%eax
	je	Lj2075
Lj2075:
	call	LFPC_RERAISE$stub
Lj2074:
	movl	-12(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj2099
	jmp	Lj2100
Lj2099:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movw	28(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$47,%eax
	je	Lj2105
	jmp	Lj2106
Lj2105:
	movl	L_U_DBF_STR_STRING_TOO_MANY_INDEXES$non_lazy_ptr-Lj2059(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr-Lj2059(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj2059(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2106:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	532(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj2113
	jmp	Lj2114
Lj2113:
	movl	-12(%ebp),%eax
	movl	1276(%eax),%ecx
	movl	L_VMT_DBF_IDXFILE_TDBFINDEXPARSER$non_lazy_ptr-Lj2059(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PARSER_TDBFPARSER_$__CREATE$POINTER$$TDBFPARSER$stub
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	%eax,100(%ecx,%edx,4)
	movl	-12(%ebp),%ecx
	movl	L_VMT_DBF_IDXFILE_TMDXPAGE$non_lazy_ptr-Lj2059(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__CREATE$TINDEXFILE$$TINDEXPAGE$stub
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	%eax,532(%edx,%ecx,4)
	jmp	Lj2131
Lj2114:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	532(%edx,%eax,4),%eax
	leal	8(%eax),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
Lj2131:
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	532(%eax,%edx,4),%eax
	movl	%eax,720(%ecx,%esi,4)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	288(%edx,%eax,4),%eax
	movl	%eax,524(%ecx)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	100(%edx,%eax,4),%eax
	movl	%eax,908(%ecx)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	532(%edx,%eax,4),%eax
	movl	%eax,912(%ecx)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	720(%edx,%eax,4),%eax
	movl	%eax,916(%ecx)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CALCTAGOFFSET$LONGINT$$POINTER$stub
	movl	-12(%ebp),%edx
	movl	924(%edx),%edx
	movl	%eax,4(%edx)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-108(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	924(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	924(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
	movl	-12(%ebp),%eax
	movl	924(%eax),%eax
	movb	$16,%dl
	movl	-12(%ebp),%ecx
	movl	924(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	testl	$16,8(%ebp)
	jne	Lj2162
	jmp	Lj2163
Lj2162:
	movl	-12(%ebp),%eax
	movl	924(%eax),%eax
	movb	$0,%dl
	movl	-12(%ebp),%ecx
	movl	924(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
Lj2163:
	movl	-12(%ebp),%eax
	movl	924(%eax),%eax
	movb	$0,%dl
	movl	-12(%ebp),%ecx
	movl	924(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	-12(%ebp),%eax
	movl	924(%eax),%eax
	movb	$0,%dl
	movl	-12(%ebp),%ecx
	movl	924(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*148(%ecx)
	movl	-12(%ebp),%eax
	movl	924(%eax),%eax
	movb	$0,%dl
	movl	-12(%ebp),%ecx
	movl	924(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*152(%ecx)
	movl	-12(%ebp),%eax
	movl	924(%eax),%eax
	movb	$2,%dl
	movl	-12(%ebp),%ecx
	movl	924(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*156(%ecx)
	movl	-12(%ebp),%eax
	movl	924(%eax),%eax
	movb	-17(%ebp),%dl
	movl	-12(%ebp),%ecx
	movl	924(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WRITEFILEHEADER$stub
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,948(%edx)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	92(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,92(%esi)
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETNEWPAGENO$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	%eax,944(%edx)
	movl	-12(%ebp),%eax
	movl	944(%eax),%edx
	movl	-12(%ebp),%eax
	movl	924(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	924(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	leal	28(%eax),%eax
	movl	$1,%edx
	call	L_DBF_IDXFILE_INCWORDLE$WORD$LONGINT$stub
	movl	-12(%ebp),%eax
	movb	$0,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETUPDATEMODE$TINDEXUPDATEMODE$stub
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WRITEFILEHEADER$stub
Lj2100:
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CLEARINDEX$stub
	movl	-12(%ebp),%eax
	movl	908(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	908(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	1313(%eax),%al
	testb	%al,%al
	seteb	1280(%edx)
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movb	$0,8(%eax)
	testl	$4,8(%ebp)
	jne	Lj2222
	jmp	Lj2223
Lj2222:
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movzbl	8(%eax),%eax
	orl	$8,%eax
	movl	-12(%ebp),%edx
	movl	524(%edx),%edx
	movb	%al,8(%edx)
Lj2223:
	movb	-17(%ebp),%al
	cmpb	$67,%al
	je	Lj2226
	jmp	Lj2227
Lj2226:
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movzbl	8(%eax),%eax
	orl	$16,%eax
	movl	-12(%ebp),%edx
	movl	524(%edx),%edx
	movb	%al,8(%edx)
Lj2227:
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movb	-17(%ebp),%dl
	movb	%dl,9(%eax)
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movb	$0,23(%eax)
	testl	$1,8(%ebp)
	jne	Lj2234
	jmp	Lj2235
Lj2234:
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movzbl	8(%eax),%eax
	orl	$32,%eax
	orl	$64,%eax
	movl	-12(%ebp),%edx
	movl	524(%edx),%edx
	movb	%al,8(%edx)
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movb	$33,23(%eax)
	jmp	Lj2240
Lj2235:
	testl	$2,8(%ebp)
	jne	Lj2241
	jmp	Lj2242
Lj2241:
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movzbl	8(%eax),%eax
	orl	$64,%eax
	movl	-12(%ebp),%edx
	movl	524(%edx),%edx
	movb	%al,8(%edx)
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movb	$1,23(%eax)
Lj2242:
Lj2240:
	movb	-17(%ebp),%al
	cmpb	$67,%al
	je	Lj2247
	jmp	Lj2248
Lj2247:
	movl	-12(%ebp),%eax
	movl	908(%eax),%eax
	movw	56(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movl	-12(%ebp),%edx
	movl	524(%edx),%edx
	movw	%ax,12(%edx)
	jmp	Lj2253
Lj2248:
	movl	-12(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj2254
	jmp	Lj2255
Lj2254:
	movw	$12,%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movl	-12(%ebp),%edx
	movl	524(%edx),%edx
	movw	%ax,12(%edx)
	jmp	Lj2260
Lj2255:
	movw	$8,%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movl	-12(%ebp),%edx
	movl	524(%edx),%edx
	movw	%ax,12(%edx)
Lj2260:
Lj2253:
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CALCKEYPROPERTIES$stub
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	leal	24(%eax),%eax
	movl	-4(%ebp),%edx
	movl	$219,%ecx
	call	L_SYSUTILS_STRPLCOPY$PCHAR$ANSISTRING$LONGWORD$$PCHAR$stub
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movb	$0,243(%eax)
	movl	-12(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj2275
	jmp	Lj2276
Lj2275:
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movw	$0,10(%eax)
	jmp	Lj2279
Lj2276:
	movw	$22528,%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movl	-12(%ebp),%edx
	movl	524(%edx),%edx
	movw	%ax,10(%edx)
Lj2279:
	movb	-17(%ebp),%al
	cmpb	$67,%al
	jb	Lj2285
	subb	$67,%al
	je	Lj2286
	decb	%al
	je	Lj2287
	subb	$2,%al
	je	Lj2288
	subb	$8,%al
	je	Lj2288
	jmp	Lj2285
Lj2286:
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movw	$0,16(%eax)
	jmp	Lj2284
Lj2287:
	movw	$1,%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movl	-12(%ebp),%edx
	movl	524(%edx),%edx
	movw	%ax,16(%edx)
	jmp	Lj2284
Lj2288:
	movl	-12(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj2295
	jmp	Lj2296
Lj2295:
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movw	$0,16(%eax)
	jmp	Lj2299
Lj2296:
	movw	$1,%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movl	-12(%ebp),%edx
	movl	524(%edx),%edx
	movw	%ax,16(%edx)
Lj2299:
	jmp	Lj2284
Lj2285:
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movw	$0,16(%eax)
Lj2284:
	movw	$2,%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movl	-12(%ebp),%edx
	movl	524(%edx),%edx
	movw	%ax,20(%edx)
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movb	$0,22(%eax)
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movb	$0,244(%eax)
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movb	$0,245(%eax)
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movb	$1,246(%eax)
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movl	$0,248(%eax)
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movl	$0,252(%eax)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__UPDATEINDEXPROPERTIES$stub
	movl	-12(%ebp),%esi
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movw	12(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	movb	$0,964(%esi,%eax,1)
Lj2060:
	call	LFPC_POPADDRSTACK$stub
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj2061
	call	LFPC_RERAISE$stub
Lj2061:
	movl	-116(%ebp),%ebx
	movl	-112(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__READINDEXES
_DBF_IDXFILE_TINDEXFILE_$__READINDEXES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
	call	Lj2331
Lj2331:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj2334
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__READHEADER$stub
	movl	-4(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj2339
	jmp	Lj2340
Lj2339:
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CLEARROOTS$stub
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movzbl	26(%eax),%edx
	movl	-4(%ebp),%eax
	movl	%edx,936(%eax)
	movl	-4(%ebp),%eax
	movl	936(%eax),%eax
	addl	$544,%eax
	subl	$32,%eax
	movl	-4(%ebp),%edx
	movl	%eax,940(%edx)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movw	28(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj2348
	decl	-8(%ebp)
	.align 2
Lj2349:
	incl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CALCTAGOFFSET$LONGINT$$POINTER$stub
	movl	-4(%ebp),%edx
	movl	924(%edx),%edx
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	924(%eax),%eax
	movl	-4(%ebp),%edx
	movl	924(%edx),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	288(%eax,%ecx,4),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edi
	movl	(%edi),%edi
	call	*140(%edi)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	288(%edx,%eax,4),%eax
	movl	%eax,524(%ecx)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	532(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj2368
	jmp	Lj2369
Lj2368:
	movl	-4(%ebp),%eax
	movl	1276(%eax),%ecx
	movl	L_VMT_DBF_IDXFILE_TDBFINDEXPARSER$non_lazy_ptr-Lj2331(%esi),%eax
	movl	$0,%edi
	movl	%eax,%edx
	movl	%edi,%eax
	call	L_DBF_PARSER_TDBFPARSER_$__CREATE$POINTER$$TDBFPARSER$stub
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	%eax,100(%ecx,%edx,4)
	movl	-4(%ebp),%ecx
	movl	L_VMT_DBF_IDXFILE_TMDXPAGE$non_lazy_ptr-Lj2331(%esi),%eax
	movl	$0,%edi
	movl	%eax,%edx
	movl	%edi,%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__CREATE$TINDEXFILE$$TINDEXPAGE$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	%eax,532(%edx,%ecx,4)
Lj2369:
	movl	%ebp,%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$_READINDEXES_CHECKHEADERINTEGRITY$stub
	movl	-4(%ebp),%eax
	movl	524(%eax),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	532(%eax,%ecx,4),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETPAGENO$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	532(%edx,%eax,4),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RECURFIRST$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edi
	movl	532(%eax,%edi,4),%eax
	movl	%eax,720(%edx,%ecx,4)
	jmp	Lj2399
	.align 2
Lj2398:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	720(%edx,%eax,4),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	8(%eax),%eax
	movl	%eax,720(%ecx,%edx,4)
Lj2399:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	720(%edx,%eax,4),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj2398
	jmp	Lj2400
Lj2400:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	524(%eax),%eax
	leal	24(%eax),%eax
	movb	$1,%cl
	movl	$219,%edx
	call	Lfpc_chararray_to_ansistr$stub
	movl	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	100(%eax,%ecx,4),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edi
	movl	100(%ecx,%edi,4),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	cmpl	-8(%ebp),%ebx
	jg	Lj2349
Lj2348:
	jmp	Lj2415
Lj2340:
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__CLEAR$stub
	movl	%ebp,%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$_READINDEXES_CHECKHEADERINTEGRITY$stub
	movl	-4(%ebp),%eax
	movl	524(%eax),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETPAGENO$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RECURFIRST$stub
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	movl	%eax,916(%edx)
	jmp	Lj2431
	.align 2
Lj2430:
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%eax
	movl	%eax,916(%edx)
Lj2431:
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj2430
	jmp	Lj2432
Lj2432:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	movl	%eax,720(%edx)
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__UPDATEINDEXPROPERTIES$stub
Lj2415:
Lj2334:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj2335
	call	LFPC_RERAISE$stub
Lj2335:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$_READINDEXES_CHECKHEADERINTEGRITY
_DBF_IDXFILE_TINDEXFILE_$_READINDEXES_CHECKHEADERINTEGRITY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	524(%eax),%eax
	movw	14(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movw	%ax,%bx
	movzwl	%bx,%ebx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	524(%eax),%eax
	movw	18(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	mull	%ebx
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	cmpl	16(%edx),%eax
	jg	Lj2439
	jmp	Lj2440
Lj2439:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	524(%eax),%eax
	movw	12(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	cmpl	$100,%eax
	jg	Lj2445
	jmp	Lj2446
Lj2445:
	movw	$100,%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	524(%edx),%edx
	movw	%ax,12(%edx)
Lj2446:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CALCKEYPROPERTIES$stub
Lj2440:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__DELETEINDEX$ANSISTRING
_DBF_IDXFILE_TINDEXFILE_$__DELETEINDEX$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%esi,-48(%ebp)
	movl	%edi,-44(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	1276(%eax),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__CHECKEXCLUSIVEACCESS$stub
	movl	-8(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$2,%al
	je	Lj2459
	jmp	Lj2460
Lj2459:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CLOSE$stub
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__DELETEFILE$stub
	jmp	Lj2465
Lj2460:
	movl	-8(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj2466
	jmp	Lj2467
Lj2466:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__INDEXOF$ANSISTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj2474
	jmp	Lj2475
Lj2474:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movw	28(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2482
	jmp	Lj2483
Lj2482:
	movl	-16(%ebp),%eax
	incl	%eax
	movl	-8(%ebp),%edx
	movl	936(%edx),%edx
	imull	%edx,%eax
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	40(%edx),%ebx
	movl	940(%ecx),%edx
	addl	%edx,%ebx
	addl	%ebx,%eax
	movl	-8(%ebp),%edx
	movl	936(%edx),%edx
	movl	-16(%ebp),%ecx
	imull	%ecx,%edx
	movl	-8(%ebp),%ecx
	movl	-8(%ebp),%ebx
	movl	40(%ecx),%esi
	movl	940(%ebx),%ecx
	addl	%ecx,%esi
	addl	%esi,%edx
	movl	-8(%ebp),%ecx
	movl	936(%ecx),%ecx
	movl	-24(%ebp),%ebx
	imull	%ebx,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	936(%eax),%eax
	movl	-20(%ebp),%edx
	imull	%edx,%eax
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	40(%edx),%ecx
	movl	940(%ebx),%edx
	addl	%edx,%ecx
	addl	%ecx,%eax
	movl	-8(%ebp),%edx
	movl	936(%edx),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	288(%eax,%edx,4),%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	100(%edx,%eax,4),%eax
	movl	%eax,-40(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	532(%eax,%edx,4),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	720(%edx,%eax,4),%eax
	movl	%eax,-36(%ebp)
	movl	-24(%ebp),%eax
	decl	%eax
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jl	Lj2505
	decl	-12(%ebp)
	.align 2
Lj2506:
	incl	-12(%ebp)
	movl	-8(%ebp),%ebx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	addl	%ecx,%edx
	incl	%edx
	movl	-8(%ebp),%esi
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edi
	addl	%edi,%ecx
	movl	288(%ebx,%edx,4),%edx
	movl	%edx,288(%esi,%ecx,4)
	movl	-8(%ebp),%ebx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	addl	%ecx,%edx
	incl	%edx
	movl	-8(%ebp),%esi
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edi
	addl	%edi,%ecx
	movl	100(%ebx,%edx,4),%edx
	movl	%edx,100(%esi,%ecx,4)
	movl	-8(%ebp),%ebx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	addl	%ecx,%edx
	incl	%edx
	movl	-8(%ebp),%esi
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edi
	addl	%edi,%ecx
	movl	532(%ebx,%edx,4),%edx
	movl	%edx,532(%esi,%ecx,4)
	movl	-8(%ebp),%ebx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	addl	%ecx,%edx
	incl	%edx
	movl	-8(%ebp),%esi
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edi
	addl	%edi,%ecx
	movl	720(%ebx,%edx,4),%edx
	movl	%edx,720(%esi,%ecx,4)
	movl	-8(%ebp),%ebx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	addl	%ecx,%edx
	movb	$1,476(%ebx,%edx,1)
	cmpl	-12(%ebp),%eax
	jg	Lj2506
Lj2505:
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	-28(%ebp),%edx
	movl	%edx,288(%ecx,%eax,4)
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	-40(%ebp),%edx
	movl	%edx,100(%ecx,%eax,4)
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	-32(%ebp),%edx
	movl	%edx,532(%ecx,%eax,4)
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	-36(%ebp),%edx
	movl	%edx,720(%ecx,%eax,4)
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movb	$0,476(%ecx,%eax,1)
Lj2483:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	leal	28(%eax),%eax
	movl	$-1,%edx
	call	L_DBF_IDXFILE_INCWORDLE$WORD$LONGINT$stub
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WRITEFILEHEADER$stub
Lj2475:
Lj2467:
Lj2465:
	movl	-52(%ebp),%ebx
	movl	-48(%ebp),%esi
	movl	-44(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__TOUCHHEADER$POINTER
_DBF_IDXFILE_TINDEXFILE_$__TOUCHHEADER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	call	L_SYSUTILS_NOW$$TDATETIME$stub
	fstpl	(%esp)
	leal	-14(%ebp),%ecx
	leal	-12(%ebp),%edx
	leal	-10(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	movzwl	-10(%ebp),%eax
	subl	$1900,%eax
	movl	-4(%ebp),%edx
	movb	%al,44(%edx)
	movl	-4(%ebp),%eax
	movb	-12(%ebp),%dl
	movb	%dl,45(%eax)
	movl	-4(%ebp),%eax
	movb	-14(%ebp),%dl
	movb	%dl,46(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__CREATETEMPFILE$ANSISTRING$$TPAGEDFILE
_DBF_IDXFILE_TINDEXFILE_$__CREATETEMPFILE$ANSISTRING$$TPAGEDFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj2550
Lj2550:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj2551
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%ecx
	leal	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_COMMON_FINDNEXTNAME$ANSISTRING$ANSISTRING$LONGINT$stub
	movl	L_VMT_DBF_PGFILE_TPAGEDFILE$non_lazy_ptr-Lj2550(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__CREATE$$TPAGEDFILE$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETFILENAME$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movb	$3,48(%eax)
	movl	-12(%ebp),%eax
	movb	$1,51(%eax)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-8(%ebp),%eax
	movl	20(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETPAGESIZE$LONGINT$stub
	movl	-12(%ebp),%eax
	movb	$0,%dl
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
Lj2551:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj2552
	call	LFPC_RERAISE$stub
Lj2552:
	movl	-12(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__REPAGEFILE
_DBF_IDXFILE_TINDEXFILE_$__REPAGEFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__CHECKEXCLUSIVEACCESS$stub
	movl	-4(%ebp),%eax
	movl	948(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	12(%eax),%eax
	cltd
	idivl	20(%ecx)
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CREATETEMPFILE$ANSISTRING$$TPAGEDFILE$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj2614
	jmp	Lj2615
Lj2614:
	movl	-8(%ebp),%eax
	movl	40(%eax),%edx
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	12(%ecx),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	40(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__TOUCHHEADER$POINTER$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	12(%eax),%eax
	cltd
	idivl	20(%ecx)
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	40(%edx),%edx
	movl	%eax,32(%edx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	leal	-12(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movzwl	28(%eax),%eax
	decl	%eax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movw	%ax,%bx
	movzwl	%bx,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj2637
	decl	-16(%ebp)
	.align 2
Lj2638:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT$stub
	movl	%ebp,%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$_REPAGEFILE_COPYSELECTEDINDEX$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj2638
Lj2637:
	movl	-12(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	jmp	Lj2649
Lj2615:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	%ebp,%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$_REPAGEFILE_COPYSELECTEDINDEX$stub
Lj2649:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	-8(%ebp),%eax
	movb	89(%eax),%al
	testb	%al,%al
	je	Lj2660
	jmp	Lj2661
Lj2660:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	call	L_SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	56(%eax),%edx
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	call	L_SYSUTILS_RENAMEFILE$ANSISTRING$ANSISTRING$$BOOLEAN$stub
Lj2661:
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__DISABLEFORCECREATE$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__READINDEXES$stub
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT$stub
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$_REPAGEFILE_COPYSELECTEDINDEX
_DBF_IDXFILE_TINDEXFILE_$_REPAGEFILE_COPYSELECTEDINDEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	524(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	16(%edx),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%edx),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	-4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%edx
	movl	28(%ecx),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$_REPAGEFILE_ALLOCNEWPAGENO$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	912(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$_REPAGEFILE_WRITETREE$TINDEXPAGE$$LONGINT$stub
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	-12(%edx),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	-8(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*144(%ebx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj2706
	jmp	Lj2707
Lj2706:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	-16(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CALCTAGOFFSET$LONGINT$$POINTER$stub
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	40(%edx),%edx
	subl	%edx,%eax
	movl	40(%ebx),%edx
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	924(%eax),%eax
	movl	%edx,4(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	924(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-4(%ecx),%ecx
	movl	924(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
Lj2707:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$_REPAGEFILE_WRITETREE$TINDEXPAGE$$LONGINT
_DBF_IDXFILE_TINDEXFILE_$_REPAGEFILE_WRITETREE$TINDEXPAGE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$_REPAGEFILE_ALLOCNEWPAGENO$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj2722
	jmp	Lj2723
Lj2722:
	movl	-4(%ebp),%eax
	movl	64(%eax),%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj2725
	decl	-16(%ebp)
	.align 2
Lj2726:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$_REPAGEFILE_WRITETREE$TINDEXPAGE$$LONGINT$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj2726
Lj2725:
Lj2723:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj2735
	jmp	Lj2736
Lj2735:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj2737
	jmp	Lj2738
Lj2737:
	movl	-12(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	12(%edx),%edx
	movl	20(%edx),%edx
	movl	%eax,(%edx)
	jmp	Lj2743
Lj2738:
	movl	-12(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	12(%edx),%edx
	movl	20(%edx),%edx
	movl	%eax,(%edx)
Lj2743:
Lj2736:
	movl	-4(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	-8(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*144(%ebx)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$_REPAGEFILE_ALLOCNEWPAGENO$$LONGINT
_DBF_IDXFILE_TINDEXFILE_$_REPAGEFILE_ALLOCNEWPAGENO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	28(%eax),%eax
	addl	%eax,-20(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj2756
	jmp	Lj2757
Lj2756:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	40(%eax),%eax
	leal	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	28(%edx),%edx
	call	L_DBF_IDXFILE_INCINTLE$LONGINT$LONGINT$stub
Lj2757:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	leal	4(%eax),%eax
	call	L_DBF_IDXFILE_INCINTLE$LONGINT$LONGINT$stub
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__COMPACTFILE
_DBF_IDXFILE_TINDEXFILE_$__COMPACTFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__CHECKEXCLUSIVEACCESS$stub
	movl	-4(%ebp),%eax
	movl	948(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	12(%eax),%eax
	cltd
	idivl	20(%ecx)
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CREATETEMPFILE$ANSISTRING$$TPAGEDFILE$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj2788
	jmp	Lj2789
Lj2788:
	movl	-8(%ebp),%eax
	movl	40(%eax),%edx
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	12(%ecx),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	40(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__TOUCHHEADER$POINTER$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	12(%eax),%eax
	cltd
	idivl	20(%ecx)
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	40(%edx),%edx
	movl	%eax,32(%edx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	leal	-12(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movw	28(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movw	%ax,%bx
	movzwl	%bx,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj2811
	decl	-16(%ebp)
	.align 2
Lj2812:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT$stub
	movl	%ebp,%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_COPYSELECTEDINDEX$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj2812
Lj2811:
	movl	-12(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	jmp	Lj2823
Lj2789:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	%ebp,%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_COPYSELECTEDINDEX$stub
Lj2823:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	-8(%ebp),%eax
	movb	89(%eax),%al
	testb	%al,%al
	je	Lj2834
	jmp	Lj2835
Lj2834:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	call	L_SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	56(%eax),%edx
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	call	L_SYSUTILS_RENAMEFILE$ANSISTRING$ANSISTRING$$BOOLEAN$stub
Lj2835:
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__DISABLEFORCECREATE$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__READINDEXES$stub
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT$stub
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_COPYSELECTEDINDEX
_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_COPYSELECTEDINDEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	524(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	16(%edx),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%edx),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	28(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	-12(%edx),%edx
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_ALLOCNEWPAGENO$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_CREATENEWPAGE$$TINDEXPAGE$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	916(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RECURFIRST$stub
	jmp	Lj2875
	.align 2
Lj2874:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_GETNEWENTRY$TINDEXPAGE$stub
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	916(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	916(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%ebx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	916(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__PHYSICALRECNO$$LONGINT$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%ebx,%ecx
	call	L_DBF_IDXFILE_TINDEXPAGE_$__LOCALINSERT$LONGINT$PCHAR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	916(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RECURNEXT$$BOOLEAN$stub
Lj2875:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	912(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	20(%ecx),%eax
	cmpl	1272(%edx),%eax
	jne	Lj2874
	jmp	Lj2876
Lj2876:
	.align 2
Lj2895:
	movl	-8(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	36(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-4(%ebp),%ebx
	movl	-8(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*144(%ebx)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj2904
	jmp	Lj2905
Lj2904:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2908
Lj2905:
	jmp	Lj2897
Lj2908:
	jmp	Lj2895
Lj2897:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	-12(%edx),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	-8(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*144(%ebx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj2919
	jmp	Lj2920
Lj2919:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	-16(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CALCTAGOFFSET$LONGINT$$POINTER$stub
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	40(%edx),%edx
	subl	%edx,%eax
	movl	40(%ebx),%edx
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	924(%eax),%eax
	movl	%edx,4(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	924(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-4(%ecx),%ecx
	movl	924(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
Lj2920:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_GETNEWENTRY$TINDEXPAGE
_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_GETNEWENTRY$TINDEXPAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	524(%eax),%eax
	movw	14(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	decl	%eax
	cmpl	64(%ebx),%eax
	jle	Lj2931
	jmp	Lj2932
Lj2931:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj2935
	jmp	Lj2936
Lj2935:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_CREATENEWPAGE$$TINDEXPAGE$stub
	movl	-4(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	$0,24(%eax)
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	1272(%eax),%eax
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__GOTOINSERTENTRY$stub
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	$0,%edx
	call	L_DBF_IDXFILE_TINDEXPAGE_$__LOCALINSERT$LONGINT$PCHAR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	12(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
Lj2936:
	movl	-4(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	36(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-8(%ebp),%ebx
	movl	-8(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*144(%ebx)
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_ALLOCNEWPAGENO$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,36(%edx)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-4(%ebp),%eax
	movl	$-1,64(%eax)
	movl	-4(%ebp),%eax
	movl	$0,48(%eax)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	$0,%edx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_GETNEWENTRY$TINDEXPAGE$stub
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	$0,%ecx
	movl	$0,%edx
	call	L_DBF_IDXFILE_TINDEXPAGE_$__LOCALINSERT$LONGINT$PCHAR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj3001
	jmp	Lj3002
Lj3001:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	12(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
Lj3002:
Lj2932:
	movl	-4(%ebp),%eax
	movl	64(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	%edx,24(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	1272(%eax),%eax
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__GOTOINSERTENTRY$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_CREATENEWPAGE$$TINDEXPAGE
_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_CREATENEWPAGE$$TINDEXPAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj2771
Lj2771:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj3013
	jmp	Lj3014
Lj3013:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%ecx
	movl	L_VMT_DBF_IDXFILE_TMDXPAGE$non_lazy_ptr-Lj2771(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__CREATE$TINDEXFILE$$TINDEXPAGE$stub
	movl	%eax,-8(%ebp)
	jmp	Lj3023
Lj3014:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%ecx
	movl	L_VMT_DBF_IDXFILE_TNDXPAGE$non_lazy_ptr-Lj2771(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__CREATE$TINDEXFILE$$TINDEXPAGE$stub
	movl	%eax,-8(%ebp)
Lj3023:
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_ALLOCNEWPAGENO$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,36(%edx)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_ALLOCNEWPAGENO$$LONGINT
_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_ALLOCNEWPAGENO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	28(%eax),%eax
	addl	%eax,-20(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj3042
	jmp	Lj3043
Lj3042:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	40(%eax),%eax
	leal	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	28(%edx),%edx
	call	L_DBF_IDXFILE_INCINTLE$LONGINT$LONGINT$stub
Lj3043:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	leal	4(%eax),%eax
	call	L_DBF_IDXFILE_INCINTLE$LONGINT$LONGINT$stub
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__PREPARERENAME$ANSISTRING
_DBF_IDXFILE_TINDEXFILE_$__PREPARERENAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3054
	movl	-8(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj3057
	jmp	Lj3058
Lj3057:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DBF_IDXFILE_WRITEDBFILENAME$PMDXHDR$ANSISTRING$stub
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WRITEFILEHEADER$stub
Lj3058:
Lj3054:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3055
	call	LFPC_RERAISE$stub
Lj3055:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__GETNEWPAGENO$$LONGINT
_DBF_IDXFILE_TINDEXFILE_$__GETNEWPAGENO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	960(%eax),%eax
	testl	%eax,%eax
	setneb	-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj3069
	jmp	Lj3070
Lj3069:
	movl	-4(%ebp),%eax
	movb	$1,%cl
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__LOCKPAGE$LONGINT$BOOLEAN$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj3077
	jmp	Lj3078
Lj3077:
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__READHEADER$stub
Lj3078:
Lj3070:
	movl	-4(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj3081
	jmp	Lj3082
Lj3081:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	32(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	leal	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	28(%edx),%edx
	call	L_DBF_IDXFILE_INCINTLE$LONGINT$LONGINT$stub
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WRITEFILEHEADER$stub
	jmp	Lj3093
Lj3082:
	movl	-4(%ebp),%eax
	movl	524(%eax),%eax
	movl	4(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
Lj3093:
	movl	-4(%ebp),%eax
	movl	524(%eax),%eax
	leal	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	28(%edx),%edx
	call	L_DBF_IDXFILE_INCINTLE$LONGINT$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	cmpb	$0,-9(%ebp)
	jne	Lj3104
	jmp	Lj3105
Lj3104:
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT$stub
Lj3105:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__INSERT$LONGINT$PCHAR$$BOOLEAN
_DBF_IDXFILE_TINDEXFILE_$__INSERT$LONGINT$PCHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,1288(%edx)
	movl	-12(%ebp),%eax
	movb	1283(%eax),%al
	testb	%al,%al
	je	Lj3114
	jmp	Lj3116
Lj3116:
	movl	-12(%ebp),%eax
	movl	948(%eax),%eax
	cmpl	$-1,%eax
	je	Lj3114
	jmp	Lj3115
Lj3114:
	movl	-12(%ebp),%eax
	movl	948(%eax),%eax
	movl	%eax,-24(%ebp)
	movb	$1,-13(%ebp)
	movl	$0,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movw	28(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	movl	%eax,-28(%ebp)
	jmp	Lj3128
	.align 2
Lj3127:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__INSERTKEY$PCHAR$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj3140
	jmp	Lj3141
Lj3140:
	jmp	Lj3143
	.align 2
Lj3142:
	decl	-20(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__DELETEKEY$PCHAR$stub
Lj3143:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3142
	jmp	Lj3144
Lj3144:
	jmp	Lj3129
Lj3141:
	incl	-20(%ebp)
Lj3128:
	movl	-20(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj3127
	jmp	Lj3129
Lj3129:
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT$stub
	jmp	Lj3153
Lj3115:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__INSERTKEY$PCHAR$$BOOLEAN$stub
	movb	%al,-13(%ebp)
Lj3153:
	movl	-12(%ebp),%eax
	movb	$1,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__RESYNCRANGE$BOOLEAN$stub
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__CHECKKEYVIOLATION$PCHAR$$BOOLEAN
_DBF_IDXFILE_TINDEXFILE_$__CHECKKEYVIOLATION$PCHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movl	$-2,1288(%eax)
	movl	-8(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	je	Lj3170
	jmp	Lj3171
Lj3170:
	movl	-8(%ebp),%eax
	movl	948(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movw	28(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movw	%ax,%bx
	movzwl	%bx,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj3175
	decl	-16(%ebp)
	.align 2
Lj3176:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT$stub
	movl	-8(%ebp),%eax
	movb	957(%eax),%al
	cmpb	$2,%al
	je	Lj3183
	jmp	Lj3184
Lj3183:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__EXTRACTKEYFROMBUFFER$PCHAR$$PCHAR$stub
	movl	-8(%ebp),%edx
	movl	%eax,1284(%edx)
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__FINDKEY$BOOLEAN$$LONGINT$stub
	testl	%eax,%eax
	seteb	-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj3197
	jmp	Lj3198
Lj3197:
	jmp	Lj3175
Lj3198:
Lj3184:
	cmpl	-16(%ebp),%ebx
	jg	Lj3176
Lj3175:
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT$stub
	jmp	Lj3203
Lj3171:
	movl	-8(%ebp),%eax
	movb	957(%eax),%al
	cmpb	$2,%al
	je	Lj3204
	jmp	Lj3205
Lj3204:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__EXTRACTKEYFROMBUFFER$PCHAR$$PCHAR$stub
	movl	-8(%ebp),%edx
	movl	%eax,1284(%edx)
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__FINDKEY$BOOLEAN$$LONGINT$stub
	testl	%eax,%eax
	seteb	-9(%ebp)
Lj3205:
Lj3203:
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__PREPAREKEY$PCHAR$TEXPRESSIONTYPE$$PCHAR
_DBF_IDXFILE_TINDEXFILE_$__PREPAREKEY$PCHAR$TEXPRESSIONTYPE$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movzbl	9(%eax),%eax
	cmpl	$70,%eax
	je	Lj3224
	cmpl	$78,%eax
	je	Lj3224
Lj3224:
	je	Lj3222
	jmp	Lj3223
Lj3222:
	movl	-12(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$2,%al
	je	Lj3225
	jmp	Lj3226
Lj3225:
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj3229
	subb	$3,%al
	je	Lj3230
	jmp	Lj3228
Lj3229:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	fildl	(%edx)
	fstpl	1304(%eax)
	movl	-12(%ebp),%eax
	leal	1304(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj3227
Lj3230:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	fildq	(%edx)
	fstpl	1304(%eax)
	movl	-12(%ebp),%eax
	leal	1304(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj3227
Lj3228:
Lj3227:
	jmp	Lj3239
Lj3226:
	movl	$0,-52(%ebp)
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj3244
	subb	$3,%al
	je	Lj3245
	decb	%al
	je	Lj3246
	jmp	Lj3243
Lj3244:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3249
	jmp	Lj3250
Lj3249:
	leal	-35(%ebp),%edx
	movl	-48(%ebp),%eax
	call	L_DBF_PRSSUPP_GETSTRFROMINT$LONGINT$PCHAR$$LONGINT$stub
	movl	%eax,-52(%ebp)
	jmp	Lj3257
Lj3250:
	movl	$0,-52(%ebp)
Lj3257:
	movl	-48(%ebp),%eax
	cmpl	$0,%eax
	setlb	-36(%ebp)
	jmp	Lj3242
Lj3245:
	movl	-16(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-84(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-80(%ebp)
	movl	-84(%ebp),%eax
	movl	-80(%ebp),%edx
	cmpl	$0,%edx
	jne	Lj3264
	cmpl	$0,%eax
	jne	Lj3264
	jmp	Lj3265
Lj3264:
	movl	-80(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-84(%ebp),%eax
	movl	%eax,(%esp)
	leal	-35(%ebp),%eax
	call	L_DBF_PRSSUPP_GETSTRFROMINT64$INT64$PCHAR$$LONGINT$stub
	movl	%eax,-52(%ebp)
	jmp	Lj3272
Lj3265:
	movl	$0,-52(%ebp)
Lj3272:
	movl	-84(%ebp),%eax
	movl	-80(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj3275
	jg	Lj3276
	cmpl	$0,%eax
	jb	Lj3275
	jmp	Lj3276
Lj3275:
	movb	$1,-36(%ebp)
	jmp	Lj3277
Lj3276:
	movb	$0,-36(%ebp)
Lj3277:
	jmp	Lj3242
Lj3246:
	movl	-16(%ebp),%eax
	fldl	(%eax)
	fstpt	-72(%ebp)
	movl	-72(%ebp),%eax
	movl	%eax,(%esp)
	movl	-68(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-64(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-40(%ebp),%eax
	movl	$15,%ecx
	movl	$9999,%edx
	call	L_SYSUTILS_FLOATTODECIMAL$TFLOATREC$EXTENDED$LONGINT$LONGINT$stub
	fldz
	fldt	-72(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jne	Lj3288
	jmp	Lj3289
Lj3288:
	leal	-35(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-52(%ebp)
	jmp	Lj3294
Lj3289:
	movl	$0,-52(%ebp)
Lj3294:
	movl	-52(%ebp),%eax
	cmpl	$16,%eax
	jg	Lj3297
	jmp	Lj3298
Lj3297:
	movl	$16,-52(%ebp)
Lj3298:
	jmp	Lj3242
Lj3243:
Lj3242:
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj3303
	subb	$3,%al
	je	Lj3303
	jmp	Lj3302
Lj3303:
	movl	-52(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj3307
	.align 2
Lj3306:
	decl	-52(%ebp)
Lj3307:
	movl	-52(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3309
	jmp	Lj3308
Lj3309:
	movl	-52(%ebp),%eax
	decl	%eax
	movb	-35(%ebp,%eax,1),%al
	cmpb	$48,%al
	je	Lj3306
	jmp	Lj3308
Lj3308:
	movl	-52(%ebp),%eax
	movb	$0,-35(%ebp,%eax,1)
	jmp	Lj3301
Lj3302:
Lj3301:
	movl	-12(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	$52,%eax
	movb	%al,1292(%edx)
	movl	-12(%ebp),%eax
	leal	1293(%eax),%eax
	movb	$0,%cl
	movl	$10,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-52(%ebp),%eax
	incl	%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	shll	$3,%eax
	incl	%eax
	movl	-12(%ebp),%edx
	movb	%al,1293(%edx)
	cmpb	$0,-36(%ebp)
	jne	Lj3322
	jmp	Lj3323
Lj3322:
	movl	-12(%ebp),%eax
	movb	1293(%eax),%dl
	orb	$128,%dl
	movl	-12(%ebp),%eax
	movb	%dl,1293(%eax)
Lj3323:
	movl	$0,-44(%ebp)
	jmp	Lj3329
	.align 2
Lj3328:
	movl	-44(%ebp),%eax
	incl	%eax
	movb	-35(%ebp,%eax,1),%al
	testb	%al,%al
	je	Lj3331
	jmp	Lj3332
Lj3331:
	movb	$0,-73(%ebp)
	jmp	Lj3335
Lj3332:
	movl	-44(%ebp),%eax
	incl	%eax
	movzbl	-35(%ebp,%eax,1),%eax
	subl	$48,%eax
	movb	%al,-73(%ebp)
Lj3335:
	movl	-12(%ebp),%ecx
	movl	-44(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	addl	$2,%edx
	movl	-44(%ebp),%eax
	movzbl	-35(%ebp,%eax,1),%eax
	subl	$48,%eax
	shll	$4,%eax
	movzbl	-73(%ebp),%ebx
	orl	%ebx,%eax
	movb	%al,1292(%ecx,%edx,1)
	addl	$2,-44(%ebp)
Lj3329:
	movl	-44(%ebp),%eax
	cmpl	-52(%ebp),%eax
	jl	Lj3328
	jmp	Lj3330
Lj3330:
	movl	-12(%ebp),%eax
	leal	1292(%eax),%eax
	movl	%eax,-16(%ebp)
Lj3239:
Lj3223:
	movl	-16(%ebp),%eax
	movl	-88(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__EXTRACTKEYFROMBUFFER$PCHAR$$PCHAR
_DBF_IDXFILE_TINDEXFILE_$__EXTRACTKEYFROMBUFFER$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	908(%eax),%eax
	movl	-8(%ebp),%edx
	movl	908(%edx),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movb	%al,%bl
	movl	-8(%ebp),%eax
	movl	908(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	908(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movb	%bl,%cl
	call	L_DBF_IDXFILE_TINDEXFILE_$__PREPAREKEY$PCHAR$TEXPRESSIONTYPE$$PCHAR$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	908(%eax),%eax
	movb	47(%eax),%al
	testb	%al,%al
	jne	Lj3358
	jmp	Lj3359
Lj3358:
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETKEYLEN$$LONGINT$stub
	movl	%eax,(%esp)
	call	L_DBF_WTIL_GETACP$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	1316(%edx),%edx
	movl	-12(%ebp),%ecx
	call	L_DBF_COMMON_TRANSLATESTRING$LONGWORD$LONGWORD$PCHAR$PCHAR$LONGINT$$LONGINT$stub
Lj3359:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__INSERTKEY$PCHAR$$BOOLEAN
_DBF_IDXFILE_TINDEXFILE_$__INSERTKEY$PCHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$1,-9(%ebp)
	movl	-8(%ebp),%eax
	movb	958(%eax),%al
	testb	%al,%al
	je	Lj3379
	jmp	Lj3377
Lj3379:
	movl	-8(%ebp),%eax
	movb	957(%eax),%al
	cmpb	$2,%al
	je	Lj3378
	jmp	Lj3377
Lj3378:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$42,%al
	je	Lj3376
	jmp	Lj3377
Lj3376:
	jmp	Lj3372
Lj3377:
	movl	-8(%ebp),%eax
	cmpb	$0,1280(%eax)
	jne	Lj3382
	jmp	Lj3381
Lj3382:
	movl	-8(%ebp),%eax
	movl	524(%eax),%eax
	movzwl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj3380
	jmp	Lj3381
Lj3380:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__EXTRACTKEYFROMBUFFER$PCHAR$$PCHAR$stub
	movl	-8(%ebp),%edx
	movl	%eax,1284(%edx)
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__INSERTCURRENT$$BOOLEAN$stub
	movb	%al,-9(%ebp)
Lj3381:
Lj3372:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__INSERTCURRENT$$BOOLEAN
_DBF_IDXFILE_TINDEXFILE_$__INSERTCURRENT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	$1,-5(%ebp)
	movl	-4(%ebp),%eax
	movb	958(%eax),%al
	cmpb	$1,%al
	jne	Lj3397
	jmp	Lj3399
Lj3399:
	movl	-4(%ebp),%eax
	movb	957(%eax),%al
	cmpb	$2,%al
	je	Lj3397
	jmp	Lj3398
Lj3397:
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__RESETRANGE$stub
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__FINDKEY$BOOLEAN$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj3402
	jmp	Lj3404
Lj3404:
	movl	-4(%ebp),%eax
	movb	957(%eax),%al
	testb	%al,%al
	je	Lj3402
	jmp	Lj3403
Lj3402:
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__GOTOINSERTENTRY$stub
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	1284(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	1288(%eax),%edx
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__LOCALINSERT$LONGINT$PCHAR$LONGINT$stub
	jmp	Lj3419
Lj3403:
	movl	-4(%ebp),%eax
	movb	957(%eax),%al
	cmpb	$2,%al
	je	Lj3420
	jmp	Lj3421
Lj3420:
	movl	-4(%ebp),%eax
	movb	$0,958(%eax)
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CONSTRUCTINSERTERRORMSG$stub
	movb	$0,-5(%ebp)
Lj3421:
Lj3419:
Lj3398:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__CONSTRUCTINSERTERRORMSG
_DBF_IDXFILE_TINDEXFILE_$__CONSTRUCTINSERTERRORMSG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	call	Lj3429
Lj3429:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$0,-84(%ebp)
	movl	$0,-80(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3430
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	testl	%eax,%eax
	je	Lj3435
	movl	-4(%eax),%eax
Lj3435:
	cmpl	$0,%eax
	jg	Lj3433
	jmp	Lj3434
Lj3433:
	jmp	Lj3430
Lj3434:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	1284(%eax),%eax
	leal	-52(%ebp),%edx
	call	Lfpc_pchar_to_ansistr$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETKEYLEN$$LONGINT$stub
	movl	%eax,%edx
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,(%esp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETNAME$$ANSISTRING$stub
	movl	-80(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	$11,-76(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETPHYSICALRECNO$$LONGINT$stub
	movl	%eax,-64(%ebp)
	movl	$0,-68(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_TRIMRIGHT$ANSISTRING$$ANSISTRING$stub
	movl	-84(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$11,-60(%ebp)
	leal	-76(%ebp),%edx
	movl	L_U_DBF_STR_STRING_KEY_VIOLATION$non_lazy_ptr-Lj3429(%ebx),%eax
	movl	(%eax),%eax
	movl	$2,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	leal	96(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,96(%esi)
Lj3430:
	call	LFPC_POPADDRSTACK$stub
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-8(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3431
	call	LFPC_RERAISE$stub
Lj3431:
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__INSERTERROR
_DBF_IDXFILE_TINDEXFILE_$__INSERTERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	call	Lj3475
Lj3475:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3476
	movl	-4(%ebp),%esi
	movl	96(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	96(%esi),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	96(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,96(%esi)
	movl	-8(%ebp),%ecx
	movl	L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr-Lj3475(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj3475(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj3476:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-8(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3477
	call	LFPC_RERAISE$stub
Lj3477:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__DELETE$LONGINT$PCHAR
_DBF_IDXFILE_TINDEXFILE_$__DELETE$LONGINT$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,1288(%edx)
	movl	-12(%ebp),%eax
	movb	1283(%eax),%al
	testb	%al,%al
	je	Lj3499
	jmp	Lj3501
Lj3501:
	movl	-12(%ebp),%eax
	movl	948(%eax),%eax
	cmpl	$-1,%eax
	je	Lj3499
	jmp	Lj3500
Lj3499:
	movl	-12(%ebp),%eax
	movl	948(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movw	28(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movw	%ax,%bx
	movzwl	%bx,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj3505
	decl	-16(%ebp)
	.align 2
Lj3506:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__DELETEKEY$PCHAR$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj3506
Lj3505:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT$stub
	jmp	Lj3521
Lj3500:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__DELETEKEY$PCHAR$stub
Lj3521:
	movl	-12(%ebp),%eax
	movb	$1,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__RESYNCRANGE$BOOLEAN$stub
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__DELETEKEY$PCHAR
_DBF_IDXFILE_TINDEXFILE_$__DELETEKEY$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,1280(%eax)
	jne	Lj3534
	jmp	Lj3533
Lj3534:
	movl	-8(%ebp),%eax
	movl	524(%eax),%eax
	movzwl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj3532
	jmp	Lj3533
Lj3532:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__EXTRACTKEYFROMBUFFER$PCHAR$$PCHAR$stub
	movl	-8(%ebp),%edx
	movl	%eax,1284(%edx)
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__DELETECURRENT$stub
Lj3533:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__DELETECURRENT
_DBF_IDXFILE_TINDEXFILE_$__DELETECURRENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	958(%eax),%al
	cmpb	$1,%al
	jne	Lj3545
	jmp	Lj3547
Lj3547:
	movl	-4(%ebp),%eax
	movb	957(%eax),%al
	cmpb	$2,%al
	je	Lj3545
	jmp	Lj3546
Lj3545:
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__RESETRANGE$stub
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__PHYSICALRECNO$$LONGINT$stub
	movl	-4(%ebp),%edx
	cmpl	1288(%edx),%eax
	jne	Lj3550
	jmp	Lj3551
Lj3550:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__FINDKEY$BOOLEAN$$LONGINT$stub
Lj3551:
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__DELETE$stub
Lj3546:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__UPDATEINDEX$LONGINT$PCHAR$PCHAR$$BOOLEAN
_DBF_IDXFILE_TINDEXFILE_$__UPDATEINDEX$LONGINT$PCHAR$PCHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT$stub
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__UPDATECURRENT$PCHAR$PCHAR$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__UPDATE$LONGINT$PCHAR$PCHAR$$BOOLEAN
_DBF_IDXFILE_TINDEXFILE_$__UPDATE$LONGINT$PCHAR$PCHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,1288(%edx)
	movl	-12(%ebp),%eax
	movb	1283(%eax),%al
	testb	%al,%al
	je	Lj3578
	jmp	Lj3580
Lj3580:
	movl	-12(%ebp),%eax
	movl	948(%eax),%eax
	cmpl	$-1,%eax
	je	Lj3578
	jmp	Lj3579
Lj3578:
	movl	-12(%ebp),%eax
	movl	948(%eax),%eax
	movl	%eax,-24(%ebp)
	movb	$1,-13(%ebp)
	movl	$0,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movw	28(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	movl	%eax,-28(%ebp)
	jmp	Lj3592
	.align 2
Lj3591:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__UPDATEINDEX$LONGINT$PCHAR$PCHAR$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj3604
	jmp	Lj3605
Lj3604:
	jmp	Lj3607
	.align 2
Lj3606:
	decl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__UPDATEINDEX$LONGINT$PCHAR$PCHAR$$BOOLEAN$stub
Lj3607:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3606
	jmp	Lj3608
Lj3608:
	jmp	Lj3593
Lj3605:
	incl	-20(%ebp)
Lj3592:
	movl	-20(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj3591
	jmp	Lj3593
Lj3593:
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT$stub
	jmp	Lj3621
Lj3579:
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__UPDATECURRENT$PCHAR$PCHAR$$BOOLEAN$stub
	movb	%al,-13(%ebp)
Lj3621:
	movl	-12(%ebp),%eax
	movl	912(%eax),%eax
	movl	52(%eax),%eax
	testl	%eax,%eax
	je	Lj3632
	jmp	Lj3631
Lj3632:
	movl	-12(%ebp),%eax
	movl	912(%eax),%eax
	movl	68(%eax),%eax
	testl	%eax,%eax
	je	Lj3630
	jmp	Lj3631
Lj3630:
	movl	-12(%ebp),%eax
	movb	$1,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__RESYNCRANGE$BOOLEAN$stub
Lj3631:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__UPDATECURRENT$PCHAR$PCHAR$$BOOLEAN
_DBF_IDXFILE_TINDEXFILE_$__UPDATECURRENT$PCHAR$PCHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$1,-13(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,1280(%eax)
	jne	Lj3643
	jmp	Lj3642
Lj3643:
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movzwl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj3641
	jmp	Lj3642
Lj3641:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__EXTRACTKEYFROMBUFFER$PCHAR$$PCHAR$stub
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	movw	12(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movw	%ax,%cx
	movzwl	%cx,%ecx
	movl	-24(%ebp),%eax
	leal	-125(%ebp),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	leal	-125(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__EXTRACTKEYFROMBUFFER$PCHAR$$PCHAR$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYS$PCHAR$PCHAR$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj3666
	jmp	Lj3667
Lj3666:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,1284(%eax)
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__DELETECURRENT$stub
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,1284(%eax)
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__INSERTCURRENT$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj3684
	jmp	Lj3685
Lj3684:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,1284(%eax)
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__INSERTCURRENT$$BOOLEAN$stub
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,1284(%eax)
Lj3685:
Lj3667:
Lj3642:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__ADDNEWLEVEL
_DBF_IDXFILE_TINDEXFILE_$__ADDNEWLEVEL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj3693
Lj3693:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj3694
	jmp	Lj3695
Lj3694:
	movl	-4(%ebp),%ecx
	movl	L_VMT_DBF_IDXFILE_TMDXPAGE$non_lazy_ptr-Lj3693(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__CREATE$TINDEXFILE$$TINDEXPAGE$stub
	movl	%eax,-8(%ebp)
	jmp	Lj3704
Lj3695:
	movl	-4(%ebp),%ecx
	movl	L_VMT_DBF_IDXFILE_TNDXPAGE$non_lazy_ptr-Lj3693(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__CREATE$TINDEXFILE$$TINDEXPAGE$stub
	movl	%eax,-8(%ebp)
Lj3704:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__GETNEWPAGE$stub
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__LOCKPAGE$stub
	movl	-4(%ebp),%eax
	movl	944(%eax),%edx
	movl	-4(%ebp),%eax
	movb	$1,%cl
	call	L_DBF_PGFILE_TPAGEDFILE_$__LOCKPAGE$LONGINT$BOOLEAN$$BOOLEAN$stub
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	944(%eax),%eax
	movl	%eax,960(%edx)
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	524(%edx),%edx
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT$stub
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__GOTOINSERTENTRY$stub
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	912(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	$0,64(%eax)
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	movl	36(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRY$LONGINT$PCHAR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETUPPERPAGE$TINDEXPAGE$stub
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	948(%eax),%edx
	movl	-8(%ebp),%eax
	movl	%eax,532(%ecx,%edx,4)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,912(%edx)
	movl	-4(%ebp),%eax
	movl	524(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	944(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*144(%esi)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__UNLOCKHEADER
_DBF_IDXFILE_TINDEXFILE_$__UNLOCKHEADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	960(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj3773
	jmp	Lj3774
Lj3773:
	movl	-4(%ebp),%eax
	movl	960(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$-1,960(%eax)
Lj3774:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__RESYNCROOT
_DBF_IDXFILE_TINDEXFILE_$__RESYNCROOT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj3783
	jmp	Lj3784
Lj3783:
	movl	-4(%ebp),%eax
	movl	524(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	944(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__READRECORD$LONGINT$POINTER$$LONGINT$stub
	jmp	Lj3791
Lj3784:
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__READHEADER$stub
Lj3791:
	movl	-4(%ebp),%eax
	movl	524(%eax),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETPAGENO$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__SEARCHKEY$PCHAR$TSEARCHKEYTYPE$$BOOLEAN
_DBF_IDXFILE_TINDEXFILE_$__SEARCHKEY$PCHAR$TSEARCHKEYTYPE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETSEQUENTIALRECNO$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$-2,%edx
	call	L_DBF_IDXFILE_TINDEXFILE_$__FIND$LONGINT$PCHAR$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj3816
	decb	%al
	je	Lj3817
	decb	%al
	je	Lj3818
	jmp	Lj3815
Lj3816:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	seteb	-13(%ebp)
	jmp	Lj3814
Lj3817:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	setleb	-13(%ebp)
	jmp	Lj3814
Lj3818:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj3823
	jmp	Lj3824
Lj3823:
	.align 2
Lj3825:
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WALKNEXT$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj3827
	jmp	Lj3832
Lj3832:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__MATCHKEY$PCHAR$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj3827
	jmp	Lj3825
Lj3827:
	jmp	Lj3837
Lj3824:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	setlb	-13(%ebp)
Lj3837:
	jmp	Lj3814
Lj3815:
	movb	$0,-13(%ebp)
Lj3814:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj3842
	jmp	Lj3843
Lj3842:
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETSEQUENTIALRECNO$LONGINT$stub
Lj3843:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__FIND$LONGINT$PCHAR$$LONGINT
_DBF_IDXFILE_TINDEXFILE_$__FIND$LONGINT$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,1288(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,1284(%eax)
	movl	-12(%ebp),%eax
	movb	$0,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__FINDKEY$BOOLEAN$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__FINDKEY$BOOLEAN$$LONGINT
_DBF_IDXFILE_TINDEXFILE_$__FINDKEY$BOOLEAN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj3862
	jmp	Lj3863
Lj3862:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__RESYNCROOT$stub
Lj3863:
	movl	-8(%ebp),%eax
	movb	957(%eax),%al
	testb	%al,%al
	je	Lj3866
	jmp	Lj3867
Lj3866:
	cmpb	$0,-4(%ebp)
	jne	Lj3868
	jmp	Lj3869
Lj3868:
	movl	$-3,-36(%ebp)
	jmp	Lj3872
Lj3869:
	movl	-8(%ebp),%eax
	movl	1288(%eax),%eax
	movl	%eax,-36(%ebp)
Lj3872:
	jmp	Lj3875
Lj3867:
	movl	$-2,-36(%ebp)
Lj3875:
	movl	-8(%ebp),%eax
	movl	912(%eax),%eax
	movl	%eax,-16(%ebp)
	.align 2
Lj3880:
	movl	$0,-32(%ebp)
	movl	-36(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__FINDNEAREST$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj3891
	jmp	Lj3892
Lj3891:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3895
	jmp	Lj3894
Lj3895:
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3893
	jmp	Lj3894
Lj3893:
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
	.align 2
Lj3898:
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj3900
	jmp	Lj3903
Lj3903:
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	24(%eax),%eax
	cmpl	64(%edx),%eax
	jl	Lj3900
	jmp	Lj3898
Lj3900:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3904
	jmp	Lj3905
Lj3904:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%edx
	incl	%edx
	movl	-16(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT$stub
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RECURFIRST$stub
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj3916
	jmp	Lj3917
Lj3916:
	movl	$2,-32(%ebp)
	jmp	Lj3920
Lj3917:
	movl	$1,-32(%ebp)
Lj3920:
Lj3905:
Lj3894:
	jmp	Lj3923
Lj3892:
	movl	$2,-32(%ebp)
Lj3923:
	cmpb	$0,-4(%ebp)
	jne	Lj3928
	jmp	Lj3927
Lj3928:
	movl	-32(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj3926
	jmp	Lj3927
Lj3926:
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	524(%eax),%eax
	movw	14(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj3937
	jmp	Lj3938
Lj3937:
	decl	-28(%ebp)
Lj3938:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj3939
	jmp	Lj3940
Lj3939:
	movl	-16(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SPLIT$stub
Lj3940:
Lj3927:
	movl	-32(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3943
	jmp	Lj3944
Lj3943:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
Lj3944:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj3882
	jmp	Lj3880
Lj3882:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__MATCHKEY$PCHAR$$LONGINT
_DBF_IDXFILE_TINDEXFILE_$__MATCHKEY$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	916(%eax),%eax
	movl	-8(%ebp),%edx
	movl	20(%eax),%eax
	cmpl	1268(%edx),%eax
	je	Lj3949
	jmp	Lj3950
Lj3949:
	movl	$1,-12(%ebp)
	jmp	Lj3953
Lj3950:
	movl	-8(%ebp),%eax
	movl	916(%eax),%eax
	movl	-8(%ebp),%edx
	movl	20(%eax),%eax
	cmpl	1272(%edx),%eax
	je	Lj3954
	jmp	Lj3955
Lj3954:
	movl	$-1,-12(%ebp)
	jmp	Lj3958
Lj3955:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,1284(%eax)
	movl	-8(%ebp),%eax
	movl	916(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__MATCHKEY$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj3958:
Lj3953:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__SETRANGE$PCHAR$PCHAR
_DBF_IDXFILE_TINDEXFILE_$__SETRANGE$PCHAR$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETKEYLEN$$LONGINT$stub
	movl	%eax,%ecx
	movl	-12(%ebp),%eax
	leal	1065(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETKEYLEN$$LONGINT$stub
	movl	%eax,%ecx
	movl	-12(%ebp),%eax
	leal	1166(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movb	$1,1282(%eax)
	movl	-12(%ebp),%eax
	movb	$1,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__RESYNCRANGE$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__RECORDDELETED$LONGINT$PCHAR
_DBF_IDXFILE_TINDEXFILE_$__RECORDDELETED$LONGINT$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movb	$1,958(%eax)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__DELETE$LONGINT$PCHAR$stub
	movl	-12(%ebp),%eax
	movb	$0,958(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__RECORDRECALLED$LONGINT$PCHAR$$BOOLEAN
_DBF_IDXFILE_TINDEXFILE_$__RECORDRECALLED$LONGINT$PCHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movb	$1,958(%eax)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__INSERT$LONGINT$PCHAR$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,958(%eax)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__SETPHYSICALRECNO$LONGINT
_DBF_IDXFILE_TINDEXFILE_$__SETPHYSICALRECNO$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	916(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__PHYSICALRECNO$$LONGINT$stub
	cmpl	-4(%ebp),%eax
	je	Lj4017
	jmp	Lj4018
Lj4017:
	jmp	Lj4015
Lj4018:
	movl	-8(%ebp),%eax
	movl	1276(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__ISRECORDPRESENT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4021
	jmp	Lj4022
Lj4021:
	movl	-8(%ebp),%eax
	movl	1276(%eax),%eax
	movl	124(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	1276(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	1276(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	movl	-8(%ebp),%eax
	movl	1276(%eax),%eax
	movl	124(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__EXTRACTKEYFROMBUFFER$PCHAR$$PCHAR$stub
	movl	-8(%ebp),%edx
	movl	%eax,1284(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,1288(%edx)
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__FINDKEY$BOOLEAN$$LONGINT$stub
Lj4022:
Lj4015:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__SETUPDATEMODE$TINDEXUPDATEMODE
_DBF_IDXFILE_TINDEXFILE_$__SETUPDATEMODE$TINDEXUPDATEMODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$2,%al
	je	Lj4047
	jmp	Lj4049
Lj4049:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movw	28(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	cmpl	$1,%eax
	jle	Lj4047
	jmp	Lj4048
Lj4047:
	movl	-8(%ebp),%eax
	movb	$1,1283(%eax)
	jmp	Lj4054
Lj4048:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,1283(%eax)
Lj4054:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__WALKFIRST
_DBF_IDXFILE_TINDEXFILE_$__WALKFIRST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RECURFIRST$stub
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	movl	24(%eax),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__WALKLAST
_DBF_IDXFILE_TINDEXFILE_$__WALKLAST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RECURLAST$stub
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	movl	24(%eax),%edx
	addl	$2,%edx
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__FIRST
_DBF_IDXFILE_TINDEXFILE_$__FIRST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__RESYNC$BOOLEAN$stub
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WALKFIRST$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__LAST
_DBF_IDXFILE_TINDEXFILE_$__LAST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__RESYNC$BOOLEAN$stub
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WALKLAST$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__RESYNCRANGE$BOOLEAN
_DBF_IDXFILE_TINDEXFILE_$__RESYNCRANGE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	1282(%eax),%al
	testb	%al,%al
	je	Lj4091
	jmp	Lj4092
Lj4091:
	jmp	Lj4089
Lj4092:
	movl	$0,-16(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj4095
	jmp	Lj4096
Lj4095:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETSEQUENTIALRECNO$$LONGINT$stub
	movl	%eax,-16(%ebp)
Lj4096:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__RESETRANGE$stub
	movl	-8(%ebp),%eax
	leal	1065(%eax),%edx
	movl	-8(%ebp),%eax
	movb	$1,%cl
	call	L_DBF_IDXFILE_TINDEXFILE_$__SEARCHKEY$PCHAR$TSEARCHKEYTYPE$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj4111
	jmp	Lj4112
Lj4111:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WALKLAST$stub
Lj4112:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETBRACKETLOW$stub
	movl	-8(%ebp),%eax
	leal	1166(%eax),%edx
	movl	-8(%ebp),%eax
	movb	$2,%cl
	call	L_DBF_IDXFILE_TINDEXFILE_$__SEARCHKEY$PCHAR$TSEARCHKEYTYPE$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj4125
	jmp	Lj4126
Lj4125:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WALKPREV$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj4131
	jmp	Lj4132
Lj4131:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WALKFIRST$stub
Lj4132:
	jmp	Lj4135
Lj4126:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WALKLAST$stub
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WALKPREV$$BOOLEAN$stub
Lj4135:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETBRACKETHIGH$stub
	cmpb	$0,-4(%ebp)
	jne	Lj4142
	jmp	Lj4143
Lj4142:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETSEQUENTIALRECNO$LONGINT$stub
Lj4143:
Lj4089:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__RESYNC$BOOLEAN
_DBF_IDXFILE_TINDEXFILE_$__RESYNC$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj4150
	jmp	Lj4151
Lj4150:
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj4152
	jmp	Lj4153
Lj4152:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__RESYNCROOT$stub
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__RESYNCRANGE$BOOLEAN$stub
	jmp	Lj4160
Lj4153:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__RESYNCTREE$stub
Lj4160:
Lj4151:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__RESYNCTREE
_DBF_IDXFILE_TINDEXFILE_$__RESYNCTREE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	movl	-4(%ebp),%edx
	movl	20(%eax),%eax
	cmpl	1268(%edx),%eax
	je	Lj4167
	jmp	Lj4168
Lj4167:
	movl	$0,-8(%ebp)
	jmp	Lj4171
Lj4168:
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	movl	-4(%ebp),%edx
	movl	20(%eax),%eax
	cmpl	1272(%edx),%eax
	je	Lj4172
	jmp	Lj4173
Lj4172:
	movl	$1,-8(%ebp)
	jmp	Lj4176
Lj4173:
	movl	-4(%ebp),%eax
	movl	524(%eax),%eax
	movw	12(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movw	%ax,%bx
	movzwl	%bx,%ebx
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	movl	-4(%ebp),%edx
	movl	916(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-4(%ebp),%edx
	leal	964(%edx),%edx
	movl	%ebx,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__PHYSICALRECNO$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	$2,-8(%ebp)
Lj4176:
Lj4171:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__RESYNCRANGE$BOOLEAN$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jl	Lj4198
	testl	%eax,%eax
	je	Lj4199
	decl	%eax
	je	Lj4200
	decl	%eax
	je	Lj4201
	jmp	Lj4198
Lj4199:
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WALKFIRST$stub
	jmp	Lj4197
Lj4200:
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WALKLAST$stub
	jmp	Lj4197
Lj4201:
	movl	-4(%ebp),%eax
	leal	964(%eax),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__FIND$LONGINT$PCHAR$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj4206
	jmp	Lj4207
Lj4206:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETPHYSICALRECNO$LONGINT$stub
Lj4207:
	jmp	Lj4197
Lj4198:
Lj4197:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__WALKPREV$$BOOLEAN
_DBF_IDXFILE_TINDEXFILE_$__WALKPREV$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__PHYSICALRECNO$$LONGINT$stub
	movl	%eax,-12(%ebp)
	.align 2
Lj4224:
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RECURPREV$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	testb	%al,%al
	je	Lj4226
	jmp	Lj4231
Lj4231:
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__PHYSICALRECNO$$LONGINT$stub
	cmpl	-12(%ebp),%eax
	jne	Lj4226
	jmp	Lj4224
Lj4226:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__WALKNEXT$$BOOLEAN
_DBF_IDXFILE_TINDEXFILE_$__WALKNEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__PHYSICALRECNO$$LONGINT$stub
	movl	%eax,-12(%ebp)
	.align 2
Lj4240:
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RECURNEXT$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	testb	%al,%al
	je	Lj4242
	jmp	Lj4247
Lj4247:
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__PHYSICALRECNO$$LONGINT$stub
	cmpl	-12(%ebp),%eax
	jne	Lj4242
	jmp	Lj4240
Lj4242:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__PREV$$BOOLEAN
_DBF_IDXFILE_TINDEXFILE_$__PREV$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__RESYNC$BOOLEAN$stub
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WALKPREV$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__NEXT$$BOOLEAN
_DBF_IDXFILE_TINDEXFILE_$__NEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__RESYNC$BOOLEAN$stub
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WALKNEXT$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__GETKEYLEN$$LONGINT
_DBF_IDXFILE_TINDEXFILE_$__GETKEYLEN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	524(%eax),%eax
	movw	12(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__GETKEYTYPE$$CHAR
_DBF_IDXFILE_TINDEXFILE_$__GETKEYTYPE$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	524(%eax),%eax
	movb	9(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__GETPHYSICALRECNO$$LONGINT
_DBF_IDXFILE_TINDEXFILE_$__GETPHYSICALRECNO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	916(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__PHYSICALRECNO$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__GETSEQUENTIALRECORDCOUNT$$LONGINT
_DBF_IDXFILE_TINDEXFILE_$__GETSEQUENTIALRECORDCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	movl	64(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	movl	40(%eax),%eax
	imull	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__GETSEQUENTIALRECNO$$LONGINT
_DBF_IDXFILE_TINDEXFILE_$__GETSEQUENTIALRECNO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	916(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	916(%eax),%edx
	movl	24(%ecx),%eax
	cmpl	48(%edx),%eax
	jl	Lj4292
	jmp	Lj4293
Lj4292:
	movl	$0,-8(%ebp)
	jmp	Lj4296
Lj4293:
	movl	-4(%ebp),%eax
	movl	916(%eax),%edx
	movl	-4(%ebp),%eax
	movl	916(%eax),%ecx
	movl	24(%edx),%eax
	cmpl	64(%ecx),%eax
	jg	Lj4297
	jmp	Lj4298
Lj4297:
	movl	$2147483647,-8(%ebp)
	jmp	Lj4301
Lj4298:
	movl	$1,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	movl	%eax,-12(%ebp)
	.align 2
Lj4306:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	24(%eax),%eax
	movl	40(%edx),%edx
	imull	%edx,%eax
	addl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4308
	jmp	Lj4306
Lj4308:
Lj4301:
Lj4296:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__SETSEQUENTIALRECNO$LONGINT
_DBF_IDXFILE_TINDEXFILE_$__SETSEQUENTIALRECNO$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	decl	-4(%ebp)
	movl	-8(%ebp),%eax
	movl	912(%eax),%eax
	movl	%eax,-12(%ebp)
	.align 2
Lj4315:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	cltd
	idivl	40(%ecx)
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	cltd
	idivl	40(%ecx)
	movl	%edx,-4(%ebp)
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	cmpl	-16(%ebp),%eax
	jl	Lj4322
	jmp	Lj4323
Lj4322:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj4326
	jmp	Lj4325
Lj4326:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RECURNEXT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4324
	jmp	Lj4325
Lj4324:
	movl	-12(%ebp),%eax
	movl	48(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT$stub
	movl	$0,-4(%ebp)
	jmp	Lj4335
Lj4325:
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RECURLAST$stub
	movl	-8(%ebp),%eax
	movl	916(%eax),%eax
	movl	%eax,-12(%ebp)
Lj4335:
	jmp	Lj4340
Lj4323:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT$stub
Lj4340:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4317
	jmp	Lj4315
Lj4317:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__SETBRACKETLOW
_DBF_IDXFILE_TINDEXFILE_$__SETBRACKETLOW:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	movl	%eax,-8(%ebp)
	.align 2
Lj4351:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,44(%edx)
	movl	-8(%ebp),%eax
	movl	36(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETLOWPAGE$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4353
	jmp	Lj4351
Lj4353:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__SETBRACKETHIGH
_DBF_IDXFILE_TINDEXFILE_$__SETBRACKETHIGH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	movl	%eax,-8(%ebp)
	.align 2
Lj4366:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,60(%edx)
	movl	-8(%ebp),%eax
	movl	36(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETHIGHPAGE$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4368
	jmp	Lj4366
Lj4368:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__CANCELRANGE
_DBF_IDXFILE_TINDEXFILE_$__CANCELRANGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,1282(%eax)
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__RESETRANGE$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__RESETRANGE
_DBF_IDXFILE_TINDEXFILE_$__RESETRANGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	movl	%eax,-8(%ebp)
	.align 2
Lj4387:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETLOWPAGE$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SETHIGHPAGE$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4389
	jmp	Lj4387
Lj4389:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__DISABLERANGE
_DBF_IDXFILE_TINDEXFILE_$__DISABLERANGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	movl	%eax,-8(%ebp)
	.align 2
Lj4404:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__SAVEBRACKET$stub
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4406
	jmp	Lj4404
Lj4406:
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CANCELRANGE$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__ENABLERANGE
_DBF_IDXFILE_TINDEXFILE_$__ENABLERANGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	movl	%eax,-8(%ebp)
	.align 2
Lj4417:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__RESTOREBRACKET$stub
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4419
	jmp	Lj4417
Lj4419:
	movl	-4(%ebp),%eax
	movb	$1,1282(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_MEMCOMP$POINTER$POINTER$LONGINT$$LONGINT
_DBF_IDXFILE_MEMCOMP$POINTER$POINTER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj4429
	decl	-20(%ebp)
	.align 2
Lj4430:
	incl	-20(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movb	(%edx),%dl
	cmpb	(%ecx),%dl
	jne	Lj4431
	jmp	Lj4432
Lj4431:
	movl	-4(%ebp),%edx
	movzbl	(%edx),%ecx
	movl	-8(%ebp),%edx
	movzbl	(%edx),%edx
	subl	%edx,%ecx
	movl	%ecx,-16(%ebp)
	jmp	Lj4426
Lj4432:
	incl	-4(%ebp)
	incl	-8(%ebp)
	cmpl	-20(%ebp),%eax
	jg	Lj4430
Lj4429:
	movl	$0,-16(%ebp)
Lj4426:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYS$PCHAR$PCHAR$$LONGINT
_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYS$PCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	1328(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	1324(%ebx),%ebx
	call	*%ebx
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,956(%eax)
	jne	Lj4447
	jmp	Lj4448
Lj4447:
	movl	-16(%ebp),%eax
	negl	%eax
	movl	%eax,-16(%ebp)
Lj4448:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYSNUMERICNDX$PCHAR$PCHAR$$LONGINT
_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYSNUMERICNDX$PCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-24(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-32(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-28(%ebp)
	fldl	-32(%ebp)
	fldl	-24(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj4457
	jmp	Lj4458
Lj4457:
	movl	$1,-16(%ebp)
	jmp	Lj4461
Lj4458:
	fldl	-32(%ebp)
	fldl	-24(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj4462
	jmp	Lj4463
Lj4462:
	movl	$-1,-16(%ebp)
	jmp	Lj4466
Lj4463:
	movl	$0,-16(%ebp)
Lj4466:
Lj4461:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYSNUMERICMDX$PCHAR$PCHAR$$LONGINT
_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYSNUMERICMDX$PCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	-17(%ebp)
	movl	-8(%ebp),%eax
	movb	1(%eax),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	-18(%ebp)
	movb	-17(%ebp),%al
	cmpb	-18(%ebp),%al
	je	Lj4475
	jmp	Lj4476
Lj4475:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	je	Lj4477
	jmp	Lj4478
Lj4477:
	movl	-8(%ebp),%edx
	addl	$2,%edx
	movl	-4(%ebp),%eax
	addl	$2,%eax
	movl	$8,%ecx
	call	L_DBF_IDXFILE_MEMCOMP$POINTER$POINTER$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj4487
Lj4478:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj4490
	jmp	Lj4489
Lj4490:
	movl	-4(%ebp),%eax
	movzbl	1(%eax),%eax
	cmpl	$52,%eax
	je	Lj4488
	jmp	Lj4489
Lj4488:
	movl	$-1,-16(%ebp)
	jmp	Lj4493
Lj4489:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj4496
	jmp	Lj4495
Lj4496:
	movl	-8(%ebp),%eax
	movzbl	1(%eax),%eax
	cmpl	$52,%eax
	je	Lj4494
	jmp	Lj4495
Lj4494:
	movl	$1,-16(%ebp)
	jmp	Lj4499
Lj4495:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-16(%ebp)
Lj4499:
Lj4493:
Lj4487:
	cmpb	$0,-17(%ebp)
	jne	Lj4504
	jmp	Lj4503
Lj4504:
	cmpb	$0,-18(%ebp)
	jne	Lj4502
	jmp	Lj4503
Lj4502:
	movl	-16(%ebp),%eax
	negl	%eax
	movl	%eax,-16(%ebp)
Lj4503:
	jmp	Lj4507
Lj4476:
	cmpb	$0,-17(%ebp)
	jne	Lj4508
	jmp	Lj4509
Lj4508:
	movl	$-1,-16(%ebp)
	jmp	Lj4512
Lj4509:
	movl	$1,-16(%ebp)
Lj4512:
Lj4507:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYSSTRING$PCHAR$PCHAR$$LONGINT
_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYSSTRING$PCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETKEYLEN$$LONGINT$stub
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETKEYLEN$$LONGINT$stub
	movl	%eax,%ecx
	movl	-12(%ebp),%eax
	movl	1320(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DBF_COLLATE_DBFCOMPARESTRING$PCOLLATIONTABLE$PCHAR$LONGINT$PCHAR$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj4533
	jmp	Lj4534
Lj4533:
	subl	$2,-16(%ebp)
Lj4534:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEY$PCHAR$$LONGINT
_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEY$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	1284(%eax),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYS$PCHAR$PCHAR$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__INDEXOF$ANSISTRING$$LONGINT
_DBF_IDXFILE_TINDEXFILE_$__INDEXOF$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj4546
Lj4546:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj4547
	movl	$-1,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movw	28(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movw	%ax,%bx
	movzwl	%bx,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj4553
	decl	-16(%ebp)
	.align 2
Lj4554:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CALCTAGOFFSET$LONGINT$$POINTER$stub
	movl	-8(%ebp),%edx
	movl	924(%edx),%edx
	movl	%eax,4(%edx)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-8(%ebp),%eax
	movl	924(%eax),%eax
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	924(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-64(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj4546(%esi),%ecx
	movl	44(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	je	Lj4563
	jmp	Lj4564
Lj4563:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj4553
Lj4564:
	cmpl	-16(%ebp),%ebx
	jg	Lj4554
Lj4553:
Lj4547:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj4548
	call	LFPC_RERAISE$stub
Lj4548:
	movl	-12(%ebp),%eax
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__SETINDEXNAME$ANSISTRING
_DBF_IDXFILE_TINDEXFILE_$__SETINDEXNAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj4581
	jmp	Lj4582
Lj4581:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__INDEXOF$ANSISTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	jmp	Lj4589
Lj4582:
	movl	$0,-12(%ebp)
Lj4589:
	movl	-8(%ebp),%eax
	cmpb	$0,1282(%eax)
	jne	Lj4594
	jmp	Lj4593
Lj4594:
	movl	-8(%ebp),%eax
	movl	948(%eax),%eax
	cmpl	-12(%ebp),%eax
	jne	Lj4592
	jmp	Lj4593
Lj4592:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	948(%eax),%eax
	movl	%eax,952(%edx)
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__DISABLERANGE$stub
Lj4593:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj4599
	jmp	Lj4600
Lj4599:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	952(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj4605
	jmp	Lj4606
Lj4605:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__ENABLERANGE$stub
	movl	-8(%ebp),%eax
	movl	$-1,952(%eax)
Lj4606:
Lj4600:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__CALCTAGOFFSET$LONGINT$$POINTER
_DBF_IDXFILE_TINDEXFILE_$__CALCTAGOFFSET$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	936(%eax),%ebx
	movl	-4(%ebp),%eax
	imull	%eax,%ebx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	40(%eax),%edx
	movl	940(%ecx),%eax
	addl	%eax,%edx
	addl	%edx,%ebx
	movl	%ebx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT
_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj4616
Lj4616:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj4617
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj4620
	jmp	Lj4621
Lj4620:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	288(%edx,%eax,4),%eax
	movl	%eax,524(%ecx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	100(%edx,%eax,4),%eax
	movl	%eax,908(%ecx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	532(%eax,%edx,4),%eax
	movl	%eax,912(%ecx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	720(%eax,%edx,4),%eax
	movl	%eax,916(%ecx)
	movl	-8(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj4630
	jmp	Lj4631
Lj4630:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CALCTAGOFFSET$LONGINT$$POINTER$stub
	movl	-8(%ebp),%edx
	movl	920(%edx),%edx
	movl	%eax,4(%edx)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	920(%eax),%eax
	leal	-52(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	920(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	92(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,92(%esi)
	movl	-8(%ebp),%eax
	movl	920(%eax),%eax
	movl	-8(%ebp),%edx
	movl	920(%edx),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	-8(%ebp),%edx
	movl	%eax,944(%edx)
	jmp	Lj4648
Lj4631:
Lj4648:
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__UPDATEINDEXPROPERTIES$stub
	jmp	Lj4651
Lj4621:
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj4616(%ebx),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	92(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj4616(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,92(%esi)
Lj4651:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,948(%edx)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	1313(%eax),%al
	testb	%al,%al
	seteb	1280(%edx)
Lj4617:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj4618
	call	LFPC_RERAISE$stub
Lj4618:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__UPDATEINDEXPROPERTIES
_DBF_IDXFILE_TINDEXFILE_$__UPDATEINDEXPROPERTIES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj4659
Lj4659:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	524(%eax),%eax
	movb	8(%eax),%al
	andb	$8,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	956(%ecx)
	movl	-4(%ebp),%eax
	movb	$0,957(%eax)
	movl	-4(%ebp),%eax
	movl	524(%eax),%eax
	movb	8(%eax),%al
	andb	$64,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj4664
	jmp	Lj4665
Lj4664:
	movl	-4(%ebp),%eax
	movb	$1,957(%eax)
Lj4665:
	movl	-4(%ebp),%eax
	movl	524(%eax),%eax
	movb	8(%eax),%al
	andb	$32,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj4668
	jmp	Lj4669
Lj4668:
	movl	-4(%ebp),%eax
	movb	$2,957(%eax)
Lj4669:
	movl	-4(%ebp),%eax
	movl	524(%eax),%eax
	movb	9(%eax),%al
	cmpb	$67,%al
	je	Lj4672
	jmp	Lj4673
Lj4672:
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	L_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYSSTRING$PCHAR$PCHAR$$LONGINT$non_lazy_ptr-Lj4659(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,1324(%ecx)
	movl	-8(%ebp),%eax
	movl	%eax,1328(%ecx)
	jmp	Lj4676
Lj4673:
	movl	-4(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj4677
	jmp	Lj4678
Lj4677:
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	L_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYSNUMERICMDX$PCHAR$PCHAR$$LONGINT$non_lazy_ptr-Lj4659(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,1324(%ecx)
	movl	-8(%ebp),%eax
	movl	%eax,1328(%ecx)
	jmp	Lj4681
Lj4678:
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	L_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYSNUMERICNDX$PCHAR$PCHAR$$LONGINT$non_lazy_ptr-Lj4659(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,1324(%ecx)
	movl	-8(%ebp),%eax
	movl	%eax,1328(%ecx)
Lj4681:
Lj4676:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__FLUSH
_DBF_IDXFILE_TINDEXFILE_$__FLUSH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj4686
	jmp	Lj4687
Lj4686:
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.align 2
Lj4690:
	incl	-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	cmpb	$0,476(%edx,%eax,1)
	jne	Lj4691
	jmp	Lj4692
Lj4691:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WRITEINDEXHEADER$LONGINT$stub
Lj4692:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	532(%edx,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj4697
	jmp	Lj4698
Lj4697:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	532(%eax,%edx,4),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__FLUSH$stub
Lj4698:
	cmpl	$46,-8(%ebp)
	jl	Lj4690
	jmp	Lj4701
Lj4687:
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	testl	%eax,%eax
	jne	Lj4702
	jmp	Lj4703
Lj4702:
	movl	-4(%ebp),%eax
	movl	912(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXPAGE_$__FLUSH$stub
Lj4703:
Lj4701:
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__FLUSHHEADER$stub
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__FLUSH$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__GETINDEXNAMES$TSTRINGS
_DBF_IDXFILE_TINDEXFILE_$__GETINDEXNAMES$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj4712
	movl	-8(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj4715
	jmp	Lj4716
Lj4715:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movw	28(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movw	%ax,%bx
	movzwl	%bx,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj4718
	decl	-12(%ebp)
	.align 2
Lj4719:
	incl	-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CALCTAGOFFSET$LONGINT$$POINTER$stub
	movl	-8(%ebp),%edx
	movl	924(%edx),%edx
	movl	%eax,4(%edx)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%eax
	movl	924(%eax),%eax
	leal	-56(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	924(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-56(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*168(%esi)
	cmpl	-12(%ebp),%ebx
	jg	Lj4719
Lj4718:
Lj4716:
Lj4712:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj4713
	call	LFPC_RERAISE$stub
Lj4713:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__GETINDEXINFO$ANSISTRING$TDBFINDEXDEF
_DBF_IDXFILE_TINDEXFILE_$__GETINDEXINFO$ANSISTRING$TDBFINDEXDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj4740
	movl	-12(%ebp),%ebx
	movl	92(%ebx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	92(%ebx),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETINDEXNAME$ANSISTRING$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TDBFINDEXDEF_$__SETINDEXNAME$ANSISTRING$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	524(%eax),%eax
	leal	24(%eax),%eax
	movb	$1,%cl
	movl	$219,%edx
	call	Lfpc_chararray_to_ansistr$stub
	movl	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TDBFINDEXDEF_$__SETEXPRESSION$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	$0,32(%eax)
	movl	-8(%ebp),%eax
	movb	$1,36(%eax)
	movl	-12(%ebp),%eax
	cmpb	$0,956(%eax)
	jne	Lj4769
	jmp	Lj4770
Lj4769:
	movl	-8(%ebp),%eax
	movl	$4,%edx
	orl	32(%eax),%edx
	movl	-8(%ebp),%eax
	movl	%edx,32(%eax)
Lj4770:
	movl	-8(%ebp),%eax
	movl	$16,%edx
	orl	32(%eax),%edx
	movl	-8(%ebp),%eax
	movl	%edx,32(%eax)
	movl	-12(%ebp),%eax
	movb	957(%eax),%al
	cmpb	$1,%al
	jb	Lj4776
	decb	%al
	je	Lj4777
	decb	%al
	je	Lj4778
	jmp	Lj4776
Lj4777:
	movl	-8(%ebp),%eax
	movl	$2,%edx
	orl	32(%eax),%edx
	movl	-8(%ebp),%eax
	movl	%edx,32(%eax)
	jmp	Lj4775
Lj4778:
	movl	-8(%ebp),%eax
	movl	$1,%edx
	orl	32(%eax),%edx
	movl	-8(%ebp),%eax
	movl	%edx,32(%eax)
	jmp	Lj4775
Lj4776:
Lj4775:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETINDEXNAME$ANSISTRING$stub
Lj4740:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj4741
	call	LFPC_RERAISE$stub
Lj4741:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__GETEXPRESSION$$ANSISTRING
_DBF_IDXFILE_TINDEXFILE_$__GETEXPRESSION$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj4794
Lj4794:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	908(%eax),%eax
	testl	%eax,%eax
	jne	Lj4795
	jmp	Lj4796
Lj4795:
	movl	-4(%ebp),%eax
	movl	908(%eax),%esi
	movl	52(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	52(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj4799
Lj4796:
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj4794(%edi),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj4794(%edi),%eax
	movl	(%eax),%eax
	movl	%eax,(%ebx)
Lj4799:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__GETDBFLANGUAGEID$$BYTE
_DBF_IDXFILE_TINDEXFILE_$__GETDBFLANGUAGEID$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj4804
	movl	-4(%ebp),%eax
	movl	1276(%eax),%eax
	movb	120(%eax),%al
	cmpb	$6,%al
	je	Lj4807
	jmp	Lj4808
Lj4807:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	1276(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_DBF_DBFFILE_TDBFFILE_$__GETLANGUAGESTR$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	L_DBF_LANG_GETLANGID_FROM_LANGNAME$ANSISTRING$$BYTE$stub
	movb	%al,-5(%ebp)
	jmp	Lj4817
Lj4808:
	movl	-4(%ebp),%eax
	movl	1276(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__GETLANGUAGEID$$LONGINT$stub
	movb	%al,-5(%ebp)
Lj4817:
Lj4804:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj4805
	call	LFPC_RERAISE$stub
Lj4805:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__WRITEHEADER
_DBF_IDXFILE_TINDEXFILE_$__WRITEHEADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	528(%eax),%al
	cmpb	$3,%al
	jae	Lj4824
	jmp	Lj4825
Lj4824:
	movl	-4(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj4826
	jmp	Lj4827
Lj4826:
	movl	-4(%ebp),%eax
	movl	948(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WRITEINDEXHEADER$LONGINT$stub
	jmp	Lj4832
Lj4827:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	948(%eax),%eax
	movb	$1,476(%edx,%eax,1)
Lj4832:
	jmp	Lj4835
Lj4825:
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__WRITEFILEHEADER$stub
Lj4835:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__WRITEFILEHEADER
_DBF_IDXFILE_TINDEXFILE_$__WRITEFILEHEADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__WRITEHEADER$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TINDEXFILE_$__WRITEINDEXHEADER$LONGINT
_DBF_IDXFILE_TINDEXFILE_$__WRITEINDEXHEADER$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CALCTAGOFFSET$LONGINT$$POINTER$stub
	movl	-8(%ebp),%edx
	movl	924(%edx),%edx
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	movl	924(%eax),%eax
	movl	-8(%ebp),%edx
	movl	924(%edx),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	288(%ecx,%eax,4),%ecx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*144(%ebx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movb	$0,476(%eax,%edx,1)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TDBFINDEXDEF_$__CREATE$TCOLLECTION$$TDBFINDEXDEF
_DBF_IDXFILE_TDBFINDEXDEF_$__CREATE$TCOLLECTION$$TDBFINDEXDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj4862
	jmp	Lj4863
Lj4862:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj4863:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4868
	jmp	Lj4869
Lj4868:
	jmp	Lj4860
Lj4869:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj4872
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4876
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOLLECTIONITEM_$__CREATE$TCOLLECTION$$TCOLLECTIONITEM$stub
	movl	-12(%ebp),%eax
	movb	$0,36(%eax)
Lj4876:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4877
	call	LFPC_RERAISE$stub
Lj4877:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4889
	jmp	Lj4888
Lj4889:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4887
	jmp	Lj4888
Lj4887:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj4888:
Lj4872:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj4874
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4893
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4894
	jmp	Lj4895
Lj4894:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj4895:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj4893:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4892
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4892:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4874
Lj4874:
Lj4860:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TDBFINDEXDEF_$__DESTROY
_DBF_IDXFILE_TDBFINDEXDEF_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj4902
	jmp	Lj4903
Lj4902:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj4903:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOLLECTIONITEM_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4912
	jmp	Lj4911
Lj4912:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4910
	jmp	Lj4911
Lj4910:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj4911:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TDBFINDEXDEF_$__ASSIGN$TPERSISTENT
_DBF_IDXFILE_TDBFINDEXDEF_$__ASSIGN$TPERSISTENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj4916
Lj4916:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_DBF_IDXFILE_TDBFINDEXDEF$non_lazy_ptr-Lj4916(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj4917
	jmp	Lj4918
Lj4917:
	movl	-4(%ebp),%edi
	movl	24(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	24(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	24(%edi),%eax
	movl	%eax,24(%esi)
	movl	-4(%ebp),%edi
	movl	28(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	28(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	28(%edi),%eax
	movl	%eax,28(%esi)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,32(%edx)
	jmp	Lj4929
Lj4918:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT$stub
Lj4929:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TDBFINDEXDEF_$__SETINDEXNAME$ANSISTRING
_DBF_IDXFILE_TDBFINDEXDEF_$__SETINDEXNAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	call	Lj4935
Lj4935:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj4936
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-60(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	movl	%eax,-56(%ebp)
	leal	-52(%ebp),%edx
	movl	-56(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj4935(%ebx),%ecx
	movl	32(%ecx),%ecx
	call	*%ecx
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	24(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,24(%esi)
Lj4936:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj4937
	call	LFPC_RERAISE$stub
Lj4937:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXFILE_TDBFINDEXDEF_$__SETEXPRESSION$ANSISTRING
_DBF_IDXFILE_TDBFINDEXDEF_$__SETEXPRESSION$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	call	Lj4952
Lj4952:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj4953
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-60(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	movl	%eax,-56(%ebp)
	leal	-52(%ebp),%edx
	movl	-56(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj4952(%ebx),%ecx
	movl	32(%ecx),%ecx
	call	*%ecx
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	28(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,28(%esi)
Lj4953:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj4954
	call	LFPC_RERAISE$stub
Lj4954:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_INIT$_DBF_IDXFILE
_INIT$_DBF_IDXFILE:
.reference __DBF_IDXFILE_init
.globl	__DBF_IDXFILE_init
__DBF_IDXFILE_init:
.reference _INIT$_DBF_IDXFILE
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_DBF_IDXFILE_TLCIDLIST$non_lazy_ptr-Lj2(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_IDXFILE_TLCIDLIST_$__CREATE$$TLCIDLIST$stub
	movl	L_U_DBF_IDXFILE_LCIDLIST$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_U_DBF_IDXFILE_LCIDLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	call	L_DBF_IDXFILE_TLCIDLIST_$__ENUMERATE$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_DBF_IDXFILE
_FINALIZE$_DBF_IDXFILE:
.reference __DBF_IDXFILE_finalize
.globl	__DBF_IDXFILE_finalize
__DBF_IDXFILE_finalize:
.reference _FINALIZE$_DBF_IDXFILE
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj4969
Lj4969:
	popl	%ebx
	movl	L_U_DBF_IDXFILE_LCIDLIST$non_lazy_ptr-Lj4969(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_DBF_IDXFILE_ENTRY_MDX_BOF
.data
.zerofill __DATA, __common, _U_DBF_IDXFILE_ENTRY_MDX_BOF, 8,2




	.align 2
.globl _U_DBF_IDXFILE_ENTRY_MDX_EOF
.data
.zerofill __DATA, __common, _U_DBF_IDXFILE_ENTRY_MDX_EOF, 8,2




	.align 2
.globl _U_DBF_IDXFILE_ENTRY_NDX_BOF
.data
.zerofill __DATA, __common, _U_DBF_IDXFILE_ENTRY_NDX_BOF, 12,2




	.align 2
.globl _U_DBF_IDXFILE_ENTRY_NDX_EOF
.data
.zerofill __DATA, __common, _U_DBF_IDXFILE_ENTRY_NDX_EOF, 12,2




	.align 2
.globl _U_DBF_IDXFILE_LCIDLIST
.data
.zerofill __DATA, __common, _U_DBF_IDXFILE_LCIDLIST, 4,2



.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld5
_$DBF_IDXFILE$_Ld5:
	.byte	10
	.ascii	"TIndexPage"

.const_data
	.align 2
.globl	_VMT_DBF_IDXFILE_TINDEXPAGE
_VMT_DBF_IDXFILE_TINDEXPAGE:
	.long	76,-76
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$DBF_IDXFILE$_Ld5
	.long	0,0
	.long	_$DBF_IDXFILE$_Ld6
	.long	_RTTI_DBF_IDXFILE_TINDEXPAGE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DBF_IDXFILE_TINDEXPAGE_$__DESTROY
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
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld8
_$DBF_IDXFILE$_Ld8:
	.byte	9
	.ascii	"TIndexTag"

.const_data
	.align 2
.globl	_VMT_DBF_IDXFILE_TINDEXTAG
_VMT_DBF_IDXFILE_TINDEXTAG:
	.long	8,-8
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$DBF_IDXFILE$_Ld8
	.long	0,0
	.long	_$DBF_IDXFILE$_Ld9
	.long	_RTTI_DBF_IDXFILE_TINDEXTAG
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
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld11
_$DBF_IDXFILE$_Ld11:
	.byte	12
	.ascii	"TDbfIndexDef"

.const_data
	.align 2
.globl	_VMT_DBF_IDXFILE_TDBFINDEXDEF
_VMT_DBF_IDXFILE_TDBFINDEXDEF:
	.long	40,-40
	.long	_VMT_CLASSES_TCOLLECTIONITEM
	.long	_$DBF_IDXFILE$_Ld11
	.long	0,0
	.long	_$DBF_IDXFILE$_Ld12
	.long	_RTTI_DBF_IDXFILE_TDBFINDEXDEF
	.long	_INIT_DBF_IDXFILE_TDBFINDEXDEF
	.long	0,0,0
	.long	_DBF_IDXFILE_TDBFINDEXDEF_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TCOLLECTIONITEM_$__GETOWNER$$TPERSISTENT
	.long	_DBF_IDXFILE_TDBFINDEXDEF_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOLLECTIONITEM_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__SETCOLLECTION$TCOLLECTION
	.long	_CLASSES_TCOLLECTIONITEM_$__GETDISPLAYNAME$$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__SETINDEX$LONGINT
	.long	_CLASSES_TCOLLECTIONITEM_$__SETDISPLAYNAME$ANSISTRING
	.long	_DBF_IDXFILE_TDBFINDEXDEF_$__CREATE$TCOLLECTION$$TDBFINDEXDEF
	.long	0

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld14
_$DBF_IDXFILE$_Ld14:
	.byte	15
	.ascii	"TDbfIndexParser"

.const_data
	.align 2
.globl	_VMT_DBF_IDXFILE_TDBFINDEXPARSER
_VMT_DBF_IDXFILE_TDBFINDEXPARSER:
	.long	60,-60
	.long	_VMT_DBF_PARSER_TDBFPARSER
	.long	_$DBF_IDXFILE$_Ld14
	.long	0,0
	.long	_$DBF_IDXFILE$_Ld15
	.long	_RTTI_DBF_IDXFILE_TDBFINDEXPARSER
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DBF_PARSER_TDBFPARSER_$__DESTROY
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
	.long	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKEREC$$PEXPRESSIONREC
	.long	_DBF_PARSER_TDBFPARSER_$__FILLEXPRESSLIST
	.long	_DBF_PARSER_TDBFPARSER_$__HANDLEUNKNOWNVARIABLE$ANSISTRING
	.long	_DBF_PARSER_TDBFPARSER_$__CURRENTEXPRESSION$$ANSISTRING
	.long	_DBF_PARSER_TDBFPARSER_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PARSER_TDBFPARSER_$__CLEAREXPRESSIONS
	.long	_DBF_IDXFILE_TDBFINDEXPARSER_$__VALIDATEEXPRESSION$ANSISTRING
	.long	_DBF_PARSER_TDBFPARSER_$__PARSEEXPRESSION$ANSISTRING
	.long	_DBF_PARSER_TDBFPARSER_$__EXTRACTFROMBUFFER$PCHAR$$PCHAR
	.long	0

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld17
_$DBF_IDXFILE$_Ld17:
	.byte	10
	.ascii	"TIndexFile"

.const_data
	.align 2
.globl	_VMT_DBF_IDXFILE_TINDEXFILE
_VMT_DBF_IDXFILE_TINDEXFILE:
	.long	1340,-1340
	.long	_VMT_DBF_PGFILE_TPAGEDFILE
	.long	_$DBF_IDXFILE$_Ld17
	.long	0,0
	.long	_$DBF_IDXFILE$_Ld18
	.long	_RTTI_DBF_IDXFILE_TINDEXFILE
	.long	_INIT_DBF_IDXFILE_TINDEXFILE
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DBF_IDXFILE_TINDEXFILE_$__DESTROY
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
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETHEADEROFFSET$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETRECORDSIZE$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETHEADERSIZE$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETPAGEOFFSETBYHEADER$BOOLEAN
	.long	_DBF_PGFILE_TPAGEDFILE_$__LOCKSECTION$LONGWORD$LONGWORD$BOOLEAN$$BOOLEAN
	.long	_DBF_PGFILE_TPAGEDFILE_$__UNLOCKSECTION$LONGWORD$LONGWORD$$BOOLEAN
	.long	_DBF_PGFILE_TPAGEDFILE_$__CLOSEFILE
	.long	_DBF_PGFILE_TPAGEDFILE_$__OPENFILE
	.long	_DBF_PGFILE_TPAGEDFILE_$__TRYEXCLUSIVE
	.long	_DBF_PGFILE_TPAGEDFILE_$__ENDEXCLUSIVE
	.long	_DBF_PGFILE_TPAGEDFILE_$__READRECORD$LONGINT$POINTER$$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__WRITERECORD$LONGINT$POINTER
	.long	_DBF_IDXFILE_TINDEXFILE_$__WRITEHEADER
	.long	_DBF_IDXFILE_TINDEXFILE_$__FLUSH
	.long	0

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld20
_$DBF_IDXFILE$_Ld20:
	.byte	9
	.ascii	"TLCIDList"

.const_data
	.align 2
.globl	_VMT_DBF_IDXFILE_TLCIDLIST
_VMT_DBF_IDXFILE_TLCIDLIST:
	.long	16,-16
	.long	_VMT_CLASSES_TLIST
	.long	_$DBF_IDXFILE$_Ld20
	.long	0,0
	.long	_$DBF_IDXFILE$_Ld21
	.long	_RTTI_DBF_IDXFILE_TLCIDLIST
	.long	0,0,0,0
	.long	_CLASSES_TLIST_$__DESTROY
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
	.long	_CLASSES_TLIST_$__GROW
	.long	_CLASSES_TLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION
	.long	_CLASSES_TLIST_$__CLEAR
	.long	_CLASSES_TLIST_$__ERROR$ANSISTRING$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld23
_$DBF_IDXFILE$_Ld23:
	.byte	8
	.ascii	"TMdxPage"

.const_data
	.align 2
.globl	_VMT_DBF_IDXFILE_TMDXPAGE
_VMT_DBF_IDXFILE_TMDXPAGE:
	.long	76,-76
	.long	_VMT_DBF_IDXFILE_TINDEXPAGE
	.long	_$DBF_IDXFILE$_Ld23
	.long	0,0
	.long	_$DBF_IDXFILE$_Ld24
	.long	_RTTI_DBF_IDXFILE_TMDXPAGE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DBF_IDXFILE_TINDEXPAGE_$__DESTROY
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
	.long	_DBF_IDXFILE_TMDXPAGE_$__GETENTRY$LONGINT$$POINTER
	.long	_DBF_IDXFILE_TMDXPAGE_$__GETLOWERPAGENO$$LONGINT
	.long	_DBF_IDXFILE_TMDXPAGE_$__GETKEYDATA$$PCHAR
	.long	_DBF_IDXFILE_TMDXPAGE_$__GETNUMENTRIES$$LONGINT
	.long	_DBF_IDXFILE_TMDXPAGE_$__GETKEYDATAFROMENTRY$LONGINT$$PCHAR
	.long	_DBF_IDXFILE_TMDXPAGE_$__GETRECNO$$LONGINT
	.long	_DBF_IDXFILE_TMDXPAGE_$__GETISINNERNODE$$BOOLEAN
	.long	_DBF_IDXFILE_TMDXPAGE_$__INCNUMENTRIES
	.long	_DBF_IDXFILE_TMDXPAGE_$__SETNUMENTRIES$LONGINT
	.long	_DBF_IDXFILE_TMDXPAGE_$__SETRECLOWERPAGENO$LONGINT$LONGINT
	.long	_DBF_IDXFILE_TMDXPAGE_$__SETRECLOWERPAGENOOFENTRY$LONGINT$LONGINT$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld26
_$DBF_IDXFILE$_Ld26:
	.byte	8
	.ascii	"TNdxPage"

.const_data
	.align 2
.globl	_VMT_DBF_IDXFILE_TNDXPAGE
_VMT_DBF_IDXFILE_TNDXPAGE:
	.long	76,-76
	.long	_VMT_DBF_IDXFILE_TINDEXPAGE
	.long	_$DBF_IDXFILE$_Ld26
	.long	0,0
	.long	_$DBF_IDXFILE$_Ld27
	.long	_RTTI_DBF_IDXFILE_TNDXPAGE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DBF_IDXFILE_TINDEXPAGE_$__DESTROY
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
	.long	_DBF_IDXFILE_TNDXPAGE_$__GETENTRY$LONGINT$$POINTER
	.long	_DBF_IDXFILE_TNDXPAGE_$__GETLOWERPAGENO$$LONGINT
	.long	_DBF_IDXFILE_TNDXPAGE_$__GETKEYDATA$$PCHAR
	.long	_DBF_IDXFILE_TNDXPAGE_$__GETNUMENTRIES$$LONGINT
	.long	_DBF_IDXFILE_TNDXPAGE_$__GETKEYDATAFROMENTRY$LONGINT$$PCHAR
	.long	_DBF_IDXFILE_TNDXPAGE_$__GETRECNO$$LONGINT
	.long	_DBF_IDXFILE_TNDXPAGE_$__GETISINNERNODE$$BOOLEAN
	.long	_DBF_IDXFILE_TNDXPAGE_$__INCNUMENTRIES
	.long	_DBF_IDXFILE_TNDXPAGE_$__SETNUMENTRIES$LONGINT
	.long	_DBF_IDXFILE_TNDXPAGE_$__SETRECLOWERPAGENO$LONGINT$LONGINT
	.long	_DBF_IDXFILE_TNDXPAGE_$__SETRECLOWERPAGENOOFENTRY$LONGINT$LONGINT$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld29
_$DBF_IDXFILE$_Ld29:
	.byte	8
	.ascii	"TMdx4Tag"

.const_data
	.align 2
.globl	_VMT_DBF_IDXFILE_TMDX4TAG
_VMT_DBF_IDXFILE_TMDX4TAG:
	.long	8,-8
	.long	_VMT_DBF_IDXFILE_TINDEXTAG
	.long	_$DBF_IDXFILE$_Ld29
	.long	0,0
	.long	_$DBF_IDXFILE$_Ld30
	.long	_RTTI_DBF_IDXFILE_TMDX4TAG
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
	.long	_DBF_IDXFILE_TMDX4TAG_$__GETHEADERPAGENO$$LONGINT
	.long	_DBF_IDXFILE_TMDX4TAG_$__GETTAGNAME$$ANSISTRING
	.long	_DBF_IDXFILE_TMDX4TAG_$__GETKEYFORMAT$$BYTE
	.long	_DBF_IDXFILE_TMDX4TAG_$__GETFORWARDTAG1$$BYTE
	.long	_DBF_IDXFILE_TMDX4TAG_$__GETFORWARDTAG2$$BYTE
	.long	_DBF_IDXFILE_TMDX4TAG_$__GETBACKWARDTAG$$BYTE
	.long	_DBF_IDXFILE_TMDX4TAG_$__GETRESERVED$$BYTE
	.long	_DBF_IDXFILE_TMDX4TAG_$__GETKEYTYPE$$CHAR
	.long	_DBF_IDXFILE_TMDX4TAG_$__SETHEADERPAGENO$LONGINT
	.long	_DBF_IDXFILE_TMDX4TAG_$__SETTAGNAME$ANSISTRING
	.long	_DBF_IDXFILE_TMDX4TAG_$__SETKEYFORMAT$BYTE
	.long	_DBF_IDXFILE_TMDX4TAG_$__SETFORWARDTAG1$BYTE
	.long	_DBF_IDXFILE_TMDX4TAG_$__SETFORWARDTAG2$BYTE
	.long	_DBF_IDXFILE_TMDX4TAG_$__SETBACKWARDTAG$BYTE
	.long	_DBF_IDXFILE_TMDX4TAG_$__SETRESERVED$BYTE
	.long	_DBF_IDXFILE_TMDX4TAG_$__SETKEYTYPE$CHAR
	.long	0

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld32
_$DBF_IDXFILE$_Ld32:
	.byte	8
	.ascii	"TMdx7Tag"

.const_data
	.align 2
.globl	_VMT_DBF_IDXFILE_TMDX7TAG
_VMT_DBF_IDXFILE_TMDX7TAG:
	.long	8,-8
	.long	_VMT_DBF_IDXFILE_TINDEXTAG
	.long	_$DBF_IDXFILE$_Ld32
	.long	0,0
	.long	_$DBF_IDXFILE$_Ld33
	.long	_RTTI_DBF_IDXFILE_TMDX7TAG
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
	.long	_DBF_IDXFILE_TMDX7TAG_$__GETHEADERPAGENO$$LONGINT
	.long	_DBF_IDXFILE_TMDX7TAG_$__GETTAGNAME$$ANSISTRING
	.long	_DBF_IDXFILE_TMDX7TAG_$__GETKEYFORMAT$$BYTE
	.long	_DBF_IDXFILE_TMDX7TAG_$__GETFORWARDTAG1$$BYTE
	.long	_DBF_IDXFILE_TMDX7TAG_$__GETFORWARDTAG2$$BYTE
	.long	_DBF_IDXFILE_TMDX7TAG_$__GETBACKWARDTAG$$BYTE
	.long	_DBF_IDXFILE_TMDX7TAG_$__GETRESERVED$$BYTE
	.long	_DBF_IDXFILE_TMDX7TAG_$__GETKEYTYPE$$CHAR
	.long	_DBF_IDXFILE_TMDX7TAG_$__SETHEADERPAGENO$LONGINT
	.long	_DBF_IDXFILE_TMDX7TAG_$__SETTAGNAME$ANSISTRING
	.long	_DBF_IDXFILE_TMDX7TAG_$__SETKEYFORMAT$BYTE
	.long	_DBF_IDXFILE_TMDX7TAG_$__SETFORWARDTAG1$BYTE
	.long	_DBF_IDXFILE_TMDX7TAG_$__SETFORWARDTAG2$BYTE
	.long	_DBF_IDXFILE_TMDX7TAG_$__SETBACKWARDTAG$BYTE
	.long	_DBF_IDXFILE_TMDX7TAG_$__SETRESERVED$BYTE
	.long	_DBF_IDXFILE_TMDX7TAG_$__SETKEYTYPE$CHAR
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_DBF_IDXFILE
_THREADVARLIST_DBF_IDXFILE:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld2
_$DBF_IDXFILE$_Ld2:
	.short	0,1
	.long	0,-1,1
.reference _$DBF_IDXFILE$_Ld1
.globl	_$DBF_IDXFILE$_Ld1
_$DBF_IDXFILE$_Ld1:
.reference _$DBF_IDXFILE$_Ld2
	.ascii	"$\000"

.data
	.align 2
.globl	_TC_DBF_IDXFILE_TDBFINDEXPARSER_$_VALIDATEEXPRESSION$ANSISTRING_ANSISTRFUNCS
_TC_DBF_IDXFILE_TDBFINDEXPARSER_$_VALIDATEEXPRESSION$ANSISTRING_ANSISTRFUNCS:
	.long	_DBF_PRSCORE_FUNCUPPERCASE$PEXPRESSIONREC
	.long	_DBF_PRSCORE_FUNCLOWERCASE$PEXPRESSIONREC
	.long	_DBF_PRSCORE_FUNCSTRI_EQ$PEXPRESSIONREC
	.long	_DBF_PRSCORE_FUNCSTRIP_EQ$PEXPRESSIONREC
	.long	_DBF_PRSCORE_FUNCSTRI_NEQ$PEXPRESSIONREC
	.long	_DBF_PRSCORE_FUNCSTRI_LT$PEXPRESSIONREC
	.long	_DBF_PRSCORE_FUNCSTRI_GT$PEXPRESSIONREC
	.long	_DBF_PRSCORE_FUNCSTRI_LTE$PEXPRESSIONREC
	.long	_DBF_PRSCORE_FUNCSTRI_GTE$PEXPRESSIONREC
	.long	_DBF_PRSCORE_FUNCSTRP_EQ$PEXPRESSIONREC
	.long	_DBF_PRSCORE_FUNCSTR_LT$PEXPRESSIONREC
	.long	_DBF_PRSCORE_FUNCSTR_GT$PEXPRESSIONREC
	.long	_DBF_PRSCORE_FUNCSTR_LTE$PEXPRESSIONREC
	.long	_DBF_PRSCORE_FUNCSTR_GTE$PEXPRESSIONREC

.data
.globl	_TC_DBF_IDXFILE_TDBFINDEXPARSER_$_VALIDATEEXPRESSION$ANSISTRING_ANSIFUNCSTOMODE
_TC_DBF_IDXFILE_TDBFINDEXPARSER_$_VALIDATEEXPRESSION$ANSISTRING_ANSIFUNCSTOMODE:
	.byte	0,1

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld4
_$DBF_IDXFILE$_Ld4:
	.short	0,1
	.long	0,-1,4
.reference _$DBF_IDXFILE$_Ld3
.globl	_$DBF_IDXFILE$_Ld3
_$DBF_IDXFILE$_Ld3:
.reference _$DBF_IDXFILE$_Ld4
	.ascii	".MDX\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub:
.indirect_symbol _DBF_COMMON_SWAPWORDLE$WORD$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub:
.indirect_symbol _DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_pchar_to_ansistr$stub:
.indirect_symbol fpc_pchar_to_ansistr
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

L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_STRTOINT$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__ADD$POINTER$$LONGINT
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

L_CLASSES_TLIST_$__CREATE$$TLIST$stub:
.indirect_symbol _CLASSES_TLIST_$__CREATE$$TLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_POPSECONDOBJECTSTACK$stub:
.indirect_symbol FPC_POPSECONDOBJECTSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DESTROYEXCEPTION$stub:
.indirect_symbol FPC_DESTROYEXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_POPOBJECTSTACK$stub:
.indirect_symbol FPC_POPOBJECTSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_WTIL_ENUMSYSTEMLOCALES$POINTER$LONGWORD$$LONGBOOL$stub:
.indirect_symbol _DBF_WTIL_ENUMSYSTEMLOCALES$POINTER$LONGWORD$$LONGBOOL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__CLEAR$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__CLEAR
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

L_DBF_IDXFILE_TINDEXPAGE_$__WRITEPAGE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__WRITEPAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_FREEMEMANDNIL$POINTER$stub:
.indirect_symbol _DBF_COMMON_FREEMEMANDNIL$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__DESTROY$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_FREEANDNIL$formal$stub:
.indirect_symbol _DBF_COMMON_FREEANDNIL$formal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__GETNEWPAGENO$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__GETNEWPAGENO$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__LOCKPAGE$LONGINT$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__LOCKPAGE$LONGINT$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__LOCKPAGE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__LOCKPAGE
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

L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRY$LONGINT$PCHAR$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__SETENTRY$LONGINT$PCHAR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__UNLOCKPAGE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__UNLOCKPAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__SETENTRYNO$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$_LOCALDELETE_ISONLYENTRY$TINDEXPAGE$$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$_LOCALDELETE_ISONLYENTRY$TINDEXPAGE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__LOCALDELETE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__LOCALDELETE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__SYNCLOWERPAGE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__SYNCLOWERPAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEY$PCHAR$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__COMPAREKEY$PCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__MATCHKEY$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__MATCHKEY$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__ADDNEWLEVEL$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__ADDNEWLEVEL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__CREATE$TINDEXFILE$$TINDEXPAGE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__CREATE$TINDEXFILE$$TINDEXPAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__GETNEWPAGE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__GETNEWPAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__LOCALINSERT$LONGINT$PCHAR$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__LOCALINSERT$LONGINT$PCHAR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__UNLOCKHEADER$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__UNLOCKHEADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__FLUSH$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__FLUSH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__RECALCWEIGHT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__RECALCWEIGHT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__UPDATEWEIGHT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__UPDATEWEIGHT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__UPDATEBOUNDS$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__UPDATEBOUNDS$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__SETUPPERPAGE$TINDEXPAGE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__SETUPPERPAGE$TINDEXPAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__SETPAGENO$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__SETPAGENO$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__RECURLAST$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__RECURLAST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__RECURPREV$$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__RECURPREV$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__RECURFIRST$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__RECURFIRST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__RECURNEXT$$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__RECURNEXT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_INCINTLE$LONGINT$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_INCINTLE$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_chararray_to_ansistr$stub:
.indirect_symbol fpc_chararray_to_ansistr
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

L_SYSUTILS_STRPLCOPY$PCHAR$ANSISTRING$LONGWORD$$PCHAR$stub:
.indirect_symbol _SYSUTILS_STRPLCOPY$PCHAR$ANSISTRING$LONGWORD$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PARSER_TDBFPARSER_$__SETSTRINGFIELDMODE$TSTRINGFIELDMODE$stub:
.indirect_symbol _DBF_PARSER_TDBFPARSER_$__SETSTRINGFIELDMODE$TSTRINGFIELDMODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PARSER_TDBFPARSER_$__GETRESULTLEN$$LONGINT$stub:
.indirect_symbol _DBF_PARSER_TDBFPARSER_$__GETRESULTLEN$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__INITRECORD$PCHAR$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__INITRECORD$PCHAR
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

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_RAISEEXCEPTION$stub:
.indirect_symbol FPC_RAISEEXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__CREATE$$TPAGEDFILE$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__CREATE$$TPAGEDFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__SELECTINDEXVARS$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__CLOSE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__CLOSE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__DESTROY$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__DESTROY
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

L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_compare_equal$stub:
.indirect_symbol fpc_ansistr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__SETPAGESIZE$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__SETPAGESIZE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__FILECREATED$$BOOLEAN$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__FILECREATED$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PARSER_TDBFPARSER_$__CREATE$POINTER$$TDBFPARSER$stub:
.indirect_symbol _DBF_PARSER_TDBFPARSER_$__CREATE$POINTER$$TDBFPARSER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__CLEAR$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__GETDBFLANGUAGEID$$BYTE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__GETDBFLANGUAGEID$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COLLATE_GETCOLLATIONTABLE$LONGINT$$PCOLLATIONTABLE$stub:
.indirect_symbol _DBF_COLLATE_GETCOLLATIONTABLE$LONGINT$$PCOLLATIONTABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__INDEXOF$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__INDEXOF$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__READINDEXES$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__READINDEXES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__SETUPDATEMODE$TINDEXUPDATEMODE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__SETUPDATEMODE$TINDEXUPDATEMODE
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

L_DBF_IDXFILE_TINDEXFILE_$__CLEARINDEX$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__CLEARINDEX
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

L_SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_setlength$stub:
.indirect_symbol fpc_ansistr_setlength
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

L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub:
.indirect_symbol _SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_WRITEDBFILENAME$PMDXHDR$ANSISTRING$stub:
.indirect_symbol _DBF_IDXFILE_WRITEDBFILENAME$PMDXHDR$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__TOUCHHEADER$POINTER$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__TOUCHHEADER$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__WRITEFILEHEADER$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__WRITEFILEHEADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__CLEARROOTS$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__CLEARROOTS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__SETRECORDCOUNT$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__SETRECORDCOUNT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__MODIFIED$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__MODIFIED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__CHECKEXCLUSIVEACCESS$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__CHECKEXCLUSIVEACCESS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__CALCTAGOFFSET$LONGINT$$POINTER$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__CALCTAGOFFSET$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_INCWORDLE$WORD$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_INCWORDLE$WORD$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__CALCKEYPROPERTIES$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__CALCKEYPROPERTIES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__UPDATEINDEXPROPERTIES$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__UPDATEINDEXPROPERTIES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__READHEADER$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__READHEADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$_READINDEXES_CHECKHEADERINTEGRITY$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$_READINDEXES_CHECKHEADERINTEGRITY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__DELETEFILE$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__DELETEFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__INDEXOF$ANSISTRING$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__INDEXOF$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_FINDNEXTNAME$ANSISTRING$ANSISTRING$LONGINT$stub:
.indirect_symbol _DBF_COMMON_FINDNEXTNAME$ANSISTRING$ANSISTRING$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__SETFILENAME$ANSISTRING$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__SETFILENAME$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__CREATETEMPFILE$ANSISTRING$$TPAGEDFILE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__CREATETEMPFILE$ANSISTRING$$TPAGEDFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$_REPAGEFILE_COPYSELECTEDINDEX$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$_REPAGEFILE_COPYSELECTEDINDEX
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_RENAMEFILE$ANSISTRING$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_RENAMEFILE$ANSISTRING$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__DISABLEFORCECREATE$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__DISABLEFORCECREATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$_REPAGEFILE_ALLOCNEWPAGENO$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$_REPAGEFILE_ALLOCNEWPAGENO$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$_REPAGEFILE_WRITETREE$TINDEXPAGE$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$_REPAGEFILE_WRITETREE$TINDEXPAGE$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_COPYSELECTEDINDEX$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_COPYSELECTEDINDEX
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_ALLOCNEWPAGENO$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_ALLOCNEWPAGENO$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_CREATENEWPAGE$$TINDEXPAGE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_CREATENEWPAGE$$TINDEXPAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_GETNEWENTRY$TINDEXPAGE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$_COMPACTFILE_GETNEWENTRY$TINDEXPAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__PHYSICALRECNO$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__PHYSICALRECNO$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__GOTOINSERTENTRY$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__GOTOINSERTENTRY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__INSERTKEY$PCHAR$$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__INSERTKEY$PCHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__DELETEKEY$PCHAR$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__DELETEKEY$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__RESYNCRANGE$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__RESYNCRANGE$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__EXTRACTKEYFROMBUFFER$PCHAR$$PCHAR$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__EXTRACTKEYFROMBUFFER$PCHAR$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__FINDKEY$BOOLEAN$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__FINDKEY$BOOLEAN$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSSUPP_GETSTRFROMINT$LONGINT$PCHAR$$LONGINT$stub:
.indirect_symbol _DBF_PRSSUPP_GETSTRFROMINT$LONGINT$PCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSSUPP_GETSTRFROMINT64$INT64$PCHAR$$LONGINT$stub:
.indirect_symbol _DBF_PRSSUPP_GETSTRFROMINT64$INT64$PCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FLOATTODECIMAL$TFLOATREC$EXTENDED$LONGINT$LONGINT$stub:
.indirect_symbol _SYSUTILS_FLOATTODECIMAL$TFLOATREC$EXTENDED$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__PREPAREKEY$PCHAR$TEXPRESSIONTYPE$$PCHAR$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__PREPAREKEY$PCHAR$TEXPRESSIONTYPE$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__GETKEYLEN$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__GETKEYLEN$$LONGINT
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

L_DBF_COMMON_TRANSLATESTRING$LONGWORD$LONGWORD$PCHAR$PCHAR$LONGINT$$LONGINT$stub:
.indirect_symbol _DBF_COMMON_TRANSLATESTRING$LONGWORD$LONGWORD$PCHAR$PCHAR$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__INSERTCURRENT$$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__INSERTCURRENT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__RESETRANGE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__RESETRANGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__CONSTRUCTINSERTERRORMSG$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__CONSTRUCTINSERTERRORMSG
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__GETNAME$$ANSISTRING$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__GETNAME$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__GETPHYSICALRECNO$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__GETPHYSICALRECNO$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TRIMRIGHT$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_TRIMRIGHT$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__DELETECURRENT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__DELETECURRENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__DELETE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__DELETE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__UPDATECURRENT$PCHAR$PCHAR$$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__UPDATECURRENT$PCHAR$PCHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__UPDATEINDEX$LONGINT$PCHAR$PCHAR$$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__UPDATEINDEX$LONGINT$PCHAR$PCHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYS$PCHAR$PCHAR$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYS$PCHAR$PCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__READRECORD$LONGINT$POINTER$$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__READRECORD$LONGINT$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__GETSEQUENTIALRECNO$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__GETSEQUENTIALRECNO$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__FIND$LONGINT$PCHAR$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__FIND$LONGINT$PCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__WALKNEXT$$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__WALKNEXT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__MATCHKEY$PCHAR$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__MATCHKEY$PCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__SETSEQUENTIALRECNO$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__SETSEQUENTIALRECNO$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__RESYNCROOT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__RESYNCROOT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__FINDNEAREST$LONGINT$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__FINDNEAREST$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__SPLIT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__SPLIT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__DELETE$LONGINT$PCHAR$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__DELETE$LONGINT$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__INSERT$LONGINT$PCHAR$$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__INSERT$LONGINT$PCHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__ISRECORDPRESENT$LONGINT$$BOOLEAN$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__ISRECORDPRESENT$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__RESYNC$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__RESYNC$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__WALKFIRST$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__WALKFIRST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__WALKLAST$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__WALKLAST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__SEARCHKEY$PCHAR$TSEARCHKEYTYPE$$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__SEARCHKEY$PCHAR$TSEARCHKEYTYPE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__SETBRACKETLOW$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__SETBRACKETLOW
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__WALKPREV$$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__WALKPREV$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__SETBRACKETHIGH$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__SETBRACKETHIGH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__RESYNCTREE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__RESYNCTREE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__SETPHYSICALRECNO$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__SETPHYSICALRECNO$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__SETLOWPAGE$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__SETLOWPAGE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__SETHIGHPAGE$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__SETHIGHPAGE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__SAVEBRACKET$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__SAVEBRACKET
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__CANCELRANGE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__CANCELRANGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXPAGE_$__RESTOREBRACKET$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXPAGE_$__RESTOREBRACKET
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_MEMCOMP$POINTER$POINTER$LONGINT$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_MEMCOMP$POINTER$POINTER$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COLLATE_DBFCOMPARESTRING$PCOLLATIONTABLE$PCHAR$LONGINT$PCHAR$LONGINT$$LONGINT$stub:
.indirect_symbol _DBF_COLLATE_DBFCOMPARESTRING$PCOLLATIONTABLE$PCHAR$LONGINT$PCHAR$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__DISABLERANGE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__DISABLERANGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__ENABLERANGE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__ENABLERANGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__WRITEINDEXHEADER$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__WRITEINDEXHEADER$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__FLUSHHEADER$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__FLUSHHEADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__FLUSH$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__FLUSH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__SETINDEXNAME$ANSISTRING$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__SETINDEXNAME$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TDBFINDEXDEF_$__SETINDEXNAME$ANSISTRING$stub:
.indirect_symbol _DBF_IDXFILE_TDBFINDEXDEF_$__SETINDEXNAME$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TDBFINDEXDEF_$__SETEXPRESSION$ANSISTRING$stub:
.indirect_symbol _DBF_IDXFILE_TDBFINDEXDEF_$__SETEXPRESSION$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__GETLANGUAGESTR$$ANSISTRING$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__GETLANGUAGESTR$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_LANG_GETLANGID_FROM_LANGNAME$ANSISTRING$$BYTE$stub:
.indirect_symbol _DBF_LANG_GETLANGID_FROM_LANGNAME$ANSISTRING$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__GETLANGUAGEID$$LONGINT$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__GETLANGUAGEID$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__WRITEHEADER$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__WRITEHEADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTIONITEM_$__CREATE$TCOLLECTION$$TCOLLECTIONITEM$stub:
.indirect_symbol _CLASSES_TCOLLECTIONITEM_$__CREATE$TCOLLECTION$$TCOLLECTIONITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTIONITEM_$__DESTROY$stub:
.indirect_symbol _CLASSES_TCOLLECTIONITEM_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_do_is$stub:
.indirect_symbol fpc_do_is
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT$stub:
.indirect_symbol _CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_TRIM$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TLCIDLIST_$__CREATE$$TLCIDLIST$stub:
.indirect_symbol _DBF_IDXFILE_TLCIDLIST_$__CREATE$$TLCIDLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TLCIDLIST_$__ENUMERATE$stub:
.indirect_symbol _DBF_IDXFILE_TLCIDLIST_$__ENUMERATE
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
.globl	_$DBF_IDXFILE$_Ld6
_$DBF_IDXFILE$_Ld6:
	.short	0
	.long	_$DBF_IDXFILE$_Ld7
	.align 2
.globl	_$DBF_IDXFILE$_Ld7
_$DBF_IDXFILE$_Ld7:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_IDXFILE_TINDEXPAGE
_INIT_DBF_IDXFILE_TINDEXPAGE:
	.byte	15,10
	.ascii	"TIndexPage"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TINDEXPAGE
_RTTI_DBF_IDXFILE_TINDEXPAGE:
	.byte	15,10
	.ascii	"TIndexPage"
	.long	_VMT_DBF_IDXFILE_TINDEXPAGE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	11
	.ascii	"dbf_idxfile"
	.short	0

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld9
_$DBF_IDXFILE$_Ld9:
	.short	0
	.long	_$DBF_IDXFILE$_Ld10
	.align 2
.globl	_$DBF_IDXFILE$_Ld10
_$DBF_IDXFILE$_Ld10:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_IDXFILE_TINDEXTAG
_INIT_DBF_IDXFILE_TINDEXTAG:
	.byte	15,9
	.ascii	"TIndexTag"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TINDEXTAG
_RTTI_DBF_IDXFILE_TINDEXTAG:
	.byte	15,9
	.ascii	"TIndexTag"
	.long	_VMT_DBF_IDXFILE_TINDEXTAG
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	11
	.ascii	"dbf_idxfile"
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_IDXFILE_TINDEXUPDATEMODE
_INIT_DBF_IDXFILE_TINDEXUPDATEMODE:
	.byte	3,16
	.ascii	"TIndexUpdateMode"
	.byte	1
	.long	0,1,0
	.byte	5
	.ascii	"umAll"
	.byte	9
	.ascii	"umCurrent"
	.byte	11
	.ascii	"dbf_idxfile"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TINDEXUPDATEMODE
_RTTI_DBF_IDXFILE_TINDEXUPDATEMODE:
	.byte	3,16
	.ascii	"TIndexUpdateMode"
	.byte	1
	.long	0,1,0
	.byte	5
	.ascii	"umAll"
	.byte	9
	.ascii	"umCurrent"
	.byte	11
	.ascii	"dbf_idxfile"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TINDEXUPDATEMODE_s2o
_RTTI_DBF_IDXFILE_TINDEXUPDATEMODE_s2o:
	.long	2,0
	.long	_RTTI_DBF_IDXFILE_TINDEXUPDATEMODE+31
	.long	1
	.long	_RTTI_DBF_IDXFILE_TINDEXUPDATEMODE+37

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TINDEXUPDATEMODE_o2s
_RTTI_DBF_IDXFILE_TINDEXUPDATEMODE_o2s:
	.long	0
	.long	_RTTI_DBF_IDXFILE_TINDEXUPDATEMODE+31
	.long	_RTTI_DBF_IDXFILE_TINDEXUPDATEMODE+37

.const_data
	.align 2
.globl	_INIT_DBF_IDXFILE_TLOCALEERROR
_INIT_DBF_IDXFILE_TLOCALEERROR:
	.byte	3,12
	.ascii	"TLocaleError"
	.byte	1
	.long	0,3,0
	.byte	6
	.ascii	"leNone"
	.byte	9
	.ascii	"leUnknown"
	.byte	20
	.ascii	"leTableIndexMismatch"
	.byte	14
	.ascii	"leNotAvailable"
	.byte	11
	.ascii	"dbf_idxfile"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TLOCALEERROR
_RTTI_DBF_IDXFILE_TLOCALEERROR:
	.byte	3,12
	.ascii	"TLocaleError"
	.byte	1
	.long	0,3,0
	.byte	6
	.ascii	"leNone"
	.byte	9
	.ascii	"leUnknown"
	.byte	20
	.ascii	"leTableIndexMismatch"
	.byte	14
	.ascii	"leNotAvailable"
	.byte	11
	.ascii	"dbf_idxfile"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TLOCALEERROR_s2o
_RTTI_DBF_IDXFILE_TLOCALEERROR_s2o:
	.long	4,0
	.long	_RTTI_DBF_IDXFILE_TLOCALEERROR+27
	.long	3
	.long	_RTTI_DBF_IDXFILE_TLOCALEERROR+65
	.long	2
	.long	_RTTI_DBF_IDXFILE_TLOCALEERROR+44
	.long	1
	.long	_RTTI_DBF_IDXFILE_TLOCALEERROR+34

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TLOCALEERROR_o2s
_RTTI_DBF_IDXFILE_TLOCALEERROR_o2s:
	.long	0
	.long	_RTTI_DBF_IDXFILE_TLOCALEERROR+27
	.long	_RTTI_DBF_IDXFILE_TLOCALEERROR+34
	.long	_RTTI_DBF_IDXFILE_TLOCALEERROR+44
	.long	_RTTI_DBF_IDXFILE_TLOCALEERROR+65

.const_data
	.align 2
.globl	_INIT_DBF_IDXFILE_TLOCALESOLUTION
_INIT_DBF_IDXFILE_TLOCALESOLUTION:
	.byte	3,15
	.ascii	"TLocaleSolution"
	.byte	1
	.long	0,2,0
	.byte	9
	.ascii	"lsNotOpen"
	.byte	8
	.ascii	"lsNoEdit"
	.byte	8
	.ascii	"lsBinary"
	.byte	11
	.ascii	"dbf_idxfile"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TLOCALESOLUTION
_RTTI_DBF_IDXFILE_TLOCALESOLUTION:
	.byte	3,15
	.ascii	"TLocaleSolution"
	.byte	1
	.long	0,2,0
	.byte	9
	.ascii	"lsNotOpen"
	.byte	8
	.ascii	"lsNoEdit"
	.byte	8
	.ascii	"lsBinary"
	.byte	11
	.ascii	"dbf_idxfile"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TLOCALESOLUTION_s2o
_RTTI_DBF_IDXFILE_TLOCALESOLUTION_s2o:
	.long	3,2
	.long	_RTTI_DBF_IDXFILE_TLOCALESOLUTION+49
	.long	1
	.long	_RTTI_DBF_IDXFILE_TLOCALESOLUTION+40
	.long	0
	.long	_RTTI_DBF_IDXFILE_TLOCALESOLUTION+30

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TLOCALESOLUTION_o2s
_RTTI_DBF_IDXFILE_TLOCALESOLUTION_o2s:
	.long	0
	.long	_RTTI_DBF_IDXFILE_TLOCALESOLUTION+30
	.long	_RTTI_DBF_IDXFILE_TLOCALESOLUTION+40
	.long	_RTTI_DBF_IDXFILE_TLOCALESOLUTION+49

.const_data
	.align 2
.globl	_INIT_DBF_IDXFILE_TINDEXUNIQUETYPE
_INIT_DBF_IDXFILE_TINDEXUNIQUETYPE:
	.byte	3,16
	.ascii	"TIndexUniqueType"
	.byte	1
	.long	0,2,0
	.byte	8
	.ascii	"iuNormal"
	.byte	8
	.ascii	"iuUnique"
	.byte	10
	.ascii	"iuDistinct"
	.byte	11
	.ascii	"dbf_idxfile"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TINDEXUNIQUETYPE
_RTTI_DBF_IDXFILE_TINDEXUNIQUETYPE:
	.byte	3,16
	.ascii	"TIndexUniqueType"
	.byte	1
	.long	0,2,0
	.byte	8
	.ascii	"iuNormal"
	.byte	8
	.ascii	"iuUnique"
	.byte	10
	.ascii	"iuDistinct"
	.byte	11
	.ascii	"dbf_idxfile"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TINDEXUNIQUETYPE_s2o
_RTTI_DBF_IDXFILE_TINDEXUNIQUETYPE_s2o:
	.long	3,2
	.long	_RTTI_DBF_IDXFILE_TINDEXUNIQUETYPE+49
	.long	0
	.long	_RTTI_DBF_IDXFILE_TINDEXUNIQUETYPE+31
	.long	1
	.long	_RTTI_DBF_IDXFILE_TINDEXUNIQUETYPE+40

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TINDEXUNIQUETYPE_o2s
_RTTI_DBF_IDXFILE_TINDEXUNIQUETYPE_o2s:
	.long	0
	.long	_RTTI_DBF_IDXFILE_TINDEXUNIQUETYPE+31
	.long	_RTTI_DBF_IDXFILE_TINDEXUNIQUETYPE+40
	.long	_RTTI_DBF_IDXFILE_TINDEXUNIQUETYPE+49

.const_data
	.align 2
.globl	_INIT_DBF_IDXFILE_TINDEXMODIFYMODE
_INIT_DBF_IDXFILE_TINDEXMODIFYMODE:
	.byte	3,16
	.ascii	"TIndexModifyMode"
	.byte	1
	.long	0,1,0
	.byte	8
	.ascii	"mmNormal"
	.byte	14
	.ascii	"mmDeleteRecall"
	.byte	11
	.ascii	"dbf_idxfile"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TINDEXMODIFYMODE
_RTTI_DBF_IDXFILE_TINDEXMODIFYMODE:
	.byte	3,16
	.ascii	"TIndexModifyMode"
	.byte	1
	.long	0,1,0
	.byte	8
	.ascii	"mmNormal"
	.byte	14
	.ascii	"mmDeleteRecall"
	.byte	11
	.ascii	"dbf_idxfile"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TINDEXMODIFYMODE_s2o
_RTTI_DBF_IDXFILE_TINDEXMODIFYMODE_s2o:
	.long	2,1
	.long	_RTTI_DBF_IDXFILE_TINDEXMODIFYMODE+40
	.long	0
	.long	_RTTI_DBF_IDXFILE_TINDEXMODIFYMODE+31

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TINDEXMODIFYMODE_o2s
_RTTI_DBF_IDXFILE_TINDEXMODIFYMODE_o2s:
	.long	0
	.long	_RTTI_DBF_IDXFILE_TINDEXMODIFYMODE+31
	.long	_RTTI_DBF_IDXFILE_TINDEXMODIFYMODE+40

.const_data
	.align 2
.globl	_INIT_DBF_IDXFILE_TDBFLOCALEERROREVENT
_INIT_DBF_IDXFILE_TDBFLOCALEERROREVENT:
	.byte	6,20
	.ascii	"TDbfLocaleErrorEvent"
	.byte	0,2,1,5
	.ascii	"Error"
	.ascii	"\014TLocaleError"
	.byte	1,8
	.ascii	"Solution"
	.ascii	"\017TLocaleSolution"
	.byte	0
	.long	_RTTI_DBF_IDXFILE_TLOCALEERROR
	.long	_RTTI_DBF_IDXFILE_TLOCALESOLUTION

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TDBFLOCALEERROREVENT
_RTTI_DBF_IDXFILE_TDBFLOCALEERROREVENT:
	.byte	6,20
	.ascii	"TDbfLocaleErrorEvent"
	.byte	0,2,1,5
	.ascii	"Error"
	.ascii	"\014TLocaleError"
	.byte	1,8
	.ascii	"Solution"
	.ascii	"\017TLocaleSolution"
	.byte	0
	.long	_RTTI_DBF_IDXFILE_TLOCALEERROR
	.long	_RTTI_DBF_IDXFILE_TLOCALESOLUTION

.const_data
	.align 2
.globl	_INIT_DBF_IDXFILE_TDBFCOMPAREKEYSEVENT
_INIT_DBF_IDXFILE_TDBFCOMPAREKEYSEVENT:
	.byte	6,20
	.ascii	"TDbfCompareKeysEvent"
	.byte	1,2,0,4
	.ascii	"Key1"
	.ascii	"\005PChar"
	.byte	0,4
	.ascii	"Key2"
	.ascii	"\005PChar"
	.ascii	"\007LongInt"
	.long	_RTTI_SYSTEM_LONGINT
	.byte	0
	.long	_RTTI_SYSTEM_PCHAR
	.long	_RTTI_SYSTEM_PCHAR

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TDBFCOMPAREKEYSEVENT
_RTTI_DBF_IDXFILE_TDBFCOMPAREKEYSEVENT:
	.byte	6,20
	.ascii	"TDbfCompareKeysEvent"
	.byte	1,2,0,4
	.ascii	"Key1"
	.ascii	"\005PChar"
	.byte	0,4
	.ascii	"Key2"
	.ascii	"\005PChar"
	.ascii	"\007LongInt"
	.long	_RTTI_SYSTEM_LONGINT
	.byte	0
	.long	_RTTI_SYSTEM_PCHAR
	.long	_RTTI_SYSTEM_PCHAR

.const_data
	.align 2
.globl	_INIT_DBF_IDXFILE_PDOUBLE
_INIT_DBF_IDXFILE_PDOUBLE:
	.byte	0
	.ascii	"\007PDouble"

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_PDOUBLE
_RTTI_DBF_IDXFILE_PDOUBLE:
	.byte	0
	.ascii	"\007PDouble"

.const_data
	.align 2
.globl	_INIT_DBF_IDXFILE_PINTEGER
_INIT_DBF_IDXFILE_PINTEGER:
	.byte	0
	.ascii	"\010PInteger"

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_PINTEGER
_RTTI_DBF_IDXFILE_PINTEGER:
	.byte	0
	.ascii	"\010PInteger"

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld12
_$DBF_IDXFILE$_Ld12:
	.short	0
	.long	_$DBF_IDXFILE$_Ld13
	.align 2
.globl	_$DBF_IDXFILE$_Ld13
_$DBF_IDXFILE$_Ld13:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_IDXFILE_TDBFINDEXDEF
_INIT_DBF_IDXFILE_TDBFINDEXDEF:
	.byte	15,12
	.ascii	"TDbfIndexDef"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	24
	.long	_INIT_SYSTEM_ANSISTRING
	.long	28

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TDBFINDEXDEF
_RTTI_DBF_IDXFILE_TDBFINDEXDEF:
	.byte	15,12
	.ascii	"TDbfIndexDef"
	.long	_VMT_DBF_IDXFILE_TDBFINDEXDEF
	.long	_RTTI_CLASSES_TCOLLECTIONITEM
	.short	3
	.byte	11
	.ascii	"dbf_idxfile"
	.short	3
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	24
	.long	_DBF_IDXFILE_TDBFINDEXDEF_$__SETINDEXNAME$ANSISTRING
	.long	1,0,-2147483648
	.short	0
	.byte	52,9
	.ascii	"IndexFile"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	28
	.long	_DBF_IDXFILE_TDBFINDEXDEF_$__SETEXPRESSION$ANSISTRING
	.long	1,0,-2147483648
	.short	1
	.byte	52,9
	.ascii	"SortField"
	.long	_RTTI_DB_TINDEXOPTIONS
	.long	32,32,1,0,-2147483648
	.short	2
	.byte	48,7
	.ascii	"Options"

.const_data
	.align 2
.globl	_INIT_DBF_IDXFILE_DEF480
_INIT_DBF_IDXFILE_DEF480:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld15
_$DBF_IDXFILE$_Ld15:
	.short	0
	.long	_$DBF_IDXFILE$_Ld16
	.align 2
.globl	_$DBF_IDXFILE$_Ld16
_$DBF_IDXFILE$_Ld16:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_IDXFILE_TDBFINDEXPARSER
_INIT_DBF_IDXFILE_TDBFINDEXPARSER:
	.byte	15,15
	.ascii	"TDbfIndexParser"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TDBFINDEXPARSER
_RTTI_DBF_IDXFILE_TDBFINDEXPARSER:
	.byte	15,15
	.ascii	"TDbfIndexParser"
	.long	_VMT_DBF_IDXFILE_TDBFINDEXPARSER
	.long	_RTTI_DBF_PARSER_TDBFPARSER
	.short	0
	.byte	11
	.ascii	"dbf_idxfile"
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_IDXFILE_DEF618
_INIT_DBF_IDXFILE_DEF618:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld18
_$DBF_IDXFILE$_Ld18:
	.short	0
	.long	_$DBF_IDXFILE$_Ld19
	.align 2
.globl	_$DBF_IDXFILE$_Ld19
_$DBF_IDXFILE$_Ld19:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_IDXFILE_TINDEXFILE
_INIT_DBF_IDXFILE_TINDEXFILE:
	.byte	15,10
	.ascii	"TIndexFile"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	92
	.long	_INIT_SYSTEM_ANSISTRING
	.long	96

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TINDEXFILE
_RTTI_DBF_IDXFILE_TINDEXFILE:
	.byte	15,10
	.ascii	"TIndexFile"
	.long	_VMT_DBF_IDXFILE_TINDEXFILE
	.long	_RTTI_DBF_PGFILE_TPAGEDFILE
	.short	0
	.byte	11
	.ascii	"dbf_idxfile"
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_IDXFILE_TINDEXPAGECLASS
_INIT_DBF_IDXFILE_TINDEXPAGECLASS:
	.byte	0
	.ascii	"\017TIndexPageClass"

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TINDEXPAGECLASS
_RTTI_DBF_IDXFILE_TINDEXPAGECLASS:
	.byte	0
	.ascii	"\017TIndexPageClass"

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld21
_$DBF_IDXFILE$_Ld21:
	.short	0
	.long	_$DBF_IDXFILE$_Ld22
	.align 2
.globl	_$DBF_IDXFILE$_Ld22
_$DBF_IDXFILE$_Ld22:
	.short	0

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TLCIDLIST
_RTTI_DBF_IDXFILE_TLCIDLIST:
	.byte	15,9
	.ascii	"TLCIDList"
	.long	_VMT_DBF_IDXFILE_TLCIDLIST
	.long	_RTTI_CLASSES_TLIST
	.short	0
	.byte	11
	.ascii	"dbf_idxfile"
	.short	0

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld24
_$DBF_IDXFILE$_Ld24:
	.short	0
	.long	_$DBF_IDXFILE$_Ld25
	.align 2
.globl	_$DBF_IDXFILE$_Ld25
_$DBF_IDXFILE$_Ld25:
	.short	0

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TMDXPAGE
_RTTI_DBF_IDXFILE_TMDXPAGE:
	.byte	15,8
	.ascii	"TMdxPage"
	.long	_VMT_DBF_IDXFILE_TMDXPAGE
	.long	_RTTI_DBF_IDXFILE_TINDEXPAGE
	.short	0
	.byte	11
	.ascii	"dbf_idxfile"
	.short	0

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld27
_$DBF_IDXFILE$_Ld27:
	.short	0
	.long	_$DBF_IDXFILE$_Ld28
	.align 2
.globl	_$DBF_IDXFILE$_Ld28
_$DBF_IDXFILE$_Ld28:
	.short	0

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TNDXPAGE
_RTTI_DBF_IDXFILE_TNDXPAGE:
	.byte	15,8
	.ascii	"TNdxPage"
	.long	_VMT_DBF_IDXFILE_TNDXPAGE
	.long	_RTTI_DBF_IDXFILE_TINDEXPAGE
	.short	0
	.byte	11
	.ascii	"dbf_idxfile"
	.short	0

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld30
_$DBF_IDXFILE$_Ld30:
	.short	0
	.long	_$DBF_IDXFILE$_Ld31
	.align 2
.globl	_$DBF_IDXFILE$_Ld31
_$DBF_IDXFILE$_Ld31:
	.short	0

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TMDX4TAG
_RTTI_DBF_IDXFILE_TMDX4TAG:
	.byte	15,8
	.ascii	"TMdx4Tag"
	.long	_VMT_DBF_IDXFILE_TMDX4TAG
	.long	_RTTI_DBF_IDXFILE_TINDEXTAG
	.short	0
	.byte	11
	.ascii	"dbf_idxfile"
	.short	0

.const_data
	.align 2
.globl	_$DBF_IDXFILE$_Ld33
_$DBF_IDXFILE$_Ld33:
	.short	0
	.long	_$DBF_IDXFILE$_Ld34
	.align 2
.globl	_$DBF_IDXFILE$_Ld34
_$DBF_IDXFILE$_Ld34:
	.short	0

.const_data
	.align 2
.globl	_RTTI_DBF_IDXFILE_TMDX7TAG
_RTTI_DBF_IDXFILE_TMDX7TAG:
	.byte	15,8
	.ascii	"TMdx7Tag"
	.long	_VMT_DBF_IDXFILE_TMDX7TAG
	.long	_RTTI_DBF_IDXFILE_TINDEXTAG
	.short	0
	.byte	11
	.ascii	"dbf_idxfile"
	.short	0
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
L_$DBF_IDXFILE$_Ld1$non_lazy_ptr:
.indirect_symbol _$DBF_IDXFILE$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_IDXFILE_LCIDLIST$non_lazy_ptr:
.indirect_symbol _U_DBF_IDXFILE_LCIDLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_IDXFILE_LOCALECALLBACK$PCHAR$$LONGINT$non_lazy_ptr:
.indirect_symbol _DBF_IDXFILE_LOCALECALLBACK$PCHAR$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DBF_IDXFILE_TDBFINDEXPARSER_$_VALIDATEEXPRESSION$ANSISTRING_ANSISTRFUNCS$non_lazy_ptr:
.indirect_symbol _TC_DBF_IDXFILE_TDBFINDEXPARSER_$_VALIDATEEXPRESSION$ANSISTRING_ANSISTRFUNCS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DBF_IDXFILE_TDBFINDEXPARSER_$_VALIDATEEXPRESSION$ANSISTRING_ANSIFUNCSTOMODE$non_lazy_ptr:
.indirect_symbol _TC_DBF_IDXFILE_TDBFINDEXPARSER_$_VALIDATEEXPRESSION$ANSISTRING_ANSIFUNCSTOMODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_INDEX_EXPRESSION_TOO_LONG$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INDEX_EXPRESSION_TOO_LONG
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr:
.indirect_symbol _VMT_DBF_COMMON_EDBFERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_IDXFILE$_Ld3$non_lazy_ptr:
.indirect_symbol _$DBF_IDXFILE$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_IDXFILE_ENTRY_MDX_BOF$non_lazy_ptr:
.indirect_symbol _U_DBF_IDXFILE_ENTRY_MDX_BOF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_IDXFILE_ENTRY_MDX_EOF$non_lazy_ptr:
.indirect_symbol _U_DBF_IDXFILE_ENTRY_MDX_EOF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_IDXFILE_TMDX7TAG$non_lazy_ptr:
.indirect_symbol _VMT_DBF_IDXFILE_TMDX7TAG
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_IDXFILE_TMDX4TAG$non_lazy_ptr:
.indirect_symbol _VMT_DBF_IDXFILE_TMDX4TAG
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_IDXFILE_ENTRY_NDX_BOF$non_lazy_ptr:
.indirect_symbol _U_DBF_IDXFILE_ENTRY_NDX_BOF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_IDXFILE_ENTRY_NDX_EOF$non_lazy_ptr:
.indirect_symbol _U_DBF_IDXFILE_ENTRY_NDX_EOF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_IDXFILE_TDBFINDEXPARSER$non_lazy_ptr:
.indirect_symbol _VMT_DBF_IDXFILE_TDBFINDEXPARSER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_IDXFILE_TNDXPAGE$non_lazy_ptr:
.indirect_symbol _VMT_DBF_IDXFILE_TNDXPAGE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DBF_COLLATE_BINARY_COLLATION$non_lazy_ptr:
.indirect_symbol _TC_DBF_COLLATE_BINARY_COLLATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DBF_COLLATE_UNKNOWN_COLLATION$non_lazy_ptr:
.indirect_symbol _TC_DBF_COLLATE_UNKNOWN_COLLATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_INVALID_INDEX_TYPE$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INVALID_INDEX_TYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_TOO_MANY_INDEXES$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_TOO_MANY_INDEXES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_IDXFILE_TMDXPAGE$non_lazy_ptr:
.indirect_symbol _VMT_DBF_IDXFILE_TMDXPAGE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PGFILE_TPAGEDFILE$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PGFILE_TPAGEDFILE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_KEY_VIOLATION$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_KEY_VIOLATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_WIDESTRINGMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_EMPTYSTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYSSTRING$PCHAR$PCHAR$$LONGINT$non_lazy_ptr:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYSSTRING$PCHAR$PCHAR$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYSNUMERICMDX$PCHAR$PCHAR$$LONGINT$non_lazy_ptr:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYSNUMERICMDX$PCHAR$PCHAR$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYSNUMERICNDX$PCHAR$PCHAR$$LONGINT$non_lazy_ptr:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__COMPAREKEYSNUMERICNDX$PCHAR$PCHAR$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_IDXFILE_TDBFINDEXDEF$non_lazy_ptr:
.indirect_symbol _VMT_DBF_IDXFILE_TDBFINDEXDEF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_IDXFILE_TLCIDLIST$non_lazy_ptr:
.indirect_symbol _VMT_DBF_IDXFILE_TLCIDLIST
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

