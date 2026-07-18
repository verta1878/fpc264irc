# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_MASKUTILS_ISNUMERIC$CHAR$$BOOLEAN
_MASKUTILS_ISNUMERIC$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	movzbl	-4(%ebp),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj7
Lj7:
	setcb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_ISALPHA$CHAR$$BOOLEAN
_MASKUTILS_ISALPHA$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj9
Lj9:
	popl	%ebx
	movb	%al,-4(%ebp)
	movl	$0,-64(%ebp)
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
	jne	Lj10
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
	movb	-4(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-60(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	movl	%eax,-56(%ebp)
	leal	-52(%ebp),%edx
	movl	-56(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj9(%ebx),%ecx
	movl	36(%ecx),%ecx
	call	*%ecx
	movl	-52(%ebp),%esi
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movb	-4(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-64(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	movl	%eax,-56(%ebp)
	leal	-60(%ebp),%edx
	movl	-56(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj9(%ebx),%ecx
	movl	32(%ecx),%ecx
	call	*%ecx
	movl	-60(%ebp),%eax
	movl	%esi,%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	setneb	-5(%ebp)
Lj10:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj11
	call	LFPC_RERAISE$stub
Lj11:
	movb	-5(%ebp),%al
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_ISTOKEN$CHAR$$BOOLEAN
_MASKUTILS_ISTOKEN$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj40
Lj40:
	popl	%edx
	movb	%al,-4(%ebp)
	movzbl	-4(%ebp),%eax
	movl	L_$MASKUTILS$_Ld1$non_lazy_ptr-Lj40(%edx),%ecx
	btl	%eax,(%ecx)
	setcb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__SETMASK$ANSISTRING
_MASKUTILS_TMASKUTILS_$__SETMASK$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj45
	jmp	Lj46
Lj45:
	jmp	Lj43
Lj46:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	16(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,16(%ebx)
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EXTRACTMASK$stub
Lj43:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__SETVALUE$ANSISTRING
_MASKUTILS_TMASKUTILS_$__SETVALUE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj57
	jmp	Lj58
Lj57:
	jmp	Lj55
Lj58:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	24(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,24(%ebx)
Lj55:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__VALIDATEINPUT$$ANSISTRING
_MASKUTILS_TMASKUTILS_$__VALIDATEINPUT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ebx
	leal	28(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,28(%ebx)
	movl	-4(%ebp),%eax
	movl	$1,12(%eax)
	movl	-4(%ebp),%eax
	movl	$1,8(%eax)
	movl	-4(%ebp),%eax
	movl	$0,36(%eax)
	jmp	Lj76
	.align 2
Lj75:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__MASKPTR$$CHAR$stub
	call	L_MASKUTILS_ISTOKEN$CHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj80
	jmp	Lj79
Lj80:
	movl	-4(%ebp),%eax
	testl	$8,36(%eax)
	je	Lj78
	jmp	Lj79
Lj78:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__DOTOKEN$stub
	jmp	Lj87
Lj79:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__DOLITERAL$stub
Lj87:
	movl	-4(%ebp),%eax
	incl	12(%eax)
Lj76:
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	testl	%edx,%edx
	je	Lj90
	movl	-4(%edx),%edx
Lj90:
	movl	-4(%ebp),%eax
	cmpl	12(%eax),%edx
	jge	Lj75
	jmp	Lj77
Lj77:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__DOFILLREST$stub
	movl	-4(%ebp),%esi
	movl	28(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	28(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__EVALUATEMISSING
_MASKUTILS_TMASKUTILS_$__EVALUATEMISSING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj97
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-4(%ebp),%eax
	movb	33(%eax),%al
	leal	-48(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-48(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-4(%ebp),%eax
	incl	8(%eax)
Lj97:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj98
	call	LFPC_RERAISE$stub
Lj98:
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__RAISEERROR
_MASKUTILS_TMASKUTILS_$__RAISEERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	call	Lj111
Lj111:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj114
	movl	-4(%eax),%eax
Lj114:
	movl	-4(%ebp),%edx
	cmpl	8(%edx),%eax
	jl	Lj112
	jmp	Lj113
Lj112:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEMISSING$stub
	jmp	Lj117
Lj113:
	movl	$-1,4(%esp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	leal	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	L_RESSTR_MASKUTILS_EXINVALIDMASKVALUE$non_lazy_ptr-Lj111(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj111(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMTHELP$ANSISTRING$array_of_const$LONGINT$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj111(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj117:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__MASKPTR$$CHAR
_MASKUTILS_TMASKUTILS_$__MASKPTR$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR
_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	testl	%edx,%edx
	je	Lj138
	movl	-4(%edx),%edx
Lj138:
	movl	-4(%ebp),%eax
	cmpl	8(%eax),%edx
	jge	Lj136
	jmp	Lj137
Lj136:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	movb	%al,-5(%ebp)
	jmp	Lj141
Lj137:
	movb	$0,-5(%ebp)
Lj141:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__EXTRACTMASK
_MASKUTILS_TMASKUTILS_$__EXTRACTMASK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	call	Lj145
Lj145:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj146
	movl	-4(%ebp),%eax
	movb	$32,33(%eax)
	movl	-4(%ebp),%eax
	movb	$0,32(%eax)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj159
	movl	-4(%ecx),%ecx
Lj159:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-56(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	L_$MASKUTILS$_Ld2$non_lazy_ptr-Lj145(%ebx),%eax
	call	L_SYSUTILS_LASTDELIMITER$ANSISTRING$ANSISTRING$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj170
	jmp	Lj171
Lj170:
	movl	-12(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	leal	20(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-12(%ebp),%eax
	movl	%eax,20(%esi)
	jmp	Lj174
Lj171:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	incl	%edx
	movl	-12(%ebp),%eax
	movl	$1,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	jne	Lj185
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj145(%ebx),%edx
	movl	%edx,%eax
Lj185:
	movl	-4(%ebp),%edx
	movb	(%eax),%al
	movb	%al,33(%edx)
	movl	-8(%ebp),%edx
	leal	-12(%ebp),%eax
	movl	$2,%ecx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	L_$MASKUTILS$_Ld2$non_lazy_ptr-Lj145(%ebx),%eax
	call	L_SYSUTILS_LASTDELIMITER$ANSISTRING$ANSISTRING$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	incl	%edx
	movl	-12(%ebp),%eax
	movl	$1,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-60(%ebp),%eax
	movl	L_$MASKUTILS$_Ld4$non_lazy_ptr-Lj145(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	setneb	32(%esi)
	movl	-8(%ebp),%edx
	leal	-12(%ebp),%eax
	movl	$2,%ecx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	movl	-12(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	leal	20(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-12(%ebp),%eax
	movl	%eax,20(%esi)
Lj174:
Lj146:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj147
	call	LFPC_RERAISE$stub
Lj147:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__EVALUATEEXIT
_MASKUTILS_TMASKUTILS_$__EVALUATEEXIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj228
	movl	-4(%ebp),%eax
	testl	$2,36(%eax)
	jne	Lj231
	jmp	Lj232
Lj231:
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR$stub
	leal	-52(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-52(%ebp),%eax
	leal	-48(%ebp),%edx
	call	L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-48(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	call	Lfpc_ansistr_concat$stub
	jmp	Lj249
Lj232:
	movl	-4(%ebp),%eax
	testl	$4,36(%eax)
	jne	Lj250
	jmp	Lj251
Lj250:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR$stub
	call	L_SYSTEM_LOWERCASE$CHAR$$CHAR$stub
	leal	-52(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	call	Lfpc_ansistr_concat$stub
	jmp	Lj266
Lj251:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR$stub
	leal	-52(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	call	Lfpc_ansistr_concat$stub
Lj266:
Lj249:
	movl	-4(%ebp),%eax
	incl	8(%eax)
Lj228:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj229
	call	LFPC_RERAISE$stub
Lj229:
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__DOUPPER
_MASKUTILS_TMASKUTILS_$__DOUPPER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	$4,36(%eax)
	jne	Lj281
	jmp	Lj282
Lj281:
	movl	-4(%ebp),%eax
	andl	$-5,36(%eax)
	jmp	Lj283
Lj282:
	movl	-4(%ebp),%eax
	orl	$2,36(%eax)
Lj283:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$1,%eax
	jg	Lj286
	jmp	Lj285
Lj286:
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	decl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$60,%al
	je	Lj284
	jmp	Lj285
Lj284:
	movl	-4(%ebp),%eax
	andl	$-5,36(%eax)
	movl	-4(%ebp),%eax
	andl	$-3,36(%eax)
Lj285:
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__DOLOWER
_MASKUTILS_TMASKUTILS_$__DOLOWER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	$2,36(%eax)
	jne	Lj289
	jmp	Lj290
Lj289:
	movl	-4(%ebp),%eax
	andl	$-3,36(%eax)
	jmp	Lj291
Lj290:
	movl	-4(%ebp),%eax
	orl	$4,36(%eax)
Lj291:
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__DOALPHANUMERIC$BOOLEAN
_MASKUTILS_TMASKUTILS_$__DOALPHANUMERIC$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj293
Lj293:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj294
	jmp	Lj295
Lj294:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR$stub
	call	L_MASKUTILS_ISALPHA$CHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj296
	jmp	Lj298
Lj298:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR$stub
	call	L_MASKUTILS_ISNUMERIC$CHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj296
	jmp	Lj297
Lj296:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEEXIT$stub
	jmp	Lj309
Lj297:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj312
	movl	-4(%eax),%eax
Lj312:
	movl	-8(%ebp),%edx
	cmpl	8(%edx),%eax
	jl	Lj310
	jmp	Lj311
Lj310:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEMISSING$stub
	jmp	Lj315
Lj311:
	movl	$-1,4(%esp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	L_RESSTR_MASKUTILS_EXINVALIDMASKVALUE$non_lazy_ptr-Lj293(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj293(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMTHELP$ANSISTRING$array_of_const$LONGINT$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj293(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj315:
Lj309:
	jmp	Lj328
Lj295:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR$stub
	call	L_MASKUTILS_ISALPHA$CHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj329
	jmp	Lj331
Lj331:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR$stub
	call	L_MASKUTILS_ISNUMERIC$CHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj329
	jmp	Lj330
Lj329:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEEXIT$stub
	jmp	Lj342
Lj330:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEMISSING$stub
Lj342:
Lj328:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__DOARBITRARY$BOOLEAN
_MASKUTILS_TMASKUTILS_$__DOARBITRARY$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj346
Lj346:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	orl	$16,36(%eax)
	cmpb	$0,-4(%ebp)
	jne	Lj347
	jmp	Lj348
Lj347:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj351
	movl	-4(%eax),%eax
Lj351:
	movl	-8(%ebp),%edx
	cmpl	12(%edx),%eax
	jl	Lj349
	jmp	Lj350
Lj349:
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	testl	%edx,%edx
	je	Lj354
	movl	-4(%edx),%edx
Lj354:
	movl	-8(%ebp),%eax
	cmpl	8(%eax),%edx
	jl	Lj352
	jmp	Lj353
Lj352:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEMISSING$stub
	jmp	Lj357
Lj353:
	movl	$-1,4(%esp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	L_RESSTR_MASKUTILS_EXINVALIDMASKVALUE$non_lazy_ptr-Lj346(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj346(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMTHELP$ANSISTRING$array_of_const$LONGINT$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj346(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj357:
Lj350:
	jmp	Lj370
Lj348:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj373
	movl	-4(%eax),%eax
Lj373:
	movl	-8(%ebp),%edx
	cmpl	12(%edx),%eax
	jl	Lj371
	jmp	Lj372
Lj371:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEMISSING$stub
	jmp	Lj376
Lj372:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEEXIT$stub
Lj376:
Lj370:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__DONUMERIC$BOOLEAN
_MASKUTILS_TMASKUTILS_$__DONUMERIC$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj380
Lj380:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj381
	jmp	Lj382
Lj381:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR$stub
	call	L_MASKUTILS_ISNUMERIC$CHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj383
	jmp	Lj384
Lj383:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEEXIT$stub
	jmp	Lj391
Lj384:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj394
	movl	-4(%eax),%eax
Lj394:
	movl	-8(%ebp),%edx
	cmpl	8(%edx),%eax
	jl	Lj392
	jmp	Lj393
Lj392:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEMISSING$stub
	jmp	Lj397
Lj393:
	movl	$-1,4(%esp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	L_RESSTR_MASKUTILS_EXINVALIDMASKVALUE$non_lazy_ptr-Lj380(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj380(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMTHELP$ANSISTRING$array_of_const$LONGINT$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj380(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj397:
Lj391:
	jmp	Lj410
Lj382:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR$stub
	call	L_MASKUTILS_ISNUMERIC$CHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj411
	jmp	Lj412
Lj411:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEEXIT$stub
	jmp	Lj419
Lj412:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEMISSING$stub
Lj419:
Lj410:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__DONUMERICPLUSMINUS
_MASKUTILS_TMASKUTILS_$__DONUMERICPLUSMINUS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR$stub
	call	L_MASKUTILS_ISNUMERIC$CHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj424
	jmp	Lj427
Lj427:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR$stub
	cmpb	$43,%al
	je	Lj424
	jmp	Lj426
Lj426:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR$stub
	cmpb	$45,%al
	je	Lj424
	jmp	Lj425
Lj424:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEEXIT$stub
	jmp	Lj438
Lj425:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEMISSING$stub
Lj438:
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__DOTIME
_MASKUTILS_TMASKUTILS_$__DOTIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	call	Lj442
Lj442:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj443
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%edx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj442(%ebx),%eax
	movb	6(%eax),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-48(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	call	Lfpc_ansistr_concat$stub
Lj443:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj444
	call	LFPC_RERAISE$stub
Lj444:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__DODATE
_MASKUTILS_TMASKUTILS_$__DODATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	call	Lj457
Lj457:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj458
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%edx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj457(%ebx),%eax
	movb	5(%eax),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-48(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	call	Lfpc_ansistr_concat$stub
Lj458:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj459
	call	LFPC_RERAISE$stub
Lj459:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__GETINPUTMASK$$ANSISTRING
_MASKUTILS_TMASKUTILS_$__GETINPUTMASK$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ebx
	leal	28(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,28(%ebx)
	movl	-4(%ebp),%eax
	movl	$1,12(%eax)
	movl	-4(%ebp),%eax
	movl	$0,36(%eax)
	jmp	Lj480
	.align 2
Lj479:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__MASKPTR$$CHAR$stub
	call	L_MASKUTILS_ISTOKEN$CHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj484
	jmp	Lj483
Lj484:
	movl	-4(%ebp),%eax
	testl	$8,36(%eax)
	je	Lj482
	jmp	Lj483
Lj482:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__DOTOKENINPUTMASK$stub
	jmp	Lj491
Lj483:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__DOLITERALINPUTMASK$stub
Lj491:
	movl	-4(%ebp),%eax
	incl	12(%eax)
Lj480:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj494
	movl	-4(%eax),%eax
Lj494:
	movl	-4(%ebp),%edx
	cmpl	12(%edx),%eax
	jge	Lj479
	jmp	Lj481
Lj481:
	movl	-4(%ebp),%esi
	movl	28(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	28(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__DOALPHA$BOOLEAN
_MASKUTILS_TMASKUTILS_$__DOALPHA$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj498
Lj498:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj499
	jmp	Lj500
Lj499:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR$stub
	call	L_MASKUTILS_ISALPHA$CHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj501
	jmp	Lj502
Lj501:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEEXIT$stub
	jmp	Lj509
Lj502:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj512
	movl	-4(%eax),%eax
Lj512:
	movl	-8(%ebp),%edx
	cmpl	8(%edx),%eax
	jl	Lj510
	jmp	Lj511
Lj510:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEMISSING$stub
	jmp	Lj515
Lj511:
	movl	$-1,4(%esp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	L_RESSTR_MASKUTILS_EXINVALIDMASKVALUE$non_lazy_ptr-Lj498(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj498(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMTHELP$ANSISTRING$array_of_const$LONGINT$$EXCEPTION$stub
La5:
	movl	%ebp,%ecx
	leal	La5-Lj498(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj515:
Lj509:
	jmp	Lj528
Lj500:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR$stub
	call	L_MASKUTILS_ISALPHA$CHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj529
	jmp	Lj530
Lj529:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEEXIT$stub
	jmp	Lj537
Lj530:
	movl	-8(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEMISSING$stub
Lj537:
Lj528:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__DOTOKEN
_MASKUTILS_TMASKUTILS_$__DOTOKEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	$16,36(%eax)
	jne	Lj542
	jmp	Lj543
Lj542:
	movl	-4(%ebp),%eax
	andl	$-17,36(%eax)
Lj543:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__MASKPTR$$CHAR$stub
	cmpb	$33,%al
	jb	Lj545
	subb	$33,%al
	je	Lj546
	subb	$2,%al
	je	Lj558
	subb	$12,%al
	je	Lj560
	decb	%al
	je	Lj556
	subb	$9,%al
	je	Lj557
	decb	%al
	je	Lj559
	subb	$2,%al
	je	Lj548
	subb	$2,%al
	je	Lj547
	subb	$3,%al
	je	Lj552
	subb	$2,%al
	je	Lj554
	subb	$9,%al
	je	Lj550
	subb	$16,%al
	je	Lj549
	subb	$5,%al
	je	Lj553
	subb	$2,%al
	je	Lj555
	subb	$9,%al
	je	Lj551
	jmp	Lj545
Lj546:
	movl	-4(%ebp),%eax
	orl	$1,36(%eax)
	jmp	Lj544
Lj547:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__DOUPPER$stub
	jmp	Lj544
Lj548:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__DOLOWER$stub
	jmp	Lj544
Lj549:
	movl	-4(%ebp),%eax
	orl	$8,36(%eax)
	jmp	Lj544
Lj550:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_MASKUTILS_TMASKUTILS_$__DOALPHA$BOOLEAN$stub
	jmp	Lj544
Lj551:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_MASKUTILS_TMASKUTILS_$__DOALPHA$BOOLEAN$stub
	jmp	Lj544
Lj552:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_MASKUTILS_TMASKUTILS_$__DOALPHANUMERIC$BOOLEAN$stub
	jmp	Lj544
Lj553:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_MASKUTILS_TMASKUTILS_$__DOALPHANUMERIC$BOOLEAN$stub
	jmp	Lj544
Lj554:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_MASKUTILS_TMASKUTILS_$__DOARBITRARY$BOOLEAN$stub
	jmp	Lj544
Lj555:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_MASKUTILS_TMASKUTILS_$__DOARBITRARY$BOOLEAN$stub
	jmp	Lj544
Lj556:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_MASKUTILS_TMASKUTILS_$__DONUMERIC$BOOLEAN$stub
	jmp	Lj544
Lj557:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_MASKUTILS_TMASKUTILS_$__DONUMERIC$BOOLEAN$stub
	jmp	Lj544
Lj558:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__DONUMERICPLUSMINUS$stub
	jmp	Lj544
Lj559:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__DOTIME$stub
	jmp	Lj544
Lj560:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__DODATE$stub
	jmp	Lj544
Lj545:
Lj544:
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__DOTOKENINPUTMASK
_MASKUTILS_TMASKUTILS_$__DOTOKENINPUTMASK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj607
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__MASKPTR$$CHAR$stub
	cmpb	$33,%al
	jb	Lj611
	subb	$33,%al
	je	Lj612
	subb	$2,%al
	je	Lj614
	subb	$12,%al
	je	Lj616
	decb	%al
	je	Lj614
	subb	$9,%al
	je	Lj614
	decb	%al
	je	Lj615
	subb	$2,%al
	je	Lj612
	subb	$2,%al
	je	Lj612
	subb	$3,%al
	je	Lj614
	subb	$2,%al
	je	Lj614
	subb	$9,%al
	je	Lj614
	subb	$16,%al
	je	Lj613
	subb	$5,%al
	je	Lj614
	subb	$2,%al
	je	Lj614
	subb	$9,%al
	je	Lj614
	jmp	Lj611
Lj612:
	jmp	Lj610
Lj613:
	movl	-4(%ebp),%eax
	orl	$8,36(%eax)
	jmp	Lj610
Lj614:
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-4(%ebp),%eax
	movb	33(%eax),%al
	leal	-48(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-48(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	call	Lfpc_ansistr_concat$stub
	jmp	Lj610
Lj615:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__DOTIME$stub
	jmp	Lj610
Lj616:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__DODATE$stub
	jmp	Lj610
Lj611:
Lj610:
Lj607:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj608
	call	LFPC_RERAISE$stub
Lj608:
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__DOLITERAL
_MASKUTILS_TMASKUTILS_$__DOLITERAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj634
Lj634:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj635
	movl	-4(%ebp),%eax
	testl	$8,36(%eax)
	jne	Lj638
	jmp	Lj639
Lj638:
	movl	-4(%ebp),%eax
	andl	$-9,36(%eax)
Lj639:
	movl	-4(%ebp),%eax
	cmpb	$0,32(%eax)
	jne	Lj642
	jmp	Lj641
Lj642:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__MASKPTR$$CHAR$stub
	movb	%al,%bl
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR$stub
	cmpb	%al,%bl
	jne	Lj640
	jmp	Lj641
Lj640:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj649
	movl	-4(%eax),%eax
Lj649:
	movl	-4(%ebp),%edx
	cmpl	8(%edx),%eax
	jl	Lj647
	jmp	Lj648
Lj647:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEMISSING$stub
	jmp	Lj652
Lj648:
	movl	$-1,4(%esp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	leal	-52(%ebp),%eax
	movl	%eax,8(%esp)
	movl	L_RESSTR_MASKUTILS_EXINVALIDMASKVALUE$non_lazy_ptr-Lj634(%esi),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj634(%esi),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMTHELP$ANSISTRING$array_of_const$LONGINT$$EXCEPTION$stub
La6:
	movl	%ebp,%ecx
	leal	La6-Lj634(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj652:
Lj641:
	movl	-4(%ebp),%eax
	cmpb	$0,32(%eax)
	jne	Lj665
	jmp	Lj667
Lj667:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR$stub
	call	L_MASKUTILS_ISALPHA$CHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj666
	jmp	Lj668
Lj668:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR$stub
	call	L_MASKUTILS_ISNUMERIC$CHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj666
	jmp	Lj665
Lj665:
	movl	-4(%ebp),%eax
	incl	8(%eax)
Lj666:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__MASKPTR$$CHAR$stub
	leal	-56(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-56(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	call	Lfpc_ansistr_concat$stub
Lj635:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj636
	call	LFPC_RERAISE$stub
Lj636:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__DOLITERALINPUTMASK
_MASKUTILS_TMASKUTILS_$__DOLITERALINPUTMASK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj691
	movl	-4(%ebp),%eax
	testl	$8,36(%eax)
	jne	Lj694
	jmp	Lj695
Lj694:
	movl	-4(%ebp),%eax
	andl	$-9,36(%eax)
Lj695:
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__MASKPTR$$CHAR$stub
	leal	-48(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-48(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	call	Lfpc_ansistr_concat$stub
Lj691:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj692
	call	LFPC_RERAISE$stub
Lj692:
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_TMASKUTILS_$__DOFILLREST
_MASKUTILS_TMASKUTILS_$__DOFILLREST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	$16,36(%eax)
	jne	Lj710
	jmp	Lj711
Lj710:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	testl	%edx,%edx
	je	Lj714
	movl	-4(%edx),%edx
Lj714:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj715
	movl	-4(%eax),%eax
Lj715:
	subl	%eax,%edx
	movl	%edx,-8(%ebp)
	jmp	Lj717
	.align 2
Lj716:
	movl	-4(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__EVALUATEEXIT$stub
	decl	-8(%ebp)
Lj717:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj716
	jmp	Lj718
Lj718:
Lj711:
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_FORMATMASKTEXT$ANSISTRING$ANSISTRING$$ANSISTRING
_MASKUTILS_FORMATMASKTEXT$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj722
Lj722:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	L_VMT_MASKUTILS_TMASKUTILS$non_lazy_ptr-Lj722(%esi),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj731
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SETMASK$ANSISTRING$stub
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SETVALUE$ANSISTRING$stub
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__VALIDATEINPUT$$ANSISTRING$stub
Lj731:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj732
	decl	%eax
	testl	%eax,%eax
	je	Lj733
Lj733:
	call	LFPC_RERAISE$stub
Lj732:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_FORMATMASKINPUT$ANSISTRING$$ANSISTRING
_MASKUTILS_FORMATMASKINPUT$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj750
Lj750:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	L_VMT_MASKUTILS_TMASKUTILS$non_lazy_ptr-Lj750(%esi),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj759
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SETMASK$ANSISTRING$stub
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__GETINPUTMASK$$ANSISTRING$stub
Lj759:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj760
	decl	%eax
	testl	%eax,%eax
	je	Lj761
Lj761:
	call	LFPC_RERAISE$stub
Lj760:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_MASKUTILS_MASKDOFORMATTEXT$ANSISTRING$ANSISTRING$CHAR$$ANSISTRING
_MASKUTILS_MASKDOFORMATTEXT$ANSISTRING$ANSISTRING$CHAR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj774
Lj774:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	L_VMT_MASKUTILS_TMASKUTILS$non_lazy_ptr-Lj774(%esi),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj783
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SETMASK$ANSISTRING$stub
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__SETVALUE$ANSISTRING$stub
	movl	-16(%ebp),%eax
	movb	$0,32(%eax)
	movl	-16(%ebp),%eax
	movb	-12(%ebp),%dl
	movb	%dl,33(%eax)
	movl	8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_MASKUTILS_TMASKUTILS_$__VALIDATEINPUT$$ANSISTRING$stub
Lj783:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj784
	decl	%eax
	testl	%eax,%eax
	je	Lj785
Lj785:
	call	LFPC_RERAISE$stub
Lj784:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$MASKUTILS$_Ld6
_$MASKUTILS$_Ld6:
	.byte	10
	.ascii	"TMaskUtils"

.const_data
	.align 2
.globl	_VMT_MASKUTILS_TMASKUTILS
_VMT_MASKUTILS_TMASKUTILS:
	.long	40,-40
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$MASKUTILS$_Ld6
	.long	0,0
	.long	_$MASKUTILS$_Ld7
	.long	_RTTI_MASKUTILS_TMASKUTILS
	.long	_INIT_MASKUTILS_TMASKUTILS
	.long	0
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
.globl	_THREADVARLIST_MASKUTILS
_THREADVARLIST_MASKUTILS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$MASKUTILS$_Ld10
_$MASKUTILS$_Ld10:
	.short	0,1
	.long	0,-1,9
.reference _$MASKUTILS$_Ld9
.globl	_$MASKUTILS$_Ld9
_$MASKUTILS$_Ld9:
.reference _$MASKUTILS$_Ld10
	.ascii	"MASKUTILS\000"

.const_data
	.align 2
.globl	_$MASKUTILS$_Ld12
_$MASKUTILS$_Ld12:
	.short	0,1
	.long	0,-1,31
.reference _$MASKUTILS$_Ld11
.globl	_$MASKUTILS$_Ld11
_$MASKUTILS$_Ld11:
.reference _$MASKUTILS$_Ld12
	.ascii	"FormatMaskText function failed!\000"
	.align 2
.globl	_$MASKUTILS$_Ld14
_$MASKUTILS$_Ld14:
	.short	0,1
	.long	0,-1,28
.reference _$MASKUTILS$_Ld13
.globl	_$MASKUTILS$_Ld13
_$MASKUTILS$_Ld13:
.reference _$MASKUTILS$_Ld14
	.ascii	"maskutils.exinvalidmaskvalue\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 3
.globl	_$MASKUTILS$_Ld1
_$MASKUTILS$_Ld1:
	.byte	0,0,0,0,10,128,1,94,10,16,0,16,10,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$MASKUTILS$_Ld3
_$MASKUTILS$_Ld3:
	.short	0,1
	.long	0,-1,1
.reference _$MASKUTILS$_Ld2
.globl	_$MASKUTILS$_Ld2
_$MASKUTILS$_Ld2:
.reference _$MASKUTILS$_Ld3
	.ascii	";\000"

.const_data
	.align 2
.globl	_$MASKUTILS$_Ld5
_$MASKUTILS$_Ld5:
	.short	0,1
	.long	0,-1,1
.reference _$MASKUTILS$_Ld4
.globl	_$MASKUTILS$_Ld4
_$MASKUTILS$_Ld4:
.reference _$MASKUTILS$_Ld5
	.ascii	"0\000"
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
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

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
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

L_MASKUTILS_TMASKUTILS_$__EXTRACTMASK$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__EXTRACTMASK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_TMASKUTILS_$__MASKPTR$$CHAR$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__MASKPTR$$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_ISTOKEN$CHAR$$BOOLEAN$stub:
.indirect_symbol _MASKUTILS_ISTOKEN$CHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_TMASKUTILS_$__DOTOKEN$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__DOTOKEN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_TMASKUTILS_$__DOLITERAL$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__DOLITERAL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_TMASKUTILS_$__DOFILLREST$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__DOFILLREST
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

L_MASKUTILS_TMASKUTILS_$__EVALUATEMISSING$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__EVALUATEMISSING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXCEPTION_$__CREATEFMTHELP$ANSISTRING$array_of_const$LONGINT$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATEFMTHELP$ANSISTRING$array_of_const$LONGINT$$EXCEPTION
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

Lfpc_ansistr_copy$stub:
.indirect_symbol fpc_ansistr_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_LASTDELIMITER$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_LASTDELIMITER$ANSISTRING$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
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

L_MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__SOURCEPTR$$CHAR
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

L_SYSTEM_LOWERCASE$CHAR$$CHAR$stub:
.indirect_symbol _SYSTEM_LOWERCASE$CHAR$$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_ISALPHA$CHAR$$BOOLEAN$stub:
.indirect_symbol _MASKUTILS_ISALPHA$CHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_ISNUMERIC$CHAR$$BOOLEAN$stub:
.indirect_symbol _MASKUTILS_ISNUMERIC$CHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_TMASKUTILS_$__EVALUATEEXIT$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__EVALUATEEXIT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_TMASKUTILS_$__DOTOKENINPUTMASK$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__DOTOKENINPUTMASK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_TMASKUTILS_$__DOLITERALINPUTMASK$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__DOLITERALINPUTMASK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_TMASKUTILS_$__DOUPPER$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__DOUPPER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_TMASKUTILS_$__DOLOWER$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__DOLOWER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_TMASKUTILS_$__DOALPHA$BOOLEAN$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__DOALPHA$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_TMASKUTILS_$__DOALPHANUMERIC$BOOLEAN$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__DOALPHANUMERIC$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_TMASKUTILS_$__DOARBITRARY$BOOLEAN$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__DOARBITRARY$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_TMASKUTILS_$__DONUMERIC$BOOLEAN$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__DONUMERIC$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_TMASKUTILS_$__DONUMERICPLUSMINUS$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__DONUMERICPLUSMINUS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_TMASKUTILS_$__DOTIME$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__DOTIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_TMASKUTILS_$__DODATE$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__DODATE
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

L_MASKUTILS_TMASKUTILS_$__SETMASK$ANSISTRING$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__SETMASK$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_TMASKUTILS_$__SETVALUE$ANSISTRING$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__SETVALUE$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MASKUTILS_TMASKUTILS_$__VALIDATEINPUT$$ANSISTRING$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__VALIDATEINPUT$$ANSISTRING
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

L_MASKUTILS_TMASKUTILS_$__GETINPUTMASK$$ANSISTRING$stub:
.indirect_symbol _MASKUTILS_TMASKUTILS_$__GETINPUTMASK$$ANSISTRING
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
.globl	_INIT_MASKUTILS_TSTEPSTATE
_INIT_MASKUTILS_TSTEPSTATE:
	.byte	3,10
	.ascii	"TStepState"
	.byte	5
	.long	0,4,0
	.byte	9
	.ascii	"stLeading"
	.byte	7
	.ascii	"stUpper"
	.byte	7
	.ascii	"stLower"
	.byte	9
	.ascii	"stSpecial"
	.byte	11
	.ascii	"stArbitrary"
	.byte	9
	.ascii	"maskutils"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_MASKUTILS_TSTEPSTATE
_RTTI_MASKUTILS_TSTEPSTATE:
	.byte	3,10
	.ascii	"TStepState"
	.byte	5
	.long	0,4,0
	.byte	9
	.ascii	"stLeading"
	.byte	7
	.ascii	"stUpper"
	.byte	7
	.ascii	"stLower"
	.byte	9
	.ascii	"stSpecial"
	.byte	11
	.ascii	"stArbitrary"
	.byte	9
	.ascii	"maskutils"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_MASKUTILS_TSTEPSTATE_s2o
_RTTI_MASKUTILS_TSTEPSTATE_s2o:
	.long	5,4
	.long	_RTTI_MASKUTILS_TSTEPSTATE+61
	.long	0
	.long	_RTTI_MASKUTILS_TSTEPSTATE+25
	.long	2
	.long	_RTTI_MASKUTILS_TSTEPSTATE+43
	.long	3
	.long	_RTTI_MASKUTILS_TSTEPSTATE+51
	.long	1
	.long	_RTTI_MASKUTILS_TSTEPSTATE+35

.const_data
	.align 2
.globl	_RTTI_MASKUTILS_TSTEPSTATE_o2s
_RTTI_MASKUTILS_TSTEPSTATE_o2s:
	.long	0
	.long	_RTTI_MASKUTILS_TSTEPSTATE+25
	.long	_RTTI_MASKUTILS_TSTEPSTATE+35
	.long	_RTTI_MASKUTILS_TSTEPSTATE+43
	.long	_RTTI_MASKUTILS_TSTEPSTATE+51
	.long	_RTTI_MASKUTILS_TSTEPSTATE+61

.const_data
	.align 2
.globl	_INIT_MASKUTILS_TPARSESTATE
_INIT_MASKUTILS_TPARSESTATE:
	.byte	5,11
	.ascii	"TParseState"
	.byte	5
	.long	_INIT_MASKUTILS_TSTEPSTATE

.const_data
	.align 2
.globl	_RTTI_MASKUTILS_TPARSESTATE
_RTTI_MASKUTILS_TPARSESTATE:
	.byte	5,11
	.ascii	"TParseState"
	.byte	5
	.long	_RTTI_MASKUTILS_TSTEPSTATE

.const_data
	.align 2
.globl	_INIT_MASKUTILS_TEDITMASK
_INIT_MASKUTILS_TEDITMASK:
	.byte	9,9
	.ascii	"TEditMask"

.const_data
	.align 2
.globl	_RTTI_MASKUTILS_TEDITMASK
_RTTI_MASKUTILS_TEDITMASK:
	.byte	9,9
	.ascii	"TEditMask"

.const_data
	.align 2
.globl	_$MASKUTILS$_Ld7
_$MASKUTILS$_Ld7:
	.short	0
	.long	_$MASKUTILS$_Ld8
	.align 2
.globl	_$MASKUTILS$_Ld8
_$MASKUTILS$_Ld8:
	.short	0

.const_data
	.align 2
.globl	_INIT_MASKUTILS_TMASKUTILS
_INIT_MASKUTILS_TMASKUTILS:
	.byte	15,10
	.ascii	"TMaskUtils"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	16
	.long	_INIT_SYSTEM_ANSISTRING
	.long	20
	.long	_INIT_SYSTEM_ANSISTRING
	.long	24
	.long	_INIT_SYSTEM_ANSISTRING
	.long	28

.const_data
	.align 2
.globl	_RTTI_MASKUTILS_TMASKUTILS
_RTTI_MASKUTILS_TMASKUTILS:
	.byte	15,10
	.ascii	"TMaskUtils"
	.long	_VMT_MASKUTILS_TMASKUTILS
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	9
	.ascii	"maskutils"
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
L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_WIDESTRINGMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MASKUTILS$_Ld1$non_lazy_ptr:
.indirect_symbol _$MASKUTILS$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_MASKUTILS_EXINVALIDMASKVALUE$non_lazy_ptr:
.indirect_symbol _RESSTR_MASKUTILS_EXINVALIDMASKVALUE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MASKUTILS$_Ld2$non_lazy_ptr:
.indirect_symbol _$MASKUTILS$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MASKUTILS$_Ld4$non_lazy_ptr:
.indirect_symbol _$MASKUTILS$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_DEFAULTFORMATSETTINGS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_MASKUTILS_TMASKUTILS$non_lazy_ptr:
.indirect_symbol _VMT_MASKUTILS_TMASKUTILS
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_MASKUTILS_START
_RESSTR_MASKUTILS_START:
	.long	_$MASKUTILS$_Ld9
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_MASKUTILS_EXINVALIDMASKVALUE
_RESSTR_MASKUTILS_EXINVALIDMASKVALUE:
	.long	_$MASKUTILS$_Ld13
	.long	_$MASKUTILS$_Ld11
	.long	_$MASKUTILS$_Ld11
	.long	123199825

.data
	.align 2
.globl	_RESSTR_MASKUTILS_END
_RESSTR_MASKUTILS_END:
	.long	_RESSTR_MASKUTILS_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

