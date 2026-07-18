# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_VARIANTS_DOVARCLEAR$TVARDATA
_VARIANTS_DOVARCLEAR$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj5
	jmp	Lj6
Lj5:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
	jmp	Lj9
Lj6:
	movl	-4(%ebp),%eax
	movw	$0,(%eax)
Lj9:
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCLEARIFCOMPLEX$TVARDATA
_VARIANTS_DOVARCLEARIFCOMPLEX$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj14
	jmp	Lj15
Lj14:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj15:
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_ALIGNTOPTR$POINTER$$POINTER
_VARIANTS_ALIGNTOPTR$POINTER$$POINTER:
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
.globl	_VARIANTS_VARIANTERROR$ANSISTRING
_VARIANTS_VARIANTERROR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj23
Lj23:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_SYSUTILS_EVARIANTERROR$non_lazy_ptr-Lj23(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj23(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_NOTSUPPORTED$ANSISTRING
_VARIANTS_NOTSUPPORTED$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-56(%ebp)
	call	Lj31
Lj31:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj32
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	$11,-52(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_SYSUTILS_EVARIANTERROR$non_lazy_ptr-Lj31(%ebx),%edx
	movl	L_$VARIANTS$_Ld41$non_lazy_ptr-Lj31(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj31(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj32:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj33
	call	LFPC_RERAISE$stub
Lj33:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TVARIANTARRAYITERATOR_$__INIT$LONGINT$PVARARRAYBOUNDARRAY$$LONGBOOL
_VARIANTS_TVARIANTARRAYITERATOR_$__INIT$LONGINT$PVARARRAYBOUNDARRAY$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	leal	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$12,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj55
	jmp	Lj56
Lj55:
	jmp	Lj45
Lj56:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	8(%eax),%edx
	shll	$2,%edx
	movl	-12(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj66
	decl	-16(%ebp)
	.align 2
Lj67:
	incl	-16(%ebp)
	movl	-12(%ebp),%edx
	movl	4(%edx),%ecx
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%edx
	movl	(%edx),%esi
	movl	-16(%ebp),%edx
	movl	4(%esi,%edx,8),%edx
	movl	%edx,(%ecx,%ebx,4)
	cmpl	-16(%ebp),%eax
	jg	Lj67
Lj66:
Lj45:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TVARIANTARRAYITERATOR_$__NEXT$$BOOLEAN
_VARIANTS_TVARIANTARRAYITERATOR_$__NEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-6(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	decl	%edx
	movl	%ebp,%eax
	call	L_VARIANTS_TVARIANTARRAYITERATOR_$_NEXT$$BOOLEAN_INCDIM$LONGINT$stub
	movb	-6(%ebp),%al
	testb	%al,%al
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TVARIANTARRAYITERATOR_$_NEXT$$BOOLEAN_INCDIM$LONGINT
_VARIANTS_TVARIANTARRAYITERATOR_$_NEXT$$BOOLEAN_INCDIM$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,-6(%eax)
	jne	Lj82
	jmp	Lj83
Lj82:
	jmp	Lj72
Lj83:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	incl	(%edx,%eax,4)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	(%eax),%ecx
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%ecx,%ebx,8),%ecx
	movl	(%eax,%edx,8),%eax
	addl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	cmpl	(%edx,%eax,4),%ecx
	jle	Lj84
	jmp	Lj85
Lj84:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	4(%ebx,%eax,8),%eax
	movl	%eax,(%edx,%ecx,4)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj88
	jmp	Lj89
Lj88:
	movl	-4(%ebp),%edx
	decl	%edx
	movl	-8(%ebp),%eax
	call	L_VARIANTS_TVARIANTARRAYITERATOR_$_NEXT$$BOOLEAN_INCDIM$LONGINT$stub
	jmp	Lj94
Lj89:
	movl	-8(%ebp),%eax
	movb	$1,-6(%eax)
Lj94:
Lj85:
Lj72:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TVARIANTARRAYITERATOR_$__ATEND$$BOOLEAN
_VARIANTS_TVARIANTARRAYITERATOR_$__ATEND$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movb	$1,-5(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jl	Lj102
	decl	-12(%ebp)
	.align 2
Lj103:
	incl	-12(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%ebx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%esi
	movl	-12(%ebp),%edx
	movl	4(%ebx,%ecx,8),%ebx
	movl	(%esi,%edx,8),%edx
	addl	%edx,%ebx
	movl	-4(%ebp),%edx
	movl	4(%edx),%ecx
	movl	-12(%ebp),%edx
	cmpl	(%ecx,%edx,4),%ebx
	jg	Lj104
	jmp	Lj105
Lj104:
	movb	$0,-5(%ebp)
	jmp	Lj97
Lj105:
	cmpl	-12(%ebp),%eax
	jg	Lj103
Lj102:
Lj97:
	movb	-5(%ebp),%al
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TVARIANTARRAYITERATOR_$__DONE
_VARIANTS_TVARIANTARRAYITERATOR_$__DONE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$12,%ecx
	call	Lfpc_help_destructor$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TDYNARRAYITER_$__INIT$POINTER$PDYNARRAYTYPEINFO$LONGINT$TDYNARRAYBOUNDS$$LONGBOOL
_VARIANTS_TDYNARRAYITER_$__INIT$POINTER$PDYNARRAYTYPEINFO$LONGINT$TDYNARRAYBOUNDS$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-112(%ebp)
	movl	%esi,-108(%ebp)
	movl	%edi,-104(%ebp)
	call	Lj119
Lj119:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_DYNARRAY_INCR_REF$stub
	leal	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$24,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj128
	jmp	Lj129
Lj128:
	jmp	Lj118
Lj129:
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj132
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj136
	movl	8(%ebp),%eax
	call	LFPC_DYNARRAY_INCR_REF$stub
	movl	-12(%ebp),%esi
	movl	L_INIT_VARIANTS_TDYNARRAYBOUNDS$non_lazy_ptr-Lj119(%ebx),%edx
	movl	%esi,%eax
	call	LFPC_DYNARRAY_DECR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,(%esi)
	movl	-12(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-100(%ebp)
	leal	-100(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_VARIANTS_TDYNARRAYBOUNDS$non_lazy_ptr-Lj119(%ebx),%edx
	movl	-12(%ebp),%eax
	leal	4(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-100(%ebp)
	leal	-100(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_VARIANTS_TDYNARRAYBOUNDS$non_lazy_ptr-Lj119(%ebx),%edx
	movl	-12(%ebp),%eax
	leal	8(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-100(%ebp)
	leal	-100(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_VARIANTS_TDYNARRAYPOSITIONS$non_lazy_ptr-Lj119(%ebx),%edx
	movl	-12(%ebp),%eax
	leal	12(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj176
	decl	-16(%ebp)
	.align 2
Lj177:
	incl	-16(%ebp)
	movl	-12(%ebp),%edx
	movl	4(%edx),%edx
	movl	-16(%ebp),%ecx
	movl	$0,(%edx,%ecx,4)
	movl	-16(%ebp),%edx
	cmpl	$0,%edx
	jg	Lj180
	jmp	Lj181
Lj180:
	movl	-12(%ebp),%edx
	movl	12(%edx),%ecx
	movl	-16(%ebp),%edx
	decl	%edx
	movl	(%ecx,%edx,4),%ecx
	movl	-12(%ebp),%edx
	movl	12(%edx),%esi
	movl	-16(%ebp),%edi
	movl	(%ecx),%edx
	movl	%edx,(%esi,%edi,4)
Lj181:
	movl	16(%ebp),%edx
	movzbl	1(%edx),%edx
	addl	$2,%edx
	addl	%edx,16(%ebp)
	movl	16(%ebp),%edx
	movl	%edx,16(%ebp)
	movl	-12(%ebp),%edx
	movl	8(%edx),%ecx
	movl	-16(%ebp),%esi
	movl	16(%ebp),%edx
	movl	(%edx),%edx
	movl	%edx,(%ecx,%esi,4)
	addl	$4,16(%ebp)
	movl	16(%ebp),%edx
	movl	(%edx),%edx
	movl	%edx,16(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj177
Lj176:
	movl	-12(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	decl	%eax
	movl	-12(%ebp),%edx
	movl	(%ecx,%eax,4),%eax
	movl	%eax,20(%edx)
Lj136:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_VARIANTS_TDYNARRAYBOUNDS$non_lazy_ptr-Lj119(%ebx),%edx
	leal	8(%ebp),%eax
	call	LFPC_DYNARRAY_DECR_REF$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj137
	call	LFPC_RERAISE$stub
Lj137:
Lj132:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj134
	leal	-100(%ebp),%ecx
	leal	-80(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-84(%ebp)
	testl	%eax,%eax
	jne	Lj195
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj196
	jmp	Lj197
Lj196:
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_VARIANTS_TDYNARRAYITER_$__DONE$stub
Lj197:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj195:
	call	LFPC_POPADDRSTACK$stub
	movl	-84(%ebp),%eax
	testl	%eax,%eax
	je	Lj194
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj194:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj134
Lj134:
Lj118:
	movl	-12(%ebp),%eax
	movl	-112(%ebp),%ebx
	movl	-108(%ebp),%esi
	movl	-104(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TDYNARRAYITER_$__NEXT$$BOOLEAN
_VARIANTS_TDYNARRAYITER_$__NEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-6(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	decl	%edx
	movl	%ebp,%eax
	call	L_VARIANTS_TDYNARRAYITER_$_NEXT$$BOOLEAN_INCDIM$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	decl	%eax
	movl	-4(%ebp),%edx
	movl	(%ecx,%eax,4),%eax
	movl	%eax,20(%edx)
	movb	-6(%ebp),%al
	testb	%al,%al
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TDYNARRAYITER_$_NEXT$$BOOLEAN_INCDIM$LONGINT
_VARIANTS_TDYNARRAYITER_$_NEXT$$BOOLEAN_INCDIM$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,-6(%eax)
	jne	Lj216
	jmp	Lj217
Lj216:
	jmp	Lj204
Lj217:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	incl	(%edx,%eax,4)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	8(%eax),%esi
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	12(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	(%esi,%ebx,4),%eax
	addl	%eax,(%ecx,%edx,4)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	4(%eax),%ebx
	movl	-4(%ebp),%esi
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%ecx
	movl	(%ebx,%esi,4),%eax
	cmpl	(%edx,%ecx,4),%eax
	jge	Lj218
	jmp	Lj219
Lj218:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$0,(%edx,%eax,4)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj222
	jmp	Lj223
Lj222:
	movl	-4(%ebp),%edx
	decl	%edx
	movl	-8(%ebp),%eax
	call	L_VARIANTS_TDYNARRAYITER_$_NEXT$$BOOLEAN_INCDIM$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%ebx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	12(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	(%ebx),%eax
	movl	%eax,(%ecx,%edx,4)
	jmp	Lj230
Lj223:
	movl	-8(%ebp),%eax
	movb	$1,-6(%eax)
Lj230:
Lj219:
Lj204:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TDYNARRAYITER_$__DONE
_VARIANTS_TDYNARRAYITER_$__DONE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj234
Lj234:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_INIT_VARIANTS_TDYNARRAYBOUNDS$non_lazy_ptr-Lj234(%ebx),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_dynarray_clear$stub
	movl	L_INIT_VARIANTS_TDYNARRAYBOUNDS$non_lazy_ptr-Lj234(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	Lfpc_dynarray_clear$stub
	movl	L_INIT_VARIANTS_TDYNARRAYBOUNDS$non_lazy_ptr-Lj234(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	8(%eax),%eax
	call	Lfpc_dynarray_clear$stub
	movl	L_INIT_VARIANTS_TDYNARRAYPOSITIONS$non_lazy_ptr-Lj234(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	12(%eax),%eax
	call	Lfpc_dynarray_clear$stub
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj251
	jmp	Lj252
Lj251:
	movl	L_INIT_VARIANTS_TDYNARRAYITER$non_lazy_ptr-Lj234(%ebx),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_finalize$stub
Lj252:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$24,%ecx
	call	Lfpc_help_destructor$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARINIT$VARIANT
_VARIANTS_SYSVARINIT$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	$0,(%eax)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARCLEAR$VARIANT
_VARIANTS_SYSVARCLEAR$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj268
Lj268:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj269
	jmp	Lj270
Lj269:
	movl	-4(%ebp),%eax
	movl	L_TC_SYSTEM_VARCLEARPROC$non_lazy_ptr-Lj268(%ebx),%edx
	movl	(%edx),%edx
	call	*%edx
	jmp	Lj273
Lj270:
	movl	-4(%ebp),%eax
	movw	$0,(%eax)
Lj273:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARTOINT$VARIANT$$LONGINT
_VARIANTS_SYSVARTOINT$VARIANT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj277
Lj277:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_VARTYPE$VARIANT$$WORD$stub
	movzwl	%ax,%eax
	cmpl	$1,%eax
	je	Lj278
	jmp	Lj279
Lj278:
	movl	L_TC_VARIANTS_NULLSTRICTCONVERT$non_lazy_ptr-Lj277(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj282
	jmp	Lj283
Lj282:
	movw	$20,%dx
	movw	$1,%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
	jmp	Lj288
Lj283:
	movl	$0,-8(%ebp)
Lj288:
	jmp	Lj291
Lj279:
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOLONGINT$TVARDATA$$LONGINT$stub
	movl	%eax,-8(%ebp)
Lj291:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARTOINT64$VARIANT$$INT64
_VARIANTS_SYSVARTOINT64$VARIANT$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj297
Lj297:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_VARTYPE$VARIANT$$WORD$stub
	movzwl	%ax,%eax
	cmpl	$1,%eax
	je	Lj298
	jmp	Lj299
Lj298:
	movl	L_TC_VARIANTS_NULLSTRICTCONVERT$non_lazy_ptr-Lj297(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj302
	jmp	Lj303
Lj302:
	movw	$20,%dx
	movw	$1,%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
	jmp	Lj308
Lj303:
	movl	$0,-12(%ebp)
	movl	$0,-8(%ebp)
Lj308:
	jmp	Lj311
Lj299:
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOINT64$TVARDATA$$INT64$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
Lj311:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARTOWORD64$VARIANT$$QWORD
_VARIANTS_SYSVARTOWORD64$VARIANT$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj317
Lj317:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_VARTYPE$VARIANT$$WORD$stub
	movzwl	%ax,%eax
	cmpl	$1,%eax
	je	Lj318
	jmp	Lj319
Lj318:
	movl	L_TC_VARIANTS_NULLSTRICTCONVERT$non_lazy_ptr-Lj317(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj322
	jmp	Lj323
Lj322:
	movw	$21,%dx
	movw	$1,%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
	jmp	Lj328
Lj323:
	movl	$0,-12(%ebp)
	movl	$0,-8(%ebp)
Lj328:
	jmp	Lj331
Lj319:
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOQWORD$TVARDATA$$QWORD$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
Lj331:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARTOBOOL$VARIANT$$BOOLEAN
_VARIANTS_SYSVARTOBOOL$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj337
Lj337:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_VARTYPE$VARIANT$$WORD$stub
	movzwl	%ax,%eax
	cmpl	$1,%eax
	je	Lj338
	jmp	Lj339
Lj338:
	movl	L_TC_VARIANTS_NULLSTRICTCONVERT$non_lazy_ptr-Lj337(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj342
	jmp	Lj343
Lj342:
	movw	$11,%dx
	movw	$1,%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
	jmp	Lj348
Lj343:
	movb	$0,-5(%ebp)
Lj348:
	jmp	Lj351
Lj339:
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN$stub
	movb	%al,-5(%ebp)
Lj351:
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARTOREAL$VARIANT$$EXTENDED
_VARIANTS_SYSVARTOREAL$VARIANT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%esi,-48(%ebp)
	call	Lj357
Lj357:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_VARTYPE$VARIANT$$WORD$stub
	movzwl	%ax,%eax
	cmpl	$1,%eax
	je	Lj358
	jmp	Lj359
Lj358:
	movl	L_TC_VARIANTS_NULLSTRICTCONVERT$non_lazy_ptr-Lj357(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj362
	jmp	Lj363
Lj362:
	movw	$5,%dx
	movw	$1,%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
	jmp	Lj368
Lj363:
	fldz
	fstpt	-24(%ebp)
Lj368:
	jmp	Lj371
Lj359:
	leal	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj372
	jmp	Lj373
Lj372:
	leal	-44(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTINIT$TVARDATA$stub
	movw	$5,(%esp)
	movl	-4(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	fldl	-36(%ebp)
	fstpt	-24(%ebp)
	jmp	Lj390
Lj373:
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE$stub
	fstpt	-24(%ebp)
Lj390:
Lj371:
	fldt	-24(%ebp)
	movl	-52(%ebp),%ebx
	movl	-48(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARTOCURR$VARIANT$$CURRENCY
_VARIANTS_SYSVARTOCURR$VARIANT$$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj396
Lj396:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_VARTYPE$VARIANT$$WORD$stub
	movzwl	%ax,%eax
	cmpl	$1,%eax
	je	Lj397
	jmp	Lj398
Lj397:
	movl	L_TC_VARIANTS_NULLSTRICTCONVERT$non_lazy_ptr-Lj396(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj401
	jmp	Lj402
Lj401:
	movw	$6,%dx
	movw	$1,%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
	jmp	Lj407
Lj402:
	fldz
	fistpq	-12(%ebp)
Lj407:
	jmp	Lj410
Lj398:
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	fistpq	-12(%ebp)
Lj410:
	fildq	-12(%ebp)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_CUSTOMVARTOLSTR$TVARDATA$ANSISTRING$$BOOLEAN
_VARIANTS_CUSTOMVARTOLSTR$TVARDATA$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj423
	jmp	Lj424
Lj423:
	leal	-32(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTINIT$TVARDATA$stub
	movw	$256,(%esp)
	movl	-4(%ebp),%ecx
	leal	-32(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,(%edx)
Lj424:
	movb	-9(%ebp),%al
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARTOLSTR$ANSISTRING$VARIANT
_VARIANTS_SYSVARTOLSTR$ANSISTRING$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj438
Lj438:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj439
	movl	-8(%ebp),%eax
	call	L_VARIANTS_VARTYPE$VARIANT$$WORD$stub
	movzwl	%ax,%eax
	cmpl	$1,%eax
	je	Lj442
	jmp	Lj443
Lj442:
	movl	L_TC_VARIANTS_NULLSTRICTCONVERT$non_lazy_ptr-Lj438(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj446
	jmp	Lj447
Lj446:
	movw	$256,%dx
	movw	$1,%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
	jmp	Lj452
Lj447:
	movl	L_TC_VARIANTS_NULLASSTRINGVALUE$non_lazy_ptr-Lj438(%ebx),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_VARIANTS_NULLASSTRINGVALUE$non_lazy_ptr-Lj438(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esi)
Lj452:
	jmp	Lj455
Lj443:
	movl	-4(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,%edx
	movl	-8(%ebp),%eax
	call	L_VARIANTS_CUSTOMVARTOLSTR$TVARDATA$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj456
	jmp	Lj457
Lj456:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,(%esi)
Lj457:
Lj455:
Lj439:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj440
	call	LFPC_RERAISE$stub
Lj440:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARTOPSTR$formal$VARIANT
_VARIANTS_SYSVARTOPSTR$formal$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj470
	movl	-8(%ebp),%edx
	leal	-12(%ebp),%eax
	call	L_VARIANTS_SYSVARTOLSTR$ANSISTRING$VARIANT$stub
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
Lj470:
	call	LFPC_POPADDRSTACK$stub
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj471
	call	LFPC_RERAISE$stub
Lj471:
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARTOWSTR$WIDESTRING$VARIANT
_VARIANTS_SYSVARTOWSTR$WIDESTRING$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj490
Lj490:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj491
	movl	-8(%ebp),%eax
	call	L_VARIANTS_VARTYPE$VARIANT$$WORD$stub
	movzwl	%ax,%eax
	cmpl	$1,%eax
	je	Lj494
	jmp	Lj495
Lj494:
	movl	L_TC_VARIANTS_NULLSTRICTCONVERT$non_lazy_ptr-Lj490(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj498
	jmp	Lj499
Lj498:
	movw	$8,%dx
	movw	$1,%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
	jmp	Lj504
Lj499:
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	L_TC_VARIANTS_NULLASSTRINGVALUE$non_lazy_ptr-Lj490(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_ansistr_to_unicodestr$stub
	movl	-52(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,(%esi)
Lj504:
	jmp	Lj511
Lj495:
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,(%esi)
Lj511:
Lj491:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj492
	call	LFPC_RERAISE$stub
Lj492:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARTOINTF$IUNKNOWN$VARIANT
_VARIANTS_SYSVARTOINTF$IUNKNOWN$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj519
Lj519:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj522
	decw	%ax
	je	Lj523
	subw	$8,%ax
	je	Lj526
	subw	$3,%ax
	je	Lj528
	decw	%ax
	je	Lj524
	subw	$16380,%ax
	je	Lj527
	subw	$3,%ax
	je	Lj528
	decw	%ax
	je	Lj525
	jmp	Lj521
Lj522:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,(%ebx)
	jmp	Lj520
Lj523:
	movl	L_TC_VARIANTS_NULLSTRICTCONVERT$non_lazy_ptr-Lj519(%esi),%eax
	cmpb	$0,(%eax)
	jne	Lj531
	jmp	Lj532
Lj531:
	movw	$13,%dx
	movw	$1,%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
	jmp	Lj537
Lj532:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,(%ebx)
Lj537:
	jmp	Lj520
Lj524:
	movl	-8(%ebp),%edi
	movl	8(%edi),%eax
	call	LFPC_INTF_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	8(%edi),%eax
	movl	%eax,(%ebx)
	jmp	Lj520
Lj525:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edi
	movl	(%edi),%eax
	call	LFPC_INTF_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	(%edi),%eax
	movl	%eax,(%ebx)
	jmp	Lj520
Lj526:
	movl	-8(%ebp),%edi
	movl	8(%edi),%eax
	call	LFPC_INTF_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	8(%edi),%eax
	movl	%eax,(%ebx)
	jmp	Lj520
Lj527:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edi
	movl	(%edi),%eax
	call	LFPC_INTF_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	(%edi),%eax
	movl	%eax,(%ebx)
	jmp	Lj520
Lj528:
	movl	-8(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj549
	jmp	Lj548
Lj548:
	call	L_VARIANTS_VARBADTYPEERROR$stub
Lj549:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARTOINTF$IUNKNOWN$VARIANT$stub
	jmp	Lj520
Lj521:
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	movw	$13,%dx
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
Lj520:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARTODISP$IDISPATCH$VARIANT
_VARIANTS_SYSVARTODISP$IDISPATCH$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj559
Lj559:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj562
	decw	%ax
	je	Lj563
	subw	$8,%ax
	je	Lj566
	subw	$3,%ax
	je	Lj568
	decw	%ax
	je	Lj564
	subw	$16380,%ax
	je	Lj567
	subw	$3,%ax
	je	Lj568
	decw	%ax
	je	Lj565
	jmp	Lj561
Lj562:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,(%ebx)
	jmp	Lj560
Lj563:
	movl	L_TC_VARIANTS_NULLSTRICTCONVERT$non_lazy_ptr-Lj559(%esi),%eax
	cmpb	$0,(%eax)
	jne	Lj571
	jmp	Lj572
Lj571:
	movw	$9,%dx
	movw	$1,%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
	jmp	Lj577
Lj572:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,(%ebx)
Lj577:
	jmp	Lj560
Lj564:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	%ebx,8(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$VARIANTS$_Ld43$non_lazy_ptr-Lj559(%esi),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	*(%eax)
	testl	%eax,%eax
	jne	Lj580
	jmp	Lj581
Lj580:
	movw	$9,%dx
	movw	$13,%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
Lj581:
	jmp	Lj560
Lj565:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	%ebx,8(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$VARIANTS$_Ld44$non_lazy_ptr-Lj559(%esi),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	call	*(%eax)
	testl	%eax,%eax
	jne	Lj592
	jmp	Lj593
Lj592:
	movw	$9,%dx
	movw	$16397,%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
Lj593:
	jmp	Lj560
Lj566:
	movl	-8(%ebp),%edi
	movl	8(%edi),%eax
	call	LFPC_INTF_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	8(%edi),%eax
	movl	%eax,(%ebx)
	jmp	Lj560
Lj567:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edi
	movl	(%edi),%eax
	call	LFPC_INTF_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	(%edi),%eax
	movl	%eax,(%ebx)
	jmp	Lj560
Lj568:
	movl	-8(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj609
	jmp	Lj608
Lj608:
	call	L_VARIANTS_VARBADTYPEERROR$stub
Lj609:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARTODISP$IDISPATCH$VARIANT$stub
	jmp	Lj560
Lj561:
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	movw	$9,%dx
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
Lj560:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARTOTDATETIME$VARIANT$$TDATETIME
_VARIANTS_SYSVARTOTDATETIME$VARIANT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj619
Lj619:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_VARTYPE$VARIANT$$WORD$stub
	movzwl	%ax,%eax
	cmpl	$1,%eax
	je	Lj620
	jmp	Lj621
Lj620:
	movl	L_TC_VARIANTS_NULLSTRICTCONVERT$non_lazy_ptr-Lj619(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj624
	jmp	Lj625
Lj624:
	movw	$7,%dx
	movw	$1,%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
	jmp	Lj630
Lj625:
	fldz
	fstpl	-12(%ebp)
Lj630:
	jmp	Lj633
Lj621:
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTODATE$TVARDATA$$TDATETIME$stub
	fstpl	-12(%ebp)
Lj633:
	fldl	-12(%ebp)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DYNAMICARRAYISRECTANGULAR$POINTER$POINTER$$BOOLEAN
_VARIANTS_DYNAMICARRAYISRECTANGULAR$POINTER$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movzbl	1(%eax),%eax
	addl	$2,%eax
	addl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	addl	$4,%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jne	Lj650
	jmp	Lj649
Lj650:
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	cmpb	$21,%al
	je	Lj648
	jmp	Lj649
Lj648:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$4,%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	subl	$4,%eax
	movl	(%eax),%ebx
	movl	$1,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj654
	decl	-20(%ebp)
	.align 2
Lj655:
	incl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$4,%eax
	movl	(%eax),%eax
	cmpl	-16(%ebp),%eax
	jne	Lj656
	jmp	Lj657
Lj656:
	jmp	Lj638
Lj657:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_VARIANTS_DYNAMICARRAYISRECTANGULAR$POINTER$POINTER$$BOOLEAN$stub
	testb	%al,%al
	je	Lj658
	jmp	Lj659
Lj658:
	jmp	Lj638
Lj659:
	addl	$4,-4(%ebp)
	cmpl	-20(%ebp),%ebx
	jg	Lj655
Lj654:
Lj649:
	movb	$1,-9(%ebp)
Lj638:
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARTODYNARRAY$POINTER$VARIANT$POINTER
_VARIANTS_SYSVARTODYNARRAY$POINTER$VARIANT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DYNARRAYFROMVARIANT$POINTER$VARIANT$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARFROMBOOL$VARIANT$BOOLEAN
_VARIANTS_SYSVARFROMBOOL$VARIANT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARIFCOMPLEX$TVARDATA$stub
	movl	-4(%ebp),%eax
	movw	$11,(%eax)
	movl	-4(%ebp),%edx
	movb	-8(%ebp),%al
	orb	%al,%al
	setneb	%al
	movzbw	%al,%ax
	negw	%ax
	movw	%ax,8(%edx)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARIANTERRORINVALIDINTEGERRANGE$LONGINT
_VARIANTS_VARIANTERRORINVALIDINTEGERRANGE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	call	Lj685
Lj685:
	popl	%ebx
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
	jne	Lj686
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	L_RESSTR_VARIANTS_SERRINVALIDINTEGERRANGE$non_lazy_ptr-Lj685(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%ecx
	movl	L_VMT_SYSUTILS_EVARIANTERROR$non_lazy_ptr-Lj685(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj685(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj686:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj687
	call	LFPC_RERAISE$stub
Lj687:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARFROMINT$VARIANT$LONGINT$LONGINT
_VARIANTS_SYSVARFROMINT$VARIANT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj706
Lj706:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARIFCOMPLEX$TVARDATA$stub
	movl	L_TC_VARIANTS_PACKVARCREATION$non_lazy_ptr-Lj706(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj709
	jmp	Lj710
Lj709:
	movl	-12(%ebp),%eax
	cmpl	$-4,%eax
	je	Lj713
	cmpl	$-2,%eax
	je	Lj714
	cmpl	$-1,%eax
	je	Lj715
	cmpl	$1,%eax
	je	Lj716
	cmpl	$2,%eax
	je	Lj717
	cmpl	$4,%eax
	je	Lj718
	jmp	Lj712
Lj713:
	movl	-4(%ebp),%eax
	movw	$3,(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,8(%eax)
	jmp	Lj711
Lj714:
	movl	-4(%ebp),%eax
	movw	$2,(%eax)
	movl	-4(%ebp),%edx
	movw	-8(%ebp),%ax
	movw	%ax,8(%edx)
	jmp	Lj711
Lj715:
	movl	-4(%ebp),%eax
	movw	$16,(%eax)
	movl	-4(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,8(%eax)
	jmp	Lj711
Lj716:
	movl	-4(%ebp),%eax
	movw	$17,(%eax)
	movl	-4(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,8(%eax)
	jmp	Lj711
Lj717:
	movl	-4(%ebp),%eax
	movw	$18,(%eax)
	movl	-4(%ebp),%eax
	movw	-8(%ebp),%dx
	movw	%dx,8(%eax)
	jmp	Lj711
Lj718:
	movl	-4(%ebp),%eax
	movw	$19,(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,8(%eax)
	jmp	Lj711
Lj712:
	movl	-12(%ebp),%eax
	call	L_VARIANTS_VARIANTERRORINVALIDINTEGERRANGE$LONGINT$stub
Lj711:
	jmp	Lj745
Lj710:
	movl	-4(%ebp),%eax
	movw	$3,(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,8(%eax)
Lj745:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARFROMINT64$VARIANT$INT64
_VARIANTS_SYSVARFROMINT64$VARIANT$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARIFCOMPLEX$TVARDATA$stub
	movl	-4(%ebp),%eax
	movw	$20,(%eax)
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,8(%edx)
	movl	12(%ebp),%eax
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARFROMWORD64$VARIANT$QWORD
_VARIANTS_SYSVARFROMWORD64$VARIANT$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARIFCOMPLEX$TVARDATA$stub
	movl	-4(%ebp),%eax
	movw	$21,(%eax)
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,8(%edx)
	movl	12(%ebp),%eax
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARFROMREAL$VARIANT$EXTENDED
_VARIANTS_SYSVARFROMREAL$VARIANT$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARIFCOMPLEX$TVARDATA$stub
	movl	-4(%ebp),%eax
	movw	$5,(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARFROMSINGLE$VARIANT$SINGLE
_VARIANTS_SYSVARFROMSINGLE$VARIANT$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARIFCOMPLEX$TVARDATA$stub
	movl	-4(%ebp),%eax
	movw	$4,(%eax)
	movl	-4(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARFROMDOUBLE$VARIANT$DOUBLE
_VARIANTS_SYSVARFROMDOUBLE$VARIANT$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARIFCOMPLEX$TVARDATA$stub
	movl	-4(%ebp),%eax
	movw	$5,(%eax)
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,8(%edx)
	movl	12(%ebp),%eax
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARFROMCURR$VARIANT$CURRENCY
_VARIANTS_SYSVARFROMCURR$VARIANT$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARIFCOMPLEX$TVARDATA$stub
	movl	-4(%ebp),%eax
	movw	$6,(%eax)
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,8(%edx)
	movl	12(%ebp),%eax
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARFROMTDATETIME$VARIANT$TDATETIME
_VARIANTS_SYSVARFROMTDATETIME$VARIANT$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARIFCOMPLEX$TVARDATA$stub
	movl	-4(%ebp),%eax
	movw	$7,(%eax)
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,8(%edx)
	movl	12(%ebp),%eax
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARFROMPSTR$VARIANT$SHORTSTRING
_VARIANTS_SYSVARFROMPSTR$VARIANT$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj808
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARIFCOMPLEX$TVARDATA$stub
	movl	-4(%ebp),%eax
	movw	$256,(%eax)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,8(%ebx)
Lj808:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj809
	call	LFPC_RERAISE$stub
Lj809:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARFROMLSTR$VARIANT$ANSISTRING
_VARIANTS_SYSVARFROMLSTR$VARIANT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARIFCOMPLEX$TVARDATA$stub
	movl	-4(%ebp),%eax
	movw	$256,(%eax)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,8(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARFROMWSTR$VARIANT$WIDESTRING
_VARIANTS_SYSVARFROMWSTR$VARIANT$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARIFCOMPLEX$TVARDATA$stub
	movl	-4(%ebp),%eax
	movw	$8,(%eax)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,8(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARFROMINTF$VARIANT$IUNKNOWN
_VARIANTS_SYSVARFROMINTF$VARIANT$IUNKNOWN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARIFCOMPLEX$TVARDATA$stub
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-8(%ebp),%eax
	call	LFPC_INTF_INCR_REF$stub
	movl	-4(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,8(%ebx)
	movl	-4(%ebp),%eax
	movw	$13,(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARFROMDISP$VARIANT$IDISPATCH
_VARIANTS_SYSVARFROMDISP$VARIANT$IDISPATCH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARIFCOMPLEX$TVARDATA$stub
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-8(%ebp),%eax
	call	LFPC_INTF_INCR_REF$stub
	movl	-4(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,8(%ebx)
	movl	-4(%ebp),%eax
	movw	$9,(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_MAPTOCOMMONTYPE$WORD$$TCOMMONTYPE
_VARIANTS_MAPTOCOMMONTYPE$WORD$$TCOMMONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj864
Lj864:
	popl	%ecx
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	subw	$21,%ax
	jbe	Lj867
	subw	$235,%ax
	je	Lj868
	decw	%ax
	je	Lj869
	jmp	Lj866
Lj867:
	movzwl	-4(%ebp),%edx
	movl	L_TC_VARIANTS_VARTYPETOCOMMONTYPE$non_lazy_ptr-Lj864(%ecx),%eax
	movl	(%eax,%edx,4),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj865
Lj868:
	movl	$11,-8(%ebp)
	jmp	Lj865
Lj869:
	movl	$1,-8(%ebp)
	jmp	Lj865
Lj866:
	movl	$2,-8(%ebp)
Lj865:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCMPSIMPLE$TCOMMONTYPE$TCOMMONTYPE$TCOMMONTYPE$$SHORTINT
_VARIANTS_DOVARCMPSIMPLE$TCOMMONTYPE$TCOMMONTYPE$TCOMMONTYPE$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-12(%ebp),%eax
	je	Lj880
	jmp	Lj881
Lj880:
	movl	-8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	je	Lj882
	jmp	Lj883
Lj882:
	movb	$0,-13(%ebp)
	jmp	Lj886
Lj883:
	movb	$-1,-13(%ebp)
Lj886:
	jmp	Lj889
Lj881:
	movb	$1,-13(%ebp)
Lj889:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCMPANY$TVARDATA$TVARDATA$TVAROP$$SHORTINT
_VARIANTS_DOVARCMPANY$TVARDATA$TVARDATA$TVAROP$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP$stub
	movb	$0,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCMPLONGINT$LONGINT$LONGINT$$SHORTINT
_VARIANTS_DOVARCMPLONGINT$LONGINT$LONGINT$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj904
	jmp	Lj905
Lj904:
	movb	$-1,-9(%ebp)
	jmp	Lj908
Lj905:
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj909
	jmp	Lj910
Lj909:
	movb	$1,-9(%ebp)
	jmp	Lj913
Lj910:
	movb	$0,-9(%ebp)
Lj913:
Lj908:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCMPFLOAT$DOUBLE$DOUBLE$TVAROP$$SHORTINT
_VARIANTS_DOVARCMPFLOAT$DOUBLE$DOUBLE$TVAROP$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	fldl	8(%ebp)
	fldl	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj918
	jmp	Lj919
Lj918:
	movb	$0,-5(%ebp)
	jmp	Lj922
Lj919:
	movl	-4(%ebp),%eax
	subl	$14,%eax
	cmpl	$2,%eax
	jb	Lj926
Lj926:
	jc	Lj923
	jmp	Lj925
Lj925:
	fldl	8(%ebp)
	fldl	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj923
	jmp	Lj924
Lj923:
	movb	$-1,-5(%ebp)
	jmp	Lj929
Lj924:
	movb	$1,-5(%ebp)
Lj929:
Lj922:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCMPINT64$INT64$INT64$$SHORTINT
_VARIANTS_DOVARCMPINT64$INT64$INT64$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	cmpl	12(%ebp),%edx
	jl	Lj934
	jg	Lj935
	cmpl	8(%ebp),%eax
	jb	Lj934
	jmp	Lj935
	jmp	Lj935
Lj934:
	movb	$-1,-1(%ebp)
	jmp	Lj938
Lj935:
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	cmpl	12(%ebp),%edx
	jg	Lj939
	jl	Lj940
	cmpl	8(%ebp),%eax
	ja	Lj939
	jmp	Lj940
	jmp	Lj940
Lj939:
	movb	$1,-1(%ebp)
	jmp	Lj943
Lj940:
	movb	$0,-1(%ebp)
Lj943:
Lj938:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCMPNULL$TCOMMONTYPE$TCOMMONTYPE$TVAROP$$SHORTINT
_VARIANTS_DOVARCMPNULL$TCOMMONTYPE$TCOMMONTYPE$TVAROP$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj947
Lj947:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	subl	$14,%eax
	cmpl	$2,%eax
	jb	Lj950
Lj950:
	jc	Lj948
	jmp	Lj949
Lj948:
	movl	L_TC_VARIANTS_NULLEQUALITYRULE$non_lazy_ptr-Lj947(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj953
	decl	%eax
	je	Lj954
	decl	%eax
	je	Lj955
	jmp	Lj952
Lj953:
	call	L_VARIANTS_VARINVALIDNULLOP$stub
	jmp	Lj951
Lj954:
	movl	-12(%ebp),%edx
	movl	L_TC_VARIANTS_DOVARCMPNULL$crcE32A7B0D_RESULTMAP$non_lazy_ptr-Lj947(%ebx),%eax
	movb	-14(%eax,%edx,1),%al
	movb	%al,-13(%ebp)
	jmp	Lj951
Lj955:
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	seteb	%al
	movl	-12(%ebp),%edx
	cmpl	$15,%edx
	seteb	%dl
	xorb	%dl,%al
	movzbl	%al,%eax
	imull	$6,%eax
	movl	-12(%ebp),%edx
	movl	L_TC_VARIANTS_DOVARCMPNULL$crcE32A7B0D_RESULTMAP$non_lazy_ptr-Lj947(%ebx),%ecx
	leal	(%eax,%ecx),%ecx
	movb	-14(%ecx,%edx,1),%al
	movb	%al,-13(%ebp)
	jmp	Lj951
Lj952:
Lj951:
	jmp	Lj960
Lj949:
	movl	L_TC_VARIANTS_NULLMAGNITUDERULE$non_lazy_ptr-Lj947(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj963
	decl	%eax
	je	Lj964
	decl	%eax
	je	Lj965
	jmp	Lj962
Lj963:
	call	L_VARIANTS_VARINVALIDNULLOP$stub
	jmp	Lj961
Lj964:
	movl	-12(%ebp),%edx
	movl	L_TC_VARIANTS_DOVARCMPNULL$crcE32A7B0D_RESULTMAP$non_lazy_ptr-Lj947(%ebx),%eax
	movb	-14(%eax,%edx,1),%al
	movb	%al,-13(%ebp)
	jmp	Lj961
Lj965:
	movl	-4(%ebp),%eax
	cmpl	$9,%eax
	je	Lj970
	jmp	Lj971
Lj970:
	movl	-8(%ebp),%eax
	cmpl	$9,%eax
	je	Lj972
	jmp	Lj973
Lj972:
	movb	$0,%al
	jmp	Lj976
Lj973:
	movb	$-1,%al
Lj976:
	jmp	Lj979
Lj971:
	movb	$1,%al
Lj979:
	movb	%al,-13(%ebp)
	jmp	Lj961
Lj962:
Lj961:
Lj960:
	movb	-13(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCMPCURR$CURRENCY$CURRENCY$$SHORTINT
_VARIANTS_DOVARCMPCURR$CURRENCY$CURRENCY$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	fildq	8(%ebp)
	fildq	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj984
	jmp	Lj985
Lj984:
	movb	$-1,-1(%ebp)
	jmp	Lj988
Lj985:
	fildq	8(%ebp)
	fildq	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj989
	jmp	Lj990
Lj989:
	movb	$1,-1(%ebp)
	jmp	Lj993
Lj990:
	movb	$0,-1(%ebp)
Lj993:
Lj988:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCMPWSTRDIRECT$POINTER$POINTER$TVAROP$$SHORTINT
_VARIANTS_DOVARCMPWSTRDIRECT$POINTER$POINTER$TVAROP$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj997
Lj997:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	subl	$14,%eax
	cmpl	$2,%eax
	jb	Lj1000
Lj1000:
	jc	Lj998
	jmp	Lj999
Lj998:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj1003
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj1003:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1004
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj1004:
	cmpl	%eax,%edx
	jne	Lj1001
	jmp	Lj1002
Lj1001:
	movb	$-1,-13(%ebp)
	jmp	Lj996
Lj1002:
Lj999:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj997(%ebx),%ecx
	movl	16(%ecx),%ecx
	call	*%ecx
	movb	%al,-13(%ebp)
Lj996:
	movb	-13(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCMPWSTR$TVARDATA$TVARDATA$TVAROP$$SHORTINT
_VARIANTS_DOVARCMPWSTR$TVARDATA$TVARDATA$TVAROP$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1017
	leal	-60(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING$stub
	movl	-60(%ebp),%ebx
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING$stub
	movl	-64(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	%ebx,%edx
	call	L_VARIANTS_DOVARCMPWSTRDIRECT$POINTER$POINTER$TVAROP$$SHORTINT$stub
	movb	%al,-13(%ebp)
Lj1017:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1018
	call	LFPC_RERAISE$stub
Lj1018:
	movb	-13(%ebp),%al
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCMPLSTRDIRECT$POINTER$POINTER$TVAROP$$SHORTINT
_VARIANTS_DOVARCMPLSTRDIRECT$POINTER$POINTER$TVAROP$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	subl	$14,%eax
	cmpl	$2,%eax
	jb	Lj1040
Lj1040:
	jc	Lj1038
	jmp	Lj1039
Lj1038:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1043
	movl	-4(%eax),%eax
Lj1043:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj1044
	movl	-4(%edx),%edx
Lj1044:
	cmpl	%edx,%eax
	jne	Lj1041
	jmp	Lj1042
Lj1041:
	movb	$-1,-13(%ebp)
	jmp	Lj1036
Lj1042:
Lj1039:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_COMPARESTR$ANSISTRING$ANSISTRING$$LONGINT$stub
	movb	%al,-13(%ebp)
Lj1036:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCMPLSTR$TVARDATA$TVARDATA$TVAROP$$SHORTINT
_VARIANTS_DOVARCMPLSTR$TVARDATA$TVARDATA$TVAROP$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1055
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING$stub
	movl	-60(%ebp),%ebx
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	%ebx,%edx
	call	L_VARIANTS_DOVARCMPLSTRDIRECT$POINTER$POINTER$TVAROP$$SHORTINT$stub
	movb	%al,-13(%ebp)
Lj1055:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1056
	call	LFPC_RERAISE$stub
Lj1056:
	movb	-13(%ebp),%al
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCMPCOMPLEX$TVARDATA$TVARDATA$TVAROP$$SHORTINT
_VARIANTS_DOVARCMPCOMPLEX$TVARDATA$TVARDATA$TVAROP$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj1076
	jmp	Lj1078
Lj1078:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj1076
	jmp	Lj1077
Lj1076:
	movl	-12(%ebp),%eax
	subl	$14,%eax
	cmpl	$2,%eax
	jb	Lj1081
Lj1081:
	jc	Lj1079
	jmp	Lj1080
Lj1079:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movw	(%eax),%ax
	cmpw	(%edx),%ax
	seteb	%dl
	movl	-12(%ebp),%eax
	cmpl	$15,%eax
	seteb	%al
	xorb	%al,%dl
	testb	%dl,%dl
	jne	Lj1082
	jmp	Lj1083
Lj1082:
	movb	$0,-13(%ebp)
	jmp	Lj1086
Lj1083:
	movb	$-1,-13(%ebp)
Lj1086:
	jmp	Lj1089
Lj1080:
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj1090
	jmp	Lj1091
Lj1090:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj1092
	jmp	Lj1093
Lj1092:
	movb	$0,-13(%ebp)
	jmp	Lj1096
Lj1093:
	movb	$-1,-13(%ebp)
Lj1096:
	jmp	Lj1099
Lj1091:
	movb	$1,-13(%ebp)
Lj1099:
Lj1089:
	jmp	Lj1102
Lj1077:
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1103
	jmp	Lj1104
Lj1103:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*152(%ebx)
	movb	%al,-21(%ebp)
	jmp	Lj1119
Lj1104:
	leal	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1120
	jmp	Lj1121
Lj1120:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*152(%ebx)
	movb	%al,-21(%ebp)
	jmp	Lj1136
Lj1121:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP$stub
Lj1136:
Lj1119:
	movl	-12(%ebp),%eax
	cmpl	$14,%eax
	jb	Lj1144
	subl	$14,%eax
	je	Lj1145
	decl	%eax
	je	Lj1146
	decl	%eax
	jb	Lj1144
	subl	$1,%eax
	jbe	Lj1147
	decl	%eax
	subl	$1,%eax
	jbe	Lj1148
	jmp	Lj1144
Lj1145:
	cmpb	$0,-21(%ebp)
	jne	Lj1149
	jmp	Lj1150
Lj1149:
	movb	$0,-13(%ebp)
	jmp	Lj1153
Lj1150:
	movb	$1,-13(%ebp)
Lj1153:
	jmp	Lj1143
Lj1146:
	cmpb	$0,-21(%ebp)
	jne	Lj1156
	jmp	Lj1157
Lj1156:
	movb	$1,-13(%ebp)
	jmp	Lj1160
Lj1157:
	movb	$0,-13(%ebp)
Lj1160:
	jmp	Lj1143
Lj1147:
	cmpb	$0,-21(%ebp)
	jne	Lj1163
	jmp	Lj1164
Lj1163:
	movb	$-1,-13(%ebp)
	jmp	Lj1167
Lj1164:
	movb	$1,-13(%ebp)
Lj1167:
	jmp	Lj1143
Lj1148:
	cmpb	$0,-21(%ebp)
	jne	Lj1170
	jmp	Lj1171
Lj1170:
	movb	$1,-13(%ebp)
	jmp	Lj1174
Lj1171:
	movb	$-1,-13(%ebp)
Lj1174:
	jmp	Lj1143
Lj1144:
Lj1143:
Lj1102:
	movb	-13(%ebp),%al
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCMP$TVARDATA$TVARDATA$TVAROP$$SHORTINT
_VARIANTS_DOVARCMP$TVARDATA$TVARDATA$TVAROP$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	call	Lj1178
Lj1178:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_VARTYPEDEREF$TVARDATA$$WORD$stub
	call	L_VARIANTS_MAPTOCOMMONTYPE$WORD$$TCOMMONTYPE$stub
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	call	L_VARIANTS_VARTYPEDEREF$TVARDATA$$WORD$stub
	call	L_VARIANTS_MAPTOCOMMONTYPE$WORD$$TCOMMONTYPE$stub
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	imull	$48,%eax
	movl	-24(%ebp),%ecx
	movl	L_TC_VARIANTS_FINDCMPCOMMONTYPE$non_lazy_ptr-Lj1178(%esi),%edx
	leal	(%eax,%edx),%edx
	movl	(%edx,%ecx,4),%eax
	testl	%eax,%eax
	je	Lj1193
	decl	%eax
	je	Lj1194
	subl	$2,%eax
	je	Lj1195
	decl	%eax
	je	Lj1197
	decl	%eax
	je	Lj1196
	decl	%eax
	je	Lj1201
	decl	%eax
	je	Lj1202
	decl	%eax
	je	Lj1198
	decl	%eax
	je	Lj1199
	decl	%eax
	je	Lj1200
	decl	%eax
	je	Lj1203
	jmp	Lj1192
Lj1193:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1206
	jmp	Lj1207
Lj1206:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj1208
	jmp	Lj1209
Lj1208:
	movb	$0,%al
	jmp	Lj1212
Lj1209:
	movb	$-1,%al
Lj1212:
	jmp	Lj1215
Lj1207:
	movb	$1,%al
Lj1215:
	movb	%al,-13(%ebp)
	jmp	Lj1191
Lj1194:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCMPANY$TVARDATA$TVARDATA$TVAROP$$SHORTINT$stub
	movb	%al,-13(%ebp)
	jmp	Lj1191
Lj1195:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOLONGINT$TVARDATA$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOLONGINT$TVARDATA$$LONGINT$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj1236
	jmp	Lj1237
Lj1236:
	movb	$-1,%dl
	jmp	Lj1240
Lj1237:
	movl	-32(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jg	Lj1241
	jmp	Lj1242
Lj1241:
	movb	$1,%dl
	jmp	Lj1245
Lj1242:
	movb	$0,%dl
Lj1245:
Lj1240:
	movb	%dl,-13(%ebp)
	jmp	Lj1191
Lj1196:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE$stub
	fstpl	(%esp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE$stub
	fstpl	8(%esp)
	movl	-12(%ebp),%eax
	call	L_VARIANTS_DOVARCMPFLOAT$DOUBLE$DOUBLE$TVAROP$$SHORTINT$stub
	movb	%al,-13(%ebp)
	jmp	Lj1191
Lj1197:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN$stub
	movzbl	%al,%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN$stub
	movzbl	%al,%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj1274
	jmp	Lj1275
Lj1274:
	movb	$-1,%dl
	jmp	Lj1278
Lj1275:
	movl	-32(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jg	Lj1279
	jmp	Lj1280
Lj1279:
	movb	$1,%dl
	jmp	Lj1283
Lj1280:
	movb	$0,%dl
Lj1283:
Lj1278:
	movb	%dl,-13(%ebp)
	jmp	Lj1191
Lj1198:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOINT64$TVARDATA$$INT64$stub
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOINT64$TVARDATA$$INT64$stub
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	call	L_VARIANTS_DOVARCMPINT64$INT64$INT64$$SHORTINT$stub
	movb	%al,-13(%ebp)
	jmp	Lj1191
Lj1199:
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_VARIANTS_DOVARCMPNULL$TCOMMONTYPE$TCOMMONTYPE$TVAROP$$SHORTINT$stub
	movb	%al,-13(%ebp)
	jmp	Lj1191
Lj1200:
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$8,%eax
	je	Lj1306
	jmp	Lj1305
Lj1306:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$8,%eax
	je	Lj1304
	jmp	Lj1305
Lj1304:
	movl	-12(%ebp),%eax
	subl	$14,%eax
	cmpl	$2,%eax
	jb	Lj1312
Lj1312:
	jc	Lj1310
	jmp	Lj1311
Lj1310:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	testl	%edx,%edx
	je	Lj1315
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj1315:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj1316
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj1316:
	cmpl	%eax,%edx
	jne	Lj1313
	jmp	Lj1314
Lj1313:
	movb	$-1,%bl
	jmp	Lj1309
Lj1314:
Lj1311:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj1178(%esi),%ecx
	movl	16(%ecx),%ecx
	call	*%ecx
	movb	%al,%bl
Lj1309:
	movb	%bl,-13(%ebp)
	jmp	Lj1327
Lj1305:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCMPWSTR$TVARDATA$TVARDATA$TVAROP$$SHORTINT$stub
	movb	%al,-13(%ebp)
Lj1327:
	jmp	Lj1191
Lj1201:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTODATE$TVARDATA$$TDATETIME$stub
	fstpl	(%esp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTODATE$TVARDATA$$TDATETIME$stub
	fstpl	8(%esp)
	movl	-12(%ebp),%eax
	call	L_VARIANTS_DOVARCMPFLOAT$DOUBLE$DOUBLE$TVAROP$$SHORTINT$stub
	movb	%al,-13(%ebp)
	jmp	Lj1191
Lj1202:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	fistpq	(%esp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	fistpq	8(%esp)
	call	L_VARIANTS_DOVARCMPCURR$CURRENCY$CURRENCY$$SHORTINT$stub
	movb	%al,-13(%ebp)
	jmp	Lj1191
Lj1203:
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$256,%eax
	je	Lj1360
	jmp	Lj1359
Lj1360:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$256,%eax
	je	Lj1358
	jmp	Lj1359
Lj1358:
	movl	-12(%ebp),%eax
	subl	$14,%eax
	cmpl	$2,%eax
	jb	Lj1366
Lj1366:
	jc	Lj1364
	jmp	Lj1365
Lj1364:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	testl	%edx,%edx
	je	Lj1369
	movl	-4(%edx),%edx
Lj1369:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj1370
	movl	-4(%eax),%eax
Lj1370:
	cmpl	%eax,%edx
	jne	Lj1367
	jmp	Lj1368
Lj1367:
	movb	$-1,%bl
	jmp	Lj1363
Lj1368:
Lj1365:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSUTILS_COMPARESTR$ANSISTRING$ANSISTRING$$LONGINT$stub
	movb	%al,%bl
Lj1363:
	movb	%bl,-13(%ebp)
	jmp	Lj1379
Lj1359:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCMPLSTR$TVARDATA$TVARDATA$TVAROP$$SHORTINT$stub
	movb	%al,-13(%ebp)
Lj1379:
	jmp	Lj1191
Lj1192:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCMPCOMPLEX$TVARDATA$TVARDATA$TVAROP$$SHORTINT$stub
	movb	%al,-13(%ebp)
Lj1191:
	movb	-13(%ebp),%al
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSCMPOP$VARIANT$VARIANT$TVAROP$$BOOLEAN
_VARIANTS_SYSCMPOP$VARIANT$VARIANT$TVAROP$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCMP$TVARDATA$TVARDATA$TVAROP$$SHORTINT$stub
	movb	%al,-14(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$14,%eax
	jb	Lj1407
	subl	$14,%eax
	je	Lj1408
	decl	%eax
	je	Lj1409
	decl	%eax
	je	Lj1410
	decl	%eax
	je	Lj1411
	decl	%eax
	je	Lj1412
	decl	%eax
	je	Lj1413
	jmp	Lj1407
Lj1408:
	movb	-14(%ebp),%al
	testb	%al,%al
	seteb	-13(%ebp)
	jmp	Lj1406
Lj1409:
	movb	-14(%ebp),%al
	testb	%al,%al
	setneb	-13(%ebp)
	jmp	Lj1406
Lj1410:
	movb	-14(%ebp),%al
	cmpb	$0,%al
	setlb	-13(%ebp)
	jmp	Lj1406
Lj1411:
	movb	-14(%ebp),%al
	cmpb	$0,%al
	setleb	-13(%ebp)
	jmp	Lj1406
Lj1412:
	movb	-14(%ebp),%al
	cmpb	$0,%al
	setgb	-13(%ebp)
	jmp	Lj1406
Lj1413:
	movb	-14(%ebp),%al
	cmpb	$0,%al
	setgeb	-13(%ebp)
	jmp	Lj1406
Lj1407:
	call	L_VARIANTS_VARINVALIDOP$stub
Lj1406:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVAROPFLOAT$TVARDATA$TVARDATA$TVAROP
_VARIANTS_DOVAROPFLOAT$TVARDATA$TVARDATA$TVAROP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE$stub
	fstpl	-20(%ebp)
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE$stub
	fstpl	-28(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1438
	decl	%eax
	je	Lj1439
	decl	%eax
	je	Lj1440
	decl	%eax
	je	Lj1441
	subl	$17,%eax
	je	Lj1442
	jmp	Lj1437
Lj1438:
	fldl	-28(%ebp)
	fldl	-20(%ebp)
	faddp	%st,%st(1)
	fstpl	-20(%ebp)
	jmp	Lj1436
Lj1439:
	fldl	-28(%ebp)
	fldl	-20(%ebp)
	fsubp	%st,%st(1)
	fstpl	-20(%ebp)
	jmp	Lj1436
Lj1440:
	fldl	-28(%ebp)
	fldl	-20(%ebp)
	fmulp	%st,%st(1)
	fstpl	-20(%ebp)
	jmp	Lj1436
Lj1441:
	fldl	-28(%ebp)
	fldl	-20(%ebp)
	fdivp	%st,%st(1)
	fstpl	-20(%ebp)
	jmp	Lj1436
Lj1442:
	fldl	-28(%ebp)
	fstpt	-64(%ebp)
	fldl	-20(%ebp)
	fstpt	-80(%ebp)
	movl	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-60(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-80(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-76(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-72(%ebp),%eax
	movl	%eax,20(%esp)
	call	L_MATH_POWER$EXTENDED$EXTENDED$$EXTENDED$stub
	fstpt	-48(%ebp)
	fldt	-48(%ebp)
	fstpl	-20(%ebp)
	jmp	Lj1436
Lj1437:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP$stub
Lj1436:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj1469
	jmp	Lj1470
Lj1469:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj1470:
	movl	-4(%ebp),%eax
	movw	$5,(%eax)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-16(%ebp),%eax
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVAROPANY$TVARDATA$TVARDATA$TVAROP
_VARIANTS_DOVAROPANY$TVARDATA$TVARDATA$TVAROP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVAROPLONGINT$TVARDATA$TVARDATA$TVAROP
_VARIANTS_DOVAROPLONGINT$TVARDATA$TVARDATA$TVAROP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOLONGINT$TVARDATA$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOLONGINT$TVARDATA$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$4,%eax
	jb	Lj1496
	subl	$4,%eax
	je	Lj1497
	decl	%eax
	je	Lj1498
	decl	%eax
	je	Lj1499
	decl	%eax
	je	Lj1500
	decl	%eax
	je	Lj1501
	decl	%eax
	je	Lj1502
	decl	%eax
	je	Lj1503
	jmp	Lj1496
Lj1497:
	movl	-16(%ebp),%eax
	cltd
	idivl	-20(%ebp)
	movl	%eax,-16(%ebp)
	jmp	Lj1495
Lj1498:
	movl	-16(%ebp),%eax
	cltd
	idivl	-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj1495
Lj1499:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	shll	%cl,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1495
Lj1500:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1495
Lj1501:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	andl	%edx,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1495
Lj1502:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1495
Lj1503:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	xorl	%edx,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1495
Lj1496:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP$stub
Lj1495:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj1524
	jmp	Lj1525
Lj1524:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj1525:
	movl	-4(%ebp),%eax
	movw	$3,(%eax)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,8(%edx)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVAROPINT64$TVARDATA$TVARDATA$TVAROP
_VARIANTS_DOVAROPINT64$TVARDATA$TVARDATA$TVAROP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-120(%ebp)
	call	Lj1533
Lj1533:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOINT64$TVARDATA$$INT64$stub
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOINT64$TVARDATA$$INT64$stub
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	movb	$0,-29(%ebp)
	movl	-12(%ebp),%eax
	subl	$2,%eax
	jbe	Lj1546
	subl	$2,%eax
	je	Lj1547
	decl	%eax
	je	Lj1548
	decl	%eax
	je	Lj1549
	decl	%eax
	je	Lj1550
	decl	%eax
	je	Lj1551
	decl	%eax
	je	Lj1552
	decl	%eax
	je	Lj1553
	subl	$10,%eax
	je	Lj1546
	jmp	Lj1545
Lj1546:
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj1556
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1562
	subl	$1,%eax
	je	Lj1563
	subl	$1,%eax
	je	Lj1564
	subl	$18,%eax
	je	Lj1565
	jmp	Lj1561
Lj1562:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	-28(%ebp),%eax
	adcl	-24(%ebp),%edx
	jno	Lj1568
	call	LFPC_OVERFLOW$stub
Lj1568:
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj1560
Lj1563:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	-28(%ebp),%eax
	sbbl	-24(%ebp),%edx
	jno	Lj1571
	call	LFPC_OVERFLOW$stub
Lj1571:
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj1560
Lj1564:
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$-1,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj1560
Lj1565:
	fildq	-20(%ebp)
	fstpt	(%esp)
	movl	-28(%ebp),%eax
	call	L_MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED$stub
	fistpq	-80(%ebp)
	fwait
	movl	-80(%ebp),%eax
	movl	-76(%ebp),%edx
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj1560
Lj1561:
Lj1560:
Lj1556:
	call	LFPC_POPADDRSTACK$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj1558
	movl	L_VMT_SYSUTILS_ERANGEERROR$non_lazy_ptr-Lj1533(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj1588
	movl	%eax,-76(%ebp)
	leal	-92(%ebp),%ecx
	leal	-116(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-80(%ebp)
	testl	%eax,%eax
	jne	Lj1589
	movb	$1,-29(%ebp)
Lj1589:
	call	LFPC_POPADDRSTACK$stub
	movl	-80(%ebp),%eax
	testl	%eax,%eax
	je	Lj1593
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1593:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1558
Lj1588:
	movl	L_VMT_SYSUTILS_EINTOVERFLOW$non_lazy_ptr-Lj1533(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj1594
	movl	%eax,-116(%ebp)
	leal	-84(%ebp),%ecx
	leal	-112(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1595
	movb	$1,-29(%ebp)
Lj1595:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1599
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1599:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1558
Lj1594:
	call	LFPC_RERAISE$stub
Lj1558:
	jmp	Lj1544
Lj1547:
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,8(%esp)
	call	Lfpc_div_int64$stub
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj1544
Lj1548:
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,8(%esp)
	call	Lfpc_mod_int64$stub
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj1544
Lj1549:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ecx
	cmpl	$64,%ecx
	jl	Lj1614
	xorl	%edx,%edx
	xorl	%eax,%eax
	jmp	Lj1616
Lj1614:
	cmpl	$32,%ecx
	jl	Lj1615
	subl	$32,%ecx
	shll	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj1616
Lj1615:
	shldl	%cl,%edx,%eax
	shll	%cl,%edx
Lj1616:
	movl	%edx,-20(%ebp)
	movl	%eax,-16(%ebp)
	jmp	Lj1544
Lj1550:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	-28(%ebp),%ecx
	cmpl	$64,%ecx
	jl	Lj1619
	xorl	%eax,%eax
	xorl	%edx,%edx
	jmp	Lj1621
Lj1619:
	cmpl	$32,%ecx
	jl	Lj1620
	subl	$32,%ecx
	shrl	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj1621
Lj1620:
	shrdl	%cl,%edx,%eax
	shrl	%cl,%edx
Lj1621:
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj1544
Lj1551:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	andl	-28(%ebp),%eax
	andl	-24(%ebp),%edx
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj1544
Lj1552:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	orl	-28(%ebp),%eax
	orl	-24(%ebp),%edx
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj1544
Lj1553:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	xorl	-28(%ebp),%eax
	xorl	-24(%ebp),%edx
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj1544
Lj1545:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP$stub
Lj1544:
	cmpb	$0,-29(%ebp)
	jne	Lj1634
	jmp	Lj1635
Lj1634:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPFLOAT$TVARDATA$TVARDATA$TVAROP$stub
	jmp	Lj1642
Lj1635:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj1643
	jmp	Lj1644
Lj1643:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj1644:
	movl	-4(%ebp),%eax
	movw	$20,(%eax)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-16(%ebp),%eax
	movl	%eax,12(%edx)
Lj1642:
	movl	-120(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVAROPINT64TO32$TVARDATA$TVARDATA$TVAROP
_VARIANTS_DOVAROPINT64TO32$TVARDATA$TVARDATA$TVAROP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPINT64$TVARDATA$TVARDATA$TVAROP$stub
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$20,%eax
	je	Lj1662
	jmp	Lj1660
Lj1662:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	12(%eax),%eax
	cmpl	$-1,%eax
	jg	Lj1661
	jl	Lj1660
	cmpl	$-2147483648,%edx
	jae	Lj1661
	jmp	Lj1660
Lj1661:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	12(%eax),%eax
	cmpl	$0,%eax
	jl	Lj1659
	jg	Lj1660
	cmpl	$2147483647,%edx
	jbe	Lj1659
	jmp	Lj1660
Lj1659:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movw	$3,(%eax)
Lj1660:
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVAROPBOOL$TVARDATA$TVARDATA$TVAROP
_VARIANTS_DOVAROPBOOL$TVARDATA$TVARDATA$TVAROP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN$stub
	movb	%al,-14(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$8,%eax
	jb	Lj1678
	subl	$8,%eax
	je	Lj1679
	subl	$1,%eax
	je	Lj1680
	subl	$1,%eax
	je	Lj1681
	jmp	Lj1678
Lj1679:
	cmpb	$0,-13(%ebp)
	jne	Lj1684
	jmp	Lj1683
Lj1684:
	cmpb	$0,-14(%ebp)
	jne	Lj1682
	jmp	Lj1683
Lj1682:
	movb	$1,-13(%ebp)
	jmp	Lj1685
Lj1683:
	movb	$0,-13(%ebp)
Lj1685:
	jmp	Lj1677
Lj1680:
	cmpb	$0,-13(%ebp)
	jne	Lj1686
	jmp	Lj1688
Lj1688:
	cmpb	$0,-14(%ebp)
	jne	Lj1686
	jmp	Lj1687
Lj1686:
	movb	$1,-13(%ebp)
	jmp	Lj1689
Lj1687:
	movb	$0,-13(%ebp)
Lj1689:
	jmp	Lj1677
Lj1681:
	movb	-13(%ebp),%dl
	movb	-14(%ebp),%al
	xorb	%al,%dl
	movb	%dl,-13(%ebp)
	jmp	Lj1677
Lj1678:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP$stub
Lj1677:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj1698
	jmp	Lj1699
Lj1698:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj1699:
	movl	-4(%ebp),%eax
	movw	$11,(%eax)
	movl	-4(%ebp),%edx
	movb	-13(%ebp),%al
	orb	%al,%al
	setneb	%al
	movzbw	%al,%ax
	negw	%ax
	movw	%ax,8(%edx)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVAROPNULL$TVARDATA$TVARDATA$TVAROP
_VARIANTS_DOVAROPNULL$TVARDATA$TVARDATA$TVAROP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1709
Lj1709:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$8,%eax
	je	Lj1710
	jmp	Lj1712
Lj1712:
	movl	-12(%ebp),%eax
	cmpl	$9,%eax
	je	Lj1710
	jmp	Lj1711
Lj1710:
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj1713
	jmp	Lj1714
Lj1713:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj1715
	jmp	Lj1716
Lj1715:
	jmp	Lj1717
Lj1716:
	movl	-12(%ebp),%eax
	cmpl	$8,%eax
	je	Lj1718
	jmp	Lj1719
Lj1718:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1720
	jmp	Lj1721
Lj1720:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	L_TC_SYSTEM_VARCOPYPROC$non_lazy_ptr-Lj1709(%ebx),%ecx
	movl	(%ecx),%ecx
	call	*%ecx
Lj1721:
	jmp	Lj1728
Lj1719:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1729
	jmp	Lj1730
Lj1729:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	L_TC_SYSTEM_VARCOPYPROC$non_lazy_ptr-Lj1709(%ebx),%ecx
	movl	(%ecx),%ecx
	call	*%ecx
Lj1730:
Lj1728:
Lj1717:
	jmp	Lj1737
Lj1714:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj1738
	jmp	Lj1739
Lj1738:
	movl	-12(%ebp),%eax
	cmpl	$8,%eax
	je	Lj1740
	jmp	Lj1741
Lj1740:
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1742
	jmp	Lj1743
Lj1742:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj1746
	jmp	Lj1747
Lj1746:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj1747:
	movl	-4(%ebp),%eax
	movw	$1,(%eax)
Lj1743:
	jmp	Lj1752
Lj1741:
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1753
	jmp	Lj1754
Lj1753:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj1757
	jmp	Lj1758
Lj1757:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj1758:
	movl	-4(%ebp),%eax
	movw	$1,(%eax)
Lj1754:
Lj1752:
	jmp	Lj1763
Lj1739:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP$stub
Lj1763:
Lj1737:
	jmp	Lj1770
Lj1711:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj1771
	jmp	Lj1772
Lj1771:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj1772:
	movl	-4(%ebp),%eax
	movw	$1,(%eax)
Lj1770:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVAROPWSTRCAT$TVARDATA$TVARDATA
_VARIANTS_DOVAROPWSTRCAT$TVARDATA$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
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
	jne	Lj1779
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING$stub
	movl	-56(%ebp),%ebx
	leal	-60(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING$stub
	movl	-60(%ebp),%edx
	leal	-12(%ebp),%eax
	movl	%ebx,%ecx
	call	Lfpc_unicodestr_concat$stub
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj1796
	jmp	Lj1797
Lj1796:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj1797:
	movl	-4(%ebp),%eax
	movw	$8,(%eax)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,8(%eax)
	movl	$0,-12(%ebp)
Lj1779:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1780
	call	LFPC_RERAISE$stub
Lj1780:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVAROPLSTRCAT$TVARDATA$TVARDATA
_VARIANTS_DOVAROPLSTRCAT$TVARDATA$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
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
	jne	Lj1814
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING$stub
	movl	-56(%ebp),%ebx
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING$stub
	movl	-60(%ebp),%edx
	leal	-12(%ebp),%eax
	movl	%ebx,%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj1831
	jmp	Lj1832
Lj1831:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj1832:
	movl	-4(%ebp),%eax
	movw	$256,(%eax)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,8(%eax)
	movl	$0,-12(%ebp)
Lj1814:
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
	je	Lj1815
	call	LFPC_RERAISE$stub
Lj1815:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVAROPDATE$TVARDATA$TVARDATA$TVAROP
_VARIANTS_DOVAROPDATE$TVARDATA$TVARDATA$TVAROP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTODATE$TVARDATA$$TDATETIME$stub
	fstpl	-20(%ebp)
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTODATE$TVARDATA$$TDATETIME$stub
	fstpl	-28(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1859
	subl	$1,%eax
	je	Lj1860
	jmp	Lj1858
Lj1859:
	fldl	-28(%ebp)
	fldl	-20(%ebp)
	faddp	%st,%st(1)
	fstpl	-20(%ebp)
	jmp	Lj1857
Lj1860:
	fldl	-28(%ebp)
	fldl	-20(%ebp)
	fsubp	%st,%st(1)
	fstpl	-20(%ebp)
	jmp	Lj1857
Lj1858:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP$stub
Lj1857:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj1871
	jmp	Lj1872
Lj1871:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj1872:
	movl	-4(%ebp),%eax
	movw	$7,(%eax)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-16(%ebp),%eax
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVAROPCURR$TVARDATA$TVARDATA$TVAROP$TCOMMONTYPE$TCOMMONTYPE
_VARIANTS_DOVAROPCURR$TVARDATA$TVARDATA$TVAROP$TCOMMONTYPE$TCOMMONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-92(%ebp)
	call	Lj1880
Lj1880:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1883
	subl	$1,%eax
	je	Lj1884
	subl	$1,%eax
	je	Lj1885
	subl	$1,%eax
	je	Lj1886
	subl	$17,%eax
	je	Lj1887
	jmp	Lj1882
Lj1883:
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	fistpq	-40(%ebp)
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	fildq	-40(%ebp)
	faddp	%st,%st(1)
	fistpq	-20(%ebp)
	jmp	Lj1881
Lj1884:
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	fistpq	-40(%ebp)
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	fildq	-40(%ebp)
	fsubp	%st,%st(1)
	fistpq	-20(%ebp)
	jmp	Lj1881
Lj1885:
	movl	12(%ebp),%eax
	cmpl	$7,%eax
	je	Lj1900
	jmp	Lj1901
Lj1900:
	movl	8(%ebp),%eax
	cmpl	$7,%eax
	je	Lj1902
	jmp	Lj1903
Lj1902:
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	fistpq	-40(%ebp)
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	fildq	-40(%ebp)
	fmulp	%st,%st(1)
	movl	L_$VARIANTS$_Ld45$non_lazy_ptr-Lj1880(%ebx),%eax
	fildq	(%eax)
	fdivrp	%st,%st(1)
	fistpq	-20(%ebp)
	jmp	Lj1910
Lj1903:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE$stub
	movl	L_$VARIANTS$_Ld46$non_lazy_ptr-Lj1880(%ebx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	fistpq	-40(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	fildq	-40(%ebp)
	fmulp	%st,%st(1)
	movl	L_$VARIANTS$_Ld45$non_lazy_ptr-Lj1880(%ebx),%eax
	fildq	(%eax)
	fdivrp	%st,%st(1)
	fistpq	-20(%ebp)
Lj1910:
	jmp	Lj1917
Lj1901:
	movl	8(%ebp),%eax
	cmpl	$7,%eax
	je	Lj1918
	jmp	Lj1919
Lj1918:
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE$stub
	movl	L_$VARIANTS$_Ld46$non_lazy_ptr-Lj1880(%ebx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	fistpq	-40(%ebp)
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	fildq	-40(%ebp)
	fmulp	%st,%st(1)
	movl	L_$VARIANTS$_Ld45$non_lazy_ptr-Lj1880(%ebx),%eax
	fildq	(%eax)
	fdivrp	%st,%st(1)
	fistpq	-20(%ebp)
	jmp	Lj1926
Lj1919:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP$stub
Lj1926:
Lj1917:
	jmp	Lj1881
Lj1886:
	movl	12(%ebp),%eax
	cmpl	$7,%eax
	je	Lj1933
	jmp	Lj1934
Lj1933:
	movl	8(%ebp),%eax
	cmpl	$7,%eax
	je	Lj1935
	jmp	Lj1936
Lj1935:
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	fistpq	-40(%ebp)
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	fildq	-40(%ebp)
	fdivp	%st,%st(1)
	movl	L_$VARIANTS$_Ld45$non_lazy_ptr-Lj1880(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-20(%ebp)
	jmp	Lj1943
Lj1936:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE$stub
	movl	L_$VARIANTS$_Ld46$non_lazy_ptr-Lj1880(%ebx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	fistpq	-40(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	fildq	-40(%ebp)
	fdivrp	%st,%st(1)
	movl	L_$VARIANTS$_Ld45$non_lazy_ptr-Lj1880(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-20(%ebp)
Lj1943:
	jmp	Lj1950
Lj1934:
	movl	8(%ebp),%eax
	cmpl	$7,%eax
	je	Lj1951
	jmp	Lj1952
Lj1951:
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	fistpq	-40(%ebp)
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	fildq	-40(%ebp)
	fdivp	%st,%st(1)
	movl	L_$VARIANTS$_Ld45$non_lazy_ptr-Lj1880(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	movl	L_$VARIANTS$_Ld45$non_lazy_ptr-Lj1880(%ebx),%eax
	fildq	(%eax)
	fdivrp	%st,%st(1)
	fstpl	-40(%ebp)
	fldl	-40(%ebp)
	fstpl	-28(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj1959
	jmp	Lj1960
Lj1959:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj1960:
	movl	-4(%ebp),%eax
	movw	$5,(%eax)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-24(%ebp),%eax
	movl	%eax,12(%edx)
	jmp	Lj1879
	jmp	Lj1967
Lj1952:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP$stub
Lj1967:
Lj1950:
	jmp	Lj1881
Lj1887:
	movl	12(%ebp),%eax
	cmpl	$7,%eax
	je	Lj1974
	jmp	Lj1975
Lj1974:
	movl	8(%ebp),%eax
	cmpl	$7,%eax
	je	Lj1976
	jmp	Lj1977
Lj1976:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	movl	L_$VARIANTS$_Ld45$non_lazy_ptr-Lj1880(%ebx),%eax
	fildq	(%eax)
	fdivrp	%st,%st(1)
	fstpt	-72(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	movl	L_$VARIANTS$_Ld45$non_lazy_ptr-Lj1880(%ebx),%eax
	fildq	(%eax)
	fdivrp	%st,%st(1)
	fstpt	-88(%ebp)
	movl	-72(%ebp),%eax
	movl	%eax,(%esp)
	movl	-68(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-64(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-88(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-84(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-80(%ebp),%eax
	movl	%eax,20(%esp)
	call	L_MATH_POWER$EXTENDED$EXTENDED$$EXTENDED$stub
	fstpt	-56(%ebp)
	movl	L_$VARIANTS$_Ld47$non_lazy_ptr-Lj1880(%ebx),%eax
	fldt	(%eax)
	fldt	-56(%ebp)
	fmulp	%st,%st(1)
	fistpq	-20(%ebp)
	jmp	Lj1994
Lj1977:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE$stub
	fstpt	-64(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	movl	L_$VARIANTS$_Ld45$non_lazy_ptr-Lj1880(%ebx),%eax
	fildq	(%eax)
	fdivrp	%st,%st(1)
	fstpt	-80(%ebp)
	movl	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-60(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-80(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-76(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-72(%ebp),%eax
	movl	%eax,20(%esp)
	call	L_MATH_POWER$EXTENDED$EXTENDED$$EXTENDED$stub
	fstpt	-48(%ebp)
	movl	L_$VARIANTS$_Ld47$non_lazy_ptr-Lj1880(%ebx),%eax
	fldt	(%eax)
	fldt	-48(%ebp)
	fmulp	%st,%st(1)
	fistpq	-20(%ebp)
Lj1994:
	jmp	Lj2011
Lj1975:
	movl	8(%ebp),%eax
	cmpl	$7,%eax
	je	Lj2012
	jmp	Lj2013
Lj2012:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	movl	L_$VARIANTS$_Ld45$non_lazy_ptr-Lj1880(%ebx),%eax
	fildq	(%eax)
	fdivrp	%st,%st(1)
	fstpt	-64(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE$stub
	fstpt	-80(%ebp)
	movl	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-60(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-80(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-76(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-72(%ebp),%eax
	movl	%eax,20(%esp)
	call	L_MATH_POWER$EXTENDED$EXTENDED$$EXTENDED$stub
	fstpt	-48(%ebp)
	movl	L_$VARIANTS$_Ld47$non_lazy_ptr-Lj1880(%ebx),%eax
	fldt	(%eax)
	fldt	-48(%ebp)
	fmulp	%st,%st(1)
	fistpq	-20(%ebp)
	jmp	Lj2030
Lj2013:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP$stub
Lj2030:
Lj2011:
	jmp	Lj1881
Lj1882:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP$stub
Lj1881:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj2043
	jmp	Lj2044
Lj2043:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj2044:
	movl	-4(%ebp),%eax
	movw	$6,(%eax)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-16(%ebp),%eax
	movl	%eax,12(%edx)
Lj1879:
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVAROPCOMPLEX$TVARDATA$TVARDATA$TVAROP
_VARIANTS_DOVAROPCOMPLEX$TVARDATA$TVARDATA$TVAROP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2053
	jmp	Lj2054
Lj2053:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*144(%ebx)
	jmp	Lj2067
Lj2054:
	leal	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2068
	jmp	Lj2069
Lj2068:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*144(%ebx)
	jmp	Lj2082
Lj2069:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP$stub
Lj2082:
Lj2067:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVAROP$VARIANT$VARIANT$TVAROP
_VARIANTS_SYSVAROP$VARIANT$VARIANT$TVAROP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj2090
Lj2090:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_VARTYPEDEREF$VARIANT$$WORD$stub
	call	L_VARIANTS_MAPTOCOMMONTYPE$WORD$$TCOMMONTYPE$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	call	L_VARIANTS_VARTYPEDEREF$VARIANT$$WORD$stub
	call	L_VARIANTS_MAPTOCOMMONTYPE$WORD$$TCOMMONTYPE$stub
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	imull	$48,%eax
	movl	-20(%ebp),%edx
	movl	L_TC_VARIANTS_FINDOPCOMMONTYPE$non_lazy_ptr-Lj2090(%ebx),%ecx
	leal	(%eax,%ecx),%ecx
	movl	(%ecx,%edx,4),%eax
	testl	%eax,%eax
	je	Lj2105
	subl	$1,%eax
	je	Lj2106
	subl	$2,%eax
	je	Lj2107
	subl	$1,%eax
	je	Lj2109
	subl	$1,%eax
	je	Lj2108
	subl	$1,%eax
	je	Lj2113
	subl	$1,%eax
	je	Lj2114
	subl	$1,%eax
	je	Lj2110
	subl	$1,%eax
	je	Lj2111
	subl	$1,%eax
	je	Lj2112
	subl	$1,%eax
	je	Lj2115
	jmp	Lj2104
Lj2105:
	movl	-12(%ebp),%eax
	cmpl	$3,%eax
	jb	Lj2117
	subl	$3,%eax
	je	Lj2118
	subl	$1,%eax
	jb	Lj2117
	subl	$1,%eax
	jbe	Lj2119
	jmp	Lj2117
Lj2118:
	movl	$7,%eax
	call	L_SYSTEM_ERROR$TRUNTIMEERROR$stub
	jmp	Lj2116
Lj2119:
	movl	$3,%eax
	call	L_SYSTEM_ERROR$TRUNTIMEERROR$stub
	jmp	Lj2116
Lj2117:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEAR$TVARDATA$stub
Lj2116:
	jmp	Lj2103
Lj2106:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPANY$TVARDATA$TVARDATA$TVAROP$stub
	jmp	Lj2103
Lj2107:
	movl	-12(%ebp),%eax
	subl	$2,%eax
	jbe	Lj2134
	subl	$1,%eax
	je	Lj2135
	subl	$17,%eax
	je	Lj2134
	jmp	Lj2133
Lj2134:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPINT64TO32$TVARDATA$TVARDATA$TVAROP$stub
	jmp	Lj2132
Lj2135:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPFLOAT$TVARDATA$TVARDATA$TVAROP$stub
	jmp	Lj2132
Lj2133:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPLONGINT$TVARDATA$TVARDATA$TVAROP$stub
Lj2132:
	jmp	Lj2103
Lj2108:
	movl	-12(%ebp),%eax
	cmpl	$4,%eax
	jb	Lj2156
Lj2156:
	jc	Lj2154
	jmp	Lj2155
Lj2154:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPFLOAT$TVARDATA$TVARDATA$TVAROP$stub
	jmp	Lj2163
Lj2155:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPINT64TO32$TVARDATA$TVARDATA$TVAROP$stub
Lj2163:
	jmp	Lj2103
Lj2109:
	movl	-12(%ebp),%eax
	subl	$2,%eax
	jbe	Lj2172
	subl	$2,%eax
	jb	Lj2171
	subl	$3,%eax
	jbe	Lj2173
	subl	$1,%eax
	subl	$2,%eax
	jbe	Lj2174
	subl	$10,%eax
	je	Lj2172
	jmp	Lj2171
Lj2172:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPFLOAT$TVARDATA$TVARDATA$TVAROP$stub
	jmp	Lj2170
Lj2173:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPLONGINT$TVARDATA$TVARDATA$TVAROP$stub
	jmp	Lj2170
Lj2174:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPBOOL$TVARDATA$TVARDATA$TVAROP$stub
	jmp	Lj2170
Lj2171:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP$stub
Lj2170:
	jmp	Lj2103
Lj2110:
	movl	-12(%ebp),%eax
	cmpl	$3,%eax
	jne	Lj2199
	jmp	Lj2200
Lj2199:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPINT64$TVARDATA$TVARDATA$TVAROP$stub
	jmp	Lj2207
Lj2200:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPFLOAT$TVARDATA$TVARDATA$TVAROP$stub
Lj2207:
	jmp	Lj2103
Lj2111:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPNULL$TVARDATA$TVARDATA$TVAROP$stub
	jmp	Lj2103
Lj2112:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2222
	subl	$1,%eax
	jb	Lj2221
	subl	$2,%eax
	jbe	Lj2223
	subl	$1,%eax
	subl	$6,%eax
	jbe	Lj2224
	subl	$10,%eax
	je	Lj2223
	jmp	Lj2221
Lj2222:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPWSTRCAT$TVARDATA$TVARDATA$stub
	jmp	Lj2220
Lj2223:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPFLOAT$TVARDATA$TVARDATA$TVAROP$stub
	jmp	Lj2220
Lj2224:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPINT64TO32$TVARDATA$TVARDATA$TVAROP$stub
	jmp	Lj2220
Lj2221:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP$stub
Lj2220:
	jmp	Lj2103
Lj2113:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2249
	subl	$1,%eax
	je	Lj2250
	subl	$1,%eax
	jb	Lj2248
	subl	$1,%eax
	jbe	Lj2251
	jmp	Lj2248
Lj2249:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPDATE$TVARDATA$TVARDATA$TVAROP$stub
	jmp	Lj2247
Lj2250:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPDATE$TVARDATA$TVARDATA$TVAROP$stub
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	je	Lj2264
	jmp	Lj2265
Lj2264:
	movl	-4(%ebp),%eax
	movw	$5,(%eax)
Lj2265:
	jmp	Lj2247
Lj2251:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPFLOAT$TVARDATA$TVARDATA$TVAROP$stub
	jmp	Lj2247
Lj2248:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPINT64TO32$TVARDATA$TVARDATA$TVAROP$stub
Lj2247:
	jmp	Lj2103
Lj2114:
	movl	-12(%ebp),%eax
	cmpl	$4,%eax
	jb	Lj2282
	cmpl	$20,%eax
	stc
	je	Lj2282
	clc
Lj2282:
	jc	Lj2280
	jmp	Lj2281
Lj2280:
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPCURR$TVARDATA$TVARDATA$TVAROP$TCOMMONTYPE$TCOMMONTYPE$stub
	jmp	Lj2293
Lj2281:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPINT64TO32$TVARDATA$TVARDATA$TVAROP$stub
Lj2293:
	jmp	Lj2103
Lj2115:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2302
	subl	$1,%eax
	jb	Lj2301
	subl	$2,%eax
	jbe	Lj2303
	subl	$1,%eax
	subl	$6,%eax
	jbe	Lj2304
	subl	$10,%eax
	je	Lj2303
	jmp	Lj2301
Lj2302:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPLSTRCAT$TVARDATA$TVARDATA$stub
	jmp	Lj2300
Lj2303:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPFLOAT$TVARDATA$TVARDATA$TVAROP$stub
	jmp	Lj2300
Lj2304:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPINT64TO32$TVARDATA$TVARDATA$TVAROP$stub
	jmp	Lj2300
Lj2301:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP$stub
Lj2300:
	jmp	Lj2103
Lj2104:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVAROPCOMPLEX$TVARDATA$TVARDATA$TVAROP$stub
Lj2103:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARNEGANY$TVARDATA
_VARIANTS_DOVARNEGANY$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movl	$12,%edx
	call	L_VARIANTS_VARINVALIDOP$WORD$TVAROP$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARNEGCOMPLEX$TVARDATA
_VARIANTS_DOVARNEGCOMPLEX$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movl	$12,%edx
	call	L_VARIANTS_VARINVALIDOP$WORD$TVAROP$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARNEG$VARIANT
_VARIANTS_SYSVARNEG$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-84(%ebp)
	call	Lj2346
Lj2346:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2346(%ebx),%eax
	movl	%eax,%edx
	leal	-80(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2346(%ebx),%eax
	movl	%eax,%edx
	leal	-64(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj2347
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj2352
	subw	$1,%ax
	je	Lj2353
	subw	$1,%ax
	je	Lj2354
	subw	$1,%ax
	je	Lj2355
	subw	$1,%ax
	je	Lj2356
	subw	$1,%ax
	je	Lj2357
	subw	$1,%ax
	je	Lj2358
	subw	$1,%ax
	je	Lj2359
	subw	$1,%ax
	je	Lj2360
	subw	$3,%ax
	je	Lj2361
	subw	$1,%ax
	je	Lj2368
	subw	$4,%ax
	je	Lj2362
	subw	$1,%ax
	je	Lj2363
	subw	$1,%ax
	je	Lj2364
	subw	$1,%ax
	je	Lj2365
	subw	$1,%ax
	je	Lj2366
	subw	$1,%ax
	je	Lj2367
	jmp	Lj2351
Lj2352:
	movl	-4(%ebp),%eax
	movw	$0,8(%eax)
	movl	-4(%ebp),%eax
	movw	$2,(%eax)
	jmp	Lj2350
Lj2353:
	jmp	Lj2350
Lj2354:
	movl	-4(%ebp),%eax
	movswl	8(%eax),%eax
	negl	%eax
	cmpl	$-2147483648,%eax
	jne	Lj2375
	call	LFPC_OVERFLOW$stub
Lj2375:
	movl	-4(%ebp),%edx
	movw	%ax,8(%edx)
	jmp	Lj2350
Lj2355:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	negl	%edx
	cmpl	$-2147483648,%edx
	jne	Lj2378
	call	LFPC_OVERFLOW$stub
Lj2378:
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	jmp	Lj2350
Lj2356:
	movl	-4(%ebp),%eax
	flds	8(%eax)
	fchs
	movl	-4(%ebp),%eax
	fstps	8(%eax)
	jmp	Lj2350
Lj2357:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fchs
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	jmp	Lj2350
Lj2358:
	movl	-4(%ebp),%eax
	fildq	8(%eax)
	fchs
	movl	-4(%ebp),%eax
	fistpq	8(%eax)
	jmp	Lj2350
Lj2359:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fchs
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	jmp	Lj2350
Lj2360:
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE$stub
	fchs
	fstpt	(%esp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARFROMREAL$VARIANT$EXTENDED$stub
	jmp	Lj2350
Lj2361:
	movl	-4(%ebp),%eax
	movw	8(%eax),%ax
	orw	%ax,%ax
	setneb	%al
	movzbl	%al,%eax
	movl	-4(%ebp),%ecx
	movl	L_TC_VARIANTS_SYSVARNEG$VARIANT_BOOLMAP$non_lazy_ptr-Lj2346(%ebx),%edx
	movw	(%edx,%eax,2),%ax
	movw	%ax,8(%ecx)
	movl	-4(%ebp),%eax
	movw	$2,(%eax)
	jmp	Lj2350
Lj2362:
	movl	-4(%ebp),%eax
	movsbl	8(%eax),%eax
	negl	%eax
	cmpl	$-2147483648,%eax
	jne	Lj2401
	call	LFPC_OVERFLOW$stub
Lj2401:
	movl	-4(%ebp),%edx
	movb	%al,8(%edx)
	jmp	Lj2350
Lj2363:
	movl	-4(%ebp),%eax
	movzbl	8(%eax),%eax
	negl	%eax
	cmpl	$-2147483648,%eax
	jne	Lj2404
	call	LFPC_OVERFLOW$stub
Lj2404:
	movl	-4(%ebp),%edx
	movw	%ax,8(%edx)
	movl	-4(%ebp),%eax
	movw	$2,(%eax)
	jmp	Lj2350
Lj2364:
	movl	-4(%ebp),%eax
	movzwl	8(%eax),%eax
	negl	%eax
	cmpl	$-2147483648,%eax
	jne	Lj2409
	call	LFPC_OVERFLOW$stub
Lj2409:
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movw	$3,(%eax)
	jmp	Lj2350
Lj2365:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	andl	$-2147483648,%eax
	testl	%eax,%eax
	jne	Lj2412
	jmp	Lj2413
Lj2412:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	negl	%edx
	cmpl	$-2147483648,%edx
	jne	Lj2416
	call	LFPC_OVERFLOW$stub
Lj2416:
	movl	%edx,%eax
	sarl	$31,%eax
	movl	-4(%ebp),%ecx
	movl	%edx,8(%ecx)
	movl	%eax,12(%ecx)
	movl	-4(%ebp),%eax
	movw	$20,(%eax)
	jmp	Lj2419
Lj2413:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	negl	%eax
	cmpl	$-2147483648,%eax
	jne	Lj2422
	call	LFPC_OVERFLOW$stub
Lj2422:
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movw	$3,(%eax)
Lj2419:
	jmp	Lj2350
Lj2366:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	12(%eax),%edx
	notl	%edx
	negl	%ecx
	sbbl	$-1,%edx
	movl	%edx,%eax
	xorl	$-2147483648,%eax
	orl	%ecx,%eax
	testl	%eax,%eax
	jne	Lj2427
	call	LFPC_OVERFLOW$stub
Lj2427:
	movl	-4(%ebp),%eax
	movl	%ecx,8(%eax)
	movl	%edx,12(%eax)
	jmp	Lj2350
Lj2367:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	12(%eax),%eax
	movl	$0,%edx
	andl	$-2147483648,%eax
	cmpl	$0,%eax
	jne	Lj2428
	cmpl	$0,%edx
	jne	Lj2428
	jmp	Lj2429
Lj2428:
	movw	$20,%dx
	movw	$21,%ax
	call	L_VARIANTS_VARRANGECHECKERROR$WORD$WORD$stub
Lj2429:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	12(%eax),%edx
	notl	%edx
	negl	%ecx
	sbbl	$-1,%edx
	movl	%edx,%eax
	xorl	$-2147483648,%eax
	orl	%ecx,%eax
	testl	%eax,%eax
	jne	Lj2436
	call	LFPC_OVERFLOW$stub
Lj2436:
	movl	-4(%ebp),%eax
	movl	%ecx,8(%eax)
	movl	%edx,12(%eax)
	movl	-4(%ebp),%eax
	movw	$20,(%eax)
	jmp	Lj2350
Lj2368:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2346(%ebx),%eax
	movl	%eax,%edx
	leal	-64(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-64(%ebp),%edx
	call	L_SYSTEM_minus$VARIANT$$VARIANT$stub
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj2350
Lj2351:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$256,%ax
	jb	Lj2448
	subw	$256,%ax
	je	Lj2449
	subw	$1,%ax
	je	Lj2450
	jmp	Lj2448
Lj2449:
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE$stub
	fchs
	fstpt	(%esp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARFROMREAL$VARIANT$EXTENDED$stub
	jmp	Lj2447
Lj2450:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARNEGANY$TVARDATA$stub
	jmp	Lj2447
Lj2448:
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-4096,%eax
	cmpl	$16384,%eax
	je	Lj2459
	jmp	Lj2460
Lj2459:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	cmpw	$2,%ax
	jb	Lj2462
	subw	$2,%ax
	je	Lj2463
	subw	$1,%ax
	je	Lj2464
	subw	$1,%ax
	je	Lj2465
	subw	$1,%ax
	je	Lj2466
	subw	$1,%ax
	je	Lj2467
	subw	$1,%ax
	je	Lj2468
	subw	$1,%ax
	je	Lj2469
	subw	$3,%ax
	je	Lj2470
	subw	$1,%ax
	je	Lj2477
	subw	$4,%ax
	je	Lj2471
	subw	$1,%ax
	je	Lj2472
	subw	$1,%ax
	je	Lj2473
	subw	$1,%ax
	je	Lj2474
	subw	$1,%ax
	je	Lj2475
	subw	$1,%ax
	je	Lj2476
	jmp	Lj2462
Lj2463:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%eax
	negl	%eax
	cmpl	$-2147483648,%eax
	jne	Lj2480
	call	LFPC_OVERFLOW$stub
Lj2480:
	movl	-4(%ebp),%edx
	movw	%ax,8(%edx)
	movl	-4(%ebp),%eax
	movw	$2,(%eax)
	jmp	Lj2461
Lj2464:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	negl	%edx
	cmpl	$-2147483648,%edx
	jne	Lj2485
	call	LFPC_OVERFLOW$stub
Lj2485:
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-4(%ebp),%eax
	movw	$3,(%eax)
	jmp	Lj2461
Lj2465:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	flds	(%eax)
	fchs
	movl	-4(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	movw	$4,(%eax)
	jmp	Lj2461
Lj2466:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fchs
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movw	$5,(%eax)
	jmp	Lj2461
Lj2467:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fildq	(%eax)
	fchs
	movl	-4(%ebp),%eax
	fistpq	8(%eax)
	movl	-4(%ebp),%eax
	movw	$6,(%eax)
	jmp	Lj2461
Lj2468:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fchs
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movw	$7,(%eax)
	jmp	Lj2461
Lj2469:
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE$stub
	fchs
	fstpt	(%esp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARFROMREAL$VARIANT$EXTENDED$stub
	jmp	Lj2461
Lj2470:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	(%eax),%ax
	orw	%ax,%ax
	setneb	%al
	movzbl	%al,%eax
	movl	-4(%ebp),%ecx
	movl	L_TC_VARIANTS_SYSVARNEG$VARIANT_BOOLMAP$non_lazy_ptr-Lj2346(%ebx),%edx
	movw	(%edx,%eax,2),%ax
	movw	%ax,8(%ecx)
	movl	-4(%ebp),%eax
	movw	$2,(%eax)
	jmp	Lj2461
Lj2471:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movsbl	(%eax),%eax
	negl	%eax
	cmpl	$-2147483648,%eax
	jne	Lj2518
	call	LFPC_OVERFLOW$stub
Lj2518:
	movl	-4(%ebp),%edx
	movb	%al,8(%edx)
	movl	-4(%ebp),%eax
	movw	$16,(%eax)
	jmp	Lj2461
Lj2472:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzbl	(%eax),%eax
	negl	%eax
	cmpl	$-2147483648,%eax
	jne	Lj2523
	call	LFPC_OVERFLOW$stub
Lj2523:
	movl	-4(%ebp),%edx
	movw	%ax,8(%edx)
	movl	-4(%ebp),%eax
	movw	$2,(%eax)
	jmp	Lj2461
Lj2473:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzwl	(%eax),%eax
	negl	%eax
	cmpl	$-2147483648,%eax
	jne	Lj2528
	call	LFPC_OVERFLOW$stub
Lj2528:
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movw	$3,(%eax)
	jmp	Lj2461
Lj2474:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	andl	$-2147483648,%eax
	testl	%eax,%eax
	jne	Lj2531
	jmp	Lj2532
Lj2531:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	negl	%edx
	cmpl	$-2147483648,%edx
	jne	Lj2535
	call	LFPC_OVERFLOW$stub
Lj2535:
	movl	%edx,%eax
	sarl	$31,%eax
	movl	-4(%ebp),%ecx
	movl	%edx,8(%ecx)
	movl	%eax,12(%ecx)
	movl	-4(%ebp),%eax
	movw	$20,(%eax)
	jmp	Lj2538
Lj2532:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	negl	%edx
	cmpl	$-2147483648,%edx
	jne	Lj2541
	call	LFPC_OVERFLOW$stub
Lj2541:
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-4(%ebp),%eax
	movw	$3,(%eax)
Lj2538:
	jmp	Lj2461
Lj2475:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%ecx
	movl	4(%eax),%edx
	notl	%edx
	negl	%ecx
	sbbl	$-1,%edx
	movl	%edx,%eax
	xorl	$-2147483648,%eax
	orl	%ecx,%eax
	testl	%eax,%eax
	jne	Lj2546
	call	LFPC_OVERFLOW$stub
Lj2546:
	movl	-4(%ebp),%eax
	movl	%ecx,8(%eax)
	movl	%edx,12(%eax)
	movl	-4(%ebp),%eax
	movw	$20,(%eax)
	jmp	Lj2461
Lj2476:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	movl	$0,%edx
	andl	$-2147483648,%eax
	cmpl	$0,%eax
	jne	Lj2549
	cmpl	$0,%edx
	jne	Lj2549
	jmp	Lj2550
Lj2549:
	movw	$20,%dx
	movw	$21,%ax
	call	L_VARIANTS_VARRANGECHECKERROR$WORD$WORD$stub
Lj2550:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%ecx
	movl	4(%eax),%edx
	notl	%edx
	negl	%ecx
	sbbl	$-1,%edx
	movl	%edx,%eax
	xorl	$-2147483648,%eax
	orl	%ecx,%eax
	testl	%eax,%eax
	jne	Lj2557
	call	LFPC_OVERFLOW$stub
Lj2557:
	movl	-4(%ebp),%eax
	movl	%ecx,8(%eax)
	movl	%edx,12(%eax)
	movl	-4(%ebp),%eax
	movw	$20,(%eax)
	jmp	Lj2461
Lj2477:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2346(%ebx),%eax
	movl	%eax,%edx
	leal	-80(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-80(%ebp),%edx
	call	L_SYSTEM_minus$VARIANT$$VARIANT$stub
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj2461
Lj2462:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARNEGCOMPLEX$TVARDATA$stub
Lj2461:
	jmp	Lj2570
Lj2460:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARNEGCOMPLEX$TVARDATA$stub
Lj2570:
Lj2447:
Lj2350:
Lj2347:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2346(%ebx),%eax
	movl	%eax,%edx
	leal	-80(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2346(%ebx),%eax
	movl	%eax,%edx
	leal	-64(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj2348
	call	LFPC_RERAISE$stub
Lj2348:
	movl	-84(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARNOTANY$TVARDATA
_VARIANTS_DOVARNOTANY$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movl	$13,%edx
	call	L_VARIANTS_VARINVALIDOP$WORD$TVAROP$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARNOTORDINAL$TVARDATA
_VARIANTS_DOVARNOTORDINAL$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOINT64$TVARDATA$$INT64$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	cmpl	$-1,%edx
	jl	Lj2585
	jg	Lj2587
	cmpl	$-2147483648,%eax
	jb	Lj2585
	jmp	Lj2587
Lj2587:
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	cmpl	$0,%edx
	jg	Lj2585
	jl	Lj2586
	cmpl	$2147483647,%eax
	ja	Lj2585
	jmp	Lj2586
Lj2585:
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	notl	%edx
	notl	%eax
	movl	-4(%ebp),%ecx
	movl	%eax,8(%ecx)
	movl	%edx,12(%ecx)
	movl	-4(%ebp),%eax
	movw	$20,(%eax)
	jmp	Lj2592
Lj2586:
	movl	-12(%ebp),%eax
	notl	%eax
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movw	$3,(%eax)
Lj2592:
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARNOTWSTR$TVARDATA$POINTER
_VARIANTS_DOVARNOTWSTR$TVARDATA$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-68(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj2599
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_val_int64_unicodestr$stub
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movw	-64(%ebp),%ax
	movw	%ax,-18(%ebp)
	movzwl	-18(%ebp),%eax
	testl	%eax,%eax
	je	Lj2610
	jmp	Lj2611
Lj2610:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj2612
	jmp	Lj2613
Lj2612:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj2613:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	$-1,%edx
	jl	Lj2616
	jg	Lj2618
	cmpl	$-2147483648,%eax
	jb	Lj2616
	jmp	Lj2618
Lj2618:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	$0,%edx
	jg	Lj2616
	jl	Lj2617
	cmpl	$2147483647,%eax
	ja	Lj2616
	jmp	Lj2617
Lj2616:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	notl	%ecx
	notl	%edx
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	movl	%ecx,12(%eax)
	movl	-4(%ebp),%eax
	movw	$20,(%eax)
	jmp	Lj2623
Lj2617:
	movl	-16(%ebp),%eax
	notl	%eax
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movw	$3,(%eax)
Lj2623:
	jmp	Lj2628
Lj2611:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-68(%ebp),%eax
	leal	-19(%ebp),%edx
	call	L_SYSUTILS_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2629
	jmp	Lj2630
Lj2629:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movl	$13,%edx
	call	L_VARIANTS_VARINVALIDOP$WORD$TVAROP$stub
Lj2630:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj2643
	jmp	Lj2644
Lj2643:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj2644:
	movl	-4(%ebp),%edx
	movb	-19(%ebp),%al
	testb	%al,%al
	seteb	%al
	movzbw	%al,%ax
	negw	%ax
	movw	%ax,8(%edx)
	movl	-4(%ebp),%eax
	movw	$11,(%eax)
Lj2628:
Lj2599:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj2600
	call	LFPC_RERAISE$stub
Lj2600:
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARNOTLSTR$TVARDATA$POINTER
_VARIANTS_DOVARNOTLSTR$TVARDATA$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_val_int64_ansistr$stub
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movw	-24(%ebp),%ax
	movw	%ax,-18(%ebp)
	movzwl	-18(%ebp),%eax
	testl	%eax,%eax
	je	Lj2663
	jmp	Lj2664
Lj2663:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj2665
	jmp	Lj2666
Lj2665:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj2666:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	$-1,%edx
	jl	Lj2669
	jg	Lj2671
	cmpl	$-2147483648,%eax
	jb	Lj2669
	jmp	Lj2671
Lj2671:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	$0,%edx
	jg	Lj2669
	jl	Lj2670
	cmpl	$2147483647,%eax
	ja	Lj2669
	jmp	Lj2670
Lj2669:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	notl	%ecx
	notl	%edx
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	movl	%ecx,12(%eax)
	movl	-4(%ebp),%eax
	movw	$20,(%eax)
	jmp	Lj2676
Lj2670:
	movl	-16(%ebp),%eax
	notl	%eax
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movw	$3,(%eax)
Lj2676:
	jmp	Lj2681
Lj2664:
	leal	-19(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2682
	jmp	Lj2683
Lj2682:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movl	$13,%edx
	call	L_VARIANTS_VARINVALIDOP$WORD$TVAROP$stub
Lj2683:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj2692
	jmp	Lj2693
Lj2692:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj2693:
	movl	-4(%ebp),%edx
	movb	-19(%ebp),%al
	testb	%al,%al
	seteb	%al
	movzbw	%al,%ax
	negw	%ax
	movw	%ax,8(%edx)
	movl	-4(%ebp),%eax
	movw	$11,(%eax)
Lj2681:
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARNOTCOMPLEX$TVARDATA
_VARIANTS_DOVARNOTCOMPLEX$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movl	$13,%edx
	call	L_VARIANTS_VARINVALIDOP$WORD$TVAROP$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARNOT$VARIANT
_VARIANTS_SYSVARNOT$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	call	Lj2709
Lj2709:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2709(%ebx),%eax
	movl	%eax,%edx
	leal	-96(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2709(%ebx),%eax
	movl	%eax,%edx
	leal	-80(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2709(%ebx),%eax
	movl	%eax,%edx
	leal	-64(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj2710
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj2715
	subw	$1,%ax
	je	Lj2716
	subw	$1,%ax
	je	Lj2717
	subw	$1,%ax
	je	Lj2718
	subw	$1,%ax
	jb	Lj2714
	subw	$3,%ax
	jbe	Lj2719
	subw	$1,%ax
	je	Lj2720
	subw	$3,%ax
	je	Lj2721
	subw	$1,%ax
	je	Lj2728
	subw	$4,%ax
	je	Lj2722
	subw	$1,%ax
	je	Lj2723
	subw	$1,%ax
	je	Lj2724
	subw	$1,%ax
	je	Lj2725
	subw	$1,%ax
	je	Lj2726
	subw	$1,%ax
	je	Lj2727
	jmp	Lj2714
Lj2715:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2709(%ebx),%eax
	movl	%eax,%edx
	leal	-64(%ebp),%eax
	call	LFPC_FINALIZE$stub
	leal	-64(%ebp),%edx
	movb	$-1,%al
	call	L_SYSTEM_assign$SHORTINT$$VARIANT$stub
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj2713
Lj2716:
	jmp	Lj2713
Lj2717:
	movl	-4(%ebp),%eax
	movw	8(%eax),%dx
	notw	%dx
	movl	-4(%ebp),%eax
	movw	%dx,8(%eax)
	jmp	Lj2713
Lj2718:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	notl	%edx
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	jmp	Lj2713
Lj2719:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARNOTORDINAL$TVARDATA$stub
	jmp	Lj2713
Lj2720:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARNOTWSTR$TVARDATA$POINTER$stub
	jmp	Lj2713
Lj2721:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	8(%eax),%ax
	testw	%ax,%ax
	seteb	%al
	movzbw	%al,%ax
	negw	%ax
	movw	%ax,8(%edx)
	jmp	Lj2713
Lj2722:
	movl	-4(%ebp),%eax
	movb	8(%eax),%dl
	notb	%dl
	movl	-4(%ebp),%eax
	movb	%dl,8(%eax)
	jmp	Lj2713
Lj2723:
	movl	-4(%ebp),%eax
	movb	8(%eax),%dl
	notb	%dl
	movl	-4(%ebp),%eax
	movb	%dl,8(%eax)
	jmp	Lj2713
Lj2724:
	movl	-4(%ebp),%eax
	movw	8(%eax),%ax
	notw	%ax
	movl	-4(%ebp),%edx
	movw	%ax,8(%edx)
	jmp	Lj2713
Lj2725:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	notl	%eax
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	jmp	Lj2713
Lj2726:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	12(%eax),%edx
	notl	%edx
	notl	%ecx
	movl	-4(%ebp),%eax
	movl	%ecx,8(%eax)
	movl	%edx,12(%eax)
	jmp	Lj2713
Lj2727:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	12(%eax),%edx
	notl	%edx
	notl	%ecx
	movl	-4(%ebp),%eax
	movl	%ecx,8(%eax)
	movl	%edx,12(%eax)
	jmp	Lj2713
Lj2728:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2709(%ebx),%eax
	movl	%eax,%edx
	leal	-80(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-80(%ebp),%edx
	call	L_SYSTEM_not$VARIANT$$VARIANT$stub
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj2713
Lj2714:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$256,%ax
	jb	Lj2770
	subw	$256,%ax
	je	Lj2771
	subw	$1,%ax
	je	Lj2772
	jmp	Lj2770
Lj2771:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARNOTLSTR$TVARDATA$POINTER$stub
	jmp	Lj2769
Lj2772:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARNOTANY$TVARDATA$stub
	jmp	Lj2769
Lj2770:
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-4096,%eax
	cmpl	$16384,%eax
	je	Lj2779
	jmp	Lj2780
Lj2779:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	cmpw	$2,%ax
	jb	Lj2782
	subw	$2,%ax
	je	Lj2783
	subw	$1,%ax
	je	Lj2784
	subw	$1,%ax
	jb	Lj2782
	subw	$3,%ax
	jbe	Lj2785
	subw	$1,%ax
	je	Lj2786
	subw	$3,%ax
	je	Lj2787
	subw	$1,%ax
	je	Lj2794
	subw	$4,%ax
	je	Lj2788
	subw	$1,%ax
	je	Lj2789
	subw	$1,%ax
	je	Lj2790
	subw	$1,%ax
	je	Lj2791
	subw	$1,%ax
	je	Lj2792
	subw	$1,%ax
	je	Lj2793
	jmp	Lj2782
Lj2783:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	(%eax),%ax
	notw	%ax
	movl	-4(%ebp),%edx
	movw	%ax,8(%edx)
	movl	-4(%ebp),%eax
	movw	$2,(%eax)
	jmp	Lj2781
Lj2784:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	notl	%edx
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-4(%ebp),%eax
	movw	$3,(%eax)
	jmp	Lj2781
Lj2785:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARNOTORDINAL$TVARDATA$stub
	jmp	Lj2781
Lj2786:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARNOTWSTR$TVARDATA$POINTER$stub
	jmp	Lj2781
Lj2787:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	seteb	%al
	movzbw	%al,%ax
	negw	%ax
	movw	%ax,8(%edx)
	movl	-4(%ebp),%eax
	movw	$11,(%eax)
	jmp	Lj2781
Lj2788:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%dl
	notb	%dl
	movl	-4(%ebp),%eax
	movb	%dl,8(%eax)
	movl	-4(%ebp),%eax
	movw	$16,(%eax)
	jmp	Lj2781
Lj2789:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%dl
	notb	%dl
	movl	-4(%ebp),%eax
	movb	%dl,8(%eax)
	movl	-4(%ebp),%eax
	movw	$17,(%eax)
	jmp	Lj2781
Lj2790:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	(%eax),%dx
	notw	%dx
	movl	-4(%ebp),%eax
	movw	%dx,8(%eax)
	movl	-4(%ebp),%eax
	movw	$18,(%eax)
	jmp	Lj2781
Lj2791:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	notl	%eax
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movw	$19,(%eax)
	jmp	Lj2781
Lj2792:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%ecx
	movl	4(%eax),%eax
	notl	%eax
	notl	%ecx
	movl	-4(%ebp),%edx
	movl	%ecx,8(%edx)
	movl	%eax,12(%edx)
	movl	-4(%ebp),%eax
	movw	$20,(%eax)
	jmp	Lj2781
Lj2793:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%ecx
	movl	4(%eax),%eax
	notl	%eax
	notl	%ecx
	movl	-4(%ebp),%edx
	movl	%ecx,8(%edx)
	movl	%eax,12(%edx)
	movl	-4(%ebp),%eax
	movw	$21,(%eax)
	jmp	Lj2781
Lj2794:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2709(%ebx),%eax
	movl	%eax,%edx
	leal	-96(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-96(%ebp),%edx
	call	L_SYSTEM_not$VARIANT$$VARIANT$stub
	leal	-96(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj2781
Lj2782:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARNOTCOMPLEX$TVARDATA$stub
Lj2781:
	jmp	Lj2847
Lj2780:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARNOTCOMPLEX$TVARDATA$stub
Lj2847:
Lj2769:
Lj2713:
Lj2710:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2709(%ebx),%eax
	movl	%eax,%edx
	leal	-96(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2709(%ebx),%eax
	movl	%eax,%edx
	leal	-80(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2709(%ebx),%eax
	movl	%eax,%edx
	leal	-64(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj2711
	call	LFPC_RERAISE$stub
Lj2711:
	movl	-100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCLEARARRAY$TVARDATA
_VARIANTS_DOVARCLEARARRAY$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	cmpl	$12,%eax
	je	Lj2852
	jmp	Lj2853
Lj2852:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$16384,%ax
	testw	%ax,%ax
	jne	Lj2854
	jmp	Lj2855
Lj2854:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2860
Lj2855:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
Lj2860:
	leal	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYACCESSDATA$PVARARRAY$POINTER$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj2869
	movl	$1,-16(%ebp)
	movl	-8(%ebp),%eax
	movzwl	(%eax),%ecx
	subl	$1,%ecx
	jno	Lj2878
	call	LFPC_OVERFLOW$stub
Lj2878:
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ecx
	jb	Lj2876
	subl	$1,-12(%ebp)
	.align 2
Lj2877:
	addl	$1,-12(%ebp)
	movl	-8(%ebp),%ebx
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	mull	16(%ebx,%edx,8)
	jae	Lj2881
	call	LFPC_OVERFLOW$stub
Lj2881:
	movl	%eax,-16(%ebp)
	cmpl	-12(%ebp),%ecx
	ja	Lj2877
Lj2876:
	movl	-16(%ebp),%ebx
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jb	Lj2883
	subl	$1,-12(%ebp)
	.align 2
Lj2884:
	addl	$1,-12(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	-64(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj2887
	jmp	Lj2888
Lj2887:
	movl	-64(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
	jmp	Lj2891
Lj2888:
	movl	-64(%ebp),%eax
	movw	$0,(%eax)
Lj2891:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	addl	%eax,-20(%ebp)
	cmpl	-12(%ebp),%ebx
	ja	Lj2884
Lj2883:
Lj2869:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYUNACCESSDATA$PVARARRAY$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj2870
	subl	$1,%eax
	testl	%eax,%eax
	je	Lj2871
Lj2871:
	call	LFPC_RERAISE$stub
Lj2870:
Lj2853:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTCLEAR$TVARDATA$$HRESULT$stub
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA
_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj2901
Lj2901:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$20,%eax
	jl	Lj2902
	jmp	Lj2903
Lj2902:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTCLEAR$TVARDATA$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
	jmp	Lj2908
Lj2903:
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$256,%eax
	je	Lj2909
	jmp	Lj2910
Lj2909:
	movl	-4(%ebp),%esi
	leal	8(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,8(%esi)
	movl	-4(%ebp),%eax
	movw	$0,(%eax)
	jmp	Lj2915
Lj2910:
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$258,%eax
	je	Lj2916
	jmp	Lj2917
Lj2916:
	movl	-4(%ebp),%esi
	leal	8(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,8(%esi)
	movl	-4(%ebp),%eax
	movw	$0,(%eax)
	jmp	Lj2922
Lj2917:
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$257,%eax
	je	Lj2923
	jmp	Lj2924
Lj2923:
	movl	-4(%ebp),%eax
	movl	L_U_VARIANTS_CLEARANYPROC$non_lazy_ptr-Lj2901(%ebx),%edx
	movl	(%edx),%edx
	call	*%edx
	jmp	Lj2927
Lj2924:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj2928
	jmp	Lj2929
Lj2928:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARARRAY$TVARDATA$stub
	jmp	Lj2932
Lj2929:
	leal	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2933
	jmp	Lj2934
Lj2933:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
	jmp	Lj2943
Lj2934:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTCLEAR$TVARDATA$$HRESULT$stub
	movl	-4(%ebp),%eax
	movw	$0,(%eax)
Lj2943:
Lj2932:
Lj2927:
Lj2922:
Lj2915:
Lj2908:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCOPYARRAY$TVARDATA$TVARDATA$TVARARRAYCOPYCALLBACK
_VARIANTS_DOVARCOPYARRAY$TVARDATA$TVARDATA$TVARARRAYCOPYCALLBACK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$632,%esp
	movl	%ebx,-620(%ebp)
	movl	%esi,-616(%ebp)
	movl	%edi,-612(%ebp)
	call	Lj2949
Lj2949:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	je	Lj2950
	jmp	Lj2951
Lj2950:
	movl	$-2147024809,%eax
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
Lj2951:
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	cmpl	$12,%eax
	je	Lj2954
	jmp	Lj2955
Lj2954:
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	andw	$16384,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj2956
	jmp	Lj2957
Lj2956:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj2960
Lj2957:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
Lj2960:
	movl	-16(%ebp),%eax
	movzwl	(%eax),%eax
	movl	%eax,-560(%ebp)
	movl	-560(%ebp),%esi
	subl	$1,%esi
	jno	Lj2968
	call	LFPC_OVERFLOW$stub
Lj2968:
	movl	$0,-568(%ebp)
	cmpl	-568(%ebp),%esi
	jl	Lj2966
	subl	$1,-568(%ebp)
	.align 2
Lj2967:
	addl	$1,-568(%ebp)
	movl	-568(%ebp),%eax
	leal	-540(%ebp,%eax,8),%edi
	leal	4(%edi),%eax
	movl	%eax,8(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-568(%ebp),%eax
	addl	$1,%eax
	jno	Lj2979
	call	LFPC_OVERFLOW$stub
Lj2979:
	movl	%eax,4(%esp)
	call	L_VARUTILS_SAFEARRAYGETLBOUND$PVARARRAY$LONGWORD$LONGINT$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
	leal	-564(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-568(%ebp),%eax
	addl	$1,%eax
	jno	Lj2988
	call	LFPC_OVERFLOW$stub
Lj2988:
	movl	%eax,4(%esp)
	call	L_VARUTILS_SAFEARRAYGETUBOUND$PVARARRAY$LONGWORD$LONGINT$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
	movl	-564(%ebp),%edx
	movl	4(%edi),%eax
	subl	%eax,%edx
	jno	Lj2991
	call	LFPC_OVERFLOW$stub
Lj2991:
	addl	$1,%edx
	jno	Lj2992
	call	LFPC_OVERFLOW$stub
Lj2992:
	movl	%edx,(%edi)
	cmpl	-568(%ebp),%esi
	jg	Lj2967
Lj2966:
	movl	$12,(%esp)
	movl	-560(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-540(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_VARUTILS_SAFEARRAYCREATE$LONGWORD$LONGWORD$TVARARRAYBOUNDARRAY$$PVARARRAY$stub
	movl	%eax,-24(%ebp)
	cmpl	$0,-24(%ebp)
	jne	Lj3002
	jmp	Lj3001
Lj3001:
	call	L_VARIANTS_VARARRAYCREATEERROR$stub
Lj3002:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj3003
	jmp	Lj3004
Lj3003:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj3004:
	movl	-4(%ebp),%eax
	movw	$8204,(%eax)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,8(%eax)
	leal	-540(%ebp),%eax
	movl	%eax,(%esp)
	movl	-560(%ebp),%ecx
	movl	L_VMT_VARIANTS_TVARIANTARRAYITERATOR$non_lazy_ptr-Lj2949(%ebx),%edx
	leal	-556(%ebp),%eax
	call	L_VARIANTS_TVARIANTARRAYITERATOR_$__INIT$LONGINT$PVARARRAYBOUNDARRAY$$LONGBOOL$stub
	leal	-580(%ebp),%ecx
	leal	-604(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-608(%ebp)
	testl	%eax,%eax
	jne	Lj3019
	leal	-556(%ebp),%eax
	call	L_VARIANTS_TVARIANTARRAYITERATOR_$__ATEND$$BOOLEAN$stub
	testb	%al,%al
	je	Lj3023
	jmp	Lj3024
Lj3023:
	.align 2
Lj3027:
	leal	-20(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-552(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYPTROFINDEX$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
	leal	-28(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-552(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYPTROFINDEX$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
	movl	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	-12(%ebp),%ecx
	call	*%ecx
	leal	-556(%ebp),%eax
	call	L_VARIANTS_TVARIANTARRAYITERATOR_$__NEXT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3027
	jmp	Lj3029
Lj3029:
Lj3024:
Lj3019:
	call	LFPC_POPADDRSTACK$stub
	leal	-556(%ebp),%eax
	movl	$0,%edx
	call	L_VARIANTS_TVARIANTARRAYITERATOR_$__DONE$stub
	movl	-608(%ebp),%eax
	testl	%eax,%eax
	je	Lj3020
	subl	$1,%eax
	testl	%eax,%eax
	je	Lj3021
Lj3021:
	call	LFPC_RERAISE$stub
Lj3020:
	jmp	Lj3056
Lj2955:
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
Lj3056:
	movl	-620(%ebp),%ebx
	movl	-616(%ebp),%esi
	movl	-612(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCOPYCOMPLEX$TVARDATA$TVARDATA
_VARIANTS_DOVARCOPYCOMPLEX$TVARDATA$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj3064
Lj3064:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj3065
	jmp	Lj3066
Lj3065:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj3066:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$20,%eax
	jl	Lj3069
	jmp	Lj3070
Lj3069:
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
	jmp	Lj3077
Lj3070:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$256,%eax
	je	Lj3078
	jmp	Lj3079
Lj3078:
	movl	-4(%ebp),%eax
	movw	$256,(%eax)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-8(%ebp),%edi
	movl	8(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	leal	8(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%edi),%eax
	movl	%eax,8(%esi)
	jmp	Lj3086
Lj3079:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$257,%eax
	je	Lj3087
	jmp	Lj3088
Lj3087:
	movl	-4(%ebp),%edi
	movl	-8(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	movl	L_U_VARIANTS_REFANYPROC$non_lazy_ptr-Lj3064(%ebx),%edx
	movl	(%edx),%edx
	call	*%edx
	jmp	Lj3093
Lj3088:
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj3094
	jmp	Lj3095
Lj3094:
	movl	L_VARIANTS_DOVARCOPY$TVARDATA$TVARDATA$non_lazy_ptr-Lj3064(%ebx),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCOPYARRAY$TVARDATA$TVARDATA$TVARARRAYCOPYCALLBACK$stub
	jmp	Lj3102
Lj3095:
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	andw	$16384,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj3105
	jmp	Lj3104
Lj3105:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	xorl	$16384,%eax
	cmpl	$256,%eax
	je	Lj3103
	jmp	Lj3104
Lj3103:
	movl	-4(%ebp),%edi
	movl	-8(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	jmp	Lj3108
Lj3104:
	leal	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3109
	jmp	Lj3110
Lj3109:
	movb	$0,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*140(%esi)
	jmp	Lj3123
Lj3110:
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
Lj3123:
Lj3108:
Lj3102:
Lj3093:
Lj3086:
Lj3077:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCOPY$TVARDATA$TVARDATA
_VARIANTS_DOVARCOPY$TVARDATA$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	cmpl	%edx,%eax
	jne	Lj3132
	jmp	Lj3133
Lj3132:
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	je	Lj3134
	jmp	Lj3135
Lj3134:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj3136
	jmp	Lj3137
Lj3136:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj3137:
	movl	-4(%ebp),%edi
	movl	-8(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	jmp	Lj3142
Lj3135:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCOPYCOMPLEX$TVARDATA$TVARDATA$stub
Lj3142:
Lj3133:
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARCOPY$VARIANT$VARIANT
_VARIANTS_SYSVARCOPY$VARIANT$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCOPY$TVARDATA$TVARDATA$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARADDREF$TVARDATA
_VARIANTS_DOVARADDREF$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-20(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	movw	$0,(%eax)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCOPY$TVARDATA$TVARDATA$stub
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARADDREF$VARIANT
_VARIANTS_SYSVARADDREF$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARADDREF$TVARDATA$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCASTWSTR$TVARDATA$TVARDATA
_VARIANTS_DOVARCASTWSTR$TVARDATA$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3169
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING$stub
	movl	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARFROMWSTR$VARIANT$WIDESTRING$stub
Lj3169:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3170
	call	LFPC_RERAISE$stub
Lj3170:
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCASTLSTR$TVARDATA$TVARDATA
_VARIANTS_DOVARCASTLSTR$TVARDATA$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3182
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING$stub
	movl	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARFROMLSTR$VARIANT$ANSISTRING$stub
Lj3182:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3183
	call	LFPC_RERAISE$stub
Lj3183:
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCASTDISPATCH$TVARDATA$TVARDATA
_VARIANTS_DOVARCASTDISPATCH$TVARDATA$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3195
	movl	-8(%ebp),%edx
	leal	-12(%ebp),%eax
	call	L_VARIANTS_SYSVARTODISP$IDISPATCH$VARIANT$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARFROMDISP$VARIANT$IDISPATCH$stub
Lj3195:
	call	LFPC_POPADDRSTACK$stub
	leal	-12(%ebp),%eax
	call	Lfpc_intf_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3196
	call	LFPC_RERAISE$stub
Lj3196:
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCASTINTERFACE$TVARDATA$TVARDATA
_VARIANTS_DOVARCASTINTERFACE$TVARDATA$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3214
	movl	-8(%ebp),%edx
	leal	-12(%ebp),%eax
	call	L_VARIANTS_SYSVARTOINTF$IUNKNOWN$VARIANT$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARFROMINTF$VARIANT$IUNKNOWN$stub
Lj3214:
	call	LFPC_POPADDRSTACK$stub
	leal	-12(%ebp),%eax
	call	Lfpc_intf_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3215
	call	LFPC_RERAISE$stub
Lj3215:
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCASTANY$TVARDATA$TVARDATA$LONGINT
_VARIANTS_DOVARCASTANY$TVARDATA$TVARDATA$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movw	-12(%ebp),%dx
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCASTFALLBACK$TVARDATA$TVARDATA$LONGINT
_VARIANTS_DOVARCASTFALLBACK$TVARDATA$TVARDATA$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	cmpl	$20,%eax
	jge	Lj3239
	jmp	Lj3240
Lj3239:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$8,%ecx
	call	L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub
	movl	$0,12(%esp)
	movl	$1024,8(%esp)
	movzwl	-12(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTCHANGETYPEEX$TVARDATA$TVARDATA$LONGINT$WORD$WORD$$HRESULT$stub
	movw	-12(%ebp),%cx
	movl	-8(%ebp),%edx
	movw	(%edx),%dx
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$WORD$WORD$stub
	jmp	Lj3263
Lj3240:
	movl	-12(%ebp),%eax
	andl	$4095,%eax
	cmpl	$20,%eax
	jl	Lj3264
	jmp	Lj3265
Lj3264:
	movl	$0,12(%esp)
	movl	$1024,8(%esp)
	movzwl	-12(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTCHANGETYPEEX$TVARDATA$TVARDATA$LONGINT$WORD$WORD$$HRESULT$stub
	movw	-12(%ebp),%cx
	movl	-8(%ebp),%edx
	movw	(%edx),%dx
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$WORD$WORD$stub
	jmp	Lj3282
Lj3265:
	movw	-12(%ebp),%dx
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
Lj3282:
Lj3263:
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCASTCOMPLEX$TVARDATA$TVARDATA$LONGINT
_VARIANTS_DOVARCASTCOMPLEX$TVARDATA$TVARDATA$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$257,%eax
	je	Lj3289
	jmp	Lj3290
Lj3289:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCASTANY$TVARDATA$TVARDATA$LONGINT$stub
	jmp	Lj3297
Lj3290:
	leal	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3298
	jmp	Lj3299
Lj3298:
	movw	-12(%ebp),%ax
	movw	%ax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	jmp	Lj3312
Lj3299:
	leal	-16(%ebp),%edx
	movw	-12(%ebp),%ax
	call	L_VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3313
	jmp	Lj3314
Lj3313:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*124(%ebx)
	jmp	Lj3325
Lj3314:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCASTFALLBACK$TVARDATA$TVARDATA$LONGINT$stub
Lj3325:
Lj3312:
Lj3297:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT
_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj3333
Lj3333:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj3334
	jmp	Lj3335
Lj3334:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCOPY$TVARDATA$TVARDATA$stub
	jmp	Lj3340
Lj3335:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj3343
	jmp	Lj3342
Lj3343:
	movl	L_TC_VARIANTS_NULLSTRICTCONVERT$non_lazy_ptr-Lj3333(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj3341
	jmp	Lj3342
Lj3341:
	movw	-12(%ebp),%dx
	movw	$1,%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
Lj3342:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jl	Lj3349
	subl	$1,%eax
	jle	Lj3350
	subl	$1,%eax
	je	Lj3351
	subl	$1,%eax
	je	Lj3352
	subl	$1,%eax
	je	Lj3353
	subl	$1,%eax
	je	Lj3354
	subl	$1,%eax
	je	Lj3355
	subl	$1,%eax
	je	Lj3356
	subl	$1,%eax
	je	Lj3357
	subl	$1,%eax
	je	Lj3365
	subl	$2,%eax
	je	Lj3358
	subl	$2,%eax
	je	Lj3366
	subl	$3,%eax
	je	Lj3359
	subl	$1,%eax
	je	Lj3360
	subl	$1,%eax
	je	Lj3361
	subl	$1,%eax
	je	Lj3362
	subl	$1,%eax
	je	Lj3363
	subl	$1,%eax
	je	Lj3364
	jmp	Lj3349
Lj3350:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj3367
	jmp	Lj3368
Lj3367:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
Lj3368:
	movl	-4(%ebp),%eax
	movw	-12(%ebp),%dx
	movw	%dx,(%eax)
	jmp	Lj3348
Lj3351:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOSMALLINT$TVARDATA$$SMALLINT$stub
	movw	%ax,%dx
	movswl	%dx,%edx
	movl	-4(%ebp),%eax
	movl	$-2,%ecx
	call	L_VARIANTS_SYSVARFROMINT$VARIANT$LONGINT$LONGINT$stub
	jmp	Lj3348
Lj3352:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOLONGINT$TVARDATA$$LONGINT$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	$-4,%ecx
	call	L_VARIANTS_SYSVARFROMINT$VARIANT$LONGINT$LONGINT$stub
	jmp	Lj3348
Lj3353:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOSINGLE$TVARDATA$$SINGLE$stub
	fstps	(%esp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARFROMSINGLE$VARIANT$SINGLE$stub
	jmp	Lj3348
Lj3354:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE$stub
	fstpl	(%esp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARFROMDOUBLE$VARIANT$DOUBLE$stub
	jmp	Lj3348
Lj3355:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	fistpq	(%esp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARFROMCURR$VARIANT$CURRENCY$stub
	jmp	Lj3348
Lj3356:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTODATE$TVARDATA$$TDATETIME$stub
	fstpl	(%esp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARFROMTDATETIME$VARIANT$TDATETIME$stub
	jmp	Lj3348
Lj3357:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCASTWSTR$TVARDATA$TVARDATA$stub
	jmp	Lj3348
Lj3358:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN$stub
	movb	%al,%dl
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARFROMBOOL$VARIANT$BOOLEAN$stub
	jmp	Lj3348
Lj3359:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOSHORTINT$TVARDATA$$SHORTINT$stub
	movb	%al,%dl
	movsbl	%dl,%edx
	movl	-4(%ebp),%eax
	movl	$-1,%ecx
	call	L_VARIANTS_SYSVARFROMINT$VARIANT$LONGINT$LONGINT$stub
	jmp	Lj3348
Lj3360:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOBYTE$TVARDATA$$BYTE$stub
	movb	%al,%dl
	movzbl	%dl,%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_VARIANTS_SYSVARFROMINT$VARIANT$LONGINT$LONGINT$stub
	jmp	Lj3348
Lj3361:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOLONGINT$TVARDATA$$LONGINT$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	call	L_VARIANTS_SYSVARFROMINT$VARIANT$LONGINT$LONGINT$stub
	jmp	Lj3348
Lj3362:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCARDINAL$TVARDATA$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	call	L_VARIANTS_SYSVARFROMINT$VARIANT$LONGINT$LONGINT$stub
	jmp	Lj3348
Lj3363:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOINT64$TVARDATA$$INT64$stub
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARFROMINT64$VARIANT$INT64$stub
	jmp	Lj3348
Lj3364:
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARIANTTOQWORD$TVARDATA$$QWORD$stub
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARFROMWORD64$VARIANT$QWORD$stub
	jmp	Lj3348
Lj3365:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCASTDISPATCH$TVARDATA$TVARDATA$stub
	jmp	Lj3348
Lj3366:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCASTINTERFACE$TVARDATA$TVARDATA$stub
	jmp	Lj3348
Lj3349:
	movl	-12(%ebp),%eax
	cmpl	$256,%eax
	jl	Lj3476
	subl	$256,%eax
	je	Lj3477
	subl	$1,%eax
	je	Lj3478
	jmp	Lj3476
Lj3477:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCASTLSTR$TVARDATA$TVARDATA$stub
	jmp	Lj3475
Lj3478:
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	movw	$257,%dx
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
	jmp	Lj3475
Lj3476:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCASTCOMPLEX$TVARDATA$TVARDATA$LONGINT$stub
Lj3475:
Lj3348:
Lj3340:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARCAST$VARIANT$VARIANT$LONGINT
_VARIANTS_SYSVARCAST$VARIANT$VARIANT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARFROMDYNARRAY$VARIANT$POINTER$POINTER
_VARIANTS_SYSVARFROMDYNARRAY$VARIANT$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DYNARRAYTOVARIANT$VARIANT$POINTER$POINTER$stub
	movl	-4(%ebp),%eax
	call	L_VARIANTS_VARISEMPTY$VARIANT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3509
	jmp	Lj3510
Lj3509:
	call	L_VARIANTS_VARCASTERROR$stub
Lj3510:
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSOLEVARFROMPSTR$OLEVARIANT$SHORTSTRING
_VARIANTS_SYSOLEVARFROMPSTR$OLEVARIANT$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3515
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_shortstr_to_unicodestr$stub
	movl	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARFROMWSTR$VARIANT$WIDESTRING$stub
Lj3515:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3516
	call	LFPC_RERAISE$stub
Lj3516:
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSOLEVARFROMLSTR$OLEVARIANT$ANSISTRING
_VARIANTS_SYSOLEVARFROMLSTR$OLEVARIANT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3528
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_to_unicodestr$stub
	movl	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARFROMWSTR$VARIANT$WIDESTRING$stub
Lj3528:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3529
	call	LFPC_RERAISE$stub
Lj3529:
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOOLEVARFROMANY$TVARDATA$TVARDATA
_VARIANTS_DOOLEVARFROMANY$TVARDATA$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARCASTERROROLE$WORD$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOOLEVARFROMVAR$TVARDATA$TVARDATA
_VARIANTS_DOOLEVARFROMVAR$TVARDATA$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj3544
Lj3544:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$16396,%eax
	je	Lj3545
	jmp	Lj3546
Lj3545:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOOLEVARFROMVAR$TVARDATA$TVARDATA$stub
	jmp	Lj3551
Lj3546:
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$16,%ax
	jb	Lj3553
	subw	$16,%ax
	subw	$2,%ax
	jbe	Lj3554
	subw	$1,%ax
	je	Lj3555
	subw	$1,%ax
	je	Lj3556
	subw	$1,%ax
	je	Lj3557
	subw	$235,%ax
	je	Lj3558
	subw	$1,%ax
	je	Lj3559
	jmp	Lj3553
Lj3554:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	call	L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub
	jmp	Lj3552
Lj3555:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	andl	$-2147483648,%eax
	testl	%eax,%eax
	je	Lj3566
	jmp	Lj3567
Lj3566:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	call	L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub
	jmp	Lj3574
Lj3567:
	movl	L_TC_VARIANTS_OLEVARIANTINT64ASDOUBLE$non_lazy_ptr-Lj3544(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj3575
	jmp	Lj3576
Lj3575:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$5,%ecx
	call	L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub
	jmp	Lj3583
Lj3576:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$20,%ecx
	call	L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub
Lj3583:
Lj3574:
	jmp	Lj3552
Lj3556:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	12(%eax),%eax
	cmpl	$-1,%eax
	jl	Lj3590
	jg	Lj3592
	cmpl	$-2147483648,%edx
	jb	Lj3590
	jmp	Lj3592
Lj3592:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	12(%eax),%eax
	cmpl	$0,%eax
	jg	Lj3590
	jl	Lj3591
	cmpl	$2147483647,%edx
	ja	Lj3590
	jmp	Lj3591
Lj3590:
	movl	L_TC_VARIANTS_OLEVARIANTINT64ASDOUBLE$non_lazy_ptr-Lj3544(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj3593
	jmp	Lj3594
Lj3593:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$5,%ecx
	call	L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub
	jmp	Lj3601
Lj3594:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$20,%ecx
	call	L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub
Lj3601:
	jmp	Lj3608
Lj3591:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	call	L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub
Lj3608:
	jmp	Lj3552
Lj3557:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	12(%eax),%eax
	cmpl	$0,%eax
	ja	Lj3615
	jb	Lj3616
	cmpl	$2147483647,%edx
	ja	Lj3615
	jmp	Lj3616
Lj3615:
	movl	L_TC_VARIANTS_OLEVARIANTINT64ASDOUBLE$non_lazy_ptr-Lj3544(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj3617
	jmp	Lj3619
Lj3619:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	12(%eax),%eax
	movl	$0,%edx
	andl	$-2147483648,%eax
	cmpl	$0,%eax
	jne	Lj3617
	cmpl	$0,%edx
	jne	Lj3617
	jmp	Lj3618
Lj3617:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$5,%ecx
	call	L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub
	jmp	Lj3626
Lj3618:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$20,%ecx
	call	L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub
Lj3626:
	jmp	Lj3633
Lj3616:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	call	L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub
Lj3633:
	jmp	Lj3552
Lj3558:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$8,%ecx
	call	L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub
	jmp	Lj3552
Lj3559:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOOLEVARFROMANY$TVARDATA$TVARDATA$stub
	jmp	Lj3552
Lj3553:
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj3650
	jmp	Lj3651
Lj3650:
	movl	L_VARIANTS_DOOLEVARFROMVAR$TVARDATA$TVARDATA$non_lazy_ptr-Lj3544(%ebx),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCOPYARRAY$TVARDATA$TVARDATA$TVARARRAYCOPYCALLBACK$stub
	jmp	Lj3658
Lj3651:
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	cmpl	$271,%eax
	jl	Lj3659
	jmp	Lj3660
Lj3659:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCOPY$TVARDATA$TVARDATA$stub
	jmp	Lj3665
Lj3660:
	leal	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3666
	jmp	Lj3667
Lj3666:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*132(%esi)
	jmp	Lj3678
Lj3667:
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARCASTERROROLE$WORD$stub
Lj3678:
Lj3665:
Lj3658:
Lj3552:
Lj3551:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSOLEVARFROMVAR$OLEVARIANT$VARIANT
_VARIANTS_SYSOLEVARFROMVAR$OLEVARIANT$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOOLEVARFROMVAR$TVARDATA$TVARDATA$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSOLEVARFROMINT$OLEVARIANT$LONGINT$SHORTINT
_VARIANTS_SYSOLEVARFROMINT$OLEVARIANT$LONGINT$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARIFCOMPLEX$TVARDATA$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movw	$3,(%eax)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DOVARCASTOLE$TVARDATA$TVARDATA$LONGINT
_VARIANTS_DOVARCASTOLE$TVARDATA$TVARDATA$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$16396,%eax
	je	Lj3697
	jmp	Lj3698
Lj3697:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCASTOLE$TVARDATA$TVARDATA$LONGINT$stub
	jmp	Lj3705
Lj3698:
	movl	-12(%ebp),%eax
	cmpl	$256,%eax
	je	Lj3706
	jmp	Lj3708
Lj3708:
	movl	-12(%ebp),%eax
	cmpl	$257,%eax
	je	Lj3706
	jmp	Lj3707
Lj3706:
	movw	-12(%ebp),%dx
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
	jmp	Lj3713
Lj3707:
	leal	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3714
	jmp	Lj3715
Lj3714:
	movw	-12(%ebp),%ax
	movw	%ax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	jmp	Lj3728
Lj3715:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub
Lj3728:
Lj3713:
Lj3705:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARCASTOLE$VARIANT$VARIANT$LONGINT
_VARIANTS_SYSVARCASTOLE$VARIANT$VARIANT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCASTOLE$TVARDATA$TVARDATA$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSDISPINVOKE$PVARDATA$TVARDATA$PCALLDESC$POINTER
_VARIANTS_SYSDISPINVOKE$PVARDATA$TVARDATA$PCALLDESC$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	call	Lj3744
Lj3744:
	popl	%ebx
	movzwl	12(%ebp),%eax
	cmpl	$16396,%eax
	je	Lj3745
	jmp	Lj3746
Lj3745:
	movl	32(%ebp),%eax
	movl	%eax,24(%esp)
	movl	28(%ebp),%eax
	movl	%eax,20(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%esi
	leal	4(%esp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	call	L_VARIANTS_SYSDISPINVOKE$PVARDATA$TVARDATA$PCALLDESC$POINTER$stub
	jmp	Lj3755
Lj3746:
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj3756
	cmpl	$0,8(%ebp)
	jne	Lj3761
	jmp	Lj3760
Lj3760:
	movl	$0,-20(%ebp)
	jmp	Lj3764
Lj3761:
	leal	-16(%ebp),%eax
	movb	$0,%cl
	movl	$16,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	leal	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj3764:
	movw	12(%ebp),%ax
	cmpw	$9,%ax
	jb	Lj3774
	subw	$9,%ax
	je	Lj3775
	subw	$4,%ax
	je	Lj3775
	subw	$244,%ax
	je	Lj3775
	subw	$16136,%ax
	je	Lj3775
	subw	$4,%ax
	je	Lj3775
	subw	$244,%ax
	je	Lj3775
	jmp	Lj3774
Lj3775:
	movl	32(%ebp),%eax
	movl	%eax,24(%esp)
	movl	28(%ebp),%eax
	movl	%eax,20(%esp)
	leal	4(%esp),%edi
	leal	12(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_U_VARIANTS_VARDISPPROC$non_lazy_ptr-Lj3744(%ebx),%eax
	movl	(%eax),%eax
	call	*%eax
	jmp	Lj3773
Lj3774:
	leal	-24(%ebp),%edx
	movw	12(%ebp),%ax
	call	L_VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3784
	jmp	Lj3785
Lj3784:
	movl	32(%ebp),%eax
	movl	%eax,(%esp)
	movl	28(%ebp),%eax
	movl	%eax,4(%esp)
	leal	12(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%esi
	movl	(%esi),%esi
	call	*116(%esi)
	jmp	Lj3800
Lj3785:
	call	L_VARIANTS_VARINVALIDOP$stub
Lj3800:
Lj3773:
Lj3756:
	call	LFPC_POPADDRSTACK$stub
	cmpl	$0,-20(%ebp)
	jne	Lj3801
	jmp	Lj3802
Lj3801:
	movl	-20(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_VARIANTS_DOVARCOPY$TVARDATA$TVARDATA$stub
	movw	-16(%ebp),%ax
	andw	$49128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj3807
	jmp	Lj3808
Lj3807:
	leal	-16(%ebp),%eax
	call	L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub
	jmp	Lj3811
Lj3808:
	movw	$0,-16(%ebp)
Lj3811:
Lj3802:
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj3757
	subl	$1,%eax
	testl	%eax,%eax
	je	Lj3758
Lj3758:
	call	LFPC_RERAISE$stub
Lj3757:
Lj3755:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARARRAYREDIM$VARIANT$LONGINT
_VARIANTS_SYSVARARRAYREDIM$VARIANT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-44(%ebp)
	movl	%edi,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	jmp	Lj3819
	.align 2
Lj3818:
	movl	-16(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
Lj3819:
	movzwl	-24(%ebp),%eax
	cmpl	$16396,%eax
	je	Lj3818
	jmp	Lj3820
Lj3820:
	movw	-24(%ebp),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj3823
	jmp	Lj3824
Lj3823:
	movw	-24(%ebp),%ax
	andw	$16384,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj3825
	jmp	Lj3826
Lj3825:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj3829
Lj3826:
	movl	-16(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj3829:
	movl	-28(%ebp),%edx
	movl	-28(%ebp),%eax
	movzwl	(%eax),%eax
	subl	$1,%eax
	jno	Lj3834
	call	LFPC_OVERFLOW$stub
Lj3834:
	movl	20(%edx,%eax,8),%eax
	subl	$1,%eax
	jno	Lj3835
	call	LFPC_OVERFLOW$stub
Lj3835:
	cmpl	-8(%ebp),%eax
	jg	Lj3832
	jmp	Lj3833
Lj3832:
	call	L_VARIANTS_VARINVALIDARGERROR$stub
Lj3833:
	movl	-28(%ebp),%edx
	movl	-28(%ebp),%eax
	movzwl	(%eax),%eax
	subl	$1,%eax
	jno	Lj3838
	call	LFPC_OVERFLOW$stub
Lj3838:
	movl	20(%edx,%eax,8),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	subl	%eax,%edx
	jno	Lj3841
	call	LFPC_OVERFLOW$stub
Lj3841:
	addl	$1,%edx
	jno	Lj3842
	call	LFPC_OVERFLOW$stub
Lj3842:
	movl	%edx,-36(%ebp)
	leal	-36(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYREDIM$PVARARRAY$TVARARRAYBOUND$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
	jmp	Lj3849
Lj3824:
	movw	-24(%ebp),%ax
	call	L_VARIANTS_VARINVALIDARGERROR$WORD$stub
Lj3849:
	movl	-44(%ebp),%esi
	movl	-40(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_GETFINALVARTYPE$TVARDATA$$WORD
_VARIANTS_GETFINALVARTYPE$TVARDATA$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj3857
	.align 2
Lj3856:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
Lj3857:
	movl	-12(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$16396,%eax
	je	Lj3856
	jmp	Lj3858
Lj3858:
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSVARARRAYGET$VARIANT$LONGINT$PLONGINT$$VARIANT
_VARIANTS_SYSVARARRAYGET$VARIANT$LONGINT$PLONGINT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	leal	-16(%ebp),%edi
	leal	12(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	jmp	Lj3868
	.align 2
Lj3867:
	movl	-8(%ebp),%esi
	leal	-16(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
Lj3868:
	movzwl	-16(%ebp),%eax
	cmpl	$16396,%eax
	je	Lj3867
	jmp	Lj3869
Lj3869:
	movw	-16(%ebp),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj3872
	jmp	Lj3873
Lj3872:
	movw	-16(%ebp),%ax
	andw	$16384,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj3874
	jmp	Lj3875
Lj3874:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj3878
Lj3875:
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj3878:
	movl	-20(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	28(%ebp),%eax
	jne	Lj3881
	jmp	Lj3882
Lj3881:
	call	L_VARIANTS_VARINVALIDARGERROR$stub
Lj3882:
	movw	-16(%ebp),%ax
	andw	$4095,%ax
	movw	%ax,-26(%ebp)
	movzwl	-26(%ebp),%eax
	cmpl	$12,%eax
	je	Lj3885
	jmp	Lj3886
Lj3885:
	leal	-24(%ebp),%eax
	movl	%eax,8(%esp)
	movl	32(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYPTROFINDEX$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
	movl	-24(%ebp),%edx
	movl	8(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj3899
Lj3886:
	movl	8(%ebp),%eax
	movw	-26(%ebp),%dx
	movw	%dx,(%eax)
	movl	32(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	leal	8(%eax),%eax
	movl	%eax,8(%esp)
	call	L_VARUTILS_SAFEARRAYGETELEMENT$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
Lj3899:
	jmp	Lj3910
Lj3873:
	movw	-16(%ebp),%ax
	call	L_VARIANTS_VARINVALIDARGERROR$WORD$stub
Lj3910:
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret	$4

.text
	.align 4
.globl	_VARIANTS_SYSVARARRAYPUT$VARIANT$VARIANT$LONGINT$PLONGINT
_VARIANTS_SYSVARARRAYPUT$VARIANT$VARIANT$LONGINT$PLONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-120(%ebp)
	movl	%esi,-116(%ebp)
	movl	%edi,-112(%ebp)
	call	Lj3914
Lj3914:
	popl	%ebx
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj3914(%ebx),%edx
	leal	-48(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	$0,-108(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj3914(%ebx),%eax
	movl	%eax,%edx
	leal	-104(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj3915
	movl	8(%ebp),%esi
	leal	-16(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	jmp	Lj3921
	.align 2
Lj3920:
	movl	-8(%ebp),%esi
	leal	-16(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
Lj3921:
	movzwl	-16(%ebp),%eax
	cmpl	$16396,%eax
	je	Lj3920
	jmp	Lj3922
Lj3922:
	leal	12(%ebp),%eax
	call	L_VARIANTS_GETFINALVARTYPE$TVARDATA$$WORD$stub
	movw	%ax,-26(%ebp)
	movw	-26(%ebp),%ax
	call	L_VARIANTS_VARTYPEISVALIDELEMENTTYPE$WORD$$BOOLEAN$stub
	testb	%al,%al
	je	Lj3931
	jmp	Lj3930
Lj3931:
	movzwl	-26(%ebp),%eax
	cmpl	$256,%eax
	jne	Lj3929
	jmp	Lj3930
Lj3929:
	movw	-16(%ebp),%dx
	movw	-26(%ebp),%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
Lj3930:
	movw	-16(%ebp),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj3938
	jmp	Lj3939
Lj3938:
	movw	-16(%ebp),%ax
	andw	$16384,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj3940
	jmp	Lj3941
Lj3940:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj3944
Lj3941:
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj3944:
	movl	-20(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	28(%ebp),%eax
	jne	Lj3947
	jmp	Lj3948
Lj3947:
	call	L_VARIANTS_VARINVALIDARGERROR$stub
Lj3948:
	movw	-16(%ebp),%ax
	andw	$4095,%ax
	movw	%ax,-28(%ebp)
	movzwl	-28(%ebp),%eax
	cmpl	$12,%eax
	je	Lj3951
	jmp	Lj3952
Lj3951:
	leal	-24(%ebp),%eax
	movl	%eax,8(%esp)
	movl	32(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYPTROFINDEX$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
	movzwl	-26(%ebp),%eax
	cmpl	$256,%eax
	je	Lj3961
	jmp	Lj3962
Lj3961:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj3914(%ebx),%eax
	movl	%eax,%edx
	leal	-104(%ebp),%eax
	call	LFPC_FINALIZE$stub
	leal	-108(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%edx
	leal	12(%ebp),%eax
	call	L_VARIANTS_VARTOWIDESTR$VARIANT$$WIDESTRING$stub
	movl	-108(%ebp),%eax
	leal	-104(%ebp),%edx
	call	L_SYSTEM_assign$WIDESTRING$$VARIANT$stub
	leal	-104(%ebp),%edx
	leal	-48(%ebp),%eax
	call	Lfpc_variant_copy$stub
	leal	-48(%ebp),%edx
	movl	-24(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj3979
Lj3962:
	leal	12(%ebp),%edx
	movl	-24(%ebp),%eax
	call	Lfpc_variant_copy$stub
Lj3979:
	jmp	Lj3984
Lj3952:
	movzwl	-28(%ebp),%ecx
	leal	12(%ebp),%edx
	leal	-48(%ebp),%eax
	call	L_SYSTEM_VARCAST$VARIANT$VARIANT$LONGINT$stub
	movzwl	-28(%ebp),%eax
	subl	$8,%eax
	cmpl	$2,%eax
	jb	Lj3993
	cmpl	$5,%eax
	stc
	je	Lj3993
	clc
Lj3993:
	jc	Lj3991
	jmp	Lj3992
Lj3991:
	movl	-40(%ebp),%eax
	movl	%eax,8(%esp)
	movl	32(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYPUTELEMENT$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
	jmp	Lj4002
Lj3992:
	movl	32(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	leal	-40(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_VARUTILS_SAFEARRAYPUTELEMENT$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
Lj4002:
Lj3984:
	jmp	Lj4011
Lj3939:
	movw	-16(%ebp),%ax
	call	L_VARIANTS_VARINVALIDARGERROR$WORD$stub
Lj4011:
Lj3915:
	call	LFPC_POPADDRSTACK$stub
	leal	-108(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj3914(%ebx),%eax
	movl	%eax,%edx
	leal	-104(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj3914(%ebx),%edx
	leal	-48(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj3916
	call	LFPC_RERAISE$stub
Lj3916:
	movl	-120(%ebp),%ebx
	movl	-116(%ebp),%esi
	movl	-112(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSWRITEVARIANT$TEXT$VARIANT$LONGINT$$POINTER
_VARIANTS_SYSWRITEVARIANT$TEXT$VARIANT$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$248,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	leal	-216(%ebp),%ecx
	leal	-240(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-244(%ebp)
	testl	%eax,%eax
	jne	Lj4024
	leal	-204(%ebp),%eax
	call	L_SYSTEM_GETVARIANTMANAGER$TVARIANTMANAGER$stub
	movl	-8(%ebp),%edx
	leal	-20(%ebp),%eax
	movl	-172(%ebp),%ecx
	call	*%ecx
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	LFPC_WRITE_TEXT_ANSISTR$stub
	movl	$0,-16(%ebp)
Lj4024:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-244(%ebp),%eax
	testl	%eax,%eax
	je	Lj4025
	call	LFPC_RERAISE$stub
Lj4025:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SYSWRITE0VARIANT$TEXT$VARIANT$$POINTER
_VARIANTS_SYSWRITE0VARIANT$TEXT$VARIANT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$248,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	leal	-212(%ebp),%ecx
	leal	-236(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-240(%ebp)
	testl	%eax,%eax
	jne	Lj4049
	leal	-200(%ebp),%eax
	call	L_SYSTEM_GETVARIANTMANAGER$TVARIANTMANAGER$stub
	movl	-8(%ebp),%edx
	leal	-16(%ebp),%eax
	movl	-168(%ebp),%ecx
	call	*%ecx
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$-1,%eax
	call	LFPC_WRITE_TEXT_ANSISTR$stub
	movl	$0,-12(%ebp)
Lj4049:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-240(%ebp),%eax
	testl	%eax,%eax
	je	Lj4050
	call	LFPC_RERAISE$stub
Lj4050:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SETSYSVARIANTMANAGER
_VARIANTS_SETSYSVARIANTMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj4073
Lj4073:
	popl	%ebx
	movl	L_U_VARIANTS_PREVVARIANTMANAGER$non_lazy_ptr-Lj4073(%ebx),%eax
	call	L_SYSTEM_GETVARIANTMANAGER$TVARIANTMANAGER$stub
	movl	L_TC_VARIANTS_SYSVARIANTMANAGER$non_lazy_ptr-Lj4073(%ebx),%eax
	call	L_SYSTEM_SETVARIANTMANAGER$TVARIANTMANAGER$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_UNSETSYSVARIANTMANAGER
_VARIANTS_UNSETSYSVARIANTMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj4079
Lj4079:
	popl	%ebx
	movl	L_U_VARIANTS_PREVVARIANTMANAGER$non_lazy_ptr-Lj4079(%ebx),%eax
	call	L_SYSTEM_SETVARIANTMANAGER$TVARIANTMANAGER$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARTYPE$VARIANT$$WORD
_VARIANTS_VARTYPE$VARIANT$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARTYPEDEREF$VARIANT$$WORD
_VARIANTS_VARTYPEDEREF$VARIANT$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-16385,%eax
	movw	%ax,-6(%ebp)
	jmp	Lj4093
	.align 2
Lj4092:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj4098
	jmp	Lj4097
Lj4097:
	call	L_VARIANTS_VARBADTYPEERROR$stub
Lj4098:
	movl	-12(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-16385,%eax
	movw	%ax,-6(%ebp)
Lj4093:
	movzwl	-6(%ebp),%eax
	cmpl	$12,%eax
	je	Lj4092
	jmp	Lj4094
Lj4094:
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARTYPEDEREF$TVARDATA$$WORD
_VARIANTS_VARTYPEDEREF$TVARDATA$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_VARTYPEDEREF$VARIANT$$WORD$stub
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARASTYPE$VARIANT$WORD$$VARIANT
_VARIANTS_VARASTYPE$VARIANT$WORD$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movzwl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_VARIANTS_SYSVARCAST$VARIANT$VARIANT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARISTYPE$VARIANT$WORD$$BOOLEAN
_VARIANTS_VARISTYPE$VARIANT$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	cmpw	-8(%ebp),%ax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARISTYPE$VARIANT$array_of_WORD$$BOOLEAN
_VARIANTS_VARISTYPE$VARIANT$array_of_WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movb	$0,-13(%ebp)
	jmp	Lj4126
	.align 2
Lj4125:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	cmpw	(%ecx,%edx,2),%ax
	seteb	-13(%ebp)
	movl	-20(%ebp),%eax
	addl	$1,%eax
	jno	Lj4132
	call	LFPC_OVERFLOW$stub
Lj4132:
	movl	%eax,-20(%ebp)
Lj4126:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj4133
	jmp	Lj4127
Lj4133:
	movl	-20(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jle	Lj4125
	jmp	Lj4127
Lj4127:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARISBYREF$VARIANT$$BOOLEAN
_VARIANTS_VARISBYREF$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$16384,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARISEMPTY$VARIANT$$BOOLEAN
_VARIANTS_VARISEMPTY$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	testl	%eax,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARCHECKEMPTY$VARIANT
_VARIANTS_VARCHECKEMPTY$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	call	Lj4143
Lj4143:
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
	jne	Lj4144
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	testl	%eax,%eax
	seteb	%al
	testb	%al,%al
	jne	Lj4147
	jmp	Lj4148
Lj4147:
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	L_RESSTR_VARIANTS_SERRVARISEMPTY$non_lazy_ptr-Lj4143(%ebx),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_VARIANTS_SERRVARISEMPTY$non_lazy_ptr-Lj4143(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%ecx
	movl	L_VMT_SYSUTILS_EVARIANTERROR$non_lazy_ptr-Lj4143(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj4143(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj4148:
Lj4144:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj4145
	call	LFPC_RERAISE$stub
Lj4145:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARCLEAR$VARIANT
_VARIANTS_VARCLEAR$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARCLEAR$VARIANT$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARCLEAR$OLEVARIANT
_VARIANTS_VARCLEAR$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARCLEAR$VARIANT$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARISNULL$VARIANT$$BOOLEAN
_VARIANTS_VARISNULL$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$1,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARISCLEAR$VARIANT$$BOOLEAN
_VARIANTS_VARISCLEAR$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movw	%ax,-8(%ebp)
	movzwl	-8(%ebp),%eax
	cmpl	$271,%eax
	jl	Lj4175
	jmp	Lj4176
Lj4175:
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4177
	jmp	Lj4179
Lj4179:
	movzwl	-8(%ebp),%eax
	cmpl	$9,%eax
	je	Lj4180
	jmp	Lj4181
Lj4181:
	movzwl	-8(%ebp),%eax
	cmpl	$13,%eax
	je	Lj4180
	jmp	Lj4178
Lj4180:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj4177
	jmp	Lj4178
Lj4177:
	movb	$1,-5(%ebp)
	jmp	Lj4182
Lj4178:
	movb	$0,-5(%ebp)
Lj4182:
	jmp	Lj4183
Lj4176:
	leal	-12(%ebp),%edx
	movw	-8(%ebp),%ax
	call	L_VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4186
	jmp	Lj4185
Lj4186:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*120(%ecx)
	testb	%al,%al
	jne	Lj4184
	jmp	Lj4185
Lj4184:
	movb	$1,-5(%ebp)
	jmp	Lj4195
Lj4185:
	movb	$0,-5(%ebp)
Lj4195:
Lj4183:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARISCUSTOM$VARIANT$$BOOLEAN
_VARIANTS_VARISCUSTOM$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$271,%eax
	setgeb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARISORDINAL$VARIANT$$BOOLEAN
_VARIANTS_VARISORDINAL$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	subl	$2,%eax
	cmpl	$2,%eax
	jb	Lj4204
	cmpl	$9,%eax
	stc
	je	Lj4204
	subl	$14,%eax
	cmpl	$5,%eax
	jb	Lj4204
Lj4204:
	setcb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARISFLOAT$VARIANT$$BOOLEAN
_VARIANTS_VARISFLOAT$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	subl	$4,%eax
	cmpl	$3,%eax
	jb	Lj4209
Lj4209:
	setcb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARISNUMERIC$VARIANT$$BOOLEAN
_VARIANTS_VARISNUMERIC$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	subl	$2,%eax
	cmpl	$5,%eax
	jb	Lj4214
	cmpl	$9,%eax
	stc
	je	Lj4214
	subl	$14,%eax
	cmpl	$5,%eax
	jb	Lj4214
Lj4214:
	setcb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARISSTR$VARIANT$$BOOLEAN
_VARIANTS_VARISSTR$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	cmpw	$8,%ax
	jb	Lj4218
	subw	$8,%ax
	je	Lj4219
	subw	$248,%ax
	je	Lj4219
	subw	$2,%ax
	je	Lj4219
	jmp	Lj4218
Lj4219:
	movb	$1,-5(%ebp)
	jmp	Lj4217
Lj4218:
	movb	$0,-5(%ebp)
Lj4217:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARISBOOL$VARIANT$$BOOLEAN
_VARIANTS_VARISBOOL$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	cmpl	$11,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARTOSTR$VARIANT$$ANSISTRING
_VARIANTS_VARTOSTR$VARIANT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_VARIANTS_VARTOSTRDEF$VARIANT$ANSISTRING$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARTOSTRDEF$VARIANT$ANSISTRING$$ANSISTRING
_VARIANTS_VARTOSTRDEF$VARIANT$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$1,%eax
	jne	Lj4238
	jmp	Lj4239
Lj4238:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$ANSISTRING$stub
	jmp	Lj4244
Lj4239:
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
Lj4244:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARTOWIDESTR$VARIANT$$WIDESTRING
_VARIANTS_VARTOWIDESTR$VARIANT$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_VARIANTS_VARTOWIDESTRDEF$VARIANT$WIDESTRING$$WIDESTRING$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARTOWIDESTRDEF$VARIANT$WIDESTRING$$WIDESTRING
_VARIANTS_VARTOWIDESTRDEF$VARIANT$WIDESTRING$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$1,%eax
	jne	Lj4257
	jmp	Lj4258
Lj4257:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$WIDESTRING$stub
	jmp	Lj4263
Lj4258:
	movl	-8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
Lj4263:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARTOUNICODESTR$VARIANT$$UNICODESTRING
_VARIANTS_VARTOUNICODESTR$VARIANT$$UNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_VARIANTS_VARTOUNICODESTRDEF$VARIANT$UNICODESTRING$$UNICODESTRING$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARTOUNICODESTRDEF$VARIANT$UNICODESTRING$$UNICODESTRING
_VARIANTS_VARTOUNICODESTRDEF$VARIANT$UNICODESTRING$$UNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj4276
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$1,%eax
	jne	Lj4279
	jmp	Lj4280
Lj4279:
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$WIDESTRING$stub
	movl	-56(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj4287
Lj4280:
	movl	-8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
Lj4287:
Lj4276:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj4277
	call	LFPC_RERAISE$stub
Lj4277:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARTODATETIME$VARIANT$$TDATETIME
_VARIANTS_VARTODATETIME$VARIANT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTODATE$TVARDATA$$TDATETIME$stub
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARFROMDATETIME$TDATETIME$$VARIANT
_VARIANTS_VARFROMDATETIME$TDATETIME$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARCLEAR$VARIANT$stub
	movl	-4(%ebp),%eax
	movw	$7,(%eax)
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,8(%edx)
	movl	12(%ebp),%eax
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARINRANGE$VARIANT$VARIANT$VARIANT$$BOOLEAN
_VARIANTS_VARINRANGE$VARIANT$VARIANT$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_greater_or_equal$VARIANT$VARIANT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4308
	jmp	Lj4307
Lj4308:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_lower_or_equal$VARIANT$VARIANT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4306
	jmp	Lj4307
Lj4306:
	movb	$1,-13(%ebp)
	jmp	Lj4317
Lj4307:
	movb	$0,-13(%ebp)
Lj4317:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARENSURERANGE$VARIANT$VARIANT$VARIANT$$VARIANT
_VARIANTS_VARENSURERANGE$VARIANT$VARIANT$VARIANT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_greater$VARIANT$VARIANT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4320
	jmp	Lj4321
Lj4320:
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4330
Lj4321:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_lower$VARIANT$VARIANT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4331
	jmp	Lj4332
Lj4331:
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4341
Lj4332:
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	call	Lfpc_variant_copy$stub
Lj4341:
Lj4330:
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARSAMEVALUE$VARIANT$VARIANT$$BOOLEAN
_VARIANTS_VARSAMEVALUE$VARIANT$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-52(%ebp)
	movl	%edi,-48(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_FINDVARDATA$VARIANT$$PVARDATA$stub
	movl	%eax,%esi
	leal	-28(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	call	L_VARIANTS_FINDVARDATA$VARIANT$$PVARDATA$stub
	movl	%eax,%esi
	leal	-44(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movzwl	-28(%ebp),%eax
	cmpl	$2,%eax
	jb	Lj4358
Lj4358:
	jc	Lj4356
	jmp	Lj4357
Lj4356:
	movw	-28(%ebp),%ax
	cmpw	-44(%ebp),%ax
	seteb	-9(%ebp)
	jmp	Lj4361
Lj4357:
	movzwl	-44(%ebp),%eax
	cmpl	$2,%eax
	jb	Lj4364
Lj4364:
	jc	Lj4362
	jmp	Lj4363
Lj4362:
	movb	$0,-9(%ebp)
	jmp	Lj4367
Lj4363:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_equal$VARIANT$VARIANT$$BOOLEAN$stub
	movb	%al,-9(%ebp)
Lj4367:
Lj4361:
	movb	-9(%ebp),%al
	movl	-52(%ebp),%esi
	movl	-48(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARCOMPAREVALUE$VARIANT$VARIANT$$TVARIANTRELATIONSHIP
_VARIANTS_VARCOMPAREVALUE$VARIANT$VARIANT$$TVARIANTRELATIONSHIP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-52(%ebp)
	movl	%edi,-48(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$3,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_FINDVARDATA$VARIANT$$PVARDATA$stub
	movl	%eax,%esi
	leal	-28(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	call	L_VARIANTS_FINDVARDATA$VARIANT$$PVARDATA$stub
	movl	%eax,%esi
	leal	-44(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movzwl	-28(%ebp),%eax
	cmpl	$2,%eax
	jb	Lj4389
Lj4389:
	jc	Lj4388
	jmp	Lj4387
Lj4388:
	movw	-28(%ebp),%ax
	cmpw	-44(%ebp),%ax
	je	Lj4386
	jmp	Lj4387
Lj4386:
	movl	$0,-12(%ebp)
	jmp	Lj4392
Lj4387:
	movzwl	-44(%ebp),%eax
	cmpl	$2,%eax
	jb	Lj4396
Lj4396:
	jnc	Lj4395
	jmp	Lj4394
Lj4395:
	movzwl	-28(%ebp),%eax
	cmpl	$2,%eax
	jb	Lj4397
Lj4397:
	jnc	Lj4393
	jmp	Lj4394
Lj4393:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_equal$VARIANT$VARIANT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4398
	jmp	Lj4399
Lj4398:
	movl	$0,-12(%ebp)
	jmp	Lj4406
Lj4399:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_greater$VARIANT$VARIANT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4407
	jmp	Lj4408
Lj4407:
	movl	$2,-12(%ebp)
	jmp	Lj4415
Lj4408:
	movl	$1,-12(%ebp)
Lj4415:
Lj4406:
Lj4394:
Lj4392:
	movl	-12(%ebp),%eax
	movl	-52(%ebp),%esi
	movl	-48(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARISEMPTYPARAM$VARIANT$$BOOLEAN
_VARIANTS_VARISEMPTYPARAM$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$10,%eax
	je	Lj4422
	jmp	Lj4421
Lj4422:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$-2147352572,%eax
	je	Lj4420
	jmp	Lj4421
Lj4420:
	movb	$1,-5(%ebp)
	jmp	Lj4423
Lj4421:
	movb	$0,-5(%ebp)
Lj4423:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SETCLEARVARTOEMPTYPARAM$TVARDATA
_VARIANTS_SETCLEARVARTOEMPTYPARAM$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTCLEAR$TVARDATA$$HRESULT$stub
	movl	-4(%ebp),%eax
	movw	$10,(%eax)
	movl	-4(%ebp),%eax
	movl	$-2147352572,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARISERROR$VARIANT$HRESULT$$BOOLEAN
_VARIANTS_VARISERROR$VARIANT$HRESULT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$10,%eax
	seteb	-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj4436
	jmp	Lj4437
Lj4436:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%edx)
Lj4437:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARISERROR$VARIANT$$BOOLEAN
_VARIANTS_VARISERROR$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$10,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARASERROR$HRESULT$$VARIANT
_VARIANTS_VARASERROR$HRESULT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movw	$10,(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARSUPPORTS$VARIANT$TGUID$formal$$BOOLEAN
_VARIANTS_VARSUPPORTS$VARIANT$TGUID$formal$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$9,%ax
	jb	Lj4453
	subw	$9,%ax
	je	Lj4456
	subw	$3,%ax
	je	Lj4458
	subw	$1,%ax
	je	Lj4454
	subw	$16380,%ax
	je	Lj4457
	subw	$3,%ax
	je	Lj4458
	subw	$1,%ax
	je	Lj4455
	jmp	Lj4453
Lj4454:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj4461
	jmp	Lj4460
Lj4461:
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	*(%eax)
	testl	%eax,%eax
	je	Lj4459
	jmp	Lj4460
Lj4459:
	movb	$1,-13(%ebp)
	jmp	Lj4468
Lj4460:
	movb	$0,-13(%ebp)
Lj4468:
	jmp	Lj4452
Lj4455:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj4472
	jmp	Lj4470
Lj4472:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$0,(%eax)
	jne	Lj4471
	jmp	Lj4470
Lj4471:
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	call	*(%eax)
	testl	%eax,%eax
	je	Lj4469
	jmp	Lj4470
Lj4469:
	movb	$1,-13(%ebp)
	jmp	Lj4479
Lj4470:
	movb	$0,-13(%ebp)
Lj4479:
	jmp	Lj4452
Lj4456:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj4482
	jmp	Lj4481
Lj4482:
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	*(%eax)
	testl	%eax,%eax
	je	Lj4480
	jmp	Lj4481
Lj4480:
	movb	$1,-13(%ebp)
	jmp	Lj4489
Lj4481:
	movb	$0,-13(%ebp)
Lj4489:
	jmp	Lj4452
Lj4457:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj4493
	jmp	Lj4491
Lj4493:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$0,(%eax)
	jne	Lj4492
	jmp	Lj4491
Lj4492:
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	call	*(%eax)
	testl	%eax,%eax
	je	Lj4490
	jmp	Lj4491
Lj4490:
	movb	$1,-13(%ebp)
	jmp	Lj4500
Lj4491:
	movb	$0,-13(%ebp)
Lj4500:
	jmp	Lj4452
Lj4458:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj4503
	jmp	Lj4502
Lj4503:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_VARIANTS_VARSUPPORTS$VARIANT$TGUID$formal$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4501
	jmp	Lj4502
Lj4501:
	movb	$1,-13(%ebp)
	jmp	Lj4510
Lj4502:
	movb	$0,-13(%ebp)
Lj4510:
	jmp	Lj4452
Lj4453:
	movb	$0,-13(%ebp)
Lj4452:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARSUPPORTS$VARIANT$TGUID$$BOOLEAN
_VARIANTS_VARSUPPORTS$VARIANT$TGUID$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj4515
	leal	-16(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_VARSUPPORTS$VARIANT$TGUID$formal$$BOOLEAN$stub
	movb	%al,-9(%ebp)
Lj4515:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_intf_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj4516
	call	LFPC_RERAISE$stub
Lj4516:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARCOPYNOIND$VARIANT$VARIANT
_VARIANTS_VARCOPYNOIND$VARIANT$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj4533
Lj4533:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_$VARIANTS$_Ld48$non_lazy_ptr-Lj4533(%ebx),%eax
	call	L_VARIANTS_NOTSUPPORTED$ANSISTRING$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARARRAYCREATE$array_of_LONGINT$WORD$$VARIANT
_VARIANTS_VARARRAYCREATE$array_of_LONGINT$WORD$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movw	%cx,-8(%ebp)
	movw	-8(%ebp),%ax
	call	L_VARIANTS_VARTYPEISVALIDARRAYTYPE$WORD$$BOOLEAN$stub
	testb	%al,%al
	je	Lj4538
	jmp	Lj4540
Lj4540:
	movl	-12(%ebp),%eax
	addl	$1,%eax
	jno	Lj4545
	call	LFPC_OVERFLOW$stub
Lj4545:
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	andl	$1,%eax
	testb	%al,%al
	jne	Lj4538
	jmp	Lj4539
Lj4538:
	call	L_VARIANTS_VARARRAYCREATEERROR$stub
Lj4539:
	movl	-12(%ebp),%eax
	addl	$1,%eax
	jno	Lj4552
	call	LFPC_OVERFLOW$stub
Lj4552:
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-28(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-32(%ebp)
	testl	%eax,%eax
	jne	Lj4553
	movl	-28(%ebp),%edx
	imull	$8,%edx
	jno	Lj4559
	call	LFPC_OVERFLOW$stub
Lj4559:
	leal	-16(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-28(%ebp),%eax
	subl	$1,%eax
	jno	Lj4565
	call	LFPC_OVERFLOW$stub
Lj4565:
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jl	Lj4563
	subl	$1,-24(%ebp)
	.align 2
Lj4564:
	addl	$1,-24(%ebp)
	movl	-4(%ebp),%esi
	movl	-24(%ebp),%edx
	imull	$2,%edx
	jno	Lj4568
	call	LFPC_OVERFLOW$stub
Lj4568:
	movl	-16(%ebp),%ebx
	movl	-24(%ebp),%ecx
	movl	(%esi,%edx,4),%edx
	movl	%edx,4(%ebx,%ecx,8)
	movl	-4(%ebp),%ebx
	movl	-24(%ebp),%edx
	imull	$2,%edx
	jno	Lj4571
	call	LFPC_OVERFLOW$stub
Lj4571:
	addl	$1,%edx
	jno	Lj4572
	call	LFPC_OVERFLOW$stub
Lj4572:
	movl	-4(%ebp),%esi
	movl	-24(%ebp),%ecx
	imull	$2,%ecx
	jno	Lj4573
	call	LFPC_OVERFLOW$stub
Lj4573:
	movl	(%ebx,%edx,4),%ebx
	movl	(%esi,%ecx,4),%edx
	subl	%edx,%ebx
	jno	Lj4574
	call	LFPC_OVERFLOW$stub
Lj4574:
	addl	$1,%ebx
	jno	Lj4575
	call	LFPC_OVERFLOW$stub
Lj4575:
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	%ebx,(%edx,%ecx,8)
	cmpl	-24(%ebp),%eax
	jg	Lj4564
Lj4563:
	movl	8(%ebp),%eax
	call	L_VARIANTS_SYSVARCLEAR$VARIANT$stub
	movl	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movzwl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_VARUTILS_SAFEARRAYCREATE$LONGWORD$LONGWORD$TVARARRAYBOUNDARRAY$$PVARARRAY$stub
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj4587
	jmp	Lj4586
Lj4586:
	call	L_VARIANTS_VARARRAYCREATEERROR$stub
Lj4587:
	movzwl	-8(%ebp),%eax
	orl	$8192,%eax
	movl	8(%ebp),%edx
	movw	%ax,(%edx)
	movl	8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,8(%eax)
Lj4553:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj4554
	subl	$1,%eax
	testl	%eax,%eax
	je	Lj4555
Lj4555:
	call	LFPC_RERAISE$stub
Lj4554:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARARRAYCREATE$PVARARRAYBOUNDARRAY$LONGINT$WORD$$VARIANT
_VARIANTS_VARARRAYCREATE$PVARARRAYBOUNDARRAY$LONGINT$WORD$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	-12(%ebp),%ax
	call	L_VARIANTS_VARTYPEISVALIDARRAYTYPE$WORD$$BOOLEAN$stub
	testb	%al,%al
	je	Lj4596
	jmp	Lj4597
Lj4596:
	call	L_VARIANTS_VARARRAYCREATEERROR$stub
Lj4597:
	movl	8(%ebp),%eax
	call	L_VARIANTS_SYSVARCLEAR$VARIANT$stub
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movzwl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_VARUTILS_SAFEARRAYCREATE$LONGWORD$LONGWORD$TVARARRAYBOUNDARRAY$$PVARARRAY$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj4611
	jmp	Lj4610
Lj4610:
	call	L_VARIANTS_VARARRAYCREATEERROR$stub
Lj4611:
	movzwl	-12(%ebp),%eax
	orl	$8192,%eax
	movl	8(%ebp),%edx
	movw	%ax,(%edx)
	movl	8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARARRAYOF$array_of_VARIANT$$VARIANT
_VARIANTS_VARARRAYOF$array_of_VARIANT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	movl	%edi,-84(%ebp)
	call	Lj4617
Lj4617:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4617(%esi),%eax
	movl	%eax,%edx
	leal	-72(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj4618
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4617(%esi),%eax
	movl	%eax,%edx
	leal	-72(%ebp),%eax
	call	LFPC_FINALIZE$stub
	leal	-72(%ebp),%eax
	movl	%eax,(%esp)
	movl	$0,-80(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-76(%ebp)
	leal	-80(%ebp),%eax
	movw	$12,%cx
	movl	$1,%edx
	call	L_VARIANTS_VARARRAYCREATE$array_of_LONGINT$WORD$$VARIANT$stub
	leal	-72(%ebp),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_variant_copy$stub
	movl	-8(%ebp),%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj4634
	subl	$1,-16(%ebp)
	.align 2
Lj4635:
	addl	$1,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$1,(%esp)
	leal	-76(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	shll	$4,%eax
	leal	(%edx,%eax),%eax
	movl	-12(%ebp),%edi
	movl	%eax,%edx
	movl	%edi,%eax
	call	Lfpc_vararray_put$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj4635
Lj4634:
Lj4618:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4617(%esi),%eax
	movl	%eax,%edx
	leal	-72(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj4619
	call	LFPC_RERAISE$stub
Lj4619:
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	movl	-84(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARARRAYASPSAFEARRAY$VARIANT$$PVARARRAY
_VARIANTS_VARARRAYASPSAFEARRAY$VARIANT$$PVARARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	jmp	Lj4651
	.align 2
Lj4650:
	movl	-16(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
Lj4651:
	movzwl	-24(%ebp),%eax
	cmpl	$16396,%eax
	je	Lj4650
	jmp	Lj4652
Lj4652:
	movw	-24(%ebp),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	cmpl	$8192,%eax
	je	Lj4655
	jmp	Lj4656
Lj4655:
	movw	-24(%ebp),%ax
	andw	$16384,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj4657
	jmp	Lj4658
Lj4657:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj4661
Lj4658:
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj4661:
	jmp	Lj4664
Lj4656:
	movl	$-2147024809,%eax
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
Lj4664:
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARARRAYDIMCOUNT$VARIANT$$LONGINT
_VARIANTS_VARARRAYDIMCOUNT$VARIANT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	jmp	Lj4672
	.align 2
Lj4671:
	movl	-16(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
Lj4672:
	movzwl	-24(%ebp),%eax
	cmpl	$16396,%eax
	je	Lj4671
	jmp	Lj4673
Lj4673:
	movw	-24(%ebp),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj4676
	jmp	Lj4677
Lj4676:
	movl	-16(%ebp),%eax
	movzwl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj4680
Lj4677:
	movl	$0,-8(%ebp)
Lj4680:
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARARRAYLOWBOUND$VARIANT$LONGINT$$LONGINT
_VARIANTS_VARARRAYLOWBOUND$VARIANT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_VARARRAYASPSAFEARRAY$VARIANT$$PVARARRAY$stub
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYGETLBOUND$PVARARRAY$LONGWORD$LONGINT$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARARRAYHIGHBOUND$VARIANT$LONGINT$$LONGINT
_VARIANTS_VARARRAYHIGHBOUND$VARIANT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_VARARRAYASPSAFEARRAY$VARIANT$$PVARARRAY$stub
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYGETUBOUND$PVARARRAY$LONGWORD$LONGINT$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARARRAYLOCK$VARIANT$$POINTER
_VARIANTS_VARARRAYLOCK$VARIANT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_VARARRAYASPSAFEARRAY$VARIANT$$PVARARRAY$stub
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYACCESSDATA$PVARARRAY$POINTER$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARARRAYUNLOCK$VARIANT
_VARIANTS_VARARRAYUNLOCK$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_VARARRAYASPSAFEARRAY$VARIANT$$PVARARRAY$stub
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYUNACCESSDATA$PVARARRAY$$HRESULT$stub
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARARRAYREF$VARIANT$$VARIANT
_VARIANTS_VARARRAYREF$VARIANT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	je	Lj4727
	jmp	Lj4728
Lj4727:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_VARIANTS_VARINVALIDARGERROR$WORD$stub
Lj4728:
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	orl	$16384,%eax
	movl	-8(%ebp),%edx
	movw	%ax,(%edx)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$16384,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	je	Lj4733
	jmp	Lj4734
Lj4733:
	movl	-4(%ebp),%eax
	leal	8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	%edx,8(%eax)
	jmp	Lj4737
Lj4734:
	movl	-4(%ebp),%eax
	leal	8(%eax),%eax
	movl	-8(%ebp),%edx
	movl	%eax,8(%edx)
Lj4737:
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARISARRAY$VARIANT$BOOLEAN$$BOOLEAN
_VARIANTS_VARISARRAY$VARIANT$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-28(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	cmpb	$0,-8(%ebp)
	jne	Lj4744
	jmp	Lj4745
Lj4744:
	jmp	Lj4747
	.align 2
Lj4746:
	movl	-20(%ebp),%esi
	leal	-28(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
Lj4747:
	movzwl	-28(%ebp),%eax
	cmpl	$16396,%eax
	je	Lj4746
	jmp	Lj4748
Lj4748:
Lj4745:
	movw	-28(%ebp),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	cmpl	$8192,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARISARRAY$VARIANT$$BOOLEAN
_VARIANTS_VARISARRAY$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_VARIANTS_VARISARRAY$VARIANT$BOOLEAN$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARTYPEISVALIDARRAYTYPE$WORD$$BOOLEAN
_VARIANTS_VARTYPEISVALIDARRAYTYPE$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movzwl	-4(%ebp),%eax
	subl	$2,%eax
	cmpl	$12,%eax
	jb	Lj4765
	subl	$14,%eax
	cmpl	$4,%eax
	jb	Lj4765
Lj4765:
	setcb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARTYPEISVALIDELEMENTTYPE$WORD$$BOOLEAN
_VARIANTS_VARTYPEISVALIDELEMENTTYPE$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movzwl	-4(%ebp),%eax
	andl	$-16385,%eax
	andl	$-8193,%eax
	cmpl	$14,%eax
	jb	Lj4771
	subl	$16,%eax
	cmpl	$5,%eax
	jb	Lj4771
Lj4771:
	jc	Lj4768
	jmp	Lj4770
Lj4770:
	leal	-12(%ebp),%edx
	movw	-4(%ebp),%ax
	call	L_VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4768
	jmp	Lj4769
Lj4768:
	movb	$1,-5(%ebp)
	jmp	Lj4776
Lj4769:
	movb	$0,-5(%ebp)
Lj4776:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DYNARRAYGETVARIANTINFO$POINTER$LONGINT$$LONGINT
_VARIANTS_DYNARRAYGETVARIANTINFO$POINTER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$1,-12(%ebp)
	movl	-4(%ebp),%eax
	movzbl	1(%eax),%eax
	addl	$2,%eax
	jno	Lj4781
	call	LFPC_OVERFLOW$stub
Lj4781:
	addl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-4(%ebp)
	addl	$4,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	cmpl	$21,%eax
	je	Lj4786
	jmp	Lj4787
Lj4786:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_VARIANTS_DYNARRAYGETVARIANTINFO$POINTER$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	jmp	Lj4794
Lj4787:
	addl	$4,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
Lj4794:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	addl	$1,%eax
	jno	Lj4799
	call	LFPC_OVERFLOW$stub
Lj4799:
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DYNARRAYTOVARIANT$VARIANT$POINTER$POINTER
_VARIANTS_DYNARRAYTOVARIANT$VARIANT$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$536,%esp
	movl	%ebx,-520(%ebp)
	movl	%esi,-516(%ebp)
	call	Lj4801
Lj4801:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_INIT_VARIANTS_TDYNARRAYITER$non_lazy_ptr-Lj4801(%ebx),%edx
	leal	-76(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	$0,-100(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-512(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-496(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-480(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-464(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-448(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-432(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-416(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-400(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-384(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-368(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-352(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-336(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-320(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-304(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-288(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-272(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-256(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-200(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	leal	-112(%ebp),%ecx
	leal	-136(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-140(%ebp)
	testl	%eax,%eax
	jne	Lj4802
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCLEAR$TVARDATA$stub
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_VARIANTS_DYNARRAYGETVARIANTINFO$POINTER$LONGINT$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj4819
	jmp	Lj4818
Lj4819:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_VARIANTS_DYNAMICARRAYISRECTANGULAR$POINTER$POINTER$$BOOLEAN$stub
	testb	%al,%al
	je	Lj4817
	jmp	Lj4818
Lj4817:
	jmp	Lj4802
Lj4818:
	movl	-20(%ebp),%eax
	movl	%eax,-144(%ebp)
	leal	-144(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_VARIANTS_TDYNARRAYBOUNDS$non_lazy_ptr-Lj4801(%ebx),%edx
	leal	-100(%ebp),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-20(%ebp),%edx
	imull	$8,%edx
	jno	Lj4836
	call	LFPC_OVERFLOW$stub
Lj4836:
	leal	-32(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	leal	-156(%ebp),%ecx
	leal	-180(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-144(%ebp)
	testl	%eax,%eax
	jne	Lj4839
	movl	-8(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	-20(%ebp),%esi
	subl	$1,%esi
	jno	Lj4848
	call	LFPC_OVERFLOW$stub
Lj4848:
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj4846
	subl	$1,-16(%ebp)
	.align 2
Lj4847:
	addl	$1,-16(%ebp)
	movl	-32(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	$0,4(%eax,%edx,8)
	movl	-80(%ebp),%eax
	call	Lfpc_dynarray_length$stub
	movl	-32(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	%eax,(%ecx,%edx,8)
	movl	-80(%ebp),%eax
	call	Lfpc_dynarray_length$stub
	movl	-100(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	%eax,(%edx,%ecx,4)
	movl	-100(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	cmpl	$0,%eax
	jg	Lj4859
	jmp	Lj4860
Lj4859:
	movl	-80(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-80(%ebp)
Lj4860:
	cmpl	-16(%ebp),%esi
	jg	Lj4847
Lj4846:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-200(%ebp),%eax
	call	LFPC_FINALIZE$stub
	leal	-200(%ebp),%eax
	movl	%eax,(%esp)
	movw	-24(%ebp),%cx
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%eax
	call	L_VARIANTS_VARARRAYCREATE$PVARARRAYBOUNDARRAY$LONGINT$WORD$$VARIANT$stub
	leal	-200(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_variant_copy$stub
	movl	-4(%ebp),%eax
	call	L_VARIANTS_VARARRAYLOCK$VARIANT$$POINTER$stub
	leal	-212(%ebp),%ecx
	leal	-236(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-240(%ebp)
	testl	%eax,%eax
	jne	Lj4877
	movl	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	L_VMT_VARIANTS_TVARIANTARRAYITERATOR$non_lazy_ptr-Lj4801(%ebx),%edx
	leal	-48(%ebp),%eax
	call	L_VARIANTS_TVARIANTARRAYITERATOR_$__INIT$LONGINT$PVARARRAYBOUNDARRAY$$LONGBOOL$stub
	movl	-100(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_VARIANTS_TDYNARRAYITER$non_lazy_ptr-Lj4801(%ebx),%edx
	leal	-76(%ebp),%eax
	call	L_VARIANTS_TDYNARRAYITER_$__INIT$POINTER$PDYNARRAYTYPEINFO$LONGINT$TDYNARRAYBOUNDS$$LONGBOOL$stub
	leal	-48(%ebp),%eax
	call	L_VARIANTS_TVARIANTARRAYITERATOR_$__ATEND$$BOOLEAN$stub
	testb	%al,%al
	je	Lj4901
	jmp	Lj4902
Lj4901:
	.align 2
Lj4905:
	movl	-24(%ebp),%eax
	cmpl	$2,%eax
	jl	Lj4909
	subl	$2,%eax
	je	Lj4910
	subl	$1,%eax
	je	Lj4911
	subl	$1,%eax
	je	Lj4912
	subl	$1,%eax
	je	Lj4913
	subl	$1,%eax
	je	Lj4915
	subl	$1,%eax
	je	Lj4914
	subl	$1,%eax
	je	Lj4916
	subl	$1,%eax
	je	Lj4917
	subl	$1,%eax
	je	Lj4918
	subl	$1,%eax
	je	Lj4919
	subl	$1,%eax
	je	Lj4920
	subl	$1,%eax
	je	Lj4921
	subl	$3,%eax
	je	Lj4922
	subl	$1,%eax
	je	Lj4923
	subl	$1,%eax
	je	Lj4924
	subl	$1,%eax
	je	Lj4925
	subl	$1,%eax
	je	Lj4926
	subl	$1,%eax
	je	Lj4927
	jmp	Lj4909
Lj4910:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-256(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-56(%ebp),%eax
	movw	(%eax),%ax
	leal	-256(%ebp),%edx
	call	L_SYSTEM_assign$SMALLINT$$VARIANT$stub
	leal	-256(%ebp),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4908
Lj4911:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-272(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	leal	-272(%ebp),%edx
	call	L_SYSTEM_assign$LONGINT$$VARIANT$stub
	leal	-272(%ebp),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4908
Lj4912:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-288(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	leal	-288(%ebp),%eax
	call	L_SYSTEM_assign$SINGLE$$VARIANT$stub
	leal	-288(%ebp),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4908
Lj4913:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-304(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-56(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,(%esp)
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	leal	-304(%ebp),%eax
	call	L_SYSTEM_assign$DOUBLE$$VARIANT$stub
	leal	-304(%ebp),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4908
Lj4914:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-320(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-56(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,(%esp)
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	leal	-320(%ebp),%eax
	call	L_SYSTEM_assign$DOUBLE$$VARIANT$stub
	leal	-320(%ebp),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4908
Lj4915:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-336(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-56(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,(%esp)
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	leal	-336(%ebp),%eax
	call	L_SYSTEM_assign$CURRENCY$$VARIANT$stub
	leal	-336(%ebp),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4908
Lj4916:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-352(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	leal	-352(%ebp),%edx
	call	L_SYSTEM_assign$WIDESTRING$$VARIANT$stub
	leal	-352(%ebp),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4908
Lj4917:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-368(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	leal	-368(%ebp),%edx
	call	Lfpc_idispatch_to_variant$stub
	leal	-368(%ebp),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4908
Lj4918:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-384(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	leal	-384(%ebp),%edx
	call	L_SYSTEM_assign$TERROR$$VARIANT$stub
	leal	-384(%ebp),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4908
Lj4919:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-400(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-56(%ebp),%eax
	movb	(%eax),%al
	leal	-400(%ebp),%edx
	call	L_SYSTEM_assign$BOOLEAN$$VARIANT$stub
	leal	-400(%ebp),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4908
Lj4920:
	movl	-56(%ebp),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4908
Lj4921:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-416(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	leal	-416(%ebp),%edx
	call	Lfpc_interface_to_variant$stub
	leal	-416(%ebp),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4908
Lj4922:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-432(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-56(%ebp),%eax
	movb	(%eax),%al
	leal	-432(%ebp),%edx
	call	L_SYSTEM_assign$SHORTINT$$VARIANT$stub
	leal	-432(%ebp),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4908
Lj4923:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-448(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-56(%ebp),%eax
	movb	(%eax),%al
	leal	-448(%ebp),%edx
	call	L_SYSTEM_assign$BYTE$$VARIANT$stub
	leal	-448(%ebp),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4908
Lj4924:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-464(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-56(%ebp),%eax
	movw	(%eax),%ax
	leal	-464(%ebp),%edx
	call	L_SYSTEM_assign$WORD$$VARIANT$stub
	leal	-464(%ebp),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4908
Lj4925:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-480(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	leal	-480(%ebp),%edx
	call	L_SYSTEM_assign$LONGWORD$$VARIANT$stub
	leal	-480(%ebp),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4908
Lj4926:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-496(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-56(%ebp),%edx
	movl	4(%edx),%eax
	movl	%eax,4(%esp)
	movl	(%edx),%eax
	movl	%eax,(%esp)
	leal	-496(%ebp),%eax
	call	L_SYSTEM_assign$INT64$$VARIANT$stub
	leal	-496(%ebp),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4908
Lj4927:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-512(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-56(%ebp),%eax
	movl	4(%eax),%edx
	movl	%edx,4(%esp)
	movl	(%eax),%eax
	movl	%eax,(%esp)
	leal	-512(%ebp),%eax
	call	L_SYSTEM_assign$QWORD$$VARIANT$stub
	leal	-512(%ebp),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4908
Lj4909:
	leal	-96(%ebp),%eax
	call	L_VARIANTS_SYSVARCLEAR$VARIANT$stub
Lj4908:
	leal	-76(%ebp),%eax
	call	L_VARIANTS_TDYNARRAYITER_$__NEXT$$BOOLEAN$stub
	movl	-20(%ebp),%eax
	subl	$1,%eax
	jno	Lj5074
	call	LFPC_OVERFLOW$stub
Lj5074:
	movl	%eax,(%esp)
	movl	-44(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_VARARRAYPUT$VARIANT$VARIANT$array_of_LONGINT$stub
	leal	-48(%ebp),%eax
	call	L_VARIANTS_TVARIANTARRAYITERATOR_$__NEXT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4905
	jmp	Lj4907
Lj4907:
Lj4902:
Lj4877:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	movl	$0,%edx
	call	L_VARIANTS_TVARIANTARRAYITERATOR_$__DONE$stub
	leal	-76(%ebp),%eax
	movl	$0,%edx
	call	L_VARIANTS_TDYNARRAYITER_$__DONE$stub
	movl	-4(%ebp),%eax
	call	L_VARIANTS_VARARRAYUNLOCK$VARIANT$stub
	movl	-240(%ebp),%eax
	testl	%eax,%eax
	je	Lj4878
	subl	$1,%eax
	testl	%eax,%eax
	je	Lj4879
Lj4879:
	call	LFPC_RERAISE$stub
Lj4878:
Lj4839:
	call	LFPC_POPADDRSTACK$stub
	movl	-32(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-144(%ebp),%eax
	testl	%eax,%eax
	je	Lj4840
	subl	$1,%eax
	testl	%eax,%eax
	je	Lj4841
Lj4841:
	call	LFPC_RERAISE$stub
Lj4840:
Lj4802:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-512(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-496(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-480(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-464(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-448(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-432(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-416(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-400(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-384(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-368(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-352(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-336(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-320(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-304(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-288(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-272(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-256(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%eax
	movl	%eax,%edx
	leal	-200(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_VARIANTS_TDYNARRAYITER$non_lazy_ptr-Lj4801(%ebx),%edx
	leal	-76(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj4801(%ebx),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_VARIANTS_TDYNARRAYBOUNDS$non_lazy_ptr-Lj4801(%ebx),%edx
	leal	-100(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-140(%ebp),%eax
	testl	%eax,%eax
	je	Lj4803
	call	LFPC_RERAISE$stub
Lj4803:
	movl	-520(%ebp),%ebx
	movl	-516(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_DYNARRAYFROMVARIANT$POINTER$VARIANT$POINTER
_VARIANTS_DYNARRAYFROMVARIANT$POINTER$VARIANT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-256(%ebp)
	movl	%esi,-252(%ebp)
	movl	%edi,-248(%ebp)
	call	Lj5118
Lj5118:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_INIT_VARIANTS_TDYNARRAYITER$non_lazy_ptr-Lj5118(%ebx),%edx
	leal	-64(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj5118(%ebx),%edx
	leal	-80(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	$0,-92(%ebp)
	movl	$0,-244(%ebp)
	movl	$0,-240(%ebp)
	movl	$0,-236(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj5118(%ebx),%eax
	movl	%eax,%edx
	leal	-232(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	leal	-108(%ebp),%ecx
	leal	-132(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-136(%ebp)
	testl	%eax,%eax
	jne	Lj5119
	movl	-8(%ebp),%eax
	call	L_VARIANTS_VARARRAYDIMCOUNT$VARIANT$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_VARIANTS_DYNARRAYGETVARIANTINFO$POINTER$LONGINT$$LONGINT$stub
	movl	%eax,-84(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj5134
	jmp	Lj5136
Lj5136:
	movl	-20(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jne	Lj5134
	jmp	Lj5135
Lj5134:
	movl	$-2147024809,%eax
	call	L_VARIANTS_VARRESULTCHECK$HRESULT$stub
Lj5135:
	movl	-20(%ebp),%eax
	movl	%eax,-140(%ebp)
	leal	-140(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_VARIANTS_TDYNARRAYBOUNDS$non_lazy_ptr-Lj5118(%ebx),%edx
	leal	-92(%ebp),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-20(%ebp),%edx
	imull	$8,%edx
	jno	Lj5151
	call	LFPC_OVERFLOW$stub
Lj5151:
	leal	-88(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	leal	-152(%ebp),%ecx
	leal	-176(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-140(%ebp)
	testl	%eax,%eax
	jne	Lj5154
	movl	-20(%ebp),%esi
	subl	$1,%esi
	jno	Lj5161
	call	LFPC_OVERFLOW$stub
Lj5161:
	movl	$0,-96(%ebp)
	cmpl	-96(%ebp),%esi
	jl	Lj5159
	subl	$1,-96(%ebp)
	.align 2
Lj5160:
	addl	$1,-96(%ebp)
	movl	-96(%ebp),%edx
	addl	$1,%edx
	jno	Lj5166
	call	LFPC_OVERFLOW$stub
Lj5166:
	movl	-8(%ebp),%eax
	call	L_VARIANTS_VARARRAYLOWBOUND$VARIANT$LONGINT$$LONGINT$stub
	movl	-88(%ebp),%edx
	movl	-96(%ebp),%ecx
	movl	%eax,4(%edx,%ecx,8)
	movl	-96(%ebp),%edx
	addl	$1,%edx
	jno	Lj5173
	call	LFPC_OVERFLOW$stub
Lj5173:
	movl	-8(%ebp),%eax
	call	L_VARIANTS_VARARRAYHIGHBOUND$VARIANT$LONGINT$$LONGINT$stub
	movl	-88(%ebp),%edx
	movl	-96(%ebp),%ecx
	movl	4(%edx,%ecx,8),%edx
	subl	%edx,%eax
	jno	Lj5176
	call	LFPC_OVERFLOW$stub
Lj5176:
	addl	$1,%eax
	jno	Lj5177
	call	LFPC_OVERFLOW$stub
Lj5177:
	movl	-88(%ebp),%ecx
	movl	-96(%ebp),%edx
	movl	%eax,(%ecx,%edx,8)
	movl	-88(%ebp),%edi
	movl	-96(%ebp),%eax
	movl	-92(%ebp),%edx
	movl	-96(%ebp),%ecx
	movl	(%edi,%eax,8),%eax
	movl	%eax,(%edx,%ecx,4)
	cmpl	-96(%ebp),%esi
	jg	Lj5160
Lj5159:
	movl	-92(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_DYNARRAYSETLENGTH$POINTER$POINTER$LONGINT$PSIZEINT$stub
	movl	-8(%ebp),%eax
	call	L_VARIANTS_VARARRAYLOCK$VARIANT$$POINTER$stub
	leal	-188(%ebp),%ecx
	leal	-212(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-216(%ebp)
	testl	%eax,%eax
	jne	Lj5190
	movl	-88(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	L_VMT_VARIANTS_TVARIANTARRAYITERATOR$non_lazy_ptr-Lj5118(%ebx),%edx
	leal	-36(%ebp),%eax
	call	L_VARIANTS_TVARIANTARRAYITERATOR_$__INIT$LONGINT$PVARARRAYBOUNDARRAY$$LONGBOOL$stub
	movl	-92(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	(%eax),%ecx
	movl	L_VMT_VARIANTS_TDYNARRAYITER$non_lazy_ptr-Lj5118(%ebx),%edx
	leal	-64(%ebp),%eax
	call	L_VARIANTS_TDYNARRAYITER_$__INIT$POINTER$PDYNARRAYTYPEINFO$LONGINT$TDYNARRAYBOUNDS$$LONGBOOL$stub
	leal	-36(%ebp),%eax
	call	L_VARIANTS_TVARIANTARRAYITERATOR_$__ATEND$$BOOLEAN$stub
	testb	%al,%al
	je	Lj5214
	jmp	Lj5215
Lj5214:
	.align 2
Lj5218:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj5118(%ebx),%eax
	movl	%eax,%edx
	leal	-232(%ebp),%eax
	call	LFPC_FINALIZE$stub
	leal	-232(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	subl	$1,%ecx
	jno	Lj5227
	call	LFPC_OVERFLOW$stub
Lj5227:
	movl	-32(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_VARARRAYGET$VARIANT$array_of_LONGINT$$VARIANT$stub
	leal	-232(%ebp),%edx
	leal	-80(%ebp),%eax
	call	Lfpc_variant_copy$stub
	movl	-84(%ebp),%eax
	cmpl	$2,%eax
	jl	Lj5235
	subl	$2,%eax
	je	Lj5236
	subl	$1,%eax
	je	Lj5237
	subl	$1,%eax
	je	Lj5238
	subl	$1,%eax
	je	Lj5239
	subl	$1,%eax
	je	Lj5241
	subl	$1,%eax
	je	Lj5240
	subl	$1,%eax
	je	Lj5242
	subl	$1,%eax
	je	Lj5243
	subl	$1,%eax
	je	Lj5244
	subl	$1,%eax
	je	Lj5245
	subl	$1,%eax
	je	Lj5246
	subl	$1,%eax
	je	Lj5247
	subl	$3,%eax
	je	Lj5248
	subl	$1,%eax
	je	Lj5249
	subl	$1,%eax
	je	Lj5250
	subl	$1,%eax
	je	Lj5251
	subl	$1,%eax
	je	Lj5252
	subl	$1,%eax
	je	Lj5253
	jmp	Lj5235
Lj5236:
	leal	-80(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$SMALLINT$stub
	movl	-44(%ebp),%edx
	movw	%ax,(%edx)
	jmp	Lj5234
Lj5237:
	leal	-80(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$LONGINT$stub
	movl	-44(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj5234
Lj5238:
	leal	-80(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$SINGLE$stub
	movl	-44(%ebp),%eax
	fstps	(%eax)
	jmp	Lj5234
Lj5239:
	leal	-80(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$DOUBLE$stub
	movl	-44(%ebp),%eax
	fstpl	(%eax)
	jmp	Lj5234
Lj5240:
	leal	-80(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$DOUBLE$stub
	movl	-44(%ebp),%eax
	fstpl	(%eax)
	jmp	Lj5234
Lj5241:
	leal	-80(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$CURRENCY$stub
	movl	-44(%ebp),%eax
	fistpq	(%eax)
	jmp	Lj5234
Lj5242:
	leal	-236(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-236(%ebp)
	leal	-236(%ebp),%edx
	leal	-80(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$WIDESTRING$stub
	movl	-236(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-44(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-236(%ebp),%eax
	movl	%eax,(%esi)
	jmp	Lj5234
Lj5243:
	leal	-240(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,-240(%ebp)
	leal	-240(%ebp),%edx
	leal	-80(%ebp),%eax
	call	Lfpc_variant_to_idispatch$stub
	movl	-240(%ebp),%eax
	call	LFPC_INTF_INCR_REF$stub
	movl	-44(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	-240(%ebp),%eax
	movl	%eax,(%esi)
	jmp	Lj5234
Lj5244:
	leal	-80(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$TERROR$stub
	movl	-44(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj5234
Lj5245:
	leal	-80(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$BOOLEAN$stub
	movl	-44(%ebp),%edx
	movb	%al,(%edx)
	jmp	Lj5234
Lj5246:
	leal	-80(%ebp),%edx
	movl	-44(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj5234
Lj5247:
	leal	-244(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,-244(%ebp)
	leal	-244(%ebp),%edx
	leal	-80(%ebp),%eax
	call	Lfpc_variant_to_interface$stub
	movl	-244(%ebp),%eax
	call	LFPC_INTF_INCR_REF$stub
	movl	-44(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	-244(%ebp),%eax
	movl	%eax,(%esi)
	jmp	Lj5234
Lj5248:
	leal	-80(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$SHORTINT$stub
	movl	-44(%ebp),%edx
	movb	%al,(%edx)
	jmp	Lj5234
Lj5249:
	leal	-80(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$BYTE$stub
	movl	-44(%ebp),%edx
	movb	%al,(%edx)
	jmp	Lj5234
Lj5250:
	leal	-80(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$WORD$stub
	movl	-44(%ebp),%edx
	movw	%ax,(%edx)
	jmp	Lj5234
Lj5251:
	leal	-80(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$LONGWORD$stub
	movl	-44(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj5234
Lj5252:
	leal	-80(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$INT64$stub
	movl	-44(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	jmp	Lj5234
Lj5253:
	leal	-80(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$QWORD$stub
	movl	-44(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	jmp	Lj5234
Lj5235:
	call	L_VARIANTS_VARCASTERROR$stub
Lj5234:
	leal	-64(%ebp),%eax
	call	L_VARIANTS_TDYNARRAYITER_$__NEXT$$BOOLEAN$stub
	leal	-36(%ebp),%eax
	call	L_VARIANTS_TVARIANTARRAYITERATOR_$__NEXT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj5218
	jmp	Lj5220
Lj5220:
Lj5215:
Lj5190:
	call	LFPC_POPADDRSTACK$stub
	leal	-36(%ebp),%eax
	movl	$0,%edx
	call	L_VARIANTS_TVARIANTARRAYITERATOR_$__DONE$stub
	leal	-64(%ebp),%eax
	movl	$0,%edx
	call	L_VARIANTS_TDYNARRAYITER_$__DONE$stub
	movl	-8(%ebp),%eax
	call	L_VARIANTS_VARARRAYUNLOCK$VARIANT$stub
	movl	-216(%ebp),%eax
	testl	%eax,%eax
	je	Lj5191
	subl	$1,%eax
	testl	%eax,%eax
	je	Lj5192
Lj5192:
	call	LFPC_RERAISE$stub
Lj5191:
Lj5154:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-140(%ebp),%eax
	testl	%eax,%eax
	je	Lj5155
	subl	$1,%eax
	testl	%eax,%eax
	je	Lj5156
Lj5156:
	call	LFPC_RERAISE$stub
Lj5155:
Lj5119:
	call	LFPC_POPADDRSTACK$stub
	leal	-244(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,-244(%ebp)
	leal	-240(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,-240(%ebp)
	leal	-236(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-236(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj5118(%ebx),%eax
	movl	%eax,%edx
	leal	-232(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_VARIANTS_TDYNARRAYITER$non_lazy_ptr-Lj5118(%ebx),%edx
	leal	-64(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj5118(%ebx),%edx
	leal	-80(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_VARIANTS_TDYNARRAYBOUNDS$non_lazy_ptr-Lj5118(%ebx),%edx
	leal	-92(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-136(%ebp),%eax
	testl	%eax,%eax
	je	Lj5120
	call	LFPC_RERAISE$stub
Lj5120:
	movl	-256(%ebp),%ebx
	movl	-252(%ebp),%esi
	movl	-248(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN
_VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj5371
Lj5371:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movzwl	-4(%ebp),%eax
	cmpl	$256,%eax
	setgeb	-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj5374
	jmp	Lj5375
Lj5374:
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPELOCK$non_lazy_ptr-Lj5371(%ebx),%eax
	call	L_SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj5378
	movzwl	-4(%ebp),%esi
	subl	$256,%esi
	jno	Lj5384
	call	LFPC_OVERFLOW$stub
Lj5384:
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPES$non_lazy_ptr-Lj5371(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_high$stub
	cmpl	%eax,%esi
	setleb	-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj5387
	jmp	Lj5388
Lj5387:
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPES$non_lazy_ptr-Lj5371(%ebx),%eax
	movl	(%eax),%edx
	movzwl	-4(%ebp),%eax
	subl	$256,%eax
	jno	Lj5391
	call	LFPC_OVERFLOW$stub
Lj5391:
	movl	-8(%ebp),%ecx
	movl	(%edx,%eax,4),%eax
	movl	%eax,(%ecx)
	movl	-8(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj5394
	jmp	Lj5393
Lj5394:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	L_U_VARIANTS_INVALIDCUSTOMVARIANTTYPE$non_lazy_ptr-Lj5371(%ebx),%edx
	cmpl	(%edx),%eax
	jne	Lj5392
	jmp	Lj5393
Lj5392:
	movb	$1,-9(%ebp)
	jmp	Lj5395
Lj5393:
	movb	$0,-9(%ebp)
Lj5395:
Lj5388:
Lj5378:
	call	LFPC_POPADDRSTACK$stub
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPELOCK$non_lazy_ptr-Lj5371(%ebx),%eax
	call	L_SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj5379
	subl	$1,%eax
	testl	%eax,%eax
	je	Lj5380
Lj5380:
	call	LFPC_RERAISE$stub
Lj5379:
Lj5375:
	movb	-9(%ebp),%al
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_FINDCUSTOMVARIANTTYPE$ANSISTRING$TCUSTOMVARIANTTYPE$$BOOLEAN
_VARIANTS_FINDCUSTOMVARIANTTYPE$ANSISTRING$TCUSTOMVARIANTTYPE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-324(%ebp)
	movl	%esi,-320(%ebp)
	call	Lj5399
Lj5399:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ecx
	leal	-276(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	movb	$0,-9(%ebp)
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPELOCK$non_lazy_ptr-Lj5399(%ebx),%eax
	call	L_SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION$stub
	leal	-288(%ebp),%ecx
	leal	-312(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-316(%ebp)
	testl	%eax,%eax
	jne	Lj5410
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPES$non_lazy_ptr-Lj5399(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_high$stub
	movl	%eax,%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj5415
	subl	$1,-16(%ebp)
	.align 2
Lj5416:
	addl	$1,-16(%ebp)
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPES$non_lazy_ptr-Lj5399(%ebx),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj5424
	jmp	Lj5422
Lj5424:
	movl	-20(%ebp),%eax
	movl	L_U_VARIANTS_INVALIDCUSTOMVARIANTTYPE$non_lazy_ptr-Lj5399(%ebx),%edx
	cmpl	(%edx),%eax
	jne	Lj5423
	jmp	Lj5422
Lj5423:
	leal	-276(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAMEIS$SHORTSTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj5421
	jmp	Lj5422
Lj5421:
	movb	$1,-9(%ebp)
	jmp	Lj5429
Lj5422:
	movb	$0,-9(%ebp)
Lj5429:
	cmpb	$0,-9(%ebp)
	jne	Lj5430
	jmp	Lj5431
Lj5430:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj5413
Lj5431:
	cmpl	-16(%ebp),%esi
	jg	Lj5416
Lj5415:
Lj5410:
	call	LFPC_POPADDRSTACK$stub
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPELOCK$non_lazy_ptr-Lj5399(%ebx),%eax
	call	L_SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION$stub
	movl	-316(%ebp),%eax
	testl	%eax,%eax
	je	Lj5411
	subl	$1,%eax
	testl	%eax,%eax
	je	Lj5412
	subl	$1,%eax
	testl	%eax,%eax
	je	Lj5398
Lj5412:
	call	LFPC_RERAISE$stub
Lj5413:
	movl	-316(%ebp),%eax
	movl	$2,-316(%ebp)
	jmp	Lj5410
Lj5411:
Lj5398:
	movb	-9(%ebp),%al
	movl	-324(%ebp),%ebx
	movl	-320(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_UNASSIGNED$$VARIANT
_VARIANTS_UNASSIGNED$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARCLEAR$VARIANT$stub
	movl	-4(%ebp),%eax
	movw	$0,(%eax)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_NULL$$VARIANT
_VARIANTS_NULL$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARCLEAR$VARIANT$stub
	movl	-4(%ebp),%eax
	movw	$1,(%eax)
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARDISPINVOKEERROR
_VARIANTS_VARDISPINVOKEERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj5449
Lj5449:
	popl	%ebx
	movl	L_RESSTR_SYSCONST_SDISPATCHERROR$non_lazy_ptr-Lj5449(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTDISPATCHERROR$non_lazy_ptr-Lj5449(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La5:
	movl	%ebp,%ecx
	leal	La5-Lj5449(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__QUERYINTERFACE$TGUID$formal$$HRESULT
_VARIANTS_TCUSTOMVARIANTTYPE_$__QUERYINTERFACE$TGUID$formal$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	16(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj5458
	jmp	Lj5459
Lj5458:
	movl	$0,-4(%ebp)
	jmp	Lj5468
Lj5459:
	movl	$-2147467262,-4(%ebp)
Lj5468:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$___ADDREF$$LONGINT
_VARIANTS_TCUSTOMVARIANTTYPE_$___ADDREF$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$-1,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$___RELEASE$$LONGINT
_VARIANTS_TCUSTOMVARIANTTYPE_$___RELEASE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$-1,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__SIMPLISTICCLEAR$TVARDATA
_VARIANTS_TCUSTOMVARIANTTYPE_$__SIMPLISTICCLEAR$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAINIT$TVARDATA$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__SIMPLISTICCOPY$TVARDATA$TVARDATA$BOOLEAN
_VARIANTS_TCUSTOMVARIANTTYPE_$__SIMPLISTICCOPY$TVARDATA$TVARDATA$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj5486
Lj5486:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_$VARIANTS$_Ld50$non_lazy_ptr-Lj5486(%ebx),%eax
	call	L_VARIANTS_NOTSUPPORTED$ANSISTRING$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEINVALIDOP
_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEINVALIDOP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_VARIANTS_VARINVALIDOP$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISECASTERROR
_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISECASTERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_VARIANTS_VARCASTERROR$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEDISPERROR
_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEDISPERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_VARIANTS_VARDISPINVOKEERROR$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__LEFTPROMOTION$TVARDATA$TVAROP$WORD$$BOOLEAN
_VARIANTS_TCUSTOMVARIANTTYPE_$__LEFTPROMOTION$TVARDATA$TVAROP$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj5496
Lj5496:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_$VARIANTS$_Ld52$non_lazy_ptr-Lj5496(%ebx),%eax
	call	L_VARIANTS_NOTSUPPORTED$ANSISTRING$stub
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__RIGHTPROMOTION$TVARDATA$TVAROP$WORD$$BOOLEAN
_VARIANTS_TCUSTOMVARIANTTYPE_$__RIGHTPROMOTION$TVARDATA$TVAROP$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj5500
Lj5500:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_$VARIANTS$_Ld54$non_lazy_ptr-Lj5500(%ebx),%eax
	call	L_VARIANTS_NOTSUPPORTED$ANSISTRING$stub
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__OLEPROMOTION$TVARDATA$WORD$$BOOLEAN
_VARIANTS_TCUSTOMVARIANTTYPE_$__OLEPROMOTION$TVARDATA$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj5504
Lj5504:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_$VARIANTS$_Ld56$non_lazy_ptr-Lj5504(%ebx),%eax
	call	L_VARIANTS_NOTSUPPORTED$ANSISTRING$stub
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__DISPINVOKE$PVARDATA$TVARDATA$PCALLDESC$POINTER
_VARIANTS_TCUSTOMVARIANTTYPE_$__DISPINVOKE$PVARDATA$TVARDATA$PCALLDESC$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEDISPERROR$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAINIT$TVARDATA
_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAINIT$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$16,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACLEAR$TVARDATA
_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACLEAR$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj5520
Lj5520:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	L_TC_SYSTEM_VARCLEARPROC$non_lazy_ptr-Lj5520(%ebx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACOPY$TVARDATA$TVARDATA
_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACOPY$TVARDATA$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCOPY$TVARDATA$TVARDATA$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACOPYNOIND$TVARDATA$TVARDATA
_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACOPYNOIND$TVARDATA$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCOPY$TVARDATA$TVARDATA$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACAST$TVARDATA$TVARDATA
_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACAST$TVARDATA$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movzwl	4(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACASTTO$TVARDATA$TVARDATA$WORD
_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACASTTO$TVARDATA$TVARDATA$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movzwl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACASTTO$TVARDATA$WORD
_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACASTTO$TVARDATA$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movw	%cx,-8(%ebp)
	movzwl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACASTTOOLESTR$TVARDATA
_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACASTTOOLESTR$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movw	$8,(%esp)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACASTTO$TVARDATA$TVARDATA$WORD$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAFROMSTR$TVARDATA$ANSISTRING
_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAFROMSTR$TVARDATA$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARFROMLSTR$VARIANT$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAFROMOLESTR$TVARDATA$WIDESTRING
_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAFROMOLESTR$TVARDATA$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SYSVARFROMWSTR$VARIANT$WIDESTRING$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATATOSTR$TVARDATA$$ANSISTRING
_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATATOSTR$TVARDATA$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_VARIANTS_SYSVARTOLSTR$ANSISTRING$VARIANT$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAISEMPTYPARAM$TVARDATA$$BOOLEAN
_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAISEMPTYPARAM$TVARDATA$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$10,%eax
	je	Lj5593
	jmp	Lj5592
Lj5593:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$-2147352572,%eax
	je	Lj5591
	jmp	Lj5592
Lj5591:
	movb	$1,%al
	jmp	Lj5594
Lj5592:
	movb	$0,%al
Lj5594:
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAISBYREF$TVARDATA$$BOOLEAN
_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAISBYREF$TVARDATA$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$16384,%ax
	movzwl	%ax,%eax
	cmpl	$16384,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAISARRAY$TVARDATA$$BOOLEAN
_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAISARRAY$TVARDATA$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	cmpl	$8192,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAISORDINAL$TVARDATA$$BOOLEAN
_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAISORDINAL$TVARDATA$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	subl	$2,%eax
	cmpl	$2,%eax
	jb	Lj5607
	cmpl	$9,%eax
	stc
	je	Lj5607
	subl	$14,%eax
	cmpl	$5,%eax
	jb	Lj5607
Lj5607:
	setcb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAISFLOAT$TVARDATA$$BOOLEAN
_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAISFLOAT$TVARDATA$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	subl	$4,%eax
	cmpl	$3,%eax
	jb	Lj5612
Lj5612:
	setcb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAISNUMERIC$TVARDATA$$BOOLEAN
_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAISNUMERIC$TVARDATA$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	subl	$2,%eax
	cmpl	$5,%eax
	jb	Lj5617
	cmpl	$9,%eax
	stc
	je	Lj5617
	subl	$14,%eax
	cmpl	$5,%eax
	jb	Lj5617
Lj5617:
	setcb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAISSTR$TVARDATA$$BOOLEAN
_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAISSTR$TVARDATA$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	cmpl	$8,%eax
	je	Lj5620
	jmp	Lj5622
Lj5622:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	cmpl	$256,%eax
	je	Lj5620
	jmp	Lj5621
Lj5620:
	movb	$1,-9(%ebp)
	jmp	Lj5623
Lj5621:
	movb	$0,-9(%ebp)
Lj5623:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_REGISTERCUSTOMVARIANTTYPE$TCUSTOMVARIANTTYPE$WORD$BOOLEAN
_VARIANTS_REGISTERCUSTOMVARIANTTYPE$TCUSTOMVARIANTTYPE$WORD$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$376,%esp
	movl	%ebx,-360(%ebp)
	call	Lj5625
Lj5625:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPELOCK$non_lazy_ptr-Lj5625(%ebx),%eax
	call	L_SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION$stub
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj5628
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPES$non_lazy_ptr-Lj5625(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,-20(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj5636
	jmp	Lj5637
Lj5636:
	.align 2
Lj5638:
	movl	L_U_VARIANTS_CUSTOMVARIANTCURRTYPE$non_lazy_ptr-Lj5625(%ebx),%eax
	movl	(%eax),%eax
	addl	$1,%eax
	jno	Lj5643
	call	LFPC_OVERFLOW$stub
Lj5643:
	movl	L_U_VARIANTS_CUSTOMVARIANTCURRTYPE$non_lazy_ptr-Lj5625(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_U_VARIANTS_CUSTOMVARIANTCURRTYPE$non_lazy_ptr-Lj5625(%ebx),%eax
	movl	(%eax),%eax
	cmpl	$4095,%eax
	jge	Lj5644
	jmp	Lj5645
Lj5644:
	movl	L_RESSTR_SYSCONST_SVARTYPETOOMANYCUSTOM$non_lazy_ptr-Lj5625(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_EVARIANTERROR$non_lazy_ptr-Lj5625(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La6:
	movl	%ebp,%ecx
	leal	La6-Lj5625(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj5645:
	movl	L_U_VARIANTS_CUSTOMVARIANTCURRTYPE$non_lazy_ptr-Lj5625(%ebx),%eax
	movl	(%eax),%eax
	subl	$256,%eax
	jno	Lj5653
	call	LFPC_OVERFLOW$stub
Lj5653:
	cmpl	-20(%ebp),%eax
	jge	Lj5640
	jmp	Lj5652
Lj5652:
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPES$non_lazy_ptr-Lj5625(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_VARIANTS_CUSTOMVARIANTCURRTYPE$non_lazy_ptr-Lj5625(%ebx),%eax
	movl	(%eax),%eax
	subl	$256,%eax
	jno	Lj5654
	call	LFPC_OVERFLOW$stub
Lj5654:
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj5640
	jmp	Lj5638
Lj5640:
	movl	L_U_VARIANTS_CUSTOMVARIANTCURRTYPE$non_lazy_ptr-Lj5625(%ebx),%eax
	movw	(%eax),%ax
	movw	%ax,-8(%ebp)
	jmp	Lj5657
Lj5637:
	movzwl	-8(%ebp),%eax
	cmpl	$271,%eax
	jl	Lj5658
	jmp	Lj5660
Lj5660:
	movzwl	-8(%ebp),%eax
	cmpl	$4095,%eax
	jg	Lj5658
	jmp	Lj5659
Lj5658:
	movl	$1,(%esp)
	movl	$36,-72(%ebp)
	movl	$2,-76(%ebp)
	movzwl	-8(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$0,-68(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SVARTYPEOUTOFRANGEWITHPREFIX$non_lazy_ptr-Lj5625(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_EVARIANTERROR$non_lazy_ptr-Lj5625(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La7:
	movl	%ebp,%ecx
	leal	La7-Lj5625(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj5659:
Lj5657:
	movzwl	-8(%ebp),%eax
	subl	$256,%eax
	jno	Lj5673
	call	LFPC_OVERFLOW$stub
Lj5673:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jge	Lj5674
	jmp	Lj5675
Lj5674:
	movl	-20(%ebp),%eax
	addl	$1,%eax
	jno	Lj5678
	call	LFPC_OVERFLOW$stub
Lj5678:
	movl	%eax,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_VARIANTS_DEF201$non_lazy_ptr-Lj5625(%ebx),%edx
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPES$non_lazy_ptr-Lj5625(%ebx),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
Lj5675:
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPES$non_lazy_ptr-Lj5625(%ebx),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%eax
	cmpl	$0,(%edx,%eax,4)
	jne	Lj5687
	jmp	Lj5688
Lj5687:
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPES$non_lazy_ptr-Lj5625(%ebx),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	L_U_VARIANTS_INVALIDCUSTOMVARIANTTYPE$non_lazy_ptr-Lj5625(%ebx),%eax
	cmpl	(%eax),%edx
	je	Lj5689
	jmp	Lj5690
Lj5689:
	movl	$1,(%esp)
	movl	$36,-72(%ebp)
	movl	$2,-76(%ebp)
	movzwl	-8(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$0,-68(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SVARTYPENOTUSABLEWITHPREFIX$non_lazy_ptr-Lj5625(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_EVARIANTERROR$non_lazy_ptr-Lj5625(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La8:
	movl	%ebp,%ecx
	leal	La8-Lj5625(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	jmp	Lj5701
Lj5690:
	movl	$2,(%esp)
	movl	$36,-96(%ebp)
	movl	$2,-100(%ebp)
	movzwl	-8(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	$0,-92(%ebp)
	leal	-356(%ebp),%edx
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPES$non_lazy_ptr-Lj5625(%ebx),%eax
	movl	(%eax),%ecx
	movl	-16(%ebp),%eax
	movl	(%ecx,%eax,4),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-356(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	$4,-84(%ebp)
	leal	-100(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SVARTYPEALREADYUSEDWITHPREFIX$non_lazy_ptr-Lj5625(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_EVARIANTERROR$non_lazy_ptr-Lj5625(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La9:
	movl	%ebp,%ecx
	leal	La9-Lj5625(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj5701:
Lj5688:
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPES$non_lazy_ptr-Lj5625(%ebx),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	%ecx,(%edx,%eax,4)
	movl	-4(%ebp),%eax
	movw	-8(%ebp),%dx
	movw	%dx,4(%eax)
Lj5628:
	call	LFPC_POPADDRSTACK$stub
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPELOCK$non_lazy_ptr-Lj5625(%ebx),%eax
	call	L_SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj5629
	subl	$1,%eax
	testl	%eax,%eax
	je	Lj5630
Lj5630:
	call	LFPC_RERAISE$stub
Lj5629:
	movl	-360(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__CREATE$$TCUSTOMVARIANTTYPE
_VARIANTS_TCUSTOMVARIANTTYPE_$__CREATE$$TCUSTOMVARIANTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj5724
	jmp	Lj5725
Lj5724:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj5725:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5730
	jmp	Lj5731
Lj5730:
	jmp	Lj5722
Lj5731:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj5734
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj5738
	movl	-8(%ebp),%eax
	movb	$1,%cl
	movw	$0,%dx
	call	L_VARIANTS_REGISTERCUSTOMVARIANTTYPE$TCUSTOMVARIANTTYPE$WORD$BOOLEAN$stub
Lj5738:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj5739
	call	LFPC_RERAISE$stub
Lj5739:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5749
	jmp	Lj5748
Lj5749:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5747
	jmp	Lj5748
Lj5747:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj5748:
Lj5734:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj5736
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj5753
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5754
	jmp	Lj5755
Lj5754:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj5755:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj5753:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj5752
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj5752:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj5736
Lj5736:
Lj5722:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__CREATE$WORD$$TCUSTOMVARIANTTYPE
_VARIANTS_TCUSTOMVARIANTTYPE_$__CREATE$WORD$$TCUSTOMVARIANTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj5762
	jmp	Lj5763
Lj5762:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj5763:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj5768
	jmp	Lj5769
Lj5768:
	jmp	Lj5760
Lj5769:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj5772
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj5776
	movw	-4(%ebp),%dx
	movl	-12(%ebp),%eax
	movb	$0,%cl
	call	L_VARIANTS_REGISTERCUSTOMVARIANTTYPE$TCUSTOMVARIANTTYPE$WORD$BOOLEAN$stub
Lj5776:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj5777
	call	LFPC_RERAISE$stub
Lj5777:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5787
	jmp	Lj5786
Lj5787:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5785
	jmp	Lj5786
Lj5785:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj5786:
Lj5772:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj5774
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj5791
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5792
	jmp	Lj5793
Lj5792:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj5793:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj5791:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj5790
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj5790:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj5774
Lj5774:
Lj5760:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__DESTROY
_VARIANTS_TCUSTOMVARIANTTYPE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	call	Lj5799
Lj5799:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5800
	jmp	Lj5801
Lj5800:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj5801:
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPELOCK$non_lazy_ptr-Lj5799(%ebx),%eax
	call	L_SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj5806
	movl	-8(%ebp),%eax
	movzwl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj5810
	jmp	Lj5811
Lj5810:
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPES$non_lazy_ptr-Lj5799(%ebx),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movzwl	4(%eax),%eax
	subl	$256,%eax
	jno	Lj5814
	call	LFPC_OVERFLOW$stub
Lj5814:
	movl	L_U_VARIANTS_INVALIDCUSTOMVARIANTTYPE$non_lazy_ptr-Lj5799(%ebx),%edx
	movl	(%edx),%edx
	movl	%edx,(%ecx,%eax,4)
Lj5811:
Lj5806:
	call	LFPC_POPADDRSTACK$stub
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPELOCK$non_lazy_ptr-Lj5799(%ebx),%eax
	call	L_SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj5807
	subl	$1,%eax
	testl	%eax,%eax
	je	Lj5808
Lj5808:
	call	LFPC_RERAISE$stub
Lj5807:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5823
	jmp	Lj5822
Lj5823:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5821
	jmp	Lj5822
Lj5821:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj5822:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__ISCLEAR$TVARDATA$$BOOLEAN
_VARIANTS_TCUSTOMVARIANTTYPE_$__ISCLEAR$TVARDATA$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__CAST$TVARDATA$TVARDATA
_VARIANTS_TCUSTOMVARIANTTYPE_$__CAST$TVARDATA$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movzwl	4(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__CASTTO$TVARDATA$TVARDATA$WORD
_VARIANTS_TCUSTOMVARIANTTYPE_$__CASTTO$TVARDATA$TVARDATA$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movzwl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__CASTTOOLE$TVARDATA$TVARDATA
_VARIANTS_TCUSTOMVARIANTTYPE_$__CASTTOOLE$TVARDATA$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj5847
Lj5847:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_$VARIANTS$_Ld58$non_lazy_ptr-Lj5847(%ebx),%eax
	call	L_VARIANTS_NOTSUPPORTED$ANSISTRING$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__BINARYOP$TVARDATA$TVARDATA$TVAROP
_VARIANTS_TCUSTOMVARIANTTYPE_$__BINARYOP$TVARDATA$TVARDATA$TVAROP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEINVALIDOP$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__UNARYOP$TVARDATA$TVAROP
_VARIANTS_TCUSTOMVARIANTTYPE_$__UNARYOP$TVARDATA$TVAROP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEINVALIDOP$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__COMPAREOP$TVARDATA$TVARDATA$TVAROP$$BOOLEAN
_VARIANTS_TCUSTOMVARIANTTYPE_$__COMPAREOP$TVARDATA$TVARDATA$TVAROP$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj5859
Lj5859:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_$VARIANTS$_Ld60$non_lazy_ptr-Lj5859(%ebx),%eax
	call	L_VARIANTS_NOTSUPPORTED$ANSISTRING$stub
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TCUSTOMVARIANTTYPE_$__COMPARE$TVARDATA$TVARDATA$TVARCOMPARERESULT
_VARIANTS_TCUSTOMVARIANTTYPE_$__COMPARE$TVARDATA$TVARDATA$TVARCOMPARERESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj5863
Lj5863:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_$VARIANTS$_Ld62$non_lazy_ptr-Lj5863(%ebx),%eax
	call	L_VARIANTS_NOTSUPPORTED$ANSISTRING$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TINVOKEABLEVARIANTTYPE_$__DISPINVOKE$PVARDATA$TVARDATA$PCALLDESC$POINTER
_VARIANTS_TINVOKEABLEVARIANTTYPE_$__DISPINVOKE$PVARDATA$TVARDATA$PCALLDESC$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$200,%esp
	movl	%ebx,-180(%ebp)
	movl	%esi,-176(%ebp)
	movl	%edi,-172(%ebp)
	call	Lj5867
Lj5867:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-24(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj5867(%ebx),%eax
	movl	%eax,%edx
	leal	-168(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj5867(%ebx),%eax
	movl	%eax,%edx
	leal	-112(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj5868
	movl	12(%ebp),%eax
	movb	1(%eax),%al
	movb	%al,-17(%ebp)
	movl	12(%ebp),%eax
	movzbl	-17(%ebp),%edx
	leal	3(%eax,%edx,1),%eax
	leal	-16(%ebp),%edx
	call	Lfpc_pchar_to_ansistr$stub
	movzbl	-17(%ebp),%eax
	movl	%eax,-96(%ebp)
	leal	-96(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_VARIANTS_TVARDATAARRAY$non_lazy_ptr-Lj5867(%ebx),%edx
	leal	-24(%ebp),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movzbl	-17(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5887
	jmp	Lj5888
Lj5887:
	movl	8(%ebp),%eax
	movl	%eax,-32(%ebp)
	movzbl	-17(%ebp),%eax
	subl	$1,%eax
	jno	Lj5894
	call	LFPC_OVERFLOW$stub
Lj5894:
	movb	$0,-25(%ebp)
	cmpb	-25(%ebp),%al
	jb	Lj5892
	subb	$1,-25(%ebp)
	.align 2
Lj5893:
	addb	$1,-25(%ebp)
	movl	12(%ebp),%edx
	movzbl	-25(%ebp),%ecx
	movb	3(%edx,%ecx,1),%dl
	andb	$127,%dl
	movb	%dl,-26(%ebp)
	movl	12(%ebp),%edx
	movzbl	-25(%ebp),%ecx
	movb	3(%edx,%ecx,1),%dl
	andb	$128,%dl
	movzbl	%dl,%edx
	testl	%edx,%edx
	setneb	-27(%ebp)
	movl	-24(%ebp),%ecx
	movzbl	-17(%ebp),%edx
	movzbl	-25(%ebp),%esi
	subl	%esi,%edx
	jno	Lj5901
	call	LFPC_OVERFLOW$stub
Lj5901:
	subl	$1,%edx
	jno	Lj5902
	call	LFPC_OVERFLOW$stub
Lj5902:
	shll	$4,%edx
	leal	(%ecx,%edx),%edx
	movl	%edx,-36(%ebp)
	movb	-26(%ebp),%dl
	cmpb	$72,%dl
	jb	Lj5904
	subb	$72,%dl
	je	Lj5906
	subb	$1,%dl
	je	Lj5905
	jmp	Lj5904
Lj5905:
	movl	-36(%ebp),%edx
	movw	$258,(%edx)
	jmp	Lj5903
Lj5906:
	movl	-36(%ebp),%edx
	movw	$256,(%edx)
	jmp	Lj5903
Lj5904:
	movl	-36(%ebp),%ecx
	movzbw	-26(%ebp),%dx
	movw	%dx,(%ecx)
Lj5903:
	cmpb	$0,-27(%ebp)
	jne	Lj5913
	jmp	Lj5914
Lj5913:
	movl	-36(%ebp),%edx
	movzwl	(%edx),%edx
	orl	$16384,%edx
	movl	-36(%ebp),%ecx
	movw	%dx,(%ecx)
	movl	-36(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	(%edx),%edx
	movl	%edx,8(%ecx)
	addl	$4,-32(%ebp)
	jmp	Lj5919
Lj5914:
	movb	-26(%ebp),%dl
	cmpb	$5,%dl
	jb	Lj5921
	subb	$5,%dl
	subb	$1,%dl
	jbe	Lj5924
	subb	$4,%dl
	je	Lj5922
	subb	$2,%dl
	je	Lj5923
	subb	$8,%dl
	jb	Lj5921
	subb	$1,%dl
	jbe	Lj5924
	jmp	Lj5921
Lj5922:
	movl	-36(%ebp),%edx
	movl	$-2147352572,8(%edx)
	jmp	Lj5920
Lj5923:
	movl	-32(%ebp),%edx
	movl	(%edx),%esi
	movl	-36(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	addl	$4,-32(%ebp)
	jmp	Lj5920
Lj5924:
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edx
	movl	(%edx),%ecx
	movl	%ecx,8(%esi)
	movl	4(%edx),%edx
	movl	%edx,12(%esi)
	addl	$8,-32(%ebp)
	jmp	Lj5920
Lj5921:
	movl	-36(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	(%edx),%edx
	movl	%edx,8(%ecx)
	addl	$4,-32(%ebp)
Lj5920:
Lj5919:
	cmpb	-25(%ebp),%al
	ja	Lj5893
Lj5892:
Lj5888:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	setneb	-28(%ebp)
	cmpb	$0,-28(%ebp)
	jne	Lj5935
	jmp	Lj5936
Lj5935:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj5867(%ebx),%eax
	movl	%eax,%edx
	leal	-112(%ebp),%eax
	call	LFPC_FINALIZE$stub
	leal	-112(%ebp),%eax
	call	L_VARIANTS_UNASSIGNED$$VARIANT$stub
	leal	-112(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_variant_copy$stub
Lj5936:
	movl	12(%ebp),%eax
	movb	(%eax),%al
	cmpb	$1,%al
	jb	Lj5944
	subb	$1,%al
	je	Lj5945
	subb	$1,%al
	je	Lj5946
	subb	$2,%al
	je	Lj5947
	jmp	Lj5944
Lj5945:
	cmpb	$0,-28(%ebp)
	jne	Lj5948
	jmp	Lj5949
Lj5948:
	movzbl	-17(%ebp),%eax
	testl	%eax,%eax
	je	Lj5950
	jmp	Lj5951
Lj5950:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*168(%esi)
	testb	%al,%al
	jne	Lj5953
	jmp	Lj5954
Lj5954:
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*160(%esi)
	testb	%al,%al
	jne	Lj5953
	jmp	Lj5952
Lj5952:
	movl	-12(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEDISPERROR$stub
Lj5953:
	jmp	Lj5975
Lj5951:
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*160(%esi)
	testb	%al,%al
	je	Lj5976
	jmp	Lj5977
Lj5976:
	movl	-12(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEDISPERROR$stub
Lj5977:
Lj5975:
	jmp	Lj5990
Lj5949:
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*164(%esi)
	testb	%al,%al
	je	Lj5991
	jmp	Lj5992
Lj5991:
	leal	-124(%ebp),%ecx
	leal	-148(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj6001
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj5867(%ebx),%eax
	movl	%eax,%edx
	leal	-168(%ebp),%eax
	call	LFPC_FINALIZE$stub
	leal	-168(%ebp),%eax
	call	L_VARIANTS_UNASSIGNED$$VARIANT$stub
	leal	-168(%ebp),%edx
	leal	-52(%ebp),%eax
	call	Lfpc_variant_copy$stub
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*160(%esi)
	testb	%al,%al
	je	Lj6011
	jmp	Lj6012
Lj6011:
	movl	-12(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEDISPERROR$stub
Lj6012:
Lj6001:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACLEAR$TVARDATA$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj6002
	subl	$1,%eax
	testl	%eax,%eax
	je	Lj6003
Lj6003:
	call	LFPC_RERAISE$stub
Lj6002:
Lj5992:
Lj5990:
	jmp	Lj5943
Lj5946:
	cmpb	$0,-28(%ebp)
	jne	Lj6029
	jmp	Lj6030
Lj6029:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*168(%esi)
	testb	%al,%al
	je	Lj6031
	jmp	Lj6032
Lj6031:
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*160(%esi)
	testb	%al,%al
	je	Lj6041
	jmp	Lj6042
Lj6041:
	movl	-12(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEDISPERROR$stub
Lj6042:
Lj6032:
	jmp	Lj6055
Lj6030:
	movl	-12(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEDISPERROR$stub
Lj6055:
	jmp	Lj5943
Lj5947:
	cmpb	$0,-28(%ebp)
	jne	Lj6058
	jmp	Lj6061
Lj6061:
	movzbl	-17(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj6058
	jmp	Lj6060
Lj6060:
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*172(%esi)
	testb	%al,%al
	je	Lj6058
	jmp	Lj6059
Lj6058:
	movl	-12(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEDISPERROR$stub
Lj6059:
	jmp	Lj5943
Lj5944:
	movl	-12(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEDISPERROR$stub
Lj5943:
Lj5868:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj5867(%ebx),%eax
	movl	%eax,%edx
	leal	-168(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj5867(%ebx),%eax
	movl	%eax,%edx
	leal	-112(%ebp),%eax
	call	LFPC_FINALIZE$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	L_INIT_VARIANTS_TVARDATAARRAY$non_lazy_ptr-Lj5867(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj5869
	call	LFPC_RERAISE$stub
Lj5869:
	movl	-180(%ebp),%ebx
	movl	-176(%ebp),%esi
	movl	-172(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TINVOKEABLEVARIANTTYPE_$__DOFUNCTION$TVARDATA$TVARDATA$ANSISTRING$TVARDATAARRAY$$BOOLEAN
_VARIANTS_TINVOKEABLEVARIANTTYPE_$__DOFUNCTION$TVARDATA$TVARDATA$ANSISTRING$TVARDATAARRAY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TINVOKEABLEVARIANTTYPE_$__DOPROCEDURE$TVARDATA$ANSISTRING$TVARDATAARRAY$$BOOLEAN
_VARIANTS_TINVOKEABLEVARIANTTYPE_$__DOPROCEDURE$TVARDATA$ANSISTRING$TVARDATAARRAY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TINVOKEABLEVARIANTTYPE_$__GETPROPERTY$TVARDATA$TVARDATA$ANSISTRING$$BOOLEAN
_VARIANTS_TINVOKEABLEVARIANTTYPE_$__GETPROPERTY$TVARDATA$TVARDATA$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TINVOKEABLEVARIANTTYPE_$__SETPROPERTY$TVARDATA$ANSISTRING$TVARDATA$$BOOLEAN
_VARIANTS_TINVOKEABLEVARIANTTYPE_$__SETPROPERTY$TVARDATA$ANSISTRING$TVARDATA$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TPUBLISHABLEVARIANTTYPE_$__GETPROPERTY$TVARDATA$TVARDATA$ANSISTRING$$BOOLEAN
_VARIANTS_TPUBLISHABLEVARIANTTYPE_$__GETPROPERTY$TVARDATA$TVARDATA$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	call	Lj6103
Lj6103:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj6103(%ebx),%eax
	movl	%eax,%edx
	leal	-72(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj6104
	movb	$1,-13(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj6103(%ebx),%eax
	movl	%eax,%edx
	leal	-72(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*176(%ecx)
	leal	-72(%ebp),%ecx
	movl	8(%ebp),%edx
	call	L_VARIANTS_GETPROPVALUE$TOBJECT$ANSISTRING$$VARIANT$stub
	leal	-72(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_variant_copy$stub
Lj6104:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj6103(%ebx),%eax
	movl	%eax,%edx
	leal	-72(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj6105
	call	LFPC_RERAISE$stub
Lj6105:
	movb	-13(%ebp),%al
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_TPUBLISHABLEVARIANTTYPE_$__SETPROPERTY$TVARDATA$ANSISTRING$TVARDATA$$BOOLEAN
_VARIANTS_TPUBLISHABLEVARIANTTYPE_$__SETPROPERTY$TVARDATA$ANSISTRING$TVARDATA$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$1,-13(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*176(%ecx)
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_VARIANTS_SETPROPVALUE$TOBJECT$ANSISTRING$VARIANT$stub
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARCASTERROR
_VARIANTS_VARCASTERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj6138
Lj6138:
	popl	%ebx
	movl	L_RESSTR_SYSCONST_SINVALIDVARCAST$non_lazy_ptr-Lj6138(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTTYPECASTERROR$non_lazy_ptr-Lj6138(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La10:
	movl	%ebp,%ecx
	leal	La10-Lj6138(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARCASTERROR$WORD$WORD
_VARIANTS_VARCASTERROR$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	call	Lj6146
Lj6146:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj6147
	movl	$1,(%esp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movw	-4(%ebp),%ax
	call	L_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$11,-64(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movw	-8(%ebp),%ax
	call	L_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	$11,-56(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SVARTYPECOULDNOTCONVERT$non_lazy_ptr-Lj6146(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTTYPECASTERROR$non_lazy_ptr-Lj6146(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La11:
	movl	%ebp,%ecx
	leal	La11-Lj6146(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj6147:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj6148
	call	LFPC_RERAISE$stub
Lj6148:
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARCASTERROROLE$WORD
_VARIANTS_VARCASTERROROLE$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	call	Lj6169
Lj6169:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movl	$0,-64(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj6170
	movl	$1,(%esp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movw	-4(%ebp),%ax
	call	L_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$11,-60(%ebp)
	movl	L_$VARIANTS$_Ld64$non_lazy_ptr-Lj6169(%ebx),%eax
	movl	%eax,-48(%ebp)
	movl	$11,-52(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SVARTYPECOULDNOTCONVERT$non_lazy_ptr-Lj6169(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTTYPECASTERROR$non_lazy_ptr-Lj6169(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La12:
	movl	%ebp,%ecx
	leal	La12-Lj6169(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj6170:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj6171
	call	LFPC_RERAISE$stub
Lj6171:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARINVALIDOP
_VARIANTS_VARINVALIDOP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj6188
Lj6188:
	popl	%ebx
	movl	L_RESSTR_SYSCONST_SINVALIDVAROP$non_lazy_ptr-Lj6188(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTINVALIDOPERROR$non_lazy_ptr-Lj6188(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La13:
	movl	%ebp,%ecx
	leal	La13-Lj6188(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP
_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	call	Lj6196
Lj6196:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-84(%ebp)
	movl	$0,-80(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj6197
	movl	$2,(%esp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movw	-4(%ebp),%ax
	call	L_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING$stub
	movl	-80(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	$11,-76(%ebp)
	movl	-12(%ebp),%edx
	movl	L_TC_VARIANTS_VAROPASTEXT$non_lazy_ptr-Lj6196(%ebx),%eax
	movl	(%eax,%edx,4),%eax
	movl	%eax,-64(%ebp)
	movl	$11,-68(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movw	-8(%ebp),%ax
	call	L_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING$stub
	movl	-84(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$11,-60(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SINVALIDBINARYVAROP$non_lazy_ptr-Lj6196(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTINVALIDOPERROR$non_lazy_ptr-Lj6196(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La14:
	movl	%ebp,%ecx
	leal	La14-Lj6196(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj6197:
	call	LFPC_POPADDRSTACK$stub
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj6198
	call	LFPC_RERAISE$stub
Lj6198:
	movl	-88(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARINVALIDOP$WORD$TVAROP
_VARIANTS_VARINVALIDOP$WORD$TVAROP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	call	Lj6219
Lj6219:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-68(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj6220
	movl	$1,(%esp)
	movl	-8(%ebp),%edx
	movl	L_TC_VARIANTS_VAROPASTEXT$non_lazy_ptr-Lj6219(%ebx),%eax
	movl	(%eax,%edx,4),%eax
	movl	%eax,-60(%ebp)
	movl	$11,-64(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movw	-4(%ebp),%ax
	call	L_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	$11,-56(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SINVALIDUNARYVAROP$non_lazy_ptr-Lj6219(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTINVALIDOPERROR$non_lazy_ptr-Lj6219(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La15:
	movl	%ebp,%ecx
	leal	La15-Lj6219(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj6220:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj6221
	call	LFPC_RERAISE$stub
Lj6221:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARINVALIDNULLOP
_VARIANTS_VARINVALIDNULLOP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj6238
Lj6238:
	popl	%ebx
	movl	L_RESSTR_SYSCONST_SINVALIDVARNULLOP$non_lazy_ptr-Lj6238(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTINVALIDOPERROR$non_lazy_ptr-Lj6238(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La16:
	movl	%ebp,%ecx
	leal	La16-Lj6238(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARPARAMNOTFOUNDERROR
_VARIANTS_VARPARAMNOTFOUNDERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj6246
Lj6246:
	popl	%ebx
	movl	L_RESSTR_SYSCONST_SVARPARAMNOTFOUND$non_lazy_ptr-Lj6246(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTPARAMNOTFOUNDERROR$non_lazy_ptr-Lj6246(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La17:
	movl	%ebp,%ecx
	leal	La17-Lj6246(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARBADTYPEERROR
_VARIANTS_VARBADTYPEERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj6254
Lj6254:
	popl	%ebx
	movl	L_RESSTR_SYSCONST_SVARBADTYPE$non_lazy_ptr-Lj6254(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTBADVARTYPEERROR$non_lazy_ptr-Lj6254(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La18:
	movl	%ebp,%ecx
	leal	La18-Lj6254(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VAROVERFLOWERROR
_VARIANTS_VAROVERFLOWERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj6262
Lj6262:
	popl	%ebx
	movl	L_RESSTR_SYSCONST_SVAROVERFLOW$non_lazy_ptr-Lj6262(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTOVERFLOWERROR$non_lazy_ptr-Lj6262(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La19:
	movl	%ebp,%ecx
	leal	La19-Lj6262(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VAROVERFLOWERROR$WORD$WORD
_VARIANTS_VAROVERFLOWERROR$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	call	Lj6270
Lj6270:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj6271
	movl	$1,(%esp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movw	-4(%ebp),%ax
	call	L_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$11,-64(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movw	-8(%ebp),%ax
	call	L_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	$11,-56(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SVARTYPECONVERTOVERFLOW$non_lazy_ptr-Lj6270(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTOVERFLOWERROR$non_lazy_ptr-Lj6270(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La20:
	movl	%ebp,%ecx
	leal	La20-Lj6270(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj6271:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj6272
	call	LFPC_RERAISE$stub
Lj6272:
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARRANGECHECKERROR$WORD
_VARIANTS_VARRANGECHECKERROR$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj6293
Lj6293:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj6294
	movl	$0,(%esp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movw	-4(%ebp),%ax
	call	L_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	$11,-52(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SVARTYPERANGECHECK1$non_lazy_ptr-Lj6293(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTOVERFLOWERROR$non_lazy_ptr-Lj6293(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La21:
	movl	%ebp,%ecx
	leal	La21-Lj6293(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj6294:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj6295
	call	LFPC_RERAISE$stub
Lj6295:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARRANGECHECKERROR$WORD$WORD
_VARIANTS_VARRANGECHECKERROR$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	call	Lj6312
Lj6312:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj6313
	movw	-4(%ebp),%ax
	cmpw	-8(%ebp),%ax
	jne	Lj6316
	jmp	Lj6317
Lj6316:
	movl	$1,(%esp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movw	-4(%ebp),%ax
	call	L_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$11,-64(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movw	-8(%ebp),%ax
	call	L_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	$11,-56(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SVARTYPERANGECHECK2$non_lazy_ptr-Lj6312(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTOVERFLOWERROR$non_lazy_ptr-Lj6312(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La22:
	movl	%ebp,%ecx
	leal	La22-Lj6312(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	jmp	Lj6336
Lj6317:
	movw	-4(%ebp),%ax
	call	L_VARIANTS_VARRANGECHECKERROR$WORD$stub
Lj6336:
Lj6313:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj6314
	call	LFPC_RERAISE$stub
Lj6314:
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARBADINDEXERROR
_VARIANTS_VARBADINDEXERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj6340
Lj6340:
	popl	%ebx
	movl	L_RESSTR_SYSCONST_SVARARRAYBOUNDS$non_lazy_ptr-Lj6340(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTBADINDEXERROR$non_lazy_ptr-Lj6340(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La23:
	movl	%ebp,%ecx
	leal	La23-Lj6340(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARARRAYLOCKEDERROR
_VARIANTS_VARARRAYLOCKEDERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj6348
Lj6348:
	popl	%ebx
	movl	L_RESSTR_SYSCONST_SVARARRAYLOCKED$non_lazy_ptr-Lj6348(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTARRAYLOCKEDERROR$non_lazy_ptr-Lj6348(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La24:
	movl	%ebp,%ecx
	leal	La24-Lj6348(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARNOTIMPLERROR
_VARIANTS_VARNOTIMPLERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj6356
Lj6356:
	popl	%ebx
	movl	L_RESSTR_SYSCONST_SVARNOTIMPLEMENTED$non_lazy_ptr-Lj6356(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTNOTIMPLERROR$non_lazy_ptr-Lj6356(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La25:
	movl	%ebp,%ecx
	leal	La25-Lj6356(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VAROUTOFMEMORYERROR
_VARIANTS_VAROUTOFMEMORYERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj6364
Lj6364:
	popl	%ebx
	movl	L_RESSTR_SYSCONST_SOUTOFMEMORY$non_lazy_ptr-Lj6364(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTOUTOFMEMORYERROR$non_lazy_ptr-Lj6364(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La26:
	movl	%ebp,%ecx
	leal	La26-Lj6364(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARINVALIDARGERROR
_VARIANTS_VARINVALIDARGERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj6372
Lj6372:
	popl	%ebx
	movl	L_RESSTR_SYSCONST_SVARINVALID$non_lazy_ptr-Lj6372(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTINVALIDARGERROR$non_lazy_ptr-Lj6372(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La27:
	movl	%ebp,%ecx
	leal	La27-Lj6372(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARINVALIDARGERROR$WORD
_VARIANTS_VARINVALIDARGERROR$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj6380
Lj6380:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj6381
	movl	$0,(%esp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movw	-4(%ebp),%ax
	call	L_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	$11,-52(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SVARINVALID1$non_lazy_ptr-Lj6380(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTINVALIDARGERROR$non_lazy_ptr-Lj6380(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La28:
	movl	%ebp,%ecx
	leal	La28-Lj6380(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj6381:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj6382
	call	LFPC_RERAISE$stub
Lj6382:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARUNEXPECTEDERROR
_VARIANTS_VARUNEXPECTEDERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj6399
Lj6399:
	popl	%ebx
	movl	L_RESSTR_SYSCONST_SVARUNEXPECTED$non_lazy_ptr-Lj6399(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTUNEXPECTEDERROR$non_lazy_ptr-Lj6399(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La29:
	movl	%ebp,%ecx
	leal	La29-Lj6399(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARARRAYCREATEERROR
_VARIANTS_VARARRAYCREATEERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj6407
Lj6407:
	popl	%ebx
	movl	L_RESSTR_SYSCONST_SVARARRAYCREATE$non_lazy_ptr-Lj6407(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_VARIANTS_EVARIANTARRAYCREATEERROR$non_lazy_ptr-Lj6407(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La30:
	movl	%ebp,%ecx
	leal	La30-Lj6407(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_RAISEVAREXCEPTION$HRESULT
_VARIANTS_RAISEVAREXCEPTION$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	call	Lj6415
Lj6415:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$-2147467263,%eax
	je	Lj6425
	cmpl	$-2147418113,%eax
	je	Lj6428
	cmpl	$-2147352572,%eax
	je	Lj6418
	cmpl	$-2147352571,%eax
	je	Lj6419
	cmpl	$-2147352568,%eax
	je	Lj6420
	cmpl	$-2147352567,%eax
	je	Lj6421
	cmpl	$-2147352566,%eax
	je	Lj6422
	cmpl	$-2147352565,%eax
	je	Lj6423
	cmpl	$-2147352563,%eax
	je	Lj6424
	cmpl	$-2147024882,%eax
	je	Lj6426
	cmpl	$-2147024809,%eax
	je	Lj6427
	jmp	Lj6417
Lj6418:
	call	L_VARIANTS_VARPARAMNOTFOUNDERROR$stub
	jmp	Lj6416
Lj6419:
	call	L_VARIANTS_VARCASTERROR$stub
	jmp	Lj6416
Lj6420:
	call	L_VARIANTS_VARBADTYPEERROR$stub
	jmp	Lj6416
Lj6421:
	call	L_VARIANTS_VARINVALIDOP$stub
	jmp	Lj6416
Lj6422:
	call	L_VARIANTS_VAROVERFLOWERROR$stub
	jmp	Lj6416
Lj6423:
	call	L_VARIANTS_VARBADINDEXERROR$stub
	jmp	Lj6416
Lj6424:
	call	L_VARIANTS_VARARRAYLOCKEDERROR$stub
	jmp	Lj6416
Lj6425:
	call	L_VARIANTS_VARNOTIMPLERROR$stub
	jmp	Lj6416
Lj6426:
	call	L_VARIANTS_VAROUTOFMEMORYERROR$stub
	jmp	Lj6416
Lj6427:
	call	L_VARIANTS_VARINVALIDARGERROR$stub
	jmp	Lj6416
Lj6428:
	call	L_VARIANTS_VARUNEXPECTEDERROR$stub
	jmp	Lj6416
Lj6417:
	movl	$2,(%esp)
	movl	$36,-24(%ebp)
	movl	$2,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-8(%ebp)
	movl	$11,-12(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SINVALIDVAROPWITHHRESULTWITHPREFIX$non_lazy_ptr-Lj6415(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_EVARIANTERROR$non_lazy_ptr-Lj6415(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La31:
	movl	%ebp,%ecx
	leal	La31-Lj6415(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj6416:
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARRESULTCHECK$HRESULT
_VARIANTS_VARRESULTCHECK$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj6441
	jmp	Lj6442
Lj6441:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_RAISEVAREXCEPTION$HRESULT$stub
Lj6442:
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARRESULTCHECK$HRESULT$WORD$WORD
_VARIANTS_VARRESULTCHECK$HRESULT$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$-2147352571,%eax
	je	Lj6451
	cmpl	$-2147352566,%eax
	je	Lj6450
	testl	%eax,%eax
	je	Lj6449
	jmp	Lj6448
Lj6449:
	jmp	Lj6447
Lj6450:
	movw	-12(%ebp),%dx
	movw	-8(%ebp),%ax
	call	L_VARIANTS_VAROVERFLOWERROR$WORD$WORD$stub
	jmp	Lj6447
Lj6451:
	movw	-12(%ebp),%dx
	movw	-8(%ebp),%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
	jmp	Lj6447
Lj6448:
	movl	-4(%ebp),%eax
	call	L_VARIANTS_RAISEVAREXCEPTION$HRESULT$stub
Lj6447:
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_HANDLECONVERSIONEXCEPTION$WORD$WORD
_VARIANTS_HANDLECONVERSIONEXCEPTION$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj6463
Lj6463:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	call	L_SYSUTILS_EXCEPTOBJECT$$TOBJECT$stub
	movl	%eax,%edx
	movl	L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr-Lj6463(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj6464
	jmp	Lj6465
Lj6464:
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_VARIANTS_VARCASTERROR$WORD$WORD$stub
	jmp	Lj6474
Lj6465:
	call	L_SYSUTILS_EXCEPTOBJECT$$TOBJECT$stub
	movl	%eax,%edx
	movl	L_VMT_SYSUTILS_EOVERFLOW$non_lazy_ptr-Lj6463(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj6475
	jmp	Lj6477
Lj6477:
	call	L_SYSUTILS_EXCEPTOBJECT$$TOBJECT$stub
	movl	%eax,%edx
	movl	L_VMT_SYSUTILS_ERANGEERROR$non_lazy_ptr-Lj6463(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj6475
	jmp	Lj6476
Lj6475:
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_VARIANTS_VAROVERFLOWERROR$WORD$WORD$stub
	jmp	Lj6490
Lj6476:
	call	L_SYSTEM_ACQUIREEXCEPTIONOBJECT$$POINTER$stub
La32:
	movl	%ebp,%ecx
	leal	La32-Lj6463(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj6490:
Lj6474:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING
_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-324(%ebp)
	movl	%esi,-320(%ebp)
	movl	%edi,-316(%ebp)
	call	Lj6492
Lj6492:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-312(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj6493
	jmp	Lj6498
Lj6498:
	movw	-4(%ebp),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	cmpl	$21,%eax
	jle	Lj6496
	jmp	Lj6497
Lj6496:
	movw	-4(%ebp),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	imull	$9,%eax
	movl	L_TC_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING_NAMES$non_lazy_ptr-Lj6492(%ebx),%edx
	leal	(%edx,%eax),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	jmp	Lj6503
Lj6497:
	movw	-4(%ebp),%ax
	andw	$4095,%ax
	cmpw	$256,%ax
	jb	Lj6505
	subw	$256,%ax
	je	Lj6506
	subw	$1,%ax
	je	Lj6507
	jmp	Lj6505
Lj6506:
	movl	L_$VARIANTS$_Ld66$non_lazy_ptr-Lj6492(%ebx),%esi
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj6504
Lj6507:
	movl	L_$VARIANTS$_Ld68$non_lazy_ptr-Lj6492(%ebx),%esi
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj6504
Lj6505:
	movw	-4(%ebp),%ax
	andw	$4095,%ax
	leal	-12(%ebp),%edx
	call	L_VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj6512
	jmp	Lj6513
Lj6512:
	leal	-308(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-308(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	jmp	Lj6526
Lj6513:
	leal	-312(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-312(%ebp)
	movw	-4(%ebp),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	leal	-312(%ebp),%ecx
	movl	$4,%edx
	call	L_SYSUTILS_INTTOHEX$LONGINT$LONGINT$$ANSISTRING$stub
	movl	-312(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	L_$VARIANTS$_Ld70$non_lazy_ptr-Lj6492(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
Lj6526:
Lj6504:
Lj6503:
	movw	-4(%ebp),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj6539
	jmp	Lj6540
Lj6539:
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	L_$VARIANTS$_Ld72$non_lazy_ptr-Lj6492(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
Lj6540:
	movw	-4(%ebp),%ax
	andw	$16384,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj6547
	jmp	Lj6548
Lj6547:
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	L_$VARIANTS$_Ld74$non_lazy_ptr-Lj6492(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
Lj6548:
Lj6493:
	call	LFPC_POPADDRSTACK$stub
	leal	-312(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-312(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj6494
	call	LFPC_RERAISE$stub
Lj6494:
	movl	-324(%ebp),%ebx
	movl	-320(%ebp),%esi
	movl	-316(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_FINDVARDATA$VARIANT$$PVARDATA
_VARIANTS_FINDVARDATA$VARIANT$$PVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj6560
	.align 2
Lj6559:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
Lj6560:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$16396,%eax
	je	Lj6559
	jmp	Lj6561
Lj6561:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_GETVARIANTPROP$TOBJECT$PPROPINFO$$VARIANT
_VARIANTS_GETVARIANTPROP$TOBJECT$PPROPINFO$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	call	Lj6565
Lj6565:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj6565(%ebx),%eax
	movl	%eax,%edx
	leal	-96(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj6565(%ebx),%eax
	movl	%eax,%edx
	leal	-80(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj6566
	movl	-12(%ebp),%eax
	call	L_VARIANTS_NULL$$VARIANT$stub
	movl	-8(%ebp),%eax
	movb	26(%eax),%al
	andb	$3,%al
	testb	%al,%al
	je	Lj6573
	subb	$1,%al
	jb	Lj6572
	subb	$1,%al
	jbe	Lj6574
	jmp	Lj6572
Lj6573:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj6571
Lj6574:
	movl	-8(%ebp),%eax
	movb	26(%eax),%al
	andb	$3,%al
	movzbl	%al,%eax
	cmpl	$1,%eax
	je	Lj6579
	jmp	Lj6580
Lj6579:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj6583
Lj6580:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
Lj6583:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj6592
	jmp	Lj6593
Lj6592:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj6565(%ebx),%eax
	movl	%eax,%edx
	leal	-80(%ebp),%eax
	call	LFPC_FINALIZE$stub
	leal	-80(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	*%ecx
	leal	-80(%ebp),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj6602
Lj6593:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj6565(%ebx),%eax
	movl	%eax,%edx
	leal	-96(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	leal	-96(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%esi
	call	*%esi
	leal	-96(%ebp),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_variant_copy$stub
Lj6602:
	jmp	Lj6571
Lj6572:
Lj6571:
Lj6566:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj6565(%ebx),%eax
	movl	%eax,%edx
	leal	-96(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj6565(%ebx),%eax
	movl	%eax,%edx
	leal	-80(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj6567
	call	LFPC_RERAISE$stub
Lj6567:
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SETVARIANTPROP$TOBJECT$PPROPINFO$VARIANT
_VARIANTS_SETVARIANTPROP$TOBJECT$PPROPINFO$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	testl	%eax,%eax
	je	Lj6617
	subl	$1,%eax
	jb	Lj6616
	subl	$1,%eax
	jbe	Lj6618
	jmp	Lj6616
Lj6617:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%ecx
	addl	%ecx,%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj6615
Lj6618:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	cmpl	$1,%eax
	je	Lj6623
	jmp	Lj6624
Lj6623:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj6627
Lj6624:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
Lj6627:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj6636
	jmp	Lj6637
Lj6636:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	*%ecx
	jmp	Lj6642
Lj6637:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	call	*%ebx
Lj6642:
	jmp	Lj6615
Lj6616:
Lj6615:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_GETVARIANTPROP$TOBJECT$ANSISTRING$$VARIANT
_VARIANTS_GETVARIANTPROP$TOBJECT$ANSISTRING$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO$stub
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_GETVARIANTPROP$TOBJECT$PPROPINFO$$VARIANT$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SETVARIANTPROP$TOBJECT$ANSISTRING$VARIANT
_VARIANTS_SETVARIANTPROP$TOBJECT$ANSISTRING$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO$stub
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SETVARIANTPROP$TOBJECT$PPROPINFO$VARIANT$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_GETPROPVALUE$TOBJECT$ANSISTRING$$VARIANT
_VARIANTS_GETPROPVALUE$TOBJECT$ANSISTRING$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$1,%cl
	call	L_VARIANTS_GETPROPVALUE$TOBJECT$ANSISTRING$BOOLEAN$$VARIANT$stub
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_GETPROPVALUE$TOBJECT$ANSISTRING$BOOLEAN$$VARIANT
_VARIANTS_GETPROPVALUE$TOBJECT$ANSISTRING$BOOLEAN$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	call	Lj6684
Lj6684:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj6685
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_GETPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj6694
	jmp	Lj6695
Lj6694:
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$11,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_RTLCONSTS_SERRPROPERTYNOTFOUND$non_lazy_ptr-Lj6684(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_TYPINFO_EPROPERTYERROR$non_lazy_ptr-Lj6684(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La33:
	movl	%ebp,%ecx
	leal	La33-Lj6684(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	jmp	Lj6706
Lj6695:
	movl	8(%ebp),%eax
	call	L_VARIANTS_NULL$$VARIANT$stub
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$1,%al
	jb	Lj6710
	subb	$1,%al
	subb	$1,%al
	jbe	Lj6711
	subb	$1,%al
	je	Lj6712
	subb	$1,%al
	je	Lj6714
	subb	$1,%al
	je	Lj6713
	subb	$1,%al
	je	Lj6715
	subb	$1,%al
	jb	Lj6710
	subb	$2,%al
	jbe	Lj6716
	subb	$1,%al
	je	Lj6717
	subb	$1,%al
	je	Lj6719
	subb	$4,%al
	je	Lj6711
	subb	$2,%al
	jb	Lj6710
	subb	$1,%al
	jbe	Lj6711
	subb	$1,%al
	je	Lj6720
	subb	$1,%al
	je	Lj6721
	subb	$4,%al
	je	Lj6718
	jmp	Lj6710
Lj6711:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64$stub
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	call	L_SYSTEM_assign$INT64$$VARIANT$stub
	jmp	Lj6709
Lj6712:
	cmpb	$0,-12(%ebp)
	jne	Lj6730
	jmp	Lj6731
Lj6730:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_GETENUMPROP$TOBJECT$PPROPINFO$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movl	8(%ebp),%edx
	call	L_SYSTEM_assign$ANSISTRING$$VARIANT$stub
	jmp	Lj6742
Lj6731:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64$stub
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	call	L_SYSTEM_assign$INT64$$VARIANT$stub
Lj6742:
	jmp	Lj6709
Lj6713:
	cmpb	$0,-12(%ebp)
	jne	Lj6751
	jmp	Lj6752
Lj6751:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	L_TYPINFO_GETSETPROP$TOBJECT$PPROPINFO$BOOLEAN$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movl	8(%ebp),%edx
	call	L_SYSTEM_assign$ANSISTRING$$VARIANT$stub
	jmp	Lj6765
Lj6752:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64$stub
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	call	L_SYSTEM_assign$INT64$$VARIANT$stub
Lj6765:
	jmp	Lj6709
Lj6714:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_GETFLOATPROP$TOBJECT$PPROPINFO$$EXTENDED$stub
	fstpt	(%esp)
	movl	8(%ebp),%eax
	call	L_SYSTEM_assign$EXTENDED$$VARIANT$stub
	jmp	Lj6709
Lj6715:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	leal	1(%eax),%eax
	movl	8(%ebp),%edx
	call	L_SYSTEM_assign$SHORTSTRING$$VARIANT$stub
	jmp	Lj6709
Lj6716:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_GETSTRPROP$TOBJECT$PPROPINFO$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movl	8(%ebp),%edx
	call	L_SYSTEM_assign$ANSISTRING$$VARIANT$stub
	jmp	Lj6709
Lj6717:
	leal	-72(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_GETWIDESTRPROP$TOBJECT$PPROPINFO$$WIDESTRING$stub
	movl	-72(%ebp),%eax
	movl	8(%ebp),%edx
	call	L_SYSTEM_assign$WIDESTRING$$VARIANT$stub
	jmp	Lj6709
Lj6718:
	leal	-72(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_GETUNICODESTRPROP$TOBJECT$PPROPINFO$$UNICODESTRING$stub
	movl	-72(%ebp),%eax
	movl	8(%ebp),%edx
	call	L_SYSTEM_assign$WIDESTRING$$VARIANT$stub
	jmp	Lj6709
Lj6719:
	movl	8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_GETVARIANTPROP$TOBJECT$PPROPINFO$$VARIANT$stub
	jmp	Lj6709
Lj6720:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_GETINT64PROP$TOBJECT$PPROPINFO$$INT64$stub
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	call	L_SYSTEM_assign$INT64$$VARIANT$stub
	jmp	Lj6709
Lj6721:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_GETINT64PROP$TOBJECT$PPROPINFO$$INT64$stub
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	call	L_SYSTEM_assign$QWORD$$VARIANT$stub
	jmp	Lj6709
Lj6710:
	movl	$0,(%esp)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	leal	1(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	$4,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_TYPINFO_EPROPERTYCONVERTERROR$non_lazy_ptr-Lj6684(%ebx),%edx
	movl	L_$VARIANTS$_Ld76$non_lazy_ptr-Lj6684(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La34:
	movl	%ebp,%ecx
	leal	La34-Lj6684(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj6709:
Lj6706:
Lj6685:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj6686
	call	LFPC_RERAISE$stub
Lj6686:
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARIANTS_SETPROPVALUE$TOBJECT$ANSISTRING$VARIANT
_VARIANTS_SETPROPVALUE$TOBJECT$ANSISTRING$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-112(%ebp)
	call	Lj6849
Lj6849:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-44(%ebp)
	movl	$0,-108(%ebp)
	movl	$0,-104(%ebp)
	movl	$0,-100(%ebp)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj6850
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_GETPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj6859
	jmp	Lj6860
Lj6859:
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$11,-96(%ebp)
	leal	-96(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_RTLCONSTS_SERRPROPERTYNOTFOUND$non_lazy_ptr-Lj6849(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_TYPINFO_EPROPERTYERROR$non_lazy_ptr-Lj6849(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La35:
	movl	%ebp,%ecx
	leal	La35-Lj6849(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	jmp	Lj6871
Lj6860:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	call	L_TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA$stub
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$1,%al
	jb	Lj6877
	subb	$1,%al
	subb	$1,%al
	jbe	Lj6879
	subb	$1,%al
	je	Lj6880
	subb	$1,%al
	je	Lj6882
	subb	$1,%al
	je	Lj6881
	subb	$2,%al
	jb	Lj6877
	subb	$2,%al
	jbe	Lj6883
	subb	$1,%al
	je	Lj6884
	subb	$1,%al
	je	Lj6886
	subb	$6,%al
	je	Lj6879
	subb	$1,%al
	je	Lj6878
	subb	$1,%al
	je	Lj6887
	subb	$1,%al
	je	Lj6888
	subb	$4,%al
	je	Lj6885
	jmp	Lj6877
Lj6878:
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	movzwl	%ax,%eax
	cmpl	$8,%eax
	je	Lj6889
	jmp	Lj6892
Lj6892:
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	movzwl	%ax,%eax
	cmpl	$256,%eax
	je	Lj6889
	jmp	Lj6891
Lj6891:
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	movzwl	%ax,%eax
	cmpl	$11,%eax
	je	Lj6889
	jmp	Lj6890
Lj6889:
	movl	-12(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$BOOLEAN$stub
	movb	%al,-45(%ebp)
	movzbl	-45(%ebp),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64$stub
	jmp	Lj6911
Lj6890:
	movl	-12(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$INT64$stub
	movl	%eax,-32(%ebp)
	movl	%edx,-28(%ebp)
	movl	-20(%ebp),%eax
	movl	1(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	cmpl	-28(%ebp),%eax
	jg	Lj6916
	jl	Lj6918
	cmpl	-32(%ebp),%edx
	ja	Lj6916
	jmp	Lj6918
	jmp	Lj6918
Lj6918:
	movl	-20(%ebp),%eax
	movl	5(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	cmpl	-28(%ebp),%eax
	jl	Lj6916
	jg	Lj6917
	cmpl	-32(%ebp),%edx
	jb	Lj6916
	jmp	Lj6917
	jmp	Lj6917
Lj6916:
	movl	L_RESSTR_RTLCONSTS_SRANGEERROR$non_lazy_ptr-Lj6849(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_ERANGEERROR$non_lazy_ptr-Lj6849(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La36:
	movl	%ebp,%ecx
	leal	La36-Lj6849(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj6917:
	movl	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64$stub
Lj6911:
	jmp	Lj6876
Lj6879:
	movl	-12(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$INT64$stub
	movl	%eax,-32(%ebp)
	movl	%edx,-28(%ebp)
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	cmpb	$5,%al
	je	Lj6935
	jmp	Lj6936
Lj6935:
	movl	-20(%ebp),%eax
	movl	1(%eax),%eax
	movl	$0,%edx
	cmpl	-28(%ebp),%edx
	jg	Lj6937
	jl	Lj6939
	cmpl	-32(%ebp),%eax
	ja	Lj6937
	jmp	Lj6939
	jmp	Lj6939
Lj6939:
	movl	-20(%ebp),%eax
	movl	5(%eax),%edx
	movl	$0,%eax
	cmpl	-28(%ebp),%eax
	jl	Lj6937
	jg	Lj6938
	cmpl	-32(%ebp),%edx
	jb	Lj6937
	jmp	Lj6938
	jmp	Lj6938
Lj6937:
	movl	L_RESSTR_RTLCONSTS_SRANGEERROR$non_lazy_ptr-Lj6849(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_ERANGEERROR$non_lazy_ptr-Lj6849(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La37:
	movl	%ebp,%ecx
	leal	La37-Lj6849(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	jmp	Lj6946
Lj6938:
Lj6946:
	jmp	Lj6947
Lj6936:
	movl	-20(%ebp),%eax
	movl	1(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	cmpl	-28(%ebp),%eax
	jg	Lj6948
	jl	Lj6950
	cmpl	-32(%ebp),%edx
	ja	Lj6948
	jmp	Lj6950
	jmp	Lj6950
Lj6950:
	movl	-20(%ebp),%eax
	movl	5(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	cmpl	-28(%ebp),%eax
	jl	Lj6948
	jg	Lj6949
	cmpl	-32(%ebp),%edx
	jb	Lj6948
	jmp	Lj6949
	jmp	Lj6949
Lj6948:
	movl	L_RESSTR_RTLCONSTS_SRANGEERROR$non_lazy_ptr-Lj6849(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_ERANGEERROR$non_lazy_ptr-Lj6849(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La38:
	movl	%ebp,%ecx
	leal	La38-Lj6849(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj6949:
Lj6947:
	movl	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64$stub
	jmp	Lj6876
Lj6880:
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	movzwl	%ax,%eax
	cmpl	$8,%eax
	je	Lj6963
	jmp	Lj6965
Lj6965:
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	movzwl	%ax,%eax
	cmpl	$256,%eax
	je	Lj6963
	jmp	Lj6964
Lj6963:
	leal	-44(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$ANSISTRING$stub
	movl	-44(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_SETENUMPROP$TOBJECT$PPROPINFO$ANSISTRING$stub
	jmp	Lj6980
Lj6964:
	movl	-12(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$INT64$stub
	movl	%eax,-32(%ebp)
	movl	%edx,-28(%ebp)
	movl	-20(%ebp),%eax
	movl	1(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	cmpl	-28(%ebp),%eax
	jg	Lj6985
	jl	Lj6987
	cmpl	-32(%ebp),%edx
	ja	Lj6985
	jmp	Lj6987
	jmp	Lj6987
Lj6987:
	movl	-20(%ebp),%eax
	movl	5(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	cmpl	-28(%ebp),%eax
	jl	Lj6985
	jg	Lj6986
	cmpl	-32(%ebp),%edx
	jb	Lj6985
	jmp	Lj6986
	jmp	Lj6986
Lj6985:
	movl	L_RESSTR_RTLCONSTS_SRANGEERROR$non_lazy_ptr-Lj6849(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_ERANGEERROR$non_lazy_ptr-Lj6849(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La39:
	movl	%ebp,%ecx
	leal	La39-Lj6849(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj6986:
	movl	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64$stub
Lj6980:
	jmp	Lj6876
Lj6881:
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	movzwl	%ax,%eax
	cmpl	$8,%eax
	je	Lj7000
	jmp	Lj7002
Lj7002:
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	movzwl	%ax,%eax
	cmpl	$256,%eax
	je	Lj7000
	jmp	Lj7001
Lj7000:
	leal	-44(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$ANSISTRING$stub
	movl	-44(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_SETSETPROP$TOBJECT$PPROPINFO$ANSISTRING$stub
	jmp	Lj7017
Lj7001:
	movl	-12(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64$stub
Lj7017:
	jmp	Lj6876
Lj6882:
	movl	-12(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$EXTENDED$stub
	fstpt	(%esp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_SETFLOATPROP$TOBJECT$PPROPINFO$EXTENDED$stub
	jmp	Lj6876
Lj6883:
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-100(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_VARIANTS_VARTOSTR$VARIANT$$ANSISTRING$stub
	movl	-100(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_SETSTRPROP$TOBJECT$PPROPINFO$ANSISTRING$stub
	jmp	Lj6876
Lj6884:
	leal	-104(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_VARIANTS_VARTOWIDESTR$VARIANT$$WIDESTRING$stub
	movl	-104(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_SETWIDESTRPROP$TOBJECT$PPROPINFO$WIDESTRING$stub
	jmp	Lj6876
Lj6885:
	leal	-108(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_VARIANTS_VARTOUNICODESTR$VARIANT$$UNICODESTRING$stub
	movl	-108(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_SETUNICODESTRPROP$TOBJECT$PPROPINFO$UNICODESTRING$stub
	jmp	Lj6876
Lj6886:
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARIANTS_SETVARIANTPROP$TOBJECT$PPROPINFO$VARIANT$stub
	jmp	Lj6876
Lj6887:
	movl	-12(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$INT64$stub
	movl	%eax,-32(%ebp)
	movl	%edx,-28(%ebp)
	movl	-20(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	-28(%ebp),%eax
	jg	Lj7076
	jl	Lj7078
	cmpl	-32(%ebp),%edx
	ja	Lj7076
	jmp	Lj7078
	jmp	Lj7078
Lj7078:
	movl	-20(%ebp),%eax
	movl	8(%eax),%edx
	movl	12(%eax),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj7076
	jg	Lj7077
	cmpl	-32(%ebp),%edx
	jb	Lj7076
	jmp	Lj7077
	jmp	Lj7077
Lj7076:
	movl	L_RESSTR_RTLCONSTS_SRANGEERROR$non_lazy_ptr-Lj6849(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_ERANGEERROR$non_lazy_ptr-Lj6849(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La40:
	movl	%ebp,%ecx
	leal	La40-Lj6849(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj7077:
	movl	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_SETINT64PROP$TOBJECT$PPROPINFO$INT64$stub
	jmp	Lj6876
Lj6888:
	movl	-12(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$QWORD$stub
	movl	%eax,-40(%ebp)
	movl	%edx,-36(%ebp)
	movl	-20(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	-36(%ebp),%eax
	ja	Lj7095
	jb	Lj7097
	cmpl	-40(%ebp),%edx
	ja	Lj7095
	jmp	Lj7097
	jmp	Lj7097
Lj7097:
	movl	-20(%ebp),%eax
	movl	8(%eax),%edx
	movl	12(%eax),%eax
	cmpl	-36(%ebp),%eax
	jb	Lj7095
	ja	Lj7096
	cmpl	-40(%ebp),%edx
	jb	Lj7095
	jmp	Lj7096
	jmp	Lj7096
Lj7095:
	movl	L_RESSTR_RTLCONSTS_SRANGEERROR$non_lazy_ptr-Lj6849(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_ERANGEERROR$non_lazy_ptr-Lj6849(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La41:
	movl	%ebp,%ecx
	leal	La41-Lj6849(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj7096:
	movl	-36(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-40(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_SETINT64PROP$TOBJECT$PPROPINFO$INT64$stub
	jmp	Lj6876
Lj6877:
	movl	$0,(%esp)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	leal	1(%eax),%eax
	movl	%eax,-92(%ebp)
	movl	$4,-96(%ebp)
	leal	-96(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_TYPINFO_EPROPERTYCONVERTERROR$non_lazy_ptr-Lj6849(%ebx),%edx
	movl	L_$VARIANTS$_Ld78$non_lazy_ptr-Lj6849(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La42:
	movl	%ebp,%ecx
	leal	La42-Lj6849(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj6876:
Lj6871:
Lj6850:
	call	LFPC_POPADDRSTACK$stub
	leal	-108(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-44(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-44(%ebp)
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj6851
	call	LFPC_RERAISE$stub
Lj6851:
	movl	-112(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIT$_VARIANTS
_INIT$_VARIANTS:
.reference __VARIANTS_init
.globl	__VARIANTS_init
__VARIANTS_init:
.reference _INIT$_VARIANTS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPELOCK$non_lazy_ptr-Lj2(%ebx),%eax
	call	L_SYSTEM_INITCRITICALSECTION$TRTLCRITICALSECTION$stub
	movl	L_U_VARIANTS_CUSTOMVARIANTCURRTYPE$non_lazy_ptr-Lj2(%ebx),%eax
	movl	$270,(%eax)
	call	L_VARIANTS_SETSYSVARIANTMANAGER$stub
	movl	L_U_VARIANTS_EMPTYPARAM$non_lazy_ptr-Lj2(%ebx),%eax
	call	L_VARIANTS_SETCLEARVARTOEMPTYPARAM$TVARDATA$stub
	movl	L_VARIANTS_DOVARCLEAR$TVARDATA$non_lazy_ptr-Lj2(%ebx),%eax
	movl	L_TC_SYSTEM_VARCLEARPROC$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_VARIANTS_DOVARADDREF$TVARDATA$non_lazy_ptr-Lj2(%ebx),%eax
	movl	L_TC_SYSTEM_VARADDREFPROC$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_VARIANTS_DOVARCOPY$TVARDATA$TVARDATA$non_lazy_ptr-Lj2(%ebx),%eax
	movl	L_TC_SYSTEM_VARCOPYPROC$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_VARIANTS_GETVARIANTPROP$TOBJECT$PPROPINFO$$VARIANT$non_lazy_ptr-Lj2(%ebx),%eax
	movl	L_TC_TYPINFO_ONGETVARIANTPROP$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_VARIANTS_SETVARIANTPROP$TOBJECT$PPROPINFO$VARIANT$non_lazy_ptr-Lj2(%ebx),%eax
	movl	L_TC_TYPINFO_ONSETVARIANTPROP$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_VARIANTS_SETPROPVALUE$TOBJECT$ANSISTRING$VARIANT$non_lazy_ptr-Lj2(%ebx),%eax
	movl	L_TC_TYPINFO_ONSETPROPVALUE$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_VARIANTS_GETPROPVALUE$TOBJECT$ANSISTRING$BOOLEAN$$VARIANT$non_lazy_ptr-Lj2(%ebx),%eax
	movl	L_TC_TYPINFO_ONGETPROPVALUE$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_U_VARIANTS_INVALIDCUSTOMVARIANTTYPE$non_lazy_ptr-Lj2(%ebx),%eax
	movl	$-1,(%eax)
	movl	$271,-4(%ebp)
	leal	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_VARIANTS_DEF201$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPES$non_lazy_ptr-Lj2(%ebx),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_VARIANTS
_FINALIZE$_VARIANTS:
.reference __VARIANTS_finalize
.globl	__VARIANTS_finalize
__VARIANTS_finalize:
.reference _FINALIZE$_VARIANTS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	call	Lj7127
Lj7127:
	popl	%ebx
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPELOCK$non_lazy_ptr-Lj7127(%ebx),%eax
	call	L_SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION$stub
	leal	-12(%ebp),%ecx
	leal	-36(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-40(%ebp)
	testl	%eax,%eax
	jne	Lj7162
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPES$non_lazy_ptr-Lj7127(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_high$stub
	movl	%eax,%esi
	movl	L_U_VARIANTS_I$non_lazy_ptr-Lj7127(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_VARIANTS_I$non_lazy_ptr-Lj7127(%ebx),%eax
	cmpl	(%eax),%esi
	jl	Lj7167
	movl	L_U_VARIANTS_I$non_lazy_ptr-Lj7127(%ebx),%eax
	subl	$1,(%eax)
	.align 2
Lj7168:
	movl	L_U_VARIANTS_I$non_lazy_ptr-Lj7127(%ebx),%eax
	addl	$1,(%eax)
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPES$non_lazy_ptr-Lj7127(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_VARIANTS_I$non_lazy_ptr-Lj7127(%ebx),%eax
	movl	(%eax),%eax
	movl	(%edx,%eax,4),%eax
	movl	L_U_VARIANTS_INVALIDCUSTOMVARIANTTYPE$non_lazy_ptr-Lj7127(%ebx),%edx
	cmpl	(%edx),%eax
	jne	Lj7171
	jmp	Lj7172
Lj7171:
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPES$non_lazy_ptr-Lj7127(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_VARIANTS_I$non_lazy_ptr-Lj7127(%ebx),%eax
	movl	(%eax),%eax
	movl	(%edx,%eax,4),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj7172:
	movl	L_U_VARIANTS_I$non_lazy_ptr-Lj7127(%ebx),%eax
	cmpl	(%eax),%esi
	jg	Lj7168
Lj7167:
Lj7162:
	call	LFPC_POPADDRSTACK$stub
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPELOCK$non_lazy_ptr-Lj7127(%ebx),%eax
	call	L_SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION$stub
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj7163
	subl	$1,%eax
	testl	%eax,%eax
	je	Lj7164
Lj7164:
	call	LFPC_RERAISE$stub
Lj7163:
	call	L_VARIANTS_UNSETSYSVARIANTMANAGER$stub
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPELOCK$non_lazy_ptr-Lj7127(%ebx),%eax
	call	L_SYSTEM_DONECRITICALSECTION$TRTLCRITICALSECTION$stub
	movl	L_INIT_SYSTEM_OLEVARIANT$non_lazy_ptr-Lj7127(%ebx),%edx
	movl	L_U_VARIANTS_EMPTYPARAM$non_lazy_ptr-Lj7127(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_TC_VARIANTS_NULLASSTRINGVALUE$non_lazy_ptr-Lj7127(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_VARIANTS_NULLASSTRINGVALUE$non_lazy_ptr-Lj7127(%ebx),%eax
	movl	$0,(%eax)
	movl	L_INIT_VARIANTS_DEF179$non_lazy_ptr-Lj7127(%ebx),%edx
	movl	L_TC_VARIANTS_VAROPASTEXT$non_lazy_ptr-Lj7127(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_VARIANTS_DEF201$non_lazy_ptr-Lj7127(%ebx),%edx
	movl	L_U_VARIANTS_CUSTOMVARIANTTYPES$non_lazy_ptr-Lj7127(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	leave
	ret

.text
.globl	_WRPR_VARIANTS_TCUSTOMVARIANTTYPE_$_IUNKNOWN_$_0_$__VARIANTS_TCUSTOMVARIANTTYPE_$__QUERYINTERFACE$TGUID$formal$$HRESULT
_WRPR_VARIANTS_TCUSTOMVARIANTTYPE_$_IUNKNOWN_$_0_$__VARIANTS_TCUSTOMVARIANTTYPE_$__QUERYINTERFACE$TGUID$formal$$HRESULT:
	subl	$8,4(%esp)
	movl	4(%esp),%eax
	movl	(%eax),%eax
	jmp	*100(%eax)

.text
.globl	_WRPR_VARIANTS_TCUSTOMVARIANTTYPE_$_IUNKNOWN_$_1_$__VARIANTS_TCUSTOMVARIANTTYPE_$___ADDREF$$LONGINT
_WRPR_VARIANTS_TCUSTOMVARIANTTYPE_$_IUNKNOWN_$_1_$__VARIANTS_TCUSTOMVARIANTTYPE_$___ADDREF$$LONGINT:
	subl	$8,4(%esp)
	jmp	L_VARIANTS_TCUSTOMVARIANTTYPE_$___ADDREF$$LONGINT$stub

.text
.globl	_WRPR_VARIANTS_TCUSTOMVARIANTTYPE_$_IUNKNOWN_$_2_$__VARIANTS_TCUSTOMVARIANTTYPE_$___RELEASE$$LONGINT
_WRPR_VARIANTS_TCUSTOMVARIANTTYPE_$_IUNKNOWN_$_2_$__VARIANTS_TCUSTOMVARIANTTYPE_$___RELEASE$$LONGINT:
	subl	$8,4(%esp)
	jmp	L_VARIANTS_TCUSTOMVARIANTTYPE_$___RELEASE$$LONGINT$stub

.text
.globl	_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_0_$__VARIANTS_TCUSTOMVARIANTTYPE_$__QUERYINTERFACE$TGUID$formal$$HRESULT
_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_0_$__VARIANTS_TCUSTOMVARIANTTYPE_$__QUERYINTERFACE$TGUID$formal$$HRESULT:
	subl	$12,4(%esp)
	movl	4(%esp),%eax
	movl	(%eax),%eax
	jmp	*100(%eax)

.text
.globl	_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_1_$__VARIANTS_TCUSTOMVARIANTTYPE_$___ADDREF$$LONGINT
_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_1_$__VARIANTS_TCUSTOMVARIANTTYPE_$___ADDREF$$LONGINT:
	subl	$12,4(%esp)
	jmp	L_VARIANTS_TCUSTOMVARIANTTYPE_$___ADDREF$$LONGINT$stub

.text
.globl	_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_2_$__VARIANTS_TCUSTOMVARIANTTYPE_$___RELEASE$$LONGINT
_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_2_$__VARIANTS_TCUSTOMVARIANTTYPE_$___RELEASE$$LONGINT:
	subl	$12,4(%esp)
	jmp	L_VARIANTS_TCUSTOMVARIANTTYPE_$___RELEASE$$LONGINT$stub

.text
.globl	_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_3_$__VARIANTS_TINVOKEABLEVARIANTTYPE_$__DOFUNCTION$TVARDATA$TVARDATA$ANSISTRING$TVARDATAARRAY$$BOOLEAN
_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_3_$__VARIANTS_TINVOKEABLEVARIANTTYPE_$__DOFUNCTION$TVARDATA$TVARDATA$ANSISTRING$TVARDATAARRAY$$BOOLEAN:
	subl	$12,%eax
	pushl	%ebx
	pushl	%eax
	movl	(%eax),%eax
	movl	160(%eax),%eax
	movl	%eax,4(%esp)
	popl	%eax
	ret

.text
.globl	_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_4_$__VARIANTS_TINVOKEABLEVARIANTTYPE_$__DOPROCEDURE$TVARDATA$ANSISTRING$TVARDATAARRAY$$BOOLEAN
_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_4_$__VARIANTS_TINVOKEABLEVARIANTTYPE_$__DOPROCEDURE$TVARDATA$ANSISTRING$TVARDATAARRAY$$BOOLEAN:
	subl	$12,%eax
	pushl	%ebx
	pushl	%eax
	movl	(%eax),%eax
	movl	164(%eax),%eax
	movl	%eax,4(%esp)
	popl	%eax
	ret

.text
.globl	_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_5_$__VARIANTS_TINVOKEABLEVARIANTTYPE_$__GETPROPERTY$TVARDATA$TVARDATA$ANSISTRING$$BOOLEAN
_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_5_$__VARIANTS_TINVOKEABLEVARIANTTYPE_$__GETPROPERTY$TVARDATA$TVARDATA$ANSISTRING$$BOOLEAN:
	subl	$12,%eax
	pushl	%ebx
	pushl	%eax
	movl	(%eax),%eax
	movl	168(%eax),%eax
	movl	%eax,4(%esp)
	popl	%eax
	ret

.text
.globl	_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_6_$__VARIANTS_TINVOKEABLEVARIANTTYPE_$__SETPROPERTY$TVARDATA$ANSISTRING$TVARDATA$$BOOLEAN
_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_6_$__VARIANTS_TINVOKEABLEVARIANTTYPE_$__SETPROPERTY$TVARDATA$ANSISTRING$TVARDATA$$BOOLEAN:
	subl	$12,%eax
	pushl	%ebx
	pushl	%eax
	movl	(%eax),%eax
	movl	172(%eax),%eax
	movl	%eax,4(%esp)
	popl	%eax
	ret

.text
.globl	_WRPR_VARIANTS_TPUBLISHABLEVARIANTTYPE_$_IVARINSTANCEREFERENCE_$_0_$__VARIANTS_TCUSTOMVARIANTTYPE_$__QUERYINTERFACE$TGUID$formal$$HRESULT
_WRPR_VARIANTS_TPUBLISHABLEVARIANTTYPE_$_IVARINSTANCEREFERENCE_$_0_$__VARIANTS_TCUSTOMVARIANTTYPE_$__QUERYINTERFACE$TGUID$formal$$HRESULT:
	subl	$16,4(%esp)
	movl	4(%esp),%eax
	movl	(%eax),%eax
	jmp	*100(%eax)

.text
.globl	_WRPR_VARIANTS_TPUBLISHABLEVARIANTTYPE_$_IVARINSTANCEREFERENCE_$_1_$__VARIANTS_TCUSTOMVARIANTTYPE_$___ADDREF$$LONGINT
_WRPR_VARIANTS_TPUBLISHABLEVARIANTTYPE_$_IVARINSTANCEREFERENCE_$_1_$__VARIANTS_TCUSTOMVARIANTTYPE_$___ADDREF$$LONGINT:
	subl	$16,4(%esp)
	jmp	L_VARIANTS_TCUSTOMVARIANTTYPE_$___ADDREF$$LONGINT$stub

.text
.globl	_WRPR_VARIANTS_TPUBLISHABLEVARIANTTYPE_$_IVARINSTANCEREFERENCE_$_2_$__VARIANTS_TCUSTOMVARIANTTYPE_$___RELEASE$$LONGINT
_WRPR_VARIANTS_TPUBLISHABLEVARIANTTYPE_$_IVARINSTANCEREFERENCE_$_2_$__VARIANTS_TCUSTOMVARIANTTYPE_$___RELEASE$$LONGINT:
	subl	$16,4(%esp)
	jmp	L_VARIANTS_TCUSTOMVARIANTTYPE_$___RELEASE$$LONGINT$stub

.text
.globl	_WRPR_VARIANTS_TPUBLISHABLEVARIANTTYPE_$_IVARINSTANCEREFERENCE_$_3_$__VARIANTS_TPUBLISHABLEVARIANTTYPE_$__GETINSTANCE$TVARDATA$$TOBJECT
_WRPR_VARIANTS_TPUBLISHABLEVARIANTTYPE_$_IVARINSTANCEREFERENCE_$_3_$__VARIANTS_TPUBLISHABLEVARIANTTYPE_$__GETINSTANCE$TVARDATA$$TOBJECT:
	subl	$16,%eax
	pushl	%ebx
	pushl	%eax
	movl	(%eax),%eax
	movl	176(%eax),%eax
	movl	%eax,4(%esp)
	popl	%eax
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 4
.globl _U_VARIANTS_EMPTYPARAM
.data
.zerofill __DATA, __common, _U_VARIANTS_EMPTYPARAM, 16,4




	.align 2
.globl _U_VARIANTS_VARDISPPROC
.data
.zerofill __DATA, __common, _U_VARIANTS_VARDISPPROC, 4,2




	.align 2
.globl _U_VARIANTS_CLEARANYPROC
.data
.zerofill __DATA, __common, _U_VARIANTS_CLEARANYPROC, 4,2




	.align 2
.globl _U_VARIANTS_CHANGEANYPROC
.data
.zerofill __DATA, __common, _U_VARIANTS_CHANGEANYPROC, 4,2




	.align 2
.globl _U_VARIANTS_REFANYPROC
.data
.zerofill __DATA, __common, _U_VARIANTS_REFANYPROC, 4,2




	.align 2
.globl _U_VARIANTS_INVALIDCUSTOMVARIANTTYPE
.data
.zerofill __DATA, __common, _U_VARIANTS_INVALIDCUSTOMVARIANTTYPE, 4,2




	.align 2
.globl _U_VARIANTS_CUSTOMVARIANTTYPES
.data
.zerofill __DATA, __common, _U_VARIANTS_CUSTOMVARIANTTYPES, 4,2




	.align 2
.globl _U_VARIANTS_CUSTOMVARIANTTYPELOCK
.data
.zerofill __DATA, __common, _U_VARIANTS_CUSTOMVARIANTTYPELOCK, 44,2




	.align 2
.globl _U_VARIANTS_CUSTOMVARIANTCURRTYPE
.data
.zerofill __DATA, __common, _U_VARIANTS_CUSTOMVARIANTCURRTYPE, 4,2




	.align 2
.globl _U_VARIANTS_PREVVARIANTMANAGER
.data
.zerofill __DATA, __common, _U_VARIANTS_PREVVARIANTMANAGER, 184,2




	.align 2
.globl _U_VARIANTS_I
.data
.zerofill __DATA, __common, _U_VARIANTS_I, 4,2



.const_data
	.align 2
.globl	_$VARIANTS$_Ld80
_$VARIANTS$_Ld80:
	.byte	26
	.ascii	"EVariantParamNotFoundError"

.const_data
	.align 2
.globl	_VMT_VARIANTS_EVARIANTPARAMNOTFOUNDERROR
_VMT_VARIANTS_EVARIANTPARAMNOTFOUNDERROR:
	.long	16,-16
	.long	_VMT_SYSUTILS_EVARIANTERROR
	.long	_$VARIANTS$_Ld80
	.long	0,0
	.long	_$VARIANTS$_Ld81
	.long	_RTTI_VARIANTS_EVARIANTPARAMNOTFOUNDERROR
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
.globl	_$VARIANTS$_Ld83
_$VARIANTS$_Ld83:
	.byte	22
	.ascii	"EVariantInvalidOpError"

.const_data
	.align 2
.globl	_VMT_VARIANTS_EVARIANTINVALIDOPERROR
_VMT_VARIANTS_EVARIANTINVALIDOPERROR:
	.long	16,-16
	.long	_VMT_SYSUTILS_EVARIANTERROR
	.long	_$VARIANTS$_Ld83
	.long	0,0
	.long	_$VARIANTS$_Ld84
	.long	_RTTI_VARIANTS_EVARIANTINVALIDOPERROR
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
.globl	_$VARIANTS$_Ld86
_$VARIANTS$_Ld86:
	.byte	21
	.ascii	"EVariantTypeCastError"

.const_data
	.align 2
.globl	_VMT_VARIANTS_EVARIANTTYPECASTERROR
_VMT_VARIANTS_EVARIANTTYPECASTERROR:
	.long	16,-16
	.long	_VMT_SYSUTILS_EVARIANTERROR
	.long	_$VARIANTS$_Ld86
	.long	0,0
	.long	_$VARIANTS$_Ld87
	.long	_RTTI_VARIANTS_EVARIANTTYPECASTERROR
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
.globl	_$VARIANTS$_Ld89
_$VARIANTS$_Ld89:
	.byte	21
	.ascii	"EVariantOverflowError"

.const_data
	.align 2
.globl	_VMT_VARIANTS_EVARIANTOVERFLOWERROR
_VMT_VARIANTS_EVARIANTOVERFLOWERROR:
	.long	16,-16
	.long	_VMT_SYSUTILS_EVARIANTERROR
	.long	_$VARIANTS$_Ld89
	.long	0,0
	.long	_$VARIANTS$_Ld90
	.long	_RTTI_VARIANTS_EVARIANTOVERFLOWERROR
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
.globl	_$VARIANTS$_Ld92
_$VARIANTS$_Ld92:
	.byte	23
	.ascii	"EVariantInvalidArgError"

.const_data
	.align 2
.globl	_VMT_VARIANTS_EVARIANTINVALIDARGERROR
_VMT_VARIANTS_EVARIANTINVALIDARGERROR:
	.long	16,-16
	.long	_VMT_SYSUTILS_EVARIANTERROR
	.long	_$VARIANTS$_Ld92
	.long	0,0
	.long	_$VARIANTS$_Ld93
	.long	_RTTI_VARIANTS_EVARIANTINVALIDARGERROR
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
.globl	_$VARIANTS$_Ld95
_$VARIANTS$_Ld95:
	.byte	23
	.ascii	"EVariantBadVarTypeError"

.const_data
	.align 2
.globl	_VMT_VARIANTS_EVARIANTBADVARTYPEERROR
_VMT_VARIANTS_EVARIANTBADVARTYPEERROR:
	.long	16,-16
	.long	_VMT_SYSUTILS_EVARIANTERROR
	.long	_$VARIANTS$_Ld95
	.long	0,0
	.long	_$VARIANTS$_Ld96
	.long	_RTTI_VARIANTS_EVARIANTBADVARTYPEERROR
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
.globl	_$VARIANTS$_Ld98
_$VARIANTS$_Ld98:
	.byte	21
	.ascii	"EVariantBadIndexError"

.const_data
	.align 2
.globl	_VMT_VARIANTS_EVARIANTBADINDEXERROR
_VMT_VARIANTS_EVARIANTBADINDEXERROR:
	.long	16,-16
	.long	_VMT_SYSUTILS_EVARIANTERROR
	.long	_$VARIANTS$_Ld98
	.long	0,0
	.long	_$VARIANTS$_Ld99
	.long	_RTTI_VARIANTS_EVARIANTBADINDEXERROR
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
.globl	_$VARIANTS$_Ld101
_$VARIANTS$_Ld101:
	.byte	24
	.ascii	"EVariantArrayLockedError"

.const_data
	.align 2
.globl	_VMT_VARIANTS_EVARIANTARRAYLOCKEDERROR
_VMT_VARIANTS_EVARIANTARRAYLOCKEDERROR:
	.long	16,-16
	.long	_VMT_SYSUTILS_EVARIANTERROR
	.long	_$VARIANTS$_Ld101
	.long	0,0
	.long	_$VARIANTS$_Ld102
	.long	_RTTI_VARIANTS_EVARIANTARRAYLOCKEDERROR
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
.globl	_$VARIANTS$_Ld104
_$VARIANTS$_Ld104:
	.byte	23
	.ascii	"EVariantNotAnArrayError"

.const_data
	.align 2
.globl	_VMT_VARIANTS_EVARIANTNOTANARRAYERROR
_VMT_VARIANTS_EVARIANTNOTANARRAYERROR:
	.long	16,-16
	.long	_VMT_SYSUTILS_EVARIANTERROR
	.long	_$VARIANTS$_Ld104
	.long	0,0
	.long	_$VARIANTS$_Ld105
	.long	_RTTI_VARIANTS_EVARIANTNOTANARRAYERROR
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
.globl	_$VARIANTS$_Ld107
_$VARIANTS$_Ld107:
	.byte	24
	.ascii	"EVariantArrayCreateError"

.const_data
	.align 2
.globl	_VMT_VARIANTS_EVARIANTARRAYCREATEERROR
_VMT_VARIANTS_EVARIANTARRAYCREATEERROR:
	.long	16,-16
	.long	_VMT_SYSUTILS_EVARIANTERROR
	.long	_$VARIANTS$_Ld107
	.long	0,0
	.long	_$VARIANTS$_Ld108
	.long	_RTTI_VARIANTS_EVARIANTARRAYCREATEERROR
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
.globl	_$VARIANTS$_Ld110
_$VARIANTS$_Ld110:
	.byte	20
	.ascii	"EVariantNotImplError"

.const_data
	.align 2
.globl	_VMT_VARIANTS_EVARIANTNOTIMPLERROR
_VMT_VARIANTS_EVARIANTNOTIMPLERROR:
	.long	16,-16
	.long	_VMT_SYSUTILS_EVARIANTERROR
	.long	_$VARIANTS$_Ld110
	.long	0,0
	.long	_$VARIANTS$_Ld111
	.long	_RTTI_VARIANTS_EVARIANTNOTIMPLERROR
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
.globl	_$VARIANTS$_Ld113
_$VARIANTS$_Ld113:
	.byte	24
	.ascii	"EVariantOutOfMemoryError"

.const_data
	.align 2
.globl	_VMT_VARIANTS_EVARIANTOUTOFMEMORYERROR
_VMT_VARIANTS_EVARIANTOUTOFMEMORYERROR:
	.long	16,-16
	.long	_VMT_SYSUTILS_EVARIANTERROR
	.long	_$VARIANTS$_Ld113
	.long	0,0
	.long	_$VARIANTS$_Ld114
	.long	_RTTI_VARIANTS_EVARIANTOUTOFMEMORYERROR
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
.globl	_$VARIANTS$_Ld116
_$VARIANTS$_Ld116:
	.byte	23
	.ascii	"EVariantUnexpectedError"

.const_data
	.align 2
.globl	_VMT_VARIANTS_EVARIANTUNEXPECTEDERROR
_VMT_VARIANTS_EVARIANTUNEXPECTEDERROR:
	.long	16,-16
	.long	_VMT_SYSUTILS_EVARIANTERROR
	.long	_$VARIANTS$_Ld116
	.long	0,0
	.long	_$VARIANTS$_Ld117
	.long	_RTTI_VARIANTS_EVARIANTUNEXPECTEDERROR
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
.globl	_$VARIANTS$_Ld119
_$VARIANTS$_Ld119:
	.byte	21
	.ascii	"EVariantDispatchError"

.const_data
	.align 2
.globl	_VMT_VARIANTS_EVARIANTDISPATCHERROR
_VMT_VARIANTS_EVARIANTDISPATCHERROR:
	.long	16,-16
	.long	_VMT_SYSUTILS_EVARIANTERROR
	.long	_$VARIANTS$_Ld119
	.long	0,0
	.long	_$VARIANTS$_Ld120
	.long	_RTTI_VARIANTS_EVARIANTDISPATCHERROR
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
.globl	_$VARIANTS$_Ld122
_$VARIANTS$_Ld122:
	.byte	23
	.ascii	"EVariantRangeCheckError"

.const_data
	.align 2
.globl	_VMT_VARIANTS_EVARIANTRANGECHECKERROR
_VMT_VARIANTS_EVARIANTRANGECHECKERROR:
	.long	16,-16
	.long	_VMT_VARIANTS_EVARIANTOVERFLOWERROR
	.long	_$VARIANTS$_Ld122
	.long	0,0
	.long	_$VARIANTS$_Ld123
	.long	_RTTI_VARIANTS_EVARIANTRANGECHECKERROR
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
.globl	_$VARIANTS$_Ld125
_$VARIANTS$_Ld125:
	.byte	26
	.ascii	"EVariantInvalidNullOpError"

.const_data
	.align 2
.globl	_VMT_VARIANTS_EVARIANTINVALIDNULLOPERROR
_VMT_VARIANTS_EVARIANTINVALIDNULLOPERROR:
	.long	16,-16
	.long	_VMT_VARIANTS_EVARIANTINVALIDOPERROR
	.long	_$VARIANTS$_Ld125
	.long	0,0
	.long	_$VARIANTS$_Ld126
	.long	_RTTI_VARIANTS_EVARIANTINVALIDNULLOPERROR
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
	.align 2
.globl	_$VARIANTS$_Ld129
_$VARIANTS$_Ld129:
	.long	1
	.long	_$VARIANTS$_Ld130
	.long	_VTBL_VARIANTS_TCUSTOMVARIANTTYPE_$_IUNKNOWN
	.long	8
	.long	_$VARIANTS$_Ld131
	.long	0

.data
	.align 2
.globl	_VTBL_VARIANTS_TCUSTOMVARIANTTYPE_$_IUNKNOWN
_VTBL_VARIANTS_TCUSTOMVARIANTTYPE_$_IUNKNOWN:
	.long	_WRPR_VARIANTS_TCUSTOMVARIANTTYPE_$_IUNKNOWN_$_0_$__VARIANTS_TCUSTOMVARIANTTYPE_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	_WRPR_VARIANTS_TCUSTOMVARIANTTYPE_$_IUNKNOWN_$_1_$__VARIANTS_TCUSTOMVARIANTTYPE_$___ADDREF$$LONGINT
	.long	_WRPR_VARIANTS_TCUSTOMVARIANTTYPE_$_IUNKNOWN_$_2_$__VARIANTS_TCUSTOMVARIANTTYPE_$___RELEASE$$LONGINT
	.align 2
.globl	_$VARIANTS$_Ld130
_$VARIANTS$_Ld130:
	.long	0
	.short	0,0
	.byte	192,0,0,0,0,0,0,70
	.align 2
.globl	_$VARIANTS$_Ld131
_$VARIANTS$_Ld131:
	.byte	38
	.ascii	"{00000000-0000-0000-C000-000000000046}"
.globl	_$VARIANTS$_Ld128
_$VARIANTS$_Ld128:
	.byte	18
	.ascii	"TCustomVariantType"

.const_data
	.align 2
.globl	_VMT_VARIANTS_TCUSTOMVARIANTTYPE
_VMT_VARIANTS_TCUSTOMVARIANTTYPE:
	.long	12,-12
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$VARIANTS$_Ld128
	.long	0,0
	.long	_$VARIANTS$_Ld132
	.long	_RTTI_VARIANTS_TCUSTOMVARIANTTYPE
	.long	0,0
	.long	_$VARIANTS$_Ld129
	.long	0
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__DESTROY
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
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__LEFTPROMOTION$TVARDATA$TVAROP$WORD$$BOOLEAN
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__RIGHTPROMOTION$TVARDATA$TVAROP$WORD$$BOOLEAN
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__OLEPROMOTION$TVARDATA$WORD$$BOOLEAN
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__DISPINVOKE$PVARDATA$TVARDATA$PCALLDESC$POINTER
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__ISCLEAR$TVARDATA$$BOOLEAN
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__CAST$TVARDATA$TVARDATA
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__CASTTO$TVARDATA$TVARDATA$WORD
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__CASTTOOLE$TVARDATA$TVARDATA
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__BINARYOP$TVARDATA$TVARDATA$TVAROP
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__UNARYOP$TVARDATA$TVAROP
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__COMPAREOP$TVARDATA$TVARDATA$TVAROP$$BOOLEAN
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__COMPARE$TVARDATA$TVARDATA$TVARCOMPARERESULT
	.long	0

.const_data
	.align 2
.globl	_IID_VARIANTS_IVARINVOKEABLE
_IID_VARIANTS_IVARINVOKEABLE:
	.long	481713234
	.short	48075,16806
	.byte	158,88,127,185,22,190,235,45

.const_data
.globl	_IIDSTR_VARIANTS_IVARINVOKEABLE
_IIDSTR_VARIANTS_IVARINVOKEABLE:
	.byte	38
	.ascii	"{1CB65C52-BBCB-41A6-9E58-7FB916BEEB2D}"

.const_data
	.align 2
	.align 2
.globl	_$VARIANTS$_Ld135
_$VARIANTS$_Ld135:
	.long	1
	.long	_$VARIANTS$_Ld136
	.long	_VTBL_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE
	.long	12
	.long	_$VARIANTS$_Ld137
	.long	0

.data
	.align 2
.globl	_VTBL_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE
_VTBL_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE:
	.long	_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_0_$__VARIANTS_TCUSTOMVARIANTTYPE_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_1_$__VARIANTS_TCUSTOMVARIANTTYPE_$___ADDREF$$LONGINT
	.long	_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_2_$__VARIANTS_TCUSTOMVARIANTTYPE_$___RELEASE$$LONGINT
	.long	_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_3_$__VARIANTS_TINVOKEABLEVARIANTTYPE_$__DOFUNCTION$TVARDATA$TVARDATA$ANSISTRING$TVARDATAARRAY$$BOOLEAN
	.long	_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_4_$__VARIANTS_TINVOKEABLEVARIANTTYPE_$__DOPROCEDURE$TVARDATA$ANSISTRING$TVARDATAARRAY$$BOOLEAN
	.long	_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_5_$__VARIANTS_TINVOKEABLEVARIANTTYPE_$__GETPROPERTY$TVARDATA$TVARDATA$ANSISTRING$$BOOLEAN
	.long	_WRPR_VARIANTS_TINVOKEABLEVARIANTTYPE_$_IVARINVOKEABLE_$_6_$__VARIANTS_TINVOKEABLEVARIANTTYPE_$__SETPROPERTY$TVARDATA$ANSISTRING$TVARDATA$$BOOLEAN
	.align 2
.globl	_$VARIANTS$_Ld136
_$VARIANTS$_Ld136:
	.long	481713234
	.short	48075,16806
	.byte	158,88,127,185,22,190,235,45
	.align 2
.globl	_$VARIANTS$_Ld137
_$VARIANTS$_Ld137:
	.byte	38
	.ascii	"{1CB65C52-BBCB-41A6-9E58-7FB916BEEB2D}"
.globl	_$VARIANTS$_Ld134
_$VARIANTS$_Ld134:
	.byte	22
	.ascii	"TInvokeableVariantType"

.const_data
	.align 2
.globl	_VMT_VARIANTS_TINVOKEABLEVARIANTTYPE
_VMT_VARIANTS_TINVOKEABLEVARIANTTYPE:
	.long	16,-16
	.long	_VMT_VARIANTS_TCUSTOMVARIANTTYPE
	.long	_$VARIANTS$_Ld134
	.long	0,0
	.long	_$VARIANTS$_Ld138
	.long	_RTTI_VARIANTS_TINVOKEABLEVARIANTTYPE
	.long	0,0
	.long	_$VARIANTS$_Ld135
	.long	0
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__DESTROY
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
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__LEFTPROMOTION$TVARDATA$TVAROP$WORD$$BOOLEAN
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__RIGHTPROMOTION$TVARDATA$TVAROP$WORD$$BOOLEAN
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__OLEPROMOTION$TVARDATA$WORD$$BOOLEAN
	.long	_VARIANTS_TINVOKEABLEVARIANTTYPE_$__DISPINVOKE$PVARDATA$TVARDATA$PCALLDESC$POINTER
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__ISCLEAR$TVARDATA$$BOOLEAN
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__CAST$TVARDATA$TVARDATA
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__CASTTO$TVARDATA$TVARDATA$WORD
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__CASTTOOLE$TVARDATA$TVARDATA
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__BINARYOP$TVARDATA$TVARDATA$TVAROP
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__UNARYOP$TVARDATA$TVAROP
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__COMPAREOP$TVARDATA$TVARDATA$TVAROP$$BOOLEAN
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__COMPARE$TVARDATA$TVARDATA$TVARCOMPARERESULT
	.long	_VARIANTS_TINVOKEABLEVARIANTTYPE_$__DOFUNCTION$TVARDATA$TVARDATA$ANSISTRING$TVARDATAARRAY$$BOOLEAN
	.long	_VARIANTS_TINVOKEABLEVARIANTTYPE_$__DOPROCEDURE$TVARDATA$ANSISTRING$TVARDATAARRAY$$BOOLEAN
	.long	_VARIANTS_TINVOKEABLEVARIANTTYPE_$__GETPROPERTY$TVARDATA$TVARDATA$ANSISTRING$$BOOLEAN
	.long	_VARIANTS_TINVOKEABLEVARIANTTYPE_$__SETPROPERTY$TVARDATA$ANSISTRING$TVARDATA$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_IID_VARIANTS_IVARINSTANCEREFERENCE
_IID_VARIANTS_IVARINSTANCEREFERENCE:
	.long	1545037826
	.short	16265,17037
	.byte	133,14,159,84,245,12,34,147

.const_data
.globl	_IIDSTR_VARIANTS_IVARINSTANCEREFERENCE
_IIDSTR_VARIANTS_IVARINSTANCEREFERENCE:
	.byte	38
	.ascii	"{5C176802-3F89-428D-850E-9F54F50C2293}"

.const_data
	.align 2
	.align 2
.globl	_$VARIANTS$_Ld141
_$VARIANTS$_Ld141:
	.long	1
	.long	_$VARIANTS$_Ld142
	.long	_VTBL_VARIANTS_TPUBLISHABLEVARIANTTYPE_$_IVARINSTANCEREFERENCE
	.long	16
	.long	_$VARIANTS$_Ld143
	.long	0

.data
	.align 2
.globl	_VTBL_VARIANTS_TPUBLISHABLEVARIANTTYPE_$_IVARINSTANCEREFERENCE
_VTBL_VARIANTS_TPUBLISHABLEVARIANTTYPE_$_IVARINSTANCEREFERENCE:
	.long	_WRPR_VARIANTS_TPUBLISHABLEVARIANTTYPE_$_IVARINSTANCEREFERENCE_$_0_$__VARIANTS_TCUSTOMVARIANTTYPE_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	_WRPR_VARIANTS_TPUBLISHABLEVARIANTTYPE_$_IVARINSTANCEREFERENCE_$_1_$__VARIANTS_TCUSTOMVARIANTTYPE_$___ADDREF$$LONGINT
	.long	_WRPR_VARIANTS_TPUBLISHABLEVARIANTTYPE_$_IVARINSTANCEREFERENCE_$_2_$__VARIANTS_TCUSTOMVARIANTTYPE_$___RELEASE$$LONGINT
	.long	_WRPR_VARIANTS_TPUBLISHABLEVARIANTTYPE_$_IVARINSTANCEREFERENCE_$_3_$__VARIANTS_TPUBLISHABLEVARIANTTYPE_$__GETINSTANCE$TVARDATA$$TOBJECT
	.align 2
.globl	_$VARIANTS$_Ld142
_$VARIANTS$_Ld142:
	.long	1545037826
	.short	16265,17037
	.byte	133,14,159,84,245,12,34,147
	.align 2
.globl	_$VARIANTS$_Ld143
_$VARIANTS$_Ld143:
	.byte	38
	.ascii	"{5C176802-3F89-428D-850E-9F54F50C2293}"
.globl	_$VARIANTS$_Ld140
_$VARIANTS$_Ld140:
	.byte	23
	.ascii	"TPublishableVariantType"

.const_data
	.align 2
.globl	_VMT_VARIANTS_TPUBLISHABLEVARIANTTYPE
_VMT_VARIANTS_TPUBLISHABLEVARIANTTYPE:
	.long	20,-20
	.long	_VMT_VARIANTS_TINVOKEABLEVARIANTTYPE
	.long	_$VARIANTS$_Ld140
	.long	0,0
	.long	_$VARIANTS$_Ld144
	.long	_RTTI_VARIANTS_TPUBLISHABLEVARIANTTYPE
	.long	0,0
	.long	_$VARIANTS$_Ld141
	.long	0
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__DESTROY
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
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__LEFTPROMOTION$TVARDATA$TVAROP$WORD$$BOOLEAN
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__RIGHTPROMOTION$TVARDATA$TVAROP$WORD$$BOOLEAN
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__OLEPROMOTION$TVARDATA$WORD$$BOOLEAN
	.long	_VARIANTS_TINVOKEABLEVARIANTTYPE_$__DISPINVOKE$PVARDATA$TVARDATA$PCALLDESC$POINTER
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__ISCLEAR$TVARDATA$$BOOLEAN
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__CAST$TVARDATA$TVARDATA
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__CASTTO$TVARDATA$TVARDATA$WORD
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__CASTTOOLE$TVARDATA$TVARDATA
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__BINARYOP$TVARDATA$TVARDATA$TVAROP
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__UNARYOP$TVARDATA$TVAROP
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__COMPAREOP$TVARDATA$TVARDATA$TVAROP$$BOOLEAN
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__COMPARE$TVARDATA$TVARDATA$TVARCOMPARERESULT
	.long	_VARIANTS_TINVOKEABLEVARIANTTYPE_$__DOFUNCTION$TVARDATA$TVARDATA$ANSISTRING$TVARDATAARRAY$$BOOLEAN
	.long	_VARIANTS_TINVOKEABLEVARIANTTYPE_$__DOPROCEDURE$TVARDATA$ANSISTRING$TVARDATAARRAY$$BOOLEAN
	.long	_VARIANTS_TPUBLISHABLEVARIANTTYPE_$__GETPROPERTY$TVARDATA$TVARDATA$ANSISTRING$$BOOLEAN
	.long	_VARIANTS_TPUBLISHABLEVARIANTTYPE_$__SETPROPERTY$TVARDATA$ANSISTRING$TVARDATA$$BOOLEAN
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_VMT_VARIANTS_TVARIANTARRAYITERATOR
_VMT_VARIANTS_TVARIANTARRAYITERATOR:
	.long	16,-16,0,0

.const_data
	.align 2
.globl	_VMT_VARIANTS_TDYNARRAYITER
_VMT_VARIANTS_TDYNARRAYITER:
	.long	28,-28,0,0

.data
	.align 2
.globl	_THREADVARLIST_VARIANTS
_THREADVARLIST_VARIANTS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.const_data
	.align 2
.globl	_$VARIANTS$_Ld2
_$VARIANTS$_Ld2:
	.short	0,1
	.long	0,-1,1
.reference _$VARIANTS$_Ld1
.globl	_$VARIANTS$_Ld1
_$VARIANTS$_Ld1:
.reference _$VARIANTS$_Ld2
	.ascii	"+\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld4
_$VARIANTS$_Ld4:
	.short	0,1
	.long	0,-1,1
.reference _$VARIANTS$_Ld3
.globl	_$VARIANTS$_Ld3
_$VARIANTS$_Ld3:
.reference _$VARIANTS$_Ld4
	.ascii	"-\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld6
_$VARIANTS$_Ld6:
	.short	0,1
	.long	0,-1,1
.reference _$VARIANTS$_Ld5
.globl	_$VARIANTS$_Ld5
_$VARIANTS$_Ld5:
.reference _$VARIANTS$_Ld6
	.ascii	"*\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld8
_$VARIANTS$_Ld8:
	.short	0,1
	.long	0,-1,1
.reference _$VARIANTS$_Ld7
.globl	_$VARIANTS$_Ld7
_$VARIANTS$_Ld7:
.reference _$VARIANTS$_Ld8
	.ascii	"/\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld10
_$VARIANTS$_Ld10:
	.short	0,1
	.long	0,-1,3
.reference _$VARIANTS$_Ld9
.globl	_$VARIANTS$_Ld9
_$VARIANTS$_Ld9:
.reference _$VARIANTS$_Ld10
	.ascii	"div\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld12
_$VARIANTS$_Ld12:
	.short	0,1
	.long	0,-1,3
.reference _$VARIANTS$_Ld11
.globl	_$VARIANTS$_Ld11
_$VARIANTS$_Ld11:
.reference _$VARIANTS$_Ld12
	.ascii	"mod\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld14
_$VARIANTS$_Ld14:
	.short	0,1
	.long	0,-1,3
.reference _$VARIANTS$_Ld13
.globl	_$VARIANTS$_Ld13
_$VARIANTS$_Ld13:
.reference _$VARIANTS$_Ld14
	.ascii	"shl\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld16
_$VARIANTS$_Ld16:
	.short	0,1
	.long	0,-1,3
.reference _$VARIANTS$_Ld15
.globl	_$VARIANTS$_Ld15
_$VARIANTS$_Ld15:
.reference _$VARIANTS$_Ld16
	.ascii	"shr\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld18
_$VARIANTS$_Ld18:
	.short	0,1
	.long	0,-1,3
.reference _$VARIANTS$_Ld17
.globl	_$VARIANTS$_Ld17
_$VARIANTS$_Ld17:
.reference _$VARIANTS$_Ld18
	.ascii	"and\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld20
_$VARIANTS$_Ld20:
	.short	0,1
	.long	0,-1,2
.reference _$VARIANTS$_Ld19
.globl	_$VARIANTS$_Ld19
_$VARIANTS$_Ld19:
.reference _$VARIANTS$_Ld20
	.ascii	"or\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld22
_$VARIANTS$_Ld22:
	.short	0,1
	.long	0,-1,3
.reference _$VARIANTS$_Ld21
.globl	_$VARIANTS$_Ld21
_$VARIANTS$_Ld21:
.reference _$VARIANTS$_Ld22
	.ascii	"xor\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld24
_$VARIANTS$_Ld24:
	.short	0,1
	.long	0,-1,1
.reference _$VARIANTS$_Ld23
.globl	_$VARIANTS$_Ld23
_$VARIANTS$_Ld23:
.reference _$VARIANTS$_Ld24
	.ascii	"-\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld26
_$VARIANTS$_Ld26:
	.short	0,1
	.long	0,-1,3
.reference _$VARIANTS$_Ld25
.globl	_$VARIANTS$_Ld25
_$VARIANTS$_Ld25:
.reference _$VARIANTS$_Ld26
	.ascii	"not\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld28
_$VARIANTS$_Ld28:
	.short	0,1
	.long	0,-1,1
.reference _$VARIANTS$_Ld27
.globl	_$VARIANTS$_Ld27
_$VARIANTS$_Ld27:
.reference _$VARIANTS$_Ld28
	.ascii	"=\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld30
_$VARIANTS$_Ld30:
	.short	0,1
	.long	0,-1,2
.reference _$VARIANTS$_Ld29
.globl	_$VARIANTS$_Ld29
_$VARIANTS$_Ld29:
.reference _$VARIANTS$_Ld30
	.ascii	"<>\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld32
_$VARIANTS$_Ld32:
	.short	0,1
	.long	0,-1,1
.reference _$VARIANTS$_Ld31
.globl	_$VARIANTS$_Ld31
_$VARIANTS$_Ld31:
.reference _$VARIANTS$_Ld32
	.ascii	"<\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld34
_$VARIANTS$_Ld34:
	.short	0,1
	.long	0,-1,2
.reference _$VARIANTS$_Ld33
.globl	_$VARIANTS$_Ld33
_$VARIANTS$_Ld33:
.reference _$VARIANTS$_Ld34
	.ascii	"<=\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld36
_$VARIANTS$_Ld36:
	.short	0,1
	.long	0,-1,1
.reference _$VARIANTS$_Ld35
.globl	_$VARIANTS$_Ld35
_$VARIANTS$_Ld35:
.reference _$VARIANTS$_Ld36
	.ascii	">\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld38
_$VARIANTS$_Ld38:
	.short	0,1
	.long	0,-1,2
.reference _$VARIANTS$_Ld37
.globl	_$VARIANTS$_Ld37
_$VARIANTS$_Ld37:
.reference _$VARIANTS$_Ld38
	.ascii	">=\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld40
_$VARIANTS$_Ld40:
	.short	0,1
	.long	0,-1,2
.reference _$VARIANTS$_Ld39
.globl	_$VARIANTS$_Ld39
_$VARIANTS$_Ld39:
.reference _$VARIANTS$_Ld40
	.ascii	"**\000"

.data
	.align 2
.globl	_$VARIANTS$_Ld147
_$VARIANTS$_Ld147:
	.short	0,1
	.long	0,-1,8
.reference _$VARIANTS$_Ld146
.globl	_$VARIANTS$_Ld146
_$VARIANTS$_Ld146:
.reference _$VARIANTS$_Ld147
	.ascii	"VARIANTS\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld149
_$VARIANTS$_Ld149:
	.short	0,1
	.long	0,-1,16
.reference _$VARIANTS$_Ld148
.globl	_$VARIANTS$_Ld148
_$VARIANTS$_Ld148:
.reference _$VARIANTS$_Ld149
	.ascii	"Variant is empty\000"
	.align 2
.globl	_$VARIANTS$_Ld151
_$VARIANTS$_Ld151:
	.short	0,1
	.long	0,-1,23
.reference _$VARIANTS$_Ld150
.globl	_$VARIANTS$_Ld150
_$VARIANTS$_Ld150:
.reference _$VARIANTS$_Ld151
	.ascii	"variants.serrvarisempty\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld153
_$VARIANTS$_Ld153:
	.short	0,1
	.long	0,-1,25
.reference _$VARIANTS$_Ld152
.globl	_$VARIANTS$_Ld152
_$VARIANTS$_Ld152:
.reference _$VARIANTS$_Ld153
	.ascii	"Invalid Integer range: %d\000"
	.align 2
.globl	_$VARIANTS$_Ld155
_$VARIANTS$_Ld155:
	.short	0,1
	.long	0,-1,32
.reference _$VARIANTS$_Ld154
.globl	_$VARIANTS$_Ld154
_$VARIANTS$_Ld154:
.reference _$VARIANTS$_Ld155
	.ascii	"variants.serrinvalidintegerrange\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_VARIANTS_NULLEQUALITYRULE
_TC_VARIANTS_NULLEQUALITYRULE:
	.long	2

.data
	.align 2
.globl	_TC_VARIANTS_NULLMAGNITUDERULE
_TC_VARIANTS_NULLMAGNITUDERULE:
	.long	2

.data
.globl	_TC_VARIANTS_NULLSTRICTCONVERT
_TC_VARIANTS_NULLSTRICTCONVERT:
	.byte	1

.data
	.align 2
.globl	_TC_VARIANTS_NULLASSTRINGVALUE
_TC_VARIANTS_NULLASSTRINGVALUE:
	.long	0

.data
.globl	_TC_VARIANTS_PACKVARCREATION
_TC_VARIANTS_PACKVARCREATION:
	.byte	1

.data
.globl	_TC_VARIANTS_OLEVARIANTINT64ASDOUBLE
_TC_VARIANTS_OLEVARIANTINT64ASDOUBLE:
	.byte	0

.data
	.align 2
.globl	_TC_VARIANTS_VAROPASTEXT
_TC_VARIANTS_VAROPASTEXT:
	.long	_$VARIANTS$_Ld1
	.long	_$VARIANTS$_Ld3
	.long	_$VARIANTS$_Ld5
	.long	_$VARIANTS$_Ld7
	.long	_$VARIANTS$_Ld9
	.long	_$VARIANTS$_Ld11
	.long	_$VARIANTS$_Ld13
	.long	_$VARIANTS$_Ld15
	.long	_$VARIANTS$_Ld17
	.long	_$VARIANTS$_Ld19
	.long	_$VARIANTS$_Ld21
	.long	0
	.long	_$VARIANTS$_Ld23
	.long	_$VARIANTS$_Ld25
	.long	_$VARIANTS$_Ld27
	.long	_$VARIANTS$_Ld29
	.long	_$VARIANTS$_Ld31
	.long	_$VARIANTS$_Ld33
	.long	_$VARIANTS$_Ld35
	.long	_$VARIANTS$_Ld37
	.long	_$VARIANTS$_Ld39

.const_data
	.align 2
.globl	_$VARIANTS$_Ld42
_$VARIANTS$_Ld42:
	.short	0,1
	.long	0,-1,28
.reference _$VARIANTS$_Ld41
.globl	_$VARIANTS$_Ld41
_$VARIANTS$_Ld41:
.reference _$VARIANTS$_Ld42
	.ascii	"Method %s not yet supported.\000"
	.align 3
.globl	_$VARIANTS$_Ld43
_$VARIANTS$_Ld43:
	.long	132096
	.short	0,0
	.byte	192,0,0,0,0,0,0,70
	.align 3
.globl	_$VARIANTS$_Ld44
_$VARIANTS$_Ld44:
	.long	132096
	.short	0,0
	.byte	192,0,0,0,0,0,0,70

.data
	.align 2
.globl	_TC_VARIANTS_VARTYPETOCOMMONTYPE
_TC_VARIANTS_VARTYPETOCOMMONTYPE:
	.long	0,9,3,3,5,5,7,6,10,2,2,4,2,2,2,2,3,3,3,8,8,8

.data
	.align 2
.globl	_TC_VARIANTS_FINDCMPCOMMONTYPE
_TC_VARIANTS_FINDCMPCOMMONTYPE:
	.long	0,0,2,0,0,0,0,0,0,0,0,0,0,1,2,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,0,1,2,3,4,5,6,7,8,9,5,5,0,1,2,3,4,5,6,7,8,9,10,11,0,1,2,5,5,5,6,7,5
	.long	9,5,5,0,1,2,6,6,6,6,6,6,9,6,6,0,1,2,7,7,7,6,7,7,9,7,7,0,1,2,8,8,5,6,7,8,9,5,5,0,1,2,9,9,9,9,9,9,9,9,9,0,1,2,5,10,5,6,7,5,9,10,10,0,1,2,5,11
	.long	5,6,7,5,9,10,11

.data
.globl	_TC_VARIANTS_DOVARCMPNULL$crcE32A7B0D_RESULTMAP
_TC_VARIANTS_DOVARCMPNULL$crcE32A7B0D_RESULTMAP:
	.byte	255,0,0,1,0,255,0,255,255,255,1,1

.data
	.align 2
.globl	_TC_VARIANTS_FINDOPCOMMONTYPE
_TC_VARIANTS_FINDOPCOMMONTYPE:
	.long	0,1,2,0,0,0,0,0,0,0,0,0,1,1,2,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,0,1,2,3,4,5,6,7,8,9,5,5,0,1,2,3,4,5,6,7,8,9,4,4,0,1,2,5,5,5,6,7,5,9,5
	.long	5,0,1,2,6,6,6,6,6,6,9,6,6,0,1,2,7,7,7,6,7,7,9,7,7,0,1,2,8,8,5,6,7,8,9,5,5,0,1,2,9,9,9,9,9,9,9,9,9,0,1,2,5,4,5,6,7,5,9,10,10,0,1,2,5,4,5,6,7
	.long	5,9,10,11

.const
	.align 2
.globl	_$VARIANTS$_Ld45
_$VARIANTS$_Ld45:
	.byte	16,39,0,0,0,0,0,0

.const
	.align 2
.globl	_$VARIANTS$_Ld46
_$VARIANTS$_Ld46:
	.byte	0,0,0,0,0,136,195,64

.const
	.align 3
.globl	_$VARIANTS$_Ld47
_$VARIANTS$_Ld47:
	.byte	0,0,0,0,0,0,64,156,12,64

.data
	.align 1
.globl	_TC_VARIANTS_SYSVARNEG$VARIANT_BOOLMAP
_TC_VARIANTS_SYSVARNEG$VARIANT_BOOLMAP:
	.short	0,65535

.data
	.align 2
.globl	_TC_VARIANTS_SYSVARIANTMANAGER
_TC_VARIANTS_SYSVARIANTMANAGER:
	.long	_VARIANTS_SYSVARTOINT$VARIANT$$LONGINT
	.long	_VARIANTS_SYSVARTOINT64$VARIANT$$INT64
	.long	_VARIANTS_SYSVARTOWORD64$VARIANT$$QWORD
	.long	_VARIANTS_SYSVARTOBOOL$VARIANT$$BOOLEAN
	.long	_VARIANTS_SYSVARTOREAL$VARIANT$$EXTENDED
	.long	_VARIANTS_SYSVARTOTDATETIME$VARIANT$$TDATETIME
	.long	_VARIANTS_SYSVARTOCURR$VARIANT$$CURRENCY
	.long	_VARIANTS_SYSVARTOPSTR$formal$VARIANT
	.long	_VARIANTS_SYSVARTOLSTR$ANSISTRING$VARIANT
	.long	_VARIANTS_SYSVARTOWSTR$WIDESTRING$VARIANT
	.long	_VARIANTS_SYSVARTOINTF$IUNKNOWN$VARIANT
	.long	_VARIANTS_SYSVARTODISP$IDISPATCH$VARIANT
	.long	_VARIANTS_SYSVARTODYNARRAY$POINTER$VARIANT$POINTER
	.long	_VARIANTS_SYSVARFROMBOOL$VARIANT$BOOLEAN
	.long	_VARIANTS_SYSVARFROMINT$VARIANT$LONGINT$LONGINT
	.long	_VARIANTS_SYSVARFROMINT64$VARIANT$INT64
	.long	_VARIANTS_SYSVARFROMWORD64$VARIANT$QWORD
	.long	_VARIANTS_SYSVARFROMREAL$VARIANT$EXTENDED
	.long	_VARIANTS_SYSVARFROMTDATETIME$VARIANT$TDATETIME
	.long	_VARIANTS_SYSVARFROMCURR$VARIANT$CURRENCY
	.long	_VARIANTS_SYSVARFROMPSTR$VARIANT$SHORTSTRING
	.long	_VARIANTS_SYSVARFROMLSTR$VARIANT$ANSISTRING
	.long	_VARIANTS_SYSVARFROMWSTR$VARIANT$WIDESTRING
	.long	_VARIANTS_SYSVARFROMINTF$VARIANT$IUNKNOWN
	.long	_VARIANTS_SYSVARFROMDISP$VARIANT$IDISPATCH
	.long	_VARIANTS_SYSVARFROMDYNARRAY$VARIANT$POINTER$POINTER
	.long	_VARIANTS_SYSOLEVARFROMPSTR$OLEVARIANT$SHORTSTRING
	.long	_VARIANTS_SYSOLEVARFROMLSTR$OLEVARIANT$ANSISTRING
	.long	_VARIANTS_SYSOLEVARFROMVAR$OLEVARIANT$VARIANT
	.long	_VARIANTS_SYSOLEVARFROMINT$OLEVARIANT$LONGINT$SHORTINT
	.long	_VARIANTS_SYSVAROP$VARIANT$VARIANT$TVAROP
	.long	_VARIANTS_SYSCMPOP$VARIANT$VARIANT$TVAROP$$BOOLEAN
	.long	_VARIANTS_SYSVARNEG$VARIANT
	.long	_VARIANTS_SYSVARNOT$VARIANT
	.long	_VARIANTS_SYSVARINIT$VARIANT
	.long	_VARIANTS_SYSVARCLEAR$VARIANT
	.long	_VARIANTS_SYSVARADDREF$VARIANT
	.long	_VARIANTS_SYSVARCOPY$VARIANT$VARIANT
	.long	_VARIANTS_SYSVARCAST$VARIANT$VARIANT$LONGINT
	.long	_VARIANTS_SYSVARCASTOLE$VARIANT$VARIANT$LONGINT
	.long	_VARIANTS_SYSDISPINVOKE$PVARDATA$TVARDATA$PCALLDESC$POINTER
	.long	_VARIANTS_SYSVARARRAYREDIM$VARIANT$LONGINT
	.long	_VARIANTS_SYSVARARRAYGET$VARIANT$LONGINT$PLONGINT$$VARIANT
	.long	_VARIANTS_SYSVARARRAYPUT$VARIANT$VARIANT$LONGINT$PLONGINT
	.long	_VARIANTS_SYSWRITEVARIANT$TEXT$VARIANT$LONGINT$$POINTER
	.long	_VARIANTS_SYSWRITE0VARIANT$TEXT$VARIANT$$POINTER

.const_data
	.align 2
.globl	_$VARIANTS$_Ld49
_$VARIANTS$_Ld49:
	.short	0,1
	.long	0,-1,12
.reference _$VARIANTS$_Ld48
.globl	_$VARIANTS$_Ld48
_$VARIANTS$_Ld48:
.reference _$VARIANTS$_Ld49
	.ascii	"VarCopyNoInd\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld51
_$VARIANTS$_Ld51:
	.short	0,1
	.long	0,-1,33
.reference _$VARIANTS$_Ld50
.globl	_$VARIANTS$_Ld50
_$VARIANTS$_Ld50:
.reference _$VARIANTS$_Ld51
	.ascii	"TCustomVariantType.SimplisticCopy\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld53
_$VARIANTS$_Ld53:
	.short	0,1
	.long	0,-1,32
.reference _$VARIANTS$_Ld52
.globl	_$VARIANTS$_Ld52
_$VARIANTS$_Ld52:
.reference _$VARIANTS$_Ld53
	.ascii	"TCustomVariantType.LeftPromotion\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld55
_$VARIANTS$_Ld55:
	.short	0,1
	.long	0,-1,33
.reference _$VARIANTS$_Ld54
.globl	_$VARIANTS$_Ld54
_$VARIANTS$_Ld54:
.reference _$VARIANTS$_Ld55
	.ascii	"TCustomVariantType.RightPromotion\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld57
_$VARIANTS$_Ld57:
	.short	0,1
	.long	0,-1,31
.reference _$VARIANTS$_Ld56
.globl	_$VARIANTS$_Ld56
_$VARIANTS$_Ld56:
.reference _$VARIANTS$_Ld57
	.ascii	"TCustomVariantType.OlePromotion\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld59
_$VARIANTS$_Ld59:
	.short	0,1
	.long	0,-1,28
.reference _$VARIANTS$_Ld58
.globl	_$VARIANTS$_Ld58
_$VARIANTS$_Ld58:
.reference _$VARIANTS$_Ld59
	.ascii	"TCustomVariantType.CastToOle\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld61
_$VARIANTS$_Ld61:
	.short	0,1
	.long	0,-1,28
.reference _$VARIANTS$_Ld60
.globl	_$VARIANTS$_Ld60
_$VARIANTS$_Ld60:
.reference _$VARIANTS$_Ld61
	.ascii	"TCustomVariantType.CompareOp\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld63
_$VARIANTS$_Ld63:
	.short	0,1
	.long	0,-1,26
.reference _$VARIANTS$_Ld62
.globl	_$VARIANTS$_Ld62
_$VARIANTS$_Ld62:
.reference _$VARIANTS$_Ld63
	.ascii	"TCustomVariantType.Compare\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld65
_$VARIANTS$_Ld65:
	.short	0,1
	.long	0,-1,12
.reference _$VARIANTS$_Ld64
.globl	_$VARIANTS$_Ld64
_$VARIANTS$_Ld64:
.reference _$VARIANTS$_Ld65
	.ascii	"(OleVariant)\000"

.data
	.align 3
.globl	_TC_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING_NAMES
_TC_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING_NAMES:
	.byte	5
	.ascii	"Empty"
	.ascii	"   "
	.byte	4
	.ascii	"Null"
	.ascii	"    "
	.byte	8
	.ascii	"Smallint"
	.byte	7
	.ascii	"Integer"
	.ascii	" "
	.byte	6
	.ascii	"Single"
	.ascii	"  "
	.byte	6
	.ascii	"Double"
	.ascii	"  "
	.byte	8
	.ascii	"Currency"
	.byte	4
	.ascii	"Date"
	.ascii	"    "
	.byte	6
	.ascii	"OleStr"
	.ascii	"  "
	.byte	8
	.ascii	"Dispatch"
	.byte	5
	.ascii	"Error"
	.ascii	"   "
	.byte	7
	.ascii	"Boolean"
	.ascii	" "
	.byte	7
	.ascii	"Variant"
	.ascii	" "
	.byte	7
	.ascii	"Unknown"
	.ascii	" "
	.byte	7
	.ascii	"Decimal"
	.ascii	" "
	.byte	3
	.ascii	"???"
	.ascii	"     "
	.byte	8
	.ascii	"ShortInt"
	.byte	4
	.ascii	"Byte"
	.ascii	"    "
	.byte	4
	.ascii	"Word"
	.ascii	"    "
	.byte	5
	.ascii	"DWord"
	.ascii	"   "
	.byte	5
	.ascii	"Int64"
	.ascii	"   "
	.byte	5
	.ascii	"QWord"
	.ascii	"   "

.const_data
	.align 2
.globl	_$VARIANTS$_Ld67
_$VARIANTS$_Ld67:
	.short	0,1
	.long	0,-1,6
.reference _$VARIANTS$_Ld66
.globl	_$VARIANTS$_Ld66
_$VARIANTS$_Ld66:
.reference _$VARIANTS$_Ld67
	.ascii	"String\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld69
_$VARIANTS$_Ld69:
	.short	0,1
	.long	0,-1,3
.reference _$VARIANTS$_Ld68
.globl	_$VARIANTS$_Ld68
_$VARIANTS$_Ld68:
.reference _$VARIANTS$_Ld69
	.ascii	"Any\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld71
_$VARIANTS$_Ld71:
	.short	0,1
	.long	0,-1,1
.reference _$VARIANTS$_Ld70
.globl	_$VARIANTS$_Ld70
_$VARIANTS$_Ld70:
.reference _$VARIANTS$_Ld71
	.ascii	"$\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld73
_$VARIANTS$_Ld73:
	.short	0,1
	.long	0,-1,9
.reference _$VARIANTS$_Ld72
.globl	_$VARIANTS$_Ld72
_$VARIANTS$_Ld72:
.reference _$VARIANTS$_Ld73
	.ascii	"Array of \000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld75
_$VARIANTS$_Ld75:
	.short	0,1
	.long	0,-1,7
.reference _$VARIANTS$_Ld74
.globl	_$VARIANTS$_Ld74
_$VARIANTS$_Ld74:
.reference _$VARIANTS$_Ld75
	.ascii	"Ref to \000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld77
_$VARIANTS$_Ld77:
	.short	0,1
	.long	0,-1,25
.reference _$VARIANTS$_Ld76
.globl	_$VARIANTS$_Ld76
_$VARIANTS$_Ld76:
.reference _$VARIANTS$_Ld77
	.ascii	"Invalid Property Type: %s\000"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld79
_$VARIANTS$_Ld79:
	.short	0,1
	.long	0,-1,38
.reference _$VARIANTS$_Ld78
.globl	_$VARIANTS$_Ld78
_$VARIANTS$_Ld78:
.reference _$VARIANTS$_Ld79
	.ascii	"SetPropValue: Invalid Property Type %s\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCLEARCOMPLEX$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOVARCLEARCOMPLEX$TVARDATA
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

LFPC_RAISEEXCEPTION$stub:
.indirect_symbol FPC_RAISEEXCEPTION
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

L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_help_constructor$stub:
.indirect_symbol fpc_help_constructor
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

L_VARIANTS_TVARIANTARRAYITERATOR_$_NEXT$$BOOLEAN_INCDIM$LONGINT$stub:
.indirect_symbol _VARIANTS_TVARIANTARRAYITERATOR_$_NEXT$$BOOLEAN_INCDIM$LONGINT
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

Lfpc_help_destructor$stub:
.indirect_symbol fpc_help_destructor
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DYNARRAY_INCR_REF$stub:
.indirect_symbol FPC_DYNARRAY_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DYNARRAY_DECR_REF$stub:
.indirect_symbol FPC_DYNARRAY_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_dynarray_setlength$stub:
.indirect_symbol fpc_dynarray_setlength
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_TDYNARRAYITER_$__DONE$stub:
.indirect_symbol _VARIANTS_TDYNARRAYITER_$__DONE
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

L_VARIANTS_TDYNARRAYITER_$_NEXT$$BOOLEAN_INCDIM$LONGINT$stub:
.indirect_symbol _VARIANTS_TDYNARRAYITER_$_NEXT$$BOOLEAN_INCDIM$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_dynarray_clear$stub:
.indirect_symbol fpc_dynarray_clear
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_finalize$stub:
.indirect_symbol fpc_finalize
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARTYPE$VARIANT$$WORD$stub:
.indirect_symbol _VARIANTS_VARTYPE$VARIANT$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARCASTERROR$WORD$WORD$stub:
.indirect_symbol _VARIANTS_VARCASTERROR$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOLONGINT$TVARDATA$$LONGINT$stub:
.indirect_symbol _VARUTILS_VARIANTTOLONGINT$TVARDATA$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOINT64$TVARDATA$$INT64$stub:
.indirect_symbol _VARUTILS_VARIANTTOINT64$TVARDATA$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOQWORD$TVARDATA$$QWORD$stub:
.indirect_symbol _VARUTILS_VARIANTTOQWORD$TVARDATA$$QWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN$stub:
.indirect_symbol _VARUTILS_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN$stub:
.indirect_symbol _VARIANTS_FINDCUSTOMVARIANTTYPE$WORD$TCUSTOMVARIANTTYPE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTINIT$TVARDATA$stub:
.indirect_symbol _VARUTILS_VARIANTINIT$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE$stub:
.indirect_symbol _VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub:
.indirect_symbol _VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_CUSTOMVARTOLSTR$TVARDATA$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _VARIANTS_CUSTOMVARTOLSTR$TVARDATA$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING$stub:
.indirect_symbol _VARUTILS_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SYSVARTOLSTR$ANSISTRING$VARIANT$stub:
.indirect_symbol _VARIANTS_SYSVARTOLSTR$ANSISTRING$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_to_shortstr$stub:
.indirect_symbol fpc_ansistr_to_shortstr
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

L_VARUTILS_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING$stub:
.indirect_symbol _VARUTILS_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_INTF_DECR_REF$stub:
.indirect_symbol FPC_INTF_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_INTF_INCR_REF$stub:
.indirect_symbol FPC_INTF_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARBADTYPEERROR$stub:
.indirect_symbol _VARIANTS_VARBADTYPEERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SYSVARTOINTF$IUNKNOWN$VARIANT$stub:
.indirect_symbol _VARIANTS_SYSVARTOINTF$IUNKNOWN$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SYSVARTODISP$IDISPATCH$VARIANT$stub:
.indirect_symbol _VARIANTS_SYSVARTODISP$IDISPATCH$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTODATE$TVARDATA$$TDATETIME$stub:
.indirect_symbol _VARUTILS_VARIANTTODATE$TVARDATA$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DYNAMICARRAYISRECTANGULAR$POINTER$POINTER$$BOOLEAN$stub:
.indirect_symbol _VARIANTS_DYNAMICARRAYISRECTANGULAR$POINTER$POINTER$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DYNARRAYFROMVARIANT$POINTER$VARIANT$POINTER$stub:
.indirect_symbol _VARIANTS_DYNARRAYFROMVARIANT$POINTER$VARIANT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCLEARIFCOMPLEX$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOVARCLEARIFCOMPLEX$TVARDATA
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

L_VARIANTS_VARIANTERRORINVALIDINTEGERRANGE$LONGINT$stub:
.indirect_symbol _VARIANTS_VARIANTERRORINVALIDINTEGERRANGE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_ansistr$stub:
.indirect_symbol fpc_shortstr_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP$stub:
.indirect_symbol _VARIANTS_VARINVALIDOP$WORD$WORD$TVAROP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARINVALIDNULLOP$stub:
.indirect_symbol _VARIANTS_VARINVALIDNULLOP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCMPWSTRDIRECT$POINTER$POINTER$TVAROP$$SHORTINT$stub:
.indirect_symbol _VARIANTS_DOVARCMPWSTRDIRECT$POINTER$POINTER$TVAROP$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_COMPARESTR$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_COMPARESTR$ANSISTRING$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCMPLSTRDIRECT$POINTER$POINTER$TVAROP$$SHORTINT$stub:
.indirect_symbol _VARIANTS_DOVARCMPLSTRDIRECT$POINTER$POINTER$TVAROP$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARTYPEDEREF$TVARDATA$$WORD$stub:
.indirect_symbol _VARIANTS_VARTYPEDEREF$TVARDATA$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_MAPTOCOMMONTYPE$WORD$$TCOMMONTYPE$stub:
.indirect_symbol _VARIANTS_MAPTOCOMMONTYPE$WORD$$TCOMMONTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCMPANY$TVARDATA$TVARDATA$TVAROP$$SHORTINT$stub:
.indirect_symbol _VARIANTS_DOVARCMPANY$TVARDATA$TVARDATA$TVAROP$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCMPFLOAT$DOUBLE$DOUBLE$TVAROP$$SHORTINT$stub:
.indirect_symbol _VARIANTS_DOVARCMPFLOAT$DOUBLE$DOUBLE$TVAROP$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCMPINT64$INT64$INT64$$SHORTINT$stub:
.indirect_symbol _VARIANTS_DOVARCMPINT64$INT64$INT64$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCMPNULL$TCOMMONTYPE$TCOMMONTYPE$TVAROP$$SHORTINT$stub:
.indirect_symbol _VARIANTS_DOVARCMPNULL$TCOMMONTYPE$TCOMMONTYPE$TVAROP$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCMPWSTR$TVARDATA$TVARDATA$TVAROP$$SHORTINT$stub:
.indirect_symbol _VARIANTS_DOVARCMPWSTR$TVARDATA$TVARDATA$TVAROP$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCMPCURR$CURRENCY$CURRENCY$$SHORTINT$stub:
.indirect_symbol _VARIANTS_DOVARCMPCURR$CURRENCY$CURRENCY$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCMPLSTR$TVARDATA$TVARDATA$TVAROP$$SHORTINT$stub:
.indirect_symbol _VARIANTS_DOVARCMPLSTR$TVARDATA$TVARDATA$TVAROP$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCMPCOMPLEX$TVARDATA$TVARDATA$TVAROP$$SHORTINT$stub:
.indirect_symbol _VARIANTS_DOVARCMPCOMPLEX$TVARDATA$TVARDATA$TVAROP$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCMP$TVARDATA$TVARDATA$TVAROP$$SHORTINT$stub:
.indirect_symbol _VARIANTS_DOVARCMP$TVARDATA$TVARDATA$TVAROP$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARINVALIDOP$stub:
.indirect_symbol _VARIANTS_VARINVALIDOP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_POWER$EXTENDED$EXTENDED$$EXTENDED$stub:
.indirect_symbol _MATH_POWER$EXTENDED$EXTENDED$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_OVERFLOW$stub:
.indirect_symbol FPC_OVERFLOW
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_mul_int64$stub:
.indirect_symbol fpc_mul_int64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_CATCHES$stub:
.indirect_symbol FPC_CATCHES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_div_int64$stub:
.indirect_symbol fpc_div_int64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_mod_int64$stub:
.indirect_symbol fpc_mod_int64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVAROPFLOAT$TVARDATA$TVARDATA$TVAROP$stub:
.indirect_symbol _VARIANTS_DOVAROPFLOAT$TVARDATA$TVARDATA$TVAROP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVAROPINT64$TVARDATA$TVARDATA$TVAROP$stub:
.indirect_symbol _VARIANTS_DOVAROPINT64$TVARDATA$TVARDATA$TVAROP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_concat$stub:
.indirect_symbol fpc_unicodestr_concat
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

Lfpc_ansistr_concat$stub:
.indirect_symbol fpc_ansistr_concat
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARTYPEDEREF$VARIANT$$WORD$stub:
.indirect_symbol _VARIANTS_VARTYPEDEREF$VARIANT$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ERROR$TRUNTIMEERROR$stub:
.indirect_symbol _SYSTEM_ERROR$TRUNTIMEERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCLEAR$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOVARCLEAR$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVAROPANY$TVARDATA$TVARDATA$TVAROP$stub:
.indirect_symbol _VARIANTS_DOVAROPANY$TVARDATA$TVARDATA$TVAROP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVAROPINT64TO32$TVARDATA$TVARDATA$TVAROP$stub:
.indirect_symbol _VARIANTS_DOVAROPINT64TO32$TVARDATA$TVARDATA$TVAROP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVAROPLONGINT$TVARDATA$TVARDATA$TVAROP$stub:
.indirect_symbol _VARIANTS_DOVAROPLONGINT$TVARDATA$TVARDATA$TVAROP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVAROPBOOL$TVARDATA$TVARDATA$TVAROP$stub:
.indirect_symbol _VARIANTS_DOVAROPBOOL$TVARDATA$TVARDATA$TVAROP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVAROPNULL$TVARDATA$TVARDATA$TVAROP$stub:
.indirect_symbol _VARIANTS_DOVAROPNULL$TVARDATA$TVARDATA$TVAROP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVAROPWSTRCAT$TVARDATA$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOVAROPWSTRCAT$TVARDATA$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVAROPDATE$TVARDATA$TVARDATA$TVAROP$stub:
.indirect_symbol _VARIANTS_DOVAROPDATE$TVARDATA$TVARDATA$TVAROP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVAROPCURR$TVARDATA$TVARDATA$TVAROP$TCOMMONTYPE$TCOMMONTYPE$stub:
.indirect_symbol _VARIANTS_DOVAROPCURR$TVARDATA$TVARDATA$TVAROP$TCOMMONTYPE$TCOMMONTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVAROPLSTRCAT$TVARDATA$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOVAROPLSTRCAT$TVARDATA$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVAROPCOMPLEX$TVARDATA$TVARDATA$TVAROP$stub:
.indirect_symbol _VARIANTS_DOVAROPCOMPLEX$TVARDATA$TVARDATA$TVAROP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARINVALIDOP$WORD$TVAROP$stub:
.indirect_symbol _VARIANTS_VARINVALIDOP$WORD$TVAROP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SYSVARFROMREAL$VARIANT$EXTENDED$stub:
.indirect_symbol _VARIANTS_SYSVARFROMREAL$VARIANT$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARRANGECHECKERROR$WORD$WORD$stub:
.indirect_symbol _VARIANTS_VARRANGECHECKERROR$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_FINALIZE$stub:
.indirect_symbol FPC_FINALIZE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_minus$VARIANT$$VARIANT$stub:
.indirect_symbol _SYSTEM_minus$VARIANT$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_variant_copy$stub:
.indirect_symbol fpc_variant_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARNEGANY$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOVARNEGANY$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARNEGCOMPLEX$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOVARNEGCOMPLEX$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_INITIALIZE$stub:
.indirect_symbol FPC_INITIALIZE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_int64_unicodestr$stub:
.indirect_symbol fpc_val_int64_unicodestr
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

L_SYSUTILS_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_int64_ansistr$stub:
.indirect_symbol fpc_val_int64_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$SHORTINT$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$SHORTINT$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARNOTORDINAL$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOVARNOTORDINAL$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARNOTWSTR$TVARDATA$POINTER$stub:
.indirect_symbol _VARIANTS_DOVARNOTWSTR$TVARDATA$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_not$VARIANT$$VARIANT$stub:
.indirect_symbol _SYSTEM_not$VARIANT$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARNOTLSTR$TVARDATA$POINTER$stub:
.indirect_symbol _VARIANTS_DOVARNOTLSTR$TVARDATA$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARNOTANY$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOVARNOTANY$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARNOTCOMPLEX$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOVARNOTCOMPLEX$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SAFEARRAYACCESSDATA$PVARARRAY$POINTER$$HRESULT$stub:
.indirect_symbol _VARUTILS_SAFEARRAYACCESSDATA$PVARARRAY$POINTER$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARRESULTCHECK$HRESULT$stub:
.indirect_symbol _VARIANTS_VARRESULTCHECK$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SAFEARRAYUNACCESSDATA$PVARARRAY$$HRESULT$stub:
.indirect_symbol _VARUTILS_SAFEARRAYUNACCESSDATA$PVARARRAY$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTCLEAR$TVARDATA$$HRESULT$stub:
.indirect_symbol _VARUTILS_VARIANTCLEAR$TVARDATA$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCLEARARRAY$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOVARCLEARARRAY$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SAFEARRAYGETLBOUND$PVARARRAY$LONGWORD$LONGINT$$HRESULT$stub:
.indirect_symbol _VARUTILS_SAFEARRAYGETLBOUND$PVARARRAY$LONGWORD$LONGINT$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SAFEARRAYGETUBOUND$PVARARRAY$LONGWORD$LONGINT$$HRESULT$stub:
.indirect_symbol _VARUTILS_SAFEARRAYGETUBOUND$PVARARRAY$LONGWORD$LONGINT$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SAFEARRAYCREATE$LONGWORD$LONGWORD$TVARARRAYBOUNDARRAY$$PVARARRAY$stub:
.indirect_symbol _VARUTILS_SAFEARRAYCREATE$LONGWORD$LONGWORD$TVARARRAYBOUNDARRAY$$PVARARRAY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARARRAYCREATEERROR$stub:
.indirect_symbol _VARIANTS_VARARRAYCREATEERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_TVARIANTARRAYITERATOR_$__INIT$LONGINT$PVARARRAYBOUNDARRAY$$LONGBOOL$stub:
.indirect_symbol _VARIANTS_TVARIANTARRAYITERATOR_$__INIT$LONGINT$PVARARRAYBOUNDARRAY$$LONGBOOL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_TVARIANTARRAYITERATOR_$__ATEND$$BOOLEAN$stub:
.indirect_symbol _VARIANTS_TVARIANTARRAYITERATOR_$__ATEND$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SAFEARRAYPTROFINDEX$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT$stub:
.indirect_symbol _VARUTILS_SAFEARRAYPTROFINDEX$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_TVARIANTARRAYITERATOR_$__NEXT$$BOOLEAN$stub:
.indirect_symbol _VARIANTS_TVARIANTARRAYITERATOR_$__NEXT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_TVARIANTARRAYITERATOR_$__DONE$stub:
.indirect_symbol _VARIANTS_TVARIANTARRAYITERATOR_$__DONE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT$stub:
.indirect_symbol _VARUTILS_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCOPYARRAY$TVARDATA$TVARDATA$TVARARRAYCOPYCALLBACK$stub:
.indirect_symbol _VARIANTS_DOVARCOPYARRAY$TVARDATA$TVARDATA$TVARARRAYCOPYCALLBACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCOPYCOMPLEX$TVARDATA$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOVARCOPYCOMPLEX$TVARDATA$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCOPY$TVARDATA$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOVARCOPY$TVARDATA$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARADDREF$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOVARADDREF$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SYSVARFROMWSTR$VARIANT$WIDESTRING$stub:
.indirect_symbol _VARIANTS_SYSVARFROMWSTR$VARIANT$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SYSVARFROMLSTR$VARIANT$ANSISTRING$stub:
.indirect_symbol _VARIANTS_SYSVARFROMLSTR$VARIANT$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SYSVARFROMDISP$VARIANT$IDISPATCH$stub:
.indirect_symbol _VARIANTS_SYSVARFROMDISP$VARIANT$IDISPATCH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_intf_decr_ref$stub:
.indirect_symbol fpc_intf_decr_ref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SYSVARFROMINTF$VARIANT$IUNKNOWN$stub:
.indirect_symbol _VARIANTS_SYSVARFROMINTF$VARIANT$IUNKNOWN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT$stub:
.indirect_symbol _VARIANTS_DOVARCAST$TVARDATA$TVARDATA$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTCHANGETYPEEX$TVARDATA$TVARDATA$LONGINT$WORD$WORD$$HRESULT$stub:
.indirect_symbol _VARUTILS_VARIANTCHANGETYPEEX$TVARDATA$TVARDATA$LONGINT$WORD$WORD$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARRESULTCHECK$HRESULT$WORD$WORD$stub:
.indirect_symbol _VARIANTS_VARRESULTCHECK$HRESULT$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCASTANY$TVARDATA$TVARDATA$LONGINT$stub:
.indirect_symbol _VARIANTS_DOVARCASTANY$TVARDATA$TVARDATA$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCASTFALLBACK$TVARDATA$TVARDATA$LONGINT$stub:
.indirect_symbol _VARIANTS_DOVARCASTFALLBACK$TVARDATA$TVARDATA$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOSMALLINT$TVARDATA$$SMALLINT$stub:
.indirect_symbol _VARUTILS_VARIANTTOSMALLINT$TVARDATA$$SMALLINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SYSVARFROMINT$VARIANT$LONGINT$LONGINT$stub:
.indirect_symbol _VARIANTS_SYSVARFROMINT$VARIANT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOSINGLE$TVARDATA$$SINGLE$stub:
.indirect_symbol _VARUTILS_VARIANTTOSINGLE$TVARDATA$$SINGLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SYSVARFROMSINGLE$VARIANT$SINGLE$stub:
.indirect_symbol _VARIANTS_SYSVARFROMSINGLE$VARIANT$SINGLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SYSVARFROMDOUBLE$VARIANT$DOUBLE$stub:
.indirect_symbol _VARIANTS_SYSVARFROMDOUBLE$VARIANT$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SYSVARFROMCURR$VARIANT$CURRENCY$stub:
.indirect_symbol _VARIANTS_SYSVARFROMCURR$VARIANT$CURRENCY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SYSVARFROMTDATETIME$VARIANT$TDATETIME$stub:
.indirect_symbol _VARIANTS_SYSVARFROMTDATETIME$VARIANT$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCASTWSTR$TVARDATA$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOVARCASTWSTR$TVARDATA$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SYSVARFROMBOOL$VARIANT$BOOLEAN$stub:
.indirect_symbol _VARIANTS_SYSVARFROMBOOL$VARIANT$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOSHORTINT$TVARDATA$$SHORTINT$stub:
.indirect_symbol _VARUTILS_VARIANTTOSHORTINT$TVARDATA$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOBYTE$TVARDATA$$BYTE$stub:
.indirect_symbol _VARUTILS_VARIANTTOBYTE$TVARDATA$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOCARDINAL$TVARDATA$$LONGWORD$stub:
.indirect_symbol _VARUTILS_VARIANTTOCARDINAL$TVARDATA$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SYSVARFROMINT64$VARIANT$INT64$stub:
.indirect_symbol _VARIANTS_SYSVARFROMINT64$VARIANT$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SYSVARFROMWORD64$VARIANT$QWORD$stub:
.indirect_symbol _VARIANTS_SYSVARFROMWORD64$VARIANT$QWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCASTDISPATCH$TVARDATA$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOVARCASTDISPATCH$TVARDATA$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCASTINTERFACE$TVARDATA$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOVARCASTINTERFACE$TVARDATA$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCASTLSTR$TVARDATA$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOVARCASTLSTR$TVARDATA$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCASTCOMPLEX$TVARDATA$TVARDATA$LONGINT$stub:
.indirect_symbol _VARIANTS_DOVARCASTCOMPLEX$TVARDATA$TVARDATA$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DYNARRAYTOVARIANT$VARIANT$POINTER$POINTER$stub:
.indirect_symbol _VARIANTS_DYNARRAYTOVARIANT$VARIANT$POINTER$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARISEMPTY$VARIANT$$BOOLEAN$stub:
.indirect_symbol _VARIANTS_VARISEMPTY$VARIANT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARCASTERROR$stub:
.indirect_symbol _VARIANTS_VARCASTERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_unicodestr$stub:
.indirect_symbol fpc_shortstr_to_unicodestr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARCASTERROROLE$WORD$stub:
.indirect_symbol _VARIANTS_VARCASTERROROLE$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOOLEVARFROMVAR$TVARDATA$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOOLEVARFROMVAR$TVARDATA$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOOLEVARFROMANY$TVARDATA$TVARDATA$stub:
.indirect_symbol _VARIANTS_DOOLEVARFROMANY$TVARDATA$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DOVARCASTOLE$TVARDATA$TVARDATA$LONGINT$stub:
.indirect_symbol _VARIANTS_DOVARCASTOLE$TVARDATA$TVARDATA$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SYSDISPINVOKE$PVARDATA$TVARDATA$PCALLDESC$POINTER$stub:
.indirect_symbol _VARIANTS_SYSDISPINVOKE$PVARDATA$TVARDATA$PCALLDESC$POINTER
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

L_VARIANTS_VARINVALIDARGERROR$stub:
.indirect_symbol _VARIANTS_VARINVALIDARGERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SAFEARRAYREDIM$PVARARRAY$TVARARRAYBOUND$$HRESULT$stub:
.indirect_symbol _VARUTILS_SAFEARRAYREDIM$PVARARRAY$TVARARRAYBOUND$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARINVALIDARGERROR$WORD$stub:
.indirect_symbol _VARIANTS_VARINVALIDARGERROR$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SAFEARRAYGETELEMENT$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT$stub:
.indirect_symbol _VARUTILS_SAFEARRAYGETELEMENT$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_GETFINALVARTYPE$TVARDATA$$WORD$stub:
.indirect_symbol _VARIANTS_GETFINALVARTYPE$TVARDATA$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARTYPEISVALIDELEMENTTYPE$WORD$$BOOLEAN$stub:
.indirect_symbol _VARIANTS_VARTYPEISVALIDELEMENTTYPE$WORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARTOWIDESTR$VARIANT$$WIDESTRING$stub:
.indirect_symbol _VARIANTS_VARTOWIDESTR$VARIANT$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$WIDESTRING$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$WIDESTRING$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_VARCAST$VARIANT$VARIANT$LONGINT$stub:
.indirect_symbol _SYSTEM_VARCAST$VARIANT$VARIANT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SAFEARRAYPUTELEMENT$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT$stub:
.indirect_symbol _VARUTILS_SAFEARRAYPUTELEMENT$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_initialize$stub:
.indirect_symbol fpc_initialize
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETVARIANTMANAGER$TVARIANTMANAGER$stub:
.indirect_symbol _SYSTEM_GETVARIANTMANAGER$TVARIANTMANAGER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_WRITE_TEXT_ANSISTR$stub:
.indirect_symbol FPC_WRITE_TEXT_ANSISTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_SETVARIANTMANAGER$TVARIANTMANAGER$stub:
.indirect_symbol _SYSTEM_SETVARIANTMANAGER$TVARIANTMANAGER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SYSVARCAST$VARIANT$VARIANT$LONGINT$stub:
.indirect_symbol _VARIANTS_SYSVARCAST$VARIANT$VARIANT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SYSVARCLEAR$VARIANT$stub:
.indirect_symbol _VARIANTS_SYSVARCLEAR$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARTOSTRDEF$VARIANT$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _VARIANTS_VARTOSTRDEF$VARIANT$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$ANSISTRING$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARTOWIDESTRDEF$VARIANT$WIDESTRING$$WIDESTRING$stub:
.indirect_symbol _VARIANTS_VARTOWIDESTRDEF$VARIANT$WIDESTRING$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$WIDESTRING$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARTOUNICODESTRDEF$VARIANT$UNICODESTRING$$UNICODESTRING$stub:
.indirect_symbol _VARIANTS_VARTOUNICODESTRDEF$VARIANT$UNICODESTRING$$UNICODESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_greater_or_equal$VARIANT$VARIANT$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_greater_or_equal$VARIANT$VARIANT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_lower_or_equal$VARIANT$VARIANT$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_lower_or_equal$VARIANT$VARIANT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_greater$VARIANT$VARIANT$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_greater$VARIANT$VARIANT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_lower$VARIANT$VARIANT$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_lower$VARIANT$VARIANT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_FINDVARDATA$VARIANT$$PVARDATA$stub:
.indirect_symbol _VARIANTS_FINDVARDATA$VARIANT$$PVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_equal$VARIANT$VARIANT$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_equal$VARIANT$VARIANT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARSUPPORTS$VARIANT$TGUID$formal$$BOOLEAN$stub:
.indirect_symbol _VARIANTS_VARSUPPORTS$VARIANT$TGUID$formal$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_NOTSUPPORTED$ANSISTRING$stub:
.indirect_symbol _VARIANTS_NOTSUPPORTED$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARTYPEISVALIDARRAYTYPE$WORD$$BOOLEAN$stub:
.indirect_symbol _VARIANTS_VARTYPEISVALIDARRAYTYPE$WORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARARRAYCREATE$array_of_LONGINT$WORD$$VARIANT$stub:
.indirect_symbol _VARIANTS_VARARRAYCREATE$array_of_LONGINT$WORD$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_vararray_put$stub:
.indirect_symbol fpc_vararray_put
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARARRAYASPSAFEARRAY$VARIANT$$PVARARRAY$stub:
.indirect_symbol _VARIANTS_VARARRAYASPSAFEARRAY$VARIANT$$PVARARRAY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARISARRAY$VARIANT$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _VARIANTS_VARISARRAY$VARIANT$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_DYNARRAYGETVARIANTINFO$POINTER$LONGINT$$LONGINT$stub:
.indirect_symbol _VARIANTS_DYNARRAYGETVARIANTINFO$POINTER$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_dynarray_length$stub:
.indirect_symbol fpc_dynarray_length
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARARRAYCREATE$PVARARRAYBOUNDARRAY$LONGINT$WORD$$VARIANT$stub:
.indirect_symbol _VARIANTS_VARARRAYCREATE$PVARARRAYBOUNDARRAY$LONGINT$WORD$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARARRAYLOCK$VARIANT$$POINTER$stub:
.indirect_symbol _VARIANTS_VARARRAYLOCK$VARIANT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_TDYNARRAYITER_$__INIT$POINTER$PDYNARRAYTYPEINFO$LONGINT$TDYNARRAYBOUNDS$$LONGBOOL$stub:
.indirect_symbol _VARIANTS_TDYNARRAYITER_$__INIT$POINTER$PDYNARRAYTYPEINFO$LONGINT$TDYNARRAYBOUNDS$$LONGBOOL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$SMALLINT$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$SMALLINT$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$LONGINT$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$LONGINT$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$SINGLE$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$SINGLE$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$DOUBLE$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$DOUBLE$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$CURRENCY$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$CURRENCY$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_idispatch_to_variant$stub:
.indirect_symbol fpc_idispatch_to_variant
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$TERROR$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$TERROR$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$BOOLEAN$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$BOOLEAN$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_interface_to_variant$stub:
.indirect_symbol fpc_interface_to_variant
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$BYTE$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$BYTE$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$WORD$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$WORD$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$LONGWORD$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$LONGWORD$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$INT64$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$INT64$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$QWORD$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$QWORD$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_TDYNARRAYITER_$__NEXT$$BOOLEAN$stub:
.indirect_symbol _VARIANTS_TDYNARRAYITER_$__NEXT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_VARARRAYPUT$VARIANT$VARIANT$array_of_LONGINT$stub:
.indirect_symbol _SYSTEM_VARARRAYPUT$VARIANT$VARIANT$array_of_LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARARRAYUNLOCK$VARIANT$stub:
.indirect_symbol _VARIANTS_VARARRAYUNLOCK$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARARRAYDIMCOUNT$VARIANT$$LONGINT$stub:
.indirect_symbol _VARIANTS_VARARRAYDIMCOUNT$VARIANT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARARRAYLOWBOUND$VARIANT$LONGINT$$LONGINT$stub:
.indirect_symbol _VARIANTS_VARARRAYLOWBOUND$VARIANT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARARRAYHIGHBOUND$VARIANT$LONGINT$$LONGINT$stub:
.indirect_symbol _VARIANTS_VARARRAYHIGHBOUND$VARIANT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DYNARRAYSETLENGTH$POINTER$POINTER$LONGINT$PSIZEINT$stub:
.indirect_symbol _SYSTEM_DYNARRAYSETLENGTH$POINTER$POINTER$LONGINT$PSIZEINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_VARARRAYGET$VARIANT$array_of_LONGINT$$VARIANT$stub:
.indirect_symbol _SYSTEM_VARARRAYGET$VARIANT$array_of_LONGINT$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$SMALLINT$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$SMALLINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$LONGINT$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$SINGLE$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$SINGLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$DOUBLE$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$CURRENCY$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$CURRENCY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_variant_to_idispatch$stub:
.indirect_symbol fpc_variant_to_idispatch
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$TERROR$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$TERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_variant_to_interface$stub:
.indirect_symbol fpc_variant_to_interface
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$SHORTINT$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$BYTE$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$WORD$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$LONGWORD$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$INT64$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$QWORD$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$QWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION$stub:
.indirect_symbol _SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_dynarray_high$stub:
.indirect_symbol fpc_dynarray_high
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION$stub:
.indirect_symbol _SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__CLASSNAMEIS$SHORTSTRING$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CLASSNAMEIS$SHORTSTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAINIT$TVARDATA$stub:
.indirect_symbol _VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAINIT$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARDISPINVOKEERROR$stub:
.indirect_symbol _VARIANTS_VARDISPINVOKEERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEDISPERROR$stub:
.indirect_symbol _VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEDISPERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACASTTO$TVARDATA$TVARDATA$WORD$stub:
.indirect_symbol _VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACASTTO$TVARDATA$TVARDATA$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_REGISTERCUSTOMVARIANTTYPE$TCUSTOMVARIANTTYPE$WORD$BOOLEAN$stub:
.indirect_symbol _VARIANTS_REGISTERCUSTOMVARIANTTYPE$TCUSTOMVARIANTTYPE$WORD$BOOLEAN
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

L_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEINVALIDOP$stub:
.indirect_symbol _VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEINVALIDOP
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

L_VARIANTS_UNASSIGNED$$VARIANT$stub:
.indirect_symbol _VARIANTS_UNASSIGNED$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACLEAR$TVARDATA$stub:
.indirect_symbol _VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACLEAR$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_GETPROPVALUE$TOBJECT$ANSISTRING$$VARIANT$stub:
.indirect_symbol _VARIANTS_GETPROPVALUE$TOBJECT$ANSISTRING$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SETPROPVALUE$TOBJECT$ANSISTRING$VARIANT$stub:
.indirect_symbol _VARIANTS_SETPROPVALUE$TOBJECT$ANSISTRING$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING$stub:
.indirect_symbol _VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARRANGECHECKERROR$WORD$stub:
.indirect_symbol _VARIANTS_VARRANGECHECKERROR$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARPARAMNOTFOUNDERROR$stub:
.indirect_symbol _VARIANTS_VARPARAMNOTFOUNDERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VAROVERFLOWERROR$stub:
.indirect_symbol _VARIANTS_VAROVERFLOWERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARBADINDEXERROR$stub:
.indirect_symbol _VARIANTS_VARBADINDEXERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARARRAYLOCKEDERROR$stub:
.indirect_symbol _VARIANTS_VARARRAYLOCKEDERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARNOTIMPLERROR$stub:
.indirect_symbol _VARIANTS_VARNOTIMPLERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VAROUTOFMEMORYERROR$stub:
.indirect_symbol _VARIANTS_VAROUTOFMEMORYERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARUNEXPECTEDERROR$stub:
.indirect_symbol _VARIANTS_VARUNEXPECTEDERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_RAISEVAREXCEPTION$HRESULT$stub:
.indirect_symbol _VARIANTS_RAISEVAREXCEPTION$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VAROVERFLOWERROR$WORD$WORD$stub:
.indirect_symbol _VARIANTS_VAROVERFLOWERROR$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXCEPTOBJECT$$TOBJECT$stub:
.indirect_symbol _SYSUTILS_EXCEPTOBJECT$$TOBJECT
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

L_SYSTEM_ACQUIREEXCEPTIONOBJECT$$POINTER$stub:
.indirect_symbol _SYSTEM_ACQUIREEXCEPTIONOBJECT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_INTTOHEX$LONGINT$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOHEX$LONGINT$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_NULL$$VARIANT$stub:
.indirect_symbol _VARIANTS_NULL$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO$stub:
.indirect_symbol _TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_GETVARIANTPROP$TOBJECT$PPROPINFO$$VARIANT$stub:
.indirect_symbol _VARIANTS_GETVARIANTPROP$TOBJECT$PPROPINFO$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SETVARIANTPROP$TOBJECT$PPROPINFO$VARIANT$stub:
.indirect_symbol _VARIANTS_SETVARIANTPROP$TOBJECT$PPROPINFO$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_GETPROPVALUE$TOBJECT$ANSISTRING$BOOLEAN$$VARIANT$stub:
.indirect_symbol _VARIANTS_GETPROPVALUE$TOBJECT$ANSISTRING$BOOLEAN$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO$stub:
.indirect_symbol _TYPINFO_GETPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64$stub:
.indirect_symbol _TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETENUMPROP$TOBJECT$PPROPINFO$$ANSISTRING$stub:
.indirect_symbol _TYPINFO_GETENUMPROP$TOBJECT$PPROPINFO$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$ANSISTRING$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$ANSISTRING$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETSETPROP$TOBJECT$PPROPINFO$BOOLEAN$$ANSISTRING$stub:
.indirect_symbol _TYPINFO_GETSETPROP$TOBJECT$PPROPINFO$BOOLEAN$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETFLOATPROP$TOBJECT$PPROPINFO$$EXTENDED$stub:
.indirect_symbol _TYPINFO_GETFLOATPROP$TOBJECT$PPROPINFO$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$EXTENDED$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$EXTENDED$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$SHORTSTRING$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$SHORTSTRING$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETSTRPROP$TOBJECT$PPROPINFO$$ANSISTRING$stub:
.indirect_symbol _TYPINFO_GETSTRPROP$TOBJECT$PPROPINFO$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETWIDESTRPROP$TOBJECT$PPROPINFO$$WIDESTRING$stub:
.indirect_symbol _TYPINFO_GETWIDESTRPROP$TOBJECT$PPROPINFO$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETUNICODESTRPROP$TOBJECT$PPROPINFO$$UNICODESTRING$stub:
.indirect_symbol _TYPINFO_GETUNICODESTRPROP$TOBJECT$PPROPINFO$$UNICODESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETINT64PROP$TOBJECT$PPROPINFO$$INT64$stub:
.indirect_symbol _TYPINFO_GETINT64PROP$TOBJECT$PPROPINFO$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA$stub:
.indirect_symbol _TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64$stub:
.indirect_symbol _TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_SETENUMPROP$TOBJECT$PPROPINFO$ANSISTRING$stub:
.indirect_symbol _TYPINFO_SETENUMPROP$TOBJECT$PPROPINFO$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_SETSETPROP$TOBJECT$PPROPINFO$ANSISTRING$stub:
.indirect_symbol _TYPINFO_SETSETPROP$TOBJECT$PPROPINFO$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$EXTENDED$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_SETFLOATPROP$TOBJECT$PPROPINFO$EXTENDED$stub:
.indirect_symbol _TYPINFO_SETFLOATPROP$TOBJECT$PPROPINFO$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARTOSTR$VARIANT$$ANSISTRING$stub:
.indirect_symbol _VARIANTS_VARTOSTR$VARIANT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_SETSTRPROP$TOBJECT$PPROPINFO$ANSISTRING$stub:
.indirect_symbol _TYPINFO_SETSTRPROP$TOBJECT$PPROPINFO$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_SETWIDESTRPROP$TOBJECT$PPROPINFO$WIDESTRING$stub:
.indirect_symbol _TYPINFO_SETWIDESTRPROP$TOBJECT$PPROPINFO$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARTOUNICODESTR$VARIANT$$UNICODESTRING$stub:
.indirect_symbol _VARIANTS_VARTOUNICODESTR$VARIANT$$UNICODESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_SETUNICODESTRPROP$TOBJECT$PPROPINFO$UNICODESTRING$stub:
.indirect_symbol _TYPINFO_SETUNICODESTRPROP$TOBJECT$PPROPINFO$UNICODESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_SETINT64PROP$TOBJECT$PPROPINFO$INT64$stub:
.indirect_symbol _TYPINFO_SETINT64PROP$TOBJECT$PPROPINFO$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_INITCRITICALSECTION$TRTLCRITICALSECTION$stub:
.indirect_symbol _SYSTEM_INITCRITICALSECTION$TRTLCRITICALSECTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SETSYSVARIANTMANAGER$stub:
.indirect_symbol _VARIANTS_SETSYSVARIANTMANAGER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_SETCLEARVARTOEMPTYPARAM$TVARDATA$stub:
.indirect_symbol _VARIANTS_SETCLEARVARTOEMPTYPARAM$TVARDATA
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

L_VARIANTS_UNSETSYSVARIANTMANAGER$stub:
.indirect_symbol _VARIANTS_UNSETSYSVARIANTMANAGER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DONECRITICALSECTION$TRTLCRITICALSECTION$stub:
.indirect_symbol _SYSTEM_DONECRITICALSECTION$TRTLCRITICALSECTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_TCUSTOMVARIANTTYPE_$___ADDREF$$LONGINT$stub:
.indirect_symbol _VARIANTS_TCUSTOMVARIANTTYPE_$___ADDREF$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_TCUSTOMVARIANTTYPE_$___RELEASE$$LONGINT$stub:
.indirect_symbol _VARIANTS_TCUSTOMVARIANTTYPE_$___RELEASE$$LONGINT
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
.globl	_$VARIANTS$_Ld81
_$VARIANTS$_Ld81:
	.short	0
	.long	_$VARIANTS$_Ld82
	.align 2
.globl	_$VARIANTS$_Ld82
_$VARIANTS$_Ld82:
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_EVARIANTPARAMNOTFOUNDERROR
_INIT_VARIANTS_EVARIANTPARAMNOTFOUNDERROR:
	.byte	15,26
	.ascii	"EVariantParamNotFoundError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_EVARIANTPARAMNOTFOUNDERROR
_RTTI_VARIANTS_EVARIANTPARAMNOTFOUNDERROR:
	.byte	15,26
	.ascii	"EVariantParamNotFoundError"
	.long	_VMT_VARIANTS_EVARIANTPARAMNOTFOUNDERROR
	.long	_RTTI_SYSUTILS_EVARIANTERROR
	.short	0
	.byte	8
	.ascii	"variants"
	.short	0

.const_data
	.align 2
.globl	_$VARIANTS$_Ld84
_$VARIANTS$_Ld84:
	.short	0
	.long	_$VARIANTS$_Ld85
	.align 2
.globl	_$VARIANTS$_Ld85
_$VARIANTS$_Ld85:
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_EVARIANTINVALIDOPERROR
_INIT_VARIANTS_EVARIANTINVALIDOPERROR:
	.byte	15,22
	.ascii	"EVariantInvalidOpError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_EVARIANTINVALIDOPERROR
_RTTI_VARIANTS_EVARIANTINVALIDOPERROR:
	.byte	15,22
	.ascii	"EVariantInvalidOpError"
	.long	_VMT_VARIANTS_EVARIANTINVALIDOPERROR
	.long	_RTTI_SYSUTILS_EVARIANTERROR
	.short	0
	.byte	8
	.ascii	"variants"
	.short	0

.const_data
	.align 2
.globl	_$VARIANTS$_Ld87
_$VARIANTS$_Ld87:
	.short	0
	.long	_$VARIANTS$_Ld88
	.align 2
.globl	_$VARIANTS$_Ld88
_$VARIANTS$_Ld88:
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_EVARIANTTYPECASTERROR
_INIT_VARIANTS_EVARIANTTYPECASTERROR:
	.byte	15,21
	.ascii	"EVariantTypeCastError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_EVARIANTTYPECASTERROR
_RTTI_VARIANTS_EVARIANTTYPECASTERROR:
	.byte	15,21
	.ascii	"EVariantTypeCastError"
	.long	_VMT_VARIANTS_EVARIANTTYPECASTERROR
	.long	_RTTI_SYSUTILS_EVARIANTERROR
	.short	0
	.byte	8
	.ascii	"variants"
	.short	0

.const_data
	.align 2
.globl	_$VARIANTS$_Ld90
_$VARIANTS$_Ld90:
	.short	0
	.long	_$VARIANTS$_Ld91
	.align 2
.globl	_$VARIANTS$_Ld91
_$VARIANTS$_Ld91:
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_EVARIANTOVERFLOWERROR
_INIT_VARIANTS_EVARIANTOVERFLOWERROR:
	.byte	15,21
	.ascii	"EVariantOverflowError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_EVARIANTOVERFLOWERROR
_RTTI_VARIANTS_EVARIANTOVERFLOWERROR:
	.byte	15,21
	.ascii	"EVariantOverflowError"
	.long	_VMT_VARIANTS_EVARIANTOVERFLOWERROR
	.long	_RTTI_SYSUTILS_EVARIANTERROR
	.short	0
	.byte	8
	.ascii	"variants"
	.short	0

.const_data
	.align 2
.globl	_$VARIANTS$_Ld93
_$VARIANTS$_Ld93:
	.short	0
	.long	_$VARIANTS$_Ld94
	.align 2
.globl	_$VARIANTS$_Ld94
_$VARIANTS$_Ld94:
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_EVARIANTINVALIDARGERROR
_INIT_VARIANTS_EVARIANTINVALIDARGERROR:
	.byte	15,23
	.ascii	"EVariantInvalidArgError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_EVARIANTINVALIDARGERROR
_RTTI_VARIANTS_EVARIANTINVALIDARGERROR:
	.byte	15,23
	.ascii	"EVariantInvalidArgError"
	.long	_VMT_VARIANTS_EVARIANTINVALIDARGERROR
	.long	_RTTI_SYSUTILS_EVARIANTERROR
	.short	0
	.byte	8
	.ascii	"variants"
	.short	0

.const_data
	.align 2
.globl	_$VARIANTS$_Ld96
_$VARIANTS$_Ld96:
	.short	0
	.long	_$VARIANTS$_Ld97
	.align 2
.globl	_$VARIANTS$_Ld97
_$VARIANTS$_Ld97:
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_EVARIANTBADVARTYPEERROR
_INIT_VARIANTS_EVARIANTBADVARTYPEERROR:
	.byte	15,23
	.ascii	"EVariantBadVarTypeError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_EVARIANTBADVARTYPEERROR
_RTTI_VARIANTS_EVARIANTBADVARTYPEERROR:
	.byte	15,23
	.ascii	"EVariantBadVarTypeError"
	.long	_VMT_VARIANTS_EVARIANTBADVARTYPEERROR
	.long	_RTTI_SYSUTILS_EVARIANTERROR
	.short	0
	.byte	8
	.ascii	"variants"
	.short	0

.const_data
	.align 2
.globl	_$VARIANTS$_Ld99
_$VARIANTS$_Ld99:
	.short	0
	.long	_$VARIANTS$_Ld100
	.align 2
.globl	_$VARIANTS$_Ld100
_$VARIANTS$_Ld100:
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_EVARIANTBADINDEXERROR
_INIT_VARIANTS_EVARIANTBADINDEXERROR:
	.byte	15,21
	.ascii	"EVariantBadIndexError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_EVARIANTBADINDEXERROR
_RTTI_VARIANTS_EVARIANTBADINDEXERROR:
	.byte	15,21
	.ascii	"EVariantBadIndexError"
	.long	_VMT_VARIANTS_EVARIANTBADINDEXERROR
	.long	_RTTI_SYSUTILS_EVARIANTERROR
	.short	0
	.byte	8
	.ascii	"variants"
	.short	0

.const_data
	.align 2
.globl	_$VARIANTS$_Ld102
_$VARIANTS$_Ld102:
	.short	0
	.long	_$VARIANTS$_Ld103
	.align 2
.globl	_$VARIANTS$_Ld103
_$VARIANTS$_Ld103:
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_EVARIANTARRAYLOCKEDERROR
_INIT_VARIANTS_EVARIANTARRAYLOCKEDERROR:
	.byte	15,24
	.ascii	"EVariantArrayLockedError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_EVARIANTARRAYLOCKEDERROR
_RTTI_VARIANTS_EVARIANTARRAYLOCKEDERROR:
	.byte	15,24
	.ascii	"EVariantArrayLockedError"
	.long	_VMT_VARIANTS_EVARIANTARRAYLOCKEDERROR
	.long	_RTTI_SYSUTILS_EVARIANTERROR
	.short	0
	.byte	8
	.ascii	"variants"
	.short	0

.const_data
	.align 2
.globl	_$VARIANTS$_Ld105
_$VARIANTS$_Ld105:
	.short	0
	.long	_$VARIANTS$_Ld106
	.align 2
.globl	_$VARIANTS$_Ld106
_$VARIANTS$_Ld106:
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_EVARIANTNOTANARRAYERROR
_INIT_VARIANTS_EVARIANTNOTANARRAYERROR:
	.byte	15,23
	.ascii	"EVariantNotAnArrayError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_EVARIANTNOTANARRAYERROR
_RTTI_VARIANTS_EVARIANTNOTANARRAYERROR:
	.byte	15,23
	.ascii	"EVariantNotAnArrayError"
	.long	_VMT_VARIANTS_EVARIANTNOTANARRAYERROR
	.long	_RTTI_SYSUTILS_EVARIANTERROR
	.short	0
	.byte	8
	.ascii	"variants"
	.short	0

.const_data
	.align 2
.globl	_$VARIANTS$_Ld108
_$VARIANTS$_Ld108:
	.short	0
	.long	_$VARIANTS$_Ld109
	.align 2
.globl	_$VARIANTS$_Ld109
_$VARIANTS$_Ld109:
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_EVARIANTARRAYCREATEERROR
_INIT_VARIANTS_EVARIANTARRAYCREATEERROR:
	.byte	15,24
	.ascii	"EVariantArrayCreateError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_EVARIANTARRAYCREATEERROR
_RTTI_VARIANTS_EVARIANTARRAYCREATEERROR:
	.byte	15,24
	.ascii	"EVariantArrayCreateError"
	.long	_VMT_VARIANTS_EVARIANTARRAYCREATEERROR
	.long	_RTTI_SYSUTILS_EVARIANTERROR
	.short	0
	.byte	8
	.ascii	"variants"
	.short	0

.const_data
	.align 2
.globl	_$VARIANTS$_Ld111
_$VARIANTS$_Ld111:
	.short	0
	.long	_$VARIANTS$_Ld112
	.align 2
.globl	_$VARIANTS$_Ld112
_$VARIANTS$_Ld112:
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_EVARIANTNOTIMPLERROR
_INIT_VARIANTS_EVARIANTNOTIMPLERROR:
	.byte	15,20
	.ascii	"EVariantNotImplError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_EVARIANTNOTIMPLERROR
_RTTI_VARIANTS_EVARIANTNOTIMPLERROR:
	.byte	15,20
	.ascii	"EVariantNotImplError"
	.long	_VMT_VARIANTS_EVARIANTNOTIMPLERROR
	.long	_RTTI_SYSUTILS_EVARIANTERROR
	.short	0
	.byte	8
	.ascii	"variants"
	.short	0

.const_data
	.align 2
.globl	_$VARIANTS$_Ld114
_$VARIANTS$_Ld114:
	.short	0
	.long	_$VARIANTS$_Ld115
	.align 2
.globl	_$VARIANTS$_Ld115
_$VARIANTS$_Ld115:
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_EVARIANTOUTOFMEMORYERROR
_INIT_VARIANTS_EVARIANTOUTOFMEMORYERROR:
	.byte	15,24
	.ascii	"EVariantOutOfMemoryError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_EVARIANTOUTOFMEMORYERROR
_RTTI_VARIANTS_EVARIANTOUTOFMEMORYERROR:
	.byte	15,24
	.ascii	"EVariantOutOfMemoryError"
	.long	_VMT_VARIANTS_EVARIANTOUTOFMEMORYERROR
	.long	_RTTI_SYSUTILS_EVARIANTERROR
	.short	0
	.byte	8
	.ascii	"variants"
	.short	0

.const_data
	.align 2
.globl	_$VARIANTS$_Ld117
_$VARIANTS$_Ld117:
	.short	0
	.long	_$VARIANTS$_Ld118
	.align 2
.globl	_$VARIANTS$_Ld118
_$VARIANTS$_Ld118:
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_EVARIANTUNEXPECTEDERROR
_INIT_VARIANTS_EVARIANTUNEXPECTEDERROR:
	.byte	15,23
	.ascii	"EVariantUnexpectedError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_EVARIANTUNEXPECTEDERROR
_RTTI_VARIANTS_EVARIANTUNEXPECTEDERROR:
	.byte	15,23
	.ascii	"EVariantUnexpectedError"
	.long	_VMT_VARIANTS_EVARIANTUNEXPECTEDERROR
	.long	_RTTI_SYSUTILS_EVARIANTERROR
	.short	0
	.byte	8
	.ascii	"variants"
	.short	0

.const_data
	.align 2
.globl	_$VARIANTS$_Ld120
_$VARIANTS$_Ld120:
	.short	0
	.long	_$VARIANTS$_Ld121
	.align 2
.globl	_$VARIANTS$_Ld121
_$VARIANTS$_Ld121:
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_EVARIANTDISPATCHERROR
_INIT_VARIANTS_EVARIANTDISPATCHERROR:
	.byte	15,21
	.ascii	"EVariantDispatchError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_EVARIANTDISPATCHERROR
_RTTI_VARIANTS_EVARIANTDISPATCHERROR:
	.byte	15,21
	.ascii	"EVariantDispatchError"
	.long	_VMT_VARIANTS_EVARIANTDISPATCHERROR
	.long	_RTTI_SYSUTILS_EVARIANTERROR
	.short	0
	.byte	8
	.ascii	"variants"
	.short	0

.const_data
	.align 2
.globl	_$VARIANTS$_Ld123
_$VARIANTS$_Ld123:
	.short	0
	.long	_$VARIANTS$_Ld124
	.align 2
.globl	_$VARIANTS$_Ld124
_$VARIANTS$_Ld124:
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_EVARIANTRANGECHECKERROR
_INIT_VARIANTS_EVARIANTRANGECHECKERROR:
	.byte	15,23
	.ascii	"EVariantRangeCheckError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_EVARIANTRANGECHECKERROR
_RTTI_VARIANTS_EVARIANTRANGECHECKERROR:
	.byte	15,23
	.ascii	"EVariantRangeCheckError"
	.long	_VMT_VARIANTS_EVARIANTRANGECHECKERROR
	.long	_RTTI_VARIANTS_EVARIANTOVERFLOWERROR
	.short	0
	.byte	8
	.ascii	"variants"
	.short	0

.const_data
	.align 2
.globl	_$VARIANTS$_Ld126
_$VARIANTS$_Ld126:
	.short	0
	.long	_$VARIANTS$_Ld127
	.align 2
.globl	_$VARIANTS$_Ld127
_$VARIANTS$_Ld127:
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_EVARIANTINVALIDNULLOPERROR
_INIT_VARIANTS_EVARIANTINVALIDNULLOPERROR:
	.byte	15,26
	.ascii	"EVariantInvalidNullOpError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_EVARIANTINVALIDNULLOPERROR
_RTTI_VARIANTS_EVARIANTINVALIDNULLOPERROR:
	.byte	15,26
	.ascii	"EVariantInvalidNullOpError"
	.long	_VMT_VARIANTS_EVARIANTINVALIDNULLOPERROR
	.long	_RTTI_VARIANTS_EVARIANTINVALIDOPERROR
	.short	0
	.byte	8
	.ascii	"variants"
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_TVARIANTRELATIONSHIP
_INIT_VARIANTS_TVARIANTRELATIONSHIP:
	.byte	3,20
	.ascii	"TVariantRelationship"
	.byte	5
	.long	0,3,0
	.byte	7
	.ascii	"vrEqual"
	.byte	10
	.ascii	"vrLessThan"
	.byte	13
	.ascii	"vrGreaterThan"
	.byte	10
	.ascii	"vrNotEqual"
	.byte	8
	.ascii	"variants"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_TVARIANTRELATIONSHIP
_RTTI_VARIANTS_TVARIANTRELATIONSHIP:
	.byte	3,20
	.ascii	"TVariantRelationship"
	.byte	5
	.long	0,3,0
	.byte	7
	.ascii	"vrEqual"
	.byte	10
	.ascii	"vrLessThan"
	.byte	13
	.ascii	"vrGreaterThan"
	.byte	10
	.ascii	"vrNotEqual"
	.byte	8
	.ascii	"variants"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_TVARIANTRELATIONSHIP_s2o
_RTTI_VARIANTS_TVARIANTRELATIONSHIP_s2o:
	.long	4,0
	.long	_RTTI_VARIANTS_TVARIANTRELATIONSHIP+35
	.long	2
	.long	_RTTI_VARIANTS_TVARIANTRELATIONSHIP+54
	.long	1
	.long	_RTTI_VARIANTS_TVARIANTRELATIONSHIP+43
	.long	3
	.long	_RTTI_VARIANTS_TVARIANTRELATIONSHIP+68

.const_data
	.align 2
.globl	_RTTI_VARIANTS_TVARIANTRELATIONSHIP_o2s
_RTTI_VARIANTS_TVARIANTRELATIONSHIP_o2s:
	.long	0
	.long	_RTTI_VARIANTS_TVARIANTRELATIONSHIP+35
	.long	_RTTI_VARIANTS_TVARIANTRELATIONSHIP+43
	.long	_RTTI_VARIANTS_TVARIANTRELATIONSHIP+54
	.long	_RTTI_VARIANTS_TVARIANTRELATIONSHIP+68

.const_data
	.align 2
.globl	_INIT_VARIANTS_TNULLCOMPARERULE
_INIT_VARIANTS_TNULLCOMPARERULE:
	.byte	3,16
	.ascii	"TNullCompareRule"
	.byte	5
	.long	0,2,0
	.byte	8
	.ascii	"ncrError"
	.byte	9
	.ascii	"ncrStrict"
	.byte	8
	.ascii	"ncrLoose"
	.byte	8
	.ascii	"variants"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_TNULLCOMPARERULE
_RTTI_VARIANTS_TNULLCOMPARERULE:
	.byte	3,16
	.ascii	"TNullCompareRule"
	.byte	5
	.long	0,2,0
	.byte	8
	.ascii	"ncrError"
	.byte	9
	.ascii	"ncrStrict"
	.byte	8
	.ascii	"ncrLoose"
	.byte	8
	.ascii	"variants"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_TNULLCOMPARERULE_s2o
_RTTI_VARIANTS_TNULLCOMPARERULE_s2o:
	.long	3,0
	.long	_RTTI_VARIANTS_TNULLCOMPARERULE+31
	.long	2
	.long	_RTTI_VARIANTS_TNULLCOMPARERULE+50
	.long	1
	.long	_RTTI_VARIANTS_TNULLCOMPARERULE+40

.const_data
	.align 2
.globl	_RTTI_VARIANTS_TNULLCOMPARERULE_o2s
_RTTI_VARIANTS_TNULLCOMPARERULE_o2s:
	.long	0
	.long	_RTTI_VARIANTS_TNULLCOMPARERULE+31
	.long	_RTTI_VARIANTS_TNULLCOMPARERULE+40
	.long	_RTTI_VARIANTS_TNULLCOMPARERULE+50

.const_data
	.align 2
.globl	_INIT_VARIANTS_TBOOLEANTOSTRINGRULE
_INIT_VARIANTS_TBOOLEANTOSTRINGRULE:
	.byte	3,20
	.ascii	"TBooleanToStringRule"
	.byte	5
	.long	0,2,0
	.byte	7
	.ascii	"bsrAsIs"
	.byte	8
	.ascii	"bsrLower"
	.byte	8
	.ascii	"bsrUpper"
	.byte	8
	.ascii	"variants"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_TBOOLEANTOSTRINGRULE
_RTTI_VARIANTS_TBOOLEANTOSTRINGRULE:
	.byte	3,20
	.ascii	"TBooleanToStringRule"
	.byte	5
	.long	0,2,0
	.byte	7
	.ascii	"bsrAsIs"
	.byte	8
	.ascii	"bsrLower"
	.byte	8
	.ascii	"bsrUpper"
	.byte	8
	.ascii	"variants"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_TBOOLEANTOSTRINGRULE_s2o
_RTTI_VARIANTS_TBOOLEANTOSTRINGRULE_s2o:
	.long	3,0
	.long	_RTTI_VARIANTS_TBOOLEANTOSTRINGRULE+35
	.long	1
	.long	_RTTI_VARIANTS_TBOOLEANTOSTRINGRULE+43
	.long	2
	.long	_RTTI_VARIANTS_TBOOLEANTOSTRINGRULE+52

.const_data
	.align 2
.globl	_RTTI_VARIANTS_TBOOLEANTOSTRINGRULE_o2s
_RTTI_VARIANTS_TBOOLEANTOSTRINGRULE_o2s:
	.long	0
	.long	_RTTI_VARIANTS_TBOOLEANTOSTRINGRULE+35
	.long	_RTTI_VARIANTS_TBOOLEANTOSTRINGRULE+43
	.long	_RTTI_VARIANTS_TBOOLEANTOSTRINGRULE+52

.const_data
	.align 2
.globl	_INIT_VARIANTS_DEF65
_INIT_VARIANTS_DEF65:
	.byte	12
	.ascii	"\007Variant"
	.long	16,0
	.long	_INIT_SYSTEM_VARIANT
	.long	12

.const_data
	.align 2
.globl	_INIT_VARIANTS_DEF523
_INIT_VARIANTS_DEF523:
	.byte	21
	.ascii	"\011TDynArray"
	.long	4
	.long	_INIT_SYSTEM_POINTER
	.long	-1,0
	.byte	8
	.ascii	"variants"

.const_data
	.align 2
.globl	_INIT_VARIANTS_DEF529
_INIT_VARIANTS_DEF529:
	.byte	21
	.ascii	"\011TDynArray"
	.long	4
	.long	_INIT_SYSTEM_POINTER
	.long	-1,0
	.byte	8
	.ascii	"variants"

.const_data
	.align 2
.globl	_INIT_VARIANTS_TVARCOMPARERESULT
_INIT_VARIANTS_TVARCOMPARERESULT:
	.byte	3,17
	.ascii	"TVarCompareResult"
	.byte	5
	.long	0,2,0
	.byte	10
	.ascii	"crLessThan"
	.byte	7
	.ascii	"crEqual"
	.byte	13
	.ascii	"crGreaterThan"
	.byte	8
	.ascii	"variants"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_TVARCOMPARERESULT
_RTTI_VARIANTS_TVARCOMPARERESULT:
	.byte	3,17
	.ascii	"TVarCompareResult"
	.byte	5
	.long	0,2,0
	.byte	10
	.ascii	"crLessThan"
	.byte	7
	.ascii	"crEqual"
	.byte	13
	.ascii	"crGreaterThan"
	.byte	8
	.ascii	"variants"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_TVARCOMPARERESULT_s2o
_RTTI_VARIANTS_TVARCOMPARERESULT_s2o:
	.long	3,1
	.long	_RTTI_VARIANTS_TVARCOMPARERESULT+43
	.long	2
	.long	_RTTI_VARIANTS_TVARCOMPARERESULT+51
	.long	0
	.long	_RTTI_VARIANTS_TVARCOMPARERESULT+32

.const_data
	.align 2
.globl	_RTTI_VARIANTS_TVARCOMPARERESULT_o2s
_RTTI_VARIANTS_TVARCOMPARERESULT_o2s:
	.long	0
	.long	_RTTI_VARIANTS_TVARCOMPARERESULT+32
	.long	_RTTI_VARIANTS_TVARCOMPARERESULT+43
	.long	_RTTI_VARIANTS_TVARCOMPARERESULT+51

.const_data
	.align 2
.globl	_$VARIANTS$_Ld132
_$VARIANTS$_Ld132:
	.short	0
	.long	_$VARIANTS$_Ld133
	.align 2
.globl	_$VARIANTS$_Ld133
_$VARIANTS$_Ld133:
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_TCUSTOMVARIANTTYPE
_INIT_VARIANTS_TCUSTOMVARIANTTYPE:
	.byte	15,18
	.ascii	"TCustomVariantType"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_TCUSTOMVARIANTTYPE
_RTTI_VARIANTS_TCUSTOMVARIANTTYPE:
	.byte	15,18
	.ascii	"TCustomVariantType"
	.long	_VMT_VARIANTS_TCUSTOMVARIANTTYPE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"variants"
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_TCUSTOMVARIANTTYPECLASS
_INIT_VARIANTS_TCUSTOMVARIANTTYPECLASS:
	.byte	0
	.ascii	"\027TCustomVariantTypeClass"

.const_data
	.align 2
.globl	_RTTI_VARIANTS_TCUSTOMVARIANTTYPECLASS
_RTTI_VARIANTS_TCUSTOMVARIANTTYPECLASS:
	.byte	0
	.ascii	"\027TCustomVariantTypeClass"

.const_data
	.align 2
.globl	_INIT_VARIANTS_TVARDATAARRAY
_INIT_VARIANTS_TVARDATAARRAY:
	.byte	21
	.ascii	"\015TVarDataArray"
	.long	16
	.long	_INIT_SYSTEM_TVARDATA
	.long	-1,0
	.byte	8
	.ascii	"variants"

.const_data
	.align 2
.globl	_RTTI_VARIANTS_TVARDATAARRAY
_RTTI_VARIANTS_TVARDATAARRAY:
	.byte	21
	.ascii	"\015TVarDataArray"
	.long	16
	.long	_RTTI_SYSTEM_TVARDATA
	.long	-1,0
	.byte	8
	.ascii	"variants"

.const_data
	.align 2
.globl	_INIT_VARIANTS_IVARINVOKEABLE
_INIT_VARIANTS_IVARINVOKEABLE:
	.byte	14,14
	.ascii	"IVarInvokeable"
	.long	4

.const_data
	.align 2
.globl	_RTTI_VARIANTS_IVARINVOKEABLE
_RTTI_VARIANTS_IVARINVOKEABLE:
	.byte	14,14
	.ascii	"IVarInvokeable"
	.long	_RTTI_SYSTEM_IUNKNOWN
	.byte	9
	.long	481713234
	.short	48075,16806
	.byte	158,88,127,185,22,190,235,45,8
	.ascii	"variants"
	.byte	38
	.ascii	"{1CB65C52-BBCB-41A6-9E58-7FB916BEEB2D}"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld138
_$VARIANTS$_Ld138:
	.short	0
	.long	_$VARIANTS$_Ld139
	.align 2
.globl	_$VARIANTS$_Ld139
_$VARIANTS$_Ld139:
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_TINVOKEABLEVARIANTTYPE
_INIT_VARIANTS_TINVOKEABLEVARIANTTYPE:
	.byte	15,22
	.ascii	"TInvokeableVariantType"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_TINVOKEABLEVARIANTTYPE
_RTTI_VARIANTS_TINVOKEABLEVARIANTTYPE:
	.byte	15,22
	.ascii	"TInvokeableVariantType"
	.long	_VMT_VARIANTS_TINVOKEABLEVARIANTTYPE
	.long	_RTTI_VARIANTS_TCUSTOMVARIANTTYPE
	.short	0
	.byte	8
	.ascii	"variants"
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_IVARINSTANCEREFERENCE
_INIT_VARIANTS_IVARINSTANCEREFERENCE:
	.byte	14,21
	.ascii	"IVarInstanceReference"
	.long	4

.const_data
	.align 2
.globl	_RTTI_VARIANTS_IVARINSTANCEREFERENCE
_RTTI_VARIANTS_IVARINSTANCEREFERENCE:
	.byte	14,21
	.ascii	"IVarInstanceReference"
	.long	_RTTI_SYSTEM_IUNKNOWN
	.byte	9
	.long	1545037826
	.short	16265,17037
	.byte	133,14,159,84,245,12,34,147,8
	.ascii	"variants"
	.byte	38
	.ascii	"{5C176802-3F89-428D-850E-9F54F50C2293}"

.const_data
	.align 2
.globl	_$VARIANTS$_Ld144
_$VARIANTS$_Ld144:
	.short	0
	.long	_$VARIANTS$_Ld145
	.align 2
.globl	_$VARIANTS$_Ld145
_$VARIANTS$_Ld145:
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_TPUBLISHABLEVARIANTTYPE
_INIT_VARIANTS_TPUBLISHABLEVARIANTTYPE:
	.byte	15,23
	.ascii	"TPublishableVariantType"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_VARIANTS_TPUBLISHABLEVARIANTTYPE
_RTTI_VARIANTS_TPUBLISHABLEVARIANTTYPE:
	.byte	15,23
	.ascii	"TPublishableVariantType"
	.long	_VMT_VARIANTS_TPUBLISHABLEVARIANTTYPE
	.long	_RTTI_VARIANTS_TINVOKEABLEVARIANTTYPE
	.short	0
	.byte	8
	.ascii	"variants"
	.short	0

.const_data
	.align 2
.globl	_INIT_VARIANTS_TANYPROC
_INIT_VARIANTS_TANYPROC:
	.byte	23,8
	.ascii	"TAnyProc"

.const_data
	.align 2
.globl	_RTTI_VARIANTS_TANYPROC
_RTTI_VARIANTS_TANYPROC:
	.byte	23,8
	.ascii	"TAnyProc"

.const_data
	.align 2
.globl	_INIT_VARIANTS_TVARDISPPROC
_INIT_VARIANTS_TVARDISPPROC:
	.byte	23,12
	.ascii	"TVarDispProc"

.const_data
	.align 2
.globl	_RTTI_VARIANTS_TVARDISPPROC
_RTTI_VARIANTS_TVARDISPPROC:
	.byte	23,12
	.ascii	"TVarDispProc"

.const_data
	.align 2
.globl	_INIT_VARIANTS_DEF621
_INIT_VARIANTS_DEF621:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_VARIANTS_DEF625
_INIT_VARIANTS_DEF625:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_VARIANTS_DEF630
_INIT_VARIANTS_DEF630:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_VARIANTS_DEF633
_INIT_VARIANTS_DEF633:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_VARIANTS_DEF644
_INIT_VARIANTS_DEF644:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_VARIANTS_DEF663
_INIT_VARIANTS_DEF663:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_VARIANTS_DEF647
_INIT_VARIANTS_DEF647:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_VARIANTS_DEF650
_INIT_VARIANTS_DEF650:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_VARIANTS_DEF179
_INIT_VARIANTS_DEF179:
	.byte	12
	.ascii	"\000"
	.long	4,21
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_VARIANTS_DEF723
_INIT_VARIANTS_DEF723:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_VARIANTS_DEF729
_INIT_VARIANTS_DEF729:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_VARIANTS_DEF201
_INIT_VARIANTS_DEF201:
	.byte	21
	.ascii	"\000"
	.long	4
	.long	_INIT_VARIANTS_TCUSTOMVARIANTTYPE
	.long	-1,0
	.byte	8
	.ascii	"variants"

.const_data
	.align 2
.globl	_INIT_VARIANTS_DEF215
_INIT_VARIANTS_DEF215:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_VARIANTS_TDYNARRAYBOUNDS
_INIT_VARIANTS_TDYNARRAYBOUNDS:
	.byte	21
	.ascii	"\017tdynarraybounds"
	.long	4
	.long	_INIT_SYSTEM_LONGINT
	.long	3,0
	.byte	8
	.ascii	"variants"

.const_data
	.align 2
.globl	_INIT_VARIANTS_TDYNARRAYPOSITIONS
_INIT_VARIANTS_TDYNARRAYPOSITIONS:
	.byte	21
	.ascii	"\022tdynarraypositions"
	.long	4
	.long	_INIT_SYSTEM_POINTER
	.long	-1,0
	.byte	8
	.ascii	"variants"

.const_data
	.align 2
.globl	_INIT_VARIANTS_TDYNARRAYITER
_INIT_VARIANTS_TDYNARRAYITER:
	.byte	16,13
	.ascii	"tdynarrayiter"
	.long	28,4
	.long	_INIT_VARIANTS_TDYNARRAYBOUNDS
	.long	0
	.long	_INIT_VARIANTS_TDYNARRAYBOUNDS
	.long	4
	.long	_INIT_VARIANTS_TDYNARRAYBOUNDS
	.long	8
	.long	_INIT_VARIANTS_TDYNARRAYPOSITIONS
	.long	12
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
L_VMT_SYSUTILS_EVARIANTERROR$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EVARIANTERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld41$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld41
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_VARIANTS_TDYNARRAYBOUNDS$non_lazy_ptr:
.indirect_symbol _INIT_VARIANTS_TDYNARRAYBOUNDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_VARIANTS_TDYNARRAYPOSITIONS$non_lazy_ptr:
.indirect_symbol _INIT_VARIANTS_TDYNARRAYPOSITIONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_VARIANTS_TDYNARRAYITER$non_lazy_ptr:
.indirect_symbol _INIT_VARIANTS_TDYNARRAYITER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSTEM_VARCLEARPROC$non_lazy_ptr:
.indirect_symbol _TC_SYSTEM_VARCLEARPROC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_VARIANTS_NULLSTRICTCONVERT$non_lazy_ptr:
.indirect_symbol _TC_VARIANTS_NULLSTRICTCONVERT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_VARIANTS_NULLASSTRINGVALUE$non_lazy_ptr:
.indirect_symbol _TC_VARIANTS_NULLASSTRINGVALUE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld43$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld43
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld44$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld44
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_VARIANTS_SERRINVALIDINTEGERRANGE$non_lazy_ptr:
.indirect_symbol _RESSTR_VARIANTS_SERRINVALIDINTEGERRANGE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_VARIANTS_PACKVARCREATION$non_lazy_ptr:
.indirect_symbol _TC_VARIANTS_PACKVARCREATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_VARIANTS_VARTYPETOCOMMONTYPE$non_lazy_ptr:
.indirect_symbol _TC_VARIANTS_VARTYPETOCOMMONTYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_VARIANTS_NULLEQUALITYRULE$non_lazy_ptr:
.indirect_symbol _TC_VARIANTS_NULLEQUALITYRULE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_VARIANTS_DOVARCMPNULL$crcE32A7B0D_RESULTMAP$non_lazy_ptr:
.indirect_symbol _TC_VARIANTS_DOVARCMPNULL$crcE32A7B0D_RESULTMAP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_VARIANTS_NULLMAGNITUDERULE$non_lazy_ptr:
.indirect_symbol _TC_VARIANTS_NULLMAGNITUDERULE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_WIDESTRINGMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_VARIANTS_FINDCMPCOMMONTYPE$non_lazy_ptr:
.indirect_symbol _TC_VARIANTS_FINDCMPCOMMONTYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_ERANGEERROR$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_ERANGEERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EINTOVERFLOW$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EINTOVERFLOW
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSTEM_VARCOPYPROC$non_lazy_ptr:
.indirect_symbol _TC_SYSTEM_VARCOPYPROC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld45$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld45
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld46$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld46
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld47$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld47
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_VARIANTS_FINDOPCOMMONTYPE$non_lazy_ptr:
.indirect_symbol _TC_VARIANTS_FINDOPCOMMONTYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_VARIANTS_SYSVARNEG$VARIANT_BOOLMAP$non_lazy_ptr:
.indirect_symbol _TC_VARIANTS_SYSVARNEG$VARIANT_BOOLMAP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_SYSTEM_VARIANT$non_lazy_ptr:
.indirect_symbol _INIT_SYSTEM_VARIANT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_VARIANTS_CLEARANYPROC$non_lazy_ptr:
.indirect_symbol _U_VARIANTS_CLEARANYPROC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_VARIANTS_TVARIANTARRAYITERATOR$non_lazy_ptr:
.indirect_symbol _VMT_VARIANTS_TVARIANTARRAYITERATOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_VARIANTS_REFANYPROC$non_lazy_ptr:
.indirect_symbol _U_VARIANTS_REFANYPROC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VARIANTS_DOVARCOPY$TVARDATA$TVARDATA$non_lazy_ptr:
.indirect_symbol _VARIANTS_DOVARCOPY$TVARDATA$TVARDATA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_VARIANTS_OLEVARIANTINT64ASDOUBLE$non_lazy_ptr:
.indirect_symbol _TC_VARIANTS_OLEVARIANTINT64ASDOUBLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VARIANTS_DOOLEVARFROMVAR$TVARDATA$TVARDATA$non_lazy_ptr:
.indirect_symbol _VARIANTS_DOOLEVARFROMVAR$TVARDATA$TVARDATA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_VARIANTS_VARDISPPROC$non_lazy_ptr:
.indirect_symbol _U_VARIANTS_VARDISPPROC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_VARIANTS_PREVVARIANTMANAGER$non_lazy_ptr:
.indirect_symbol _U_VARIANTS_PREVVARIANTMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_VARIANTS_SYSVARIANTMANAGER$non_lazy_ptr:
.indirect_symbol _TC_VARIANTS_SYSVARIANTMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_VARIANTS_SERRVARISEMPTY$non_lazy_ptr:
.indirect_symbol _RESSTR_VARIANTS_SERRVARISEMPTY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld48$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld48
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_VARIANTS_TDYNARRAYITER$non_lazy_ptr:
.indirect_symbol _VMT_VARIANTS_TDYNARRAYITER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_VARIANTS_CUSTOMVARIANTTYPELOCK$non_lazy_ptr:
.indirect_symbol _U_VARIANTS_CUSTOMVARIANTTYPELOCK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_VARIANTS_CUSTOMVARIANTTYPES$non_lazy_ptr:
.indirect_symbol _U_VARIANTS_CUSTOMVARIANTTYPES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_VARIANTS_INVALIDCUSTOMVARIANTTYPE$non_lazy_ptr:
.indirect_symbol _U_VARIANTS_INVALIDCUSTOMVARIANTTYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SDISPATCHERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SDISPATCHERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_VARIANTS_EVARIANTDISPATCHERROR$non_lazy_ptr:
.indirect_symbol _VMT_VARIANTS_EVARIANTDISPATCHERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld50$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld50
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld52$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld52
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld54$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld54
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld56$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld56
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_VARIANTS_CUSTOMVARIANTCURRTYPE$non_lazy_ptr:
.indirect_symbol _U_VARIANTS_CUSTOMVARIANTCURRTYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARTYPETOOMANYCUSTOM$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARTYPETOOMANYCUSTOM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARTYPEOUTOFRANGEWITHPREFIX$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARTYPEOUTOFRANGEWITHPREFIX
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_VARIANTS_DEF201$non_lazy_ptr:
.indirect_symbol _INIT_VARIANTS_DEF201
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARTYPENOTUSABLEWITHPREFIX$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARTYPENOTUSABLEWITHPREFIX
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARTYPEALREADYUSEDWITHPREFIX$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARTYPEALREADYUSEDWITHPREFIX
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld58$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld58
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld60$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld60
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld62$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld62
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_VARIANTS_TVARDATAARRAY$non_lazy_ptr:
.indirect_symbol _INIT_VARIANTS_TVARDATAARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SINVALIDVARCAST$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SINVALIDVARCAST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_VARIANTS_EVARIANTTYPECASTERROR$non_lazy_ptr:
.indirect_symbol _VMT_VARIANTS_EVARIANTTYPECASTERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARTYPECOULDNOTCONVERT$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARTYPECOULDNOTCONVERT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld64$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld64
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SINVALIDVAROP$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SINVALIDVAROP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_VARIANTS_EVARIANTINVALIDOPERROR$non_lazy_ptr:
.indirect_symbol _VMT_VARIANTS_EVARIANTINVALIDOPERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_VARIANTS_VAROPASTEXT$non_lazy_ptr:
.indirect_symbol _TC_VARIANTS_VAROPASTEXT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SINVALIDBINARYVAROP$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SINVALIDBINARYVAROP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SINVALIDUNARYVAROP$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SINVALIDUNARYVAROP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SINVALIDVARNULLOP$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SINVALIDVARNULLOP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARPARAMNOTFOUND$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARPARAMNOTFOUND
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_VARIANTS_EVARIANTPARAMNOTFOUNDERROR$non_lazy_ptr:
.indirect_symbol _VMT_VARIANTS_EVARIANTPARAMNOTFOUNDERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARBADTYPE$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARBADTYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_VARIANTS_EVARIANTBADVARTYPEERROR$non_lazy_ptr:
.indirect_symbol _VMT_VARIANTS_EVARIANTBADVARTYPEERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVAROVERFLOW$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVAROVERFLOW
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_VARIANTS_EVARIANTOVERFLOWERROR$non_lazy_ptr:
.indirect_symbol _VMT_VARIANTS_EVARIANTOVERFLOWERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARTYPECONVERTOVERFLOW$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARTYPECONVERTOVERFLOW
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARTYPERANGECHECK1$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARTYPERANGECHECK1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARTYPERANGECHECK2$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARTYPERANGECHECK2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARARRAYBOUNDS$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARARRAYBOUNDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_VARIANTS_EVARIANTBADINDEXERROR$non_lazy_ptr:
.indirect_symbol _VMT_VARIANTS_EVARIANTBADINDEXERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARARRAYLOCKED$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARARRAYLOCKED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_VARIANTS_EVARIANTARRAYLOCKEDERROR$non_lazy_ptr:
.indirect_symbol _VMT_VARIANTS_EVARIANTARRAYLOCKEDERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARNOTIMPLEMENTED$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARNOTIMPLEMENTED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_VARIANTS_EVARIANTNOTIMPLERROR$non_lazy_ptr:
.indirect_symbol _VMT_VARIANTS_EVARIANTNOTIMPLERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SOUTOFMEMORY$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SOUTOFMEMORY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_VARIANTS_EVARIANTOUTOFMEMORYERROR$non_lazy_ptr:
.indirect_symbol _VMT_VARIANTS_EVARIANTOUTOFMEMORYERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARINVALID$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARINVALID
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_VARIANTS_EVARIANTINVALIDARGERROR$non_lazy_ptr:
.indirect_symbol _VMT_VARIANTS_EVARIANTINVALIDARGERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARINVALID1$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARINVALID1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARUNEXPECTED$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARUNEXPECTED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_VARIANTS_EVARIANTUNEXPECTEDERROR$non_lazy_ptr:
.indirect_symbol _VMT_VARIANTS_EVARIANTUNEXPECTEDERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARARRAYCREATE$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARARRAYCREATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_VARIANTS_EVARIANTARRAYCREATEERROR$non_lazy_ptr:
.indirect_symbol _VMT_VARIANTS_EVARIANTARRAYCREATEERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SINVALIDVAROPWITHHRESULTWITHPREFIX$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SINVALIDVAROPWITHHRESULTWITHPREFIX
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_ECONVERTERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EOVERFLOW$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EOVERFLOW
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING_NAMES$non_lazy_ptr:
.indirect_symbol _TC_VARIANTS_VARTYPEASTEXT$WORD$$ANSISTRING_NAMES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld66$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld66
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld68$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld68
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld70$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld70
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld72$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld72
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld74$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld74
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RTLCONSTS_SERRPROPERTYNOTFOUND$non_lazy_ptr:
.indirect_symbol _RESSTR_RTLCONSTS_SERRPROPERTYNOTFOUND
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_TYPINFO_EPROPERTYERROR$non_lazy_ptr:
.indirect_symbol _VMT_TYPINFO_EPROPERTYERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_TYPINFO_EPROPERTYCONVERTERROR$non_lazy_ptr:
.indirect_symbol _VMT_TYPINFO_EPROPERTYCONVERTERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld76$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld76
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RTLCONSTS_SRANGEERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_RTLCONSTS_SRANGEERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARIANTS$_Ld78$non_lazy_ptr:
.indirect_symbol _$VARIANTS$_Ld78
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_VARIANTS_EMPTYPARAM$non_lazy_ptr:
.indirect_symbol _U_VARIANTS_EMPTYPARAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VARIANTS_DOVARCLEAR$TVARDATA$non_lazy_ptr:
.indirect_symbol _VARIANTS_DOVARCLEAR$TVARDATA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VARIANTS_DOVARADDREF$TVARDATA$non_lazy_ptr:
.indirect_symbol _VARIANTS_DOVARADDREF$TVARDATA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSTEM_VARADDREFPROC$non_lazy_ptr:
.indirect_symbol _TC_SYSTEM_VARADDREFPROC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VARIANTS_GETVARIANTPROP$TOBJECT$PPROPINFO$$VARIANT$non_lazy_ptr:
.indirect_symbol _VARIANTS_GETVARIANTPROP$TOBJECT$PPROPINFO$$VARIANT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_TYPINFO_ONGETVARIANTPROP$non_lazy_ptr:
.indirect_symbol _TC_TYPINFO_ONGETVARIANTPROP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VARIANTS_SETVARIANTPROP$TOBJECT$PPROPINFO$VARIANT$non_lazy_ptr:
.indirect_symbol _VARIANTS_SETVARIANTPROP$TOBJECT$PPROPINFO$VARIANT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_TYPINFO_ONSETVARIANTPROP$non_lazy_ptr:
.indirect_symbol _TC_TYPINFO_ONSETVARIANTPROP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VARIANTS_SETPROPVALUE$TOBJECT$ANSISTRING$VARIANT$non_lazy_ptr:
.indirect_symbol _VARIANTS_SETPROPVALUE$TOBJECT$ANSISTRING$VARIANT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_TYPINFO_ONSETPROPVALUE$non_lazy_ptr:
.indirect_symbol _TC_TYPINFO_ONSETPROPVALUE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VARIANTS_GETPROPVALUE$TOBJECT$ANSISTRING$BOOLEAN$$VARIANT$non_lazy_ptr:
.indirect_symbol _VARIANTS_GETPROPVALUE$TOBJECT$ANSISTRING$BOOLEAN$$VARIANT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_TYPINFO_ONGETPROPVALUE$non_lazy_ptr:
.indirect_symbol _TC_TYPINFO_ONGETPROPVALUE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_VARIANTS_I$non_lazy_ptr:
.indirect_symbol _U_VARIANTS_I
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_SYSTEM_OLEVARIANT$non_lazy_ptr:
.indirect_symbol _INIT_SYSTEM_OLEVARIANT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_VARIANTS_DEF179$non_lazy_ptr:
.indirect_symbol _INIT_VARIANTS_DEF179
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_VARIANTS_START
_RESSTR_VARIANTS_START:
	.long	_$VARIANTS$_Ld146
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_VARIANTS_SERRVARISEMPTY
_RESSTR_VARIANTS_SERRVARISEMPTY:
	.long	_$VARIANTS$_Ld150
	.long	_$VARIANTS$_Ld148
	.long	_$VARIANTS$_Ld148
	.long	183298105

.data
	.align 2
.globl	_RESSTR_VARIANTS_SERRINVALIDINTEGERRANGE
_RESSTR_VARIANTS_SERRINVALIDINTEGERRANGE:
	.long	_$VARIANTS$_Ld154
	.long	_$VARIANTS$_Ld152
	.long	_$VARIANTS$_Ld152
	.long	252207812

.data
	.align 2
.globl	_RESSTR_VARIANTS_END
_RESSTR_VARIANTS_END:
	.long	_RESSTR_VARIANTS_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

