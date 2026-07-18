# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DBF_PRSCORE_LINKVARIABLE$PEXPRESSIONREC
_DBF_PRSCORE_LINKVARIABLE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	12(%ebx),%eax
	call	L_DBF_PRSDEF_TEXPRWORD_$__GETISVARIABLE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj7
	jmp	Lj8
Lj7:
	movl	12(%ebx),%eax
	movl	12(%ebx),%edx
	movl	(%edx),%edx
	call	*144(%edx)
	movl	%eax,24(%ebx)
	movl	12(%ebx),%eax
	movl	12(%ebx),%edx
	movl	(%edx),%edx
	call	*140(%edx)
	movl	%eax,28(%ebx)
Lj8:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_LINKVARIABLES$PEXPRESSIONREC
_DBF_PRSCORE_LINKVARIABLES$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	$0,-8(%ebp)
	jmp	Lj26
	.align 2
Lj25:
	movl	-8(%ebp),%eax
	movl	104(%ebx,%eax,4),%eax
	call	L_DBF_PRSCORE_LINKVARIABLES$PEXPRESSIONREC$stub
	incl	-8(%ebp)
Lj26:
	movl	-8(%ebp),%eax
	cmpl	$6,%eax
	jl	Lj30
	jmp	Lj27
Lj30:
	movl	-8(%ebp),%eax
	movl	104(%ebx,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj25
	jmp	Lj27
Lj27:
	movl	-4(%ebp),%eax
	call	L_DBF_PRSCORE_LINKVARIABLE$PEXPRESSIONREC$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CREATE$$TCUSTOMEXPRESSIONPARSER
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CREATE$$TCUSTOMEXPRESSIONPARSER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj34
Lj34:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj35
	jmp	Lj36
Lj35:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj36:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj41
	jmp	Lj42
Lj41:
	jmp	Lj33
Lj42:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj45
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj49
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%eax
	movb	$36,4(%eax)
	movl	-8(%ebp),%eax
	movb	$46,6(%eax)
	movl	-8(%ebp),%eax
	movb	$44,5(%eax)
	movl	L_VMT_DBF_PRSSUPP_TOCOLLECTION$non_lazy_ptr-Lj34(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	-8(%ebp),%edx
	movl	%eax,8(%edx)
	movl	L_VMT_DBF_PRSDEF_TEXPRESSLIST$non_lazy_ptr-Lj34(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TEXPRESSLIST_$__CREATE$$TEXPRESSLIST$stub
	movl	-8(%ebp),%edx
	movl	%eax,32(%edx)
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	movl	$32,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,24(%edx)
	movl	-8(%ebp),%eax
	movl	$32,28(%eax)
	movl	-8(%ebp),%eax
	movb	$1,7(%eax)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
Lj49:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj50
	call	LFPC_RERAISE$stub
Lj50:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj88
	jmp	Lj87
Lj88:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj86
	jmp	Lj87
Lj86:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj87:
Lj45:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj47
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj92
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj93
	jmp	Lj94
Lj93:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj94:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj92:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj91
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj91:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj47
Lj47:
Lj33:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DESTROY
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj101
	jmp	Lj102
Lj101:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj102:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj119
	jmp	Lj118
Lj119:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj117
	jmp	Lj118
Lj117:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj118:
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__COMPILEEXPRESSION$ANSISTRING
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__COMPILEEXPRESSION$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-144(%ebp)
	call	Lj123
Lj123:
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
	jne	Lj124
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj129
	movl	-4(%eax),%eax
Lj129:
	cmpl	$0,%eax
	jg	Lj127
	jmp	Lj128
Lj127:
	movl	$0,-16(%ebp)
	movl	L_VMT_DBF_PRSDEF_TEXPRCOLLECTION$non_lazy_ptr-Lj123(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	%eax,-12(%ebp)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj140
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__PARSESTRING$ANSISTRING$TEXPRCOLLECTION$stub
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CHECK$TEXPRCOLLECTION$stub
	movl	-12(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKETREE$TEXPRCOLLECTION$LONGINT$LONGINT$$PEXPRESSIONREC$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CHECKARGUMENTS$PEXPRESSIONREC$stub
	movl	-16(%ebp),%eax
	call	L_DBF_PRSCORE_LINKVARIABLES$PEXPRESSIONREC$stub
	movl	-8(%ebp),%eax
	cmpb	$0,7(%eax)
	jne	Lj174
	jmp	Lj175
Lj174:
	leal	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__REMOVECONSTANTS$PEXPRESSIONREC$stub
Lj175:
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,24(%edx)
	movl	-8(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	leal	24(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	leal	20(%eax),%ecx
	leal	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKELINKEDLIST$PEXPRESSIONREC$PPCHAR$PPCHAR$PINTEGER$stub
Lj140:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj142
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj123(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj194
	movl	%eax,-100(%ebp)
	leal	-112(%ebp),%ecx
	leal	-136(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-140(%ebp)
	testl	%eax,%eax
	jne	Lj195
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DISPOSETREE$PEXPRESSIONREC$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj195:
	call	LFPC_POPADDRSTACK$stub
	movl	-140(%ebp),%eax
	testl	%eax,%eax
	je	Lj203
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj203:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj142
Lj194:
	call	LFPC_RERAISE$stub
Lj142:
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj128:
Lj124:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj125
	call	LFPC_RERAISE$stub
Lj125:
	movl	-144(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CHECKARGUMENTS$PEXPRESSIONREC
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CHECKARGUMENTS$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	call	Lj207
Lj207:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$-1,-28(%ebp)
	.align 2
Lj214:
	movl	%ebp,%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_CHECKARGUMENTS$PEXPRESSIONREC_INTERNALCHECKARGUMENTS$stub
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj219
	jmp	Lj220
Lj219:
	movl	%ebp,%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_CHECKARGUMENTS$PEXPRESSIONREC_FINDALTERNATE$stub
Lj220:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj216
	jmp	Lj223
Lj223:
	movb	-29(%ebp),%al
	testb	%al,%al
	je	Lj216
	jmp	Lj214
Lj216:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj227
	jmp	Lj225
Lj227:
	movl	-4(%ebp),%eax
	movb	21(%eax),%al
	testb	%al,%al
	je	Lj226
	jmp	Lj225
Lj226:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj224
	jmp	Lj225
Lj224:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	-24(%ebp),%ecx
	incl	%ecx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-24(%ebp),%edx
	call	L_CLASSES_TLIST_$__EXCHANGE$LONGINT$LONGINT$stub
	movl	-24(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	-4(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%eax
	movl	%eax,(%edx)
	movl	%ebp,%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_CHECKARGUMENTS$PEXPRESSIONREC_INTERNALCHECKARGUMENTS$stub
Lj225:
	movl	-20(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj249
	decl	%eax
	je	Lj250
	decl	%eax
	je	Lj251
	decl	%eax
	je	Lj252
	decl	%eax
	je	Lj253
	jmp	Lj249
Lj250:
	movl	L_VMT_DBF_PRSDEF_EPARSEREXCEPTION$non_lazy_ptr-Lj207(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld1$non_lazy_ptr-Lj207(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj207(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	jmp	Lj248
Lj251:
	movl	L_VMT_DBF_PRSDEF_EPARSEREXCEPTION$non_lazy_ptr-Lj207(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld3$non_lazy_ptr-Lj207(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj207(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	jmp	Lj248
Lj252:
	movl	L_VMT_DBF_PRSDEF_EPARSEREXCEPTION$non_lazy_ptr-Lj207(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld5$non_lazy_ptr-Lj207(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj207(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	jmp	Lj248
Lj253:
	movl	L_VMT_DBF_PRSDEF_EPARSEREXCEPTION$non_lazy_ptr-Lj207(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld7$non_lazy_ptr-Lj207(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj207(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	jmp	Lj248
Lj249:
Lj248:
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_CHECKARGUMENTS$PEXPRESSIONREC_INTERNALCHECKARGUMENTS
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_CHECKARGUMENTS$PEXPRESSIONREC_INTERNALCHECKARGUMENTS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj278
	movl	-4(%ebp),%eax
	movl	$0,-16(%eax)
	movl	-4(%ebp),%eax
	movl	$0,-20(%eax)
	movl	-4(%ebp),%eax
	movb	$0,-29(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%esi
	movl	12(%esi),%eax
	movl	12(%esi),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	testb	%al,%al
	jne	Lj293
	jmp	Lj292
Lj293:
	movl	12(%esi),%eax
	movl	12(%esi),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	testb	%al,%al
	je	Lj291
	jmp	Lj292
Lj291:
	movb	$1,%al
	jmp	Lj298
Lj292:
	movb	$0,%al
Lj298:
	cmpb	21(%esi),%al
	jne	Lj289
	jmp	Lj290
Lj289:
	movl	-4(%ebp),%eax
	movl	$4,-20(%eax)
	jmp	Lj278
Lj290:
	jmp	Lj302
	.align 2
Lj301:
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movl	104(%esi,%eax,4),%edx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CHECKARGUMENTS$PEXPRESSIONREC$stub
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movl	104(%esi,%eax,4),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-16(%edx),%edx
	movl	104(%esi,%edx,4),%edx
	movl	12(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movb	%al,%bl
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%edx
	movl	12(%esi),%eax
	movl	12(%esi),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	call	L_DBF_PRSDEF_EXPRCHARTOEXPRTYPE$CHAR$$TEXPRESSIONTYPE$stub
	cmpb	%al,%bl
	jne	Lj308
	jmp	Lj309
Lj308:
	movl	-4(%ebp),%eax
	movl	$2,-20(%eax)
Lj309:
	movl	-4(%ebp),%eax
	incl	-16(%eax)
Lj302:
	movl	-4(%ebp),%ebx
	movl	12(%esi),%eax
	movl	12(%esi),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	cmpl	-16(%ebx),%eax
	jg	Lj321
	jmp	Lj303
Lj321:
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movl	104(%esi,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj320
	jmp	Lj303
Lj320:
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	testl	%eax,%eax
	je	Lj301
	jmp	Lj303
Lj303:
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	testl	%eax,%eax
	je	Lj326
	jmp	Lj325
Lj326:
	movl	-4(%ebp),%ebx
	movl	12(%esi),%eax
	movl	12(%esi),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	cmpl	-16(%ebx),%eax
	jg	Lj324
	jmp	Lj325
Lj324:
	movl	-4(%ebp),%eax
	movl	$1,-20(%eax)
Lj325:
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	testl	%eax,%eax
	je	Lj333
	jmp	Lj332
Lj333:
	movl	-4(%ebp),%ebx
	movl	12(%esi),%eax
	movl	12(%esi),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	cmpl	-16(%ebx),%eax
	jl	Lj331
	jmp	Lj332
Lj331:
	movl	-4(%ebp),%eax
	movl	$3,-20(%eax)
Lj332:
Lj278:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj279
	call	LFPC_RERAISE$stub
Lj279:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_CHECKARGUMENTS$PEXPRESSIONREC_FINDALTERNATE
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_CHECKARGUMENTS$PEXPRESSIONREC_FINDALTERNATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	cmpl	$0,%eax
	jl	Lj338
	jmp	Lj339
Lj338:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	12(%edx),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ecx),%ecx
	movl	32(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
	movl	-4(%ebp),%edx
	movl	%eax,-24(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-24(%eax),%eax
	movl	%eax,-28(%edx)
Lj339:
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	cmpl	$0,%eax
	jge	Lj350
	jmp	Lj349
Lj350:
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	32(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	cmpl	-28(%ebx),%eax
	jg	Lj348
	jmp	Lj349
Lj348:
	movl	-4(%ebp),%eax
	incl	-28(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-28(%edx),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	-4(%ebp),%edx
	movl	%eax,-12(%edx)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-12(%edx),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ecx),%ecx
	movl	32(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
	movl	%eax,%ebx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	12(%edx),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ecx),%ecx
	movl	32(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ecx),%ecx
	movl	32(%ecx),%ecx
	movl	(%ecx),%esi
	movl	%ebx,%ecx
	call	*120(%esi)
	testl	%eax,%eax
	je	Lj359
	jmp	Lj360
Lj359:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	%eax,12(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	12(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	8(%ecx),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movb	$1,-29(%eax)
Lj360:
Lj349:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__RESULTCANVARY$PEXPRESSIONREC$$BOOLEAN
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__RESULTCANVARY$PEXPRESSIONREC$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	12(%ebx),%eax
	movl	12(%ebx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj389
	jmp	Lj390
Lj389:
	movl	12(%ebx),%eax
	movl	12(%ebx),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	%eax,%esi
	decl	%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj392
	decl	-16(%ebp)
	.align 2
Lj393:
	incl	-16(%ebp)
	movl	-16(%ebp),%eax
	movl	104(%ebx,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj398
	jmp	Lj397
Lj398:
	movl	-16(%ebp),%eax
	movl	104(%ebx,%eax,4),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__RESULTCANVARY$PEXPRESSIONREC$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj396
	jmp	Lj397
Lj396:
	movb	$1,-9(%ebp)
	jmp	Lj381
Lj397:
	cmpl	-16(%ebp),%esi
	jg	Lj393
Lj392:
Lj390:
Lj381:
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__REMOVECONSTANTS$PEXPRESSIONREC
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__REMOVECONSTANTS$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-108(%ebp)
	movl	%esi,-104(%ebp)
	movl	%edi,-100(%ebp)
	call	Lj406
Lj406:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-96(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj407
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__RESULTCANVARY$PEXPRESSIONREC$$BOOLEAN$stub
	testb	%al,%al
	je	Lj410
	jmp	Lj411
Lj410:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	call	L_DBF_PRSDEF_TEXPRWORD_$__GETISVARIABLE$$BOOLEAN$stub
	testb	%al,%al
	je	Lj416
	jmp	Lj417
Lj416:
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,24(%edx)
	movl	-8(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	leal	24(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	leal	20(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKELINKEDLIST$PEXPRESSIONREC$PPCHAR$PPCHAR$PINTEGER$stub
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj434
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__EVALUATECURRENT$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,%esi
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	cmpb	$1,%al
	jb	Lj447
	decb	%al
	je	Lj450
	decb	%al
	je	Lj448
	subb	$2,%al
	je	Lj449
	jmp	Lj447
Lj448:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movb	(%eax),%al
	movb	%al,(%esp)
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj406(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_DBF_PRSDEF_TBOOLEANCONSTANT$non_lazy_ptr-Lj406(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TBOOLEANCONSTANT_$__CREATE$ANSISTRING$BOOLEAN$$TBOOLEANCONSTANT$stub
	movl	%eax,12(%esi)
	jmp	Lj446
Lj449:
	movl	-8(%ebp),%eax
	movl	20(%eax),%edx
	movl	(%edx),%eax
	movl	%eax,(%esp)
	movl	4(%edx),%eax
	movl	%eax,4(%esp)
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj406(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_DBF_PRSDEF_TFLOATCONSTANT$non_lazy_ptr-Lj406(%ebx),%eax
	movl	$0,%edi
	movl	%eax,%edx
	movl	%edi,%eax
	call	L_DBF_PRSDEF_TFLOATCONSTANT_$__CREATEASDOUBLE$ANSISTRING$DOUBLE$$TFLOATCONSTANT$stub
	movl	%eax,12(%esi)
	jmp	Lj446
Lj450:
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	leal	-96(%ebp),%edx
	call	Lfpc_pchar_to_ansistr$stub
	movl	-96(%ebp),%ecx
	movl	L_VMT_DBF_PRSDEF_TSTRINGCONSTANT$non_lazy_ptr-Lj406(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TSTRINGCONSTANT_$__CREATE$ANSISTRING$$TSTRINGCONSTANT$stub
	movl	%eax,12(%esi)
	jmp	Lj446
Lj447:
Lj446:
	movl	12(%esi),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esi)
	movl	12(%esi),%eax
	movl	12(%esi),%edx
	movl	(%edx),%edx
	call	*144(%edx)
	movl	%eax,24(%esi)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	12(%esi),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
Lj434:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DISPOSELIST$PEXPRESSIONREC$stub
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj435
	decl	%eax
	testl	%eax,%eax
	je	Lj436
Lj436:
	call	LFPC_RERAISE$stub
Lj435:
Lj417:
	jmp	Lj501
Lj411:
	movl	-4(%ebp),%eax
	movl	(%eax),%esi
	movl	12(%esi),%eax
	movl	12(%esi),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	%eax,%edi
	decl	%edi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%edi
	jl	Lj505
	decl	-12(%ebp)
	.align 2
Lj506:
	incl	-12(%ebp)
	movl	-12(%ebp),%eax
	movl	104(%esi,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj509
	jmp	Lj510
Lj509:
	movl	-12(%ebp),%eax
	leal	104(%esi,%eax,4),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__REMOVECONSTANTS$PEXPRESSIONREC$stub
Lj510:
	cmpl	-12(%ebp),%edi
	jg	Lj506
Lj505:
Lj501:
Lj407:
	call	LFPC_POPADDRSTACK$stub
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj408
	call	LFPC_RERAISE$stub
Lj408:
	movl	-108(%ebp),%ebx
	movl	-104(%ebp),%esi
	movl	-100(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DISPOSETREE$PEXPRESSIONREC
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DISPOSETREE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj517
	jmp	Lj518
Lj517:
	movl	-4(%ebp),%ebx
	movl	12(%ebx),%eax
	testl	%eax,%eax
	jne	Lj521
	jmp	Lj522
Lj521:
	movl	12(%ebx),%eax
	movl	12(%ebx),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	%eax,%esi
	decl	%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj524
	decl	-12(%ebp)
	.align 2
Lj525:
	incl	-12(%ebp)
	movl	-12(%ebp),%eax
	movl	104(%ebx,%eax,4),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DISPOSETREE$PEXPRESSIONREC$stub
	cmpl	-12(%ebp),%esi
	jg	Lj525
Lj524:
Lj522:
	movl	8(%ebx),%eax
	testl	%eax,%eax
	jne	Lj532
	jmp	Lj533
Lj532:
	movl	8(%ebx),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj533:
	movl	-4(%ebp),%eax
	call	Lfpc_freemem$stub
Lj518:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DISPOSELIST$PEXPRESSIONREC
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DISPOSELIST$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj540
	jmp	Lj541
Lj540:
	.align 2
Lj542:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj547
	jmp	Lj548
Lj547:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj548:
	movl	$0,-16(%ebp)
	jmp	Lj554
	.align 2
Lj553:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	24(%eax,%edx,4),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	incl	-16(%ebp)
Lj554:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	104(%edx,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj553
	jmp	Lj555
Lj555:
	movl	-4(%ebp),%eax
	call	Lfpc_freemem$stub
	movl	-12(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj544
	jmp	Lj542
Lj544:
Lj541:
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKELINKEDLIST$PEXPRESSIONREC$PPCHAR$PPCHAR$PINTEGER
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKELINKEDLIST$PEXPRESSIONREC$PPCHAR$PPCHAR$PINTEGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj563
Lj563:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj564
	jmp	Lj565
Lj564:
	movl	$0,-16(%ebp)
	jmp	Lj569
	.align 2
Lj568:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	leal	104(%eax,%edx,4),%edx
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKELINKEDLIST$PEXPRESSIONREC$PPCHAR$PPCHAR$PINTEGER$stub
	incl	-16(%ebp)
Lj569:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movl	104(%eax,%edx,4),%eax
	testl	%eax,%eax
	jne	Lj568
	jmp	Lj570
Lj570:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	Lfpc_freemem$stub
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj585
Lj565:
	movl	-4(%ebp),%eax
	movl	(%eax),%ecx
	movl	12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%eax),%eax
	cmpl	(%edx),%eax
	seteb	20(%ecx)
	movl	12(%ebp),%eax
	incl	(%eax)
	movl	$0,-16(%ebp)
	jmp	Lj591
	.align 2
Lj590:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movl	104(%eax,%edx,4),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	-16(%ebp),%ecx
	movl	104(%edx,%ecx,4),%edx
	movl	12(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	-16(%ebp),%ecx
	movb	%al,96(%edx,%ecx,1)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	leal	24(%eax,%edx,4),%eax
	movl	$32,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%esi
	movl	-16(%ebp),%eax
	movl	24(%esi,%eax,4),%eax
	movl	%eax,48(%edx,%ecx,4)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movl	$32,72(%eax,%edx,4)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	leal	72(%eax,%edx,4),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	leal	48(%eax,%edx,4),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	leal	24(%eax,%edx,4),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	leal	104(%eax,%edx,4),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKELINKEDLIST$PEXPRESSIONREC$PPCHAR$PPCHAR$PINTEGER$stub
	incl	-16(%ebp)
Lj591:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movl	104(%eax,%edx,4),%eax
	testl	%eax,%eax
	jne	Lj590
	jmp	Lj592
Lj592:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_DBF_PRSDEF_TDYNAMICTYPE$non_lazy_ptr-Lj563(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TDYNAMICTYPE_$__CREATE$PPCHAR$PPCHAR$PINTEGER$$TDYNAMICTYPE$stub
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj627
	jmp	Lj628
Lj627:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,16(%edx)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,12(%edx)
	jmp	Lj633
Lj628:
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,12(%edx)
Lj633:
Lj585:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKETREE$TEXPRCOLLECTION$LONGINT$LONGINT$$PEXPRESSIONREC
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKETREE$TEXPRCOLLECTION$LONGINT$LONGINT$$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%esi,-48(%ebp)
	call	Lj639
Lj639:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-40(%ebp)
	jmp	Lj643
	.align 2
Lj642:
	incl	-40(%ebp)
Lj643:
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	cmpl	8(%ebp),%eax
	jl	Lj645
	jmp	Lj644
Lj645:
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$6,%al
	je	Lj642
	jmp	Lj644
Lj644:
	movl	8(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj657
	.align 2
Lj656:
	decl	-20(%ebp)
Lj657:
	movl	-20(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj659
	jmp	Lj658
Lj659:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$7,%al
	je	Lj656
	jmp	Lj658
Lj658:
	movl	8(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	cmpl	-40(%ebp),%edx
	jl	Lj668
	jmp	Lj669
Lj668:
	movl	8(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-40(%ebp)
Lj669:
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	-40(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj677
	.align 2
Lj676:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$6,%al
	jb	Lj680
	subb	$6,%al
	je	Lj681
	decb	%al
	je	Lj682
	jmp	Lj680
Lj681:
	incl	-40(%ebp)
	jmp	Lj679
Lj682:
	decl	-40(%ebp)
	movl	-40(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jl	Lj691
	jmp	Lj692
Lj691:
	movl	-40(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj692:
	jmp	Lj679
Lj680:
Lj679:
	incl	-20(%ebp)
Lj677:
	movl	8(%ebp),%edx
	movl	-40(%ebp),%eax
	subl	%eax,%edx
	cmpl	-20(%ebp),%edx
	jge	Lj695
	jmp	Lj678
Lj695:
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj676
	jmp	Lj678
Lj678:
	movl	-24(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj698
	jmp	Lj699
Lj698:
	movl	-40(%ebp),%eax
	addl	%eax,-8(%ebp)
	movl	-40(%ebp),%eax
	subl	%eax,8(%ebp)
Lj699:
	movl	8(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj700
	jmp	Lj701
Lj700:
	movl	$0,-16(%ebp)
	jmp	Lj638
Lj701:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,-16(%ebp)
	movl	8(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj708
	jmp	Lj709
Lj708:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	-16(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	-16(%ebp),%edx
	movl	8(%eax),%eax
	movl	%eax,(%edx)
	jmp	Lj638
Lj709:
	movl	$0,-40(%ebp)
	movl	$0,-24(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	%eax,-32(%ebp)
	movl	$-1,-36(%ebp)
	movl	8(%ebp),%esi
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj727
	decl	-20(%ebp)
	.align 2
Lj728:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-44(%ebp)
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj738
	jmp	Lj736
Lj738:
	movl	-44(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	testb	%al,%al
	jne	Lj737
	jmp	Lj736
Lj737:
	movl	-44(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	-36(%ebp),%eax
	jg	Lj735
	jmp	Lj736
Lj735:
	movl	-20(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-44(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-36(%ebp)
Lj736:
	movl	-44(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$6,%al
	jb	Lj746
	subb	$6,%al
	je	Lj747
	decb	%al
	je	Lj748
	jmp	Lj746
Lj747:
	incl	-40(%ebp)
	jmp	Lj745
Lj748:
	decl	-40(%ebp)
	jmp	Lj745
Lj746:
Lj745:
	cmpl	-20(%ebp),%esi
	jg	Lj728
Lj727:
	movl	-32(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj751
	jmp	Lj752
Lj751:
	movl	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	-16(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	-16(%ebp),%edx
	movl	8(%eax),%eax
	movl	%eax,(%edx)
	movl	-32(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj761
	jmp	Lj762
Lj761:
	movl	-32(%ebp),%eax
	decl	%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKETREE$TEXPRCOLLECTION$LONGINT$LONGINT$$PEXPRESSIONREC$stub
	movl	-16(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	%eax,104(%ecx,%edx,4)
	incl	-24(%ebp)
Lj762:
	movl	-32(%ebp),%eax
	cmpl	8(%ebp),%eax
	jl	Lj773
	jmp	Lj774
Lj773:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-32(%ebp),%ecx
	incl	%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKETREE$TEXPRCOLLECTION$LONGINT$LONGINT$$PEXPRESSIONREC$stub
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	%eax,104(%edx,%ecx,4)
Lj774:
	jmp	Lj785
Lj752:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*148(%edx)
	testb	%al,%al
	jne	Lj786
	jmp	Lj787
Lj786:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	-16(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	-16(%ebp),%edx
	movl	8(%eax),%eax
	movl	%eax,(%edx)
	movl	-16(%ebp),%eax
	movb	$1,21(%eax)
	movl	-8(%ebp),%eax
	incl	%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	$0,-40(%ebp)
	movl	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$6,%al
	je	Lj812
	jmp	Lj813
Lj812:
	incl	-40(%ebp)
	incl	-28(%ebp)
	jmp	Lj823
	.align 2
Lj822:
	incl	-32(%ebp)
	movl	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$6,%al
	jb	Lj826
	subb	$6,%al
	je	Lj827
	decb	%al
	je	Lj829
	decb	%al
	je	Lj828
	jmp	Lj826
Lj827:
	incl	-40(%ebp)
	jmp	Lj825
Lj828:
	movl	-40(%ebp),%eax
	cmpl	$1,%eax
	je	Lj838
	jmp	Lj839
Lj838:
	movl	-32(%ebp),%eax
	decl	%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKETREE$TEXPRCOLLECTION$LONGINT$LONGINT$$PEXPRESSIONREC$stub
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	%eax,104(%edx,%ecx,4)
	incl	-24(%ebp)
	movl	-32(%ebp),%eax
	incl	%eax
	movl	%eax,-28(%ebp)
Lj839:
	jmp	Lj825
Lj829:
	decl	-40(%ebp)
	jmp	Lj825
Lj826:
Lj825:
Lj823:
	movl	-32(%ebp),%eax
	cmpl	8(%ebp),%eax
	jl	Lj852
	jmp	Lj824
Lj852:
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	jne	Lj822
	jmp	Lj824
Lj824:
	movl	-32(%ebp),%eax
	decl	%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKETREE$TEXPRCOLLECTION$LONGINT$LONGINT$$PEXPRESSIONREC$stub
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	%eax,104(%edx,%ecx,4)
Lj813:
	jmp	Lj863
Lj787:
	movl	L_VMT_DBF_PRSDEF_EPARSEREXCEPTION$non_lazy_ptr-Lj639(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld9$non_lazy_ptr-Lj639(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La5:
	movl	%ebp,%ecx
	leal	La5-Lj639(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj863:
Lj785:
Lj638:
	movl	-16(%ebp),%eax
	movl	-52(%ebp),%ebx
	movl	-48(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__PARSESTRING$ANSISTRING$TEXPRCOLLECTION
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__PARSESTRING$ANSISTRING$TEXPRCOLLECTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-112(%ebp)
	movl	%esi,-108(%ebp)
	call	Lj871
Lj871:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-40(%ebp)
	movl	$0,-44(%ebp)
	movl	$0,-92(%ebp)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj876
	movl	$1,-28(%ebp)
	leal	-44(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj887
	movl	-4(%eax),%eax
Lj887:
	movl	%eax,-32(%ebp)
	.align 2
Lj888:
	movl	-44(%ebp),%edx
	movl	%ebp,%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_PARSESTRING$ANSISTRING$TEXPRCOLLECTION_READWORD$ANSISTRING$stub
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%ecx
	movl	-24(%ebp),%eax
	subl	%eax,%ecx
	movl	-24(%ebp),%edx
	movl	-44(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-92(%ebp),%eax
	leal	-40(%ebp),%edx
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	cmpb	$0,-13(%ebp)
	jne	Lj907
	jmp	Lj908
Lj907:
	movl	-12(%ebp),%eax
	movl	-40(%ebp),%edx
	movb	4(%eax),%al
	cmpb	(%edx),%al
	je	Lj909
	jmp	Lj910
Lj909:
	leal	-40(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movb	$36,(%eax)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	movl	-40(%ebp),%eax
	call	L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub
	leal	-92(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-92(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-40(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj910:
	movl	-40(%ebp),%eax
	movb	(%eax),%al
	cmpb	$39,%al
	je	Lj923
	jmp	Lj925
Lj925:
	movl	-40(%ebp),%eax
	movb	(%eax),%al
	cmpb	$34,%al
	je	Lj923
	jmp	Lj924
Lj923:
	movl	-40(%ebp),%ecx
	movl	L_VMT_DBF_PRSDEF_TSTRINGCONSTANT$non_lazy_ptr-Lj871(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TSTRINGCONSTANT_$__CREATE$ANSISTRING$$TSTRINGCONSTANT$stub
	movl	%eax,-48(%ebp)
	jmp	Lj934
Lj924:
	movl	-12(%ebp),%eax
	movb	6(%eax),%al
	movl	-40(%ebp),%edx
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj941
	jmp	Lj942
Lj941:
	leal	-40(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	-36(%ebp),%ecx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj871(%ebx),%edx
	movb	3(%edx),%dl
	movb	%dl,-1(%eax,%ecx,1)
	movl	-40(%ebp),%eax
	movl	%eax,(%esp)
	movl	-40(%ebp),%ecx
	movl	L_VMT_DBF_PRSDEF_TFLOATCONSTANT$non_lazy_ptr-Lj871(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFLOATCONSTANT_$__CREATE$ANSISTRING$ANSISTRING$$TFLOATCONSTANT$stub
	movl	%eax,-48(%ebp)
	jmp	Lj957
Lj942:
	movl	-40(%ebp),%eax
	call	L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub
	movl	%eax,%ecx
	movl	L_VMT_DBF_PRSDEF_TINTEGERCONSTANT$non_lazy_ptr-Lj871(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TINTEGERCONSTANT_$__CREATE$LONGINT$$TINTEGERCONSTANT$stub
	movl	%eax,-48(%ebp)
Lj957:
Lj934:
	movl	-48(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-48(%ebp),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	jmp	Lj976
Lj908:
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj979
	movl	-4(%eax),%eax
Lj979:
	cmpl	$0,%eax
	jg	Lj977
	jmp	Lj978
Lj977:
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-40(%ebp),%edx
	testl	%edx,%edx
	jne	Lj986
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj871(%ebx),%ecx
	movl	%ecx,%edx
Lj986:
	leal	-20(%ebp),%ecx
	movl	-12(%ebp),%esi
	movl	32(%esi),%esi
	movl	(%esi),%esi
	call	*140(%esi)
	testb	%al,%al
	jne	Lj980
	jmp	Lj981
Lj980:
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	jmp	Lj997
Lj981:
	movl	-40(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-40(%ebp),%edx
	testl	%edx,%edx
	jne	Lj1008
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj871(%ebx),%ecx
	movl	%ecx,%edx
Lj1008:
	leal	-20(%ebp),%ecx
	movl	-12(%ebp),%esi
	movl	32(%esi),%esi
	movl	(%esi),%esi
	call	*140(%esi)
	testb	%al,%al
	jne	Lj1002
	jmp	Lj1003
Lj1002:
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	jmp	Lj1019
Lj1003:
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	movl	L_$DBF_PRSCORE$_Ld11$non_lazy_ptr-Lj871(%ebx),%eax
	movl	%eax,-104(%ebp)
	movl	-40(%ebp),%eax
	movl	%eax,-100(%ebp)
	movl	L_$DBF_PRSCORE$_Ld13$non_lazy_ptr-Lj871(%ebx),%eax
	movl	%eax,-96(%ebp)
	leal	-104(%ebp),%edx
	leal	-92(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-92(%ebp),%ecx
	movl	L_VMT_DBF_PRSDEF_EPARSEREXCEPTION$non_lazy_ptr-Lj871(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La6:
	movl	%ebp,%ecx
	leal	La6-Lj871(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1019:
Lj997:
Lj978:
Lj976:
	movl	-28(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jg	Lj890
	jmp	Lj888
Lj890:
Lj876:
	call	LFPC_POPADDRSTACK$stub
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-40(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-40(%ebp)
	leal	-44(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-44(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj877
	call	LFPC_RERAISE$stub
Lj877:
	movl	-112(%ebp),%ebx
	movl	-108(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_PARSESTRING$ANSISTRING$TEXPRCOLLECTION_READWORD$ANSISTRING
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_PARSESTRING$ANSISTRING$TEXPRCOLLECTION_READWORD$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj875
Lj875:
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
	jne	Lj1044
	movl	-8(%ebp),%eax
	movb	$0,-13(%eax)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movl	%eax,-24(%edx)
	jmp	Lj1052
	.align 2
Lj1051:
	movl	-8(%ebp),%eax
	incl	-24(%eax)
Lj1052:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-24(%eax),%eax
	cmpl	-32(%edx),%eax
	jl	Lj1054
	jmp	Lj1053
Lj1054:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-24(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$32,%al
	je	Lj1051
	jmp	Lj1053
Lj1053:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-24(%eax),%eax
	movl	%eax,-28(%edx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-24(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj1057
	jmp	Lj1058
Lj1057:
	movl	-8(%ebp),%eax
	movl	-12(%eax),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movb	4(%edx),%dl
	cmpb	-1(%ecx,%eax,1),%dl
	je	Lj1059
	jmp	Lj1060
Lj1059:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$1,%cl
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_PARSESTRING$ANSISTRING$TEXPRCOLLECTION_READCONSTANT$crcC67E46C4$stub
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj1069
	jmp	Lj1070
Lj1069:
	movl	-8(%ebp),%eax
	movb	$0,-13(%eax)
	jmp	Lj1074
	.align 2
Lj1073:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj1074:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj1076
	jmp	Lj1075
Lj1076:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movzbl	-1(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj1077
	subl	$17,%eax
	cmpl	$26,%eax
	jb	Lj1077
	cmpl	$30,%eax
	stc
	je	Lj1077
	subl	$32,%eax
	cmpl	$26,%eax
	jb	Lj1077
Lj1077:
	jc	Lj1073
	jmp	Lj1075
Lj1075:
Lj1070:
	jmp	Lj1078
Lj1060:
	movl	-8(%ebp),%eax
	movl	-12(%eax),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movb	6(%edx),%dl
	cmpb	-1(%ecx,%eax,1),%dl
	je	Lj1079
	jmp	Lj1080
Lj1079:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_PARSESTRING$ANSISTRING$TEXPRCOLLECTION_READCONSTANT$crcC67E46C4$stub
	jmp	Lj1087
Lj1080:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$33,%al
	jb	Lj1089
	subb	$33,%al
	je	Lj1097
	decb	%al
	je	Lj1090
	subb	$2,%al
	jb	Lj1089
	subb	$1,%al
	jbe	Lj1100
	decb	%al
	je	Lj1094
	decb	%al
	je	Lj1090
	decb	%al
	je	Lj1100
	decb	%al
	jb	Lj1089
	subb	$1,%al
	jbe	Lj1100
	decb	%al
	je	Lj1098
	subb	$2,%al
	je	Lj1099
	subb	$2,%al
	je	Lj1100
	decb	%al
	jb	Lj1089
	subb	$9,%al
	jbe	Lj1101
	decb	%al
	je	Lj1096
	subb	$2,%al
	je	Lj1092
	decb	%al
	je	Lj1093
	decb	%al
	je	Lj1092
	subb	$3,%al
	jb	Lj1089
	subb	$25,%al
	jbe	Lj1091
	subb	$2,%al
	je	Lj1100
	subb	$2,%al
	je	Lj1100
	decb	%al
	je	Lj1091
	subb	$2,%al
	jb	Lj1089
	subb	$25,%al
	jbe	Lj1091
	subb	$2,%al
	je	Lj1095
	subb	$2,%al
	je	Lj1100
	jmp	Lj1089
Lj1090:
	movl	-8(%ebp),%eax
	movb	$1,-13(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	movb	%al,-13(%ebp)
	movl	-8(%ebp),%eax
	incl	-28(%eax)
	jmp	Lj1107
	.align 2
Lj1106:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj1107:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj1109
	jmp	Lj1108
Lj1109:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	-13(%ebp),%al
	jne	Lj1106
	jmp	Lj1108
Lj1108:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj1110
	jmp	Lj1111
Lj1110:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj1111:
	jmp	Lj1088
Lj1091:
	jmp	Lj1113
	.align 2
Lj1112:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj1113:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj1115
	jmp	Lj1114
Lj1115:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movzbl	-1(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj1116
	subl	$17,%eax
	cmpl	$26,%eax
	jb	Lj1116
	cmpl	$30,%eax
	stc
	je	Lj1116
	subl	$32,%eax
	cmpl	$26,%eax
	jb	Lj1116
Lj1116:
	jc	Lj1112
	jmp	Lj1114
Lj1114:
	jmp	Lj1088
Lj1092:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj1117
	jmp	Lj1118
Lj1117:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj1118:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movzbl	-1(%edx,%eax,1),%eax
	subl	$60,%eax
	cmpl	$3,%eax
	jb	Lj1121
Lj1121:
	jc	Lj1119
	jmp	Lj1120
Lj1119:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj1120:
	jmp	Lj1088
Lj1093:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj1122
	jmp	Lj1123
Lj1122:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj1123:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movzbl	-1(%edx,%eax,1),%eax
	subl	$60,%eax
	cmpl	$3,%eax
	jb	Lj1126
Lj1126:
	jc	Lj1124
	jmp	Lj1125
Lj1124:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj1125:
	jmp	Lj1088
Lj1094:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj1127
	jmp	Lj1128
Lj1127:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj1128:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movzbl	-1(%edx,%eax,1),%eax
	cmpl	$38,%eax
	je	Lj1131
Lj1131:
	je	Lj1129
	jmp	Lj1130
Lj1129:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj1130:
	jmp	Lj1088
Lj1095:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj1132
	jmp	Lj1133
Lj1132:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj1133:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movzbl	-1(%edx,%eax,1),%eax
	cmpl	$124,%eax
	je	Lj1136
Lj1136:
	je	Lj1134
	jmp	Lj1135
Lj1134:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj1135:
	jmp	Lj1088
Lj1096:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj1137
	jmp	Lj1138
Lj1137:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj1138:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$61,%al
	je	Lj1139
	jmp	Lj1140
Lj1139:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj1140:
	jmp	Lj1088
Lj1097:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj1141
	jmp	Lj1142
Lj1141:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj1142:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$61,%al
	je	Lj1143
	jmp	Lj1144
Lj1143:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj1144:
	jmp	Lj1088
Lj1098:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$43,%al
	je	Lj1147
	jmp	Lj1146
Lj1147:
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	leal	-20(%edx),%ecx
	movl	L_$DBF_PRSCORE$_Ld15$non_lazy_ptr-Lj875(%ebx),%edx
	movl	-8(%ebp),%esi
	movl	-12(%esi),%esi
	movl	32(%esi),%esi
	movl	(%esi),%esi
	call	*140(%esi)
	testb	%al,%al
	jne	Lj1145
	jmp	Lj1146
Lj1145:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj1146:
	jmp	Lj1088
Lj1099:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$45,%al
	je	Lj1156
	jmp	Lj1155
Lj1156:
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	leal	-20(%edx),%ecx
	movl	L_$DBF_PRSCORE$_Ld16$non_lazy_ptr-Lj875(%ebx),%edx
	movl	-8(%ebp),%esi
	movl	-12(%esi),%esi
	movl	32(%esi),%esi
	movl	(%esi),%esi
	call	*140(%esi)
	testb	%al,%al
	jne	Lj1154
	jmp	Lj1155
Lj1154:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj1155:
	jmp	Lj1088
Lj1100:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
	jmp	Lj1088
Lj1101:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_PARSESTRING$ANSISTRING$TEXPRCOLLECTION_READCONSTANT$crcC67E46C4$stub
	jmp	Lj1088
Lj1089:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj1088:
Lj1087:
Lj1078:
Lj1058:
Lj1044:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1045
	call	LFPC_RERAISE$stub
Lj1045:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_PARSESTRING$ANSISTRING$TEXPRCOLLECTION_READCONSTANT$crcC67E46C4
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_PARSESTRING$ANSISTRING$TEXPRCOLLECTION_READCONSTANT$crcC67E46C4:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1169
	movl	-12(%ebp),%eax
	movb	$1,-13(%eax)
	jmp	Lj1175
	.align 2
Lj1174:
	movl	-12(%ebp),%eax
	incl	-28(%eax)
Lj1175:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj1177
	jmp	Lj1176
Lj1177:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-28(%eax),%eax
	movzbl	-1(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj1179
Lj1179:
	jc	Lj1174
	jmp	Lj1178
Lj1178:
	cmpb	$0,-8(%ebp)
	jne	Lj1180
	jmp	Lj1176
Lj1180:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-28(%eax),%eax
	movzbl	-1(%edx,%eax,1),%eax
	subl	$65,%eax
	cmpl	$6,%eax
	jb	Lj1181
	subl	$32,%eax
	cmpl	$6,%eax
	jb	Lj1181
Lj1181:
	jc	Lj1174
	jmp	Lj1176
Lj1176:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj1182
	jmp	Lj1183
Lj1182:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%edx
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-28(%eax),%eax
	movb	6(%edx),%dl
	cmpb	-1(%ecx,%eax,1),%dl
	je	Lj1184
	jmp	Lj1185
Lj1184:
	movl	-12(%ebp),%eax
	incl	-28(%eax)
	jmp	Lj1187
	.align 2
Lj1186:
	movl	-12(%ebp),%eax
	incl	-28(%eax)
Lj1187:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj1189
	jmp	Lj1188
Lj1189:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-28(%eax),%eax
	movzbl	-1(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj1190
Lj1190:
	jc	Lj1186
	jmp	Lj1188
Lj1188:
Lj1185:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj1193
	jmp	Lj1192
Lj1193:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$101,%al
	je	Lj1191
	jmp	Lj1192
Lj1191:
	movl	-12(%ebp),%eax
	incl	-28(%eax)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj1196
	jmp	Lj1195
Lj1196:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-28(%eax),%eax
	movzbl	-1(%edx,%eax,1),%eax
	cmpl	$43,%eax
	je	Lj1197
	cmpl	$45,%eax
	je	Lj1197
Lj1197:
	je	Lj1194
	jmp	Lj1195
Lj1194:
	movl	-12(%ebp),%eax
	incl	-28(%eax)
Lj1195:
	jmp	Lj1199
	.align 2
Lj1198:
	movl	-12(%ebp),%eax
	incl	-28(%eax)
Lj1199:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj1201
	jmp	Lj1200
Lj1201:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-28(%eax),%eax
	movzbl	-1(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj1202
Lj1202:
	jc	Lj1198
	jmp	Lj1200
Lj1200:
Lj1192:
Lj1183:
Lj1169:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1170
	call	LFPC_RERAISE$stub
Lj1170:
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CHECK$TEXPRCOLLECTION
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CHECK$TEXPRCOLLECTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%edi,-92(%ebp)
	call	Lj1204
Lj1204:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1205
	movl	-4(%ebp),%eax
	call	L_DBF_PRSDEF_TEXPRCOLLECTION_$__CHECK$stub
	movl	$0,-12(%ebp)
	jmp	Lj1213
	.align 2
Lj1212:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	4(%eax),%eax
	movl	L_$DBF_PRSCORE$_Ld17$non_lazy_ptr-Lj1204(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1217
	jmp	Lj1218
Lj1218:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	4(%eax),%eax
	movl	L_$DBF_PRSCORE$_Ld19$non_lazy_ptr-Lj1204(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1217
	jmp	Lj1216
Lj1217:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1215
	jmp	Lj1237
Lj1237:
	movl	-12(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$8,%al
	je	Lj1215
	jmp	Lj1236
Lj1236:
	movl	-12(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$6,%al
	je	Lj1215
	jmp	Lj1235
Lj1235:
	movl	-12(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*100(%edx)
	testb	%al,%al
	jne	Lj1254
	jmp	Lj1216
Lj1254:
	movl	-12(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*120(%edx)
	cmpl	$2,%eax
	je	Lj1215
	jmp	Lj1216
Lj1215:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	4(%eax),%eax
	movl	L_$DBF_PRSCORE$_Ld17$non_lazy_ptr-Lj1204(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1271
	jmp	Lj1272
Lj1271:
	movl	$-1,-20(%ebp)
	jmp	Lj1283
Lj1272:
	movl	$1,-20(%ebp)
Lj1283:
	movl	$1,-24(%ebp)
	jmp	Lj1289
	.align 2
Lj1288:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	4(%eax),%eax
	movl	L_$DBF_PRSCORE$_Ld17$non_lazy_ptr-Lj1204(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1291
	jmp	Lj1292
Lj1291:
	movl	-20(%ebp),%eax
	negl	%eax
	movl	%eax,-20(%ebp)
Lj1292:
	incl	-24(%ebp)
Lj1289:
	movl	-12(%ebp),%esi
	movl	-24(%ebp),%eax
	addl	%eax,%esi
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	%eax,%esi
	jl	Lj1304
	jmp	Lj1290
Lj1304:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	4(%eax),%eax
	movl	L_$DBF_PRSCORE$_Ld17$non_lazy_ptr-Lj1204(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1303
	jmp	Lj1307
Lj1307:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	4(%eax),%eax
	movl	L_$DBF_PRSCORE$_Ld19$non_lazy_ptr-Lj1204(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1303
	jmp	Lj1290
Lj1303:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	testl	%edx,%edx
	je	Lj1288
	jmp	Lj1326
Lj1326:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$8,%al
	je	Lj1288
	jmp	Lj1325
Lj1325:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$6,%al
	je	Lj1288
	jmp	Lj1324
Lj1324:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*100(%edx)
	testb	%al,%al
	jne	Lj1343
	jmp	Lj1290
Lj1343:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*120(%edx)
	cmpl	$2,%eax
	je	Lj1288
	jmp	Lj1290
Lj1290:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1360
	jmp	Lj1361
Lj1360:
	decl	-24(%ebp)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%esi
	decl	%esi
	movl	-24(%ebp),%eax
	subl	%eax,%esi
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj1363
	decl	-16(%ebp)
	.align 2
Lj1364:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__PUT$LONGINT$POINTER$stub
	cmpl	-16(%ebp),%esi
	jg	Lj1364
Lj1363:
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%edx
	movl	-24(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__SETCOUNT$LONGINT$stub
Lj1361:
	movl	-20(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1383
	jmp	Lj1384
Lj1383:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	leal	-16(%ebp),%edx
	movl	L_$DBF_PRSCORE$_Ld21$non_lazy_ptr-Lj1204(%ebx),%edi
	movl	-8(%ebp),%ecx
	movl	32(%ecx),%ecx
	movl	(%ecx),%esi
	movl	%edx,%ecx
	movl	%edi,%edx
	call	*140(%esi)
	testb	%al,%al
	jne	Lj1385
	jmp	Lj1386
Lj1385:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__PUT$LONGINT$POINTER$stub
Lj1386:
	jmp	Lj1403
Lj1384:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	leal	-16(%ebp),%edx
	movl	L_$DBF_PRSCORE$_Ld22$non_lazy_ptr-Lj1204(%ebx),%edi
	movl	-8(%ebp),%ecx
	movl	32(%ecx),%ecx
	movl	(%ecx),%esi
	movl	%edx,%ecx
	movl	%edi,%edx
	call	*140(%esi)
	testb	%al,%al
	jne	Lj1404
	jmp	Lj1405
Lj1404:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__PUT$LONGINT$POINTER$stub
Lj1405:
Lj1403:
Lj1216:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	4(%eax),%eax
	movl	L_$DBF_PRSCORE$_Ld23$non_lazy_ptr-Lj1204(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1424
	jmp	Lj1423
Lj1424:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1422
	jmp	Lj1434
Lj1434:
	movl	-12(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$6,%al
	je	Lj1422
	jmp	Lj1433
Lj1433:
	movl	-12(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*100(%edx)
	testb	%al,%al
	jne	Lj1422
	jmp	Lj1423
Lj1422:
	movl	$-1,-20(%ebp)
	movl	$1,-24(%ebp)
	jmp	Lj1456
	.align 2
Lj1455:
	movl	-20(%ebp),%eax
	negl	%eax
	movl	%eax,-20(%ebp)
	incl	-24(%ebp)
Lj1456:
	movl	-12(%ebp),%esi
	movl	-24(%ebp),%eax
	addl	%eax,%esi
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	%eax,%esi
	jl	Lj1461
	jmp	Lj1457
Lj1461:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	4(%eax),%eax
	movl	L_$DBF_PRSCORE$_Ld23$non_lazy_ptr-Lj1204(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1460
	jmp	Lj1457
Lj1460:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	testl	%eax,%eax
	je	Lj1455
	jmp	Lj1473
Lj1473:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$6,%al
	je	Lj1455
	jmp	Lj1472
Lj1472:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*100(%edx)
	testb	%al,%al
	jne	Lj1455
	jmp	Lj1457
Lj1457:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1490
	jmp	Lj1491
Lj1490:
	movl	-20(%ebp),%eax
	cmpl	$1,%eax
	je	Lj1492
	jmp	Lj1493
Lj1492:
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%esi
	decl	%esi
	movl	-24(%ebp),%eax
	subl	%eax,%esi
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj1495
	decl	-16(%ebp)
	.align 2
Lj1496:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__PUT$LONGINT$POINTER$stub
	cmpl	-16(%ebp),%esi
	jg	Lj1496
Lj1495:
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%edx
	movl	-24(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__SETCOUNT$LONGINT$stub
	jmp	Lj1515
Lj1493:
	decl	-24(%ebp)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%esi
	decl	%esi
	movl	-24(%ebp),%eax
	subl	%eax,%esi
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj1517
	decl	-16(%ebp)
	.align 2
Lj1518:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__PUT$LONGINT$POINTER$stub
	cmpl	-16(%ebp),%esi
	jg	Lj1518
Lj1517:
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%edx
	movl	-24(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__SETCOUNT$LONGINT$stub
Lj1515:
Lj1491:
Lj1423:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_DBF_PRSDEF_TEXPRWORD_$__GETISVARIABLE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1539
	jmp	Lj1538
Lj1539:
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	cmpl	-12(%ebp),%eax
	jg	Lj1548
	jmp	Lj1538
Lj1548:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_DBF_PRSDEF_TEXPRWORD_$__GETISVARIABLE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1537
	jmp	Lj1538
Lj1537:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	L_$DBF_PRSCORE$_Ld25$non_lazy_ptr-Lj1204(%ebx),%eax
	movl	%eax,-88(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	4(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	L_$DBF_PRSCORE$_Ld27$non_lazy_ptr-Lj1204(%ebx),%eax
	movl	%eax,-80(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	4(%eax),%eax
	movl	%eax,-76(%ebp)
	movl	L_$DBF_PRSCORE$_Ld29$non_lazy_ptr-Lj1204(%ebx),%eax
	movl	%eax,-72(%ebp)
	leal	-88(%ebp),%edx
	leal	-68(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-68(%ebp),%ecx
	movl	L_VMT_DBF_PRSDEF_EPARSEREXCEPTION$non_lazy_ptr-Lj1204(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La7:
	movl	%ebp,%ecx
	leal	La7-Lj1204(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1538:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$6,%al
	je	Lj1581
	jmp	Lj1580
Lj1581:
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	cmpl	-12(%ebp),%eax
	jle	Lj1579
	jmp	Lj1580
Lj1579:
	movl	L_VMT_DBF_PRSDEF_EPARSEREXCEPTION$non_lazy_ptr-Lj1204(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld31$non_lazy_ptr-Lj1204(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La8:
	movl	%ebp,%ecx
	leal	La8-Lj1204(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1580:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$7,%al
	je	Lj1600
	jmp	Lj1599
Lj1600:
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	cmpl	-12(%ebp),%eax
	jg	Lj1609
	jmp	Lj1599
Lj1609:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$6,%al
	je	Lj1598
	jmp	Lj1599
Lj1598:
	movl	L_VMT_DBF_PRSDEF_EPARSEREXCEPTION$non_lazy_ptr-Lj1204(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld33$non_lazy_ptr-Lj1204(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La9:
	movl	%ebp,%ecx
	leal	La9-Lj1204(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1599:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$7,%al
	je	Lj1628
	jmp	Lj1627
Lj1628:
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	cmpl	-12(%ebp),%eax
	jg	Lj1637
	jmp	Lj1627
Lj1637:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_DBF_PRSDEF_TEXPRWORD_$__GETISVARIABLE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1626
	jmp	Lj1627
Lj1626:
	movl	L_VMT_DBF_PRSDEF_EPARSEREXCEPTION$non_lazy_ptr-Lj1204(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld35$non_lazy_ptr-Lj1204(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La10:
	movl	%ebp,%ecx
	leal	La10-Lj1204(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1627:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$6,%al
	je	Lj1656
	jmp	Lj1655
Lj1656:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1665
	jmp	Lj1655
Lj1665:
	movl	-12(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_DBF_PRSDEF_TEXPRWORD_$__GETISVARIABLE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1654
	jmp	Lj1655
Lj1654:
	movl	L_VMT_DBF_PRSDEF_EPARSEREXCEPTION$non_lazy_ptr-Lj1204(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld37$non_lazy_ptr-Lj1204(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La11:
	movl	%ebp,%ecx
	leal	La11-Lj1204(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1655:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	4(%eax),%eax
	movl	L_$DBF_PRSCORE$_Ld39$non_lazy_ptr-Lj1204(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1682
	jmp	Lj1681
Lj1682:
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	cmpl	-12(%ebp),%eax
	jg	Lj1691
	jmp	Lj1681
Lj1691:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	(%edx),%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	L_VMT_DBF_PRSDEF_TINTEGERCONSTANT$non_lazy_ptr-Lj1204(%ebx),%eax
	cmpl	%eax,%edx
	je	Lj1680
	jmp	Lj1681
Lj1680:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	leal	-16(%ebp),%ecx
	movl	L_$DBF_PRSCORE$_Ld41$non_lazy_ptr-Lj1204(%ebx),%edx
	movl	-8(%ebp),%esi
	movl	32(%esi),%esi
	movl	(%esi),%esi
	call	*140(%esi)
	testb	%al,%al
	jne	Lj1704
	jmp	Lj1705
Lj1704:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__PUT$LONGINT$POINTER$stub
Lj1705:
Lj1681:
	incl	-12(%ebp)
Lj1213:
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-12(%ebp),%eax
	jg	Lj1212
	jmp	Lj1214
Lj1214:
Lj1205:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1206
	call	LFPC_RERAISE$stub
Lj1206:
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	movl	-92(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__EVALUATECURRENT
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__EVALUATECURRENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj1726
	jmp	Lj1727
Lj1726:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-8(%ebp)
	.align 2
Lj1730:
	movl	-8(%ebp),%ebx
	cmpb	$0,20(%ebx)
	jne	Lj1735
	jmp	Lj1736
Lj1735:
	movl	8(%ebx),%eax
	movl	8(%eax),%edx
	movl	8(%ebx),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
Lj1736:
	movl	-8(%ebp),%eax
	movl	(%ebx),%edx
	call	*%edx
	movl	4(%ebx),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1732
	jmp	Lj1730
Lj1732:
Lj1727:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEFUNCTION$crcA52B7517
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEFUNCTION$crcA52B7517:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-60(%ebp)
	call	Lj1744
Lj1744:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	24(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	20(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1745
	movl	24(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movb	12(%ebp),%al
	movb	%al,8(%esp)
	movl	16(%ebp),%eax
	movl	%eax,12(%esp)
	movl	20(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,20(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj1744(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATE$crcB9F63122$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	32(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
Lj1745:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1746
	call	LFPC_RERAISE$stub
Lj1746:
	movl	-16(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEINTEGERVARIABLE$ANSISTRING$PINTEGER$$TEXPRWORD
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEINTEGERVARIABLE$ANSISTRING$PINTEGER$$TEXPRWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj1773
Lj1773:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1774
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_DBF_PRSDEF_TINTEGERVARIABLE$non_lazy_ptr-Lj1773(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TINTEGERVARIABLE_$__CREATE$ANSISTRING$PINTEGER$$TINTEGERVARIABLE$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	32(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
Lj1774:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1775
	call	LFPC_RERAISE$stub
Lj1775:
	movl	-16(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINELARGEINTVARIABLE$ANSISTRING$PLARGEINT$$TEXPRWORD
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINELARGEINTVARIABLE$ANSISTRING$PLARGEINT$$TEXPRWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj1792
Lj1792:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1793
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_DBF_PRSDEF_TLARGEINTVARIABLE$non_lazy_ptr-Lj1792(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TLARGEINTVARIABLE_$__CREATE$ANSISTRING$PLARGEINT$$TLARGEINTVARIABLE$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	32(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
Lj1793:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1794
	call	LFPC_RERAISE$stub
Lj1794:
	movl	-16(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEDATETIMEVARIABLE$ANSISTRING$PDATETIMEREC$$TEXPRWORD
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEDATETIMEVARIABLE$ANSISTRING$PDATETIMEREC$$TEXPRWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj1811
Lj1811:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1812
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_DBF_PRSDEF_TDATETIMEVARIABLE$non_lazy_ptr-Lj1811(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TDATETIMEVARIABLE_$__CREATE$ANSISTRING$PDATETIMEREC$$TDATETIMEVARIABLE$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	32(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
Lj1812:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1813
	call	LFPC_RERAISE$stub
Lj1813:
	movl	-16(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEBOOLEANVARIABLE$ANSISTRING$PBOOLEAN$$TEXPRWORD
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEBOOLEANVARIABLE$ANSISTRING$PBOOLEAN$$TEXPRWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj1830
Lj1830:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1831
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_DBF_PRSDEF_TBOOLEANVARIABLE$non_lazy_ptr-Lj1830(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TBOOLEANVARIABLE_$__CREATE$ANSISTRING$PBOOLEAN$$TBOOLEANVARIABLE$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	32(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
Lj1831:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1832
	call	LFPC_RERAISE$stub
Lj1832:
	movl	-16(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEFLOATVARIABLE$ANSISTRING$PDOUBLE$$TEXPRWORD
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEFLOATVARIABLE$ANSISTRING$PDOUBLE$$TEXPRWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj1849
Lj1849:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1850
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_DBF_PRSDEF_TFLOATVARIABLE$non_lazy_ptr-Lj1849(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFLOATVARIABLE_$__CREATE$ANSISTRING$PDOUBLE$$TFLOATVARIABLE$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	32(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
Lj1850:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1851
	call	LFPC_RERAISE$stub
Lj1851:
	movl	-16(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINESTRINGVARIABLE$ANSISTRING$PPCHAR$$TEXPRWORD
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINESTRINGVARIABLE$ANSISTRING$PPCHAR$$TEXPRWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj1868
Lj1868:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1869
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_DBF_PRSDEF_TSTRINGVARIABLE$non_lazy_ptr-Lj1868(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TSTRINGVARIABLE_$__CREATE$ANSISTRING$PPCHAR$$TSTRINGVARIABLE$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	32(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
Lj1869:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1870
	call	LFPC_RERAISE$stub
Lj1870:
	movl	-16(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__GETRESULTTYPE$$TEXPRESSIONTYPE
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__GETRESULTTYPE$$TEXPRESSIONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$9,-5(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj1890
	jmp	Lj1891
Lj1890:
	jmp	Lj1893
	.align 2
Lj1892:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%eax),%eax
	movl	%eax,12(%edx)
Lj1893:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj1892
	jmp	Lj1894
Lj1894:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj1897
	jmp	Lj1898
Lj1897:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	movl	12(%edx),%edx
	movl	12(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movb	%al,-5(%ebp)
Lj1898:
Lj1891:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKEREC$$PEXPRESSIONREC
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKEREC$$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$128,%eax
	call	Lfpc_getmem$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
	movl	-8(%ebp),%eax
	movb	$0,21(%eax)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj1919:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	$0,24(%eax,%edx,4)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	$0,48(%eax,%edx,4)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	$0,72(%eax,%edx,4)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	$9,96(%eax,%edx,1)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	$0,104(%eax,%edx,4)
	cmpl	$5,-12(%ebp)
	jl	Lj1919
	movl	-8(%ebp),%eax
	movl	$0,8(%eax)
	movl	-8(%ebp),%eax
	movl	$0,4(%eax)
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	movl	-8(%ebp),%eax
	movb	$0,20(%eax)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__EVALUATE$ANSISTRING
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__EVALUATE$ANSISTRING:
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
	jne	Lj1940
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1945
	movl	-4(%eax),%eax
Lj1945:
	cmpl	$0,%eax
	jg	Lj1943
	jmp	Lj1944
Lj1943:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__ADDEXPRESSION$ANSISTRING$$LONGINT$stub
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__EVALUATECURRENT$stub
Lj1944:
Lj1940:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1941
	call	LFPC_RERAISE$stub
Lj1941:
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__ADDEXPRESSION$ANSISTRING$$LONGINT
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__ADDEXPRESSION$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1954
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1959
	movl	-4(%eax),%eax
Lj1959:
	cmpl	$0,%eax
	jg	Lj1957
	jmp	Lj1958
Lj1957:
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__COMPILEEXPRESSION$ANSISTRING$stub
	jmp	Lj1966
Lj1958:
	movl	$-1,-12(%ebp)
Lj1966:
Lj1954:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1955
	call	LFPC_RERAISE$stub
Lj1955:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CLEAREXPRESSIONS
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CLEAREXPRESSIONS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DISPOSELIST$PEXPRESSIONREC$stub
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	-4(%ebp),%eax
	movl	$0,12(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__GETFUNCTIONDESCRIPTION$ANSISTRING$$ANSISTRING
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__GETFUNCTIONDESCRIPTION$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	call	Lj1980
Lj1980:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-16(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1981
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movb	$40,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1992
	jmp	Lj1993
Lj1992:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	decl	%ecx
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1993:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-16(%ebp),%edx
	testl	%edx,%edx
	jne	Lj2010
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1980(%esi),%ecx
	movl	%ecx,%edx
Lj2010:
	leal	-24(%ebp),%ecx
	movl	-8(%ebp),%ebx
	movl	32(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	testb	%al,%al
	jne	Lj2004
	jmp	Lj2005
Lj2004:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-24(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	-12(%ebp),%edx
	movl	%ebx,%eax
	movl	%ebx,%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
	jmp	Lj2023
Lj2005:
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj1980(%esi),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj1980(%esi),%eax
	movl	(%eax),%eax
	movl	%eax,(%ebx)
Lj2023:
Lj1981:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1982
	call	LFPC_RERAISE$stub
Lj1982:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__GETFUNCTIONNAMES$TSTRINGS
_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__GETFUNCTIONNAMES$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	movl	%edi,-80(%ebp)
	call	Lj2033
Lj2033:
	popl	-76(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj2034
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-68(%ebp)
	movl	$0,-12(%ebp)
	movl	-68(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj2040
	decl	-12(%ebp)
	.align 2
Lj2041:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edi
	movl	%edi,%ebx
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	%ebx,%eax
	movl	%ebx,%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj2058
	movl	-4(%eax),%eax
Lj2058:
	cmpl	$0,%eax
	jg	Lj2052
	jmp	Lj2053
Lj2052:
	movl	4(%ebx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	4(%ebx),%eax
	movl	%eax,-20(%ebp)
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*120(%edx)
	cmpl	$0,%eax
	jg	Lj2061
	jmp	Lj2062
Lj2061:
	movl	-20(%ebp),%edx
	leal	-20(%ebp),%eax
	movl	-76(%ebp),%esi
	movl	L_$DBF_PRSCORE$_Ld42$non_lazy_ptr-Lj2033(%esi),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*120(%edx)
	subl	$2,%eax
	movl	%eax,%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj2072
	decl	-16(%ebp)
	.align 2
Lj2073:
	incl	-16(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-8(%ebp),%eax
	movb	5(%eax),%al
	leal	-64(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-64(%ebp),%ecx
	movl	-20(%ebp),%edx
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	cmpl	-16(%ebp),%esi
	jg	Lj2073
Lj2072:
	movl	-20(%ebp),%edx
	leal	-20(%ebp),%eax
	movl	-76(%ebp),%esi
	movl	L_$DBF_PRSCORE$_Ld44$non_lazy_ptr-Lj2033(%esi),%ecx
	call	Lfpc_ansistr_concat$stub
Lj2062:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj2053:
	movl	-68(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj2041
Lj2040:
Lj2034:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj2035
	call	LFPC_RERAISE$stub
Lj2035:
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	movl	-80(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCFLOATTOSTR$PEXPRESSIONREC
_DBF_PRSCORE_FUNCFLOATTOSTR$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	$0,-12(%ebp)
	movl	28(%ebx),%eax
	testl	%eax,%eax
	jne	Lj2108
	jmp	Lj2109
Lj2108:
	movl	28(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2112
Lj2109:
	movl	$18,-8(%ebp)
Lj2112:
	movl	32(%ebx),%eax
	testl	%eax,%eax
	jne	Lj2115
	jmp	Lj2116
Lj2115:
	movl	32(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
Lj2116:
	movl	-8(%ebp),%edx
	movl	8(%ebx),%eax
	call	L_DBF_PRSDEF_TDYNAMICTYPE_$__ASSURESPACE$LONGINT$stub
	movl	24(%ebx),%eax
	fldl	(%eax)
	fstpt	-32(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,12(%esp)
	movl	8(%ebx),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	$18,%ecx
	movl	$2,%edx
	call	L_SYSUTILS_FLOATTOTEXT$PCHAR$EXTENDED$TFLOATFORMAT$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2137
	jmp	Lj2138
Lj2137:
	movl	8(%ebx),%eax
	movl	8(%eax),%eax
	movl	(%eax),%ecx
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	subl	%edx,%eax
	decl	%eax
	movb	$46,(%ecx,%eax,1)
Lj2138:
	movl	28(%ebx),%eax
	testl	%eax,%eax
	jne	Lj2143
	jmp	Lj2142
Lj2143:
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj2141
	jmp	Lj2142
Lj2141:
	movl	8(%ebx),%eax
	movl	8(%eax),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	leal	(%ecx,%eax,1),%edx
	movl	-16(%ebp),%ecx
	movl	8(%ebx),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	8(%ebx),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movb	$32,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj2158
Lj2142:
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj2159
	jmp	Lj2160
Lj2159:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj2160:
Lj2158:
	movl	8(%ebx),%eax
	movl	8(%eax),%eax
	movl	-16(%ebp),%edx
	addl	%edx,(%eax)
	movl	8(%ebx),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movb	$0,(%eax)
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCINTTOSTR_GEN$PEXPRESSIONREC$INT64
_DBF_PRSCORE_FUNCINTTOSTR_GEN$PEXPRESSIONREC$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	28(%ebx),%eax
	testl	%eax,%eax
	jne	Lj2169
	jmp	Lj2170
Lj2169:
	movl	28(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebx),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movb	$32,%cl
	call	L_DBF_PRSSUPP_GETSTRFROMINT64_WIDTH$INT64$LONGINT$PCHAR$CHAR$stub
	movl	8(%ebx),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	addl	%edx,(%eax)
	movl	32(%ebx),%eax
	testl	%eax,%eax
	jne	Lj2181
	jmp	Lj2182
Lj2181:
	movl	32(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	8(%ebx),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movb	$46,(%eax)
	movl	8(%ebx),%eax
	movl	8(%eax),%eax
	incl	(%eax)
	movl	-8(%ebp),%edx
	movl	8(%ebx),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movb	$48,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	8(%ebx),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,(%edx)
Lj2182:
	jmp	Lj2193
Lj2170:
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebx),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_DBF_PRSSUPP_GETSTRFROMINT64$INT64$PCHAR$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	addl	%edx,(%eax)
Lj2193:
	movl	8(%ebx),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movb	$0,(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCINTTOSTR$PEXPRESSIONREC
_DBF_PRSCORE_FUNCINTTOSTR$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	call	L_DBF_PRSCORE_FUNCINTTOSTR_GEN$PEXPRESSIONREC$INT64$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCINT64TOSTR$PEXPRESSIONREC
_DBF_PRSCORE_FUNCINT64TOSTR$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	4(%edx),%eax
	movl	%eax,4(%esp)
	movl	(%edx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	call	L_DBF_PRSCORE_FUNCINTTOSTR_GEN$PEXPRESSIONREC$INT64$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCDATETOSTR$PEXPRESSIONREC
_DBF_PRSCORE_FUNCDATETOSTR$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	call	Lj2215
Lj2215:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj2216
	movl	-4(%ebp),%ebx
	movl	24(%ebx),%edx
	movl	(%edx),%eax
	movl	%eax,(%esp)
	movl	4(%edx),%eax
	movl	%eax,4(%esp)
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-8(%ebp),%eax
	movl	L_$DBF_PRSCORE$_Ld46$non_lazy_ptr-Lj2215(%esi),%edx
	call	L_SYSUTILS_DATETIMETOSTRING$ANSISTRING$ANSISTRING$TDATETIME$stub
	movl	-8(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj2229
	movl	-4(%ecx),%ecx
Lj2229:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj2232
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj2215(%esi),%eax
	movl	%eax,%edx
Lj2232:
	movl	8(%ebx),%eax
	call	L_DBF_PRSDEF_TDYNAMICTYPE_$__APPEND$PCHAR$LONGINT$stub
Lj2216:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-8(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj2217
	call	LFPC_RERAISE$stub
Lj2217:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSUBSTRING$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSUBSTRING$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	24(%ebx),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-8(%ebp)
	movl	28(%ebx),%eax
	movl	(%eax),%eax
	decl	%eax
	movl	%eax,-12(%ebp)
	movl	32(%ebx),%eax
	testl	%eax,%eax
	jne	Lj2251
	jmp	Lj2252
Lj2251:
	movl	32(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	cmpl	-8(%ebp),%eax
	jg	Lj2255
	jmp	Lj2256
Lj2255:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-16(%ebp)
Lj2256:
	jmp	Lj2259
Lj2252:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-16(%ebp)
Lj2259:
	movl	24(%ebx),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-16(%ebp),%ecx
	movl	8(%ebx),%eax
	call	L_DBF_PRSDEF_TDYNAMICTYPE_$__APPEND$PCHAR$LONGINT$stub
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCUPPERCASE$PEXPRESSIONREC
_DBF_PRSCORE_FUNCUPPERCASE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj2269
Lj2269:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	8(%ebx),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	24(%ebx),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,%ecx
	movl	24(%ebx),%edx
	movl	8(%ebx),%eax
	call	L_DBF_PRSDEF_TDYNAMICTYPE_$__APPEND$PCHAR$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2269(%esi),%edx
	movl	68(%edx),%edx
	call	*%edx
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCLOWERCASE$PEXPRESSIONREC
_DBF_PRSCORE_FUNCLOWERCASE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj2287
Lj2287:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	8(%ebx),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	24(%ebx),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,%ecx
	movl	24(%ebx),%edx
	movl	8(%ebx),%eax
	call	L_DBF_PRSDEF_TDYNAMICTYPE_$__APPEND$PCHAR$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2287(%esi),%edx
	movl	64(%edx),%edx
	call	*%edx
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCADD_F_FF$PEXPRESSIONREC
_DBF_PRSCORE_FUNCADD_F_FF$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	28(%eax),%edx
	fldl	(%edx)
	fldl	(%ecx)
	faddp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCADD_F_FI$PEXPRESSIONREC
_DBF_PRSCORE_FUNCADD_F_FI$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	28(%eax),%edx
	fildl	(%edx)
	fldl	(%ecx)
	faddp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCADD_F_II$PEXPRESSIONREC
_DBF_PRSCORE_FUNCADD_F_II$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	28(%eax),%ebx
	movl	(%edx),%ecx
	movl	(%ebx),%edx
	addl	%edx,%ecx
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	movl	%ecx,(%edx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCADD_F_IF$PEXPRESSIONREC
_DBF_PRSCORE_FUNCADD_F_IF$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	fildl	(%edx)
	movl	28(%eax),%edx
	fldl	(%edx)
	faddp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCADD_F_FL$PEXPRESSIONREC
_DBF_PRSCORE_FUNCADD_F_FL$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	28(%eax),%edx
	fildq	(%edx)
	fldl	(%ecx)
	faddp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCADD_F_IL$PEXPRESSIONREC
_DBF_PRSCORE_FUNCADD_F_IL$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	(%edx),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	movl	28(%eax),%ebx
	addl	(%ebx),%ecx
	adcl	4(%ebx),%edx
	movl	8(%eax),%ebx
	movl	8(%ebx),%ebx
	movl	(%ebx),%ebx
	movl	%ecx,(%ebx)
	movl	%edx,4(%ebx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCADD_F_LL$PEXPRESSIONREC
_DBF_PRSCORE_FUNCADD_F_LL$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ebx
	movl	28(%eax),%edx
	movl	(%ebx),%ecx
	movl	4(%ebx),%ebx
	addl	(%edx),%ecx
	adcl	4(%edx),%ebx
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	movl	%ecx,(%edx)
	movl	%ebx,4(%edx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCADD_F_LF$PEXPRESSIONREC
_DBF_PRSCORE_FUNCADD_F_LF$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	fildq	(%edx)
	movl	28(%eax),%edx
	fldl	(%edx)
	faddp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCADD_F_LI$PEXPRESSIONREC
_DBF_PRSCORE_FUNCADD_F_LI$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ebx
	movl	28(%eax),%edx
	movl	(%edx),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	addl	(%ebx),%ecx
	adcl	4(%ebx),%edx
	movl	8(%eax),%ebx
	movl	8(%ebx),%ebx
	movl	(%ebx),%ebx
	movl	%ecx,(%ebx)
	movl	%edx,4(%ebx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSUB_F_FF$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSUB_F_FF$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	28(%eax),%edx
	fldl	(%edx)
	fldl	(%ecx)
	fsubp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSUB_F_FI$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSUB_F_FI$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	28(%eax),%edx
	fildl	(%edx)
	fldl	(%ecx)
	fsubp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSUB_F_II$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSUB_F_II$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	28(%eax),%ebx
	movl	(%edx),%ecx
	movl	(%ebx),%edx
	subl	%edx,%ecx
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	movl	%ecx,(%edx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSUB_F_IF$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSUB_F_IF$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	fildl	(%edx)
	movl	28(%eax),%edx
	fldl	(%edx)
	fsubrp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSUB_F_FL$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSUB_F_FL$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	28(%eax),%edx
	fildq	(%edx)
	fldl	(%ecx)
	fsubp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSUB_F_IL$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSUB_F_IL$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	(%edx),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	movl	28(%eax),%ebx
	subl	(%ebx),%ecx
	sbbl	4(%ebx),%edx
	movl	8(%eax),%ebx
	movl	8(%ebx),%ebx
	movl	(%ebx),%ebx
	movl	%ecx,(%ebx)
	movl	%edx,4(%ebx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSUB_F_LL$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSUB_F_LL$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ebx
	movl	28(%eax),%edx
	movl	(%ebx),%ecx
	movl	4(%ebx),%ebx
	subl	(%edx),%ecx
	sbbl	4(%edx),%ebx
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	movl	%ecx,(%edx)
	movl	%ebx,4(%edx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSUB_F_LF$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSUB_F_LF$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	fildq	(%edx)
	movl	28(%eax),%edx
	fldl	(%edx)
	fsubrp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSUB_F_LI$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSUB_F_LI$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%esi
	movl	28(%eax),%edx
	movl	(%edx),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	movl	(%esi),%ebx
	subl	%ecx,%ebx
	movl	%ebx,%ecx
	movl	4(%esi),%ebx
	sbbl	%edx,%ebx
	movl	%ebx,%edx
	movl	8(%eax),%ebx
	movl	8(%ebx),%ebx
	movl	(%ebx),%ebx
	movl	%ecx,(%ebx)
	movl	%edx,4(%ebx)
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCMUL_F_FF$PEXPRESSIONREC
_DBF_PRSCORE_FUNCMUL_F_FF$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	28(%eax),%edx
	fldl	(%edx)
	fldl	(%ecx)
	fmulp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCMUL_F_FI$PEXPRESSIONREC
_DBF_PRSCORE_FUNCMUL_F_FI$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	28(%eax),%edx
	fildl	(%edx)
	fldl	(%ecx)
	fmulp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCMUL_F_II$PEXPRESSIONREC
_DBF_PRSCORE_FUNCMUL_F_II$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	28(%eax),%ebx
	movl	(%edx),%ecx
	movl	(%ebx),%edx
	imull	%edx,%ecx
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	movl	%ecx,(%edx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCMUL_F_IF$PEXPRESSIONREC
_DBF_PRSCORE_FUNCMUL_F_IF$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	fildl	(%edx)
	movl	28(%eax),%edx
	fldl	(%edx)
	fmulp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCMUL_F_FL$PEXPRESSIONREC
_DBF_PRSCORE_FUNCMUL_F_FL$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	28(%eax),%edx
	fildq	(%edx)
	fldl	(%ecx)
	fmulp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCMUL_F_IL$PEXPRESSIONREC
_DBF_PRSCORE_FUNCMUL_F_IL$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	28(%ebx),%eax
	movl	4(%eax),%edx
	movl	%edx,4(%esp)
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	24(%ebx),%eax
	movl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	8(%ebx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCMUL_F_LL$PEXPRESSIONREC
_DBF_PRSCORE_FUNCMUL_F_LL$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	28(%ebx),%eax
	movl	4(%eax),%edx
	movl	%edx,4(%esp)
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	24(%ebx),%eax
	movl	4(%eax),%edx
	movl	%edx,12(%esp)
	movl	(%eax),%eax
	movl	%eax,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	8(%ebx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCMUL_F_LF$PEXPRESSIONREC
_DBF_PRSCORE_FUNCMUL_F_LF$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	fildq	(%edx)
	movl	28(%eax),%edx
	fldl	(%edx)
	fmulp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCMUL_F_LI$PEXPRESSIONREC
_DBF_PRSCORE_FUNCMUL_F_LI$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	28(%ebx),%eax
	movl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	24(%ebx),%edx
	movl	4(%edx),%eax
	movl	%eax,12(%esp)
	movl	(%edx),%eax
	movl	%eax,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	8(%ebx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCDIV_F_FF$PEXPRESSIONREC
_DBF_PRSCORE_FUNCDIV_F_FF$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	28(%eax),%edx
	fldl	(%edx)
	fldl	(%ecx)
	fdivp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCDIV_F_FI$PEXPRESSIONREC
_DBF_PRSCORE_FUNCDIV_F_FI$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	28(%eax),%edx
	fildl	(%edx)
	fldl	(%ecx)
	fdivp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCDIV_F_II$PEXPRESSIONREC
_DBF_PRSCORE_FUNCDIV_F_II$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%eax
	movl	28(%ecx),%ebx
	movl	(%eax),%eax
	cltd
	idivl	(%ebx)
	movl	8(%ecx),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	movl	%eax,(%edx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCDIV_F_IF$PEXPRESSIONREC
_DBF_PRSCORE_FUNCDIV_F_IF$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	fildl	(%edx)
	movl	28(%eax),%edx
	fldl	(%edx)
	fdivrp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCDIV_F_FL$PEXPRESSIONREC
_DBF_PRSCORE_FUNCDIV_F_FL$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	28(%eax),%edx
	fildq	(%edx)
	fldl	(%ecx)
	fdivp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCDIV_F_IL$PEXPRESSIONREC
_DBF_PRSCORE_FUNCDIV_F_IL$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	24(%ebx),%eax
	movl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	28(%ebx),%edx
	movl	4(%edx),%eax
	movl	%eax,12(%esp)
	movl	(%edx),%eax
	movl	%eax,8(%esp)
	call	Lfpc_div_int64$stub
	movl	8(%ebx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCDIV_F_LL$PEXPRESSIONREC
_DBF_PRSCORE_FUNCDIV_F_LL$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	24(%ebx),%eax
	movl	4(%eax),%edx
	movl	%edx,4(%esp)
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	28(%ebx),%eax
	movl	4(%eax),%edx
	movl	%edx,12(%esp)
	movl	(%eax),%eax
	movl	%eax,8(%esp)
	call	Lfpc_div_int64$stub
	movl	8(%ebx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCDIV_F_LF$PEXPRESSIONREC
_DBF_PRSCORE_FUNCDIV_F_LF$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	fildq	(%edx)
	movl	28(%eax),%edx
	fldl	(%edx)
	fdivrp	%st,%st(1)
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	fstpl	(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCDIV_F_LI$PEXPRESSIONREC
_DBF_PRSCORE_FUNCDIV_F_LI$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	24(%ebx),%eax
	movl	4(%eax),%edx
	movl	%edx,4(%esp)
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	28(%ebx),%eax
	movl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	call	Lfpc_div_int64$stub
	movl	8(%ebx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSTRI_EQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSTRI_EQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2551
Lj2551:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	28(%ebx),%eax
	movl	%eax,-8(%ebp)
	movl	24(%ebx),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2551(%esi),%ecx
	movl	52(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	seteb	%al
	movl	8(%ebx),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	movb	%al,(%edx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSTRIP_EQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSTRIP_EQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	movl	%edi,-84(%ebp)
	call	Lj2569
Lj2569:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-72(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj2570
	movl	-4(%ebp),%eax
	movl	%eax,%ebx
	movl	28(%ebx),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-12(%ebp)
	movl	28(%ebx),%eax
	movb	(%eax),%al
	cmpb	$42,%al
	je	Lj2579
	jmp	Lj2580
Lj2579:
	movl	28(%ebx),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movb	(%edx,%eax,1),%al
	cmpb	$42,%al
	je	Lj2581
	jmp	Lj2582
Lj2581:
	movl	24(%ebx),%eax
	movl	%eax,-68(%ebp)
	movl	-68(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2569(%edi),%edx
	movl	68(%edx),%edx
	call	*%edx
	leal	-20(%ebp),%edx
	call	Lfpc_pchar_to_ansistr$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	28(%ebx),%eax
	incl	%eax
	movl	%eax,-68(%ebp)
	movl	-68(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2569(%edi),%edx
	movl	68(%edx),%edx
	call	*%edx
	leal	-72(%ebp),%edx
	call	Lfpc_pchar_to_ansistr$stub
	movl	-72(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-72(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%edx
	subl	$2,%edx
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	call	L_SYSUTILS_ANSIPOS$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	setneb	-13(%ebp)
	jmp	Lj2615
Lj2582:
	movl	24(%ebx),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	decl	%eax
	cmpl	-8(%ebp),%eax
	setleb	-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj2622
	jmp	Lj2623
Lj2622:
	movl	-12(%ebp),%eax
	decl	%eax
	movl	%eax,-68(%ebp)
	movl	28(%ebx),%eax
	incl	%eax
	movl	%eax,-76(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	24(%ebx),%eax
	addl	%eax,%edx
	movl	%edx,-80(%ebp)
	movl	-68(%ebp),%ecx
	movl	-76(%ebp),%edx
	movl	-80(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2569(%edi),%esi
	movl	60(%esi),%esi
	call	*%esi
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj2623:
Lj2615:
	jmp	Lj2640
Lj2580:
	movl	28(%ebx),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movb	(%edx,%eax,1),%al
	cmpb	$42,%al
	je	Lj2641
	jmp	Lj2642
Lj2641:
	movl	24(%ebx),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	decl	%eax
	cmpl	-8(%ebp),%eax
	setleb	-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj2649
	jmp	Lj2650
Lj2649:
	movl	-12(%ebp),%eax
	decl	%eax
	movl	%eax,-68(%ebp)
	movl	28(%ebx),%eax
	movl	%eax,-76(%ebp)
	movl	24(%ebx),%eax
	movl	%eax,-80(%ebp)
	movl	-68(%ebp),%ecx
	movl	-76(%ebp),%edx
	movl	-80(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2569(%edi),%esi
	movl	60(%esi),%esi
	call	*%esi
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj2650:
	jmp	Lj2667
Lj2642:
	movl	28(%ebx),%eax
	movl	%eax,-68(%ebp)
	movl	24(%ebx),%eax
	movl	%eax,-76(%ebp)
	movl	-68(%ebp),%edx
	movl	-76(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2569(%edi),%ecx
	movl	52(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj2667:
Lj2640:
	movl	8(%ebx),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movb	-13(%ebp),%al
	movb	%al,(%edx)
Lj2570:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj2571
	call	LFPC_RERAISE$stub
Lj2571:
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	movl	-84(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSTRI_NEQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSTRI_NEQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2697
Lj2697:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	28(%ebx),%eax
	movl	%eax,-8(%ebp)
	movl	24(%ebx),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2697(%esi),%ecx
	movl	52(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	setneb	%al
	movl	8(%ebx),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	movb	%al,(%edx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSTRI_LT$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSTRI_LT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2715
Lj2715:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	28(%ebx),%eax
	movl	%eax,-8(%ebp)
	movl	24(%ebx),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2715(%esi),%ecx
	movl	52(%ecx),%ecx
	call	*%ecx
	cmpl	$0,%eax
	setlb	%al
	movl	8(%ebx),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	movb	%al,(%edx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSTRI_GT$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSTRI_GT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2733
Lj2733:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	28(%ebx),%eax
	movl	%eax,-8(%ebp)
	movl	24(%ebx),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2733(%esi),%ecx
	movl	52(%ecx),%ecx
	call	*%ecx
	cmpl	$0,%eax
	setgb	%al
	movl	8(%ebx),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	movb	%al,(%edx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSTRI_LTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSTRI_LTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2751
Lj2751:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	28(%ebx),%eax
	movl	%eax,-8(%ebp)
	movl	24(%ebx),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2751(%esi),%ecx
	movl	52(%ecx),%ecx
	call	*%ecx
	cmpl	$0,%eax
	setleb	%al
	movl	8(%ebx),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	movb	%al,(%edx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSTRI_GTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSTRI_GTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2769
Lj2769:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	28(%ebx),%eax
	movl	%eax,-8(%ebp)
	movl	24(%ebx),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2769(%esi),%ecx
	movl	52(%ecx),%ecx
	call	*%ecx
	cmpl	$0,%eax
	setgeb	%al
	movl	8(%ebx),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	movb	%al,(%edx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSTRP_EQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSTRP_EQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	call	Lj2787
Lj2787:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,%ebx
	movl	28(%ebx),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-12(%ebp)
	movl	28(%ebx),%eax
	movb	(%eax),%al
	cmpb	$42,%al
	je	Lj2794
	jmp	Lj2795
Lj2794:
	movl	28(%ebx),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movb	(%edx,%eax,1),%al
	cmpb	$42,%al
	je	Lj2796
	jmp	Lj2797
Lj2796:
	movl	28(%ebx),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movb	$0,(%edx,%eax,1)
	movl	28(%ebx),%edx
	incl	%edx
	movl	24(%ebx),%eax
	call	L_SYSUTILS_ANSISTRPOS$PCHAR$PCHAR$$PCHAR$stub
	testl	%eax,%eax
	setneb	-13(%ebp)
	movl	28(%ebx),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movb	$42,(%edx,%eax,1)
	jmp	Lj2808
Lj2797:
	movl	24(%ebx),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	decl	%eax
	cmpl	-8(%ebp),%eax
	setleb	-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj2815
	jmp	Lj2816
Lj2815:
	movl	-12(%ebp),%eax
	decl	%eax
	movl	%eax,-20(%ebp)
	movl	28(%ebx),%eax
	incl	%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	24(%ebx),%eax
	addl	%eax,%edx
	movl	%edx,-28(%ebp)
	movl	-20(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2787(%edi),%esi
	movl	56(%esi),%esi
	call	*%esi
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj2816:
Lj2808:
	jmp	Lj2833
Lj2795:
	movl	28(%ebx),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movb	(%edx,%eax,1),%al
	cmpb	$42,%al
	je	Lj2834
	jmp	Lj2835
Lj2834:
	movl	24(%ebx),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	decl	%eax
	cmpl	-8(%ebp),%eax
	setleb	-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj2842
	jmp	Lj2843
Lj2842:
	movl	-12(%ebp),%eax
	decl	%eax
	movl	%eax,-28(%ebp)
	movl	28(%ebx),%eax
	movl	%eax,-20(%ebp)
	movl	24(%ebx),%eax
	movl	%eax,-24(%ebp)
	movl	-28(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2787(%edi),%esi
	movl	56(%esi),%esi
	call	*%esi
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj2843:
	jmp	Lj2860
Lj2835:
	movl	28(%ebx),%eax
	movl	%eax,-28(%ebp)
	movl	24(%ebx),%eax
	movl	%eax,-20(%ebp)
	movl	-28(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2787(%edi),%ecx
	movl	48(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj2860:
Lj2833:
	movl	%ebx,%eax
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%ecx
	movb	-13(%ebp),%dl
	movb	%dl,(%ecx)
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSTR_EQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSTR_EQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2878
Lj2878:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	28(%ebx),%eax
	movl	%eax,-8(%ebp)
	movl	24(%ebx),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2878(%esi),%ecx
	movl	48(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	seteb	%al
	movl	8(%ebx),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	movb	%al,(%edx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSTR_NEQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSTR_NEQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2896
Lj2896:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	28(%ebx),%eax
	movl	%eax,-8(%ebp)
	movl	24(%ebx),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2896(%esi),%ecx
	movl	48(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	setneb	%al
	movl	8(%ebx),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	movb	%al,(%edx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSTR_LT$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSTR_LT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2914
Lj2914:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	28(%ebx),%eax
	movl	%eax,-8(%ebp)
	movl	24(%ebx),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2914(%esi),%ecx
	movl	48(%ecx),%ecx
	call	*%ecx
	cmpl	$0,%eax
	setlb	%al
	movl	8(%ebx),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	movb	%al,(%edx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSTR_GT$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSTR_GT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2932
Lj2932:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	28(%ebx),%eax
	movl	%eax,-8(%ebp)
	movl	24(%ebx),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2932(%esi),%ecx
	movl	48(%ecx),%ecx
	call	*%ecx
	cmpl	$0,%eax
	setgb	%al
	movl	8(%ebx),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	movb	%al,(%edx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSTR_LTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSTR_LTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2950
Lj2950:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	28(%ebx),%eax
	movl	%eax,-8(%ebp)
	movl	24(%ebx),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2950(%esi),%ecx
	movl	48(%ecx),%ecx
	call	*%ecx
	cmpl	$0,%eax
	setleb	%al
	movl	8(%ebx),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	movb	%al,(%edx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNCSTR_GTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNCSTR_GTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2968
Lj2968:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	28(%ebx),%eax
	movl	%eax,-8(%ebp)
	movl	24(%ebx),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2968(%esi),%ecx
	movl	48(%ecx),%ecx
	call	*%ecx
	cmpl	$0,%eax
	setgeb	%al
	movl	8(%ebx),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	movb	%al,(%edx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_FF_EQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_FF_EQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%ecx
	movl	28(%edx),%eax
	fldl	(%eax)
	fldl	(%ecx)
	fcompp
	fnstsw	%ax
	sahf
	seteb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_FF_NEQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_FF_NEQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%ecx
	movl	28(%edx),%eax
	fldl	(%eax)
	fldl	(%ecx)
	fcompp
	fnstsw	%ax
	sahf
	setneb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_FF_LT$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_FF_LT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%ecx
	movl	28(%edx),%eax
	fldl	(%eax)
	fldl	(%ecx)
	fcompp
	fnstsw	%ax
	sahf
	setbb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_FF_GT$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_FF_GT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%ecx
	movl	28(%edx),%eax
	fldl	(%eax)
	fldl	(%ecx)
	fcompp
	fnstsw	%ax
	sahf
	setab	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_FF_LTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_FF_LTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%ecx
	movl	28(%edx),%eax
	fldl	(%eax)
	fldl	(%ecx)
	fcompp
	fnstsw	%ax
	sahf
	setbeb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_FF_GTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_FF_GTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%ecx
	movl	28(%edx),%eax
	fldl	(%eax)
	fldl	(%ecx)
	fcompp
	fnstsw	%ax
	sahf
	setaeb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_FI_EQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_FI_EQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%ecx
	movl	28(%edx),%eax
	fildl	(%eax)
	fldl	(%ecx)
	fcompp
	fnstsw	%ax
	sahf
	seteb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_FI_NEQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_FI_NEQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%ecx
	movl	28(%edx),%eax
	fildl	(%eax)
	fldl	(%ecx)
	fcompp
	fnstsw	%ax
	sahf
	setneb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_FI_LT$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_FI_LT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%ecx
	movl	28(%edx),%eax
	fildl	(%eax)
	fldl	(%ecx)
	fcompp
	fnstsw	%ax
	sahf
	setbb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_FI_GT$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_FI_GT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%ecx
	movl	28(%edx),%eax
	fildl	(%eax)
	fldl	(%ecx)
	fcompp
	fnstsw	%ax
	sahf
	setab	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_FI_LTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_FI_LTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%ecx
	movl	28(%edx),%eax
	fildl	(%eax)
	fldl	(%ecx)
	fcompp
	fnstsw	%ax
	sahf
	setbeb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_FI_GTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_FI_GTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%ecx
	movl	28(%edx),%eax
	fildl	(%eax)
	fldl	(%ecx)
	fcompp
	fnstsw	%ax
	sahf
	setaeb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_II_EQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_II_EQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	28(%eax),%ecx
	movl	(%edx),%edx
	cmpl	(%ecx),%edx
	seteb	%dl
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_II_NEQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_II_NEQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	28(%eax),%ecx
	movl	(%edx),%edx
	cmpl	(%ecx),%edx
	setneb	%dl
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_II_LT$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_II_LT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	28(%eax),%ecx
	movl	(%edx),%edx
	cmpl	(%ecx),%edx
	setlb	%dl
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_II_GT$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_II_GT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	28(%eax),%ecx
	movl	(%edx),%edx
	cmpl	(%ecx),%edx
	setgb	%dl
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_II_LTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_II_LTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	28(%eax),%ecx
	movl	(%edx),%edx
	cmpl	(%ecx),%edx
	setleb	%dl
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_II_GTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_II_GTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	28(%eax),%ecx
	movl	(%edx),%edx
	cmpl	(%ecx),%edx
	setgeb	%dl
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_IF_EQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_IF_EQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%eax
	fildl	(%eax)
	movl	28(%edx),%eax
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	seteb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_IF_NEQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_IF_NEQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%eax
	fildl	(%eax)
	movl	28(%edx),%eax
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setneb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_IF_LT$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_IF_LT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%eax
	fildl	(%eax)
	movl	28(%edx),%eax
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setab	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_IF_GT$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_IF_GT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%eax
	fildl	(%eax)
	movl	28(%edx),%eax
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setbb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_IF_LTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_IF_LTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%eax
	fildl	(%eax)
	movl	28(%edx),%eax
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setaeb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_IF_GTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_IF_GTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%eax
	fildl	(%eax)
	movl	28(%edx),%eax
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setbeb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_LL_EQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_LL_EQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	28(%eax),%ecx
	movl	(%edx),%ebx
	movl	4(%edx),%edx
	cmpl	4(%ecx),%edx
	jne	Lj3184
	cmpl	(%ecx),%ebx
	jne	Lj3184
	jmp	Lj3183
	jmp	Lj3184
Lj3183:
	movb	$1,%dl
	jmp	Lj3185
Lj3184:
	movb	$0,%dl
Lj3185:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_LL_NEQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_LL_NEQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	28(%eax),%ecx
	movl	(%edx),%ebx
	movl	4(%edx),%edx
	cmpl	4(%ecx),%edx
	jne	Lj3192
	cmpl	(%ecx),%ebx
	jne	Lj3192
	jmp	Lj3193
	jmp	Lj3193
Lj3192:
	movb	$1,%dl
	jmp	Lj3194
Lj3193:
	movb	$0,%dl
Lj3194:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_LL_LT$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_LL_LT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	28(%eax),%ecx
	movl	(%edx),%ebx
	movl	4(%edx),%edx
	cmpl	4(%ecx),%edx
	jl	Lj3201
	jg	Lj3202
	cmpl	(%ecx),%ebx
	jb	Lj3201
	jmp	Lj3202
	jmp	Lj3202
Lj3201:
	movb	$1,%dl
	jmp	Lj3203
Lj3202:
	movb	$0,%dl
Lj3203:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_LL_GT$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_LL_GT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	28(%eax),%ecx
	movl	(%edx),%ebx
	movl	4(%edx),%edx
	cmpl	4(%ecx),%edx
	jg	Lj3210
	jl	Lj3211
	cmpl	(%ecx),%ebx
	ja	Lj3210
	jmp	Lj3211
	jmp	Lj3211
Lj3210:
	movb	$1,%dl
	jmp	Lj3212
Lj3211:
	movb	$0,%dl
Lj3212:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_LL_LTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_LL_LTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	28(%eax),%ecx
	movl	(%edx),%ebx
	movl	4(%edx),%edx
	cmpl	4(%ecx),%edx
	jl	Lj3219
	jg	Lj3220
	cmpl	(%ecx),%ebx
	jbe	Lj3219
	jmp	Lj3220
	jmp	Lj3220
Lj3219:
	movb	$1,%dl
	jmp	Lj3221
Lj3220:
	movb	$0,%dl
Lj3221:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_LL_GTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_LL_GTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	28(%eax),%ecx
	movl	(%edx),%ebx
	movl	4(%edx),%edx
	cmpl	4(%ecx),%edx
	jg	Lj3228
	jl	Lj3229
	cmpl	(%ecx),%ebx
	jae	Lj3228
	jmp	Lj3229
	jmp	Lj3229
Lj3228:
	movb	$1,%dl
	jmp	Lj3230
Lj3229:
	movb	$0,%dl
Lj3230:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_LF_EQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_LF_EQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%eax
	fildq	(%eax)
	movl	28(%edx),%eax
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	seteb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_LF_NEQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_LF_NEQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%eax
	fildq	(%eax)
	movl	28(%edx),%eax
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setneb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_LF_LT$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_LF_LT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%eax
	fildq	(%eax)
	movl	28(%edx),%eax
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setab	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_LF_GT$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_LF_GT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%eax
	fildq	(%eax)
	movl	28(%edx),%eax
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setbb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_LF_LTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_LF_LTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%eax
	fildq	(%eax)
	movl	28(%edx),%eax
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setaeb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_LF_GTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_LF_GTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%eax
	fildq	(%eax)
	movl	28(%edx),%eax
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setbeb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_FL_EQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_FL_EQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%ecx
	movl	28(%edx),%eax
	fildq	(%eax)
	fldl	(%ecx)
	fcompp
	fnstsw	%ax
	sahf
	seteb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_FL_NEQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_FL_NEQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%ecx
	movl	28(%edx),%eax
	fildq	(%eax)
	fldl	(%ecx)
	fcompp
	fnstsw	%ax
	sahf
	setneb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_FL_LT$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_FL_LT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%ecx
	movl	28(%edx),%eax
	fildq	(%eax)
	fldl	(%ecx)
	fcompp
	fnstsw	%ax
	sahf
	setbb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_FL_GT$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_FL_GT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%ecx
	movl	28(%edx),%eax
	fildq	(%eax)
	fldl	(%ecx)
	fcompp
	fnstsw	%ax
	sahf
	setab	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_FL_LTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_FL_LTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%ecx
	movl	28(%edx),%eax
	fildq	(%eax)
	fldl	(%ecx)
	fcompp
	fnstsw	%ax
	sahf
	setbeb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_FL_GTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_FL_GTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	24(%edx),%ecx
	movl	28(%edx),%eax
	fildq	(%eax)
	fldl	(%ecx)
	fcompp
	fnstsw	%ax
	sahf
	setaeb	%al
	movl	8(%edx),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_LI_EQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_LI_EQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ebx
	movl	28(%eax),%edx
	movl	(%edx),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	cmpl	4(%ebx),%edx
	jne	Lj3334
	cmpl	(%ebx),%ecx
	jne	Lj3334
	jmp	Lj3333
	jmp	Lj3334
Lj3333:
	movb	$1,%dl
	jmp	Lj3335
Lj3334:
	movb	$0,%dl
Lj3335:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_LI_NEQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_LI_NEQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ebx
	movl	28(%eax),%edx
	movl	(%edx),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	cmpl	4(%ebx),%edx
	jne	Lj3342
	cmpl	(%ebx),%ecx
	jne	Lj3342
	jmp	Lj3343
	jmp	Lj3343
Lj3342:
	movb	$1,%dl
	jmp	Lj3344
Lj3343:
	movb	$0,%dl
Lj3344:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_LI_LT$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_LI_LT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ebx
	movl	28(%eax),%edx
	movl	(%edx),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	cmpl	4(%ebx),%edx
	jg	Lj3351
	jl	Lj3352
	cmpl	(%ebx),%ecx
	ja	Lj3351
	jmp	Lj3352
	jmp	Lj3352
Lj3351:
	movb	$1,%dl
	jmp	Lj3353
Lj3352:
	movb	$0,%dl
Lj3353:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_LI_GT$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_LI_GT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ebx
	movl	28(%eax),%edx
	movl	(%edx),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	cmpl	4(%ebx),%edx
	jl	Lj3360
	jg	Lj3361
	cmpl	(%ebx),%ecx
	jb	Lj3360
	jmp	Lj3361
	jmp	Lj3361
Lj3360:
	movb	$1,%dl
	jmp	Lj3362
Lj3361:
	movb	$0,%dl
Lj3362:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_LI_LTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_LI_LTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ebx
	movl	28(%eax),%edx
	movl	(%edx),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	cmpl	4(%ebx),%edx
	jg	Lj3369
	jl	Lj3370
	cmpl	(%ebx),%ecx
	jae	Lj3369
	jmp	Lj3370
	jmp	Lj3370
Lj3369:
	movb	$1,%dl
	jmp	Lj3371
Lj3370:
	movb	$0,%dl
Lj3371:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_LI_GTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_LI_GTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ebx
	movl	28(%eax),%edx
	movl	(%edx),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	cmpl	4(%ebx),%edx
	jl	Lj3378
	jg	Lj3379
	cmpl	(%ebx),%ecx
	jbe	Lj3378
	jmp	Lj3379
	jmp	Lj3379
Lj3378:
	movb	$1,%dl
	jmp	Lj3380
Lj3379:
	movb	$0,%dl
Lj3380:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_IL_EQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_IL_EQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	(%edx),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	movl	28(%eax),%ebx
	cmpl	4(%ebx),%edx
	jne	Lj3388
	cmpl	(%ebx),%ecx
	jne	Lj3388
	jmp	Lj3387
	jmp	Lj3388
Lj3387:
	movb	$1,%dl
	jmp	Lj3389
Lj3388:
	movb	$0,%dl
Lj3389:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_IL_NEQ$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_IL_NEQ$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	(%edx),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	movl	28(%eax),%ebx
	cmpl	4(%ebx),%edx
	jne	Lj3396
	cmpl	(%ebx),%ecx
	jne	Lj3396
	jmp	Lj3397
	jmp	Lj3397
Lj3396:
	movb	$1,%dl
	jmp	Lj3398
Lj3397:
	movb	$0,%dl
Lj3398:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_IL_LT$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_IL_LT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	(%edx),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	movl	28(%eax),%ebx
	cmpl	4(%ebx),%edx
	jl	Lj3405
	jg	Lj3406
	cmpl	(%ebx),%ecx
	jb	Lj3405
	jmp	Lj3406
	jmp	Lj3406
Lj3405:
	movb	$1,%dl
	jmp	Lj3407
Lj3406:
	movb	$0,%dl
Lj3407:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_IL_GT$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_IL_GT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	(%edx),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	movl	28(%eax),%ebx
	cmpl	4(%ebx),%edx
	jg	Lj3414
	jl	Lj3415
	cmpl	(%ebx),%ecx
	ja	Lj3414
	jmp	Lj3415
	jmp	Lj3415
Lj3414:
	movb	$1,%dl
	jmp	Lj3416
Lj3415:
	movb	$0,%dl
Lj3416:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_IL_LTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_IL_LTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	(%edx),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	movl	28(%eax),%ebx
	cmpl	4(%ebx),%edx
	jl	Lj3423
	jg	Lj3424
	cmpl	(%ebx),%ecx
	jbe	Lj3423
	jmp	Lj3424
	jmp	Lj3424
Lj3423:
	movb	$1,%dl
	jmp	Lj3425
Lj3424:
	movb	$0,%dl
Lj3425:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_IL_GTE$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_IL_GTE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	(%edx),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	movl	28(%eax),%ebx
	cmpl	4(%ebx),%edx
	jg	Lj3432
	jl	Lj3433
	cmpl	(%ebx),%ecx
	jae	Lj3432
	jmp	Lj3433
	jmp	Lj3433
Lj3432:
	movb	$1,%dl
	jmp	Lj3434
Lj3433:
	movb	$0,%dl
Lj3434:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_AND$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_AND$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	cmpb	$0,(%edx)
	jne	Lj3443
	jmp	Lj3442
Lj3443:
	movl	28(%eax),%edx
	cmpb	$0,(%edx)
	jne	Lj3441
	jmp	Lj3442
Lj3441:
	movb	$1,%dl
	jmp	Lj3448
Lj3442:
	movb	$0,%dl
Lj3448:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_OR$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_OR$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	cmpb	$0,(%edx)
	jne	Lj3455
	jmp	Lj3457
Lj3457:
	movl	28(%eax),%edx
	cmpb	$0,(%edx)
	jne	Lj3455
	jmp	Lj3456
Lj3455:
	movb	$1,%dl
	jmp	Lj3462
Lj3456:
	movb	$0,%dl
Lj3462:
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSCORE_FUNC_NOT$PEXPRESSIONREC
_DBF_PRSCORE_FUNC_NOT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movb	(%edx),%dl
	testb	%dl,%dl
	seteb	%dl
	movl	8(%eax),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	movb	%dl,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_INIT$_DBF_PRSCORE
_INIT$_DBF_PRSCORE:
.reference __DBF_PRSCORE_init
.globl	__DBF_PRSCORE_init
__DBF_PRSCORE_init:
.reference _INIT$_DBF_PRSCORE
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_DBF_PRSDEF_TEXPRESSLIST$non_lazy_ptr-Lj2(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TEXPRESSLIST_$__CREATE$$TEXPRESSLIST$stub
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_VMT_DBF_PRSDEF_TEXPRESSLIST$non_lazy_ptr-Lj2(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TEXPRESSLIST_$__CREATE$$TEXPRESSLIST$stub
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_VMT_DBF_PRSDEF_TEXPRESSLIST$non_lazy_ptr-Lj2(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TEXPRESSLIST_$__CREATE$$TEXPRESSLIST$stub
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSNOPARTIALLIST$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_VMT_DBF_PRSDEF_TEXPRESSLIST$non_lazy_ptr-Lj2(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TEXPRESSLIST_$__CREATE$$TEXPRESSLIST$stub
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSPARTIALLIST$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_VMT_DBF_PRSDEF_TEXPRESSLIST$non_lazy_ptr-Lj2(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TEXPRESSLIST_$__CREATE$$TEXPRESSLIST$stub
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_VMT_DBF_PRSDEF_TEXPRESSLIST$non_lazy_ptr-Lj2(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TEXPRESSLIST_$__CREATE$$TEXPRESSLIST$stub
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSNOPARTIALLIST$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_VMT_DBF_PRSDEF_TEXPRESSLIST$non_lazy_ptr-Lj2(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TEXPRESSLIST_$__CREATE$$TEXPRESSLIST$stub
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSPARTIALLIST$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,(%edx)
	movl	$0,(%esp)
	movl	L_VMT_DBF_PRSDEF_TLEFTBRACKET$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld42$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TEXPRWORD_$__CREATE$ANSISTRING$TEXPRFUNC$$TEXPRWORD$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$0,(%esp)
	movl	L_VMT_DBF_PRSDEF_TRIGHTBRACKET$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld44$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TEXPRWORD_$__CREATE$ANSISTRING$TEXPRFUNC$$TEXPRWORD$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$0,(%esp)
	movl	L_VMT_DBF_PRSDEF_TCOMMA$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld48$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TEXPRWORD_$__CREATE$ANSISTRING$TEXPRFUNC$$TEXPRWORD$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movl	$0,4(%esp)
	movb	$1,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld50$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld19$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld52$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCADD_F_FF$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld19$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld54$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCADD_F_FI$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld19$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld56$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCADD_F_IF$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld19$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$0,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld58$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCADD_F_II$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld19$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld60$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCADD_F_FL$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld19$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$3,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld62$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCADD_F_IL$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld19$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld64$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCADD_F_LF$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld19$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$3,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld66$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCADD_F_LI$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld19$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$3,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld68$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCADD_F_LL$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld19$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld52$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSUB_F_FF$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld17$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld54$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSUB_F_FI$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld17$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld56$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSUB_F_IF$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld17$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$0,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld58$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSUB_F_II$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld17$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld60$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSUB_F_FL$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld17$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$3,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld62$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSUB_F_IL$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld17$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld64$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSUB_F_LF$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld17$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$3,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld66$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSUB_F_LI$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld17$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$3,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld68$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSUB_F_LL$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld17$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld52$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCMUL_F_FF$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld70$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld54$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCMUL_F_FI$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld70$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld56$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCMUL_F_IF$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld70$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$0,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld58$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCMUL_F_II$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld70$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld60$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCMUL_F_FL$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld70$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$3,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld62$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCMUL_F_IL$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld70$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld64$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCMUL_F_LF$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld70$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$3,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld66$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCMUL_F_LI$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld70$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$3,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld68$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCMUL_F_LL$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld70$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld52$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCDIV_F_FF$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld72$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld54$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCDIV_F_FI$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld72$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld56$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCDIV_F_IF$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld72$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$0,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld58$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCDIV_F_II$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld72$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld60$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCDIV_F_FL$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld72$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$3,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld62$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCDIV_F_IL$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld72$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$4,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld64$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCDIV_F_LF$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld72$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$3,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld66$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCDIV_F_LI$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld72$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$40,(%esp)
	movb	$3,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld68$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCDIV_F_LL$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld72$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld52$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_FF_EQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld74$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld52$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_FF_LT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld76$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld52$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_FF_GT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld78$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld52$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_FF_LTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld80$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld52$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_FF_GTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld82$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld52$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_FF_NEQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld84$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld54$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_FI_EQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld74$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld54$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_FI_LT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld76$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld54$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_FI_GT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld78$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld54$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_FI_LTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld80$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld54$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_FI_GTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld82$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld54$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_FI_NEQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld84$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld58$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_II_EQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld74$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld58$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_II_LT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld76$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld58$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_II_GT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld78$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld58$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_II_LTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld80$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld58$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_II_GTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld82$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld58$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_II_NEQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld84$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld56$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_IF_EQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld74$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld56$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_IF_LT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld76$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld56$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_IF_GT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld78$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld56$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_IF_LTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld80$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld56$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_IF_GTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld82$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld56$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_IF_NEQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld84$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld66$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_LL_EQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld74$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld66$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_LL_LT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld76$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld66$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_LL_GT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld78$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld66$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_LL_LTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld80$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld66$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_LL_GTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld82$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld66$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_LL_NEQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld84$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld64$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_LF_EQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld74$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld64$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_LF_LT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld76$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld64$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_LF_GT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld78$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld64$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_LF_LTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld80$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld64$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_LF_GTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld82$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld54$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_LF_NEQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld84$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld68$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_LI_EQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld74$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld68$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_LI_LT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld76$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld68$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_LI_GT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld78$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld68$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_LI_LTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld80$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld68$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_LI_GTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld82$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld68$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_LI_NEQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld84$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld60$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_FL_EQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld74$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld60$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_FL_LT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld76$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld60$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_FL_GT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld78$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld60$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_FL_LTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld80$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld60$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_FL_GTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld82$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld60$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_FL_NEQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld84$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld62$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_IL_EQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld74$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld62$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_IL_LT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld76$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld62$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_IL_GT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld78$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld62$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_IL_LTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld80$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld62$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_IL_GTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld82$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld62$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_IL_NEQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld84$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$85,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld86$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_NOT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld88$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$90,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld90$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_AND$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld92$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$100,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld90$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNC_OR$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld94$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$0,(%esp)
	movb	$1,8(%esp)
	movl	$1,12(%esp)
	movl	L_$DBF_PRSCORE$_Ld96$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,16(%esp)
	movl	$0,20(%esp)
	movl	L_DBF_PRSCORE_FUNCFLOATTOSTR$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld98$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATE$crcB9F63122$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$0,(%esp)
	movb	$1,8(%esp)
	movl	$1,12(%esp)
	movl	L_$DBF_PRSCORE$_Ld100$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,16(%esp)
	movl	$0,20(%esp)
	movl	L_DBF_PRSCORE_FUNCINTTOSTR$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld98$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATE$crcB9F63122$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$0,(%esp)
	movb	$1,8(%esp)
	movl	$1,12(%esp)
	movl	L_$DBF_PRSCORE$_Ld102$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,16(%esp)
	movl	$0,20(%esp)
	movl	L_DBF_PRSCORE_FUNCINT64TOSTR$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld98$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATE$crcB9F63122$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$0,(%esp)
	movb	$1,8(%esp)
	movl	$1,12(%esp)
	movl	L_$DBF_PRSCORE$_Ld104$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,16(%esp)
	movl	$0,20(%esp)
	movl	L_DBF_PRSCORE_FUNCDATETOSTR$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld106$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATE$crcB9F63122$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$0,(%esp)
	movb	$1,8(%esp)
	movl	$3,12(%esp)
	movl	L_$DBF_PRSCORE$_Ld108$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,16(%esp)
	movl	L_$DBF_PRSCORE$_Ld110$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,20(%esp)
	movl	L_DBF_PRSCORE_FUNCSUBSTRING$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld112$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATE$crcB9F63122$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$0,(%esp)
	movb	$1,8(%esp)
	movl	$1,12(%esp)
	movl	L_$DBF_PRSCORE$_Ld114$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,16(%esp)
	movl	L_$DBF_PRSCORE$_Ld116$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,20(%esp)
	movl	L_DBF_PRSCORE_FUNCUPPERCASE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld118$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATE$crcB9F63122$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$0,(%esp)
	movb	$1,8(%esp)
	movl	$1,12(%esp)
	movl	L_$DBF_PRSCORE$_Ld114$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,16(%esp)
	movl	L_$DBF_PRSCORE$_Ld120$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,20(%esp)
	movl	L_DBF_PRSCORE_FUNCLOWERCASE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld122$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATE$crcB9F63122$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld50$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSTRI_LT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld76$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld50$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSTRI_GT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld78$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld50$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSTRI_LTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld80$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld50$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSTRI_GTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld82$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld50$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSTRI_NEQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld84$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld50$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSTRI_EQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld74$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSNOPARTIALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSNOPARTIALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld50$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSTRIP_EQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld74$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSPARTIALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSPARTIALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld50$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSTR_LT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld76$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld50$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSTR_GT$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld78$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld50$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSTR_LTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld80$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld50$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSTR_GTE$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld82$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld50$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSTR_NEQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld84$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld50$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSTR_EQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld74$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSNOPARTIALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSNOPARTIALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	$80,(%esp)
	movb	$2,8(%esp)
	movl	L_$DBF_PRSCORE$_Ld50$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,12(%esp)
	movl	L_DBF_PRSCORE_FUNCSTRP_EQ$PEXPRESSIONREC$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$DBF_PRSCORE$_Ld74$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$0,%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub
	movl	%eax,%edx
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSPARTIALLIST$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSPARTIALLIST$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_DBF_PRSCORE
_FINALIZE$_DBF_PRSCORE:
.reference __DBF_PRSCORE_finalize
.globl	__DBF_PRSCORE_finalize
__DBF_PRSCORE_finalize:
.reference _FINALIZE$_DBF_PRSCORE
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj3474
Lj3474:
	popl	%ebx
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj3474(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST$non_lazy_ptr-Lj3474(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSNOPARTIALLIST$non_lazy_ptr-Lj3474(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSPARTIALLIST$non_lazy_ptr-Lj3474(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST$non_lazy_ptr-Lj3474(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSNOPARTIALLIST$non_lazy_ptr-Lj3474(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSPARTIALLIST$non_lazy_ptr-Lj3474(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST
.data
.zerofill __DATA, __common, _U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST, 4,2




	.align 2
.globl _U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST
.data
.zerofill __DATA, __common, _U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST, 4,2




	.align 2
.globl _U_DBF_PRSCORE_DBFWORDSSENSPARTIALLIST
.data
.zerofill __DATA, __common, _U_DBF_PRSCORE_DBFWORDSSENSPARTIALLIST, 4,2




	.align 2
.globl _U_DBF_PRSCORE_DBFWORDSINSENSPARTIALLIST
.data
.zerofill __DATA, __common, _U_DBF_PRSCORE_DBFWORDSINSENSPARTIALLIST, 4,2




	.align 2
.globl _U_DBF_PRSCORE_DBFWORDSSENSNOPARTIALLIST
.data
.zerofill __DATA, __common, _U_DBF_PRSCORE_DBFWORDSSENSNOPARTIALLIST, 4,2




	.align 2
.globl _U_DBF_PRSCORE_DBFWORDSINSENSNOPARTIALLIST
.data
.zerofill __DATA, __common, _U_DBF_PRSCORE_DBFWORDSINSENSNOPARTIALLIST, 4,2




	.align 2
.globl _U_DBF_PRSCORE_DBFWORDSGENERALLIST
.data
.zerofill __DATA, __common, _U_DBF_PRSCORE_DBFWORDSGENERALLIST, 4,2



.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld124
_$DBF_PRSCORE$_Ld124:
	.byte	23
	.ascii	"TCustomExpressionParser"

.const_data
	.align 2
.globl	_VMT_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER
_VMT_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER:
	.long	36,-36
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$DBF_PRSCORE$_Ld124
	.long	0,0
	.long	_$DBF_PRSCORE$_Ld125
	.long	_RTTI_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DESTROY
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
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CLEAREXPRESSIONS
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_DBF_PRSCORE
_THREADVARLIST_DBF_PRSCORE:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld2
_$DBF_PRSCORE$_Ld2:
	.short	0,1
	.long	0,-1,41
.reference _$DBF_PRSCORE$_Ld1
.globl	_$DBF_PRSCORE$_Ld1
_$DBF_PRSCORE$_Ld1:
.reference _$DBF_PRSCORE$_Ld2
	.ascii	"Function or operand has too few arguments\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld4
_$DBF_PRSCORE$_Ld4:
	.short	0,1
	.long	0,-1,22
.reference _$DBF_PRSCORE$_Ld3
.globl	_$DBF_PRSCORE$_Ld3
_$DBF_PRSCORE$_Ld3:
.reference _$DBF_PRSCORE$_Ld4
	.ascii	"Argument type mismatch\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld6
_$DBF_PRSCORE$_Ld6:
	.short	0,1
	.long	0,-1,42
.reference _$DBF_PRSCORE$_Ld5
.globl	_$DBF_PRSCORE$_Ld5
_$DBF_PRSCORE$_Ld5:
.reference _$DBF_PRSCORE$_Ld6
	.ascii	"Function or operand has too many arguments\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld8
_$DBF_PRSCORE$_Ld8:
	.short	0,1
	.long	0,-1,56
.reference _$DBF_PRSCORE$_Ld7
.globl	_$DBF_PRSCORE$_Ld7
_$DBF_PRSCORE$_Ld7:
.reference _$DBF_PRSCORE$_Ld8
	.ascii	"No function with this name, remove brackets for var"
	.ascii	"iable\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld10
_$DBF_PRSCORE$_Ld10:
	.short	0,1
	.long	0,-1,25
.reference _$DBF_PRSCORE$_Ld9
.globl	_$DBF_PRSCORE$_Ld9
_$DBF_PRSCORE$_Ld9:
.reference _$DBF_PRSCORE$_Ld10
	.ascii	"Operator/function missing\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld12
_$DBF_PRSCORE$_Ld12:
	.short	0,1
	.long	0,-1,18
.reference _$DBF_PRSCORE$_Ld11
.globl	_$DBF_PRSCORE$_Ld11
_$DBF_PRSCORE$_Ld11:
.reference _$DBF_PRSCORE$_Ld12
	.ascii	"Unknown variable '\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld14
_$DBF_PRSCORE$_Ld14:
	.short	0,1
	.long	0,-1,8
.reference _$DBF_PRSCORE$_Ld13
.globl	_$DBF_PRSCORE$_Ld13
_$DBF_PRSCORE$_Ld13:
.reference _$DBF_PRSCORE$_Ld14
	.ascii	"' found.\000"

.const
	.align 2
.globl	_$DBF_PRSCORE$_Ld15
_$DBF_PRSCORE$_Ld15:
	.ascii	"++\000"

.const
	.align 2
.globl	_$DBF_PRSCORE$_Ld16
_$DBF_PRSCORE$_Ld16:
	.ascii	"--\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld18
_$DBF_PRSCORE$_Ld18:
	.short	0,1
	.long	0,-1,1
.reference _$DBF_PRSCORE$_Ld17
.globl	_$DBF_PRSCORE$_Ld17
_$DBF_PRSCORE$_Ld17:
.reference _$DBF_PRSCORE$_Ld18
	.ascii	"-\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld20
_$DBF_PRSCORE$_Ld20:
	.short	0,1
	.long	0,-1,1
.reference _$DBF_PRSCORE$_Ld19
.globl	_$DBF_PRSCORE$_Ld19
_$DBF_PRSCORE$_Ld19:
.reference _$DBF_PRSCORE$_Ld20
	.ascii	"+\000"

.const
	.align 2
.globl	_$DBF_PRSCORE$_Ld21
_$DBF_PRSCORE$_Ld21:
	.ascii	"-@\000"

.const
	.align 2
.globl	_$DBF_PRSCORE$_Ld22
_$DBF_PRSCORE$_Ld22:
	.ascii	"+@\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld24
_$DBF_PRSCORE$_Ld24:
	.short	0,1
	.long	0,-1,3
.reference _$DBF_PRSCORE$_Ld23
.globl	_$DBF_PRSCORE$_Ld23
_$DBF_PRSCORE$_Ld23:
.reference _$DBF_PRSCORE$_Ld24
	.ascii	"not\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld26
_$DBF_PRSCORE$_Ld26:
	.short	0,1
	.long	0,-1,26
.reference _$DBF_PRSCORE$_Ld25
.globl	_$DBF_PRSCORE$_Ld25
_$DBF_PRSCORE$_Ld25:
.reference _$DBF_PRSCORE$_Ld26
	.ascii	"Missing operator between '\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld28
_$DBF_PRSCORE$_Ld28:
	.short	0,1
	.long	0,-1,7
.reference _$DBF_PRSCORE$_Ld27
.globl	_$DBF_PRSCORE$_Ld27
_$DBF_PRSCORE$_Ld27:
.reference _$DBF_PRSCORE$_Ld28
	.ascii	"' and '\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld30
_$DBF_PRSCORE$_Ld30:
	.short	0,1
	.long	0,-1,1
.reference _$DBF_PRSCORE$_Ld29
.globl	_$DBF_PRSCORE$_Ld29
_$DBF_PRSCORE$_Ld29:
.reference _$DBF_PRSCORE$_Ld30
	.ascii	"'\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld32
_$DBF_PRSCORE$_Ld32:
	.short	0,1
	.long	0,-1,23
.reference _$DBF_PRSCORE$_Ld31
.globl	_$DBF_PRSCORE$_Ld31
_$DBF_PRSCORE$_Ld31:
.reference _$DBF_PRSCORE$_Ld32
	.ascii	"Missing closing bracket\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld34
_$DBF_PRSCORE$_Ld34:
	.short	0,1
	.long	0,-1,27
.reference _$DBF_PRSCORE$_Ld33
.globl	_$DBF_PRSCORE$_Ld33
_$DBF_PRSCORE$_Ld33:
.reference _$DBF_PRSCORE$_Ld34
	.ascii	"Missing operator between )(\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld36
_$DBF_PRSCORE$_Ld36:
	.short	0,1
	.long	0,-1,48
.reference _$DBF_PRSCORE$_Ld35
.globl	_$DBF_PRSCORE$_Ld35
_$DBF_PRSCORE$_Ld35:
.reference _$DBF_PRSCORE$_Ld36
	.ascii	"Missing operator between ) and constant/variable\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld38
_$DBF_PRSCORE$_Ld38:
	.short	0,1
	.long	0,-1,48
.reference _$DBF_PRSCORE$_Ld37
.globl	_$DBF_PRSCORE$_Ld37
_$DBF_PRSCORE$_Ld37:
.reference _$DBF_PRSCORE$_Ld38
	.ascii	"Missing operator between constant/variable and (\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld40
_$DBF_PRSCORE$_Ld40:
	.short	0,1
	.long	0,-1,1
.reference _$DBF_PRSCORE$_Ld39
.globl	_$DBF_PRSCORE$_Ld39
_$DBF_PRSCORE$_Ld39:
.reference _$DBF_PRSCORE$_Ld40
	.ascii	"^\000"

.const
	.align 2
.globl	_$DBF_PRSCORE$_Ld41
_$DBF_PRSCORE$_Ld41:
	.ascii	"^@\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld43
_$DBF_PRSCORE$_Ld43:
	.short	0,1
	.long	0,-1,1
.reference _$DBF_PRSCORE$_Ld42
.globl	_$DBF_PRSCORE$_Ld42
_$DBF_PRSCORE$_Ld42:
.reference _$DBF_PRSCORE$_Ld43
	.ascii	"(\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld45
_$DBF_PRSCORE$_Ld45:
	.short	0,1
	.long	0,-1,1
.reference _$DBF_PRSCORE$_Ld44
.globl	_$DBF_PRSCORE$_Ld44
_$DBF_PRSCORE$_Ld44:
.reference _$DBF_PRSCORE$_Ld45
	.ascii	")\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld47
_$DBF_PRSCORE$_Ld47:
	.short	0,1
	.long	0,-1,8
.reference _$DBF_PRSCORE$_Ld46
.globl	_$DBF_PRSCORE$_Ld46
_$DBF_PRSCORE$_Ld46:
.reference _$DBF_PRSCORE$_Ld47
	.ascii	"yyyymmdd\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld49
_$DBF_PRSCORE$_Ld49:
	.short	0,1
	.long	0,-1,1
.reference _$DBF_PRSCORE$_Ld48
.globl	_$DBF_PRSCORE$_Ld48
_$DBF_PRSCORE$_Ld48:
.reference _$DBF_PRSCORE$_Ld49
	.ascii	",\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld51
_$DBF_PRSCORE$_Ld51:
	.short	0,1
	.long	0,-1,2
.reference _$DBF_PRSCORE$_Ld50
.globl	_$DBF_PRSCORE$_Ld50
_$DBF_PRSCORE$_Ld50:
.reference _$DBF_PRSCORE$_Ld51
	.ascii	"SS\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld53
_$DBF_PRSCORE$_Ld53:
	.short	0,1
	.long	0,-1,2
.reference _$DBF_PRSCORE$_Ld52
.globl	_$DBF_PRSCORE$_Ld52
_$DBF_PRSCORE$_Ld52:
.reference _$DBF_PRSCORE$_Ld53
	.ascii	"FF\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld55
_$DBF_PRSCORE$_Ld55:
	.short	0,1
	.long	0,-1,2
.reference _$DBF_PRSCORE$_Ld54
.globl	_$DBF_PRSCORE$_Ld54
_$DBF_PRSCORE$_Ld54:
.reference _$DBF_PRSCORE$_Ld55
	.ascii	"FI\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld57
_$DBF_PRSCORE$_Ld57:
	.short	0,1
	.long	0,-1,2
.reference _$DBF_PRSCORE$_Ld56
.globl	_$DBF_PRSCORE$_Ld56
_$DBF_PRSCORE$_Ld56:
.reference _$DBF_PRSCORE$_Ld57
	.ascii	"IF\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld59
_$DBF_PRSCORE$_Ld59:
	.short	0,1
	.long	0,-1,2
.reference _$DBF_PRSCORE$_Ld58
.globl	_$DBF_PRSCORE$_Ld58
_$DBF_PRSCORE$_Ld58:
.reference _$DBF_PRSCORE$_Ld59
	.ascii	"II\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld61
_$DBF_PRSCORE$_Ld61:
	.short	0,1
	.long	0,-1,2
.reference _$DBF_PRSCORE$_Ld60
.globl	_$DBF_PRSCORE$_Ld60
_$DBF_PRSCORE$_Ld60:
.reference _$DBF_PRSCORE$_Ld61
	.ascii	"FL\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld63
_$DBF_PRSCORE$_Ld63:
	.short	0,1
	.long	0,-1,2
.reference _$DBF_PRSCORE$_Ld62
.globl	_$DBF_PRSCORE$_Ld62
_$DBF_PRSCORE$_Ld62:
.reference _$DBF_PRSCORE$_Ld63
	.ascii	"IL\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld65
_$DBF_PRSCORE$_Ld65:
	.short	0,1
	.long	0,-1,2
.reference _$DBF_PRSCORE$_Ld64
.globl	_$DBF_PRSCORE$_Ld64
_$DBF_PRSCORE$_Ld64:
.reference _$DBF_PRSCORE$_Ld65
	.ascii	"LF\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld67
_$DBF_PRSCORE$_Ld67:
	.short	0,1
	.long	0,-1,2
.reference _$DBF_PRSCORE$_Ld66
.globl	_$DBF_PRSCORE$_Ld66
_$DBF_PRSCORE$_Ld66:
.reference _$DBF_PRSCORE$_Ld67
	.ascii	"LL\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld69
_$DBF_PRSCORE$_Ld69:
	.short	0,1
	.long	0,-1,2
.reference _$DBF_PRSCORE$_Ld68
.globl	_$DBF_PRSCORE$_Ld68
_$DBF_PRSCORE$_Ld68:
.reference _$DBF_PRSCORE$_Ld69
	.ascii	"LI\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld71
_$DBF_PRSCORE$_Ld71:
	.short	0,1
	.long	0,-1,1
.reference _$DBF_PRSCORE$_Ld70
.globl	_$DBF_PRSCORE$_Ld70
_$DBF_PRSCORE$_Ld70:
.reference _$DBF_PRSCORE$_Ld71
	.ascii	"*\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld73
_$DBF_PRSCORE$_Ld73:
	.short	0,1
	.long	0,-1,1
.reference _$DBF_PRSCORE$_Ld72
.globl	_$DBF_PRSCORE$_Ld72
_$DBF_PRSCORE$_Ld72:
.reference _$DBF_PRSCORE$_Ld73
	.ascii	"/\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld75
_$DBF_PRSCORE$_Ld75:
	.short	0,1
	.long	0,-1,1
.reference _$DBF_PRSCORE$_Ld74
.globl	_$DBF_PRSCORE$_Ld74
_$DBF_PRSCORE$_Ld74:
.reference _$DBF_PRSCORE$_Ld75
	.ascii	"=\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld77
_$DBF_PRSCORE$_Ld77:
	.short	0,1
	.long	0,-1,1
.reference _$DBF_PRSCORE$_Ld76
.globl	_$DBF_PRSCORE$_Ld76
_$DBF_PRSCORE$_Ld76:
.reference _$DBF_PRSCORE$_Ld77
	.ascii	"<\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld79
_$DBF_PRSCORE$_Ld79:
	.short	0,1
	.long	0,-1,1
.reference _$DBF_PRSCORE$_Ld78
.globl	_$DBF_PRSCORE$_Ld78
_$DBF_PRSCORE$_Ld78:
.reference _$DBF_PRSCORE$_Ld79
	.ascii	">\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld81
_$DBF_PRSCORE$_Ld81:
	.short	0,1
	.long	0,-1,2
.reference _$DBF_PRSCORE$_Ld80
.globl	_$DBF_PRSCORE$_Ld80
_$DBF_PRSCORE$_Ld80:
.reference _$DBF_PRSCORE$_Ld81
	.ascii	"<=\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld83
_$DBF_PRSCORE$_Ld83:
	.short	0,1
	.long	0,-1,2
.reference _$DBF_PRSCORE$_Ld82
.globl	_$DBF_PRSCORE$_Ld82
_$DBF_PRSCORE$_Ld82:
.reference _$DBF_PRSCORE$_Ld83
	.ascii	">=\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld85
_$DBF_PRSCORE$_Ld85:
	.short	0,1
	.long	0,-1,2
.reference _$DBF_PRSCORE$_Ld84
.globl	_$DBF_PRSCORE$_Ld84
_$DBF_PRSCORE$_Ld84:
.reference _$DBF_PRSCORE$_Ld85
	.ascii	"<>\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld87
_$DBF_PRSCORE$_Ld87:
	.short	0,1
	.long	0,-1,1
.reference _$DBF_PRSCORE$_Ld86
.globl	_$DBF_PRSCORE$_Ld86
_$DBF_PRSCORE$_Ld86:
.reference _$DBF_PRSCORE$_Ld87
	.ascii	"B\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld89
_$DBF_PRSCORE$_Ld89:
	.short	0,1
	.long	0,-1,3
.reference _$DBF_PRSCORE$_Ld88
.globl	_$DBF_PRSCORE$_Ld88
_$DBF_PRSCORE$_Ld88:
.reference _$DBF_PRSCORE$_Ld89
	.ascii	"NOT\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld91
_$DBF_PRSCORE$_Ld91:
	.short	0,1
	.long	0,-1,2
.reference _$DBF_PRSCORE$_Ld90
.globl	_$DBF_PRSCORE$_Ld90
_$DBF_PRSCORE$_Ld90:
.reference _$DBF_PRSCORE$_Ld91
	.ascii	"BB\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld93
_$DBF_PRSCORE$_Ld93:
	.short	0,1
	.long	0,-1,3
.reference _$DBF_PRSCORE$_Ld92
.globl	_$DBF_PRSCORE$_Ld92
_$DBF_PRSCORE$_Ld92:
.reference _$DBF_PRSCORE$_Ld93
	.ascii	"AND\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld95
_$DBF_PRSCORE$_Ld95:
	.short	0,1
	.long	0,-1,2
.reference _$DBF_PRSCORE$_Ld94
.globl	_$DBF_PRSCORE$_Ld94
_$DBF_PRSCORE$_Ld94:
.reference _$DBF_PRSCORE$_Ld95
	.ascii	"OR\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld97
_$DBF_PRSCORE$_Ld97:
	.short	0,1
	.long	0,-1,3
.reference _$DBF_PRSCORE$_Ld96
.globl	_$DBF_PRSCORE$_Ld96
_$DBF_PRSCORE$_Ld96:
.reference _$DBF_PRSCORE$_Ld97
	.ascii	"FII\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld99
_$DBF_PRSCORE$_Ld99:
	.short	0,1
	.long	0,-1,3
.reference _$DBF_PRSCORE$_Ld98
.globl	_$DBF_PRSCORE$_Ld98
_$DBF_PRSCORE$_Ld98:
.reference _$DBF_PRSCORE$_Ld99
	.ascii	"STR\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld101
_$DBF_PRSCORE$_Ld101:
	.short	0,1
	.long	0,-1,3
.reference _$DBF_PRSCORE$_Ld100
.globl	_$DBF_PRSCORE$_Ld100
_$DBF_PRSCORE$_Ld100:
.reference _$DBF_PRSCORE$_Ld101
	.ascii	"III\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld103
_$DBF_PRSCORE$_Ld103:
	.short	0,1
	.long	0,-1,3
.reference _$DBF_PRSCORE$_Ld102
.globl	_$DBF_PRSCORE$_Ld102
_$DBF_PRSCORE$_Ld102:
.reference _$DBF_PRSCORE$_Ld103
	.ascii	"LII\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld105
_$DBF_PRSCORE$_Ld105:
	.short	0,1
	.long	0,-1,1
.reference _$DBF_PRSCORE$_Ld104
.globl	_$DBF_PRSCORE$_Ld104
_$DBF_PRSCORE$_Ld104:
.reference _$DBF_PRSCORE$_Ld105
	.ascii	"D\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld107
_$DBF_PRSCORE$_Ld107:
	.short	0,1
	.long	0,-1,4
.reference _$DBF_PRSCORE$_Ld106
.globl	_$DBF_PRSCORE$_Ld106
_$DBF_PRSCORE$_Ld106:
.reference _$DBF_PRSCORE$_Ld107
	.ascii	"DTOS\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld109
_$DBF_PRSCORE$_Ld109:
	.short	0,1
	.long	0,-1,3
.reference _$DBF_PRSCORE$_Ld108
.globl	_$DBF_PRSCORE$_Ld108
_$DBF_PRSCORE$_Ld108:
.reference _$DBF_PRSCORE$_Ld109
	.ascii	"SII\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld111
_$DBF_PRSCORE$_Ld111:
	.short	0,1
	.long	0,-1,4
.reference _$DBF_PRSCORE$_Ld110
.globl	_$DBF_PRSCORE$_Ld110
_$DBF_PRSCORE$_Ld110:
.reference _$DBF_PRSCORE$_Ld111
	.ascii	"SUBS\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld113
_$DBF_PRSCORE$_Ld113:
	.short	0,1
	.long	0,-1,6
.reference _$DBF_PRSCORE$_Ld112
.globl	_$DBF_PRSCORE$_Ld112
_$DBF_PRSCORE$_Ld112:
.reference _$DBF_PRSCORE$_Ld113
	.ascii	"SUBSTR\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld115
_$DBF_PRSCORE$_Ld115:
	.short	0,1
	.long	0,-1,1
.reference _$DBF_PRSCORE$_Ld114
.globl	_$DBF_PRSCORE$_Ld114
_$DBF_PRSCORE$_Ld114:
.reference _$DBF_PRSCORE$_Ld115
	.ascii	"S\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld117
_$DBF_PRSCORE$_Ld117:
	.short	0,1
	.long	0,-1,5
.reference _$DBF_PRSCORE$_Ld116
.globl	_$DBF_PRSCORE$_Ld116
_$DBF_PRSCORE$_Ld116:
.reference _$DBF_PRSCORE$_Ld117
	.ascii	"UPPER\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld119
_$DBF_PRSCORE$_Ld119:
	.short	0,1
	.long	0,-1,9
.reference _$DBF_PRSCORE$_Ld118
.globl	_$DBF_PRSCORE$_Ld118
_$DBF_PRSCORE$_Ld118:
.reference _$DBF_PRSCORE$_Ld119
	.ascii	"UPPERCASE\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld121
_$DBF_PRSCORE$_Ld121:
	.short	0,1
	.long	0,-1,5
.reference _$DBF_PRSCORE$_Ld120
.globl	_$DBF_PRSCORE$_Ld120
_$DBF_PRSCORE$_Ld120:
.reference _$DBF_PRSCORE$_Ld121
	.ascii	"LOWER\000"

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld123
_$DBF_PRSCORE$_Ld123:
	.short	0,1
	.long	0,-1,9
.reference _$DBF_PRSCORE$_Ld122
.globl	_$DBF_PRSCORE$_Ld122
_$DBF_PRSCORE$_Ld122:
.reference _$DBF_PRSCORE$_Ld123
	.ascii	"LOWERCASE\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TEXPRWORD_$__GETISVARIABLE$$BOOLEAN$stub:
.indirect_symbol _DBF_PRSDEF_TEXPRWORD_$__GETISVARIABLE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_LINKVARIABLES$PEXPRESSIONREC$stub:
.indirect_symbol _DBF_PRSCORE_LINKVARIABLES$PEXPRESSIONREC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_LINKVARIABLE$PEXPRESSIONREC$stub:
.indirect_symbol _DBF_PRSCORE_LINKVARIABLE$PEXPRESSIONREC
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

L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CREATE$$TOBJECT
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

L_DBF_PRSDEF_TEXPRESSLIST_$__CREATE$$TEXPRESSLIST$stub:
.indirect_symbol _DBF_PRSDEF_TEXPRESSLIST_$__CREATE$$TEXPRESSLIST
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

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
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

L_SYSTEM_TOBJECT_$__DESTROY$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__DESTROY
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

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__PARSESTRING$ANSISTRING$TEXPRCOLLECTION$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__PARSESTRING$ANSISTRING$TEXPRCOLLECTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CHECK$TEXPRCOLLECTION$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CHECK$TEXPRCOLLECTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKETREE$TEXPRCOLLECTION$LONGINT$LONGINT$$PEXPRESSIONREC$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKETREE$TEXPRCOLLECTION$LONGINT$LONGINT$$PEXPRESSIONREC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CHECKARGUMENTS$PEXPRESSIONREC$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CHECKARGUMENTS$PEXPRESSIONREC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__REMOVECONSTANTS$PEXPRESSIONREC$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__REMOVECONSTANTS$PEXPRESSIONREC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKELINKEDLIST$PEXPRESSIONREC$PPCHAR$PPCHAR$PINTEGER$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKELINKEDLIST$PEXPRESSIONREC$PPCHAR$PPCHAR$PINTEGER
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

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DISPOSETREE$PEXPRESSIONREC$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DISPOSETREE$PEXPRESSIONREC
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

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_CHECKARGUMENTS$PEXPRESSIONREC_INTERNALCHECKARGUMENTS$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_CHECKARGUMENTS$PEXPRESSIONREC_INTERNALCHECKARGUMENTS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_CHECKARGUMENTS$PEXPRESSIONREC_FINDALTERNATE$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_CHECKARGUMENTS$PEXPRESSIONREC_FINDALTERNATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__EXCHANGE$LONGINT$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__EXCHANGE$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CLASSES_TLIST_$__GET$LONGINT$$POINTER
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

L_DBF_PRSDEF_EXPRCHARTOEXPRTYPE$CHAR$$TEXPRESSIONTYPE$stub:
.indirect_symbol _DBF_PRSDEF_EXPRCHARTOEXPRTYPE$CHAR$$TEXPRESSIONTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__RESULTCANVARY$PEXPRESSIONREC$$BOOLEAN$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__RESULTCANVARY$PEXPRESSIONREC$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__EVALUATECURRENT$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__EVALUATECURRENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TBOOLEANCONSTANT_$__CREATE$ANSISTRING$BOOLEAN$$TBOOLEANCONSTANT$stub:
.indirect_symbol _DBF_PRSDEF_TBOOLEANCONSTANT_$__CREATE$ANSISTRING$BOOLEAN$$TBOOLEANCONSTANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TFLOATCONSTANT_$__CREATEASDOUBLE$ANSISTRING$DOUBLE$$TFLOATCONSTANT$stub:
.indirect_symbol _DBF_PRSDEF_TFLOATCONSTANT_$__CREATEASDOUBLE$ANSISTRING$DOUBLE$$TFLOATCONSTANT
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

L_DBF_PRSDEF_TSTRINGCONSTANT_$__CREATE$ANSISTRING$$TSTRINGCONSTANT$stub:
.indirect_symbol _DBF_PRSDEF_TSTRINGCONSTANT_$__CREATE$ANSISTRING$$TSTRINGCONSTANT
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

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DISPOSELIST$PEXPRESSIONREC$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DISPOSELIST$PEXPRESSIONREC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_freemem$stub:
.indirect_symbol fpc_freemem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TDYNAMICTYPE_$__CREATE$PPCHAR$PPCHAR$PINTEGER$$TDYNAMICTYPE$stub:
.indirect_symbol _DBF_PRSDEF_TDYNAMICTYPE_$__CREATE$PPCHAR$PPCHAR$PINTEGER$$TDYNAMICTYPE
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

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_PARSESTRING$ANSISTRING$TEXPRCOLLECTION_READWORD$ANSISTRING$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_PARSESTRING$ANSISTRING$TEXPRCOLLECTION_READWORD$ANSISTRING
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

Lfpc_ansistr_unique$stub:
.indirect_symbol fpc_ansistr_unique
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

L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TFLOATCONSTANT_$__CREATE$ANSISTRING$ANSISTRING$$TFLOATCONSTANT$stub:
.indirect_symbol _DBF_PRSDEF_TFLOATCONSTANT_$__CREATE$ANSISTRING$ANSISTRING$$TFLOATCONSTANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TINTEGERCONSTANT_$__CREATE$LONGINT$$TINTEGERCONSTANT$stub:
.indirect_symbol _DBF_PRSDEF_TINTEGERCONSTANT_$__CREATE$LONGINT$$TINTEGERCONSTANT
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

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_PARSESTRING$ANSISTRING$TEXPRCOLLECTION_READCONSTANT$crcC67E46C4$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$_PARSESTRING$ANSISTRING$TEXPRCOLLECTION_READCONSTANT$crcC67E46C4
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TEXPRCOLLECTION_$__CHECK$stub:
.indirect_symbol _DBF_PRSDEF_TEXPRCOLLECTION_$__CHECK
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

L_CLASSES_TLIST_$__PUT$LONGINT$POINTER$stub:
.indirect_symbol _CLASSES_TLIST_$__PUT$LONGINT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__SETCOUNT$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__SETCOUNT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TFUNCTION_$__CREATE$crcB9F63122$stub:
.indirect_symbol _DBF_PRSDEF_TFUNCTION_$__CREATE$crcB9F63122
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TINTEGERVARIABLE_$__CREATE$ANSISTRING$PINTEGER$$TINTEGERVARIABLE$stub:
.indirect_symbol _DBF_PRSDEF_TINTEGERVARIABLE_$__CREATE$ANSISTRING$PINTEGER$$TINTEGERVARIABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TLARGEINTVARIABLE_$__CREATE$ANSISTRING$PLARGEINT$$TLARGEINTVARIABLE$stub:
.indirect_symbol _DBF_PRSDEF_TLARGEINTVARIABLE_$__CREATE$ANSISTRING$PLARGEINT$$TLARGEINTVARIABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TDATETIMEVARIABLE_$__CREATE$ANSISTRING$PDATETIMEREC$$TDATETIMEVARIABLE$stub:
.indirect_symbol _DBF_PRSDEF_TDATETIMEVARIABLE_$__CREATE$ANSISTRING$PDATETIMEREC$$TDATETIMEVARIABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TBOOLEANVARIABLE_$__CREATE$ANSISTRING$PBOOLEAN$$TBOOLEANVARIABLE$stub:
.indirect_symbol _DBF_PRSDEF_TBOOLEANVARIABLE_$__CREATE$ANSISTRING$PBOOLEAN$$TBOOLEANVARIABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TFLOATVARIABLE_$__CREATE$ANSISTRING$PDOUBLE$$TFLOATVARIABLE$stub:
.indirect_symbol _DBF_PRSDEF_TFLOATVARIABLE_$__CREATE$ANSISTRING$PDOUBLE$$TFLOATVARIABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TSTRINGVARIABLE_$__CREATE$ANSISTRING$PPCHAR$$TSTRINGVARIABLE$stub:
.indirect_symbol _DBF_PRSDEF_TSTRINGVARIABLE_$__CREATE$ANSISTRING$PPCHAR$$TSTRINGVARIABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_getmem$stub:
.indirect_symbol fpc_getmem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__ADDEXPRESSION$ANSISTRING$$LONGINT$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__ADDEXPRESSION$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__COMPILEEXPRESSION$ANSISTRING$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__COMPILEEXPRESSION$ANSISTRING
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

Lfpc_char_to_ansistr$stub:
.indirect_symbol fpc_char_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TDYNAMICTYPE_$__ASSURESPACE$LONGINT$stub:
.indirect_symbol _DBF_PRSDEF_TDYNAMICTYPE_$__ASSURESPACE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FLOATTOTEXT$PCHAR$EXTENDED$TFLOATFORMAT$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSUTILS_FLOATTOTEXT$PCHAR$EXTENDED$TFLOATFORMAT$LONGINT$LONGINT$$LONGINT
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

L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSSUPP_GETSTRFROMINT64_WIDTH$INT64$LONGINT$PCHAR$CHAR$stub:
.indirect_symbol _DBF_PRSSUPP_GETSTRFROMINT64_WIDTH$INT64$LONGINT$PCHAR$CHAR
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

L_DBF_PRSCORE_FUNCINTTOSTR_GEN$PEXPRESSIONREC$INT64$stub:
.indirect_symbol _DBF_PRSCORE_FUNCINTTOSTR_GEN$PEXPRESSIONREC$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DATETIMETOSTRING$ANSISTRING$ANSISTRING$TDATETIME$stub:
.indirect_symbol _SYSUTILS_DATETIMETOSTRING$ANSISTRING$ANSISTRING$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TDYNAMICTYPE_$__APPEND$PCHAR$LONGINT$stub:
.indirect_symbol _DBF_PRSDEF_TDYNAMICTYPE_$__APPEND$PCHAR$LONGINT
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

Lfpc_mul_int64$stub:
.indirect_symbol fpc_mul_int64
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

Lfpc_ansistr_setlength$stub:
.indirect_symbol fpc_ansistr_setlength
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_ANSIPOS$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_ANSIPOS$ANSISTRING$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_ANSISTRPOS$PCHAR$PCHAR$$PCHAR$stub:
.indirect_symbol _SYSUTILS_ANSISTRPOS$PCHAR$PCHAR$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TEXPRWORD_$__CREATE$ANSISTRING$TEXPRFUNC$$TEXPRWORD$stub:
.indirect_symbol _DBF_PRSDEF_TEXPRWORD_$__CREATE$ANSISTRING$TEXPRFUNC$$TEXPRWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60$stub:
.indirect_symbol _DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60
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
.globl	_INIT_DBF_PRSCORE_DEF261
_INIT_DBF_PRSCORE_DEF261:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_DBF_PRSCORE_DEF280
_INIT_DBF_PRSCORE_DEF280:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$DBF_PRSCORE$_Ld125
_$DBF_PRSCORE$_Ld125:
	.short	0
	.long	_$DBF_PRSCORE$_Ld126
	.align 2
.globl	_$DBF_PRSCORE$_Ld126
_$DBF_PRSCORE$_Ld126:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER
_INIT_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER:
	.byte	15,23
	.ascii	"TCustomExpressionParser"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER
_RTTI_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER:
	.byte	15,23
	.ascii	"TCustomExpressionParser"
	.long	_VMT_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	11
	.ascii	"dbf_prscore"
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
L_VMT_DBF_PRSSUPP_TOCOLLECTION$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSSUPP_TOCOLLECTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_TEXPRESSLIST$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_TEXPRESSLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_TEXPRCOLLECTION$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_TEXPRCOLLECTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_EPARSEREXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_EPARSEREXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld1$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld3$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld5$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld7$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_EMPTYSTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_TBOOLEANCONSTANT$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_TBOOLEANCONSTANT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_TFLOATCONSTANT$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_TFLOATCONSTANT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_TSTRINGCONSTANT$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_TSTRINGCONSTANT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_TDYNAMICTYPE$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_TDYNAMICTYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld9$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_DEFAULTFORMATSETTINGS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_TINTEGERCONSTANT$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_TINTEGERCONSTANT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld11$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld13$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld15$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld16$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld16
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld17$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld19$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld21$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld22$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld22
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld23$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld25$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld27$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld27
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld29$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld29
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld31$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld31
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld33$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld33
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld35$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld35
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld37$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld37
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld39$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld39
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld41$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld41
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_TFUNCTION$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_TFUNCTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_TINTEGERVARIABLE$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_TINTEGERVARIABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_TLARGEINTVARIABLE$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_TLARGEINTVARIABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_TDATETIMEVARIABLE$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_TDATETIMEVARIABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_TBOOLEANVARIABLE$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_TBOOLEANVARIABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_TFLOATVARIABLE$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_TFLOATVARIABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_TSTRINGVARIABLE$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_TSTRINGVARIABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld42$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld42
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld44$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld44
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld46$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld46
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_WIDESTRINGMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr:
.indirect_symbol _U_DBF_PRSCORE_DBFWORDSGENERALLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST$non_lazy_ptr:
.indirect_symbol _U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_PRSCORE_DBFWORDSINSENSNOPARTIALLIST$non_lazy_ptr:
.indirect_symbol _U_DBF_PRSCORE_DBFWORDSINSENSNOPARTIALLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_PRSCORE_DBFWORDSINSENSPARTIALLIST$non_lazy_ptr:
.indirect_symbol _U_DBF_PRSCORE_DBFWORDSINSENSPARTIALLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST$non_lazy_ptr:
.indirect_symbol _U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_PRSCORE_DBFWORDSSENSNOPARTIALLIST$non_lazy_ptr:
.indirect_symbol _U_DBF_PRSCORE_DBFWORDSSENSNOPARTIALLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_PRSCORE_DBFWORDSSENSPARTIALLIST$non_lazy_ptr:
.indirect_symbol _U_DBF_PRSCORE_DBFWORDSSENSPARTIALLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_TLEFTBRACKET$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_TLEFTBRACKET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_TRIGHTBRACKET$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_TRIGHTBRACKET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_TCOMMA$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_TCOMMA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld48$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld48
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld50$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld50
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld52$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld52
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCADD_F_FF$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCADD_F_FF$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld54$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld54
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCADD_F_FI$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCADD_F_FI$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld56$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld56
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCADD_F_IF$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCADD_F_IF$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld58$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld58
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCADD_F_II$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCADD_F_II$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld60$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld60
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCADD_F_FL$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCADD_F_FL$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld62$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld62
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCADD_F_IL$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCADD_F_IL$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld64$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld64
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCADD_F_LF$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCADD_F_LF$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld66$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld66
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCADD_F_LI$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCADD_F_LI$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld68$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld68
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCADD_F_LL$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCADD_F_LL$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSUB_F_FF$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSUB_F_FF$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSUB_F_FI$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSUB_F_FI$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSUB_F_IF$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSUB_F_IF$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSUB_F_II$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSUB_F_II$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSUB_F_FL$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSUB_F_FL$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSUB_F_IL$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSUB_F_IL$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSUB_F_LF$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSUB_F_LF$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSUB_F_LI$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSUB_F_LI$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSUB_F_LL$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSUB_F_LL$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCMUL_F_FF$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCMUL_F_FF$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld70$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld70
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCMUL_F_FI$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCMUL_F_FI$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCMUL_F_IF$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCMUL_F_IF$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCMUL_F_II$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCMUL_F_II$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCMUL_F_FL$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCMUL_F_FL$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCMUL_F_IL$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCMUL_F_IL$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCMUL_F_LF$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCMUL_F_LF$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCMUL_F_LI$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCMUL_F_LI$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCMUL_F_LL$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCMUL_F_LL$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCDIV_F_FF$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCDIV_F_FF$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld72$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld72
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCDIV_F_FI$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCDIV_F_FI$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCDIV_F_IF$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCDIV_F_IF$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCDIV_F_II$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCDIV_F_II$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCDIV_F_FL$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCDIV_F_FL$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCDIV_F_IL$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCDIV_F_IL$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCDIV_F_LF$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCDIV_F_LF$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCDIV_F_LI$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCDIV_F_LI$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCDIV_F_LL$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCDIV_F_LL$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_FF_EQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_FF_EQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld74$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld74
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_FF_LT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_FF_LT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld76$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld76
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_FF_GT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_FF_GT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld78$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld78
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_FF_LTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_FF_LTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld80$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld80
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_FF_GTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_FF_GTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld82$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld82
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_FF_NEQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_FF_NEQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld84$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld84
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_FI_EQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_FI_EQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_FI_LT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_FI_LT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_FI_GT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_FI_GT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_FI_LTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_FI_LTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_FI_GTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_FI_GTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_FI_NEQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_FI_NEQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_II_EQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_II_EQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_II_LT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_II_LT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_II_GT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_II_GT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_II_LTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_II_LTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_II_GTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_II_GTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_II_NEQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_II_NEQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_IF_EQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_IF_EQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_IF_LT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_IF_LT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_IF_GT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_IF_GT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_IF_LTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_IF_LTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_IF_GTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_IF_GTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_IF_NEQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_IF_NEQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_LL_EQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_LL_EQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_LL_LT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_LL_LT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_LL_GT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_LL_GT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_LL_LTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_LL_LTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_LL_GTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_LL_GTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_LL_NEQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_LL_NEQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_LF_EQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_LF_EQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_LF_LT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_LF_LT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_LF_GT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_LF_GT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_LF_LTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_LF_LTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_LF_GTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_LF_GTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_LF_NEQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_LF_NEQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_LI_EQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_LI_EQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_LI_LT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_LI_LT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_LI_GT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_LI_GT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_LI_LTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_LI_LTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_LI_GTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_LI_GTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_LI_NEQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_LI_NEQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_FL_EQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_FL_EQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_FL_LT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_FL_LT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_FL_GT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_FL_GT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_FL_LTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_FL_LTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_FL_GTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_FL_GTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_FL_NEQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_FL_NEQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_IL_EQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_IL_EQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_IL_LT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_IL_LT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_IL_GT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_IL_GT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_IL_LTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_IL_LTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_IL_GTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_IL_GTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_IL_NEQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_IL_NEQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld86$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld86
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_NOT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_NOT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld88$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld88
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld90$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld90
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_AND$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_AND$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld92$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld92
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNC_OR$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNC_OR$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld94$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld94
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld96$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld96
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCFLOATTOSTR$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCFLOATTOSTR$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld98$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld98
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld100$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld100
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCINTTOSTR$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCINTTOSTR$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld102$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld102
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCINT64TOSTR$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCINT64TOSTR$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld104$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld104
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCDATETOSTR$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCDATETOSTR$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld106$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld106
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld108$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld108
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld110$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld110
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSUBSTRING$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSUBSTRING$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld112$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld112
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld114$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld114
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld116$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld116
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCUPPERCASE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCUPPERCASE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld118$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld118
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld120$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld120
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCLOWERCASE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCLOWERCASE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSCORE$_Ld122$non_lazy_ptr:
.indirect_symbol _$DBF_PRSCORE$_Ld122
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSTRI_LT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSTRI_LT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSTRI_GT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSTRI_GT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSTRI_LTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSTRI_LTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSTRI_GTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSTRI_GTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSTRI_NEQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSTRI_NEQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSTRI_EQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSTRI_EQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSTRIP_EQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSTRIP_EQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSTR_LT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSTR_LT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSTR_GT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSTR_GT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSTR_LTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSTR_LTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSTR_GTE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSTR_GTE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSTR_NEQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSTR_NEQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSTR_EQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSTR_EQ$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSCORE_FUNCSTRP_EQ$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSCORE_FUNCSTRP_EQ$PEXPRESSIONREC
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

