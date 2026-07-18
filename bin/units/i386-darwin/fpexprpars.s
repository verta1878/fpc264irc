# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING
_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	call	Lj4
Lj4:
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
	jne	Lj5
	movl	-4(%ebp),%ecx
	movl	L_VMT_FPEXPRPARS_EEXPRPARSER$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj4(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj5:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj6
	call	LFPC_RERAISE$stub
Lj6:
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const
_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	call	Lj15
Lj15:
	popl	-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,%ebx
	incl	%ebx
	shll	$3,%ebx
	movl	%edx,%esi
	movl	%ebx,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%ebx,%ecx
	movl	%edi,%edx
	movl	%esi,%eax
	call	LFPC_MOVE$stub
	movl	%edi,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj16
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ecx
	movl	-56(%ebp),%eax
	movl	L_VMT_FPEXPRPARS_EEXPRPARSER$non_lazy_ptr-Lj15(%eax),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	movl	-56(%ebp),%ebx
	leal	La2-Lj15(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj16:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj17
	call	LFPC_RERAISE$stub
Lj17:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TOKENNAME$TTOKENTYPE$$ANSISTRING
_FPEXPRPARS_TOKENNAME$TTOKENTYPE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj30
Lj30:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	L_RTTI_FPEXPRPARS_TTOKENTYPE$non_lazy_ptr-Lj30(%ebx),%eax
	call	L_TYPINFO_GETENUMNAME$PTYPEINFO$LONGINT$$ANSISTRING$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_RESULTTYPENAME$TRESULTTYPE$$ANSISTRING
_FPEXPRPARS_RESULTTYPENAME$TRESULTTYPE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj38
Lj38:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	L_RTTI_FPEXPRPARS_TRESULTTYPE$non_lazy_ptr-Lj38(%ebx),%eax
	call	L_TYPINFO_GETENUMNAME$PTYPEINFO$LONGINT$$ANSISTRING$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_CHARTORESULTTYPE$CHAR$$TRESULTTYPE
_FPEXPRPARS_CHARTORESULTTYPE$CHAR$$TRESULTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj46
Lj46:
	popl	%ebx
	movb	%al,-4(%ebp)
	movb	-4(%ebp),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	cmpb	$66,%al
	jb	Lj48
	subb	$66,%al
	je	Lj51
	subb	$2,%al
	je	Lj50
	subb	$2,%al
	je	Lj53
	subb	$3,%al
	je	Lj52
	subb	$10,%al
	je	Lj49
	jmp	Lj48
Lj49:
	movl	$4,-8(%ebp)
	jmp	Lj47
Lj50:
	movl	$3,-8(%ebp)
	jmp	Lj47
Lj51:
	movl	$0,-8(%ebp)
	jmp	Lj47
Lj52:
	movl	$1,-8(%ebp)
	jmp	Lj47
Lj53:
	movl	$2,-8(%ebp)
	jmp	Lj47
Lj48:
	movzbl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$2,-16(%ebp)
	leal	-16(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRINVALIDRESULTCHARACTER$non_lazy_ptr-Lj46(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub
Lj47:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINIDENTIFIERS$$TEXPRBUILTINMANAGER
_FPEXPRPARS_BUILTINIDENTIFIERS$$TEXPRBUILTINMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	call	Lj73
Lj73:
	popl	%esi
	movl	L_U_FPEXPRPARS_BUILTINS$non_lazy_ptr-Lj73(%esi),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj74
	jmp	Lj75
Lj74:
	movl	L_VMT_FPEXPRPARS_TEXPRBUILTINMANAGER$non_lazy_ptr-Lj73(%esi),%edx
	movl	$0,%ecx
	movl	$0,%eax
	movl	L_VMT_FPEXPRPARS_TEXPRBUILTINMANAGER$non_lazy_ptr-Lj73(%esi),%ebx
	call	*196(%ebx)
	movl	L_U_FPEXPRPARS_BUILTINS$non_lazy_ptr-Lj73(%esi),%edx
	movl	%eax,(%edx)
Lj75:
	movl	L_U_FPEXPRPARS_BUILTINS$non_lazy_ptr-Lj73(%esi),%eax
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_FREEBUILTINS
_FPEXPRPARS_FREEBUILTINS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj87
Lj87:
	popl	%ebx
	movl	L_U_FPEXPRPARS_BUILTINS$non_lazy_ptr-Lj87(%ebx),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISALPHA$CHAR$$BOOLEAN
_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISALPHA$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movzbl	-4(%ebp),%eax
	subl	$65,%eax
	cmpl	$26,%eax
	jb	Lj94
	subl	$32,%eax
	cmpl	$26,%eax
	jb	Lj94
Lj94:
	setcb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__CREATE$$TFPEXPRESSIONSCANNER
_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__CREATE$$TFPEXPRESSIONSCANNER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj97
	jmp	Lj98
Lj97:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj98:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj103
	jmp	Lj104
Lj103:
	jmp	Lj95
Lj104:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj107
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj111
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
Lj111:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj112
	call	LFPC_RERAISE$stub
Lj112:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj120
	jmp	Lj119
Lj120:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj118
	jmp	Lj119
Lj118:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj119:
Lj107:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj109
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj124
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj125
	jmp	Lj126
Lj125:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj126:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj124:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj123
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj123:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj109
Lj109:
Lj95:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__SETSOURCE$ANSISTRING
_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__SETSOURCE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj132
Lj132:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	4(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,4(%esi)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj137
	movl	-4(%eax),%eax
Lj137:
	movl	-8(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	$24,24(%eax)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj140
	jmp	Lj141
Lj140:
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	jmp	Lj144
Lj141:
	movl	-8(%ebp),%eax
	movl	$1,12(%eax)
Lj144:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj149
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj132(%ebx),%edx
	movl	%edx,%eax
Lj149:
	movl	-8(%ebp),%edx
	movl	%eax,16(%edx)
	movl	-8(%ebp),%esi
	leal	20(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,20(%esi)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__NEXTPOS$$CHAR
_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__NEXTPOS$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	incl	12(%eax)
	movl	-4(%ebp),%eax
	incl	16(%eax)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISWORDDELIM$CHAR$$BOOLEAN
_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISWORDDELIM$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj157
Lj157:
	popl	%ecx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movzbl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld1$non_lazy_ptr-Lj157(%ecx),%edx
	btl	%eax,(%edx)
	setcb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISDELIM$CHAR$$BOOLEAN
_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISDELIM$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movzbl	-4(%ebp),%eax
	subl	$40,%eax
	cmpl	$6,%eax
	jb	Lj164
	cmpl	$7,%eax
	stc
	je	Lj164
	subl	$20,%eax
	cmpl	$3,%eax
	jb	Lj164
Lj164:
	setcb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISDIGIT$CHAR$$BOOLEAN
_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISDIGIT$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movzbl	-4(%ebp),%eax
	cmpl	$46,%eax
	stc
	je	Lj169
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj169
Lj169:
	setcb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__SKIPWHITESPACE
_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__SKIPWHITESPACE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	jmp	Lj173
	.align 2
Lj172:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__NEXTPOS$$CHAR$stub
Lj173:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movzbl	(%eax),%eax
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj178
	cmpl	$4,%eax
	stc
	je	Lj178
	cmpl	$23,%eax
	stc
	je	Lj178
	clc
Lj178:
	jc	Lj177
	jmp	Lj174
Lj177:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	12(%eax),%eax
	cmpl	8(%edx),%eax
	jle	Lj172
	jmp	Lj174
Lj174:
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DODELIMITER$$TTOKENTYPE
_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DODELIMITER$$TTOKENTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj180
Lj180:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj181
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%eax),%al
	movb	%al,-10(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movb	-10(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-56(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	leal	20(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	movl	%eax,20(%esi)
	movzbl	-10(%ebp),%eax
	cmpl	$60,%eax
	je	Lj194
	cmpl	$62,%eax
	je	Lj194
Lj194:
	seteb	-9(%ebp)
	movb	-10(%ebp),%al
	movb	%al,-11(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__NEXTPOS$$CHAR$stub
	movb	%al,-10(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj203
	jmp	Lj202
Lj203:
	movzbl	-10(%ebp),%eax
	subl	$61,%eax
	cmpl	$2,%eax
	jb	Lj204
Lj204:
	jc	Lj201
	jmp	Lj202
Lj201:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movb	-10(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-56(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	leal	20(%eax),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__NEXTPOS$$CHAR$stub
	movb	-11(%ebp),%al
	cmpb	$62,%al
	je	Lj217
	jmp	Lj218
Lj217:
	movl	$10,-8(%ebp)
	jmp	Lj221
Lj218:
	movb	-10(%ebp),%al
	cmpb	$62,%al
	je	Lj222
	jmp	Lj223
Lj222:
	movl	$11,-8(%ebp)
	jmp	Lj226
Lj223:
	movl	$9,-8(%ebp)
Lj226:
Lj221:
	jmp	Lj229
Lj202:
	movb	-11(%ebp),%al
	cmpb	$40,%al
	jb	Lj231
	subb	$40,%al
	je	Lj239
	decb	%al
	je	Lj240
	decb	%al
	je	Lj238
	decb	%al
	je	Lj232
	decb	%al
	je	Lj241
	decb	%al
	je	Lj233
	subb	$2,%al
	je	Lj237
	subb	$13,%al
	je	Lj234
	decb	%al
	je	Lj236
	decb	%al
	je	Lj235
	jmp	Lj231
Lj232:
	movl	$0,-8(%ebp)
	jmp	Lj230
Lj233:
	movl	$1,-8(%ebp)
	jmp	Lj230
Lj234:
	movl	$2,-8(%ebp)
	jmp	Lj230
Lj235:
	movl	$3,-8(%ebp)
	jmp	Lj230
Lj236:
	movl	$4,-8(%ebp)
	jmp	Lj230
Lj237:
	movl	$5,-8(%ebp)
	jmp	Lj230
Lj238:
	movl	$6,-8(%ebp)
	jmp	Lj230
Lj239:
	movl	$7,-8(%ebp)
	jmp	Lj230
Lj240:
	movl	$8,-8(%ebp)
	jmp	Lj230
Lj241:
	movl	$15,-8(%ebp)
	jmp	Lj230
Lj231:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movzbl	-11(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$2,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SUNKNOWNDELIMITER$non_lazy_ptr-Lj180(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__SCANERROR$ANSISTRING$stub
Lj230:
Lj229:
Lj181:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj182
	call	LFPC_RERAISE$stub
Lj182:
	movl	-8(%ebp),%eax
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__SCANERROR$ANSISTRING
_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__SCANERROR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	call	Lj275
Lj275:
	popl	%ebx
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
	jne	Lj276
	movl	-4(%ebp),%ecx
	movl	L_VMT_FPEXPRPARS_EEXPRSCANNER$non_lazy_ptr-Lj275(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj275(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj276:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj277
	call	LFPC_RERAISE$stub
Lj277:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DOSTRING$$TTOKENTYPE
_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DOSTRING$$TTOKENTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj286
Lj286:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj289
	movl	-4(%ebp),%esi
	leal	20(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,20(%esi)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__NEXTPOS$$CHAR$stub
	movb	%al,-9(%ebp)
	jmp	Lj299
	.align 2
Lj298:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movb	-9(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-56(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	leal	20(%eax),%eax
	call	Lfpc_ansistr_concat$stub
	movb	-9(%ebp),%al
	cmpb	$39,%al
	je	Lj311
	jmp	Lj312
Lj311:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__NEXTPOS$$CHAR$stub
Lj312:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__NEXTPOS$$CHAR$stub
	movb	%al,-9(%ebp)
Lj299:
	movb	-9(%ebp),%dl
	movl	%ebp,%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$_DOSTRING$$TTOKENTYPE_TERMINATINGCHAR$CHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj300
	jmp	Lj298
Lj300:
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj323
	jmp	Lj324
Lj323:
	movl	L_RESSTR_FPEXPRPARS_SBADQUOTES$non_lazy_ptr-Lj286(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__SCANERROR$ANSISTRING$stub
Lj324:
	movl	$13,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__NEXTPOS$$CHAR$stub
Lj289:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj290
	call	LFPC_RERAISE$stub
Lj290:
	movl	-8(%ebp),%eax
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONSCANNER_$_DOSTRING$$TTOKENTYPE_TERMINATINGCHAR$CHAR$$BOOLEAN
_FPEXPRPARS_TFPEXPRESSIONSCANNER_$_DOSTRING$$TTOKENTYPE_TERMINATINGCHAR$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj335
	jmp	Lj337
Lj337:
	movb	-4(%ebp),%al
	cmpb	$39,%al
	je	Lj338
	jmp	Lj336
Lj338:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	12(%ecx),%eax
	cmpl	8(%edx),%eax
	jl	Lj339
	jmp	Lj335
Lj339:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	12(%eax),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$39,%al
	je	Lj336
	jmp	Lj335
Lj335:
	movb	$1,-9(%ebp)
	jmp	Lj340
Lj336:
	movb	$0,-9(%ebp)
Lj340:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__GETCURRENTCHAR$$CHAR
_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__GETCURRENTCHAR$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj343
	jmp	Lj344
Lj343:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj347
Lj344:
	movb	$0,-5(%ebp)
Lj347:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DONUMBER$$TTOKENTYPE
_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DONUMBER$$TTOKENTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-84(%ebp)
	call	Lj351
Lj351:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj352
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__GETCURRENTCHAR$$CHAR$stub
	movb	%al,-9(%ebp)
	movb	$0,-25(%ebp)
	jmp	Lj362
	.align 2
Lj361:
	movb	-9(%ebp),%dl
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISDIGIT$CHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj365
	jmp	Lj367
Lj367:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	jne	Lj372
	jmp	Lj366
Lj372:
	movb	-9(%ebp),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	cmpb	$69,%al
	je	Lj365
	jmp	Lj366
Lj366:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	jne	Lj376
	jmp	Lj364
Lj376:
	movzbl	-9(%ebp),%eax
	cmpl	$43,%eax
	je	Lj377
	cmpl	$45,%eax
	je	Lj377
Lj377:
	je	Lj375
	jmp	Lj364
Lj375:
	movb	-25(%ebp),%al
	cmpb	$69,%al
	je	Lj365
	jmp	Lj364
Lj364:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,(%esp)
	movzbl	-9(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$2,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRINVALIDNUMBERCHAR$non_lazy_ptr-Lj351(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-72(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__SCANERROR$ANSISTRING$stub
Lj365:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movb	-9(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-72(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	leal	20(%eax),%eax
	call	Lfpc_ansistr_concat$stub
	movb	-9(%ebp),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	movb	%al,-25(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__NEXTPOS$$CHAR$stub
	movb	%al,-9(%ebp)
Lj362:
	movb	-9(%ebp),%dl
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISWORDDELIM$CHAR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj408
	jmp	Lj409
Lj409:
	movb	-25(%ebp),%al
	cmpb	$69,%al
	je	Lj408
	jmp	Lj363
Lj408:
	movb	-9(%ebp),%al
	testb	%al,%al
	jne	Lj361
	jmp	Lj363
Lj363:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	leal	-24(%ebp),%edx
	call	Lfpc_val_real_ansistr$stub
	fstpl	-80(%ebp)
	fldl	-80(%ebp)
	fstpl	-20(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj420
	jmp	Lj421
Lj420:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-76(%ebp)
	movl	$11,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRINVALIDNUMBER$non_lazy_ptr-Lj351(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-72(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__SCANERROR$ANSISTRING$stub
Lj421:
	movl	$12,-8(%ebp)
Lj352:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj353
	call	LFPC_RERAISE$stub
Lj353:
	movl	-8(%ebp),%eax
	movl	-84(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DOIDENTIFIER$$TTOKENTYPE
_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DOIDENTIFIER$$TTOKENTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	call	Lj437
Lj437:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj438
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__GETCURRENTCHAR$$CHAR$stub
	movb	%al,-9(%ebp)
	jmp	Lj446
	.align 2
Lj445:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movb	-9(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-60(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	leal	20(%eax),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__NEXTPOS$$CHAR$stub
	movb	%al,-9(%ebp)
Lj446:
	movb	-9(%ebp),%dl
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISWORDDELIM$CHAR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj462
	jmp	Lj447
Lj462:
	movb	-9(%ebp),%al
	testb	%al,%al
	jne	Lj445
	jmp	Lj447
Lj447:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	leal	-16(%ebp),%edx
	call	L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-16(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld2$non_lazy_ptr-Lj437(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj471
	jmp	Lj472
Lj471:
	movl	$17,-8(%ebp)
	jmp	Lj479
Lj472:
	movl	-16(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld4$non_lazy_ptr-Lj437(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj480
	jmp	Lj481
Lj480:
	movl	$18,-8(%ebp)
	jmp	Lj488
Lj481:
	movl	-16(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld6$non_lazy_ptr-Lj437(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj489
	jmp	Lj490
Lj489:
	movl	$16,-8(%ebp)
	jmp	Lj497
Lj490:
	movl	-16(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld8$non_lazy_ptr-Lj437(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj498
	jmp	Lj499
Lj498:
	movl	$19,-8(%ebp)
	jmp	Lj506
Lj499:
	movl	-16(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld10$non_lazy_ptr-Lj437(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj507
	jmp	Lj508
Lj507:
	movl	$20,-8(%ebp)
	jmp	Lj515
Lj508:
	movl	-16(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld12$non_lazy_ptr-Lj437(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj516
	jmp	Lj517
Lj516:
	movl	$21,-8(%ebp)
	jmp	Lj524
Lj517:
	movl	-16(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld14$non_lazy_ptr-Lj437(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj525
	jmp	Lj526
Lj525:
	movl	$22,-8(%ebp)
	jmp	Lj533
Lj526:
	movl	-16(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld16$non_lazy_ptr-Lj437(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj534
	jmp	Lj535
Lj534:
	movl	$23,-8(%ebp)
	jmp	Lj542
Lj535:
	movl	$14,-8(%ebp)
Lj542:
Lj533:
Lj524:
Lj515:
Lj506:
Lj497:
Lj488:
Lj479:
Lj438:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj439
	call	LFPC_RERAISE$stub
Lj439:
	movl	-8(%ebp),%eax
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__GETTOKEN$$TTOKENTYPE
_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__GETTOKEN$$TTOKENTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	call	Lj552
Lj552:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj553
	movl	-4(%ebp),%esi
	leal	20(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,20(%esi)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__SKIPWHITESPACE$stub
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%eax),%al
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj562
	jmp	Lj563
Lj562:
	movl	$24,-8(%ebp)
	jmp	Lj566
Lj563:
	movb	-9(%ebp),%dl
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISDELIM$CHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj567
	jmp	Lj568
Lj567:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DODELIMITER$$TTOKENTYPE$stub
	movl	%eax,-8(%ebp)
	jmp	Lj577
Lj568:
	movb	-9(%ebp),%al
	cmpb	$39,%al
	je	Lj578
	jmp	Lj579
Lj578:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DOSTRING$$TTOKENTYPE$stub
	movl	%eax,-8(%ebp)
	jmp	Lj584
Lj579:
	movb	-9(%ebp),%dl
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISDIGIT$CHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj585
	jmp	Lj586
Lj585:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DONUMBER$$TTOKENTYPE$stub
	movl	%eax,-8(%ebp)
	jmp	Lj595
Lj586:
	movb	-9(%ebp),%dl
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISALPHA$CHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj596
	jmp	Lj597
Lj596:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DOIDENTIFIER$$TTOKENTYPE$stub
	movl	%eax,-8(%ebp)
	jmp	Lj606
Lj597:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	$0,-72(%ebp)
	movzbl	-9(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$2,-64(%ebp)
	leal	-72(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRUNKNOWNCHARACTER$non_lazy_ptr-Lj552(%ebx),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__SCANERROR$ANSISTRING$stub
Lj606:
Lj595:
Lj584:
Lj577:
Lj566:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,24(%edx)
Lj553:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj554
	call	LFPC_RERAISE$stub
Lj554:
	movl	-8(%ebp),%eax
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	24(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CURRENTTOKEN$$ANSISTRING
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CURRENTTOKEN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	60(%eax),%esi
	movl	20(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	20(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CREATEHASHLIST
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CREATEHASHLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-280(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__CLEAR$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__BUILTINSMANAGER$$TEXPRBUILTINMANAGER$stub
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%edx
	movl	$0,%eax
	cmpl	52(%edx),%eax
	jne	Lj639
	jmp	Lj638
Lj639:
	cmpl	$0,-20(%ebp)
	jne	Lj637
	jmp	Lj638
Lj637:
	movl	-20(%ebp),%eax
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj641
	decl	-16(%ebp)
	.align 2
Lj642:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__GETI$LONGINT$$TFPBUILTINEXPRIDENTIFIERDEF$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	320(%eax),%eax
	btl	%eax,52(%edx)
	jc	Lj651
	jmp	Lj652
Lj651:
	movl	-12(%ebp),%eax
	leal	52(%eax),%eax
	leal	-276(%ebp),%edx
	call	L_SYSTEM_LOWERCASE$SHORTSTRING$$SHORTSTRING$stub
	leal	-276(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	movl	-12(%ebp),%ecx
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__ADD$SHORTSTRING$TOBJECT$$LONGINT$stub
Lj652:
	cmpl	-16(%ebp),%ebx
	jg	Lj642
Lj641:
Lj638:
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj664
	decl	-16(%ebp)
	.align 2
Lj665:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__GETI$LONGINT$$TFPEXPRIDENTIFIERDEF$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leal	52(%eax),%eax
	leal	-276(%ebp),%edx
	call	L_SYSTEM_LOWERCASE$SHORTSTRING$$SHORTSTRING$stub
	leal	-276(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	movl	-8(%ebp),%ecx
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__ADD$SHORTSTRING$TOBJECT$$LONGINT$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj665
Lj664:
	movl	-4(%ebp),%eax
	movb	$0,76(%eax)
	movl	-280(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__IDENTIFIERBYNAME$SHORTSTRING$$TFPEXPRIDENTIFIERDEF
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__IDENTIFIERBYNAME$SHORTSTRING$$TFPEXPRIDENTIFIERDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$536,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-268(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movl	-8(%ebp),%eax
	cmpb	$0,76(%eax)
	jne	Lj688
	jmp	Lj689
Lj688:
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CREATEHASHLIST$stub
Lj689:
	leal	-524(%ebp),%edx
	leal	-268(%ebp),%eax
	call	L_SYSTEM_LOWERCASE$SHORTSTRING$$SHORTSTRING$stub
	leal	-524(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	72(%eax),%eax
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__FIND$SHORTSTRING$$TOBJECT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CLEAR
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	leal	56(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,56(%ebx)
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__CLEAR$stub
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CREATE$TCOMPONENT$$TFPEXPRESSIONPARSER
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CREATE$TCOMPONENT$$TFPEXPRESSIONPARSER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj711
Lj711:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj712
	jmp	Lj713
Lj712:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj713:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj718
	jmp	Lj719
Lj718:
	jmp	Lj710
Lj719:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj722
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj726
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT$stub
	movl	L_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF$non_lazy_ptr-Lj711(%ebx),%ecx
	movl	L_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS$non_lazy_ptr-Lj711(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TCOLLECTION_$__CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION$stub
	movl	-12(%ebp),%edx
	movl	%eax,68(%edx)
	movl	-12(%ebp),%eax
	movl	68(%eax),%edx
	movl	-12(%ebp),%eax
	movl	%eax,32(%edx)
	movl	L_VMT_FPEXPRPARS_TFPEXPRESSIONSCANNER$non_lazy_ptr-Lj711(%ebx),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__CREATE$$TFPEXPRESSIONSCANNER$stub
	movl	-12(%ebp),%edx
	movl	%eax,60(%edx)
	movl	L_VMT_CONTNRS_TFPHASHOBJECTLIST$non_lazy_ptr-Lj711(%ebx),%edx
	movb	$0,%cl
	movl	$0,%eax
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__CREATE$BOOLEAN$$TFPHASHOBJECTLIST$stub
	movl	-12(%ebp),%edx
	movl	%eax,72(%edx)
Lj726:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj727
	call	LFPC_RERAISE$stub
Lj727:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj761
	jmp	Lj760
Lj761:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj759
	jmp	Lj760
Lj759:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj760:
Lj722:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj724
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj765
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj766
	jmp	Lj767
Lj766:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj767:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj765:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj764
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj764:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj724
Lj724:
Lj710:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__DESTROY
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj774
	jmp	Lj775
Lj774:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj775:
	movl	-8(%ebp),%eax
	leal	72(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	leal	64(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	leal	68(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	leal	60(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj792
	jmp	Lj791
Lj792:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj790
	jmp	Lj791
Lj790:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj791:
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETTOKEN$$TTOKENTYPE
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETTOKEN$$TTOKENTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__GETTOKEN$$TTOKENTYPE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKEOF
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKEOF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj802
Lj802:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	cmpl	$24,%eax
	je	Lj803
	jmp	Lj804
Lj803:
	movl	L_RESSTR_FPEXPRPARS_SERRUNEXPECTEDENDOFEXPRESSION$non_lazy_ptr-Lj802(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PARSERERROR$ANSISTRING$stub
Lj804:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__SETIDENTIFIERS$TFPEXPRIDENTIFIERDEFS
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__SETIDENTIFIERS$TFPEXPRIDENTIFIERDEFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	68(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__EVALUATEEXPRESSION$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__EVALUATEEXPRESSION$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj818
Lj818:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	testl	%eax,%eax
	je	Lj819
	jmp	Lj820
Lj819:
	movl	L_RESSTR_FPEXPRPARS_SERRINEXPRESSIONEMPTY$non_lazy_ptr-Lj818(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PARSERERROR$ANSISTRING$stub
Lj820:
	movl	-8(%ebp),%eax
	cmpl	$0,64(%eax)
	jne	Lj826
	jmp	Lj825
Lj825:
	movl	L_RESSTR_FPEXPRPARS_SERRINEXPRESSION$non_lazy_ptr-Lj818(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PARSERERROR$ANSISTRING$stub
Lj826:
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	64(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PARSERERROR$ANSISTRING
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PARSERERROR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	call	Lj836
Lj836:
	popl	%ebx
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
	jne	Lj837
	movl	-4(%ebp),%ecx
	movl	L_VMT_FPEXPRPARS_EEXPRPARSER$non_lazy_ptr-Lj836(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj836(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj837:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj838
	call	LFPC_RERAISE$stub
Lj838:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CONVERTNODE$TFPEXPRNODE$TRESULTTYPE$$TFPEXPRNODE
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CONVERTNODE$TFPEXPRNODE$TRESULTTYPE$$TFPEXPRNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj847
Lj847:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	cmpl	$1,%eax
	jb	Lj851
	decl	%eax
	je	Lj852
	decl	%eax
	je	Lj853
	jmp	Lj851
Lj852:
	movl	-8(%ebp),%eax
	cmpl	$2,%eax
	jb	Lj857
	subl	$2,%eax
	je	Lj858
	decl	%eax
	je	Lj859
	jmp	Lj857
Lj858:
	movl	-16(%ebp),%ecx
	movl	L_VMT_FPEXPRPARS_TINTTOFLOATNODE$non_lazy_ptr-Lj847(%ebx),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TFPUNARYOPERATOR_$__CREATE$TFPEXPRNODE$$TFPUNARYOPERATOR$stub
	movl	%eax,-16(%ebp)
	jmp	Lj856
Lj859:
	movl	-16(%ebp),%ecx
	movl	L_VMT_FPEXPRPARS_TINTTODATETIMENODE$non_lazy_ptr-Lj847(%ebx),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TFPUNARYOPERATOR_$__CREATE$TFPEXPRNODE$$TFPUNARYOPERATOR$stub
	movl	%eax,-16(%ebp)
	jmp	Lj856
Lj857:
Lj856:
	jmp	Lj850
Lj853:
	movl	-8(%ebp),%eax
	cmpl	$3,%eax
	jb	Lj877
	subl	$3,%eax
	je	Lj878
	jmp	Lj877
Lj878:
	movl	-16(%ebp),%ecx
	movl	L_VMT_FPEXPRPARS_TFLOATTODATETIMENODE$non_lazy_ptr-Lj847(%ebx),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TFPUNARYOPERATOR_$__CREATE$TFPEXPRNODE$$TFPUNARYOPERATOR$stub
	movl	%eax,-16(%ebp)
	jmp	Lj876
Lj877:
Lj876:
	jmp	Lj850
Lj851:
Lj850:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETASBOOLEAN$$BOOLEAN
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETASBOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj888
Lj888:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj888(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj889
	leal	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__EVALUATEEXPRESSION$TFPEXPRESSIONRESULT$stub
	leal	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKRESULTTYPE$TFPEXPRESSIONRESULT$TRESULTTYPE$stub
	movb	-16(%ebp),%al
	movb	%al,-5(%ebp)
Lj889:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj888(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj890
	call	LFPC_RERAISE$stub
Lj890:
	movb	-5(%ebp),%al
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETASDATETIME$$TDATETIME
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETASDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj913
Lj913:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj913(%ebx),%edx
	leal	-28(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj914
	leal	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__EVALUATEEXPRESSION$TFPEXPRESSIONRESULT$stub
	leal	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKRESULTTYPE$TFPEXPRESSIONRESULT$TRESULTTYPE$stub
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj914:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj913(%ebx),%edx
	leal	-28(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj915
	call	LFPC_RERAISE$stub
Lj915:
	fldl	-12(%ebp)
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETASFLOAT$$DOUBLE
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETASFLOAT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj938
Lj938:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj938(%ebx),%edx
	leal	-28(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj939
	leal	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__EVALUATEEXPRESSION$TFPEXPRESSIONRESULT$stub
	leal	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKRESULTTYPE$TFPEXPRESSIONRESULT$TRESULTTYPE$stub
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj939:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj938(%ebx),%edx
	leal	-28(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj940
	call	LFPC_RERAISE$stub
Lj940:
	fldl	-12(%ebp)
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETASINTEGER$$INT64
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETASINTEGER$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj963
Lj963:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj963(%ebx),%edx
	leal	-28(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj964
	leal	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__EVALUATEEXPRESSION$TFPEXPRESSIONRESULT$stub
	leal	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKRESULTTYPE$TFPEXPRESSIONRESULT$TRESULTTYPE$stub
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj964:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj963(%ebx),%edx
	leal	-28(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj965
	call	LFPC_RERAISE$stub
Lj965:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETASSTRING$$ANSISTRING
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj988
Lj988:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj988(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj989
	leal	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__EVALUATEEXPRESSION$TFPEXPRESSIONRESULT$stub
	leal	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKRESULTTYPE$TFPEXPRESSIONRESULT$TRESULTTYPE$stub
	movl	-24(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-24(%ebp),%eax
	movl	%eax,(%esi)
Lj989:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj988(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj990
	call	LFPC_RERAISE$stub
Lj990:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__MATCHNODES$TFPEXPRNODE$TFPEXPRNODE$$TFPEXPRNODE
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__MATCHNODES$TFPEXPRNODE$TFPEXPRNODE$$TFPEXPRNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jne	Lj1024
	jmp	Lj1025
Lj1024:
	movl	-20(%ebp),%eax
	cmpl	$1,%eax
	je	Lj1026
	jmp	Lj1027
Lj1026:
	movl	-24(%ebp),%eax
	subl	$2,%eax
	cmpl	$2,%eax
	jb	Lj1030
Lj1030:
	jc	Lj1028
	jmp	Lj1029
Lj1028:
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CONVERTNODE$TFPEXPRNODE$TRESULTTYPE$$TFPEXPRNODE$stub
	movl	%eax,-16(%ebp)
Lj1029:
	jmp	Lj1039
Lj1027:
	movl	-20(%ebp),%eax
	cmpl	$2,%eax
	je	Lj1040
	jmp	Lj1041
Lj1040:
	movl	-24(%ebp),%eax
	cmpl	$3,%eax
	je	Lj1042
	jmp	Lj1043
Lj1042:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$3,%ecx
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CONVERTNODE$TFPEXPRNODE$TRESULTTYPE$$TFPEXPRNODE$stub
	movl	%eax,-16(%ebp)
Lj1043:
Lj1041:
Lj1039:
Lj1025:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKNODES$TFPEXPRNODE$TFPEXPRNODE
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKNODES$TFPEXPRNODE$TFPEXPRNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__MATCHNODES$TFPEXPRNODE$TFPEXPRNODE$$TFPEXPRNODE$stub
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__MATCHNODES$TFPEXPRNODE$TFPEXPRNODE$$TFPEXPRNODE$stub
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__SETBUILTINS$TBUILTINCATEGORIES
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__SETBUILTINS$TBUILTINCATEGORIES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1072
	jmp	Lj1073
Lj1072:
	jmp	Lj1070
Lj1073:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-8(%ebp),%eax
	movb	$1,76(%eax)
Lj1070:
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL1$$TFPEXPRNODE
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL1$$TFPEXPRNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	call	Lj1079
Lj1079:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	cmpl	$21,%eax
	je	Lj1080
	jmp	Lj1081
Lj1080:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETTOKEN$$TTOKENTYPE$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKEOF$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL2$$TFPEXPRNODE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%ecx
	movl	L_VMT_FPEXPRPARS_TFPNOTNODE$non_lazy_ptr-Lj1079(%ebx),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TFPUNARYOPERATOR_$__CREATE$TFPEXPRNODE$$TFPUNARYOPERATOR$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1100
Lj1081:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL2$$TFPEXPRNODE$stub
	movl	%eax,-8(%ebp)
Lj1100:
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1107
	jmp	Lj1112
	.align 2
Lj1111:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETTOKEN$$TTOKENTYPE$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKEOF$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL2$$TFPEXPRNODE$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$16,%eax
	jb	Lj1127
	subl	$16,%eax
	je	Lj1129
	decl	%eax
	je	Lj1128
	decl	%eax
	je	Lj1130
	jmp	Lj1127
Lj1128:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_FPEXPRPARS_TFPBINARYOROPERATION$non_lazy_ptr-Lj1079(%ebx),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TFPBINARYOPERATION_$__CREATE$TFPEXPRNODE$TFPEXPRNODE$$TFPBINARYOPERATION$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1126
Lj1129:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_FPEXPRPARS_TFPBINARYANDOPERATION$non_lazy_ptr-Lj1079(%ebx),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TFPBINARYOPERATION_$__CREATE$TFPEXPRNODE$TFPEXPRNODE$$TFPBINARYOPERATION$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1126
Lj1130:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_FPEXPRPARS_TFPBINARYXOROPERATION$non_lazy_ptr-Lj1079(%ebx),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TFPBINARYOPERATION_$__CREATE$TFPEXPRNODE$TFPEXPRNODE$$TFPBINARYOPERATION$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1126
Lj1127:
	movl	L_RESSTR_FPEXPRPARS_SERRUNKNOWNBOOLEANOP$non_lazy_ptr-Lj1079(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PARSERERROR$ANSISTRING$stub
Lj1126:
Lj1112:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	subl	$16,%eax
	cmpl	$3,%eax
	jb	Lj1167
Lj1167:
	jc	Lj1111
	jmp	Lj1113
Lj1113:
Lj1107:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1109
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj1169
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1169:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj1168
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1168:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1109
Lj1109:
	movl	-8(%ebp),%eax
	movl	-100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL2$$TFPEXPRNODE
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL2$$TFPEXPRNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-104(%ebp)
	call	Lj1173
Lj1173:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL3$$TFPEXPRNODE$stub
	movl	%eax,-8(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1180
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	subl	$2,%eax
	cmpl	$3,%eax
	jb	Lj1188
	subl	$7,%eax
	cmpl	$3,%eax
	jb	Lj1188
Lj1188:
	jc	Lj1184
	jmp	Lj1185
Lj1184:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETTOKEN$$TTOKENTYPE$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKEOF$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL3$$TFPEXPRNODE$stub
	movl	%eax,-12(%ebp)
	leal	-12(%ebp),%ecx
	leal	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKNODES$TFPEXPRNODE$TFPEXPRNODE$stub
	movl	-16(%ebp),%eax
	cmpl	$2,%eax
	jb	Lj1208
	subl	$2,%eax
	je	Lj1209
	decl	%eax
	je	Lj1211
	decl	%eax
	je	Lj1213
	subl	$5,%eax
	je	Lj1210
	decl	%eax
	je	Lj1212
	decl	%eax
	je	Lj1214
	jmp	Lj1208
Lj1209:
	movl	L_VMT_FPEXPRPARS_TFPLESSTHANOPERATION$non_lazy_ptr-Lj1173(%ebx),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1207
Lj1210:
	movl	L_VMT_FPEXPRPARS_TFPLESSTHANEQUALOPERATION$non_lazy_ptr-Lj1173(%ebx),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1207
Lj1211:
	movl	L_VMT_FPEXPRPARS_TFPGREATERTHANOPERATION$non_lazy_ptr-Lj1173(%ebx),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1207
Lj1212:
	movl	L_VMT_FPEXPRPARS_TFPGREATERTHANEQUALOPERATION$non_lazy_ptr-Lj1173(%ebx),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1207
Lj1213:
	movl	L_VMT_FPEXPRPARS_TFPEQUALOPERATION$non_lazy_ptr-Lj1173(%ebx),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1207
Lj1214:
	movl	L_VMT_FPEXPRPARS_TFPUNEQUALOPERATION$non_lazy_ptr-Lj1173(%ebx),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1207
Lj1208:
	movl	L_RESSTR_FPEXPRPARS_SERRUNKNOWNCOMPARISON$non_lazy_ptr-Lj1173(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PARSERERROR$ANSISTRING$stub
Lj1207:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TFPBINARYOPERATION_$__CREATE$TFPEXPRNODE$TFPEXPRNODE$$TFPBINARYOPERATION$stub
	movl	%eax,-8(%ebp)
Lj1185:
Lj1180:
	call	LFPC_POPADDRSTACK$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1182
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj1242
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1242:
	call	LFPC_POPADDRSTACK$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj1241
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1241:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1182
Lj1182:
	movl	-8(%ebp),%eax
	movl	-104(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL3$$TFPEXPRNODE
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL3$$TFPEXPRNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	call	Lj1246
Lj1246:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL4$$TFPEXPRNODE$stub
	movl	%eax,-8(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1253
	jmp	Lj1258
	.align 2
Lj1257:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETTOKEN$$TTOKENTYPE$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKEOF$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL4$$TFPEXPRNODE$stub
	movl	%eax,-16(%ebp)
	leal	-16(%ebp),%ecx
	leal	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKNODES$TFPEXPRNODE$TFPEXPRNODE$stub
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1280
	decl	%eax
	je	Lj1281
	jmp	Lj1279
Lj1280:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_FPEXPRPARS_TFPADDOPERATION$non_lazy_ptr-Lj1246(%ebx),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TFPBINARYOPERATION_$__CREATE$TFPEXPRNODE$TFPEXPRNODE$$TFPBINARYOPERATION$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1278
Lj1281:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_FPEXPRPARS_TFPSUBTRACTOPERATION$non_lazy_ptr-Lj1246(%ebx),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TFPBINARYOPERATION_$__CREATE$TFPEXPRNODE$TFPEXPRNODE$$TFPBINARYOPERATION$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1278
Lj1279:
Lj1278:
Lj1258:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	cmpl	$2,%eax
	jb	Lj1304
Lj1304:
	jc	Lj1257
	jmp	Lj1259
Lj1259:
Lj1253:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1255
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj1306
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1306:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj1305
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1305:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1255
Lj1255:
	movl	-8(%ebp),%eax
	movl	-100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL4$$TFPEXPRNODE
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL4$$TFPEXPRNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	call	Lj1310
Lj1310:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL5$$TFPEXPRNODE$stub
	movl	%eax,-8(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1317
	jmp	Lj1322
	.align 2
Lj1321:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETTOKEN$$TTOKENTYPE$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL5$$TFPEXPRNODE$stub
	movl	%eax,-16(%ebp)
	leal	-16(%ebp),%ecx
	leal	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKNODES$TFPEXPRNODE$TFPEXPRNODE$stub
	movl	-12(%ebp),%eax
	cmpl	$5,%eax
	jb	Lj1341
	subl	$5,%eax
	je	Lj1343
	decl	%eax
	je	Lj1342
	jmp	Lj1341
Lj1342:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_FPEXPRPARS_TFPMULTIPLYOPERATION$non_lazy_ptr-Lj1310(%ebx),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TFPBINARYOPERATION_$__CREATE$TFPEXPRNODE$TFPEXPRNODE$$TFPBINARYOPERATION$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1340
Lj1343:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_FPEXPRPARS_TFPDIVIDEOPERATION$non_lazy_ptr-Lj1310(%ebx),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TFPBINARYOPERATION_$__CREATE$TFPEXPRNODE$TFPEXPRNODE$$TFPBINARYOPERATION$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1340
Lj1341:
Lj1340:
Lj1322:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	subl	$5,%eax
	cmpl	$2,%eax
	jb	Lj1366
Lj1366:
	jc	Lj1321
	jmp	Lj1323
Lj1323:
Lj1317:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1319
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj1368
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1368:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj1367
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1367:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1319
Lj1319:
	movl	-8(%ebp),%eax
	movl	-100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL5$$TFPEXPRNODE
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL5$$TFPEXPRNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1372
Lj1372:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	$0,-9(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	cmpl	$2,%eax
	jb	Lj1379
Lj1379:
	jc	Lj1375
	jmp	Lj1376
Lj1375:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	cmpl	$1,%eax
	seteb	-9(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETTOKEN$$TTOKENTYPE$stub
Lj1376:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL6$$TFPEXPRNODE$stub
	movl	%eax,-8(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj1390
	jmp	Lj1391
Lj1390:
	movl	-8(%ebp),%ecx
	movl	L_VMT_FPEXPRPARS_TFPNEGATEOPERATION$non_lazy_ptr-Lj1372(%ebx),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TFPUNARYOPERATOR_$__CREATE$TFPEXPRNODE$$TFPUNARYOPERATOR$stub
	movl	%eax,-8(%ebp)
Lj1391:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL6$$TFPEXPRNODE
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL6$$TFPEXPRNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-140(%ebp)
	call	Lj1401
Lj1401:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-112(%ebp)
	movl	$0,-92(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1402
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	cmpl	$7,%eax
	je	Lj1405
	jmp	Lj1406
Lj1405:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETTOKEN$$TTOKENTYPE$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL1$$TFPEXPRNODE$stub
	movl	%eax,-8(%ebp)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1417
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	cmpl	$8,%eax
	jne	Lj1421
	jmp	Lj1422
Lj1421:
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,-104(%ebp)
	movl	$0,-108(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CURRENTTOKEN$$ANSISTRING$stub
	movl	-112(%ebp),%eax
	movl	%eax,-96(%ebp)
	movl	$11,-100(%ebp)
	leal	-108(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRBRACKETEXPECTED$non_lazy_ptr-Lj1401(%ebx),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-92(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PARSERERROR$ANSISTRING$stub
Lj1422:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETTOKEN$$TTOKENTYPE$stub
Lj1417:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1419
	leal	-104(%ebp),%ecx
	leal	-136(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-108(%ebp)
	testl	%eax,%eax
	jne	Lj1444
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1444:
	call	LFPC_POPADDRSTACK$stub
	movl	-108(%ebp),%eax
	testl	%eax,%eax
	je	Lj1443
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1443:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1419
Lj1419:
	jmp	Lj1447
Lj1406:
	movl	-4(%ebp),%edx
	movl	%edx,%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PRIMITIVE$$TFPEXPRNODE$stub
	movl	%eax,%edx
	movl	%edx,-8(%ebp)
Lj1447:
Lj1402:
	call	LFPC_POPADDRSTACK$stub
	leal	-112(%ebp),%edx
	movl	%edx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-92(%ebp),%edx
	movl	%edx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1403
	call	LFPC_RERAISE$stub
Lj1403:
	movl	-8(%ebp),%eax
	movl	-140(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PRIMITIVE$$TFPEXPRNODE
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PRIMITIVE$$TFPEXPRNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$408,%esp
	movl	%ebx,-396(%ebp)
	movl	%esi,-392(%ebp)
	movl	%edi,-388(%ebp)
	call	Lj1453
Lj1453:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	$0,-44(%ebp)
	movl	$0,-384(%ebp)
	movl	$0,-108(%ebp)
	movl	$0,-96(%ebp)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1454
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_FPEXPRPARS_TEXPRARGUMENTARRAY$non_lazy_ptr-Lj1453(%esi),%edx
	leal	-44(%ebp),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	cmpl	$12,%eax
	je	Lj1467
	jmp	Lj1468
Lj1467:
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CURRENTTOKEN$$ANSISTRING$stub
	movl	-96(%ebp),%eax
	leal	-16(%ebp),%edx
	call	L_SYSUTILS_TRYSTRTOINT64$ANSISTRING$INT64$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1471
	jmp	Lj1472
Lj1471:
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_VMT_FPEXPRPARS_TFPCONSTEXPRESSION$non_lazy_ptr-Lj1453(%esi),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATEINTEGER$INT64$$TFPCONSTEXPRESSION$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1489
Lj1472:
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CURRENTTOKEN$$ANSISTRING$stub
	movl	-96(%ebp),%eax
	leal	-20(%ebp),%edx
	call	Lfpc_val_real_ansistr$stub
	fstpl	-104(%ebp)
	fldl	-104(%ebp)
	fstpl	-28(%ebp)
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	$0,%edx
	jne	Lj1501
	cmpl	$0,%eax
	jne	Lj1501
	jmp	Lj1500
Lj1500:
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_FPEXPRPARS_TFPCONSTEXPRESSION$non_lazy_ptr-Lj1453(%esi),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATEFLOAT$DOUBLE$$TFPCONSTEXPRESSION$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1510
Lj1501:
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%eax
	movl	%eax,(%esp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CURRENTTOKEN$$ANSISTRING$stub
	movl	-108(%ebp),%eax
	movl	%eax,-100(%ebp)
	movl	$11,-104(%ebp)
	leal	-104(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRINVALIDFLOAT$non_lazy_ptr-Lj1453(%esi),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-96(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PARSERERROR$ANSISTRING$stub
Lj1510:
Lj1489:
	jmp	Lj1527
Lj1468:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	cmpl	$13,%eax
	je	Lj1528
	jmp	Lj1529
Lj1528:
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CURRENTTOKEN$$ANSISTRING$stub
	movl	-108(%ebp),%ecx
	movl	L_VMT_FPEXPRPARS_TFPCONSTEXPRESSION$non_lazy_ptr-Lj1453(%esi),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATESTRING$ANSISTRING$$TFPCONSTEXPRESSION$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1544
Lj1529:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	subl	$19,%eax
	cmpl	$2,%eax
	jb	Lj1549
Lj1549:
	jc	Lj1545
	jmp	Lj1546
Lj1545:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	cmpl	$19,%eax
	seteb	%cl
	movl	L_VMT_FPEXPRPARS_TFPCONSTEXPRESSION$non_lazy_ptr-Lj1453(%esi),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATEBOOLEAN$BOOLEAN$$TFPCONSTEXPRESSION$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1560
Lj1546:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	cmpl	$14,%eax
	stc
	je	Lj1565
	subl	$22,%eax
	cmpl	$2,%eax
	jb	Lj1565
Lj1565:
	jnc	Lj1561
	jmp	Lj1562
Lj1561:
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,-120(%ebp)
	movl	$0,-124(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CURRENTTOKEN$$ANSISTRING$stub
	movl	-96(%ebp),%eax
	movl	%eax,-112(%ebp)
	movl	$11,-116(%ebp)
	leal	-124(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRUNKNOWNTOKENATPOS$non_lazy_ptr-Lj1453(%esi),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-108(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PARSERERROR$ANSISTRING$stub
	jmp	Lj1582
Lj1562:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	cmpl	$22,%eax
	seteb	-33(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	cmpl	$23,%eax
	seteb	-34(%ebp)
	cmpb	$0,-33(%ebp)
	jne	Lj1592
	jmp	Lj1593
Lj1593:
	cmpb	$0,-34(%ebp)
	jne	Lj1592
	jmp	Lj1591
Lj1591:
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CURRENTTOKEN$$ANSISTRING$stub
	movl	-108(%ebp),%ecx
	leal	-380(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-380(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__IDENTIFIERBYNAME$SHORTSTRING$$TFPEXPRIDENTIFIERDEF$stub
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj1610
	jmp	Lj1611
Lj1610:
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%eax
	movl	%eax,(%esp)
	leal	-384(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-384(%ebp)
	leal	-384(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CURRENTTOKEN$$ANSISTRING$stub
	movl	-384(%ebp),%eax
	movl	%eax,-112(%ebp)
	movl	$11,-116(%ebp)
	leal	-116(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRUNKNOWNIDENTIFIER$non_lazy_ptr-Lj1453(%esi),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-108(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PARSERERROR$ANSISTRING$stub
Lj1611:
Lj1592:
	cmpb	$0,-33(%ebp)
	jne	Lj1628
	jmp	Lj1629
Lj1628:
	movl	$3,-32(%ebp)
	jmp	Lj1632
Lj1629:
	cmpb	$0,-34(%ebp)
	jne	Lj1633
	jmp	Lj1634
Lj1633:
	movl	$-4,-32(%ebp)
	jmp	Lj1637
Lj1634:
	movl	-40(%ebp),%eax
	movl	48(%eax),%eax
	decl	%eax
	cmpl	$2,%eax
	jb	Lj1640
Lj1640:
	jc	Lj1638
	jmp	Lj1639
Lj1638:
	movl	-40(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__ARGUMENTCOUNT$$LONGINT$stub
	movl	%eax,-32(%ebp)
	jmp	Lj1645
Lj1639:
	movl	$0,-32(%ebp)
Lj1645:
Lj1637:
Lj1632:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1648
	jmp	Lj1649
Lj1648:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETTOKEN$$TTOKENTYPE$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	cmpl	$7,%eax
	jne	Lj1652
	jmp	Lj1653
Lj1652:
	leal	-384(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-384(%ebp)
	leal	-384(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,-120(%ebp)
	movl	$0,-124(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CURRENTTOKEN$$ANSISTRING$stub
	movl	-108(%ebp),%eax
	movl	%eax,-112(%ebp)
	movl	$11,-116(%ebp)
	leal	-124(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRLEFTBRACKETEXPECTED$non_lazy_ptr-Lj1453(%esi),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-384(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PARSERERROR$ANSISTRING$stub
Lj1653:
	movl	-32(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	movl	%eax,-112(%ebp)
	leal	-112(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_FPEXPRPARS_TEXPRARGUMENTARRAY$non_lazy_ptr-Lj1453(%esi),%edx
	leal	-44(%ebp),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	$0,-48(%ebp)
	leal	-120(%ebp),%ecx
	leal	-144(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-380(%ebp)
	testl	%eax,%eax
	jne	Lj1686
	.align 2
Lj1690:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETTOKEN$$TTOKENTYPE$stub
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1697
	jmp	Lj1696
Lj1697:
	movl	-44(%ebp),%eax
	call	Lfpc_dynarray_length$stub
	cmpl	-48(%ebp),%eax
	je	Lj1695
	jmp	Lj1696
Lj1695:
	movl	-48(%ebp),%eax
	incl	%eax
	movl	%eax,-148(%ebp)
	leal	-148(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_FPEXPRPARS_TEXPRARGUMENTARRAY$non_lazy_ptr-Lj1453(%esi),%edx
	leal	-44(%ebp),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-44(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	$0,(%edx,%eax,4)
Lj1696:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL1$$TFPEXPRNODE$stub
	movl	-44(%ebp),%edx
	movl	-48(%ebp),%ecx
	movl	%eax,(%edx,%ecx,4)
	incl	-48(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	cmpl	$15,%eax
	jne	Lj1716
	jmp	Lj1717
Lj1716:
	movl	-32(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	cmpl	-48(%ebp),%eax
	jg	Lj1720
	jmp	Lj1721
Lj1720:
	leal	-384(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-384(%ebp)
	leal	-384(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,-156(%ebp)
	movl	$0,-160(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CURRENTTOKEN$$ANSISTRING$stub
	movl	-108(%ebp),%eax
	movl	%eax,-148(%ebp)
	movl	$11,-152(%ebp)
	leal	-160(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRCOMMAEXPECTED$non_lazy_ptr-Lj1453(%esi),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-384(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PARSERERROR$ANSISTRING$stub
Lj1721:
Lj1717:
	movl	-48(%ebp),%eax
	cmpl	-32(%ebp),%eax
	je	Lj1692
	jmp	Lj1738
Lj1738:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1739
	jmp	Lj1690
Lj1739:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	cmpl	$8,%eax
	je	Lj1692
	jmp	Lj1690
Lj1692:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	cmpl	$8,%eax
	jne	Lj1742
	jmp	Lj1743
Lj1742:
	leal	-384(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-384(%ebp)
	leal	-384(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,-156(%ebp)
	movl	$0,-160(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CURRENTTOKEN$$ANSISTRING$stub
	movl	-108(%ebp),%eax
	movl	%eax,-148(%ebp)
	movl	$11,-152(%ebp)
	leal	-160(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRBRACKETEXPECTED$non_lazy_ptr-Lj1453(%esi),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-384(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PARSERERROR$ANSISTRING$stub
Lj1743:
Lj1686:
	call	LFPC_POPADDRSTACK$stub
	movl	-380(%ebp),%eax
	testl	%eax,%eax
	je	Lj1688
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj1453(%esi),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj1762
	movl	%eax,-148(%ebp)
	leal	-160(%ebp),%ecx
	leal	-184(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-188(%ebp)
	testl	%eax,%eax
	jne	Lj1763
	decl	-48(%ebp)
	jmp	Lj1766
	.align 2
Lj1765:
	movl	-44(%ebp),%edx
	movl	-48(%ebp),%eax
	leal	(%edx,%eax,4),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	decl	-48(%ebp)
Lj1766:
	movl	-48(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1765
	jmp	Lj1767
Lj1767:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1763:
	call	LFPC_POPADDRSTACK$stub
	movl	-188(%ebp),%eax
	testl	%eax,%eax
	je	Lj1770
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1770:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1688
Lj1762:
	call	LFPC_RERAISE$stub
Lj1688:
Lj1649:
	cmpb	$0,-33(%ebp)
	jne	Lj1771
	jmp	Lj1772
Lj1771:
	movl	-44(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-44(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	-44(%ebp),%eax
	movl	(%eax),%ecx
	movl	L_VMT_FPEXPRPARS_TIFOPERATION$non_lazy_ptr-Lj1453(%esi),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TIFOPERATION_$__CREATE$TFPEXPRNODE$TFPEXPRNODE$TFPEXPRNODE$$TIFOPERATION$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1785
Lj1772:
	cmpb	$0,-34(%ebp)
	jne	Lj1786
	jmp	Lj1787
Lj1786:
	movl	-44(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_VMT_FPEXPRPARS_TCASEOPERATION$non_lazy_ptr-Lj1453(%esi),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TCASEOPERATION_$__CREATE$TEXPRARGUMENTARRAY$$TCASEOPERATION$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1796
Lj1787:
	movl	-40(%ebp),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	je	Lj1799
	decl	%eax
	je	Lj1800
	decl	%eax
	je	Lj1801
	jmp	Lj1798
Lj1799:
	movl	-40(%ebp),%ecx
	movl	L_VMT_FPEXPRPARS_TFPEXPRVARIABLE$non_lazy_ptr-Lj1453(%esi),%edx
	movl	$0,%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERNODE_$__CREATEIDENTIFIER$TFPEXPRIDENTIFIERDEF$$TFPEXPRIDENTIFIERNODE$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1797
Lj1800:
	movl	-44(%ebp),%eax
	movl	%eax,(%esp)
	movl	-40(%ebp),%ecx
	movl	L_VMT_FPEXPRPARS_TFPFUNCTIONCALLBACK$non_lazy_ptr-Lj1453(%esi),%eax
	movl	$0,%edi
	movl	L_VMT_FPEXPRPARS_TFPFUNCTIONCALLBACK$non_lazy_ptr-Lj1453(%esi),%edx
	movl	%edx,%ebx
	movl	%eax,%edx
	movl	%edi,%eax
	call	*116(%ebx)
	movl	%eax,-8(%ebp)
	jmp	Lj1797
Lj1801:
	movl	-44(%ebp),%eax
	movl	%eax,(%esp)
	movl	-40(%ebp),%ecx
	movl	L_VMT_FPEXPRPARS_TFPFUNCTIONEVENTHANDLER$non_lazy_ptr-Lj1453(%esi),%edx
	movl	$0,%eax
	movl	L_VMT_FPEXPRPARS_TFPFUNCTIONEVENTHANDLER$non_lazy_ptr-Lj1453(%esi),%ebx
	call	*116(%ebx)
	movl	%eax,-8(%ebp)
	jmp	Lj1797
Lj1798:
Lj1797:
Lj1796:
Lj1785:
Lj1582:
Lj1560:
Lj1544:
Lj1527:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETTOKEN$$TTOKENTYPE$stub
Lj1454:
	call	LFPC_POPADDRSTACK$stub
	leal	-384(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-384(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	L_INIT_FPEXPRPARS_TEXPRARGUMENTARRAY$non_lazy_ptr-Lj1453(%esi),%edx
	leal	-44(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1455
	call	LFPC_RERAISE$stub
Lj1455:
	movl	-8(%ebp),%eax
	movl	-396(%ebp),%ebx
	movl	-392(%ebp),%esi
	movl	-388(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__SETEXPRESSION$ANSISTRING
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__SETEXPRESSION$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	call	Lj1839
Lj1839:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1840
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1843
	jmp	Lj1844
Lj1843:
	jmp	Lj1840
Lj1844:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	56(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,56(%esi)
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	60(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-8(%ebp),%eax
	cmpl	$0,64(%eax)
	jne	Lj1855
	jmp	Lj1856
Lj1855:
	movl	-8(%ebp),%eax
	leal	64(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj1856:
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	testl	%eax,%eax
	jne	Lj1859
	jmp	Lj1860
Lj1859:
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETTOKEN$$TTOKENTYPE$stub
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL1$$TFPEXPRNODE$stub
	movl	-8(%ebp),%edx
	movl	%eax,64(%edx)
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub
	cmpl	$24,%eax
	jne	Lj1867
	jmp	Lj1868
Lj1867:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	$0,-68(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CURRENTTOKEN$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$11,-60(%ebp)
	leal	-68(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRUNTERMINATEDEXPRESSION$non_lazy_ptr-Lj1839(%ebx),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PARSERERROR$ANSISTRING$stub
Lj1868:
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	-8(%ebp),%edx
	movl	64(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	jmp	Lj1889
Lj1860:
	movl	-8(%ebp),%eax
	movl	$0,64(%eax)
Lj1889:
Lj1840:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1841
	call	LFPC_RERAISE$stub
Lj1841:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKRESULTTYPE$TFPEXPRESSIONRESULT$TRESULTTYPE
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKRESULTTYPE$TFPEXPRESSIONRESULT$TRESULTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj1893
Lj1893:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-64(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1894
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-8(%ebp),%eax
	jne	Lj1897
	jmp	Lj1898
Lj1897:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_FPEXPRPARS_RESULTTYPENAME$TRESULTTYPE$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$11,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRINVALIDRESULTTYPE$non_lazy_ptr-Lj1893(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub
Lj1898:
Lj1894:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1895
	call	LFPC_RERAISE$stub
Lj1895:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__BUILTINSMANAGER$$TEXPRBUILTINMANAGER
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__BUILTINSMANAGER$$TEXPRBUILTINMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_FPEXPRPARS_BUILTINIDENTIFIERS$$TEXPRBUILTINMANAGER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__EVALUATE$$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__EVALUATE$$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__EVALUATEEXPRESSION$TFPEXPRESSIONRESULT$stub
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__RESULTTYPE$$TRESULTTYPE
_FPEXPRPARS_TFPEXPRESSIONPARSER_$__RESULTTYPE$$TRESULTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1920
Lj1920:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,64(%eax)
	jne	Lj1922
	jmp	Lj1921
Lj1921:
	movl	L_RESSTR_FPEXPRPARS_SERRINEXPRESSION$non_lazy_ptr-Lj1920(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PARSERERROR$ANSISTRING$stub
Lj1922:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	-4(%ebp),%edx
	movl	64(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__GETI$LONGINT$$TFPEXPRIDENTIFIERDEF
_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__GETI$LONGINT$$TFPEXPRIDENTIFIERDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__SETI$LONGINT$TFPEXPRIDENTIFIERDEF
_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__SETI$LONGINT$TFPEXPRIDENTIFIERDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__SETITEM$LONGINT$TCOLLECTIONITEM$stub
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__UPDATE$TCOLLECTIONITEM
_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__UPDATE$TCOLLECTIONITEM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,32(%eax)
	jne	Lj1949
	jmp	Lj1950
Lj1949:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movb	$1,76(%eax)
Lj1950:
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__INDEXOFIDENTIFIER$SHORTSTRING$$LONGINT
_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__INDEXOFIDENTIFIER$SHORTSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1955
	movl	-8(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1963
	.align 2
Lj1962:
	decl	-12(%ebp)
Lj1963:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1965
	jmp	Lj1964
Lj1965:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-56(%ebp),%ebx
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__GETI$LONGINT$$TFPEXPRIDENTIFIERDEF$stub
	leal	52(%eax),%eax
	leal	-60(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-60(%ebp),%eax
	movl	%ebx,%edx
	call	L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj1962
	jmp	Lj1964
Lj1964:
Lj1955:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1956
	call	LFPC_RERAISE$stub
Lj1956:
	movl	-12(%ebp),%eax
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__FINDIDENTIFIER$SHORTSTRING$$TFPEXPRIDENTIFIERDEF
_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__FINDIDENTIFIER$SHORTSTRING$$TFPEXPRIDENTIFIERDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__INDEXOFIDENTIFIER$SHORTSTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1990
	jmp	Lj1991
Lj1990:
	movl	$0,-12(%ebp)
	jmp	Lj1994
Lj1991:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__GETI$LONGINT$$TFPEXPRIDENTIFIERDEF$stub
	movl	%eax,-12(%ebp)
Lj1994:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__IDENTIFIERBYNAME$SHORTSTRING$$TFPEXPRIDENTIFIERDEF
_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__IDENTIFIERBYNAME$SHORTSTRING$$TFPEXPRIDENTIFIERDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj2002
Lj2002:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__FINDIDENTIFIER$SHORTSTRING$$TFPEXPRIDENTIFIERDEF$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2009
	jmp	Lj2010
Lj2009:
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$4,-24(%ebp)
	leal	-24(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRUNKNOWNIDENTIFIER$non_lazy_ptr-Lj2002(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub
Lj2010:
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDVARIABLE$crc74D68550
_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDVARIABLE$crc74D68550:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj2018
Lj2018:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj2019
	movl	-12(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub
	movl	%eax,%edx
	movl	L_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF$non_lazy_ptr-Lj2018(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	$0,48(%eax)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETNAME$SHORTSTRING$stub
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETRESULTTYPE$TRESULTTYPE$stub
	movl	8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETVALUE$ANSISTRING$stub
Lj2019:
	call	LFPC_POPADDRSTACK$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj2020
	call	LFPC_RERAISE$stub
Lj2020:
	movl	-16(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDBOOLEANVARIABLE$SHORTSTRING$BOOLEAN$$TFPEXPRIDENTIFIERDEF
_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDBOOLEANVARIABLE$SHORTSTRING$BOOLEAN$$TFPEXPRIDENTIFIERDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj2045
Lj2045:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub
	movl	%eax,%edx
	movl	L_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF$non_lazy_ptr-Lj2045(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	$0,48(%eax)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETNAME$SHORTSTRING$stub
	movl	-16(%ebp),%eax
	movl	$0,%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETRESULTTYPE$TRESULTTYPE$stub
	movl	-16(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,36(%eax)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDINTEGERVARIABLE$SHORTSTRING$LONGINT$$TFPEXPRIDENTIFIERDEF
_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDINTEGERVARIABLE$SHORTSTRING$LONGINT$$TFPEXPRIDENTIFIERDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj2067
Lj2067:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub
	movl	%eax,%edx
	movl	L_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF$non_lazy_ptr-Lj2067(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	$0,48(%eax)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETNAME$SHORTSTRING$stub
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETRESULTTYPE$TRESULTTYPE$stub
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,36(%ecx)
	movl	%eax,40(%ecx)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDFLOATVARIABLE$SHORTSTRING$DOUBLE$$TFPEXPRIDENTIFIERDEF
_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDFLOATVARIABLE$SHORTSTRING$DOUBLE$$TFPEXPRIDENTIFIERDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj2089
Lj2089:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub
	movl	%eax,%edx
	movl	L_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF$non_lazy_ptr-Lj2089(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,48(%eax)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETNAME$SHORTSTRING$stub
	movl	-12(%ebp),%eax
	movl	$2,%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETRESULTTYPE$TRESULTTYPE$stub
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,36(%edx)
	movl	12(%ebp),%eax
	movl	%eax,40(%edx)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDSTRINGVARIABLE$SHORTSTRING$ANSISTRING$$TFPEXPRIDENTIFIERDEF
_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDSTRINGVARIABLE$SHORTSTRING$ANSISTRING$$TFPEXPRIDENTIFIERDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj2111
Lj2111:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj2112
	movl	-12(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub
	movl	%eax,%edx
	movl	L_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF$non_lazy_ptr-Lj2111(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	$0,48(%eax)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETNAME$SHORTSTRING$stub
	movl	-16(%ebp),%eax
	movl	$4,%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETRESULTTYPE$TRESULTTYPE$stub
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	28(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,28(%esi)
Lj2112:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj2113
	call	LFPC_RERAISE$stub
Lj2113:
	movl	-16(%ebp),%eax
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDDATETIMEVARIABLE$SHORTSTRING$TDATETIME$$TFPEXPRIDENTIFIERDEF
_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDDATETIMEVARIABLE$SHORTSTRING$TDATETIME$$TFPEXPRIDENTIFIERDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj2136
Lj2136:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub
	movl	%eax,%edx
	movl	L_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF$non_lazy_ptr-Lj2136(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,48(%eax)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETNAME$SHORTSTRING$stub
	movl	-12(%ebp),%eax
	movl	$3,%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETRESULTTYPE$TRESULTTYPE$stub
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,36(%edx)
	movl	12(%ebp),%eax
	movl	%eax,40(%edx)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDFUNCTION$crcD0755370
_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDFUNCTION$crcD0755370:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj2158
Lj2158:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub
	movl	%eax,%edx
	movl	L_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF$non_lazy_ptr-Lj2158(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETNAME$SHORTSTRING$stub
	movl	-16(%ebp),%eax
	movl	$1,48(%eax)
	movl	12(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETARGUMENTTYPES$ANSISTRING$stub
	movb	-8(%ebp),%al
	call	L_FPEXPRPARS_CHARTORESULTTYPE$CHAR$$TRESULTTYPE$stub
	movl	%eax,%edx
	movl	-16(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETRESULTTYPE$TRESULTTYPE$stub
	movl	-16(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,316(%eax)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDFUNCTION$crc151CB118
_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDFUNCTION$crc151CB118:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj2186
Lj2186:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-24(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub
	movl	%eax,%edx
	movl	L_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF$non_lazy_ptr-Lj2186(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETNAME$SHORTSTRING$stub
	movl	-16(%ebp),%eax
	movl	$2,48(%eax)
	movl	12(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETARGUMENTTYPES$ANSISTRING$stub
	movb	-8(%ebp),%al
	call	L_FPEXPRPARS_CHARTORESULTTYPE$CHAR$$TRESULTTYPE$stub
	movl	%eax,%edx
	movl	-16(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETRESULTTYPE$TRESULTTYPE$stub
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,308(%edx)
	movl	-20(%ebp),%eax
	movl	%eax,312(%edx)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETNAME$SHORTSTRING
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETNAME$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj2214
Lj2214:
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
	jne	Lj2215
	movl	-8(%ebp),%eax
	leal	52(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_shortstr_compare_equal$stub
	testl	%eax,%eax
	je	Lj2218
	jmp	Lj2219
Lj2218:
	jmp	Lj2215
Lj2219:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2224
	jmp	Lj2225
Lj2224:
	movl	-8(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj2232
	jmp	Lj2231
Lj2232:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__INDEXOFIDENTIFIER$SHORTSTRING$$LONGINT$stub
	cmpl	$-1,%eax
	jne	Lj2230
	jmp	Lj2231
Lj2230:
	movl	-4(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$4,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRDUPLICATEIDENTIFIER$non_lazy_ptr-Lj2214(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub
Lj2231:
Lj2225:
	movl	-8(%ebp),%eax
	leal	52(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
Lj2215:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj2216
	call	LFPC_RERAISE$stub
Lj2216:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETRESULTTYPE$TRESULTTYPE
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETRESULTTYPE$TRESULTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj2251
	jmp	Lj2252
Lj2251:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETVALUE$ANSISTRING$stub
Lj2252:
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETVALUE$ANSISTRING
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETVALUE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj2260
Lj2260:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	24(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,24(%esi)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2263
	jmp	Lj2264
Lj2263:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj2267
	decl	%eax
	je	Lj2268
	decl	%eax
	je	Lj2269
	decl	%eax
	je	Lj2270
	decl	%eax
	je	Lj2271
	jmp	Lj2266
Lj2267:
	movl	-8(%ebp),%esi
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	L_$FPEXPRPARS$_Ld18$non_lazy_ptr-Lj2260(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	seteb	36(%esi)
	jmp	Lj2265
Lj2268:
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub
	movl	%eax,%edx
	sarl	$31,%edx
	movl	-8(%ebp),%ecx
	movl	%eax,36(%ecx)
	movl	%edx,40(%ecx)
	jmp	Lj2265
Lj2269:
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_STRTOFLOAT$ANSISTRING$$EXTENDED$stub
	movl	-8(%ebp),%eax
	fstpl	36(%eax)
	jmp	Lj2265
Lj2270:
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_STRTODATETIME$ANSISTRING$$TDATETIME$stub
	movl	-8(%ebp),%eax
	fstpl	36(%eax)
	jmp	Lj2265
Lj2271:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	28(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,28(%esi)
	jmp	Lj2265
Lj2266:
Lj2265:
	jmp	Lj2292
Lj2264:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj2295
	decl	%eax
	je	Lj2296
	decl	%eax
	je	Lj2297
	decl	%eax
	je	Lj2298
	decl	%eax
	je	Lj2299
	jmp	Lj2294
Lj2295:
	movl	-8(%ebp),%eax
	movb	$0,36(%eax)
	jmp	Lj2293
Lj2296:
	movl	-8(%ebp),%eax
	movl	$0,36(%eax)
	movl	$0,40(%eax)
	jmp	Lj2293
Lj2297:
	movl	-8(%ebp),%eax
	fldz
	fstpl	36(%eax)
	jmp	Lj2293
Lj2298:
	movl	-8(%ebp),%eax
	fldz
	fstpl	36(%eax)
	jmp	Lj2293
Lj2299:
	movl	-8(%ebp),%esi
	leal	28(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,28(%esi)
	jmp	Lj2293
Lj2294:
Lj2293:
Lj2292:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKRESULTTYPE$TRESULTTYPE
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKRESULTTYPE$TRESULTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	call	Lj2311
Lj2311:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-60(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj2312
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj2315
	jmp	Lj2316
Lj2315:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_RESULTTYPENAME$TRESULTTYPE$$ANSISTRING$stub
	movl	-60(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	$11,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRINVALIDRESULTTYPE$non_lazy_ptr-Lj2311(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub
Lj2316:
Lj2312:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj2313
	call	LFPC_RERAISE$stub
Lj2313:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKVARIABLE
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKVARIABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj2328
Lj2328:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	jne	Lj2329
	jmp	Lj2330
Lj2329:
	movl	-4(%ebp),%eax
	leal	52(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	$4,-16(%ebp)
	leal	-16(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRNOTVARIABLE$non_lazy_ptr-Lj2328(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub
Lj2330:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__ARGUMENTCOUNT$$LONGINT
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__ARGUMENTCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	je	Lj2341
	movl	-4(%eax),%eax
Lj2341:
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__ASSIGN$TPERSISTENT
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__ASSIGN$TPERSISTENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj2343
Lj2343:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF$non_lazy_ptr-Lj2343(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj2344
	jmp	Lj2345
Lj2344:
	movl	-4(%ebp),%edx
	movl	L_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF$non_lazy_ptr-Lj2343(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edi
	movl	24(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	24(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	24(%edi),%eax
	movl	%eax,24(%esi)
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj2343(%ebx),%ecx
	movl	-8(%ebp),%eax
	leal	28(%eax),%edx
	movl	-12(%ebp),%eax
	leal	28(%eax),%eax
	call	Lfpc_copy_proc$stub
	movl	-12(%ebp),%edi
	movl	44(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	44(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	44(%edi),%eax
	movl	%eax,44(%esi)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,48(%edx)
	movl	-12(%ebp),%eax
	leal	52(%eax),%ecx
	movl	-8(%ebp),%eax
	leal	52(%eax),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	308(%edx),%eax
	movl	%eax,308(%ecx)
	movl	312(%edx),%eax
	movl	%eax,312(%ecx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	316(%eax),%eax
	movl	%eax,316(%edx)
	jmp	Lj2378
Lj2345:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT$stub
Lj2378:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETARGUMENTTYPES$ANSISTRING
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETARGUMENTTYPES$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj2385
	jmp	Lj2386
Lj2385:
	jmp	Lj2383
Lj2386:
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	je	Lj2394
	movl	-4(%ebx),%ebx
Lj2394:
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2392
	decl	-12(%ebp)
	.align 2
Lj2393:
	incl	-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	call	L_FPEXPRPARS_CHARTORESULTTYPE$CHAR$$TRESULTTYPE$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj2393
Lj2392:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	44(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,44(%ebx)
Lj2383:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETASBOOLEAN$BOOLEAN
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETASBOOLEAN$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKVARIABLE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKRESULTTYPE$TRESULTTYPE$stub
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,36(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETASDATETIME$TDATETIME
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETASDATETIME$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKVARIABLE$stub
	movl	-4(%ebp),%eax
	movl	$3,%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKRESULTTYPE$TRESULTTYPE$stub
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,36(%edx)
	movl	12(%ebp),%eax
	movl	%eax,40(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETASFLOAT$DOUBLE
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETASFLOAT$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKVARIABLE$stub
	movl	-4(%ebp),%eax
	movl	$2,%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKRESULTTYPE$TRESULTTYPE$stub
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,36(%edx)
	movl	12(%ebp),%eax
	movl	%eax,40(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETASINTEGER$INT64
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETASINTEGER$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKVARIABLE$stub
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKRESULTTYPE$TRESULTTYPE$stub
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,36(%edx)
	movl	12(%ebp),%eax
	movl	%eax,40(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETASSTRING$ANSISTRING
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETASSTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKVARIABLE$stub
	movl	-8(%ebp),%eax
	movl	$4,%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKRESULTTYPE$TRESULTTYPE$stub
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	28(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,28(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__GETVALUE$$ANSISTRING
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__GETVALUE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj2450
Lj2450:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj2453
	decl	%eax
	je	Lj2454
	decl	%eax
	je	Lj2455
	decl	%eax
	je	Lj2456
	decl	%eax
	je	Lj2457
	jmp	Lj2452
Lj2453:
	movl	-4(%ebp),%eax
	cmpb	$0,36(%eax)
	jne	Lj2458
	jmp	Lj2459
Lj2458:
	movl	L_$FPEXPRPARS$_Ld18$non_lazy_ptr-Lj2450(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj2462
Lj2459:
	movl	L_$FPEXPRPARS$_Ld20$non_lazy_ptr-Lj2450(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
Lj2462:
	jmp	Lj2451
Lj2454:
	movl	-4(%ebp),%edx
	movl	40(%edx),%eax
	movl	%eax,4(%esp)
	movl	36(%edx),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub
	jmp	Lj2451
Lj2455:
	movl	-4(%ebp),%eax
	movl	36(%eax),%edx
	movl	%edx,(%esp)
	movl	40(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING$stub
	jmp	Lj2451
Lj2456:
	movl	-4(%ebp),%eax
	movl	36(%eax),%edx
	movl	%edx,(%esp)
	movl	40(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%edx
	movl	L_$FPEXPRPARS$_Ld22$non_lazy_ptr-Lj2450(%esi),%eax
	call	L_SYSUTILS_FORMATDATETIME$ANSISTRING$TDATETIME$$ANSISTRING$stub
	jmp	Lj2451
Lj2457:
	movl	-4(%ebp),%edi
	movl	28(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	28(%edi),%eax
	movl	%eax,(%ebx)
	jmp	Lj2451
Lj2452:
Lj2451:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__GETRESULTTYPE$$TRESULTTYPE
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__GETRESULTTYPE$$TRESULTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__GETASFLOAT$$DOUBLE
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__GETASFLOAT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$2,%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKRESULTTYPE$TRESULTTYPE$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKVARIABLE$stub
	movl	-4(%ebp),%edx
	movl	36(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	40(%edx),%eax
	movl	%eax,-8(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__GETASBOOLEAN$$BOOLEAN
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__GETASBOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKRESULTTYPE$TRESULTTYPE$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKVARIABLE$stub
	movl	-4(%ebp),%eax
	movb	36(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__GETASDATETIME$$TDATETIME
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__GETASDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$3,%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKRESULTTYPE$TRESULTTYPE$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKVARIABLE$stub
	movl	-4(%ebp),%edx
	movl	36(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	40(%edx),%eax
	movl	%eax,-8(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__GETASINTEGER$$INT64
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__GETASINTEGER$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKRESULTTYPE$TRESULTTYPE$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKVARIABLE$stub
	movl	-4(%ebp),%edx
	movl	36(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	40(%edx),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__GETASSTRING$$ANSISTRING
_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__GETASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$4,%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKRESULTTYPE$TRESULTTYPE$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKVARIABLE$stub
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
.globl	_FPEXPRPARS_TEXPRBUILTINMANAGER_$__GETCOUNT$$LONGINT
_FPEXPRPARS_TEXPRBUILTINMANAGER_$__GETCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TEXPRBUILTINMANAGER_$__GETI$LONGINT$$TFPBUILTINEXPRIDENTIFIERDEF
_FPEXPRPARS_TEXPRBUILTINMANAGER_$__GETI$LONGINT$$TFPBUILTINEXPRIDENTIFIERDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__GETI$LONGINT$$TFPEXPRIDENTIFIERDEF$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TEXPRBUILTINMANAGER_$__CREATE$TCOMPONENT$$TEXPRBUILTINMANAGER
_FPEXPRPARS_TEXPRBUILTINMANAGER_$__CREATE$TCOMPONENT$$TEXPRBUILTINMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj2550
Lj2550:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2551
	jmp	Lj2552
Lj2551:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj2552:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2557
	jmp	Lj2558
Lj2557:
	jmp	Lj2549
Lj2558:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2561
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2565
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT$stub
	movl	L_VMT_FPEXPRPARS_TFPBUILTINEXPRIDENTIFIERDEF$non_lazy_ptr-Lj2550(%ebx),%ecx
	movl	L_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS$non_lazy_ptr-Lj2550(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TCOLLECTION_$__CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION$stub
	movl	-12(%ebp),%edx
	movl	%eax,52(%edx)
Lj2565:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2566
	call	LFPC_RERAISE$stub
Lj2566:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2584
	jmp	Lj2583
Lj2584:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2582
	jmp	Lj2583
Lj2582:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2583:
Lj2561:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2563
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2588
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2589
	jmp	Lj2590
Lj2589:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2590:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2588:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2587
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2587:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2563
Lj2563:
Lj2549:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TEXPRBUILTINMANAGER_$__DESTROY
_FPEXPRPARS_TEXPRBUILTINMANAGER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2597
	jmp	Lj2598
Lj2597:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj2598:
	movl	-8(%ebp),%eax
	leal	52(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2609
	jmp	Lj2608
Lj2609:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2607
	jmp	Lj2608
Lj2607:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj2608:
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TEXPRBUILTINMANAGER_$__INDEXOFIDENTIFIER$SHORTSTRING$$LONGINT
_FPEXPRPARS_TEXPRBUILTINMANAGER_$__INDEXOFIDENTIFIER$SHORTSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__INDEXOFIDENTIFIER$SHORTSTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TEXPRBUILTINMANAGER_$__FINDIDENTIFIER$SHORTSTRING$$TFPBUILTINEXPRIDENTIFIERDEF
_FPEXPRPARS_TEXPRBUILTINMANAGER_$__FINDIDENTIFIER$SHORTSTRING$$TFPBUILTINEXPRIDENTIFIERDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__FINDIDENTIFIER$SHORTSTRING$$TFPEXPRIDENTIFIERDEF$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TEXPRBUILTINMANAGER_$__IDENTIFIERBYNAME$SHORTSTRING$$TFPBUILTINEXPRIDENTIFIERDEF
_FPEXPRPARS_TEXPRBUILTINMANAGER_$__IDENTIFIERBYNAME$SHORTSTRING$$TFPBUILTINEXPRIDENTIFIERDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__IDENTIFIERBYNAME$SHORTSTRING$$TFPEXPRIDENTIFIERDEF$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDVARIABLE$crc24B13AD0
_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDVARIABLE$crc24B13AD0:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj2638
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	52(%eax),%eax
	movl	12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDVARIABLE$crc74D68550$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,320(%eax)
Lj2638:
	call	LFPC_POPADDRSTACK$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj2639
	call	LFPC_RERAISE$stub
Lj2639:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDBOOLEANVARIABLE$crc6A6AFA92
_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDBOOLEANVARIABLE$crc6A6AFA92:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	52(%eax),%eax
	movb	8(%ebp),%cl
	movl	-8(%ebp),%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDBOOLEANVARIABLE$SHORTSTRING$BOOLEAN$$TFPEXPRIDENTIFIERDEF$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,320(%eax)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDINTEGERVARIABLE$crcF835AFB8
_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDINTEGERVARIABLE$crcF835AFB8:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	52(%eax),%eax
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDINTEGERVARIABLE$SHORTSTRING$LONGINT$$TFPEXPRIDENTIFIERDEF$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,320(%eax)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFLOATVARIABLE$crc4D3F7E51
_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFLOATVARIABLE$crc4D3F7E51:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	52(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDFLOATVARIABLE$SHORTSTRING$DOUBLE$$TFPEXPRIDENTIFIERDEF$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,320(%eax)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDSTRINGVARIABLE$crc572103C5
_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDSTRINGVARIABLE$crc572103C5:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj2691
	movl	-12(%ebp),%eax
	movl	52(%eax),%eax
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDSTRINGVARIABLE$SHORTSTRING$ANSISTRING$$TFPEXPRIDENTIFIERDEF$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,320(%eax)
Lj2691:
	call	LFPC_POPADDRSTACK$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj2692
	call	LFPC_RERAISE$stub
Lj2692:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDDATETIMEVARIABLE$crc8ECC292D
_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDDATETIMEVARIABLE$crc8ECC292D:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	52(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDDATETIMEVARIABLE$SHORTSTRING$TDATETIME$$TFPEXPRIDENTIFIERDEF$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,320(%eax)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7
_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	52(%eax),%eax
	movb	16(%ebp),%cl
	movl	-8(%ebp),%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDFUNCTION$crcD0755370$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,320(%eax)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc7367E737
_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc7367E737:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-24(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	52(%eax),%eax
	movb	16(%ebp),%cl
	movl	-8(%ebp),%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDFUNCTION$crc151CB118$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,320(%eax)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPBINARYOPERATION_$__CHECKSAMENODETYPES
_FPEXPRPARS_TFPBINARYOPERATION_$__CHECKSAMENODETYPES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-104(%ebp)
	call	Lj2749
Lj2749:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-100(%ebp)
	movl	$0,-96(%ebp)
	movl	$0,-92(%ebp)
	movl	$0,-88(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2750
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jne	Lj2761
	jmp	Lj2762
Lj2761:
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_RESULTTYPENAME$TRESULTTYPE$$ANSISTRING$stub
	movl	-88(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	$11,-84(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPEXPRPARS_RESULTTYPENAME$TRESULTTYPE$$ANSISTRING$stub
	movl	-92(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	$11,-76(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-96(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-96(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$11,-68(%ebp)
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-100(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-100(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$11,-60(%ebp)
	leal	-84(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRTYPESDONOTMATCH$non_lazy_ptr-Lj2749(%ebx),%eax
	movl	4(%eax),%eax
	movl	$3,%ecx
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub
Lj2762:
Lj2750:
	call	LFPC_POPADDRSTACK$stub
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2751
	call	LFPC_RERAISE$stub
Lj2751:
	movl	-104(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPBINARYOPERATION_$__CREATE$TFPEXPRNODE$TFPEXPRNODE$$TFPBINARYOPERATION
_FPEXPRPARS_TFPBINARYOPERATION_$__CREATE$TFPEXPRNODE$TFPEXPRNODE$$TFPBINARYOPERATION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2787
	jmp	Lj2788
Lj2787:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj2788:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2793
	jmp	Lj2794
Lj2793:
	jmp	Lj2785
Lj2794:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2797
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2801
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,8(%edx)
Lj2801:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2802
	call	LFPC_RERAISE$stub
Lj2802:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2810
	jmp	Lj2809
Lj2810:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2808
	jmp	Lj2809
Lj2808:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2809:
Lj2797:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2799
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2814
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2815
	jmp	Lj2816
Lj2815:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2816:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2814:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2813
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2813:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2799
Lj2799:
Lj2785:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2823
	jmp	Lj2824
Lj2823:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj2824:
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	leal	8(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2837
	jmp	Lj2836
Lj2837:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2835
	jmp	Lj2836
Lj2835:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj2836:
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPBINARYOPERATION_$__CHECK
_FPEXPRPARS_TFPBINARYOPERATION_$__CHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-276(%ebp)
	call	Lj2841
Lj2841:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj2843
	jmp	Lj2842
Lj2842:
	leal	-272(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-272(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$4,-16(%ebp)
	leal	-16(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRNOLEFTOPERAND$non_lazy_ptr-Lj2841(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub
Lj2843:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj2855
	jmp	Lj2854
Lj2854:
	leal	-272(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-272(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$4,-16(%ebp)
	leal	-16(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRNORIGHTOPERAND$non_lazy_ptr-Lj2841(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub
Lj2855:
	movl	-276(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPUNARYOPERATOR_$__CREATE$TFPEXPRNODE$$TFPUNARYOPERATOR
_FPEXPRPARS_TFPUNARYOPERATOR_$__CREATE$TFPEXPRNODE$$TFPUNARYOPERATOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2868
	jmp	Lj2869
Lj2868:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj2869:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2874
	jmp	Lj2875
Lj2874:
	jmp	Lj2866
Lj2875:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2878
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2882
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
Lj2882:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2883
	call	LFPC_RERAISE$stub
Lj2883:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2889
	jmp	Lj2888
Lj2889:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2887
	jmp	Lj2888
Lj2887:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2888:
Lj2878:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2880
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2893
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2894
	jmp	Lj2895
Lj2894:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2895:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2893:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2892
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2892:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2880
Lj2880:
Lj2866:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPUNARYOPERATOR_$__DESTROY
_FPEXPRPARS_TFPUNARYOPERATOR_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2902
	jmp	Lj2903
Lj2902:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj2903:
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2914
	jmp	Lj2913
Lj2914:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2912
	jmp	Lj2913
Lj2912:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj2913:
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPUNARYOPERATOR_$__CHECK
_FPEXPRPARS_TFPUNARYOPERATOR_$__CHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-276(%ebp)
	call	Lj2918
Lj2918:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj2920
	jmp	Lj2919
Lj2919:
	leal	-272(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-272(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$4,-16(%ebp)
	leal	-16(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRNOOPERAND$non_lazy_ptr-Lj2918(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub
Lj2920:
	movl	-276(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATESTRING$ANSISTRING$$TFPCONSTEXPRESSION
_FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATESTRING$ANSISTRING$$TFPCONSTEXPRESSION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2933
	jmp	Lj2934
Lj2933:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj2934:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2939
	jmp	Lj2940
Lj2939:
	jmp	Lj2931
Lj2940:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2943
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2947
	movl	-12(%ebp),%eax
	movl	$4,8(%eax)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,4(%ebx)
Lj2947:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2948
	call	LFPC_RERAISE$stub
Lj2948:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2956
	jmp	Lj2955
Lj2956:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2954
	jmp	Lj2955
Lj2954:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2955:
Lj2943:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2945
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2960
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2961
	jmp	Lj2962
Lj2961:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2962:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2960:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2959
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2959:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2945
Lj2945:
Lj2931:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATEINTEGER$INT64$$TFPCONSTEXPRESSION
_FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATEINTEGER$INT64$$TFPCONSTEXPRESSION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2969
	jmp	Lj2970
Lj2969:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj2970:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2975
	jmp	Lj2976
Lj2975:
	jmp	Lj2967
Lj2976:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj2979
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj2983
	movl	-8(%ebp),%eax
	movl	$1,8(%eax)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,12(%edx)
	movl	12(%ebp),%eax
	movl	%eax,16(%edx)
Lj2983:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj2984
	call	LFPC_RERAISE$stub
Lj2984:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2992
	jmp	Lj2991
Lj2992:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2990
	jmp	Lj2991
Lj2990:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2991:
Lj2979:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj2981
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj2996
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2997
	jmp	Lj2998
Lj2997:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2998:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2996:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj2995
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2995:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2981
Lj2981:
Lj2967:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATEDATETIME$TDATETIME$$TFPCONSTEXPRESSION
_FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATEDATETIME$TDATETIME$$TFPCONSTEXPRESSION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj3005
	jmp	Lj3006
Lj3005:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj3006:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3011
	jmp	Lj3012
Lj3011:
	jmp	Lj3003
Lj3012:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3015
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj3019
	movl	-8(%ebp),%eax
	movl	$3,8(%eax)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,12(%edx)
	movl	12(%ebp),%eax
	movl	%eax,16(%edx)
Lj3019:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj3020
	call	LFPC_RERAISE$stub
Lj3020:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3028
	jmp	Lj3027
Lj3028:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3026
	jmp	Lj3027
Lj3026:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3027:
Lj3015:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3017
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj3032
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3033
	jmp	Lj3034
Lj3033:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3034:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3032:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj3031
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3031:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3017
Lj3017:
Lj3003:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATEFLOAT$DOUBLE$$TFPCONSTEXPRESSION
_FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATEFLOAT$DOUBLE$$TFPCONSTEXPRESSION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj3041
	jmp	Lj3042
Lj3041:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj3042:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3047
	jmp	Lj3048
Lj3047:
	jmp	Lj3039
Lj3048:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3051
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj3055
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%eax
	movl	$2,8(%eax)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,12(%edx)
	movl	12(%ebp),%eax
	movl	%eax,16(%edx)
Lj3055:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj3056
	call	LFPC_RERAISE$stub
Lj3056:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3068
	jmp	Lj3067
Lj3068:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3066
	jmp	Lj3067
Lj3066:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3067:
Lj3051:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3053
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj3072
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3073
	jmp	Lj3074
Lj3073:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3074:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3072:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj3071
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3071:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3053
Lj3053:
Lj3039:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATEBOOLEAN$BOOLEAN$$TFPCONSTEXPRESSION
_FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATEBOOLEAN$BOOLEAN$$TFPCONSTEXPRESSION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj3081
	jmp	Lj3082
Lj3081:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj3082:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3087
	jmp	Lj3088
Lj3087:
	jmp	Lj3079
Lj3088:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3091
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3095
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
	movl	-12(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,12(%eax)
Lj3095:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3096
	call	LFPC_RERAISE$stub
Lj3096:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3104
	jmp	Lj3103
Lj3104:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3102
	jmp	Lj3103
Lj3102:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3103:
Lj3091:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3093
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3108
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3109
	jmp	Lj3110
Lj3109:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3110:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3108:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3107
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3107:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3093
Lj3093:
Lj3079:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPCONSTEXPRESSION_$__CHECK
_FPEXPRPARS_TFPCONSTEXPRESSION_$__CHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPCONSTEXPRESSION_$__NODETYPE$$TRESULTTYPE
_FPEXPRPARS_TFPCONSTEXPRESSION_$__NODETYPE$$TRESULTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPCONSTEXPRESSION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPCONSTEXPRESSION_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj3122
Lj3122:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj3122(%esi),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	leal	4(%edx),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	Lfpc_copy_proc$stub
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPCONSTEXPRESSION_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TFPCONSTEXPRESSION_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	call	Lj3130
Lj3130:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3131
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	testl	%eax,%eax
	je	Lj3139
	decl	%eax
	je	Lj3137
	decl	%eax
	je	Lj3140
	decl	%eax
	je	Lj3138
	decl	%eax
	je	Lj3136
	jmp	Lj3135
Lj3136:
	movl	L_$FPEXPRPARS$_Ld24$non_lazy_ptr-Lj3130(%ebx),%eax
	movl	%eax,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	L_$FPEXPRPARS$_Ld24$non_lazy_ptr-Lj3130(%ebx),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	jmp	Lj3134
Lj3137:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%edx
	movl	16(%edx),%eax
	movl	%eax,4(%esp)
	movl	12(%edx),%eax
	movl	%eax,(%esp)
	leal	-64(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	movl	%eax,(%esi)
	jmp	Lj3134
Lj3138:
	movl	L_$FPEXPRPARS$_Ld24$non_lazy_ptr-Lj3130(%ebx),%eax
	movl	%eax,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%edx
	movl	12(%edx),%eax
	movl	%eax,(%esp)
	movl	16(%edx),%eax
	movl	%eax,4(%esp)
	leal	-64(%ebp),%edx
	movl	L_$FPEXPRPARS$_Ld22$non_lazy_ptr-Lj3130(%ebx),%eax
	call	L_SYSUTILS_FORMATDATETIME$ANSISTRING$TDATETIME$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	L_$FPEXPRPARS$_Ld24$non_lazy_ptr-Lj3130(%ebx),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	jmp	Lj3134
Lj3139:
	movl	-4(%ebp),%eax
	cmpb	$0,12(%eax)
	jne	Lj3167
	jmp	Lj3168
Lj3167:
	movl	L_$FPEXPRPARS$_Ld18$non_lazy_ptr-Lj3130(%ebx),%esi
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj3171
Lj3168:
	movl	L_$FPEXPRPARS$_Ld20$non_lazy_ptr-Lj3130(%ebx),%esi
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
Lj3171:
	jmp	Lj3134
Lj3140:
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%esp)
	movl	-4(%ebp),%eax
	fldl	12(%eax)
	fstpt	4(%esp)
	movl	$1,%ecx
	movl	$-1,%edx
	movl	$-32767,%eax
	call	Lfpc_ansistr_float$stub
	jmp	Lj3134
Lj3135:
Lj3134:
Lj3131:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3132
	call	LFPC_RERAISE$stub
Lj3132:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPNEGATEOPERATION_$__CHECK
_FPEXPRPARS_TFPNEGATEOPERATION_$__CHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj3185
Lj3185:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj3186
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPUNARYOPERATOR_$__CHECK$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	decl	%eax
	cmpl	$2,%eax
	jb	Lj3195
Lj3195:
	jnc	Lj3191
	jmp	Lj3192
Lj3191:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	leal	-64(%ebp),%edx
	call	L_FPEXPRPARS_RESULTTYPENAME$TRESULTTYPE$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$11,-60(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-68(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	$11,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRNONEGATION$non_lazy_ptr-Lj3185(%ebx),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub
Lj3192:
Lj3186:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj3187
	call	LFPC_RERAISE$stub
Lj3187:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPNEGATEOPERATION_$__NODETYPE$$TRESULTTYPE
_FPEXPRPARS_TFPNEGATEOPERATION_$__NODETYPE$$TRESULTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPNEGATEOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPNEGATEOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$1,%eax
	jb	Lj3225
	decl	%eax
	je	Lj3226
	decl	%eax
	je	Lj3227
	jmp	Lj3225
Lj3226:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	12(%eax),%edx
	notl	%edx
	negl	%ecx
	sbbl	$-1,%edx
	movl	-4(%ebp),%eax
	movl	%ecx,8(%eax)
	movl	%edx,12(%eax)
	jmp	Lj3224
Lj3227:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fchs
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	jmp	Lj3224
Lj3225:
Lj3224:
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPNEGATEOPERATION_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TFPNEGATEOPERATION_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj3233
Lj3233:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3234
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-56(%ebp),%eax
	leal	-52(%ebp),%edx
	call	L_SYSUTILS_TRIMLEFT$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld26$non_lazy_ptr-Lj3233(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
Lj3234:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3235
	call	LFPC_RERAISE$stub
Lj3235:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPBOOLEANOPERATION_$__CHECK
_FPEXPRPARS_TFPBOOLEANOPERATION_$__CHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPBINARYOPERATION_$__CHECK$stub
	movl	$3,%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRNODE_$__CHECKNODETYPE$TFPEXPRNODE$TRESULTTYPES$stub
	movl	$3,%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRNODE_$__CHECKNODETYPE$TFPEXPRNODE$TRESULTTYPES$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPBINARYOPERATION_$__CHECKSAMENODETYPES$stub
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPBOOLEANOPERATION_$__NODETYPE$$TRESULTTYPE
_FPEXPRPARS_TFPBOOLEANOPERATION_$__NODETYPE$$TRESULTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPBINARYANDOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPBINARYANDOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj3276
Lj3276:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj3276(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj3277
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj3290
	decl	%eax
	je	Lj3291
	jmp	Lj3289
Lj3290:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	cmpb	$0,8(%eax)
	jne	Lj3294
	jmp	Lj3293
Lj3294:
	cmpb	$0,-16(%ebp)
	jne	Lj3292
	jmp	Lj3293
Lj3292:
	movb	$1,8(%edx)
	jmp	Lj3295
Lj3293:
	movb	$0,8(%edx)
Lj3295:
	jmp	Lj3288
Lj3291:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	12(%eax),%edx
	andl	-16(%ebp),%ecx
	andl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%ecx,8(%eax)
	movl	%edx,12(%eax)
	jmp	Lj3288
Lj3289:
Lj3288:
Lj3277:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj3276(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj3278
	call	LFPC_RERAISE$stub
Lj3278:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPBINARYANDOPERATION_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TFPBINARYANDOPERATION_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj3307
Lj3307:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3308
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-64(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	L_$FPEXPRPARS$_Ld28$non_lazy_ptr-Lj3307(%ebx),%eax
	movl	%eax,-56(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj3308:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3309
	call	LFPC_RERAISE$stub
Lj3309:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRNODE_$__CHECKNODETYPE$TFPEXPRNODE$TRESULTTYPES
_FPEXPRPARS_TFPEXPRNODE_$__CHECKNODETYPE$TFPEXPRNODE$TRESULTTYPES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj3326
Lj3326:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-92(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj3327
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj3330
	jmp	Lj3331
Lj3330:
	movl	L_RESSTR_FPEXPRPARS_SERRNONODETOCHECK$non_lazy_ptr-Lj3326(%ebx),%eax
	movl	4(%eax),%eax
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$stub
Lj3331:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	btl	%eax,-8(%ebp)
	jnc	Lj3334
	jmp	Lj3335
Lj3334:
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj3342:
	incl	-20(%ebp)
	movl	-20(%ebp),%eax
	btl	%eax,-8(%ebp)
	jc	Lj3343
	jmp	Lj3344
Lj3343:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3345
	jmp	Lj3346
Lj3345:
	movl	-16(%ebp),%edx
	leal	-16(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld30$non_lazy_ptr-Lj3326(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj3346:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_FPEXPRPARS_RESULTTYPENAME$TRESULTTYPE$$ANSISTRING$stub
	movl	-64(%ebp),%ecx
	movl	-16(%ebp),%edx
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj3344:
	cmpl	$4,-20(%ebp)
	jb	Lj3342
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	leal	-64(%ebp),%edx
	call	L_FPEXPRPARS_RESULTTYPENAME$TRESULTTYPE$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	%eax,-84(%ebp)
	movl	$11,-88(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$11,-80(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-92(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$11,-72(%ebp)
	leal	-88(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SINVALIDNODETYPE$non_lazy_ptr-Lj3326(%ebx),%eax
	movl	4(%eax),%eax
	movl	$2,%ecx
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub
Lj3335:
Lj3327:
	call	LFPC_POPADDRSTACK$stub
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj3328
	call	LFPC_RERAISE$stub
Lj3328:
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRNODE_$__NODEVALUE$$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPEXPRNODE_$__NODEVALUE$$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPBINARYOROPERATION_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TFPBINARYOROPERATION_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj3392
Lj3392:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3393
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-64(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	L_$FPEXPRPARS$_Ld32$non_lazy_ptr-Lj3392(%ebx),%eax
	movl	%eax,-56(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj3393:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3394
	call	LFPC_RERAISE$stub
Lj3394:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPBINARYOROPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPBINARYOROPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj3411
Lj3411:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj3411(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj3412
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj3425
	decl	%eax
	je	Lj3426
	jmp	Lj3424
Lj3425:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	cmpb	$0,8(%eax)
	jne	Lj3427
	jmp	Lj3429
Lj3429:
	cmpb	$0,-16(%ebp)
	jne	Lj3427
	jmp	Lj3428
Lj3427:
	movb	$1,8(%edx)
	jmp	Lj3430
Lj3428:
	movb	$0,8(%edx)
Lj3430:
	jmp	Lj3423
Lj3426:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	12(%eax),%edx
	orl	-16(%ebp),%ecx
	orl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%ecx,8(%eax)
	movl	%edx,12(%eax)
	jmp	Lj3423
Lj3424:
Lj3423:
Lj3412:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj3411(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj3413
	call	LFPC_RERAISE$stub
Lj3413:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPBINARYXOROPERATION_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TFPBINARYXOROPERATION_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj3442
Lj3442:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3443
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-64(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	L_$FPEXPRPARS$_Ld34$non_lazy_ptr-Lj3442(%ebx),%eax
	movl	%eax,-56(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj3443:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3444
	call	LFPC_RERAISE$stub
Lj3444:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPBINARYXOROPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPBINARYXOROPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj3461
Lj3461:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj3461(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj3462
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj3475
	decl	%eax
	je	Lj3476
	jmp	Lj3474
Lj3475:
	movl	-4(%ebp),%eax
	movb	8(%eax),%dl
	movb	-16(%ebp),%al
	xorb	%al,%dl
	movl	-4(%ebp),%eax
	movb	%dl,8(%eax)
	jmp	Lj3473
Lj3476:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	12(%eax),%eax
	xorl	-16(%ebp),%ecx
	xorl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%ecx,8(%edx)
	movl	%eax,12(%edx)
	jmp	Lj3473
Lj3474:
Lj3473:
Lj3462:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj3461(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj3463
	call	LFPC_RERAISE$stub
Lj3463:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPNOTNODE_$__CHECK
_FPEXPRPARS_TFPNOTNODE_$__CHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj3490
Lj3490:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj3491
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	cmpl	$2,%eax
	jb	Lj3498
Lj3498:
	jnc	Lj3494
	jmp	Lj3495
Lj3494:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	leal	-64(%ebp),%edx
	call	L_FPEXPRPARS_RESULTTYPENAME$TRESULTTYPE$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$11,-60(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-68(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	$11,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRNONOTOPERATION$non_lazy_ptr-Lj3490(%ebx),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub
Lj3495:
Lj3491:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj3492
	call	LFPC_RERAISE$stub
Lj3492:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPNOTNODE_$__NODETYPE$$TRESULTTYPE
_FPEXPRPARS_TFPNOTNODE_$__NODETYPE$$TRESULTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPNOTNODE_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPNOTNODE_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj3530
	decl	%eax
	je	Lj3529
	jmp	Lj3528
Lj3529:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	12(%eax),%edx
	notl	%edx
	notl	%ecx
	movl	-4(%ebp),%eax
	movl	%ecx,8(%eax)
	movl	%edx,12(%eax)
	jmp	Lj3527
Lj3530:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	testb	%al,%al
	seteb	8(%edx)
	jmp	Lj3527
Lj3528:
Lj3527:
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPNOTNODE_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TFPNOTNODE_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj3536
Lj3536:
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
	jne	Lj3537
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-52(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld36$non_lazy_ptr-Lj3536(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
Lj3537:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3538
	call	LFPC_RERAISE$stub
Lj3538:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TIFOPERATION_$__CREATE$TFPEXPRNODE$TFPEXPRNODE$TFPEXPRNODE$$TIFOPERATION
_FPEXPRPARS_TIFOPERATION_$__CREATE$TFPEXPRNODE$TFPEXPRNODE$TFPEXPRNODE$$TIFOPERATION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj3552
	jmp	Lj3553
Lj3552:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj3553:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3558
	jmp	Lj3559
Lj3558:
	jmp	Lj3550
Lj3559:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3562
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3566
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPEXPRPARS_TFPBINARYOPERATION_$__CREATE$TFPEXPRNODE$TFPEXPRNODE$$TFPBINARYOPERATION$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,12(%edx)
Lj3566:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3567
	call	LFPC_RERAISE$stub
Lj3567:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3581
	jmp	Lj3580
Lj3581:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3579
	jmp	Lj3580
Lj3579:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3580:
Lj3562:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3564
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3585
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3586
	jmp	Lj3587
Lj3586:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3587:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3585:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3584
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3584:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3564
Lj3564:
Lj3550:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TIFOPERATION_$__DESTROY
_FPEXPRPARS_TIFOPERATION_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3594
	jmp	Lj3595
Lj3594:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj3595:
	movl	-8(%ebp),%eax
	leal	12(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3606
	jmp	Lj3605
Lj3606:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3604
	jmp	Lj3605
Lj3604:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj3605:
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TIFOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TIFOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	12(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%eax
	cmpb	$0,8(%eax)
	jne	Lj3615
	jmp	Lj3616
Lj3615:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj3621
Lj3616:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
Lj3621:
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TIFOPERATION_$__CHECK
_FPEXPRPARS_TIFOPERATION_$__CHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj3627
Lj3627:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj3628
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPBINARYOPERATION_$__CHECK$stub
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	movl	12(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	testl	%eax,%eax
	jne	Lj3633
	jmp	Lj3634
Lj3633:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	12(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-56(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	$11,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRIFNEEDSBOOLEAN$non_lazy_ptr-Lj3627(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub
Lj3634:
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPBINARYOPERATION_$__CHECKSAMENODETYPES$stub
Lj3628:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj3629
	call	LFPC_RERAISE$stub
Lj3629:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TIFOPERATION_$__NODETYPE$$TRESULTTYPE
_FPEXPRPARS_TIFOPERATION_$__NODETYPE$$TRESULTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TIFOPERATION_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TIFOPERATION_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	call	Lj3656
Lj3656:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-84(%ebp)
	movl	$0,-80(%ebp)
	movl	$0,-76(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3657
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	leal	-76(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	12(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-76(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$11,-72(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-80(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$11,-64(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-84(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-84(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	$11,-56(%ebp)
	leal	-72(%ebp),%edx
	movl	$2,%ecx
	movl	L_$FPEXPRPARS$_Ld38$non_lazy_ptr-Lj3656(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
Lj3657:
	call	LFPC_POPADDRSTACK$stub
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3658
	call	LFPC_RERAISE$stub
Lj3658:
	movl	-88(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TCASEOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TCASEOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	call	Lj3681
Lj3681:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj3681(%ebx),%edx
	leal	-36(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj3681(%ebx),%edx
	leal	-52(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3682
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	leal	-36(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,-16(%ebp)
	movl	$2,-12(%ebp)
	movb	$0,-17(%ebp)
	jmp	Lj3698
	.align 2
Lj3697:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	leal	-52(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%esi
	movl	-12(%ebp),%ecx
	movl	(%esi,%ecx,4),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj3706
	decl	%eax
	je	Lj3707
	decl	%eax
	je	Lj3708
	decl	%eax
	je	Lj3709
	decl	%eax
	je	Lj3710
	jmp	Lj3705
Lj3706:
	movb	-28(%ebp),%al
	cmpb	-44(%ebp),%al
	seteb	-17(%ebp)
	jmp	Lj3704
Lj3707:
	movl	-28(%ebp),%edx
	movl	-24(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jne	Lj3714
	cmpl	-44(%ebp),%edx
	jne	Lj3714
	jmp	Lj3713
	jmp	Lj3714
Lj3713:
	movb	$1,-17(%ebp)
	jmp	Lj3715
Lj3714:
	movb	$0,-17(%ebp)
Lj3715:
	jmp	Lj3704
Lj3708:
	fldl	-44(%ebp)
	fldl	-28(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	seteb	-17(%ebp)
	jmp	Lj3704
Lj3709:
	fldl	-44(%ebp)
	fldl	-28(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	seteb	-17(%ebp)
	jmp	Lj3704
Lj3710:
	movl	-52(%ebp),%edx
	movl	-36(%ebp),%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	seteb	-17(%ebp)
	jmp	Lj3704
Lj3705:
Lj3704:
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj3726
	jmp	Lj3727
Lj3726:
	addl	$2,-12(%ebp)
Lj3727:
Lj3698:
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj3728
	jmp	Lj3699
Lj3728:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jl	Lj3697
	jmp	Lj3699
Lj3699:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
	cmpb	$0,-17(%ebp)
	jne	Lj3733
	jmp	Lj3734
Lj3733:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	incl	%eax
	movl	(%edx,%eax,4),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%esi
	movl	-12(%ebp),%ecx
	incl	%ecx
	movl	(%esi,%ecx,4),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj3739
Lj3734:
	movl	-16(%ebp),%eax
	cltd
	movl	$2,%ecx
	idivl	%ecx
	testl	%edx,%edx
	je	Lj3740
	jmp	Lj3741
Lj3740:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
Lj3741:
Lj3739:
Lj3682:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj3681(%ebx),%edx
	leal	-36(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj3681(%ebx),%edx
	leal	-52(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3683
	call	LFPC_RERAISE$stub
Lj3683:
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TCASEOPERATION_$__CHECK
_FPEXPRPARS_TCASEOPERATION_$__CHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-128(%ebp)
	movl	%esi,-124(%ebp)
	call	Lj3763
Lj3763:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	$0,-120(%ebp)
	movl	$0,-116(%ebp)
	movl	$0,-80(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj3764
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	Lfpc_dynarray_length$stub
	cmpl	$3,%eax
	jl	Lj3767
	jmp	Lj3768
Lj3767:
	movl	L_RESSTR_FPEXPRPARS_SERRCASENEEDS3$non_lazy_ptr-Lj3763(%esi),%eax
	movl	4(%eax),%eax
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$stub
Lj3768:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	Lfpc_dynarray_length$stub
	cltd
	movl	$2,%ecx
	idivl	%ecx
	cmpl	$1,%edx
	je	Lj3773
	jmp	Lj3774
Lj3773:
	movl	L_RESSTR_FPEXPRPARS_SERRCASEEVENCOUNT$non_lazy_ptr-Lj3763(%esi),%eax
	movl	4(%eax),%eax
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$stub
Lj3774:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	Lfpc_dynarray_length$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$2,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj3788
	decl	-16(%ebp)
	.align 2
Lj3789:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	cltd
	movl	$2,%ecx
	idivl	%ecx
	testl	%edx,%edx
	je	Lj3794
	jmp	Lj3795
Lj3794:
	movl	-20(%ebp),%edx
	movl	L_VMT_FPEXPRPARS_TFPCONSTEXPRESSION$non_lazy_ptr-Lj3763(%esi),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	je	Lj3796
	jmp	Lj3797
Lj3796:
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	movl	%edx,-72(%ebp)
	movl	$0,-76(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-80(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$11,-68(%ebp)
	leal	-76(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRCASELABELNOTACONST$non_lazy_ptr-Lj3763(%esi),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub
Lj3797:
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	cmpl	-8(%ebp),%eax
	jne	Lj3812
	jmp	Lj3813
Lj3812:
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	movl	%edx,-108(%ebp)
	movl	$0,-112(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-80(%ebp),%eax
	movl	%eax,-100(%ebp)
	movl	$11,-104(%ebp)
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-116(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_RESULTTYPENAME$TRESULTTYPE$$ANSISTRING$stub
	movl	-116(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$11,-96(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	leal	-120(%ebp),%edx
	call	L_FPEXPRPARS_RESULTTYPENAME$TRESULTTYPE$$ANSISTRING$stub
	movl	-120(%ebp),%eax
	movl	%eax,-84(%ebp)
	movl	$11,-88(%ebp)
	leal	-112(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRCASELABELTYPE$non_lazy_ptr-Lj3763(%esi),%eax
	movl	4(%eax),%eax
	movl	$3,%ecx
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub
Lj3813:
	jmp	Lj3836
Lj3795:
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	cmpl	-12(%ebp),%eax
	jne	Lj3837
	jmp	Lj3838
Lj3837:
	movl	-16(%ebp),%eax
	decl	%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-108(%ebp)
	movl	$0,-112(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-120(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-120(%ebp),%eax
	movl	%eax,-100(%ebp)
	movl	$11,-104(%ebp)
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-116(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPEXPRPARS_RESULTTYPENAME$TRESULTTYPE$$ANSISTRING$stub
	movl	-116(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$11,-96(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	leal	-80(%ebp),%edx
	call	L_FPEXPRPARS_RESULTTYPENAME$TRESULTTYPE$$ANSISTRING$stub
	movl	-80(%ebp),%eax
	movl	%eax,-84(%ebp)
	movl	$11,-88(%ebp)
	leal	-112(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRCASEVALUETYPE$non_lazy_ptr-Lj3763(%esi),%eax
	movl	4(%eax),%eax
	movl	$3,%ecx
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub
Lj3838:
Lj3836:
	cmpl	-16(%ebp),%ebx
	jg	Lj3789
Lj3788:
Lj3764:
	call	LFPC_POPADDRSTACK$stub
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj3765
	call	LFPC_RERAISE$stub
Lj3765:
	movl	-128(%ebp),%ebx
	movl	-124(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TCASEOPERATION_$__NODETYPE$$TRESULTTYPE
_FPEXPRPARS_TCASEOPERATION_$__NODETYPE$$TRESULTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TCASEOPERATION_$__CREATE$TEXPRARGUMENTARRAY$$TCASEOPERATION
_FPEXPRPARS_TCASEOPERATION_$__CREATE$TEXPRARGUMENTARRAY$$TCASEOPERATION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	call	Lj3868
Lj3868:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_DYNARRAY_INCR_REF$stub
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj3869
	jmp	Lj3870
Lj3869:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj3870:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3875
	jmp	Lj3876
Lj3875:
	jmp	Lj3867
Lj3876:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3879
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj3883
	movl	8(%ebp),%eax
	call	LFPC_DYNARRAY_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	L_INIT_FPEXPRPARS_TEXPRARGUMENTARRAY$non_lazy_ptr-Lj3868(%ebx),%edx
	leal	4(%esi),%eax
	call	LFPC_DYNARRAY_DECR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,4(%esi)
Lj3883:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_FPEXPRPARS_TEXPRARGUMENTARRAY$non_lazy_ptr-Lj3868(%ebx),%edx
	leal	8(%ebp),%eax
	call	LFPC_DYNARRAY_DECR_REF$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj3884
	call	LFPC_RERAISE$stub
Lj3884:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3890
	jmp	Lj3889
Lj3890:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3888
	jmp	Lj3889
Lj3888:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3889:
Lj3879:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3881
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj3894
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3895
	jmp	Lj3896
Lj3895:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3896:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3894:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj3893
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3893:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3881
Lj3881:
Lj3867:
	movl	-8(%ebp),%eax
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TCASEOPERATION_$__DESTROY
_FPEXPRPARS_TCASEOPERATION_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3903
	jmp	Lj3904
Lj3903:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj3904:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj3908
	decl	-12(%ebp)
	.align 2
Lj3909:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	leal	(%edx,%eax,4),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj3909
Lj3908:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3920
	jmp	Lj3919
Lj3920:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3918
	jmp	Lj3919
Lj3918:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj3919:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TCASEOPERATION_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TCASEOPERATION_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	call	Lj3924
Lj3924:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3925
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	Lfpc_dynarray_length$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj3931
	decl	-12(%ebp)
	.align 2
Lj3932:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj3935
	jmp	Lj3936
Lj3935:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld40$non_lazy_ptr-Lj3924(%esi),%ecx
	call	Lfpc_ansistr_concat$stub
Lj3936:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	-12(%ebp),%edi
	movl	(%ecx,%edi,4),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-56(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj3932
Lj3931:
	movl	L_$FPEXPRPARS$_Ld42$non_lazy_ptr-Lj3924(%esi),%eax
	movl	%eax,-68(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	L_$FPEXPRPARS$_Ld44$non_lazy_ptr-Lj3924(%esi),%eax
	movl	%eax,-60(%ebp)
	leal	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj3925:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3926
	call	LFPC_RERAISE$stub
Lj3926:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPBOOLEANRESULTOPERATION_$__CHECK
_FPEXPRPARS_TFPBOOLEANRESULTOPERATION_$__CHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPBINARYOPERATION_$__CHECK$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPBINARYOPERATION_$__CHECKSAMENODETYPES$stub
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPBOOLEANRESULTOPERATION_$__NODETYPE$$TRESULTTYPE
_FPEXPRPARS_TFPBOOLEANRESULTOPERATION_$__NODETYPE$$TRESULTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEQUALOPERATION_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TFPEQUALOPERATION_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj3970
Lj3970:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3971
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-64(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	L_$FPEXPRPARS$_Ld46$non_lazy_ptr-Lj3970(%ebx),%eax
	movl	%eax,-56(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj3971:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3972
	call	LFPC_RERAISE$stub
Lj3972:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEQUALOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPEQUALOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj3989
Lj3989:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj3989(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj3990
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj4003
	decl	%eax
	je	Lj4004
	decl	%eax
	je	Lj4005
	decl	%eax
	je	Lj4006
	decl	%eax
	je	Lj4007
	jmp	Lj4002
Lj4003:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	cmpb	-16(%ebp),%al
	seteb	8(%edx)
	jmp	Lj4001
Lj4004:
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	12(%eax),%eax
	cmpl	-12(%ebp),%eax
	jne	Lj4011
	cmpl	-16(%ebp),%edx
	jne	Lj4011
	jmp	Lj4010
	jmp	Lj4011
Lj4010:
	movb	$1,8(%ecx)
	jmp	Lj4012
Lj4011:
	movb	$0,8(%ecx)
Lj4012:
	jmp	Lj4001
Lj4005:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	-16(%ebp)
	fldl	8(%eax)
	fcompp
	fnstsw	%ax
	sahf
	seteb	8(%edx)
	jmp	Lj4001
Lj4006:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	-16(%ebp)
	fldl	8(%eax)
	fcompp
	fnstsw	%ax
	sahf
	seteb	8(%edx)
	jmp	Lj4001
Lj4007:
	movl	-4(%ebp),%esi
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	seteb	8(%esi)
	jmp	Lj4001
Lj4002:
Lj4001:
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
Lj3990:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj3989(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj3991
	call	LFPC_RERAISE$stub
Lj3991:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPUNEQUALOPERATION_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TFPUNEQUALOPERATION_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj4034
Lj4034:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj4035
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-64(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	L_$FPEXPRPARS$_Ld48$non_lazy_ptr-Lj4034(%ebx),%eax
	movl	%eax,-56(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj4035:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj4036
	call	LFPC_RERAISE$stub
Lj4036:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPUNEQUALOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPUNEQUALOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPEQUALOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT$stub
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	testb	%al,%al
	seteb	8(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPLESSTHANOPERATION_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TFPLESSTHANOPERATION_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj4061
Lj4061:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj4062
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-64(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	L_$FPEXPRPARS$_Ld50$non_lazy_ptr-Lj4061(%ebx),%eax
	movl	%eax,-56(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj4062:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj4063
	call	LFPC_RERAISE$stub
Lj4063:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPLESSTHANOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPLESSTHANOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj4080
Lj4080:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj4080(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj4081
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$1,%eax
	jb	Lj4093
	decl	%eax
	je	Lj4094
	decl	%eax
	je	Lj4095
	decl	%eax
	je	Lj4096
	decl	%eax
	je	Lj4097
	jmp	Lj4093
Lj4094:
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	12(%eax),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj4098
	jg	Lj4099
	cmpl	-16(%ebp),%edx
	jb	Lj4098
	jmp	Lj4099
	jmp	Lj4099
Lj4098:
	movb	$1,8(%ecx)
	jmp	Lj4100
Lj4099:
	movb	$0,8(%ecx)
Lj4100:
	jmp	Lj4092
Lj4095:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	-16(%ebp)
	fldl	8(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setbb	8(%edx)
	jmp	Lj4092
Lj4096:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	-16(%ebp)
	fldl	8(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setbb	8(%edx)
	jmp	Lj4092
Lj4097:
	movl	-4(%ebp),%esi
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	Lfpc_ansistr_compare$stub
	cmpl	$0,%eax
	setlb	8(%esi)
	jmp	Lj4092
Lj4093:
Lj4092:
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
Lj4081:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj4080(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj4082
	call	LFPC_RERAISE$stub
Lj4082:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPGREATERTHANOPERATION_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TFPGREATERTHANOPERATION_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj4122
Lj4122:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj4123
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-64(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	L_$FPEXPRPARS$_Ld52$non_lazy_ptr-Lj4122(%ebx),%eax
	movl	%eax,-56(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj4123:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj4124
	call	LFPC_RERAISE$stub
Lj4124:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPGREATERTHANOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPGREATERTHANOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj4141
Lj4141:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj4141(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj4142
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$1,%eax
	jb	Lj4154
	decl	%eax
	je	Lj4155
	decl	%eax
	je	Lj4156
	decl	%eax
	je	Lj4157
	decl	%eax
	je	Lj4158
	jmp	Lj4154
Lj4155:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	cmpl	$1,%eax
	jb	Lj4160
	decl	%eax
	je	Lj4161
	decl	%eax
	je	Lj4162
	jmp	Lj4160
Lj4161:
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	12(%eax),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj4165
	jl	Lj4166
	cmpl	-16(%ebp),%edx
	ja	Lj4165
	jmp	Lj4166
	jmp	Lj4166
Lj4165:
	movb	$1,8(%ecx)
	jmp	Lj4167
Lj4166:
	movb	$0,8(%ecx)
Lj4167:
	jmp	Lj4159
Lj4162:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fildq	8(%eax)
	fldl	-16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	setbb	8(%edx)
	jmp	Lj4159
Lj4160:
Lj4159:
	jmp	Lj4153
Lj4156:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	cmpl	$1,%eax
	jb	Lj4171
	decl	%eax
	je	Lj4172
	decl	%eax
	je	Lj4173
	jmp	Lj4171
Lj4172:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fildq	-16(%ebp)
	fldl	8(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setab	8(%edx)
	jmp	Lj4170
Lj4173:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	-16(%ebp)
	fldl	8(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setab	8(%edx)
	jmp	Lj4170
Lj4171:
Lj4170:
	jmp	Lj4153
Lj4157:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	-16(%ebp)
	fldl	8(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setab	8(%edx)
	jmp	Lj4153
Lj4158:
	movl	-4(%ebp),%esi
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	Lfpc_ansistr_compare$stub
	cmpl	$0,%eax
	setgb	8(%esi)
	jmp	Lj4153
Lj4154:
Lj4153:
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
Lj4142:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj4141(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj4143
	call	LFPC_RERAISE$stub
Lj4143:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPGREATERTHANEQUALOPERATION_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TFPGREATERTHANEQUALOPERATION_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj4199
Lj4199:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj4200
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-64(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	L_$FPEXPRPARS$_Ld54$non_lazy_ptr-Lj4199(%ebx),%eax
	movl	%eax,-56(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj4200:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj4201
	call	LFPC_RERAISE$stub
Lj4201:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPGREATERTHANEQUALOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPGREATERTHANEQUALOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPLESSTHANOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT$stub
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	testb	%al,%al
	seteb	8(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPLESSTHANEQUALOPERATION_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TFPLESSTHANEQUALOPERATION_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj4226
Lj4226:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj4227
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-64(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	L_$FPEXPRPARS$_Ld56$non_lazy_ptr-Lj4226(%ebx),%eax
	movl	%eax,-56(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj4227:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj4228
	call	LFPC_RERAISE$stub
Lj4228:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPLESSTHANEQUALOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPLESSTHANEQUALOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPGREATERTHANOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT$stub
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	testb	%al,%al
	seteb	8(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPORDERINGOPERATION_$__CHECK
_FPEXPRPARS_TFPORDERINGOPERATION_$__CHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$30,%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRNODE_$__CHECKNODETYPE$TFPEXPRNODE$TRESULTTYPES$stub
	movl	$30,%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRNODE_$__CHECKNODETYPE$TFPEXPRNODE$TRESULTTYPES$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPBOOLEANRESULTOPERATION_$__CHECK$stub
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TMATHOPERATION_$__CHECK
_FPEXPRPARS_TMATHOPERATION_$__CHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPBINARYOPERATION_$__CHECK$stub
	movl	$30,%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRNODE_$__CHECKNODETYPE$TFPEXPRNODE$TRESULTTYPES$stub
	movl	$30,%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRNODE_$__CHECKNODETYPE$TFPEXPRNODE$TRESULTTYPES$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPBINARYOPERATION_$__CHECKSAMENODETYPES$stub
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TMATHOPERATION_$__NODETYPE$$TRESULTTYPE
_FPEXPRPARS_TMATHOPERATION_$__NODETYPE$$TRESULTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPADDOPERATION_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TFPADDOPERATION_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj4293
Lj4293:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj4294
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-64(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	L_$FPEXPRPARS$_Ld58$non_lazy_ptr-Lj4293(%ebx),%eax
	movl	%eax,-56(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj4294:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj4295
	call	LFPC_RERAISE$stub
Lj4295:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPADDOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPADDOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj4312
Lj4312:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj4312(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj4313
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$1,%eax
	jb	Lj4325
	decl	%eax
	je	Lj4326
	decl	%eax
	je	Lj4329
	decl	%eax
	je	Lj4328
	decl	%eax
	je	Lj4327
	jmp	Lj4325
Lj4326:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	12(%eax),%edx
	addl	-16(%ebp),%ecx
	adcl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%ecx,8(%eax)
	movl	%edx,12(%eax)
	jmp	Lj4324
Lj4327:
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	jmp	Lj4324
Lj4328:
	movl	-4(%ebp),%eax
	fldl	-16(%ebp)
	fldl	8(%eax)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	jmp	Lj4324
Lj4329:
	movl	-4(%ebp),%eax
	fldl	-16(%ebp)
	fldl	8(%eax)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	jmp	Lj4324
Lj4325:
Lj4324:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
Lj4313:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj4312(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj4314
	call	LFPC_RERAISE$stub
Lj4314:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPSUBTRACTOPERATION_$__CHECK
_FPEXPRPARS_TFPSUBTRACTOPERATION_$__CHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$14,%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRNODE_$__CHECKNODETYPE$TFPEXPRNODE$TRESULTTYPES$stub
	movl	$14,%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRNODE_$__CHECKNODETYPE$TFPEXPRNODE$TRESULTTYPES$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TMATHOPERATION_$__CHECK$stub
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPSUBTRACTOPERATION_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TFPSUBTRACTOPERATION_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj4371
Lj4371:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj4372
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-64(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	L_$FPEXPRPARS$_Ld60$non_lazy_ptr-Lj4371(%ebx),%eax
	movl	%eax,-56(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj4372:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj4373
	call	LFPC_RERAISE$stub
Lj4373:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPSUBTRACTOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPSUBTRACTOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj4390
Lj4390:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj4390(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj4391
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$1,%eax
	jb	Lj4403
	decl	%eax
	je	Lj4404
	decl	%eax
	je	Lj4406
	decl	%eax
	je	Lj4405
	jmp	Lj4403
Lj4404:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	12(%eax),%edx
	subl	-16(%ebp),%ecx
	sbbl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%ecx,8(%eax)
	movl	%edx,12(%eax)
	jmp	Lj4402
Lj4405:
	movl	-4(%ebp),%eax
	fldl	-16(%ebp)
	fldl	8(%eax)
	fsubp	%st,%st(1)
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	jmp	Lj4402
Lj4406:
	movl	-4(%ebp),%eax
	fldl	-16(%ebp)
	fldl	8(%eax)
	fsubp	%st,%st(1)
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	jmp	Lj4402
Lj4403:
Lj4402:
Lj4391:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj4390(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj4392
	call	LFPC_RERAISE$stub
Lj4392:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPMULTIPLYOPERATION_$__CHECK
_FPEXPRPARS_TFPMULTIPLYOPERATION_$__CHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$6,%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRNODE_$__CHECKNODETYPE$TFPEXPRNODE$TRESULTTYPES$stub
	movl	$6,%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRNODE_$__CHECKNODETYPE$TFPEXPRNODE$TRESULTTYPES$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TMATHOPERATION_$__CHECK$stub
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPMULTIPLYOPERATION_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TFPMULTIPLYOPERATION_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj4438
Lj4438:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj4439
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-64(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	L_$FPEXPRPARS$_Ld62$non_lazy_ptr-Lj4438(%ebx),%eax
	movl	%eax,-56(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj4439:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj4440
	call	LFPC_RERAISE$stub
Lj4440:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPMULTIPLYOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPMULTIPLYOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	call	Lj4457
Lj4457:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj4457(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj4458
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$1,%eax
	jb	Lj4470
	decl	%eax
	je	Lj4471
	decl	%eax
	je	Lj4472
	jmp	Lj4470
Lj4471:
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	12(%edx),%eax
	movl	%eax,12(%esp)
	movl	8(%edx),%eax
	movl	%eax,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	-4(%ebp),%ecx
	movl	%eax,8(%ecx)
	movl	%edx,12(%ecx)
	jmp	Lj4469
Lj4472:
	movl	-4(%ebp),%eax
	fldl	-16(%ebp)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	jmp	Lj4469
Lj4470:
Lj4469:
Lj4458:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj4457(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj4459
	call	LFPC_RERAISE$stub
Lj4459:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPDIVIDEOPERATION_$__CHECK
_FPEXPRPARS_TFPDIVIDEOPERATION_$__CHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$6,%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRNODE_$__CHECKNODETYPE$TFPEXPRNODE$TRESULTTYPES$stub
	movl	$6,%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRNODE_$__CHECKNODETYPE$TFPEXPRNODE$TRESULTTYPES$stub
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TMATHOPERATION_$__CHECK$stub
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPDIVIDEOPERATION_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TFPDIVIDEOPERATION_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj4508
Lj4508:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj4509
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-64(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	L_$FPEXPRPARS$_Ld64$non_lazy_ptr-Lj4508(%ebx),%eax
	movl	%eax,-56(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj4509:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj4510
	call	LFPC_RERAISE$stub
Lj4510:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPDIVIDEOPERATION_$__NODETYPE$$TRESULTTYPE
_FPEXPRPARS_TFPDIVIDEOPERATION_$__NODETYPE$$TRESULTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$2,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPDIVIDEOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPDIVIDEOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj4531
Lj4531:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj4531(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj4532
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$1,%eax
	jb	Lj4544
	decl	%eax
	je	Lj4545
	decl	%eax
	je	Lj4546
	jmp	Lj4544
Lj4545:
	movl	-4(%ebp),%eax
	fildq	8(%eax)
	fildq	-16(%ebp)
	fdivrp	%st,%st(1)
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	jmp	Lj4543
Lj4546:
	movl	-4(%ebp),%eax
	fldl	-16(%ebp)
	fldl	8(%eax)
	fdivp	%st,%st(1)
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	jmp	Lj4543
Lj4544:
Lj4543:
	movl	-4(%ebp),%eax
	movl	$2,4(%eax)
Lj4532:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj4531(%ebx),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj4533
	call	LFPC_RERAISE$stub
Lj4533:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPCONVERTNODE_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TFPCONVERTNODE_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TINTCONVERTNODE_$__CHECK
_FPEXPRPARS_TINTCONVERTNODE_$__CHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPUNARYOPERATOR_$__CHECK$stub
	movl	$2,%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRNODE_$__CHECKNODETYPE$TFPEXPRNODE$TRESULTTYPES$stub
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TINTTOFLOATNODE_$__NODETYPE$$TRESULTTYPE
_FPEXPRPARS_TINTTOFLOATNODE_$__NODETYPE$$TRESULTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$2,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TINTTOFLOATNODE_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TINTTOFLOATNODE_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%eax
	fildq	8(%eax)
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movl	$2,4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TINTTODATETIMENODE_$__NODETYPE$$TRESULTTYPE
_FPEXPRPARS_TINTTODATETIMENODE_$__NODETYPE$$TRESULTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$3,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TINTTODATETIMENODE_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TINTTODATETIMENODE_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%eax
	fildq	8(%eax)
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movl	$3,4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFLOATTODATETIMENODE_$__CHECK
_FPEXPRPARS_TFLOATTODATETIMENODE_$__CHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPUNARYOPERATOR_$__CHECK$stub
	movl	$4,%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRNODE_$__CHECKNODETYPE$TFPEXPRNODE$TRESULTTYPES$stub
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFLOATTODATETIMENODE_$__NODETYPE$$TRESULTTYPE
_FPEXPRPARS_TFLOATTODATETIMENODE_$__NODETYPE$$TRESULTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$3,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFLOATTODATETIMENODE_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFLOATTODATETIMENODE_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,8(%ecx)
	movl	12(%eax),%eax
	movl	%eax,12(%ecx)
	movl	-4(%ebp),%eax
	movl	$3,4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERNODE_$__CREATEIDENTIFIER$TFPEXPRIDENTIFIERDEF$$TFPEXPRIDENTIFIERNODE
_FPEXPRPARS_TFPEXPRIDENTIFIERNODE_$__CREATEIDENTIFIER$TFPEXPRIDENTIFIERDEF$$TFPEXPRIDENTIFIERNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj4631
	jmp	Lj4632
Lj4631:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj4632:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4637
	jmp	Lj4638
Lj4637:
	jmp	Lj4629
Lj4638:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj4641
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4645
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	leal	28(%eax),%edx
	movl	-12(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__GETRESULTTYPE$$TRESULTTYPE$stub
	movl	-12(%ebp),%edx
	movl	%eax,12(%edx)
Lj4645:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4646
	call	LFPC_RERAISE$stub
Lj4646:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4662
	jmp	Lj4661
Lj4662:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4660
	jmp	Lj4661
Lj4660:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj4661:
Lj4641:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj4643
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4666
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4667
	jmp	Lj4668
Lj4667:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj4668:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj4666:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4665
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4665:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4643
Lj4643:
Lj4629:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERNODE_$__NODETYPE$$TRESULTTYPE
_FPEXPRPARS_TFPEXPRIDENTIFIERNODE_$__NODETYPE$$TRESULTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRIDENTIFIERNODE_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPEXPRIDENTIFIERNODE_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj4678
Lj4678:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj4678(%esi),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	8(%edx),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	Lfpc_copy_proc$stub
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	12(%eax),%eax
	movl	%eax,4(%edx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRVARIABLE_$__CHECK
_FPEXPRPARS_TFPEXPRVARIABLE_$__CHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRVARIABLE_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TFPEXPRVARIABLE_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	52(%eax),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRFUNCTION_$__CALCPARAMS
_FPEXPRPARS_TFPEXPRFUNCTION_$__CALCPARAMS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj4698
	decl	-8(%ebp)
	.align 2
Lj4699:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-8(%ebp),%eax
	shll	$4,%eax
	leal	(%edx,%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	(%eax,%ecx,4),%eax
	movl	-4(%ebp),%ecx
	movl	16(%ecx),%esi
	movl	-8(%ebp),%ecx
	movl	(%esi,%ecx,4),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	cmpl	-8(%ebp),%ebx
	jg	Lj4699
Lj4698:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRFUNCTION_$__CHECK
_FPEXPRPARS_TFPEXPRFUNCTION_$__CHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-108(%ebp)
	movl	%esi,-104(%ebp)
	movl	%edi,-100(%ebp)
	call	Lj4707
Lj4707:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	$0,-96(%ebp)
	movl	$0,-92(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj4708
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,%ebx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__ARGUMENTCOUNT$$LONGINT$stub
	cmpl	%eax,%ebx
	jne	Lj4711
	jmp	Lj4712
Lj4711:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	52(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	$4,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_ERRINVALIDARGUMENTCOUNT$non_lazy_ptr-Lj4707(%esi),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub
Lj4712:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj4724
	decl	-8(%ebp)
	.align 2
Lj4725:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	44(%eax),%edx
	movl	-8(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	call	L_FPEXPRPARS_CHARTORESULTTYPE$CHAR$$TRESULTTYPE$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%ecx
	movl	-8(%ebp),%edx
	movl	(%ecx,%edx,4),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jne	Lj4736
	jmp	Lj4737
Lj4736:
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	je	Lj4740
	jmp	Lj4739
Lj4740:
	movl	-12(%ebp),%eax
	cmpl	$2,%eax
	je	Lj4738
	jmp	Lj4739
Lj4738:
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	16(%eax),%edi
	movl	-8(%ebp),%eax
	movl	(%edi,%eax,4),%eax
	movl	%eax,(%edx,%ecx,4)
	jmp	Lj4708
Lj4739:
	movl	-8(%ebp),%eax
	incl	%eax
	movl	%eax,-84(%ebp)
	movl	$0,-88(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPEXPRPARS_RESULTTYPENAME$TRESULTTYPE$$ANSISTRING$stub
	movl	-92(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$11,-80(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPEXPRPARS_RESULTTYPENAME$TRESULTTYPE$$ANSISTRING$stub
	movl	-96(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$11,-72(%ebp)
	leal	-88(%ebp),%edx
	movl	L_RESSTR_FPEXPRPARS_SERRINVALIDARGUMENTTYPE$non_lazy_ptr-Lj4707(%esi),%eax
	movl	4(%eax),%eax
	movl	$2,%ecx
	call	L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub
Lj4737:
	cmpl	-8(%ebp),%ebx
	jg	Lj4725
Lj4724:
Lj4708:
	call	LFPC_POPADDRSTACK$stub
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj4709
	call	LFPC_RERAISE$stub
Lj4709:
	movl	-108(%ebp),%ebx
	movl	-104(%ebp),%esi
	movl	-100(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRFUNCTION_$__CREATEFUNCTION$crc6370B387
_FPEXPRPARS_TFPEXPRFUNCTION_$__CREATEFUNCTION$crc6370B387:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	call	Lj4758
Lj4758:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj4759
	jmp	Lj4760
Lj4759:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj4760:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4765
	jmp	Lj4766
Lj4765:
	jmp	Lj4757
Lj4766:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj4769
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4773
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERNODE_$__CREATEIDENTIFIER$TFPEXPRIDENTIFIERDEF$$TFPEXPRIDENTIFIERNODE$stub
	movl	8(%ebp),%eax
	call	LFPC_DYNARRAY_INCR_REF$stub
	movl	-12(%ebp),%esi
	movl	L_INIT_FPEXPRPARS_TEXPRARGUMENTARRAY$non_lazy_ptr-Lj4758(%ebx),%edx
	leal	16(%esi),%eax
	call	LFPC_DYNARRAY_DECR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,16(%esi)
	movl	8(%ebp),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,-96(%ebp)
	leal	-96(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_FPEXPRPARS_TEXPRPARAMETERARRAY$non_lazy_ptr-Lj4758(%ebx),%edx
	movl	-12(%ebp),%eax
	leal	20(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
Lj4773:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4774
	call	LFPC_RERAISE$stub
Lj4774:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4798
	jmp	Lj4797
Lj4798:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4796
	jmp	Lj4797
Lj4796:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj4797:
Lj4769:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj4771
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4802
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4803
	jmp	Lj4804
Lj4803:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj4804:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj4802:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4801
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4801:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4771
Lj4771:
Lj4757:
	movl	-12(%ebp),%eax
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRFUNCTION_$__DESTROY
_FPEXPRPARS_TFPEXPRFUNCTION_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj4811
	jmp	Lj4812
Lj4811:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj4812:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj4816
	decl	-12(%ebp)
	.align 2
Lj4817:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%eax
	leal	(%edx,%eax,4),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj4817
Lj4816:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4828
	jmp	Lj4827
Lj4828:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4826
	jmp	Lj4827
Lj4826:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj4827:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPEXPRFUNCTION_$__ASSTRING$$ANSISTRING
_FPEXPRPARS_TFPEXPRFUNCTION_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-84(%ebp)
	movl	%esi,-80(%ebp)
	movl	%edi,-76(%ebp)
	call	Lj4832
Lj4832:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj4833
	leal	-12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	call	Lfpc_dynarray_length$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj4839
	decl	-16(%ebp)
	.align 2
Lj4840:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4843
	jmp	Lj4844
Lj4843:
	movl	-12(%ebp),%edx
	leal	-12(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld30$non_lazy_ptr-Lj4832(%esi),%ecx
	call	Lfpc_ansistr_concat$stub
Lj4844:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	16(%ecx),%edi
	movl	-16(%ebp),%ecx
	movl	(%edi,%ecx,4),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-60(%ebp),%ecx
	movl	-12(%ebp),%edx
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj4840
Lj4839:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4861
	jmp	Lj4862
Lj4861:
	movl	L_$FPEXPRPARS$_Ld66$non_lazy_ptr-Lj4832(%esi),%eax
	movl	%eax,-72(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	L_$FPEXPRPARS$_Ld44$non_lazy_ptr-Lj4832(%esi),%eax
	movl	%eax,-64(%ebp)
	leal	-72(%ebp),%edx
	leal	-12(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj4862:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	52(%eax),%eax
	leal	-60(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-60(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj4833:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj4834
	call	LFPC_RERAISE$stub
Lj4834:
	movl	-84(%ebp),%ebx
	movl	-80(%ebp),%esi
	movl	-76(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPFUNCTIONCALLBACK_$__CREATEFUNCTION$crc6370B387
_FPEXPRPARS_TFPFUNCTIONCALLBACK_$__CREATEFUNCTION$crc6370B387:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj4887
	jmp	Lj4888
Lj4887:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj4888:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4893
	jmp	Lj4894
Lj4893:
	jmp	Lj4885
Lj4894:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj4897
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4901
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPEXPRPARS_TFPEXPRFUNCTION_$__CREATEFUNCTION$crc6370B387$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	316(%eax),%eax
	movl	%eax,24(%edx)
Lj4901:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4902
	call	LFPC_RERAISE$stub
Lj4902:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4916
	jmp	Lj4915
Lj4916:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4914
	jmp	Lj4915
Lj4914:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj4915:
Lj4897:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj4899
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4920
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4921
	jmp	Lj4922
Lj4921:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj4922:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj4920:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4919
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4919:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4899
Lj4899:
Lj4885:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPFUNCTIONCALLBACK_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPFUNCTIONCALLBACK_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	call	Lfpc_dynarray_length$stub
	cmpl	$0,%eax
	jg	Lj4929
	jmp	Lj4930
Lj4929:
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRFUNCTION_$__CALCPARAMS$stub
Lj4930:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	24(%edx),%edx
	call	*%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPFUNCTIONEVENTHANDLER_$__CREATEFUNCTION$crc6370B387
_FPEXPRPARS_TFPFUNCTIONEVENTHANDLER_$__CREATEFUNCTION$crc6370B387:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj4945
	jmp	Lj4946
Lj4945:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj4946:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4951
	jmp	Lj4952
Lj4951:
	jmp	Lj4943
Lj4952:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj4955
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4959
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPEXPRPARS_TFPEXPRFUNCTION_$__CREATEFUNCTION$crc6370B387$stub
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	308(%eax),%edx
	movl	%edx,24(%ecx)
	movl	312(%eax),%eax
	movl	%eax,28(%ecx)
Lj4959:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4960
	call	LFPC_RERAISE$stub
Lj4960:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4974
	jmp	Lj4973
Lj4974:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4972
	jmp	Lj4973
Lj4972:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj4973:
Lj4955:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj4957
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4978
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4979
	jmp	Lj4980
Lj4979:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj4980:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj4978:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4977
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4977:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4957
Lj4957:
Lj4943:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPFUNCTIONEVENTHANDLER_$__GETNODEVALUE$TFPEXPRESSIONRESULT
_FPEXPRPARS_TFPFUNCTIONEVENTHANDLER_$__GETNODEVALUE$TFPEXPRESSIONRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	call	Lfpc_dynarray_length$stub
	cmpl	$0,%eax
	jg	Lj4987
	jmp	Lj4988
Lj4987:
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRFUNCTION_$__CALCPARAMS$stub
Lj4988:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	24(%ecx),%ecx
	call	*%ecx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_ARGTOFLOAT$TFPEXPRESSIONRESULT$$DOUBLE
_FPEXPRPARS_ARGTOFLOAT$TFPEXPRESSIONRESULT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	call	Lj5004
Lj5004:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-28(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj5004(%ebx),%eax
	movl	%eax,%edx
	leal	-28(%ebp),%eax
	call	LFPC_ADDREF$stub
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-4(%ebp)
	testl	%eax,%eax
	jne	Lj5005
	movl	-24(%ebp),%eax
	cmpl	$1,%eax
	je	Lj5008
	jmp	Lj5009
Lj5008:
	fildq	-20(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj5012
Lj5009:
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj5012:
Lj5005:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr-Lj5004(%ebx),%eax
	movl	%eax,%edx
	leal	-28(%ebp),%eax
	call	LFPC_DECREF$stub
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5006
	call	LFPC_RERAISE$stub
Lj5006:
	fldl	-12(%ebp)
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINCOS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINCOS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	call	L_FPEXPRPARS_ARGTOFLOAT$TFPEXPRESSIONRESULT$$DOUBLE$stub
	fcos
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSIN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSIN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	call	L_FPEXPRPARS_ARGTOFLOAT$TFPEXPRESSIONRESULT$$DOUBLE$stub
	fsin
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINARCTAN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINARCTAN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	call	L_FPEXPRPARS_ARGTOFLOAT$TFPEXPRESSIONRESULT$$DOUBLE$stub
	fld1
	fpatan
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINABS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINABS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	call	L_FPEXPRPARS_ARGTOFLOAT$TFPEXPRESSIONRESULT$$DOUBLE$stub
	fabs
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSQR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSQR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	call	L_FPEXPRPARS_ARGTOFLOAT$TFPEXPRESSIONRESULT$$DOUBLE$stub
	fmul	%st(0),%st(0)
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSQRT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSQRT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	call	L_FPEXPRPARS_ARGTOFLOAT$TFPEXPRESSIONRESULT$$DOUBLE$stub
	fsqrt
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINEXP$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINEXP$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	call	L_FPEXPRPARS_ARGTOFLOAT$TFPEXPRESSIONRESULT$$DOUBLE$stub
	fstpt	(%esp)
	call	Lfpc_exp_real$stub
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINLN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINLN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	call	L_FPEXPRPARS_ARGTOFLOAT$TFPEXPRESSIONRESULT$$DOUBLE$stub
	fldln2
	fxch
	fyl2x
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINLOG$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINLOG$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj5066
Lj5066:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	call	L_FPEXPRPARS_ARGTOFLOAT$TFPEXPRESSIONRESULT$$DOUBLE$stub
	fldln2
	fxch
	fyl2x
	movl	L_$FPEXPRPARS$_Ld68$non_lazy_ptr-Lj5066(%ebx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINROUND$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINROUND$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	call	L_FPEXPRPARS_ARGTOFLOAT$TFPEXPRESSIONRESULT$$DOUBLE$stub
	fistpq	-12(%ebp)
	fwait
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINTRUNC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINTRUNC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	fnstcw	-8(%ebp)
	fnstcw	-6(%ebp)
	orw	$3840,-8(%ebp)
	movl	8(%ebp),%eax
	call	L_FPEXPRPARS_ARGTOFLOAT$TFPEXPRESSIONRESULT$$DOUBLE$stub
	fldcw	-8(%ebp)
	fistpq	-16(%ebp)
	fldcw	-6(%ebp)
	fwait
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTININT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTININT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	call	L_FPEXPRPARS_ARGTOFLOAT$TFPEXPRESSIONRESULT$$DOUBLE$stub
	fstpt	(%esp)
	call	Lfpc_int_real$stub
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINFRAC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINFRAC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	call	L_FPEXPRPARS_ARGTOFLOAT$TFPEXPRESSIONRESULT$$DOUBLE$stub
	fstpt	(%esp)
	call	Lfpc_frac_real$stub
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINLENGTH$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINLENGTH$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj5103
	movl	-4(%edx),%edx
Lj5103:
	movl	%edx,%eax
	sarl	$31,%eax
	movl	-4(%ebp),%ecx
	movl	%edx,8(%ecx)
	movl	%eax,12(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINCOPY$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINCOPY$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj5106
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	40(%eax),%ecx
	movl	8(%ebp),%eax
	movl	24(%eax),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-48(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	movl	%eax,(%ebx)
Lj5106:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj5107
	call	LFPC_RERAISE$stub
Lj5107:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINDELETE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINDELETE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%esi
	movl	(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	(%esi),%eax
	movl	%eax,(%ebx)
	movl	8(%ebp),%eax
	movl	40(%eax),%ecx
	movl	8(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINPOS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINPOS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	16(%eax),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT$stub
	movl	%eax,%edx
	sarl	$31,%edx
	movl	-4(%ebp),%ecx
	movl	%eax,8(%ecx)
	movl	%edx,12(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINUPPERCASE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINUPPERCASE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj5139
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-48(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	movl	%eax,(%ebx)
Lj5139:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj5140
	call	LFPC_RERAISE$stub
Lj5140:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINLOWERCASE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINLOWERCASE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj5150
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-48(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	movl	%eax,(%ebx)
Lj5150:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj5151
	call	LFPC_RERAISE$stub
Lj5151:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSTRINGREPLACE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSTRINGREPLACE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj5161
	movl	$0,-8(%ebp)
	movl	8(%ebp),%eax
	cmpb	$0,56(%eax)
	jne	Lj5166
	jmp	Lj5167
Lj5166:
	orl	$1,-8(%ebp)
Lj5167:
	movl	8(%ebp),%eax
	cmpb	$0,72(%eax)
	jne	Lj5168
	jmp	Lj5169
Lj5168:
	orl	$2,-8(%ebp)
Lj5169:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	32(%eax),%ecx
	movl	8(%ebp),%eax
	movl	16(%eax),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,(%ebx)
Lj5161:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj5162
	call	LFPC_RERAISE$stub
Lj5162:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINCOMPARETEXT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINCOMPARETEXT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	16(%eax),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	movl	%eax,%edx
	sarl	$31,%edx
	movl	-4(%ebp),%ecx
	movl	%eax,8(%ecx)
	movl	%edx,12(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINDATE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINDATE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_SYSUTILS_DATE$$TDATETIME$stub
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINTIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINTIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_SYSUTILS_TIME$$TDATETIME$stub
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINNOW$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINNOW$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_SYSUTILS_NOW$$TDATETIME$stub
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINDAYOFWEEK$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINDAYOFWEEK$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,(%esp)
	movl	12(%edx),%eax
	movl	%eax,4(%esp)
	call	L_SYSUTILS_DAYOFWEEK$TDATETIME$$LONGINT$stub
	movl	%eax,%edx
	sarl	$31,%edx
	movl	-4(%ebp),%ecx
	movl	%eax,8(%ecx)
	movl	%edx,12(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINEXTRACTYEAR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINEXTRACTYEAR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,(%esp)
	movl	12(%edx),%eax
	movl	%eax,4(%esp)
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	movl	-4(%ebp),%eax
	movzwl	-6(%ebp),%edx
	movl	$0,%ecx
	movl	%edx,8(%eax)
	movl	%ecx,12(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINEXTRACTMONTH$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINEXTRACTMONTH$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,(%esp)
	movl	12(%edx),%eax
	movl	%eax,4(%esp)
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	movl	-4(%ebp),%eax
	movzwl	-8(%ebp),%edx
	movl	$0,%ecx
	movl	%edx,8(%eax)
	movl	%ecx,12(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINEXTRACTDAY$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINEXTRACTDAY$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,(%esp)
	movl	12(%edx),%eax
	movl	%eax,4(%esp)
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	movl	-4(%ebp),%eax
	movzwl	-10(%ebp),%edx
	movl	$0,%ecx
	movl	%edx,8(%eax)
	movl	%ecx,12(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINEXTRACTHOUR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINEXTRACTHOUR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,4(%esp)
	movl	12(%edx),%eax
	movl	%eax,8(%esp)
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movl	-4(%ebp),%eax
	movzwl	-6(%ebp),%edx
	movl	$0,%ecx
	movl	%edx,8(%eax)
	movl	%ecx,12(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINEXTRACTMIN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINEXTRACTMIN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,4(%esp)
	movl	12(%edx),%eax
	movl	%eax,8(%esp)
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movl	-4(%ebp),%eax
	movzwl	-8(%ebp),%edx
	movl	$0,%ecx
	movl	%edx,8(%eax)
	movl	%ecx,12(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINEXTRACTSEC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINEXTRACTSEC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,4(%esp)
	movl	12(%edx),%eax
	movl	%eax,8(%esp)
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movl	-4(%ebp),%eax
	movzwl	-10(%ebp),%edx
	movl	$0,%ecx
	movl	%edx,8(%eax)
	movl	%ecx,12(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINEXTRACTMSEC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINEXTRACTMSEC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,4(%esp)
	movl	12(%edx),%eax
	movl	%eax,8(%esp)
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movl	-4(%ebp),%eax
	movzwl	-12(%ebp),%edx
	movl	$0,%ecx
	movl	%edx,8(%eax)
	movl	%ecx,12(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINENCODEDATE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINENCODEDATE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movw	40(%eax),%cx
	movl	8(%ebp),%eax
	movw	24(%eax),%dx
	movl	8(%ebp),%eax
	movw	8(%eax),%ax
	call	L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINENCODETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINENCODETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movw	56(%eax),%ax
	movw	%ax,(%esp)
	movl	8(%ebp),%eax
	movw	40(%eax),%cx
	movl	8(%ebp),%eax
	movw	24(%eax),%dx
	movl	8(%ebp),%eax
	movw	8(%eax),%ax
	call	L_SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME$stub
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINENCODEDATETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINENCODEDATETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movw	40(%eax),%cx
	movl	8(%ebp),%eax
	movw	24(%eax),%dx
	movl	8(%ebp),%eax
	movw	8(%eax),%ax
	call	L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-16(%ebp)
	movl	8(%ebp),%eax
	movw	104(%eax),%ax
	movw	%ax,(%esp)
	movl	8(%ebp),%eax
	movw	88(%eax),%cx
	movl	8(%ebp),%eax
	movw	72(%eax),%dx
	movl	8(%ebp),%eax
	movw	56(%eax),%ax
	call	L_SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fldl	-16(%ebp)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSHORTDAYNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSHORTDAYNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	call	Lj5341
Lj5341:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	8(%eax),%esi
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj5341(%edi),%edx
	movl	128(%edx,%esi,4),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj5341(%edi),%eax
	movl	128(%eax,%esi,4),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSHORTMONTHNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSHORTMONTHNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	call	Lj5345
Lj5345:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	8(%eax),%esi
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj5345(%edi),%edx
	movl	32(%edx,%esi,4),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj5345(%edi),%eax
	movl	32(%eax,%esi,4),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINLONGDAYNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINLONGDAYNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	call	Lj5349
Lj5349:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	8(%eax),%esi
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj5349(%edi),%edx
	movl	156(%edx,%esi,4),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj5349(%edi),%eax
	movl	156(%eax,%esi,4),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINLONGMONTHNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINLONGMONTHNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	call	Lj5353
Lj5353:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	8(%eax),%esi
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj5353(%edi),%edx
	movl	80(%edx,%esi,4),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj5353(%edi),%eax
	movl	80(%eax,%esi,4),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINFORMATDATETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINFORMATDATETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj5358
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	8(%ebp),%edx
	movl	24(%edx),%eax
	movl	%eax,(%esp)
	movl	28(%edx),%eax
	movl	%eax,4(%esp)
	leal	-48(%ebp),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_FORMATDATETIME$ANSISTRING$TDATETIME$$ANSISTRING$stub
	movl	-48(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	movl	%eax,(%ebx)
Lj5358:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj5359
	call	LFPC_RERAISE$stub
Lj5359:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTININTTOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTININTTOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj5371
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	8(%ebp),%edx
	movl	12(%edx),%eax
	movl	%eax,4(%esp)
	movl	8(%edx),%eax
	movl	%eax,(%esp)
	leal	-48(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub
	movl	-48(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	movl	%eax,(%ebx)
Lj5371:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj5372
	call	LFPC_RERAISE$stub
Lj5372:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSTRTOINT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSTRTOINT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub
	movl	%eax,%edx
	sarl	$31,%edx
	movl	-4(%ebp),%ecx
	movl	%eax,8(%ecx)
	movl	%edx,12(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSTRTOINTDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSTRTOINTDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	24(%eax),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	sarl	$31,%edx
	movl	-4(%ebp),%ecx
	movl	%eax,8(%ecx)
	movl	%edx,12(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINFLOATTOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINFLOATTOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj5396
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	8(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,(%esp)
	movl	12(%edx),%eax
	movl	%eax,4(%esp)
	leal	-48(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING$stub
	movl	-48(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	movl	%eax,(%ebx)
Lj5396:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj5397
	call	LFPC_RERAISE$stub
Lj5397:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSTRTOFLOAT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSTRTOFLOAT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_STRTOFLOAT$ANSISTRING$$EXTENDED$stub
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSTRTOFLOATDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSTRTOFLOATDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	fldl	24(%eax)
	fstpt	(%esp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_STRTOFLOATDEF$ANSISTRING$EXTENDED$$EXTENDED$stub
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINDATETOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINDATETOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj5421
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	8(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,(%esp)
	movl	12(%edx),%eax
	movl	%eax,4(%esp)
	leal	-48(%ebp),%eax
	call	L_SYSUTILS_DATETOSTR$TDATETIME$$ANSISTRING$stub
	movl	-48(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	movl	%eax,(%ebx)
Lj5421:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj5422
	call	LFPC_RERAISE$stub
Lj5422:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINTIMETOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINTIMETOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj5432
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	8(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,(%esp)
	movl	12(%edx),%eax
	movl	%eax,4(%esp)
	leal	-48(%ebp),%eax
	call	L_SYSUTILS_TIMETOSTR$TDATETIME$$ANSISTRING$stub
	movl	-48(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	movl	%eax,(%ebx)
Lj5432:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj5433
	call	LFPC_RERAISE$stub
Lj5433:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSTRTODATE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSTRTODATE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj5442
Lj5442:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj5443
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	8(%ebp),%esi
	movl	(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	(%esi),%eax
	movl	%eax,-56(%ebp)
	movb	$0,(%esp)
	movl	-56(%ebp),%eax
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj5442(%ebx),%edx
	movl	12(%edx),%ecx
	movl	-56(%ebp),%edx
	testl	%edx,%edx
	je	Lj5460
	movl	-4(%edx),%edx
Lj5460:
	call	L_SYSUTILS_STRTODATE$PCHAR$LONGINT$ANSISTRING$CHAR$$TDATETIME$stub
	fstpl	-52(%ebp)
	movl	-4(%ebp),%edx
	movl	-52(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-48(%ebp),%eax
	movl	%eax,12(%edx)
Lj5443:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj5444
	call	LFPC_RERAISE$stub
Lj5444:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSTRTODATEDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSTRTODATEDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,%cl
	call	L_SYSUTILS_TRYSTRTODATE$ANSISTRING$TDATETIME$CHAR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj5465
	jmp	Lj5466
Lj5465:
	movl	8(%ebp),%edx
	movl	24(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	28(%edx),%eax
	movl	%eax,-8(%ebp)
Lj5466:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSTRTOTIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSTRTOTIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj5477
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	8(%ebp),%ebx
	movl	(%ebx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	(%ebx),%eax
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%eax
	movl	-56(%ebp),%edx
	testl	%edx,%edx
	je	Lj5490
	movl	-4(%edx),%edx
Lj5490:
	movb	$0,%cl
	call	L_SYSUTILS_STRTOTIME$PCHAR$LONGINT$CHAR$$TDATETIME$stub
	fstpl	-52(%ebp)
	movl	-4(%ebp),%edx
	movl	-52(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-48(%ebp),%eax
	movl	%eax,12(%edx)
Lj5477:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj5478
	call	LFPC_RERAISE$stub
Lj5478:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSTRTOTIMEDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSTRTOTIMEDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,%cl
	call	L_SYSUTILS_TRYSTRTOTIME$ANSISTRING$TDATETIME$CHAR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj5497
	jmp	Lj5498
Lj5497:
	movl	8(%ebp),%edx
	movl	24(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	28(%edx),%eax
	movl	%eax,-8(%ebp)
Lj5498:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSTRTODATETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSTRTODATETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_STRTODATETIME$ANSISTRING$$TDATETIME$stub
	movl	-4(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSTRTODATETIMEDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSTRTODATETIMEDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_TRYSTRTODATETIME$ANSISTRING$TDATETIME$$BOOLEAN$stub
	testb	%al,%al
	je	Lj5517
	jmp	Lj5518
Lj5517:
	movl	8(%ebp),%edx
	movl	24(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	28(%edx),%eax
	movl	%eax,-8(%ebp)
Lj5518:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINBOOLTOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINBOOLTOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj5527
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%ecx
	movl	8(%ebp),%eax
	movb	8(%eax),%al
	movb	$0,%dl
	call	L_SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING$stub
	movl	-48(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	movl	%eax,(%ebx)
Lj5527:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj5528
	call	LFPC_RERAISE$stub
Lj5528:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSTRTOBOOL$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSTRTOBOOL$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_STRTOBOOL$ANSISTRING$$BOOLEAN$stub
	movl	-4(%ebp),%edx
	movb	%al,8(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSTRTOBOOLDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSTRTOBOOLDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movb	24(%eax),%dl
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_STRTOBOOLDEF$ANSISTRING$BOOLEAN$$BOOLEAN$stub
	movl	-4(%ebp),%edx
	movb	%al,8(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSHL$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSHL$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	8(%ebp),%ecx
	movl	8(%eax),%edx
	movl	12(%eax),%eax
	movl	24(%ecx),%ecx
	cmpl	$64,%ecx
	jl	Lj5556
	xorl	%edx,%edx
	xorl	%eax,%eax
	jmp	Lj5558
Lj5556:
	cmpl	$32,%ecx
	jl	Lj5557
	subl	$32,%ecx
	shll	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj5558
Lj5557:
	shldl	%cl,%edx,%eax
	shll	%cl,%edx
Lj5558:
	movl	-4(%ebp),%ecx
	movl	%edx,8(%ecx)
	movl	%eax,12(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINSHR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINSHR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%edx
	movl	8(%ebp),%ecx
	movl	8(%edx),%eax
	movl	12(%edx),%edx
	movl	24(%ecx),%ecx
	cmpl	$64,%ecx
	jl	Lj5563
	xorl	%eax,%eax
	xorl	%edx,%edx
	jmp	Lj5565
Lj5563:
	cmpl	$32,%ecx
	jl	Lj5564
	subl	$32,%ecx
	shrl	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj5565
Lj5564:
	shrdl	%cl,%edx,%eax
	shrl	%cl,%edx
Lj5565:
	movl	-4(%ebp),%ecx
	movl	%eax,8(%ecx)
	movl	%edx,12(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINIFS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINIFS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	cmpb	$0,8(%eax)
	jne	Lj5568
	jmp	Lj5569
Lj5568:
	movl	8(%ebp),%esi
	movl	16(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	16(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj5572
Lj5569:
	movl	8(%ebp),%esi
	movl	32(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	32(%esi),%eax
	movl	%eax,(%ebx)
Lj5572:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINIFI$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINIFI$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	cmpb	$0,8(%eax)
	jne	Lj5577
	jmp	Lj5578
Lj5577:
	movl	-4(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	24(%edx),%eax
	movl	%eax,8(%ecx)
	movl	28(%edx),%eax
	movl	%eax,12(%ecx)
	jmp	Lj5581
Lj5578:
	movl	-4(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	40(%edx),%eax
	movl	%eax,8(%ecx)
	movl	44(%edx),%eax
	movl	%eax,12(%ecx)
Lj5581:
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINIFF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINIFF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	cmpb	$0,8(%eax)
	jne	Lj5586
	jmp	Lj5587
Lj5586:
	movl	-4(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	24(%edx),%eax
	movl	%eax,8(%ecx)
	movl	28(%edx),%eax
	movl	%eax,12(%ecx)
	jmp	Lj5590
Lj5587:
	movl	-4(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	40(%edx),%eax
	movl	%eax,8(%ecx)
	movl	44(%edx),%eax
	movl	%eax,12(%ecx)
Lj5590:
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_BUILTINIFD$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
_FPEXPRPARS_BUILTINIFD$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	cmpb	$0,8(%eax)
	jne	Lj5595
	jmp	Lj5596
Lj5595:
	movl	-4(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	24(%edx),%eax
	movl	%eax,8(%ecx)
	movl	28(%edx),%eax
	movl	%eax,12(%ecx)
	jmp	Lj5599
Lj5596:
	movl	-4(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	40(%edx),%eax
	movl	%eax,8(%ecx)
	movl	44(%edx),%eax
	movl	%eax,12(%ecx)
Lj5599:
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_REGISTERSTDBUILTINS$TEXPRBUILTINMANAGER
_FPEXPRPARS_REGISTERSTDBUILTINS$TEXPRBUILTINMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj5603
Lj5603:
	popl	%ebx
	movl	%eax,-4(%ebp)
	fldpi
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	fstpl	(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld69$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$2,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFLOATVARIABLE$crc4D3F7E51$stub
	movl	L_$FPEXPRPARS$_Ld70$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$70,8(%esp)
	movl	L_FPEXPRPARS_BUILTINCOS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld72$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$2,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld70$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$70,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSIN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld73$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$2,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld70$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$70,8(%esp)
	movl	L_FPEXPRPARS_BUILTINARCTAN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld74$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$2,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld70$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$70,8(%esp)
	movl	L_FPEXPRPARS_BUILTINABS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld75$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$2,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld70$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$70,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSQR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld76$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$2,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld70$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$70,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSQRT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld77$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$2,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld70$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$70,8(%esp)
	movl	L_FPEXPRPARS_BUILTINEXP$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld78$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$2,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld70$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$70,8(%esp)
	movl	L_FPEXPRPARS_BUILTINLN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld79$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$2,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld70$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$70,8(%esp)
	movl	L_FPEXPRPARS_BUILTINLOG$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld80$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$2,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld70$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$70,8(%esp)
	movl	L_FPEXPRPARS_BUILTINFRAC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld81$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$2,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld70$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$70,8(%esp)
	movl	L_FPEXPRPARS_BUILTININT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld82$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$2,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld70$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$73,8(%esp)
	movl	L_FPEXPRPARS_BUILTINROUND$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld83$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$2,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld70$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$73,8(%esp)
	movl	L_FPEXPRPARS_BUILTINTRUNC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld84$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$2,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld85$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$73,8(%esp)
	movl	L_FPEXPRPARS_BUILTINLENGTH$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld87$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$0,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld88$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$83,8(%esp)
	movl	L_FPEXPRPARS_BUILTINCOPY$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld90$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$0,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld88$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$83,8(%esp)
	movl	L_FPEXPRPARS_BUILTINDELETE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld91$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$0,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld92$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$73,8(%esp)
	movl	L_FPEXPRPARS_BUILTINPOS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld94$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$0,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld85$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$83,8(%esp)
	movl	L_FPEXPRPARS_BUILTINLOWERCASE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld95$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$0,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld85$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$83,8(%esp)
	movl	L_FPEXPRPARS_BUILTINUPPERCASE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld96$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$0,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld97$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$83,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSTRINGREPLACE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld99$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$0,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld92$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$73,8(%esp)
	movl	L_FPEXPRPARS_BUILTINCOMPARETEXT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld100$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$0,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	$0,4(%esp)
	movb	$68,8(%esp)
	movl	L_FPEXPRPARS_BUILTINDATE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld101$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$1,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	$0,4(%esp)
	movb	$68,8(%esp)
	movl	L_FPEXPRPARS_BUILTINTIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld102$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$1,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	$0,4(%esp)
	movb	$68,8(%esp)
	movl	L_FPEXPRPARS_BUILTINNOW$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld103$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$1,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld104$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$73,8(%esp)
	movl	L_FPEXPRPARS_BUILTINDAYOFWEEK$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld106$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$1,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld104$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$73,8(%esp)
	movl	L_FPEXPRPARS_BUILTINEXTRACTYEAR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld107$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$1,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld104$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$73,8(%esp)
	movl	L_FPEXPRPARS_BUILTINEXTRACTMONTH$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld108$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$1,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld104$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$73,8(%esp)
	movl	L_FPEXPRPARS_BUILTINEXTRACTDAY$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld109$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$1,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld104$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$73,8(%esp)
	movl	L_FPEXPRPARS_BUILTINEXTRACTHOUR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld110$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$1,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld104$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$73,8(%esp)
	movl	L_FPEXPRPARS_BUILTINEXTRACTMIN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld111$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$1,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld104$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$73,8(%esp)
	movl	L_FPEXPRPARS_BUILTINEXTRACTSEC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld112$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$1,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld104$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$73,8(%esp)
	movl	L_FPEXPRPARS_BUILTINEXTRACTMSEC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld113$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$1,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld114$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$68,8(%esp)
	movl	L_FPEXPRPARS_BUILTINENCODEDATE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld116$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$1,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld117$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$68,8(%esp)
	movl	L_FPEXPRPARS_BUILTINENCODETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld119$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$1,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld120$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$68,8(%esp)
	movl	L_FPEXPRPARS_BUILTINENCODEDATETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld122$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$1,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld123$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$83,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSHORTDAYNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld125$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$1,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld123$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$83,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSHORTMONTHNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld126$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$1,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld123$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$83,8(%esp)
	movl	L_FPEXPRPARS_BUILTINLONGDAYNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld127$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$1,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld123$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$83,8(%esp)
	movl	L_FPEXPRPARS_BUILTINLONGMONTHNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld128$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$1,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld129$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$83,8(%esp)
	movl	L_FPEXPRPARS_BUILTINFORMATDATETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld131$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$1,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld132$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$73,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSHL$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld134$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$3,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld132$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$73,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSHR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld135$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$3,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld136$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$83,8(%esp)
	movl	L_FPEXPRPARS_BUILTINIFS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld138$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$3,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld139$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$70,8(%esp)
	movl	L_FPEXPRPARS_BUILTINIFF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld141$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$3,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld142$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$68,8(%esp)
	movl	L_FPEXPRPARS_BUILTINIFD$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld144$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$3,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld145$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$73,8(%esp)
	movl	L_FPEXPRPARS_BUILTINIFI$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld147$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$3,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld123$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$83,8(%esp)
	movl	L_FPEXPRPARS_BUILTININTTOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld148$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$4,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld85$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$73,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSTRTOINT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld149$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$4,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld150$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$73,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSTRTOINTDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld152$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$4,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld70$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$83,8(%esp)
	movl	L_FPEXPRPARS_BUILTINFLOATTOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld153$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$4,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld85$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$70,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSTRTOFLOAT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld154$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$4,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld155$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$70,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSTRTOFLOATDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld157$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$4,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld158$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$83,8(%esp)
	movl	L_FPEXPRPARS_BUILTINBOOLTOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld160$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$4,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld85$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$66,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSTRTOBOOL$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld161$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$4,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld162$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$66,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSTRTOBOOLDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld164$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$4,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld104$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$83,8(%esp)
	movl	L_FPEXPRPARS_BUILTINDATETOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld165$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$4,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld104$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$83,8(%esp)
	movl	L_FPEXPRPARS_BUILTINTIMETOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld166$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$4,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld85$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$68,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSTRTODATE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld167$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$4,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld129$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$68,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSTRTODATEDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld168$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$4,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld85$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$68,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSTRTOTIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld169$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$4,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld129$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$68,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSTRTOTIMEDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld170$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$4,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld85$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$68,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSTRTODATETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld171$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$4,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	L_$FPEXPRPARS$_Ld129$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,4(%esp)
	movb	$68,8(%esp)
	movl	L_FPEXPRPARS_BUILTINSTRTODATETIMEDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr-Lj5603(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$FPEXPRPARS$_Ld172$non_lazy_ptr-Lj5603(%ebx),%ecx
	movl	$4,%edx
	call	L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPEXPRPARS_TFPBUILTINEXPRIDENTIFIERDEF_$__ASSIGN$TPERSISTENT
_FPEXPRPARS_TFPBUILTINEXPRIDENTIFIERDEF_$__ASSIGN$TPERSISTENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj6369
Lj6369:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__ASSIGN$TPERSISTENT$stub
	movl	-4(%ebp),%edx
	movl	L_VMT_FPEXPRPARS_TFPBUILTINEXPRIDENTIFIERDEF$non_lazy_ptr-Lj6369(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj6374
	jmp	Lj6375
Lj6374:
	movl	-4(%ebp),%edx
	movl	L_VMT_FPEXPRPARS_TFPBUILTINEXPRIDENTIFIERDEF$non_lazy_ptr-Lj6369(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	-8(%ebp),%edx
	movl	320(%eax),%eax
	movl	%eax,320(%edx)
Lj6375:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPEXPRPARS
_INIT$_FPEXPRPARS:
.reference __FPEXPRPARS_init
.globl	__FPEXPRPARS_init
__FPEXPRPARS_init:
.reference _INIT$_FPEXPRPARS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_FPEXPRPARS_BUILTINIDENTIFIERS$$TEXPRBUILTINMANAGER$stub
	call	L_FPEXPRPARS_REGISTERSTDBUILTINS$TEXPRBUILTINMANAGER$stub
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_FPEXPRPARS
_FINALIZE$_FPEXPRPARS:
.reference __FPEXPRPARS_finalize
.globl	__FPEXPRPARS_finalize
__FPEXPRPARS_finalize:
.reference _FINALIZE$_FPEXPRPARS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_FPEXPRPARS_FREEBUILTINS$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_FPEXPRPARS_BUILTINS
.data
.zerofill __DATA, __common, _U_FPEXPRPARS_BUILTINS, 4,2



.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld173
_$FPEXPRPARS$_Ld173:
	.byte	19
	.ascii	"TFPExpressionParser"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPEXPRESSIONPARSER
_VMT_FPEXPRPARS_TFPEXPRESSIONPARSER:
	.long	80,-80
	.long	_VMT_CLASSES_TCOMPONENT
	.long	_$FPEXPRPARS$_Ld173
	.long	0,0
	.long	_$FPEXPRPARS$_Ld174
	.long	_RTTI_FPEXPRPARS_TFPEXPRESSIONPARSER
	.long	_INIT_FPEXPRPARS_TFPEXPRESSIONPARSER
	.long	0,0,0
	.long	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_CLASSES_TCOMPONENT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	_CLASSES_TCOMPONENT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TCOMPONENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TCOMPONENT_$__GETOWNER$$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOMPONENT_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__GETCHILDREN$TGETCHILDPROC$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__GETCHILDOWNER$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__GETCHILDPARENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__LOADED
	.long	_CLASSES_TCOMPONENT_$__LOADING
	.long	_CLASSES_TCOMPONENT_$__NOTIFICATION$TCOMPONENT$TOPERATION
	.long	_CLASSES_TCOMPONENT_$__PALETTECREATED
	.long	_CLASSES_TCOMPONENT_$__READSTATE$TREADER
	.long	_CLASSES_TCOMPONENT_$__SETNAME$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__SETCHILDORDER$TCOMPONENT$LONGINT
	.long	_CLASSES_TCOMPONENT_$__SETPARENTCOMPONENT$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__UPDATING
	.long	_CLASSES_TCOMPONENT_$__UPDATED
	.long	_CLASSES_TCOMPONENT_$__UPDATEREGISTRY$BOOLEAN$ANSISTRING$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__VALIDATERENAME$TCOMPONENT$ANSISTRING$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__VALIDATECONTAINER$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__VALIDATEINSERT$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	_CLASSES_TCOMPONENT_$__WRITESTATE$TWRITER
	.long	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CREATE$TCOMPONENT$$TFPEXPRESSIONPARSER
	.long	_CLASSES_TCOMPONENT_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__GETPARENTCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__HASPARENT$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__SETEXPRESSION$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld176
_$FPEXPRPARS$_Ld176:
	.byte	19
	.ascii	"TExprBuiltInManager"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TEXPRBUILTINMANAGER
_VMT_FPEXPRPARS_TEXPRBUILTINMANAGER:
	.long	56,-56
	.long	_VMT_CLASSES_TCOMPONENT
	.long	_$FPEXPRPARS$_Ld176
	.long	0,0
	.long	_$FPEXPRPARS$_Ld177
	.long	_RTTI_FPEXPRPARS_TEXPRBUILTINMANAGER
	.long	0,0,0,0
	.long	_FPEXPRPARS_TEXPRBUILTINMANAGER_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_CLASSES_TCOMPONENT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	_CLASSES_TCOMPONENT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TCOMPONENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TCOMPONENT_$__GETOWNER$$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOMPONENT_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__GETCHILDREN$TGETCHILDPROC$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__GETCHILDOWNER$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__GETCHILDPARENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__LOADED
	.long	_CLASSES_TCOMPONENT_$__LOADING
	.long	_CLASSES_TCOMPONENT_$__NOTIFICATION$TCOMPONENT$TOPERATION
	.long	_CLASSES_TCOMPONENT_$__PALETTECREATED
	.long	_CLASSES_TCOMPONENT_$__READSTATE$TREADER
	.long	_CLASSES_TCOMPONENT_$__SETNAME$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__SETCHILDORDER$TCOMPONENT$LONGINT
	.long	_CLASSES_TCOMPONENT_$__SETPARENTCOMPONENT$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__UPDATING
	.long	_CLASSES_TCOMPONENT_$__UPDATED
	.long	_CLASSES_TCOMPONENT_$__UPDATEREGISTRY$BOOLEAN$ANSISTRING$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__VALIDATERENAME$TCOMPONENT$ANSISTRING$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__VALIDATECONTAINER$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__VALIDATEINSERT$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	_CLASSES_TCOMPONENT_$__WRITESTATE$TWRITER
	.long	_FPEXPRPARS_TEXPRBUILTINMANAGER_$__CREATE$TCOMPONENT$$TEXPRBUILTINMANAGER
	.long	_CLASSES_TCOMPONENT_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__GETPARENTCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__HASPARENT$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld179
_$FPEXPRPARS$_Ld179:
	.byte	20
	.ascii	"TFPExpressionScanner"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPEXPRESSIONSCANNER
_VMT_FPEXPRPARS_TFPEXPRESSIONSCANNER:
	.long	28,-28
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPEXPRPARS$_Ld179
	.long	0,0
	.long	_$FPEXPRPARS$_Ld180
	.long	_RTTI_FPEXPRPARS_TFPEXPRESSIONSCANNER
	.long	_INIT_FPEXPRPARS_TFPEXPRESSIONSCANNER
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
	.long	_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__SETSOURCE$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld182
_$FPEXPRPARS$_Ld182:
	.byte	12
	.ascii	"EExprScanner"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_EEXPRSCANNER
_VMT_FPEXPRPARS_EEXPRSCANNER:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$FPEXPRPARS$_Ld182
	.long	0,0
	.long	_$FPEXPRPARS$_Ld183
	.long	_RTTI_FPEXPRPARS_EEXPRSCANNER
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
.globl	_$FPEXPRPARS$_Ld185
_$FPEXPRPARS$_Ld185:
	.byte	11
	.ascii	"TFPExprNode"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPEXPRNODE
_VMT_FPEXPRPARS_TFPEXPRNODE:
	.long	4,-4
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPEXPRPARS$_Ld185
	.long	0,0
	.long	_$FPEXPRPARS$_Ld186
	.long	_RTTI_FPEXPRPARS_TFPEXPRNODE
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
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld188
_$FPEXPRPARS$_Ld188:
	.byte	18
	.ascii	"TFPBinaryOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPBINARYOPERATION
_VMT_FPEXPRPARS_TFPBINARYOPERATION:
	.long	12,-12
	.long	_VMT_FPEXPRPARS_TFPEXPRNODE
	.long	_$FPEXPRPARS$_Ld188
	.long	0,0
	.long	_$FPEXPRPARS$_Ld189
	.long	_RTTI_FPEXPRPARS_TFPBINARYOPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPBINARYOPERATION_$__CHECK
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld191
_$FPEXPRPARS$_Ld191:
	.byte	19
	.ascii	"TFPBooleanOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPBOOLEANOPERATION
_VMT_FPEXPRPARS_TFPBOOLEANOPERATION:
	.long	12,-12
	.long	_VMT_FPEXPRPARS_TFPBINARYOPERATION
	.long	_$FPEXPRPARS$_Ld191
	.long	0,0
	.long	_$FPEXPRPARS$_Ld192
	.long	_RTTI_FPEXPRPARS_TFPBOOLEANOPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPBOOLEANOPERATION_$__CHECK
	.long	_FPEXPRPARS_TFPBOOLEANOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld194
_$FPEXPRPARS$_Ld194:
	.byte	21
	.ascii	"TFPBinaryAndOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPBINARYANDOPERATION
_VMT_FPEXPRPARS_TFPBINARYANDOPERATION:
	.long	12,-12
	.long	_VMT_FPEXPRPARS_TFPBOOLEANOPERATION
	.long	_$FPEXPRPARS$_Ld194
	.long	0,0
	.long	_$FPEXPRPARS$_Ld195
	.long	_RTTI_FPEXPRPARS_TFPBINARYANDOPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPBINARYANDOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFPBOOLEANOPERATION_$__CHECK
	.long	_FPEXPRPARS_TFPBOOLEANOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPBINARYANDOPERATION_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld197
_$FPEXPRPARS$_Ld197:
	.byte	20
	.ascii	"TFPBinaryOrOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPBINARYOROPERATION
_VMT_FPEXPRPARS_TFPBINARYOROPERATION:
	.long	12,-12
	.long	_VMT_FPEXPRPARS_TFPBOOLEANOPERATION
	.long	_$FPEXPRPARS$_Ld197
	.long	0,0
	.long	_$FPEXPRPARS$_Ld198
	.long	_RTTI_FPEXPRPARS_TFPBINARYOROPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPBINARYOROPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFPBOOLEANOPERATION_$__CHECK
	.long	_FPEXPRPARS_TFPBOOLEANOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPBINARYOROPERATION_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld200
_$FPEXPRPARS$_Ld200:
	.byte	21
	.ascii	"TFPBinaryXOrOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPBINARYXOROPERATION
_VMT_FPEXPRPARS_TFPBINARYXOROPERATION:
	.long	12,-12
	.long	_VMT_FPEXPRPARS_TFPBOOLEANOPERATION
	.long	_$FPEXPRPARS$_Ld200
	.long	0,0
	.long	_$FPEXPRPARS$_Ld201
	.long	_RTTI_FPEXPRPARS_TFPBINARYXOROPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPBINARYXOROPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFPBOOLEANOPERATION_$__CHECK
	.long	_FPEXPRPARS_TFPBOOLEANOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPBINARYXOROPERATION_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld203
_$FPEXPRPARS$_Ld203:
	.byte	25
	.ascii	"TFPBooleanResultOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPBOOLEANRESULTOPERATION
_VMT_FPEXPRPARS_TFPBOOLEANRESULTOPERATION:
	.long	12,-12
	.long	_VMT_FPEXPRPARS_TFPBINARYOPERATION
	.long	_$FPEXPRPARS$_Ld203
	.long	0,0
	.long	_$FPEXPRPARS$_Ld204
	.long	_RTTI_FPEXPRPARS_TFPBOOLEANRESULTOPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPBOOLEANRESULTOPERATION_$__CHECK
	.long	_FPEXPRPARS_TFPBOOLEANRESULTOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld206
_$FPEXPRPARS$_Ld206:
	.byte	17
	.ascii	"TFPEqualOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPEQUALOPERATION
_VMT_FPEXPRPARS_TFPEQUALOPERATION:
	.long	12,-12
	.long	_VMT_FPEXPRPARS_TFPBOOLEANRESULTOPERATION
	.long	_$FPEXPRPARS$_Ld206
	.long	0,0
	.long	_$FPEXPRPARS$_Ld207
	.long	_RTTI_FPEXPRPARS_TFPEQUALOPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPEQUALOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFPBOOLEANRESULTOPERATION_$__CHECK
	.long	_FPEXPRPARS_TFPBOOLEANRESULTOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPEQUALOPERATION_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld209
_$FPEXPRPARS$_Ld209:
	.byte	19
	.ascii	"TFPUnequalOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPUNEQUALOPERATION
_VMT_FPEXPRPARS_TFPUNEQUALOPERATION:
	.long	12,-12
	.long	_VMT_FPEXPRPARS_TFPEQUALOPERATION
	.long	_$FPEXPRPARS$_Ld209
	.long	0,0
	.long	_$FPEXPRPARS$_Ld210
	.long	_RTTI_FPEXPRPARS_TFPUNEQUALOPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPUNEQUALOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFPBOOLEANRESULTOPERATION_$__CHECK
	.long	_FPEXPRPARS_TFPBOOLEANRESULTOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPUNEQUALOPERATION_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld212
_$FPEXPRPARS$_Ld212:
	.byte	20
	.ascii	"TFPOrderingOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPORDERINGOPERATION
_VMT_FPEXPRPARS_TFPORDERINGOPERATION:
	.long	12,-12
	.long	_VMT_FPEXPRPARS_TFPBOOLEANRESULTOPERATION
	.long	_$FPEXPRPARS$_Ld212
	.long	0,0
	.long	_$FPEXPRPARS$_Ld213
	.long	_RTTI_FPEXPRPARS_TFPORDERINGOPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPORDERINGOPERATION_$__CHECK
	.long	_FPEXPRPARS_TFPBOOLEANRESULTOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld215
_$FPEXPRPARS$_Ld215:
	.byte	20
	.ascii	"TFPLessThanOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPLESSTHANOPERATION
_VMT_FPEXPRPARS_TFPLESSTHANOPERATION:
	.long	12,-12
	.long	_VMT_FPEXPRPARS_TFPORDERINGOPERATION
	.long	_$FPEXPRPARS$_Ld215
	.long	0,0
	.long	_$FPEXPRPARS$_Ld216
	.long	_RTTI_FPEXPRPARS_TFPLESSTHANOPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPLESSTHANOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFPORDERINGOPERATION_$__CHECK
	.long	_FPEXPRPARS_TFPBOOLEANRESULTOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPLESSTHANOPERATION_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld218
_$FPEXPRPARS$_Ld218:
	.byte	23
	.ascii	"TFPGreaterThanOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPGREATERTHANOPERATION
_VMT_FPEXPRPARS_TFPGREATERTHANOPERATION:
	.long	12,-12
	.long	_VMT_FPEXPRPARS_TFPORDERINGOPERATION
	.long	_$FPEXPRPARS$_Ld218
	.long	0,0
	.long	_$FPEXPRPARS$_Ld219
	.long	_RTTI_FPEXPRPARS_TFPGREATERTHANOPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPGREATERTHANOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFPORDERINGOPERATION_$__CHECK
	.long	_FPEXPRPARS_TFPBOOLEANRESULTOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPGREATERTHANOPERATION_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld221
_$FPEXPRPARS$_Ld221:
	.byte	25
	.ascii	"TFPLessThanEqualOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPLESSTHANEQUALOPERATION
_VMT_FPEXPRPARS_TFPLESSTHANEQUALOPERATION:
	.long	12,-12
	.long	_VMT_FPEXPRPARS_TFPGREATERTHANOPERATION
	.long	_$FPEXPRPARS$_Ld221
	.long	0,0
	.long	_$FPEXPRPARS$_Ld222
	.long	_RTTI_FPEXPRPARS_TFPLESSTHANEQUALOPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPLESSTHANEQUALOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFPORDERINGOPERATION_$__CHECK
	.long	_FPEXPRPARS_TFPBOOLEANRESULTOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPLESSTHANEQUALOPERATION_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld224
_$FPEXPRPARS$_Ld224:
	.byte	28
	.ascii	"TFPGreaterThanEqualOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPGREATERTHANEQUALOPERATION
_VMT_FPEXPRPARS_TFPGREATERTHANEQUALOPERATION:
	.long	12,-12
	.long	_VMT_FPEXPRPARS_TFPLESSTHANOPERATION
	.long	_$FPEXPRPARS$_Ld224
	.long	0,0
	.long	_$FPEXPRPARS$_Ld225
	.long	_RTTI_FPEXPRPARS_TFPGREATERTHANEQUALOPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPGREATERTHANEQUALOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFPORDERINGOPERATION_$__CHECK
	.long	_FPEXPRPARS_TFPBOOLEANRESULTOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPGREATERTHANEQUALOPERATION_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld227
_$FPEXPRPARS$_Ld227:
	.byte	12
	.ascii	"TIfOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TIFOPERATION
_VMT_FPEXPRPARS_TIFOPERATION:
	.long	16,-16
	.long	_VMT_FPEXPRPARS_TFPBINARYOPERATION
	.long	_$FPEXPRPARS$_Ld227
	.long	0,0
	.long	_$FPEXPRPARS$_Ld228
	.long	_RTTI_FPEXPRPARS_TIFOPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TIFOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TIFOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TIFOPERATION_$__CHECK
	.long	_FPEXPRPARS_TIFOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TIFOPERATION_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld230
_$FPEXPRPARS$_Ld230:
	.byte	14
	.ascii	"TCaseOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TCASEOPERATION
_VMT_FPEXPRPARS_TCASEOPERATION:
	.long	12,-12
	.long	_VMT_FPEXPRPARS_TFPEXPRNODE
	.long	_$FPEXPRPARS$_Ld230
	.long	0,0
	.long	_$FPEXPRPARS$_Ld231
	.long	_RTTI_FPEXPRPARS_TCASEOPERATION
	.long	_INIT_FPEXPRPARS_TCASEOPERATION
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TCASEOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TCASEOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TCASEOPERATION_$__CHECK
	.long	_FPEXPRPARS_TCASEOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TCASEOPERATION_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld233
_$FPEXPRPARS$_Ld233:
	.byte	14
	.ascii	"TMathOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TMATHOPERATION
_VMT_FPEXPRPARS_TMATHOPERATION:
	.long	12,-12
	.long	_VMT_FPEXPRPARS_TFPBINARYOPERATION
	.long	_$FPEXPRPARS$_Ld233
	.long	0,0
	.long	_$FPEXPRPARS$_Ld234
	.long	_RTTI_FPEXPRPARS_TMATHOPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TMATHOPERATION_$__CHECK
	.long	_FPEXPRPARS_TMATHOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld236
_$FPEXPRPARS$_Ld236:
	.byte	15
	.ascii	"TFPAddOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPADDOPERATION
_VMT_FPEXPRPARS_TFPADDOPERATION:
	.long	12,-12
	.long	_VMT_FPEXPRPARS_TMATHOPERATION
	.long	_$FPEXPRPARS$_Ld236
	.long	0,0
	.long	_$FPEXPRPARS$_Ld237
	.long	_RTTI_FPEXPRPARS_TFPADDOPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPADDOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TMATHOPERATION_$__CHECK
	.long	_FPEXPRPARS_TMATHOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPADDOPERATION_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld239
_$FPEXPRPARS$_Ld239:
	.byte	20
	.ascii	"TFPSubtractOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPSUBTRACTOPERATION
_VMT_FPEXPRPARS_TFPSUBTRACTOPERATION:
	.long	12,-12
	.long	_VMT_FPEXPRPARS_TMATHOPERATION
	.long	_$FPEXPRPARS$_Ld239
	.long	0,0
	.long	_$FPEXPRPARS$_Ld240
	.long	_RTTI_FPEXPRPARS_TFPSUBTRACTOPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPSUBTRACTOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFPSUBTRACTOPERATION_$__CHECK
	.long	_FPEXPRPARS_TMATHOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPSUBTRACTOPERATION_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld242
_$FPEXPRPARS$_Ld242:
	.byte	20
	.ascii	"TFPMultiplyOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPMULTIPLYOPERATION
_VMT_FPEXPRPARS_TFPMULTIPLYOPERATION:
	.long	12,-12
	.long	_VMT_FPEXPRPARS_TMATHOPERATION
	.long	_$FPEXPRPARS$_Ld242
	.long	0,0
	.long	_$FPEXPRPARS$_Ld243
	.long	_RTTI_FPEXPRPARS_TFPMULTIPLYOPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPMULTIPLYOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFPMULTIPLYOPERATION_$__CHECK
	.long	_FPEXPRPARS_TMATHOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPMULTIPLYOPERATION_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld245
_$FPEXPRPARS$_Ld245:
	.byte	18
	.ascii	"TFPDivideOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPDIVIDEOPERATION
_VMT_FPEXPRPARS_TFPDIVIDEOPERATION:
	.long	12,-12
	.long	_VMT_FPEXPRPARS_TMATHOPERATION
	.long	_$FPEXPRPARS$_Ld245
	.long	0,0
	.long	_$FPEXPRPARS$_Ld246
	.long	_RTTI_FPEXPRPARS_TFPDIVIDEOPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPDIVIDEOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFPDIVIDEOPERATION_$__CHECK
	.long	_FPEXPRPARS_TFPDIVIDEOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPDIVIDEOPERATION_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld248
_$FPEXPRPARS$_Ld248:
	.byte	16
	.ascii	"TFPUnaryOperator"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPUNARYOPERATOR
_VMT_FPEXPRPARS_TFPUNARYOPERATOR:
	.long	8,-8
	.long	_VMT_FPEXPRPARS_TFPEXPRNODE
	.long	_$FPEXPRPARS$_Ld248
	.long	0,0
	.long	_$FPEXPRPARS$_Ld249
	.long	_RTTI_FPEXPRPARS_TFPUNARYOPERATOR
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPUNARYOPERATOR_$__DESTROY
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
	.long	_FPEXPRPARS_TFPUNARYOPERATOR_$__CHECK
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld251
_$FPEXPRPARS$_Ld251:
	.byte	14
	.ascii	"TFPConvertNode"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPCONVERTNODE
_VMT_FPEXPRPARS_TFPCONVERTNODE:
	.long	8,-8
	.long	_VMT_FPEXPRPARS_TFPUNARYOPERATOR
	.long	_$FPEXPRPARS$_Ld251
	.long	0,0
	.long	_$FPEXPRPARS$_Ld252
	.long	_RTTI_FPEXPRPARS_TFPCONVERTNODE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPUNARYOPERATOR_$__DESTROY
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
	.long	_FPEXPRPARS_TFPUNARYOPERATOR_$__CHECK
	.long	FPC_ABSTRACTERROR
	.long	_FPEXPRPARS_TFPCONVERTNODE_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld254
_$FPEXPRPARS$_Ld254:
	.byte	10
	.ascii	"TFPNotNode"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPNOTNODE
_VMT_FPEXPRPARS_TFPNOTNODE:
	.long	8,-8
	.long	_VMT_FPEXPRPARS_TFPUNARYOPERATOR
	.long	_$FPEXPRPARS$_Ld254
	.long	0,0
	.long	_$FPEXPRPARS$_Ld255
	.long	_RTTI_FPEXPRPARS_TFPNOTNODE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPUNARYOPERATOR_$__DESTROY
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
	.long	_FPEXPRPARS_TFPNOTNODE_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFPNOTNODE_$__CHECK
	.long	_FPEXPRPARS_TFPNOTNODE_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPNOTNODE_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld257
_$FPEXPRPARS$_Ld257:
	.byte	15
	.ascii	"TIntConvertNode"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TINTCONVERTNODE
_VMT_FPEXPRPARS_TINTCONVERTNODE:
	.long	8,-8
	.long	_VMT_FPEXPRPARS_TFPCONVERTNODE
	.long	_$FPEXPRPARS$_Ld257
	.long	0,0
	.long	_$FPEXPRPARS$_Ld258
	.long	_RTTI_FPEXPRPARS_TINTCONVERTNODE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPUNARYOPERATOR_$__DESTROY
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
	.long	_FPEXPRPARS_TINTCONVERTNODE_$__CHECK
	.long	FPC_ABSTRACTERROR
	.long	_FPEXPRPARS_TFPCONVERTNODE_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld260
_$FPEXPRPARS$_Ld260:
	.byte	15
	.ascii	"TIntToFloatNode"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TINTTOFLOATNODE
_VMT_FPEXPRPARS_TINTTOFLOATNODE:
	.long	8,-8
	.long	_VMT_FPEXPRPARS_TINTCONVERTNODE
	.long	_$FPEXPRPARS$_Ld260
	.long	0,0
	.long	_$FPEXPRPARS$_Ld261
	.long	_RTTI_FPEXPRPARS_TINTTOFLOATNODE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPUNARYOPERATOR_$__DESTROY
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
	.long	_FPEXPRPARS_TINTTOFLOATNODE_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TINTCONVERTNODE_$__CHECK
	.long	_FPEXPRPARS_TINTTOFLOATNODE_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPCONVERTNODE_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld263
_$FPEXPRPARS$_Ld263:
	.byte	18
	.ascii	"TIntToDateTimeNode"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TINTTODATETIMENODE
_VMT_FPEXPRPARS_TINTTODATETIMENODE:
	.long	8,-8
	.long	_VMT_FPEXPRPARS_TINTCONVERTNODE
	.long	_$FPEXPRPARS$_Ld263
	.long	0,0
	.long	_$FPEXPRPARS$_Ld264
	.long	_RTTI_FPEXPRPARS_TINTTODATETIMENODE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPUNARYOPERATOR_$__DESTROY
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
	.long	_FPEXPRPARS_TINTTODATETIMENODE_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TINTCONVERTNODE_$__CHECK
	.long	_FPEXPRPARS_TINTTODATETIMENODE_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPCONVERTNODE_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld266
_$FPEXPRPARS$_Ld266:
	.byte	20
	.ascii	"TFloatToDateTimeNode"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFLOATTODATETIMENODE
_VMT_FPEXPRPARS_TFLOATTODATETIMENODE:
	.long	8,-8
	.long	_VMT_FPEXPRPARS_TFPCONVERTNODE
	.long	_$FPEXPRPARS$_Ld266
	.long	0,0
	.long	_$FPEXPRPARS$_Ld267
	.long	_RTTI_FPEXPRPARS_TFLOATTODATETIMENODE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPUNARYOPERATOR_$__DESTROY
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
	.long	_FPEXPRPARS_TFLOATTODATETIMENODE_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFLOATTODATETIMENODE_$__CHECK
	.long	_FPEXPRPARS_TFLOATTODATETIMENODE_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPCONVERTNODE_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld269
_$FPEXPRPARS$_Ld269:
	.byte	18
	.ascii	"TFPNegateOperation"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPNEGATEOPERATION
_VMT_FPEXPRPARS_TFPNEGATEOPERATION:
	.long	8,-8
	.long	_VMT_FPEXPRPARS_TFPUNARYOPERATOR
	.long	_$FPEXPRPARS$_Ld269
	.long	0,0
	.long	_$FPEXPRPARS$_Ld270
	.long	_RTTI_FPEXPRPARS_TFPNEGATEOPERATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPUNARYOPERATOR_$__DESTROY
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
	.long	_FPEXPRPARS_TFPNEGATEOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFPNEGATEOPERATION_$__CHECK
	.long	_FPEXPRPARS_TFPNEGATEOPERATION_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPNEGATEOPERATION_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld272
_$FPEXPRPARS$_Ld272:
	.byte	18
	.ascii	"TFPConstExpression"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPCONSTEXPRESSION
_VMT_FPEXPRPARS_TFPCONSTEXPRESSION:
	.long	20,-20
	.long	_VMT_FPEXPRPARS_TFPEXPRNODE
	.long	_$FPEXPRPARS$_Ld272
	.long	0,0
	.long	_$FPEXPRPARS$_Ld273
	.long	_RTTI_FPEXPRPARS_TFPCONSTEXPRESSION
	.long	_INIT_FPEXPRPARS_TFPCONSTEXPRESSION
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
	.long	_FPEXPRPARS_TFPCONSTEXPRESSION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFPCONSTEXPRESSION_$__CHECK
	.long	_FPEXPRPARS_TFPCONSTEXPRESSION_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPCONSTEXPRESSION_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld275
_$FPEXPRPARS$_Ld275:
	.byte	20
	.ascii	"TFPExprIdentifierDef"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF
_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF:
	.long	320,-320
	.long	_VMT_CLASSES_TCOLLECTIONITEM
	.long	_$FPEXPRPARS$_Ld275
	.long	0,0
	.long	_$FPEXPRPARS$_Ld276
	.long	_RTTI_FPEXPRPARS_TFPEXPRIDENTIFIERDEF
	.long	_INIT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF
	.long	0,0,0
	.long	_CLASSES_TCOLLECTIONITEM_$__DESTROY
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
	.long	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOLLECTIONITEM_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__SETCOLLECTION$TCOLLECTION
	.long	_CLASSES_TCOLLECTIONITEM_$__GETDISPLAYNAME$$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__SETINDEX$LONGINT
	.long	_CLASSES_TCOLLECTIONITEM_$__SETDISPLAYNAME$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__CREATE$TCOLLECTION$$TCOLLECTIONITEM
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld278
_$FPEXPRPARS$_Ld278:
	.byte	27
	.ascii	"TFPBuiltInExprIdentifierDef"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPBUILTINEXPRIDENTIFIERDEF
_VMT_FPEXPRPARS_TFPBUILTINEXPRIDENTIFIERDEF:
	.long	324,-324
	.long	_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF
	.long	_$FPEXPRPARS$_Ld278
	.long	0,0
	.long	_$FPEXPRPARS$_Ld279
	.long	_RTTI_FPEXPRPARS_TFPBUILTINEXPRIDENTIFIERDEF
	.long	0,0,0,0
	.long	_CLASSES_TCOLLECTIONITEM_$__DESTROY
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
	.long	_FPEXPRPARS_TFPBUILTINEXPRIDENTIFIERDEF_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOLLECTIONITEM_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__SETCOLLECTION$TCOLLECTION
	.long	_CLASSES_TCOLLECTIONITEM_$__GETDISPLAYNAME$$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__SETINDEX$LONGINT
	.long	_CLASSES_TCOLLECTIONITEM_$__SETDISPLAYNAME$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__CREATE$TCOLLECTION$$TCOLLECTIONITEM
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld281
_$FPEXPRPARS$_Ld281:
	.byte	21
	.ascii	"TFPExprIdentifierDefs"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS
_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS:
	.long	36,-36
	.long	_VMT_CLASSES_TCOLLECTION
	.long	_$FPEXPRPARS$_Ld281
	.long	0,0
	.long	_$FPEXPRPARS$_Ld282
	.long	_RTTI_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS
	.long	0,0,0,0
	.long	_CLASSES_TCOLLECTION_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_CLASSES_TCOLLECTION_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOLLECTION_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TCOLLECTION_$__GETATTRCOUNT$$LONGINT
	.long	_CLASSES_TCOLLECTION_$__GETATTR$LONGINT$$ANSISTRING
	.long	_CLASSES_TCOLLECTION_$__GETITEMATTR$LONGINT$LONGINT$$ANSISTRING
	.long	_CLASSES_TCOLLECTION_$__SETITEMNAME$TCOLLECTIONITEM
	.long	_CLASSES_TCOLLECTION_$__SETPROPNAME
	.long	_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__UPDATE$TCOLLECTIONITEM
	.long	_CLASSES_TCOLLECTION_$__NOTIFY$TCOLLECTIONITEM$TCOLLECTIONNOTIFICATION
	.long	_CLASSES_TCOLLECTION_$__BEGINUPDATE
	.long	_CLASSES_TCOLLECTION_$__ENDUPDATE
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld284
_$FPEXPRPARS$_Ld284:
	.byte	21
	.ascii	"TFPExprIdentifierNode"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERNODE
_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERNODE:
	.long	16,-16
	.long	_VMT_FPEXPRPARS_TFPEXPRNODE
	.long	_$FPEXPRPARS$_Ld284
	.long	0,0
	.long	_$FPEXPRPARS$_Ld285
	.long	_RTTI_FPEXPRPARS_TFPEXPRIDENTIFIERNODE
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
	.long	_FPEXPRPARS_TFPEXPRIDENTIFIERNODE_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	FPC_ABSTRACTERROR
	.long	_FPEXPRPARS_TFPEXPRIDENTIFIERNODE_$__NODETYPE$$TRESULTTYPE
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld287
_$FPEXPRPARS$_Ld287:
	.byte	15
	.ascii	"TFPExprVariable"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPEXPRVARIABLE
_VMT_FPEXPRPARS_TFPEXPRVARIABLE:
	.long	16,-16
	.long	_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERNODE
	.long	_$FPEXPRPARS$_Ld287
	.long	0,0
	.long	_$FPEXPRPARS$_Ld288
	.long	_RTTI_FPEXPRPARS_TFPEXPRVARIABLE
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
	.long	_FPEXPRPARS_TFPEXPRIDENTIFIERNODE_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFPEXPRVARIABLE_$__CHECK
	.long	_FPEXPRPARS_TFPEXPRIDENTIFIERNODE_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPEXPRVARIABLE_$__ASSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld290
_$FPEXPRPARS$_Ld290:
	.byte	15
	.ascii	"TFPExprFunction"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPEXPRFUNCTION
_VMT_FPEXPRPARS_TFPEXPRFUNCTION:
	.long	24,-24
	.long	_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERNODE
	.long	_$FPEXPRPARS$_Ld290
	.long	0,0
	.long	_$FPEXPRPARS$_Ld291
	.long	_RTTI_FPEXPRPARS_TFPEXPRFUNCTION
	.long	_INIT_FPEXPRPARS_TFPEXPRFUNCTION
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPEXPRFUNCTION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPEXPRIDENTIFIERNODE_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFPEXPRFUNCTION_$__CHECK
	.long	_FPEXPRPARS_TFPEXPRIDENTIFIERNODE_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPEXPRFUNCTION_$__ASSTRING$$ANSISTRING
	.long	_FPEXPRPARS_TFPEXPRFUNCTION_$__CREATEFUNCTION$crc6370B387
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld293
_$FPEXPRPARS$_Ld293:
	.byte	19
	.ascii	"TFPFunctionCallBack"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPFUNCTIONCALLBACK
_VMT_FPEXPRPARS_TFPFUNCTIONCALLBACK:
	.long	28,-28
	.long	_VMT_FPEXPRPARS_TFPEXPRFUNCTION
	.long	_$FPEXPRPARS$_Ld293
	.long	0,0
	.long	_$FPEXPRPARS$_Ld294
	.long	_RTTI_FPEXPRPARS_TFPFUNCTIONCALLBACK
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPEXPRFUNCTION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPFUNCTIONCALLBACK_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFPEXPRFUNCTION_$__CHECK
	.long	_FPEXPRPARS_TFPEXPRIDENTIFIERNODE_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPEXPRFUNCTION_$__ASSTRING$$ANSISTRING
	.long	_FPEXPRPARS_TFPFUNCTIONCALLBACK_$__CREATEFUNCTION$crc6370B387
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld296
_$FPEXPRPARS$_Ld296:
	.byte	23
	.ascii	"TFPFunctionEventHandler"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_TFPFUNCTIONEVENTHANDLER
_VMT_FPEXPRPARS_TFPFUNCTIONEVENTHANDLER:
	.long	32,-32
	.long	_VMT_FPEXPRPARS_TFPEXPRFUNCTION
	.long	_$FPEXPRPARS$_Ld296
	.long	0,0
	.long	_$FPEXPRPARS$_Ld297
	.long	_RTTI_FPEXPRPARS_TFPFUNCTIONEVENTHANDLER
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPEXPRPARS_TFPEXPRFUNCTION_$__DESTROY
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
	.long	_FPEXPRPARS_TFPFUNCTIONEVENTHANDLER_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	.long	_FPEXPRPARS_TFPEXPRFUNCTION_$__CHECK
	.long	_FPEXPRPARS_TFPEXPRIDENTIFIERNODE_$__NODETYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPEXPRFUNCTION_$__ASSTRING$$ANSISTRING
	.long	_FPEXPRPARS_TFPFUNCTIONEVENTHANDLER_$__CREATEFUNCTION$crc6370B387
	.long	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld299
_$FPEXPRPARS$_Ld299:
	.byte	11
	.ascii	"EExprParser"

.const_data
	.align 2
.globl	_VMT_FPEXPRPARS_EEXPRPARSER
_VMT_FPEXPRPARS_EEXPRPARSER:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$FPEXPRPARS$_Ld299
	.long	0,0
	.long	_$FPEXPRPARS$_Ld300
	.long	_RTTI_FPEXPRPARS_EEXPRPARSER
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
.globl	_THREADVARLIST_FPEXPRPARS
_THREADVARLIST_FPEXPRPARS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$FPEXPRPARS$_Ld303
_$FPEXPRPARS$_Ld303:
	.short	0,1
	.long	0,-1,10
.reference _$FPEXPRPARS$_Ld302
.globl	_$FPEXPRPARS$_Ld302
_$FPEXPRPARS$_Ld302:
.reference _$FPEXPRPARS$_Ld303
	.ascii	"FPEXPRPARS\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld305
_$FPEXPRPARS$_Ld305:
	.short	0,1
	.long	0,-1,19
.reference _$FPEXPRPARS$_Ld304
.globl	_$FPEXPRPARS$_Ld304
_$FPEXPRPARS$_Ld304:
.reference _$FPEXPRPARS$_Ld305
	.ascii	"Unterminated string\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld307
_$FPEXPRPARS$_Ld307:
	.short	0,1
	.long	0,-1,21
.reference _$FPEXPRPARS$_Ld306
.globl	_$FPEXPRPARS$_Ld306
_$FPEXPRPARS$_Ld306:
.reference _$FPEXPRPARS$_Ld307
	.ascii	"fpexprpars.sbadquotes\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld309
_$FPEXPRPARS$_Ld309:
	.short	0,1
	.long	0,-1,33
.reference _$FPEXPRPARS$_Ld308
.globl	_$FPEXPRPARS$_Ld308
_$FPEXPRPARS$_Ld308:
.reference _$FPEXPRPARS$_Ld309
	.ascii	"Unknown delimiter character: \"%s\"\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld311
_$FPEXPRPARS$_Ld311:
	.short	0,1
	.long	0,-1,28
.reference _$FPEXPRPARS$_Ld310
.globl	_$FPEXPRPARS$_Ld310
_$FPEXPRPARS$_Ld310:
.reference _$FPEXPRPARS$_Ld311
	.ascii	"fpexprpars.sunknowndelimiter\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld313
_$FPEXPRPARS$_Ld313:
	.short	0,1
	.long	0,-1,33
.reference _$FPEXPRPARS$_Ld312
.globl	_$FPEXPRPARS$_Ld312
_$FPEXPRPARS$_Ld312:
.reference _$FPEXPRPARS$_Ld313
	.ascii	"Unknown character at pos %d: \"%s\"\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld315
_$FPEXPRPARS$_Ld315:
	.short	0,1
	.long	0,-1,31
.reference _$FPEXPRPARS$_Ld314
.globl	_$FPEXPRPARS$_Ld314
_$FPEXPRPARS$_Ld314:
.reference _$FPEXPRPARS$_Ld315
	.ascii	"fpexprpars.serrunknowncharacter\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld317
_$FPEXPRPARS$_Ld317:
	.short	0,1
	.long	0,-1,28
.reference _$FPEXPRPARS$_Ld316
.globl	_$FPEXPRPARS$_Ld316
_$FPEXPRPARS$_Ld316:
.reference _$FPEXPRPARS$_Ld317
	.ascii	"Unexpected end of expression\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld319
_$FPEXPRPARS$_Ld319:
	.short	0,1
	.long	0,-1,40
.reference _$FPEXPRPARS$_Ld318
.globl	_$FPEXPRPARS$_Ld318
_$FPEXPRPARS$_Ld318:
.reference _$FPEXPRPARS$_Ld319
	.ascii	"fpexprpars.serrunexpectedendofexpression\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld321
_$FPEXPRPARS$_Ld321:
	.short	0,1
	.long	0,-1,34
.reference _$FPEXPRPARS$_Ld320
.globl	_$FPEXPRPARS$_Ld320
_$FPEXPRPARS$_Ld320:
.reference _$FPEXPRPARS$_Ld321
	.ascii	"Internal error: Unknown comparison\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld323
_$FPEXPRPARS$_Ld323:
	.short	0,1
	.long	0,-1,32
.reference _$FPEXPRPARS$_Ld322
.globl	_$FPEXPRPARS$_Ld322
_$FPEXPRPARS$_Ld322:
.reference _$FPEXPRPARS$_Ld323
	.ascii	"fpexprpars.serrunknowncomparison\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld325
_$FPEXPRPARS$_Ld325:
	.short	0,1
	.long	0,-1,41
.reference _$FPEXPRPARS$_Ld324
.globl	_$FPEXPRPARS$_Ld324
_$FPEXPRPARS$_Ld324:
.reference _$FPEXPRPARS$_Ld325
	.ascii	"Internal error: Unknown boolean operation\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld327
_$FPEXPRPARS$_Ld327:
	.short	0,1
	.long	0,-1,31
.reference _$FPEXPRPARS$_Ld326
.globl	_$FPEXPRPARS$_Ld326
_$FPEXPRPARS$_Ld326:
.reference _$FPEXPRPARS$_Ld327
	.ascii	"fpexprpars.serrunknownbooleanop\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld329
_$FPEXPRPARS$_Ld329:
	.short	0,1
	.long	0,-1,45
.reference _$FPEXPRPARS$_Ld328
.globl	_$FPEXPRPARS$_Ld328
_$FPEXPRPARS$_Ld328:
.reference _$FPEXPRPARS$_Ld329
	.ascii	"Expected ) bracket at position %d, but got %s\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld331
_$FPEXPRPARS$_Ld331:
	.short	0,1
	.long	0,-1,30
.reference _$FPEXPRPARS$_Ld330
.globl	_$FPEXPRPARS$_Ld330
_$FPEXPRPARS$_Ld330:
.reference _$FPEXPRPARS$_Ld331
	.ascii	"fpexprpars.serrbracketexpected\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld333
_$FPEXPRPARS$_Ld333:
	.short	0,1
	.long	0,-1,28
.reference _$FPEXPRPARS$_Ld332
.globl	_$FPEXPRPARS$_Ld332
_$FPEXPRPARS$_Ld332:
.reference _$FPEXPRPARS$_Ld333
	.ascii	"Unknown token at pos %d : %s\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld335
_$FPEXPRPARS$_Ld335:
	.short	0,1
	.long	0,-1,32
.reference _$FPEXPRPARS$_Ld334
.globl	_$FPEXPRPARS$_Ld334
_$FPEXPRPARS$_Ld334:
.reference _$FPEXPRPARS$_Ld335
	.ascii	"fpexprpars.serrunknowntokenatpos\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld337
_$FPEXPRPARS$_Ld337:
	.short	0,1
	.long	0,-1,45
.reference _$FPEXPRPARS$_Ld336
.globl	_$FPEXPRPARS$_Ld336
_$FPEXPRPARS$_Ld336:
.reference _$FPEXPRPARS$_Ld337
	.ascii	"Expected ( bracket at position %d, but got %s\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld339
_$FPEXPRPARS$_Ld339:
	.short	0,1
	.long	0,-1,34
.reference _$FPEXPRPARS$_Ld338
.globl	_$FPEXPRPARS$_Ld338
_$FPEXPRPARS$_Ld338:
.reference _$FPEXPRPARS$_Ld339
	.ascii	"fpexprpars.serrleftbracketexpected\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld341
_$FPEXPRPARS$_Ld341:
	.short	0,1
	.long	0,-1,38
.reference _$FPEXPRPARS$_Ld340
.globl	_$FPEXPRPARS$_Ld340
_$FPEXPRPARS$_Ld340:
.reference _$FPEXPRPARS$_Ld341
	.ascii	"%s is not a valid floating-point value\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld343
_$FPEXPRPARS$_Ld343:
	.short	0,1
	.long	0,-1,27
.reference _$FPEXPRPARS$_Ld342
.globl	_$FPEXPRPARS$_Ld342
_$FPEXPRPARS$_Ld342:
.reference _$FPEXPRPARS$_Ld343
	.ascii	"fpexprpars.serrinvalidfloat\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld345
_$FPEXPRPARS$_Ld345:
	.short	0,1
	.long	0,-1,22
.reference _$FPEXPRPARS$_Ld344
.globl	_$FPEXPRPARS$_Ld344
_$FPEXPRPARS$_Ld344:
.reference _$FPEXPRPARS$_Ld345
	.ascii	"Unknown identifier: %s\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld347
_$FPEXPRPARS$_Ld347:
	.short	0,1
	.long	0,-1,32
.reference _$FPEXPRPARS$_Ld346
.globl	_$FPEXPRPARS$_Ld346
_$FPEXPRPARS$_Ld346:
.reference _$FPEXPRPARS$_Ld347
	.ascii	"fpexprpars.serrunknownidentifier\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld349
_$FPEXPRPARS$_Ld349:
	.short	0,1
	.long	0,-1,36
.reference _$FPEXPRPARS$_Ld348
.globl	_$FPEXPRPARS$_Ld348
_$FPEXPRPARS$_Ld348:
.reference _$FPEXPRPARS$_Ld349
	.ascii	"Cannot evaluate: error in expression\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld351
_$FPEXPRPARS$_Ld351:
	.short	0,1
	.long	0,-1,27
.reference _$FPEXPRPARS$_Ld350
.globl	_$FPEXPRPARS$_Ld350
_$FPEXPRPARS$_Ld350:
.reference _$FPEXPRPARS$_Ld351
	.ascii	"fpexprpars.serrinexpression\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld353
_$FPEXPRPARS$_Ld353:
	.short	0,1
	.long	0,-1,33
.reference _$FPEXPRPARS$_Ld352
.globl	_$FPEXPRPARS$_Ld352
_$FPEXPRPARS$_Ld352:
.reference _$FPEXPRPARS$_Ld353
	.ascii	"Cannot evaluate: empty expression\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld355
_$FPEXPRPARS$_Ld355:
	.short	0,1
	.long	0,-1,32
.reference _$FPEXPRPARS$_Ld354
.globl	_$FPEXPRPARS$_Ld354
_$FPEXPRPARS$_Ld354:
.reference _$FPEXPRPARS$_Ld355
	.ascii	"fpexprpars.serrinexpressionempty\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld357
_$FPEXPRPARS$_Ld357:
	.short	0,1
	.long	0,-1,45
.reference _$FPEXPRPARS$_Ld356
.globl	_$FPEXPRPARS$_Ld356
_$FPEXPRPARS$_Ld356:
.reference _$FPEXPRPARS$_Ld357
	.ascii	"Expected comma (,) at position %d, but got %s\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld359
_$FPEXPRPARS$_Ld359:
	.short	0,1
	.long	0,-1,28
.reference _$FPEXPRPARS$_Ld358
.globl	_$FPEXPRPARS$_Ld358
_$FPEXPRPARS$_Ld358:
.reference _$FPEXPRPARS$_Ld359
	.ascii	"fpexprpars.serrcommaexpected\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld361
_$FPEXPRPARS$_Ld361:
	.short	0,1
	.long	0,-1,35
.reference _$FPEXPRPARS$_Ld360
.globl	_$FPEXPRPARS$_Ld360
_$FPEXPRPARS$_Ld360:
.reference _$FPEXPRPARS$_Ld361
	.ascii	"Unexpected character in number : %s\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld363
_$FPEXPRPARS$_Ld363:
	.short	0,1
	.long	0,-1,32
.reference _$FPEXPRPARS$_Ld362
.globl	_$FPEXPRPARS$_Ld362
_$FPEXPRPARS$_Ld362:
.reference _$FPEXPRPARS$_Ld363
	.ascii	"fpexprpars.serrinvalidnumberchar\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld365
_$FPEXPRPARS$_Ld365:
	.short	0,1
	.long	0,-1,28
.reference _$FPEXPRPARS$_Ld364
.globl	_$FPEXPRPARS$_Ld364
_$FPEXPRPARS$_Ld364:
.reference _$FPEXPRPARS$_Ld365
	.ascii	"Invalid numerical value : %s\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld367
_$FPEXPRPARS$_Ld367:
	.short	0,1
	.long	0,-1,28
.reference _$FPEXPRPARS$_Ld366
.globl	_$FPEXPRPARS$_Ld366
_$FPEXPRPARS$_Ld366:
.reference _$FPEXPRPARS$_Ld367
	.ascii	"fpexprpars.serrinvalidnumber\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld369
_$FPEXPRPARS$_Ld369:
	.short	0,1
	.long	0,-1,33
.reference _$FPEXPRPARS$_Ld368
.globl	_$FPEXPRPARS$_Ld368
_$FPEXPRPARS$_Ld368:
.reference _$FPEXPRPARS$_Ld369
	.ascii	"No operand for unary operation %s\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld371
_$FPEXPRPARS$_Ld371:
	.short	0,1
	.long	0,-1,24
.reference _$FPEXPRPARS$_Ld370
.globl	_$FPEXPRPARS$_Ld370
_$FPEXPRPARS$_Ld370:
.reference _$FPEXPRPARS$_Ld371
	.ascii	"fpexprpars.serrnooperand\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld373
_$FPEXPRPARS$_Ld373:
	.short	0,1
	.long	0,-1,39
.reference _$FPEXPRPARS$_Ld372
.globl	_$FPEXPRPARS$_Ld372
_$FPEXPRPARS$_Ld372:
.reference _$FPEXPRPARS$_Ld373
	.ascii	"No left operand for binary operation %s\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld375
_$FPEXPRPARS$_Ld375:
	.short	0,1
	.long	0,-1,28
.reference _$FPEXPRPARS$_Ld374
.globl	_$FPEXPRPARS$_Ld374
_$FPEXPRPARS$_Ld374:
.reference _$FPEXPRPARS$_Ld375
	.ascii	"fpexprpars.serrnoleftoperand\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld377
_$FPEXPRPARS$_Ld377:
	.short	0,1
	.long	0,-1,39
.reference _$FPEXPRPARS$_Ld376
.globl	_$FPEXPRPARS$_Ld376
_$FPEXPRPARS$_Ld376:
.reference _$FPEXPRPARS$_Ld377
	.ascii	"No left operand for binary operation %s\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld379
_$FPEXPRPARS$_Ld379:
	.short	0,1
	.long	0,-1,29
.reference _$FPEXPRPARS$_Ld378
.globl	_$FPEXPRPARS$_Ld378
_$FPEXPRPARS$_Ld378:
.reference _$FPEXPRPARS$_Ld379
	.ascii	"fpexprpars.serrnorightoperand\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld381
_$FPEXPRPARS$_Ld381:
	.short	0,1
	.long	0,-1,40
.reference _$FPEXPRPARS$_Ld380
.globl	_$FPEXPRPARS$_Ld380
_$FPEXPRPARS$_Ld380:
.reference _$FPEXPRPARS$_Ld381
	.ascii	"Cannot negate expression of type %s : %s\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld383
_$FPEXPRPARS$_Ld383:
	.short	0,1
	.long	0,-1,25
.reference _$FPEXPRPARS$_Ld382
.globl	_$FPEXPRPARS$_Ld382
_$FPEXPRPARS$_Ld382:
.reference _$FPEXPRPARS$_Ld383
	.ascii	"fpexprpars.serrnonegation\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld385
_$FPEXPRPARS$_Ld385:
	.short	0,1
	.long	0,-1,49
.reference _$FPEXPRPARS$_Ld384
.globl	_$FPEXPRPARS$_Ld384
_$FPEXPRPARS$_Ld384:
.reference _$FPEXPRPARS$_Ld385
	.ascii	"Cannot perform \"not\" on expression of type %s: %s"
	.ascii	"\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld387
_$FPEXPRPARS$_Ld387:
	.short	0,1
	.long	0,-1,29
.reference _$FPEXPRPARS$_Ld386
.globl	_$FPEXPRPARS$_Ld386
_$FPEXPRPARS$_Ld386:
.reference _$FPEXPRPARS$_Ld387
	.ascii	"fpexprpars.serrnonotoperation\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld389
_$FPEXPRPARS$_Ld389:
	.short	0,1
	.long	0,-1,52
.reference _$FPEXPRPARS$_Ld388
.globl	_$FPEXPRPARS$_Ld388
_$FPEXPRPARS$_Ld388:
.reference _$FPEXPRPARS$_Ld389
	.ascii	"Type mismatch: %s<>%s for expressions \"%s\" and \""
	.ascii	"%s\".\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld391
_$FPEXPRPARS$_Ld391:
	.short	0,1
	.long	0,-1,30
.reference _$FPEXPRPARS$_Ld390
.globl	_$FPEXPRPARS$_Ld390
_$FPEXPRPARS$_Ld390:
.reference _$FPEXPRPARS$_Ld391
	.ascii	"fpexprpars.serrtypesdonotmatch\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld393
_$FPEXPRPARS$_Ld393:
	.short	0,1
	.long	0,-1,57
.reference _$FPEXPRPARS$_Ld392
.globl	_$FPEXPRPARS$_Ld392
_$FPEXPRPARS$_Ld392:
.reference _$FPEXPRPARS$_Ld393
	.ascii	"Incompatible types: %s<>%s for expressions \"%s\" a"
	.ascii	"nd \"%s\".\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld395
_$FPEXPRPARS$_Ld395:
	.short	0,1
	.long	0,-1,32
.reference _$FPEXPRPARS$_Ld394
.globl	_$FPEXPRPARS$_Ld394
_$FPEXPRPARS$_Ld394:
.reference _$FPEXPRPARS$_Ld395
	.ascii	"fpexprpars.serrtypesincompatible\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld397
_$FPEXPRPARS$_Ld397:
	.short	0,1
	.long	0,-1,34
.reference _$FPEXPRPARS$_Ld396
.globl	_$FPEXPRPARS$_Ld396
_$FPEXPRPARS$_Ld396:
.reference _$FPEXPRPARS$_Ld397
	.ascii	"Internal error: No node to check !\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld399
_$FPEXPRPARS$_Ld399:
	.short	0,1
	.long	0,-1,28
.reference _$FPEXPRPARS$_Ld398
.globl	_$FPEXPRPARS$_Ld398
_$FPEXPRPARS$_Ld398:
.reference _$FPEXPRPARS$_Ld399
	.ascii	"fpexprpars.serrnonodetocheck\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld401
_$FPEXPRPARS$_Ld401:
	.short	0,1
	.long	0,-1,59
.reference _$FPEXPRPARS$_Ld400
.globl	_$FPEXPRPARS$_Ld400
_$FPEXPRPARS$_Ld400:
.reference _$FPEXPRPARS$_Ld401
	.ascii	"Node type (%s) not in allowed types (%s) for expres"
	.ascii	"sion: %s\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld403
_$FPEXPRPARS$_Ld403:
	.short	0,1
	.long	0,-1,27
.reference _$FPEXPRPARS$_Ld402
.globl	_$FPEXPRPARS$_Ld402
_$FPEXPRPARS$_Ld402:
.reference _$FPEXPRPARS$_Ld403
	.ascii	"fpexprpars.sinvalidnodetype\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld405
_$FPEXPRPARS$_Ld405:
	.short	0,1
	.long	0,-1,60
.reference _$FPEXPRPARS$_Ld404
.globl	_$FPEXPRPARS$_Ld404
_$FPEXPRPARS$_Ld404:
.reference _$FPEXPRPARS$_Ld405
	.ascii	"Badly terminated expression. Found token at positio"
	.ascii	"n %d : %s\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld407
_$FPEXPRPARS$_Ld407:
	.short	0,1
	.long	0,-1,37
.reference _$FPEXPRPARS$_Ld406
.globl	_$FPEXPRPARS$_Ld406
_$FPEXPRPARS$_Ld406:
.reference _$FPEXPRPARS$_Ld407
	.ascii	"fpexprpars.serrunterminatedexpression\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld409
_$FPEXPRPARS$_Ld409:
	.short	0,1
	.long	0,-1,44
.reference _$FPEXPRPARS$_Ld408
.globl	_$FPEXPRPARS$_Ld408
_$FPEXPRPARS$_Ld408:
.reference _$FPEXPRPARS$_Ld409
	.ascii	"An identifier with name \"%s\" already exists.\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld411
_$FPEXPRPARS$_Ld411:
	.short	0,1
	.long	0,-1,34
.reference _$FPEXPRPARS$_Ld410
.globl	_$FPEXPRPARS$_Ld410
_$FPEXPRPARS$_Ld410:
.reference _$FPEXPRPARS$_Ld411
	.ascii	"fpexprpars.serrduplicateidentifier\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld413
_$FPEXPRPARS$_Ld413:
	.short	0,1
	.long	0,-1,41
.reference _$FPEXPRPARS$_Ld412
.globl	_$FPEXPRPARS$_Ld412
_$FPEXPRPARS$_Ld412:
.reference _$FPEXPRPARS$_Ld413
	.ascii	"\"%s\" is not a valid return type indicator\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld415
_$FPEXPRPARS$_Ld415:
	.short	0,1
	.long	0,-1,37
.reference _$FPEXPRPARS$_Ld414
.globl	_$FPEXPRPARS$_Ld414
_$FPEXPRPARS$_Ld414:
.reference _$FPEXPRPARS$_Ld415
	.ascii	"fpexprpars.serrinvalidresultcharacter\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld417
_$FPEXPRPARS$_Ld417:
	.short	0,1
	.long	0,-1,38
.reference _$FPEXPRPARS$_Ld416
.globl	_$FPEXPRPARS$_Ld416
_$FPEXPRPARS$_Ld416:
.reference _$FPEXPRPARS$_Ld417
	.ascii	"Invalid argument count for function %s\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld419
_$FPEXPRPARS$_Ld419:
	.short	0,1
	.long	0,-1,34
.reference _$FPEXPRPARS$_Ld418
.globl	_$FPEXPRPARS$_Ld418
_$FPEXPRPARS$_Ld418:
.reference _$FPEXPRPARS$_Ld419
	.ascii	"fpexprpars.errinvalidargumentcount\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld421
_$FPEXPRPARS$_Ld421:
	.short	0,1
	.long	0,-1,49
.reference _$FPEXPRPARS$_Ld420
.globl	_$FPEXPRPARS$_Ld420
_$FPEXPRPARS$_Ld420:
.reference _$FPEXPRPARS$_Ld421
	.ascii	"Invalid type for argument %d: Expected %s, got %s\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld423
_$FPEXPRPARS$_Ld423:
	.short	0,1
	.long	0,-1,34
.reference _$FPEXPRPARS$_Ld422
.globl	_$FPEXPRPARS$_Ld422
_$FPEXPRPARS$_Ld422:
.reference _$FPEXPRPARS$_Ld423
	.ascii	"fpexprpars.serrinvalidargumenttype\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld425
_$FPEXPRPARS$_Ld425:
	.short	0,1
	.long	0,-1,23
.reference _$FPEXPRPARS$_Ld424
.globl	_$FPEXPRPARS$_Ld424
_$FPEXPRPARS$_Ld424:
.reference _$FPEXPRPARS$_Ld425
	.ascii	"Invalid result type: %s\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld427
_$FPEXPRPARS$_Ld427:
	.short	0,1
	.long	0,-1,32
.reference _$FPEXPRPARS$_Ld426
.globl	_$FPEXPRPARS$_Ld426
_$FPEXPRPARS$_Ld426:
.reference _$FPEXPRPARS$_Ld427
	.ascii	"fpexprpars.serrinvalidresulttype\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld429
_$FPEXPRPARS$_Ld429:
	.short	0,1
	.long	0,-1,31
.reference _$FPEXPRPARS$_Ld428
.globl	_$FPEXPRPARS$_Ld428
_$FPEXPRPARS$_Ld428:
.reference _$FPEXPRPARS$_Ld429
	.ascii	"Identifier %s is not a variable\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld431
_$FPEXPRPARS$_Ld431:
	.short	0,1
	.long	0,-1,26
.reference _$FPEXPRPARS$_Ld430
.globl	_$FPEXPRPARS$_Ld430
_$FPEXPRPARS$_Ld430:
.reference _$FPEXPRPARS$_Ld431
	.ascii	"fpexprpars.serrnotvariable\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld433
_$FPEXPRPARS$_Ld433:
	.short	0,1
	.long	0,-1,51
.reference _$FPEXPRPARS$_Ld432
.globl	_$FPEXPRPARS$_Ld432
_$FPEXPRPARS$_Ld432:
.reference _$FPEXPRPARS$_Ld433
	.ascii	"Operation not allowed while an expression is active"
	.ascii	"\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld435
_$FPEXPRPARS$_Ld435:
	.short	0,1
	.long	0,-1,23
.reference _$FPEXPRPARS$_Ld434
.globl	_$FPEXPRPARS$_Ld434
_$FPEXPRPARS$_Ld434:
.reference _$FPEXPRPARS$_Ld435
	.ascii	"fpexprpars.serrinactive\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld437
_$FPEXPRPARS$_Ld437:
	.short	0,1
	.long	0,-1,48
.reference _$FPEXPRPARS$_Ld436
.globl	_$FPEXPRPARS$_Ld436
_$FPEXPRPARS$_Ld436:
.reference _$FPEXPRPARS$_Ld437
	.ascii	"First argument to IF must be of type boolean: %s\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld439
_$FPEXPRPARS$_Ld439:
	.short	0,1
	.long	0,-1,29
.reference _$FPEXPRPARS$_Ld438
.globl	_$FPEXPRPARS$_Ld438
_$FPEXPRPARS$_Ld438:
.reference _$FPEXPRPARS$_Ld439
	.ascii	"fpexprpars.serrifneedsboolean\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld441
_$FPEXPRPARS$_Ld441:
	.short	0,1
	.long	0,-1,49
.reference _$FPEXPRPARS$_Ld440
.globl	_$FPEXPRPARS$_Ld440
_$FPEXPRPARS$_Ld440:
.reference _$FPEXPRPARS$_Ld441
	.ascii	"Case statement needs to have at least 4 arguments\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld443
_$FPEXPRPARS$_Ld443:
	.short	0,1
	.long	0,-1,25
.reference _$FPEXPRPARS$_Ld442
.globl	_$FPEXPRPARS$_Ld442
_$FPEXPRPARS$_Ld442:
.reference _$FPEXPRPARS$_Ld443
	.ascii	"fpexprpars.serrcaseneeds3\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld445
_$FPEXPRPARS$_Ld445:
	.short	0,1
	.long	0,-1,56
.reference _$FPEXPRPARS$_Ld444
.globl	_$FPEXPRPARS$_Ld444
_$FPEXPRPARS$_Ld444:
.reference _$FPEXPRPARS$_Ld445
	.ascii	"Case statement needs to have an even number of argu"
	.ascii	"ments\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld447
_$FPEXPRPARS$_Ld447:
	.short	0,1
	.long	0,-1,28
.reference _$FPEXPRPARS$_Ld446
.globl	_$FPEXPRPARS$_Ld446
_$FPEXPRPARS$_Ld446:
.reference _$FPEXPRPARS$_Ld447
	.ascii	"fpexprpars.serrcaseevencount\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld449
_$FPEXPRPARS$_Ld449:
	.short	0,1
	.long	0,-1,47
.reference _$FPEXPRPARS$_Ld448
.globl	_$FPEXPRPARS$_Ld448
_$FPEXPRPARS$_Ld448:
.reference _$FPEXPRPARS$_Ld449
	.ascii	"Case label %d \"%s\" is not a constant expression\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld451
_$FPEXPRPARS$_Ld451:
	.short	0,1
	.long	0,-1,33
.reference _$FPEXPRPARS$_Ld450
.globl	_$FPEXPRPARS$_Ld450
_$FPEXPRPARS$_Ld450:
.reference _$FPEXPRPARS$_Ld451
	.ascii	"fpexprpars.serrcaselabelnotaconst\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld453
_$FPEXPRPARS$_Ld453:
	.short	0,1
	.long	0,-1,49
.reference _$FPEXPRPARS$_Ld452
.globl	_$FPEXPRPARS$_Ld452
_$FPEXPRPARS$_Ld452:
.reference _$FPEXPRPARS$_Ld453
	.ascii	"Case label %d \"%s\" needs type %s, but has type %s"
	.ascii	"\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld455
_$FPEXPRPARS$_Ld455:
	.short	0,1
	.long	0,-1,28
.reference _$FPEXPRPARS$_Ld454
.globl	_$FPEXPRPARS$_Ld454
_$FPEXPRPARS$_Ld454:
.reference _$FPEXPRPARS$_Ld455
	.ascii	"fpexprpars.serrcaselabeltype\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld457
_$FPEXPRPARS$_Ld457:
	.short	0,1
	.long	0,-1,49
.reference _$FPEXPRPARS$_Ld456
.globl	_$FPEXPRPARS$_Ld456
_$FPEXPRPARS$_Ld456:
.reference _$FPEXPRPARS$_Ld457
	.ascii	"Case value %d \"%s\" needs type %s, but has type %s"
	.ascii	"\000"
	.align 2
.globl	_$FPEXPRPARS$_Ld459
_$FPEXPRPARS$_Ld459:
	.short	0,1
	.long	0,-1,28
.reference _$FPEXPRPARS$_Ld458
.globl	_$FPEXPRPARS$_Ld458
_$FPEXPRPARS$_Ld458:
.reference _$FPEXPRPARS$_Ld459
	.ascii	"fpexprpars.serrcasevaluetype\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 3
.globl	_$FPEXPRPARS$_Ld1
_$FPEXPRPARS$_Ld1:
	.byte	0,38,0,0,33,191,0,112,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld3
_$FPEXPRPARS$_Ld3:
	.short	0,1
	.long	0,-1,2
.reference _$FPEXPRPARS$_Ld2
.globl	_$FPEXPRPARS$_Ld2
_$FPEXPRPARS$_Ld2:
.reference _$FPEXPRPARS$_Ld3
	.ascii	"or\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld5
_$FPEXPRPARS$_Ld5:
	.short	0,1
	.long	0,-1,3
.reference _$FPEXPRPARS$_Ld4
.globl	_$FPEXPRPARS$_Ld4
_$FPEXPRPARS$_Ld4:
.reference _$FPEXPRPARS$_Ld5
	.ascii	"xor\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld7
_$FPEXPRPARS$_Ld7:
	.short	0,1
	.long	0,-1,3
.reference _$FPEXPRPARS$_Ld6
.globl	_$FPEXPRPARS$_Ld6
_$FPEXPRPARS$_Ld6:
.reference _$FPEXPRPARS$_Ld7
	.ascii	"and\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld9
_$FPEXPRPARS$_Ld9:
	.short	0,1
	.long	0,-1,4
.reference _$FPEXPRPARS$_Ld8
.globl	_$FPEXPRPARS$_Ld8
_$FPEXPRPARS$_Ld8:
.reference _$FPEXPRPARS$_Ld9
	.ascii	"true\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld11
_$FPEXPRPARS$_Ld11:
	.short	0,1
	.long	0,-1,5
.reference _$FPEXPRPARS$_Ld10
.globl	_$FPEXPRPARS$_Ld10
_$FPEXPRPARS$_Ld10:
.reference _$FPEXPRPARS$_Ld11
	.ascii	"false\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld13
_$FPEXPRPARS$_Ld13:
	.short	0,1
	.long	0,-1,3
.reference _$FPEXPRPARS$_Ld12
.globl	_$FPEXPRPARS$_Ld12
_$FPEXPRPARS$_Ld12:
.reference _$FPEXPRPARS$_Ld13
	.ascii	"not\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld15
_$FPEXPRPARS$_Ld15:
	.short	0,1
	.long	0,-1,2
.reference _$FPEXPRPARS$_Ld14
.globl	_$FPEXPRPARS$_Ld14
_$FPEXPRPARS$_Ld14:
.reference _$FPEXPRPARS$_Ld15
	.ascii	"if\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld17
_$FPEXPRPARS$_Ld17:
	.short	0,1
	.long	0,-1,4
.reference _$FPEXPRPARS$_Ld16
.globl	_$FPEXPRPARS$_Ld16
_$FPEXPRPARS$_Ld16:
.reference _$FPEXPRPARS$_Ld17
	.ascii	"case\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld19
_$FPEXPRPARS$_Ld19:
	.short	0,1
	.long	0,-1,4
.reference _$FPEXPRPARS$_Ld18
.globl	_$FPEXPRPARS$_Ld18
_$FPEXPRPARS$_Ld18:
.reference _$FPEXPRPARS$_Ld19
	.ascii	"True\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld21
_$FPEXPRPARS$_Ld21:
	.short	0,1
	.long	0,-1,5
.reference _$FPEXPRPARS$_Ld20
.globl	_$FPEXPRPARS$_Ld20
_$FPEXPRPARS$_Ld20:
.reference _$FPEXPRPARS$_Ld21
	.ascii	"False\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld23
_$FPEXPRPARS$_Ld23:
	.short	0,1
	.long	0,-1,4
.reference _$FPEXPRPARS$_Ld22
.globl	_$FPEXPRPARS$_Ld22
_$FPEXPRPARS$_Ld22:
.reference _$FPEXPRPARS$_Ld23
	.ascii	"cccc\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld25
_$FPEXPRPARS$_Ld25:
	.short	0,1
	.long	0,-1,1
.reference _$FPEXPRPARS$_Ld24
.globl	_$FPEXPRPARS$_Ld24
_$FPEXPRPARS$_Ld24:
.reference _$FPEXPRPARS$_Ld25
	.ascii	"'\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld27
_$FPEXPRPARS$_Ld27:
	.short	0,1
	.long	0,-1,1
.reference _$FPEXPRPARS$_Ld26
.globl	_$FPEXPRPARS$_Ld26
_$FPEXPRPARS$_Ld26:
.reference _$FPEXPRPARS$_Ld27
	.ascii	"-\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld29
_$FPEXPRPARS$_Ld29:
	.short	0,1
	.long	0,-1,5
.reference _$FPEXPRPARS$_Ld28
.globl	_$FPEXPRPARS$_Ld28
_$FPEXPRPARS$_Ld28:
.reference _$FPEXPRPARS$_Ld29
	.ascii	" and \000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld31
_$FPEXPRPARS$_Ld31:
	.short	0,1
	.long	0,-1,1
.reference _$FPEXPRPARS$_Ld30
.globl	_$FPEXPRPARS$_Ld30
_$FPEXPRPARS$_Ld30:
.reference _$FPEXPRPARS$_Ld31
	.ascii	",\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld33
_$FPEXPRPARS$_Ld33:
	.short	0,1
	.long	0,-1,4
.reference _$FPEXPRPARS$_Ld32
.globl	_$FPEXPRPARS$_Ld32
_$FPEXPRPARS$_Ld32:
.reference _$FPEXPRPARS$_Ld33
	.ascii	" or \000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld35
_$FPEXPRPARS$_Ld35:
	.short	0,1
	.long	0,-1,5
.reference _$FPEXPRPARS$_Ld34
.globl	_$FPEXPRPARS$_Ld34
_$FPEXPRPARS$_Ld34:
.reference _$FPEXPRPARS$_Ld35
	.ascii	" xor \000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld37
_$FPEXPRPARS$_Ld37:
	.short	0,1
	.long	0,-1,4
.reference _$FPEXPRPARS$_Ld36
.globl	_$FPEXPRPARS$_Ld36
_$FPEXPRPARS$_Ld36:
.reference _$FPEXPRPARS$_Ld37
	.ascii	"not \000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld39
_$FPEXPRPARS$_Ld39:
	.short	0,1
	.long	0,-1,16
.reference _$FPEXPRPARS$_Ld38
.globl	_$FPEXPRPARS$_Ld38
_$FPEXPRPARS$_Ld38:
.reference _$FPEXPRPARS$_Ld39
	.ascii	"if(%s , %s , %s)\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld41
_$FPEXPRPARS$_Ld41:
	.short	0,1
	.long	0,-1,2
.reference _$FPEXPRPARS$_Ld40
.globl	_$FPEXPRPARS$_Ld40
_$FPEXPRPARS$_Ld40:
.reference _$FPEXPRPARS$_Ld41
	.ascii	", \000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld43
_$FPEXPRPARS$_Ld43:
	.short	0,1
	.long	0,-1,5
.reference _$FPEXPRPARS$_Ld42
.globl	_$FPEXPRPARS$_Ld42
_$FPEXPRPARS$_Ld42:
.reference _$FPEXPRPARS$_Ld43
	.ascii	"Case(\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld45
_$FPEXPRPARS$_Ld45:
	.short	0,1
	.long	0,-1,1
.reference _$FPEXPRPARS$_Ld44
.globl	_$FPEXPRPARS$_Ld44
_$FPEXPRPARS$_Ld44:
.reference _$FPEXPRPARS$_Ld45
	.ascii	")\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld47
_$FPEXPRPARS$_Ld47:
	.short	0,1
	.long	0,-1,3
.reference _$FPEXPRPARS$_Ld46
.globl	_$FPEXPRPARS$_Ld46
_$FPEXPRPARS$_Ld46:
.reference _$FPEXPRPARS$_Ld47
	.ascii	" = \000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld49
_$FPEXPRPARS$_Ld49:
	.short	0,1
	.long	0,-1,4
.reference _$FPEXPRPARS$_Ld48
.globl	_$FPEXPRPARS$_Ld48
_$FPEXPRPARS$_Ld48:
.reference _$FPEXPRPARS$_Ld49
	.ascii	" <> \000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld51
_$FPEXPRPARS$_Ld51:
	.short	0,1
	.long	0,-1,3
.reference _$FPEXPRPARS$_Ld50
.globl	_$FPEXPRPARS$_Ld50
_$FPEXPRPARS$_Ld50:
.reference _$FPEXPRPARS$_Ld51
	.ascii	" < \000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld53
_$FPEXPRPARS$_Ld53:
	.short	0,1
	.long	0,-1,3
.reference _$FPEXPRPARS$_Ld52
.globl	_$FPEXPRPARS$_Ld52
_$FPEXPRPARS$_Ld52:
.reference _$FPEXPRPARS$_Ld53
	.ascii	" > \000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld55
_$FPEXPRPARS$_Ld55:
	.short	0,1
	.long	0,-1,4
.reference _$FPEXPRPARS$_Ld54
.globl	_$FPEXPRPARS$_Ld54
_$FPEXPRPARS$_Ld54:
.reference _$FPEXPRPARS$_Ld55
	.ascii	" >= \000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld57
_$FPEXPRPARS$_Ld57:
	.short	0,1
	.long	0,-1,4
.reference _$FPEXPRPARS$_Ld56
.globl	_$FPEXPRPARS$_Ld56
_$FPEXPRPARS$_Ld56:
.reference _$FPEXPRPARS$_Ld57
	.ascii	" <= \000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld59
_$FPEXPRPARS$_Ld59:
	.short	0,1
	.long	0,-1,3
.reference _$FPEXPRPARS$_Ld58
.globl	_$FPEXPRPARS$_Ld58
_$FPEXPRPARS$_Ld58:
.reference _$FPEXPRPARS$_Ld59
	.ascii	" + \000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld61
_$FPEXPRPARS$_Ld61:
	.short	0,1
	.long	0,-1,3
.reference _$FPEXPRPARS$_Ld60
.globl	_$FPEXPRPARS$_Ld60
_$FPEXPRPARS$_Ld60:
.reference _$FPEXPRPARS$_Ld61
	.ascii	" - \000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld63
_$FPEXPRPARS$_Ld63:
	.short	0,1
	.long	0,-1,3
.reference _$FPEXPRPARS$_Ld62
.globl	_$FPEXPRPARS$_Ld62
_$FPEXPRPARS$_Ld62:
.reference _$FPEXPRPARS$_Ld63
	.ascii	" * \000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld65
_$FPEXPRPARS$_Ld65:
	.short	0,1
	.long	0,-1,3
.reference _$FPEXPRPARS$_Ld64
.globl	_$FPEXPRPARS$_Ld64
_$FPEXPRPARS$_Ld64:
.reference _$FPEXPRPARS$_Ld65
	.ascii	" / \000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld67
_$FPEXPRPARS$_Ld67:
	.short	0,1
	.long	0,-1,1
.reference _$FPEXPRPARS$_Ld66
.globl	_$FPEXPRPARS$_Ld66
_$FPEXPRPARS$_Ld66:
.reference _$FPEXPRPARS$_Ld67
	.ascii	"(\000"

.const
	.align 3
.globl	_$FPEXPRPARS$_Ld68
_$FPEXPRPARS$_Ld68:
	.byte	23,172,168,170,221,141,93,147,0,64

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld69
_$FPEXPRPARS$_Ld69:
	.ascii	"\002pi\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld71
_$FPEXPRPARS$_Ld71:
	.short	0,1
	.long	0,-1,1
.reference _$FPEXPRPARS$_Ld70
.globl	_$FPEXPRPARS$_Ld70
_$FPEXPRPARS$_Ld70:
.reference _$FPEXPRPARS$_Ld71
	.ascii	"F\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld72
_$FPEXPRPARS$_Ld72:
	.ascii	"\003cos\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld73
_$FPEXPRPARS$_Ld73:
	.ascii	"\003sin\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld74
_$FPEXPRPARS$_Ld74:
	.ascii	"\006arctan\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld75
_$FPEXPRPARS$_Ld75:
	.ascii	"\003abs\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld76
_$FPEXPRPARS$_Ld76:
	.ascii	"\003sqr\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld77
_$FPEXPRPARS$_Ld77:
	.ascii	"\004sqrt\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld78
_$FPEXPRPARS$_Ld78:
	.ascii	"\003exp\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld79
_$FPEXPRPARS$_Ld79:
	.ascii	"\002ln\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld80
_$FPEXPRPARS$_Ld80:
	.ascii	"\003log\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld81
_$FPEXPRPARS$_Ld81:
	.ascii	"\004frac\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld82
_$FPEXPRPARS$_Ld82:
	.ascii	"\003int\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld83
_$FPEXPRPARS$_Ld83:
	.ascii	"\005round\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld84
_$FPEXPRPARS$_Ld84:
	.ascii	"\005trunc\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld86
_$FPEXPRPARS$_Ld86:
	.short	0,1
	.long	0,-1,1
.reference _$FPEXPRPARS$_Ld85
.globl	_$FPEXPRPARS$_Ld85
_$FPEXPRPARS$_Ld85:
.reference _$FPEXPRPARS$_Ld86
	.ascii	"S\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld87
_$FPEXPRPARS$_Ld87:
	.ascii	"\006length\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld89
_$FPEXPRPARS$_Ld89:
	.short	0,1
	.long	0,-1,3
.reference _$FPEXPRPARS$_Ld88
.globl	_$FPEXPRPARS$_Ld88
_$FPEXPRPARS$_Ld88:
.reference _$FPEXPRPARS$_Ld89
	.ascii	"SII\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld90
_$FPEXPRPARS$_Ld90:
	.ascii	"\004copy\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld91
_$FPEXPRPARS$_Ld91:
	.ascii	"\006delete\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld93
_$FPEXPRPARS$_Ld93:
	.short	0,1
	.long	0,-1,2
.reference _$FPEXPRPARS$_Ld92
.globl	_$FPEXPRPARS$_Ld92
_$FPEXPRPARS$_Ld92:
.reference _$FPEXPRPARS$_Ld93
	.ascii	"SS\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld94
_$FPEXPRPARS$_Ld94:
	.ascii	"\003pos\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld95
_$FPEXPRPARS$_Ld95:
	.ascii	"\011lowercase\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld96
_$FPEXPRPARS$_Ld96:
	.ascii	"\011uppercase\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld98
_$FPEXPRPARS$_Ld98:
	.short	0,1
	.long	0,-1,5
.reference _$FPEXPRPARS$_Ld97
.globl	_$FPEXPRPARS$_Ld97
_$FPEXPRPARS$_Ld97:
.reference _$FPEXPRPARS$_Ld98
	.ascii	"SSSBB\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld99
_$FPEXPRPARS$_Ld99:
	.ascii	"\015stringreplace\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld100
_$FPEXPRPARS$_Ld100:
	.ascii	"\013comparetext\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld101
_$FPEXPRPARS$_Ld101:
	.ascii	"\004date\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld102
_$FPEXPRPARS$_Ld102:
	.ascii	"\004time\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld103
_$FPEXPRPARS$_Ld103:
	.ascii	"\003now\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld105
_$FPEXPRPARS$_Ld105:
	.short	0,1
	.long	0,-1,1
.reference _$FPEXPRPARS$_Ld104
.globl	_$FPEXPRPARS$_Ld104
_$FPEXPRPARS$_Ld104:
.reference _$FPEXPRPARS$_Ld105
	.ascii	"D\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld106
_$FPEXPRPARS$_Ld106:
	.ascii	"\011dayofweek\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld107
_$FPEXPRPARS$_Ld107:
	.ascii	"\013extractyear\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld108
_$FPEXPRPARS$_Ld108:
	.ascii	"\014extractmonth\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld109
_$FPEXPRPARS$_Ld109:
	.ascii	"\012extractday\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld110
_$FPEXPRPARS$_Ld110:
	.ascii	"\013extracthour\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld111
_$FPEXPRPARS$_Ld111:
	.ascii	"\012extractmin\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld112
_$FPEXPRPARS$_Ld112:
	.ascii	"\012extractsec\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld113
_$FPEXPRPARS$_Ld113:
	.ascii	"\013extractmsec\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld115
_$FPEXPRPARS$_Ld115:
	.short	0,1
	.long	0,-1,3
.reference _$FPEXPRPARS$_Ld114
.globl	_$FPEXPRPARS$_Ld114
_$FPEXPRPARS$_Ld114:
.reference _$FPEXPRPARS$_Ld115
	.ascii	"III\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld116
_$FPEXPRPARS$_Ld116:
	.ascii	"\012encodedate\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld118
_$FPEXPRPARS$_Ld118:
	.short	0,1
	.long	0,-1,4
.reference _$FPEXPRPARS$_Ld117
.globl	_$FPEXPRPARS$_Ld117
_$FPEXPRPARS$_Ld117:
.reference _$FPEXPRPARS$_Ld118
	.ascii	"IIII\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld119
_$FPEXPRPARS$_Ld119:
	.ascii	"\012encodetime\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld121
_$FPEXPRPARS$_Ld121:
	.short	0,1
	.long	0,-1,7
.reference _$FPEXPRPARS$_Ld120
.globl	_$FPEXPRPARS$_Ld120
_$FPEXPRPARS$_Ld120:
.reference _$FPEXPRPARS$_Ld121
	.ascii	"IIIIIII\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld122
_$FPEXPRPARS$_Ld122:
	.ascii	"\016encodedatetime\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld124
_$FPEXPRPARS$_Ld124:
	.short	0,1
	.long	0,-1,1
.reference _$FPEXPRPARS$_Ld123
.globl	_$FPEXPRPARS$_Ld123
_$FPEXPRPARS$_Ld123:
.reference _$FPEXPRPARS$_Ld124
	.ascii	"I\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld125
_$FPEXPRPARS$_Ld125:
	.ascii	"\014shortdayname\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld126
_$FPEXPRPARS$_Ld126:
	.ascii	"\016shortmonthname\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld127
_$FPEXPRPARS$_Ld127:
	.ascii	"\013longdayname\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld128
_$FPEXPRPARS$_Ld128:
	.ascii	"\015longmonthname\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld130
_$FPEXPRPARS$_Ld130:
	.short	0,1
	.long	0,-1,2
.reference _$FPEXPRPARS$_Ld129
.globl	_$FPEXPRPARS$_Ld129
_$FPEXPRPARS$_Ld129:
.reference _$FPEXPRPARS$_Ld130
	.ascii	"SD\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld131
_$FPEXPRPARS$_Ld131:
	.ascii	"\016formatdatetime\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld133
_$FPEXPRPARS$_Ld133:
	.short	0,1
	.long	0,-1,2
.reference _$FPEXPRPARS$_Ld132
.globl	_$FPEXPRPARS$_Ld132
_$FPEXPRPARS$_Ld132:
.reference _$FPEXPRPARS$_Ld133
	.ascii	"II\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld134
_$FPEXPRPARS$_Ld134:
	.ascii	"\003shl\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld135
_$FPEXPRPARS$_Ld135:
	.ascii	"\003shr\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld137
_$FPEXPRPARS$_Ld137:
	.short	0,1
	.long	0,-1,3
.reference _$FPEXPRPARS$_Ld136
.globl	_$FPEXPRPARS$_Ld136
_$FPEXPRPARS$_Ld136:
.reference _$FPEXPRPARS$_Ld137
	.ascii	"BSS\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld138
_$FPEXPRPARS$_Ld138:
	.ascii	"\003IFS\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld140
_$FPEXPRPARS$_Ld140:
	.short	0,1
	.long	0,-1,3
.reference _$FPEXPRPARS$_Ld139
.globl	_$FPEXPRPARS$_Ld139
_$FPEXPRPARS$_Ld139:
.reference _$FPEXPRPARS$_Ld140
	.ascii	"BFF\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld141
_$FPEXPRPARS$_Ld141:
	.ascii	"\003IFF\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld143
_$FPEXPRPARS$_Ld143:
	.short	0,1
	.long	0,-1,3
.reference _$FPEXPRPARS$_Ld142
.globl	_$FPEXPRPARS$_Ld142
_$FPEXPRPARS$_Ld142:
.reference _$FPEXPRPARS$_Ld143
	.ascii	"BDD\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld144
_$FPEXPRPARS$_Ld144:
	.ascii	"\003IFD\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld146
_$FPEXPRPARS$_Ld146:
	.short	0,1
	.long	0,-1,3
.reference _$FPEXPRPARS$_Ld145
.globl	_$FPEXPRPARS$_Ld145
_$FPEXPRPARS$_Ld145:
.reference _$FPEXPRPARS$_Ld146
	.ascii	"BII\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld147
_$FPEXPRPARS$_Ld147:
	.ascii	"\003IFI\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld148
_$FPEXPRPARS$_Ld148:
	.ascii	"\010inttostr\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld149
_$FPEXPRPARS$_Ld149:
	.ascii	"\010strtoint\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld151
_$FPEXPRPARS$_Ld151:
	.short	0,1
	.long	0,-1,2
.reference _$FPEXPRPARS$_Ld150
.globl	_$FPEXPRPARS$_Ld150
_$FPEXPRPARS$_Ld150:
.reference _$FPEXPRPARS$_Ld151
	.ascii	"SI\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld152
_$FPEXPRPARS$_Ld152:
	.ascii	"\013strtointdef\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld153
_$FPEXPRPARS$_Ld153:
	.ascii	"\012floattostr\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld154
_$FPEXPRPARS$_Ld154:
	.ascii	"\012strtofloat\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld156
_$FPEXPRPARS$_Ld156:
	.short	0,1
	.long	0,-1,2
.reference _$FPEXPRPARS$_Ld155
.globl	_$FPEXPRPARS$_Ld155
_$FPEXPRPARS$_Ld155:
.reference _$FPEXPRPARS$_Ld156
	.ascii	"SF\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld157
_$FPEXPRPARS$_Ld157:
	.ascii	"\015strtofloatdef\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld159
_$FPEXPRPARS$_Ld159:
	.short	0,1
	.long	0,-1,1
.reference _$FPEXPRPARS$_Ld158
.globl	_$FPEXPRPARS$_Ld158
_$FPEXPRPARS$_Ld158:
.reference _$FPEXPRPARS$_Ld159
	.ascii	"B\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld160
_$FPEXPRPARS$_Ld160:
	.ascii	"\011booltostr\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld161
_$FPEXPRPARS$_Ld161:
	.ascii	"\011strtobool\000"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld163
_$FPEXPRPARS$_Ld163:
	.short	0,1
	.long	0,-1,2
.reference _$FPEXPRPARS$_Ld162
.globl	_$FPEXPRPARS$_Ld162
_$FPEXPRPARS$_Ld162:
.reference _$FPEXPRPARS$_Ld163
	.ascii	"SB\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld164
_$FPEXPRPARS$_Ld164:
	.ascii	"\014strtobooldef\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld165
_$FPEXPRPARS$_Ld165:
	.ascii	"\011datetostr\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld166
_$FPEXPRPARS$_Ld166:
	.ascii	"\011timetostr\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld167
_$FPEXPRPARS$_Ld167:
	.ascii	"\011strtodate\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld168
_$FPEXPRPARS$_Ld168:
	.ascii	"\014strtodatedef\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld169
_$FPEXPRPARS$_Ld169:
	.ascii	"\011strtotime\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld170
_$FPEXPRPARS$_Ld170:
	.ascii	"\014strtotimedef\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld171
_$FPEXPRPARS$_Ld171:
	.ascii	"\015strtodatetime\000"

.const
	.align 2
.globl	_$FPEXPRPARS$_Ld172
_$FPEXPRPARS$_Ld172:
	.ascii	"\020strtodatetimedef\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

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

LFPC_GETMEM$stub:
.indirect_symbol FPC_GETMEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_MOVE$stub:
.indirect_symbol FPC_MOVE
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

LFPC_FREEMEM$stub:
.indirect_symbol FPC_FREEMEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETENUMNAME$PTYPEINFO$LONGINT$$ANSISTRING$stub:
.indirect_symbol _TYPINFO_GETENUMNAME$PTYPEINFO$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_UPCASE$CHAR$$CHAR$stub:
.indirect_symbol _SYSTEM_UPCASE$CHAR$$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const$stub:
.indirect_symbol _FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$array_of_const
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FREEANDNIL$formal$stub:
.indirect_symbol _SYSUTILS_FREEANDNIL$formal
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

L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__NEXTPOS$$CHAR$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONSCANNER_$__NEXTPOS$$CHAR
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

Lfpc_ansistr_concat$stub:
.indirect_symbol fpc_ansistr_concat
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

L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__SCANERROR$ANSISTRING$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONSCANNER_$__SCANERROR$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$_DOSTRING$$TTOKENTYPE_TERMINATINGCHAR$CHAR$$BOOLEAN$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONSCANNER_$_DOSTRING$$TTOKENTYPE_TERMINATINGCHAR$CHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__GETCURRENTCHAR$$CHAR$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONSCANNER_$__GETCURRENTCHAR$$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISDIGIT$CHAR$$BOOLEAN$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISDIGIT$CHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISWORDDELIM$CHAR$$BOOLEAN$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISWORDDELIM$CHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_real_ansistr$stub:
.indirect_symbol fpc_val_real_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING
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

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__SKIPWHITESPACE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONSCANNER_$__SKIPWHITESPACE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISDELIM$CHAR$$BOOLEAN$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISDELIM$CHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DODELIMITER$$TTOKENTYPE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DODELIMITER$$TTOKENTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DOSTRING$$TTOKENTYPE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DOSTRING$$TTOKENTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DONUMBER$$TTOKENTYPE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DONUMBER$$TTOKENTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISALPHA$CHAR$$BOOLEAN$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONSCANNER_$__ISALPHA$CHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DOIDENTIFIER$$TTOKENTYPE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONSCANNER_$__DOIDENTIFIER$$TTOKENTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHOBJECTLIST_$__CLEAR$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__BUILTINSMANAGER$$TEXPRBUILTINMANAGER$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__BUILTINSMANAGER$$TEXPRBUILTINMANAGER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _FPEXPRPARS_TEXPRBUILTINMANAGER_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__GETI$LONGINT$$TFPBUILTINEXPRIDENTIFIERDEF$stub:
.indirect_symbol _FPEXPRPARS_TEXPRBUILTINMANAGER_$__GETI$LONGINT$$TFPBUILTINEXPRIDENTIFIERDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_LOWERCASE$SHORTSTRING$$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_LOWERCASE$SHORTSTRING$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHOBJECTLIST_$__ADD$SHORTSTRING$TOBJECT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__ADD$SHORTSTRING$TOBJECT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__GETI$LONGINT$$TFPEXPRIDENTIFIERDEF$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__GETI$LONGINT$$TFPEXPRIDENTIFIERDEF
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

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CREATEHASHLIST$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__CREATEHASHLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHOBJECTLIST_$__FIND$SHORTSTRING$$TOBJECT$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__FIND$SHORTSTRING$$TOBJECT
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

L_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__CREATE$$TFPEXPRESSIONSCANNER$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONSCANNER_$__CREATE$$TFPEXPRESSIONSCANNER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHOBJECTLIST_$__CREATE$BOOLEAN$$TFPHASHOBJECTLIST$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__CREATE$BOOLEAN$$TFPHASHOBJECTLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOMPONENT_$__DESTROY$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONSCANNER_$__GETTOKEN$$TTOKENTYPE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONSCANNER_$__GETTOKEN$$TTOKENTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__TOKENTYPE$$TTOKENTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PARSERERROR$ANSISTRING$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__PARSERERROR$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPUNARYOPERATOR_$__CREATE$TFPEXPRNODE$$TFPUNARYOPERATOR$stub:
.indirect_symbol _FPEXPRPARS_TFPUNARYOPERATOR_$__CREATE$TFPEXPRNODE$$TFPUNARYOPERATOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__EVALUATEEXPRESSION$TFPEXPRESSIONRESULT$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__EVALUATEEXPRESSION$TFPEXPRESSIONRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKRESULTTYPE$TFPEXPRESSIONRESULT$TRESULTTYPE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKRESULTTYPE$TFPEXPRESSIONRESULT$TRESULTTYPE
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

Lfpc_finalize$stub:
.indirect_symbol fpc_finalize
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CONVERTNODE$TFPEXPRNODE$TRESULTTYPE$$TFPEXPRNODE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__CONVERTNODE$TFPEXPRNODE$TRESULTTYPE$$TFPEXPRNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__MATCHNODES$TFPEXPRNODE$TFPEXPRNODE$$TFPEXPRNODE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__MATCHNODES$TFPEXPRNODE$TFPEXPRNODE$$TFPEXPRNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETTOKEN$$TTOKENTYPE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__GETTOKEN$$TTOKENTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKEOF$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKEOF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL2$$TFPEXPRNODE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL2$$TFPEXPRNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPBINARYOPERATION_$__CREATE$TFPEXPRNODE$TFPEXPRNODE$$TFPBINARYOPERATION$stub:
.indirect_symbol _FPEXPRPARS_TFPBINARYOPERATION_$__CREATE$TFPEXPRNODE$TFPEXPRNODE$$TFPBINARYOPERATION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL3$$TFPEXPRNODE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL3$$TFPEXPRNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKNODES$TFPEXPRNODE$TFPEXPRNODE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__CHECKNODES$TFPEXPRNODE$TFPEXPRNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL4$$TFPEXPRNODE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL4$$TFPEXPRNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL5$$TFPEXPRNODE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL5$$TFPEXPRNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL6$$TFPEXPRNODE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL6$$TFPEXPRNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL1$$TFPEXPRNODE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__LEVEL1$$TFPEXPRNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__CURRENTTOKEN$$ANSISTRING$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__CURRENTTOKEN$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__PRIMITIVE$$TFPEXPRNODE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__PRIMITIVE$$TFPEXPRNODE
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

L_SYSUTILS_TRYSTRTOINT64$ANSISTRING$INT64$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_TRYSTRTOINT64$ANSISTRING$INT64$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATEINTEGER$INT64$$TFPCONSTEXPRESSION$stub:
.indirect_symbol _FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATEINTEGER$INT64$$TFPCONSTEXPRESSION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATEFLOAT$DOUBLE$$TFPCONSTEXPRESSION$stub:
.indirect_symbol _FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATEFLOAT$DOUBLE$$TFPCONSTEXPRESSION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATESTRING$ANSISTRING$$TFPCONSTEXPRESSION$stub:
.indirect_symbol _FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATESTRING$ANSISTRING$$TFPCONSTEXPRESSION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATEBOOLEAN$BOOLEAN$$TFPCONSTEXPRESSION$stub:
.indirect_symbol _FPEXPRPARS_TFPCONSTEXPRESSION_$__CREATEBOOLEAN$BOOLEAN$$TFPCONSTEXPRESSION
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

L_FPEXPRPARS_TFPEXPRESSIONPARSER_$__IDENTIFIERBYNAME$SHORTSTRING$$TFPEXPRIDENTIFIERDEF$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRESSIONPARSER_$__IDENTIFIERBYNAME$SHORTSTRING$$TFPEXPRIDENTIFIERDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__ARGUMENTCOUNT$$LONGINT$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__ARGUMENTCOUNT$$LONGINT
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

LFPC_CATCHES$stub:
.indirect_symbol FPC_CATCHES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TIFOPERATION_$__CREATE$TFPEXPRNODE$TFPEXPRNODE$TFPEXPRNODE$$TIFOPERATION$stub:
.indirect_symbol _FPEXPRPARS_TIFOPERATION_$__CREATE$TFPEXPRNODE$TFPEXPRNODE$TFPEXPRNODE$$TIFOPERATION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TCASEOPERATION_$__CREATE$TEXPRARGUMENTARRAY$$TCASEOPERATION$stub:
.indirect_symbol _FPEXPRPARS_TCASEOPERATION_$__CREATE$TEXPRARGUMENTARRAY$$TCASEOPERATION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERNODE_$__CREATEIDENTIFIER$TFPEXPRIDENTIFIERDEF$$TFPEXPRIDENTIFIERNODE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERNODE_$__CREATEIDENTIFIER$TFPEXPRIDENTIFIERDEF$$TFPEXPRIDENTIFIERNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_RESULTTYPENAME$TRESULTTYPE$$ANSISTRING$stub:
.indirect_symbol _FPEXPRPARS_RESULTTYPENAME$TRESULTTYPE$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_BUILTINIDENTIFIERS$$TEXPRBUILTINMANAGER$stub:
.indirect_symbol _FPEXPRPARS_BUILTINIDENTIFIERS$$TEXPRBUILTINMANAGER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__SETITEM$LONGINT$TCOLLECTIONITEM$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__SETITEM$LONGINT$TCOLLECTIONITEM
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

L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__INDEXOFIDENTIFIER$SHORTSTRING$$LONGINT$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__INDEXOFIDENTIFIER$SHORTSTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__FINDIDENTIFIER$SHORTSTRING$$TFPEXPRIDENTIFIERDEF$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__FINDIDENTIFIER$SHORTSTRING$$TFPEXPRIDENTIFIERDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_do_as$stub:
.indirect_symbol fpc_do_as
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETNAME$SHORTSTRING$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETNAME$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETRESULTTYPE$TRESULTTYPE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETRESULTTYPE$TRESULTTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETVALUE$ANSISTRING$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETVALUE$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETARGUMENTTYPES$ANSISTRING$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETARGUMENTTYPES$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_CHARTORESULTTYPE$CHAR$$TRESULTTYPE$stub:
.indirect_symbol _FPEXPRPARS_CHARTORESULTTYPE$CHAR$$TRESULTTYPE
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

Lfpc_shortstr_to_shortstr$stub:
.indirect_symbol fpc_shortstr_to_shortstr
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

L_SYSUTILS_STRTOFLOAT$ANSISTRING$$EXTENDED$stub:
.indirect_symbol _SYSUTILS_STRTOFLOAT$ANSISTRING$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRTODATETIME$ANSISTRING$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_STRTODATETIME$ANSISTRING$$TDATETIME
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

Lfpc_copy_proc$stub:
.indirect_symbol fpc_copy_proc
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

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKVARIABLE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKVARIABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKRESULTTYPE$TRESULTTYPE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__CHECKRESULTTYPE$TRESULTTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$INT64$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FORMATDATETIME$ANSISTRING$TDATETIME$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FORMATDATETIME$ANSISTRING$TDATETIME$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__IDENTIFIERBYNAME$SHORTSTRING$$TFPEXPRIDENTIFIERDEF$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__IDENTIFIERBYNAME$SHORTSTRING$$TFPEXPRIDENTIFIERDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDVARIABLE$crc74D68550$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDVARIABLE$crc74D68550
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDBOOLEANVARIABLE$SHORTSTRING$BOOLEAN$$TFPEXPRIDENTIFIERDEF$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDBOOLEANVARIABLE$SHORTSTRING$BOOLEAN$$TFPEXPRIDENTIFIERDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDINTEGERVARIABLE$SHORTSTRING$LONGINT$$TFPEXPRIDENTIFIERDEF$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDINTEGERVARIABLE$SHORTSTRING$LONGINT$$TFPEXPRIDENTIFIERDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDFLOATVARIABLE$SHORTSTRING$DOUBLE$$TFPEXPRIDENTIFIERDEF$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDFLOATVARIABLE$SHORTSTRING$DOUBLE$$TFPEXPRIDENTIFIERDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDSTRINGVARIABLE$SHORTSTRING$ANSISTRING$$TFPEXPRIDENTIFIERDEF$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDSTRINGVARIABLE$SHORTSTRING$ANSISTRING$$TFPEXPRIDENTIFIERDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDDATETIMEVARIABLE$SHORTSTRING$TDATETIME$$TFPEXPRIDENTIFIERDEF$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDDATETIMEVARIABLE$SHORTSTRING$TDATETIME$$TFPEXPRIDENTIFIERDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDFUNCTION$crcD0755370$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDFUNCTION$crcD0755370
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDFUNCTION$crc151CB118$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEFS_$__ADDFUNCTION$crc151CB118
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

L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING
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

Lfpc_ansistr_concat_multi$stub:
.indirect_symbol fpc_ansistr_concat_multi
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_float$stub:
.indirect_symbol fpc_ansistr_float
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPUNARYOPERATOR_$__CHECK$stub:
.indirect_symbol _FPEXPRPARS_TFPUNARYOPERATOR_$__CHECK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TRIMLEFT$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_TRIMLEFT$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPBINARYOPERATION_$__CHECK$stub:
.indirect_symbol _FPEXPRPARS_TFPBINARYOPERATION_$__CHECK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRNODE_$__CHECKNODETYPE$TFPEXPRNODE$TRESULTTYPES$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRNODE_$__CHECKNODETYPE$TFPEXPRNODE$TRESULTTYPES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPBINARYOPERATION_$__CHECKSAMENODETYPES$stub:
.indirect_symbol _FPEXPRPARS_TFPBINARYOPERATION_$__CHECKSAMENODETYPES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_RAISEPARSERERROR$ANSISTRING$stub:
.indirect_symbol _FPEXPRPARS_RAISEPARSERERROR$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY$stub:
.indirect_symbol _FPEXPRPARS_TFPBINARYOPERATION_$__DESTROY
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

L_FPEXPRPARS_TFPEQUALOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT$stub:
.indirect_symbol _FPEXPRPARS_TFPEQUALOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_compare$stub:
.indirect_symbol fpc_ansistr_compare
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPLESSTHANOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT$stub:
.indirect_symbol _FPEXPRPARS_TFPLESSTHANOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPGREATERTHANOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT$stub:
.indirect_symbol _FPEXPRPARS_TFPGREATERTHANOPERATION_$__GETNODEVALUE$TFPEXPRESSIONRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPBOOLEANRESULTOPERATION_$__CHECK$stub:
.indirect_symbol _FPEXPRPARS_TFPBOOLEANRESULTOPERATION_$__CHECK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TMATHOPERATION_$__CHECK$stub:
.indirect_symbol _FPEXPRPARS_TMATHOPERATION_$__CHECK
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

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__GETRESULTTYPE$$TRESULTTYPE$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__GETRESULTTYPE$$TRESULTTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRFUNCTION_$__CREATEFUNCTION$crc6370B387$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRFUNCTION_$__CREATEFUNCTION$crc6370B387
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRFUNCTION_$__CALCPARAMS$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRFUNCTION_$__CALCPARAMS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_ADDREF$stub:
.indirect_symbol FPC_ADDREF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DECREF$stub:
.indirect_symbol FPC_DECREF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_ARGTOFLOAT$TFPEXPRESSIONRESULT$$DOUBLE$stub:
.indirect_symbol _FPEXPRPARS_ARGTOFLOAT$TFPEXPRESSIONRESULT$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_exp_real$stub:
.indirect_symbol fpc_exp_real
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_int_real$stub:
.indirect_symbol fpc_int_real
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_frac_real$stub:
.indirect_symbol fpc_frac_real
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

L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
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

L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DATE$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_DATE$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TIME$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_TIME$$TDATETIME
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

L_SYSUTILS_DAYOFWEEK$TDATETIME$$LONGINT$stub:
.indirect_symbol _SYSUTILS_DAYOFWEEK$TDATETIME$$LONGINT
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

L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRTOFLOATDEF$ANSISTRING$EXTENDED$$EXTENDED$stub:
.indirect_symbol _SYSUTILS_STRTOFLOATDEF$ANSISTRING$EXTENDED$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DATETOSTR$TDATETIME$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_DATETOSTR$TDATETIME$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TIMETOSTR$TDATETIME$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_TIMETOSTR$TDATETIME$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRTODATE$PCHAR$LONGINT$ANSISTRING$CHAR$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_STRTODATE$PCHAR$LONGINT$ANSISTRING$CHAR$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TRYSTRTODATE$ANSISTRING$TDATETIME$CHAR$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_TRYSTRTODATE$ANSISTRING$TDATETIME$CHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRTOTIME$PCHAR$LONGINT$CHAR$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_STRTOTIME$PCHAR$LONGINT$CHAR$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TRYSTRTOTIME$ANSISTRING$TDATETIME$CHAR$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_TRYSTRTOTIME$ANSISTRING$TDATETIME$CHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TRYSTRTODATETIME$ANSISTRING$TDATETIME$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_TRYSTRTODATETIME$ANSISTRING$TDATETIME$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRTOBOOL$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_STRTOBOOL$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRTOBOOLDEF$ANSISTRING$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_STRTOBOOLDEF$ANSISTRING$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFLOATVARIABLE$crc4D3F7E51$stub:
.indirect_symbol _FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFLOATVARIABLE$crc4D3F7E51
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7$stub:
.indirect_symbol _FPEXPRPARS_TEXPRBUILTINMANAGER_$__ADDFUNCTION$crc61B84EF7
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__ASSIGN$TPERSISTENT$stub:
.indirect_symbol _FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__ASSIGN$TPERSISTENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_REGISTERSTDBUILTINS$TEXPRBUILTINMANAGER$stub:
.indirect_symbol _FPEXPRPARS_REGISTERSTDBUILTINS$TEXPRBUILTINMANAGER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPEXPRPARS_FREEBUILTINS$stub:
.indirect_symbol _FPEXPRPARS_FREEBUILTINS
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
.globl	_INIT_FPEXPRPARS_TTOKENTYPE
_INIT_FPEXPRPARS_TTOKENTYPE:
	.byte	3,10
	.ascii	"TTokenType"
	.byte	5
	.long	0,24,0
	.byte	6
	.ascii	"ttPlus"
	.byte	7
	.ascii	"ttMinus"
	.byte	10
	.ascii	"ttLessThan"
	.byte	12
	.ascii	"ttLargerThan"
	.byte	7
	.ascii	"ttEqual"
	.byte	5
	.ascii	"ttDiv"
	.byte	5
	.ascii	"ttMul"
	.byte	6
	.ascii	"ttLeft"
	.byte	7
	.ascii	"ttRight"
	.byte	15
	.ascii	"ttLessThanEqual"
	.byte	17
	.ascii	"ttLargerThanEqual"
	.byte	9
	.ascii	"ttunequal"
	.byte	8
	.ascii	"ttNumber"
	.byte	8
	.ascii	"ttString"
	.byte	12
	.ascii	"ttIdentifier"
	.byte	7
	.ascii	"ttComma"
	.byte	5
	.ascii	"ttand"
	.byte	4
	.ascii	"ttOr"
	.byte	5
	.ascii	"ttXor"
	.byte	6
	.ascii	"ttTrue"
	.byte	7
	.ascii	"ttFalse"
	.byte	5
	.ascii	"ttnot"
	.byte	4
	.ascii	"ttif"
	.byte	6
	.ascii	"ttCase"
	.byte	5
	.ascii	"ttEOF"
	.byte	10
	.ascii	"fpexprpars"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TTOKENTYPE
_RTTI_FPEXPRPARS_TTOKENTYPE:
	.byte	3,10
	.ascii	"TTokenType"
	.byte	5
	.long	0,24,0
	.byte	6
	.ascii	"ttPlus"
	.byte	7
	.ascii	"ttMinus"
	.byte	10
	.ascii	"ttLessThan"
	.byte	12
	.ascii	"ttLargerThan"
	.byte	7
	.ascii	"ttEqual"
	.byte	5
	.ascii	"ttDiv"
	.byte	5
	.ascii	"ttMul"
	.byte	6
	.ascii	"ttLeft"
	.byte	7
	.ascii	"ttRight"
	.byte	15
	.ascii	"ttLessThanEqual"
	.byte	17
	.ascii	"ttLargerThanEqual"
	.byte	9
	.ascii	"ttunequal"
	.byte	8
	.ascii	"ttNumber"
	.byte	8
	.ascii	"ttString"
	.byte	12
	.ascii	"ttIdentifier"
	.byte	7
	.ascii	"ttComma"
	.byte	5
	.ascii	"ttand"
	.byte	4
	.ascii	"ttOr"
	.byte	5
	.ascii	"ttXor"
	.byte	6
	.ascii	"ttTrue"
	.byte	7
	.ascii	"ttFalse"
	.byte	5
	.ascii	"ttnot"
	.byte	4
	.ascii	"ttif"
	.byte	6
	.ascii	"ttCase"
	.byte	5
	.ascii	"ttEOF"
	.byte	10
	.ascii	"fpexprpars"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TTOKENTYPE_s2o
_RTTI_FPEXPRPARS_TTOKENTYPE_s2o:
	.long	25,16
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+182
	.long	23
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+225
	.long	15
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+174
	.long	5
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+72
	.long	24
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+232
	.long	4
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+64
	.long	20
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+206
	.long	14
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+161
	.long	22
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+220
	.long	3
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+51
	.long	10
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+115
	.long	7
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+84
	.long	2
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+40
	.long	9
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+99
	.long	1
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+32
	.long	6
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+78
	.long	21
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+214
	.long	12
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+143
	.long	17
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+188
	.long	0
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+25
	.long	8
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+91
	.long	13
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+152
	.long	19
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+199
	.long	11
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+133
	.long	18
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+193

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TTOKENTYPE_o2s
_RTTI_FPEXPRPARS_TTOKENTYPE_o2s:
	.long	0
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+25
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+32
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+40
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+51
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+64
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+72
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+78
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+84
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+91
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+99
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+115
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+133
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+143
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+152
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+161
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+174
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+182
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+188
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+193
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+199
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+206
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+214
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+220
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+225
	.long	_RTTI_FPEXPRPARS_TTOKENTYPE+232

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF547
_INIT_FPEXPRPARS_DEF547:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF527
_INIT_FPEXPRPARS_DEF527:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF533
_INIT_FPEXPRPARS_DEF533:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld174
_$FPEXPRPARS$_Ld174:
	.short	0
	.long	_$FPEXPRPARS$_Ld175
	.align 2
.globl	_$FPEXPRPARS$_Ld175
_$FPEXPRPARS$_Ld175:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPEXPRESSIONPARSER
_INIT_FPEXPRPARS_TFPEXPRESSIONPARSER:
	.byte	15,19
	.ascii	"TFPExpressionParser"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	56

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS
_RTTI_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS:
	.byte	15,21
	.ascii	"TFPExprIdentifierDefs"
	.long	_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS
	.long	_RTTI_CLASSES_TCOLLECTION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TBUILTINCATEGORY
_RTTI_FPEXPRPARS_TBUILTINCATEGORY:
	.byte	3,16
	.ascii	"TBuiltInCategory"
	.byte	5
	.long	0,7,0
	.byte	9
	.ascii	"bcStrings"
	.byte	10
	.ascii	"bcDateTime"
	.byte	6
	.ascii	"bcMath"
	.byte	9
	.ascii	"bcBoolean"
	.byte	12
	.ascii	"bcConversion"
	.byte	6
	.ascii	"bcData"
	.byte	7
	.ascii	"bcVaria"
	.byte	6
	.ascii	"bcUser"
	.byte	10
	.ascii	"fpexprpars"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TBUILTINCATEGORY_s2o
_RTTI_FPEXPRPARS_TBUILTINCATEGORY_s2o:
	.long	8,3
	.long	_RTTI_FPEXPRPARS_TBUILTINCATEGORY+59
	.long	4
	.long	_RTTI_FPEXPRPARS_TBUILTINCATEGORY+69
	.long	5
	.long	_RTTI_FPEXPRPARS_TBUILTINCATEGORY+82
	.long	1
	.long	_RTTI_FPEXPRPARS_TBUILTINCATEGORY+41
	.long	2
	.long	_RTTI_FPEXPRPARS_TBUILTINCATEGORY+52
	.long	0
	.long	_RTTI_FPEXPRPARS_TBUILTINCATEGORY+31
	.long	7
	.long	_RTTI_FPEXPRPARS_TBUILTINCATEGORY+97
	.long	6
	.long	_RTTI_FPEXPRPARS_TBUILTINCATEGORY+89

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TBUILTINCATEGORY_o2s
_RTTI_FPEXPRPARS_TBUILTINCATEGORY_o2s:
	.long	0
	.long	_RTTI_FPEXPRPARS_TBUILTINCATEGORY+31
	.long	_RTTI_FPEXPRPARS_TBUILTINCATEGORY+41
	.long	_RTTI_FPEXPRPARS_TBUILTINCATEGORY+52
	.long	_RTTI_FPEXPRPARS_TBUILTINCATEGORY+59
	.long	_RTTI_FPEXPRPARS_TBUILTINCATEGORY+69
	.long	_RTTI_FPEXPRPARS_TBUILTINCATEGORY+82
	.long	_RTTI_FPEXPRPARS_TBUILTINCATEGORY+89
	.long	_RTTI_FPEXPRPARS_TBUILTINCATEGORY+97

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TBUILTINCATEGORIES
_RTTI_FPEXPRPARS_TBUILTINCATEGORIES:
	.byte	5,18
	.ascii	"TBuiltInCategories"
	.byte	5
	.long	_RTTI_FPEXPRPARS_TBUILTINCATEGORY

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPEXPRESSIONPARSER
_RTTI_FPEXPRPARS_TFPEXPRESSIONPARSER:
	.byte	15,19
	.ascii	"TFPExpressionParser"
	.long	_VMT_FPEXPRPARS_TFPEXPRESSIONPARSER
	.long	_RTTI_CLASSES_TCOMPONENT
	.short	5
	.byte	10
	.ascii	"fpexprpars"
	.short	3
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	56,216,1,0,-2147483648
	.short	2
	.byte	56,10
	.ascii	"Expression"
	.long	_RTTI_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS
	.long	68
	.long	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__SETIDENTIFIERS$TFPEXPRIDENTIFIERDEFS
	.long	1,0,-2147483648
	.short	3
	.byte	52,11
	.ascii	"Identifiers"
	.long	_RTTI_FPEXPRPARS_TBUILTINCATEGORIES
	.long	52
	.long	_FPEXPRPARS_TFPEXPRESSIONPARSER_$__SETBUILTINS$TBUILTINCATEGORIES
	.long	1,0,-2147483648
	.short	4
	.byte	52,8
	.ascii	"BuiltIns"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld177
_$FPEXPRPARS$_Ld177:
	.short	0
	.long	_$FPEXPRPARS$_Ld178
	.align 2
.globl	_$FPEXPRPARS$_Ld178
_$FPEXPRPARS$_Ld178:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TEXPRBUILTINMANAGER
_INIT_FPEXPRPARS_TEXPRBUILTINMANAGER:
	.byte	15,19
	.ascii	"TExprBuiltInManager"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TEXPRBUILTINMANAGER
_RTTI_FPEXPRPARS_TEXPRBUILTINMANAGER:
	.byte	15,19
	.ascii	"TExprBuiltInManager"
	.long	_VMT_FPEXPRPARS_TEXPRBUILTINMANAGER
	.long	_RTTI_CLASSES_TCOMPONENT
	.short	2
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF445
_INIT_FPEXPRPARS_DEF445:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld180
_$FPEXPRPARS$_Ld180:
	.short	0
	.long	_$FPEXPRPARS$_Ld181
	.align 2
.globl	_$FPEXPRPARS$_Ld181
_$FPEXPRPARS$_Ld181:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPEXPRESSIONSCANNER
_INIT_FPEXPRPARS_TFPEXPRESSIONSCANNER:
	.byte	15,20
	.ascii	"TFPExpressionScanner"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	20

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPEXPRESSIONSCANNER
_RTTI_FPEXPRPARS_TFPEXPRESSIONSCANNER:
	.byte	15,20
	.ascii	"TFPExpressionScanner"
	.long	_VMT_FPEXPRPARS_TFPEXPRESSIONSCANNER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld183
_$FPEXPRPARS$_Ld183:
	.short	0
	.long	_$FPEXPRPARS$_Ld184
	.align 2
.globl	_$FPEXPRPARS$_Ld184
_$FPEXPRPARS$_Ld184:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_EEXPRSCANNER
_INIT_FPEXPRPARS_EEXPRSCANNER:
	.byte	15,12
	.ascii	"EExprScanner"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_EEXPRSCANNER
_RTTI_FPEXPRPARS_EEXPRSCANNER:
	.byte	15,12
	.ascii	"EExprScanner"
	.long	_VMT_FPEXPRPARS_EEXPRSCANNER
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TRESULTTYPE
_INIT_FPEXPRPARS_TRESULTTYPE:
	.byte	3,11
	.ascii	"TResultType"
	.byte	5
	.long	0,4,0
	.byte	9
	.ascii	"rtBoolean"
	.byte	9
	.ascii	"rtInteger"
	.byte	7
	.ascii	"rtFloat"
	.byte	10
	.ascii	"rtDateTime"
	.byte	8
	.ascii	"rtString"
	.byte	10
	.ascii	"fpexprpars"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TRESULTTYPE
_RTTI_FPEXPRPARS_TRESULTTYPE:
	.byte	3,11
	.ascii	"TResultType"
	.byte	5
	.long	0,4,0
	.byte	9
	.ascii	"rtBoolean"
	.byte	9
	.ascii	"rtInteger"
	.byte	7
	.ascii	"rtFloat"
	.byte	10
	.ascii	"rtDateTime"
	.byte	8
	.ascii	"rtString"
	.byte	10
	.ascii	"fpexprpars"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TRESULTTYPE_s2o
_RTTI_FPEXPRPARS_TRESULTTYPE_s2o:
	.long	5,0
	.long	_RTTI_FPEXPRPARS_TRESULTTYPE+26
	.long	3
	.long	_RTTI_FPEXPRPARS_TRESULTTYPE+54
	.long	2
	.long	_RTTI_FPEXPRPARS_TRESULTTYPE+46
	.long	1
	.long	_RTTI_FPEXPRPARS_TRESULTTYPE+36
	.long	4
	.long	_RTTI_FPEXPRPARS_TRESULTTYPE+65

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TRESULTTYPE_o2s
_RTTI_FPEXPRPARS_TRESULTTYPE_o2s:
	.long	0
	.long	_RTTI_FPEXPRPARS_TRESULTTYPE+26
	.long	_RTTI_FPEXPRPARS_TRESULTTYPE+36
	.long	_RTTI_FPEXPRPARS_TRESULTTYPE+46
	.long	_RTTI_FPEXPRPARS_TRESULTTYPE+54
	.long	_RTTI_FPEXPRPARS_TRESULTTYPE+65

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TRESULTTYPES
_INIT_FPEXPRPARS_TRESULTTYPES:
	.byte	5,12
	.ascii	"TResultTypes"
	.byte	5
	.long	_INIT_FPEXPRPARS_TRESULTTYPE

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TRESULTTYPES
_RTTI_FPEXPRPARS_TRESULTTYPES:
	.byte	5,12
	.ascii	"TResultTypes"
	.byte	5
	.long	_RTTI_FPEXPRPARS_TRESULTTYPE

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT
_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT:
	.byte	13,19
	.ascii	"TFPExpressionResult"
	.long	16,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPEXPRESSIONRESULT
_RTTI_FPEXPRPARS_TFPEXPRESSIONRESULT:
	.byte	13,19
	.ascii	"TFPExpressionResult"
	.long	16,6
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	0
	.long	_RTTI_FPEXPRPARS_TRESULTTYPE
	.long	4
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	8
	.long	_RTTI_SYSTEM_INT64
	.long	8
	.long	_RTTI_SYSTEM_DOUBLE
	.long	8
	.long	_RTTI_SYSTEM_TDATETIME
	.long	8

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_PFPEXPRESSIONRESULT
_INIT_FPEXPRPARS_PFPEXPRESSIONRESULT:
	.byte	0
	.ascii	"\023PFPExpressionResult"

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_PFPEXPRESSIONRESULT
_RTTI_FPEXPRPARS_PFPEXPRESSIONRESULT:
	.byte	0
	.ascii	"\023PFPExpressionResult"

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TEXPRPARAMETERARRAY
_INIT_FPEXPRPARS_TEXPRPARAMETERARRAY:
	.byte	21
	.ascii	"\023TExprParameterArray"
	.long	16
	.long	_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT
	.long	-1
	.long	_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT
	.byte	10
	.ascii	"fpexprpars"

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TEXPRPARAMETERARRAY
_RTTI_FPEXPRPARS_TEXPRPARAMETERARRAY:
	.byte	21
	.ascii	"\023TExprParameterArray"
	.long	16
	.long	_RTTI_FPEXPRPARS_TFPEXPRESSIONRESULT
	.long	-1
	.long	_RTTI_FPEXPRPARS_TFPEXPRESSIONRESULT
	.byte	10
	.ascii	"fpexprpars"

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF711
_INIT_FPEXPRPARS_DEF711:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld186
_$FPEXPRPARS$_Ld186:
	.short	0
	.long	_$FPEXPRPARS$_Ld187
	.align 2
.globl	_$FPEXPRPARS$_Ld187
_$FPEXPRPARS$_Ld187:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPEXPRNODE
_INIT_FPEXPRPARS_TFPEXPRNODE:
	.byte	15,11
	.ascii	"TFPExprNode"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPEXPRNODE
_RTTI_FPEXPRPARS_TFPEXPRNODE:
	.byte	15,11
	.ascii	"TFPExprNode"
	.long	_VMT_FPEXPRPARS_TFPEXPRNODE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TEXPRARGUMENTARRAY
_INIT_FPEXPRPARS_TEXPRARGUMENTARRAY:
	.byte	21
	.ascii	"\022TExprArgumentArray"
	.long	4
	.long	_INIT_FPEXPRPARS_TFPEXPRNODE
	.long	-1,0
	.byte	10
	.ascii	"fpexprpars"

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TEXPRARGUMENTARRAY
_RTTI_FPEXPRPARS_TEXPRARGUMENTARRAY:
	.byte	21
	.ascii	"\022TExprArgumentArray"
	.long	4
	.long	_RTTI_FPEXPRPARS_TFPEXPRNODE
	.long	-1,0
	.byte	10
	.ascii	"fpexprpars"

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF631
_INIT_FPEXPRPARS_DEF631:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld189
_$FPEXPRPARS$_Ld189:
	.short	0
	.long	_$FPEXPRPARS$_Ld190
	.align 2
.globl	_$FPEXPRPARS$_Ld190
_$FPEXPRPARS$_Ld190:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPBINARYOPERATION
_INIT_FPEXPRPARS_TFPBINARYOPERATION:
	.byte	15,18
	.ascii	"TFPBinaryOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPBINARYOPERATION
_RTTI_FPEXPRPARS_TFPBINARYOPERATION:
	.byte	15,18
	.ascii	"TFPBinaryOperation"
	.long	_VMT_FPEXPRPARS_TFPBINARYOPERATION
	.long	_RTTI_FPEXPRPARS_TFPEXPRNODE
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPBINARYOPERATIONCLASS
_INIT_FPEXPRPARS_TFPBINARYOPERATIONCLASS:
	.byte	0
	.ascii	"\027TFPBinaryOperationClass"

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPBINARYOPERATIONCLASS
_RTTI_FPEXPRPARS_TFPBINARYOPERATIONCLASS:
	.byte	0
	.ascii	"\027TFPBinaryOperationClass"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld192
_$FPEXPRPARS$_Ld192:
	.short	0
	.long	_$FPEXPRPARS$_Ld193
	.align 2
.globl	_$FPEXPRPARS$_Ld193
_$FPEXPRPARS$_Ld193:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPBOOLEANOPERATION
_INIT_FPEXPRPARS_TFPBOOLEANOPERATION:
	.byte	15,19
	.ascii	"TFPBooleanOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPBOOLEANOPERATION
_RTTI_FPEXPRPARS_TFPBOOLEANOPERATION:
	.byte	15,19
	.ascii	"TFPBooleanOperation"
	.long	_VMT_FPEXPRPARS_TFPBOOLEANOPERATION
	.long	_RTTI_FPEXPRPARS_TFPBINARYOPERATION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF707
_INIT_FPEXPRPARS_DEF707:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld195
_$FPEXPRPARS$_Ld195:
	.short	0
	.long	_$FPEXPRPARS$_Ld196
	.align 2
.globl	_$FPEXPRPARS$_Ld196
_$FPEXPRPARS$_Ld196:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPBINARYANDOPERATION
_INIT_FPEXPRPARS_TFPBINARYANDOPERATION:
	.byte	15,21
	.ascii	"TFPBinaryAndOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPBINARYANDOPERATION
_RTTI_FPEXPRPARS_TFPBINARYANDOPERATION:
	.byte	15,21
	.ascii	"TFPBinaryAndOperation"
	.long	_VMT_FPEXPRPARS_TFPBINARYANDOPERATION
	.long	_RTTI_FPEXPRPARS_TFPBOOLEANOPERATION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF715
_INIT_FPEXPRPARS_DEF715:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld198
_$FPEXPRPARS$_Ld198:
	.short	0
	.long	_$FPEXPRPARS$_Ld199
	.align 2
.globl	_$FPEXPRPARS$_Ld199
_$FPEXPRPARS$_Ld199:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPBINARYOROPERATION
_INIT_FPEXPRPARS_TFPBINARYOROPERATION:
	.byte	15,20
	.ascii	"TFPBinaryOrOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPBINARYOROPERATION
_RTTI_FPEXPRPARS_TFPBINARYOROPERATION:
	.byte	15,20
	.ascii	"TFPBinaryOrOperation"
	.long	_VMT_FPEXPRPARS_TFPBINARYOROPERATION
	.long	_RTTI_FPEXPRPARS_TFPBOOLEANOPERATION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF719
_INIT_FPEXPRPARS_DEF719:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld201
_$FPEXPRPARS$_Ld201:
	.short	0
	.long	_$FPEXPRPARS$_Ld202
	.align 2
.globl	_$FPEXPRPARS$_Ld202
_$FPEXPRPARS$_Ld202:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPBINARYXOROPERATION
_INIT_FPEXPRPARS_TFPBINARYXOROPERATION:
	.byte	15,21
	.ascii	"TFPBinaryXOrOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPBINARYXOROPERATION
_RTTI_FPEXPRPARS_TFPBINARYXOROPERATION:
	.byte	15,21
	.ascii	"TFPBinaryXOrOperation"
	.long	_VMT_FPEXPRPARS_TFPBINARYXOROPERATION
	.long	_RTTI_FPEXPRPARS_TFPBOOLEANOPERATION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld204
_$FPEXPRPARS$_Ld204:
	.short	0
	.long	_$FPEXPRPARS$_Ld205
	.align 2
.globl	_$FPEXPRPARS$_Ld205
_$FPEXPRPARS$_Ld205:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPBOOLEANRESULTOPERATION
_INIT_FPEXPRPARS_TFPBOOLEANRESULTOPERATION:
	.byte	15,25
	.ascii	"TFPBooleanResultOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPBOOLEANRESULTOPERATION
_RTTI_FPEXPRPARS_TFPBOOLEANRESULTOPERATION:
	.byte	15,25
	.ascii	"TFPBooleanResultOperation"
	.long	_VMT_FPEXPRPARS_TFPBOOLEANRESULTOPERATION
	.long	_RTTI_FPEXPRPARS_TFPBINARYOPERATION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPBOOLEANRESULTOPERATIONCLASS
_INIT_FPEXPRPARS_TFPBOOLEANRESULTOPERATIONCLASS:
	.byte	0
	.ascii	"\036TFPBooleanResultOperationClass"

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPBOOLEANRESULTOPERATIONCLASS
_RTTI_FPEXPRPARS_TFPBOOLEANRESULTOPERATIONCLASS:
	.byte	0
	.ascii	"\036TFPBooleanResultOperationClass"

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF768
_INIT_FPEXPRPARS_DEF768:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld207
_$FPEXPRPARS$_Ld207:
	.short	0
	.long	_$FPEXPRPARS$_Ld208
	.align 2
.globl	_$FPEXPRPARS$_Ld208
_$FPEXPRPARS$_Ld208:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPEQUALOPERATION
_INIT_FPEXPRPARS_TFPEQUALOPERATION:
	.byte	15,17
	.ascii	"TFPEqualOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPEQUALOPERATION
_RTTI_FPEXPRPARS_TFPEQUALOPERATION:
	.byte	15,17
	.ascii	"TFPEqualOperation"
	.long	_VMT_FPEXPRPARS_TFPEQUALOPERATION
	.long	_RTTI_FPEXPRPARS_TFPBOOLEANRESULTOPERATION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF772
_INIT_FPEXPRPARS_DEF772:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld210
_$FPEXPRPARS$_Ld210:
	.short	0
	.long	_$FPEXPRPARS$_Ld211
	.align 2
.globl	_$FPEXPRPARS$_Ld211
_$FPEXPRPARS$_Ld211:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPUNEQUALOPERATION
_INIT_FPEXPRPARS_TFPUNEQUALOPERATION:
	.byte	15,19
	.ascii	"TFPUnequalOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPUNEQUALOPERATION
_RTTI_FPEXPRPARS_TFPUNEQUALOPERATION:
	.byte	15,19
	.ascii	"TFPUnequalOperation"
	.long	_VMT_FPEXPRPARS_TFPUNEQUALOPERATION
	.long	_RTTI_FPEXPRPARS_TFPEQUALOPERATION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld213
_$FPEXPRPARS$_Ld213:
	.short	0
	.long	_$FPEXPRPARS$_Ld214
	.align 2
.globl	_$FPEXPRPARS$_Ld214
_$FPEXPRPARS$_Ld214:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPORDERINGOPERATION
_INIT_FPEXPRPARS_TFPORDERINGOPERATION:
	.byte	15,20
	.ascii	"TFPOrderingOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPORDERINGOPERATION
_RTTI_FPEXPRPARS_TFPORDERINGOPERATION:
	.byte	15,20
	.ascii	"TFPOrderingOperation"
	.long	_VMT_FPEXPRPARS_TFPORDERINGOPERATION
	.long	_RTTI_FPEXPRPARS_TFPBOOLEANRESULTOPERATION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF776
_INIT_FPEXPRPARS_DEF776:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld216
_$FPEXPRPARS$_Ld216:
	.short	0
	.long	_$FPEXPRPARS$_Ld217
	.align 2
.globl	_$FPEXPRPARS$_Ld217
_$FPEXPRPARS$_Ld217:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPLESSTHANOPERATION
_INIT_FPEXPRPARS_TFPLESSTHANOPERATION:
	.byte	15,20
	.ascii	"TFPLessThanOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPLESSTHANOPERATION
_RTTI_FPEXPRPARS_TFPLESSTHANOPERATION:
	.byte	15,20
	.ascii	"TFPLessThanOperation"
	.long	_VMT_FPEXPRPARS_TFPLESSTHANOPERATION
	.long	_RTTI_FPEXPRPARS_TFPORDERINGOPERATION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF780
_INIT_FPEXPRPARS_DEF780:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld219
_$FPEXPRPARS$_Ld219:
	.short	0
	.long	_$FPEXPRPARS$_Ld220
	.align 2
.globl	_$FPEXPRPARS$_Ld220
_$FPEXPRPARS$_Ld220:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPGREATERTHANOPERATION
_INIT_FPEXPRPARS_TFPGREATERTHANOPERATION:
	.byte	15,23
	.ascii	"TFPGreaterThanOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPGREATERTHANOPERATION
_RTTI_FPEXPRPARS_TFPGREATERTHANOPERATION:
	.byte	15,23
	.ascii	"TFPGreaterThanOperation"
	.long	_VMT_FPEXPRPARS_TFPGREATERTHANOPERATION
	.long	_RTTI_FPEXPRPARS_TFPORDERINGOPERATION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF788
_INIT_FPEXPRPARS_DEF788:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld222
_$FPEXPRPARS$_Ld222:
	.short	0
	.long	_$FPEXPRPARS$_Ld223
	.align 2
.globl	_$FPEXPRPARS$_Ld223
_$FPEXPRPARS$_Ld223:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPLESSTHANEQUALOPERATION
_INIT_FPEXPRPARS_TFPLESSTHANEQUALOPERATION:
	.byte	15,25
	.ascii	"TFPLessThanEqualOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPLESSTHANEQUALOPERATION
_RTTI_FPEXPRPARS_TFPLESSTHANEQUALOPERATION:
	.byte	15,25
	.ascii	"TFPLessThanEqualOperation"
	.long	_VMT_FPEXPRPARS_TFPLESSTHANEQUALOPERATION
	.long	_RTTI_FPEXPRPARS_TFPGREATERTHANOPERATION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF784
_INIT_FPEXPRPARS_DEF784:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld225
_$FPEXPRPARS$_Ld225:
	.short	0
	.long	_$FPEXPRPARS$_Ld226
	.align 2
.globl	_$FPEXPRPARS$_Ld226
_$FPEXPRPARS$_Ld226:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPGREATERTHANEQUALOPERATION
_INIT_FPEXPRPARS_TFPGREATERTHANEQUALOPERATION:
	.byte	15,28
	.ascii	"TFPGreaterThanEqualOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPGREATERTHANEQUALOPERATION
_RTTI_FPEXPRPARS_TFPGREATERTHANEQUALOPERATION:
	.byte	15,28
	.ascii	"TFPGreaterThanEqualOperation"
	.long	_VMT_FPEXPRPARS_TFPGREATERTHANEQUALOPERATION
	.long	_RTTI_FPEXPRPARS_TFPLESSTHANOPERATION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF738
_INIT_FPEXPRPARS_DEF738:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF742
_INIT_FPEXPRPARS_DEF742:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld228
_$FPEXPRPARS$_Ld228:
	.short	0
	.long	_$FPEXPRPARS$_Ld229
	.align 2
.globl	_$FPEXPRPARS$_Ld229
_$FPEXPRPARS$_Ld229:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TIFOPERATION
_INIT_FPEXPRPARS_TIFOPERATION:
	.byte	15,12
	.ascii	"TIfOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TIFOPERATION
_RTTI_FPEXPRPARS_TIFOPERATION:
	.byte	15,12
	.ascii	"TIfOperation"
	.long	_VMT_FPEXPRPARS_TIFOPERATION
	.long	_RTTI_FPEXPRPARS_TFPBINARYOPERATION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF763
_INIT_FPEXPRPARS_DEF763:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld231
_$FPEXPRPARS$_Ld231:
	.short	0
	.long	_$FPEXPRPARS$_Ld232
	.align 2
.globl	_$FPEXPRPARS$_Ld232
_$FPEXPRPARS$_Ld232:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TCASEOPERATION
_INIT_FPEXPRPARS_TCASEOPERATION:
	.byte	15,14
	.ascii	"TCaseOperation"
	.long	4,1
	.long	_INIT_FPEXPRPARS_TEXPRARGUMENTARRAY
	.long	4

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TCASEOPERATION
_RTTI_FPEXPRPARS_TCASEOPERATION:
	.byte	15,14
	.ascii	"TCaseOperation"
	.long	_VMT_FPEXPRPARS_TCASEOPERATION
	.long	_RTTI_FPEXPRPARS_TFPEXPRNODE
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld234
_$FPEXPRPARS$_Ld234:
	.short	0
	.long	_$FPEXPRPARS$_Ld235
	.align 2
.globl	_$FPEXPRPARS$_Ld235
_$FPEXPRPARS$_Ld235:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TMATHOPERATION
_INIT_FPEXPRPARS_TMATHOPERATION:
	.byte	15,14
	.ascii	"TMathOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TMATHOPERATION
_RTTI_FPEXPRPARS_TMATHOPERATION:
	.byte	15,14
	.ascii	"TMathOperation"
	.long	_VMT_FPEXPRPARS_TMATHOPERATION
	.long	_RTTI_FPEXPRPARS_TFPBINARYOPERATION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF797
_INIT_FPEXPRPARS_DEF797:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld237
_$FPEXPRPARS$_Ld237:
	.short	0
	.long	_$FPEXPRPARS$_Ld238
	.align 2
.globl	_$FPEXPRPARS$_Ld238
_$FPEXPRPARS$_Ld238:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPADDOPERATION
_INIT_FPEXPRPARS_TFPADDOPERATION:
	.byte	15,15
	.ascii	"TFPAddOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPADDOPERATION
_RTTI_FPEXPRPARS_TFPADDOPERATION:
	.byte	15,15
	.ascii	"TFPAddOperation"
	.long	_VMT_FPEXPRPARS_TFPADDOPERATION
	.long	_RTTI_FPEXPRPARS_TMATHOPERATION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF803
_INIT_FPEXPRPARS_DEF803:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld240
_$FPEXPRPARS$_Ld240:
	.short	0
	.long	_$FPEXPRPARS$_Ld241
	.align 2
.globl	_$FPEXPRPARS$_Ld241
_$FPEXPRPARS$_Ld241:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPSUBTRACTOPERATION
_INIT_FPEXPRPARS_TFPSUBTRACTOPERATION:
	.byte	15,20
	.ascii	"TFPSubtractOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPSUBTRACTOPERATION
_RTTI_FPEXPRPARS_TFPSUBTRACTOPERATION:
	.byte	15,20
	.ascii	"TFPSubtractOperation"
	.long	_VMT_FPEXPRPARS_TFPSUBTRACTOPERATION
	.long	_RTTI_FPEXPRPARS_TMATHOPERATION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF809
_INIT_FPEXPRPARS_DEF809:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld243
_$FPEXPRPARS$_Ld243:
	.short	0
	.long	_$FPEXPRPARS$_Ld244
	.align 2
.globl	_$FPEXPRPARS$_Ld244
_$FPEXPRPARS$_Ld244:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPMULTIPLYOPERATION
_INIT_FPEXPRPARS_TFPMULTIPLYOPERATION:
	.byte	15,20
	.ascii	"TFPMultiplyOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPMULTIPLYOPERATION
_RTTI_FPEXPRPARS_TFPMULTIPLYOPERATION:
	.byte	15,20
	.ascii	"TFPMultiplyOperation"
	.long	_VMT_FPEXPRPARS_TFPMULTIPLYOPERATION
	.long	_RTTI_FPEXPRPARS_TMATHOPERATION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF815
_INIT_FPEXPRPARS_DEF815:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld246
_$FPEXPRPARS$_Ld246:
	.short	0
	.long	_$FPEXPRPARS$_Ld247
	.align 2
.globl	_$FPEXPRPARS$_Ld247
_$FPEXPRPARS$_Ld247:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPDIVIDEOPERATION
_INIT_FPEXPRPARS_TFPDIVIDEOPERATION:
	.byte	15,18
	.ascii	"TFPDivideOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPDIVIDEOPERATION
_RTTI_FPEXPRPARS_TFPDIVIDEOPERATION:
	.byte	15,18
	.ascii	"TFPDivideOperation"
	.long	_VMT_FPEXPRPARS_TFPDIVIDEOPERATION
	.long	_RTTI_FPEXPRPARS_TMATHOPERATION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld249
_$FPEXPRPARS$_Ld249:
	.short	0
	.long	_$FPEXPRPARS$_Ld250
	.align 2
.globl	_$FPEXPRPARS$_Ld250
_$FPEXPRPARS$_Ld250:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPUNARYOPERATOR
_INIT_FPEXPRPARS_TFPUNARYOPERATOR:
	.byte	15,16
	.ascii	"TFPUnaryOperator"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPUNARYOPERATOR
_RTTI_FPEXPRPARS_TFPUNARYOPERATOR:
	.byte	15,16
	.ascii	"TFPUnaryOperator"
	.long	_VMT_FPEXPRPARS_TFPUNARYOPERATOR
	.long	_RTTI_FPEXPRPARS_TFPEXPRNODE
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld252
_$FPEXPRPARS$_Ld252:
	.short	0
	.long	_$FPEXPRPARS$_Ld253
	.align 2
.globl	_$FPEXPRPARS$_Ld253
_$FPEXPRPARS$_Ld253:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPCONVERTNODE
_INIT_FPEXPRPARS_TFPCONVERTNODE:
	.byte	15,14
	.ascii	"TFPConvertNode"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPCONVERTNODE
_RTTI_FPEXPRPARS_TFPCONVERTNODE:
	.byte	15,14
	.ascii	"TFPConvertNode"
	.long	_VMT_FPEXPRPARS_TFPCONVERTNODE
	.long	_RTTI_FPEXPRPARS_TFPUNARYOPERATOR
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF723
_INIT_FPEXPRPARS_DEF723:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld255
_$FPEXPRPARS$_Ld255:
	.short	0
	.long	_$FPEXPRPARS$_Ld256
	.align 2
.globl	_$FPEXPRPARS$_Ld256
_$FPEXPRPARS$_Ld256:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPNOTNODE
_INIT_FPEXPRPARS_TFPNOTNODE:
	.byte	15,10
	.ascii	"TFPNotNode"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPNOTNODE
_RTTI_FPEXPRPARS_TFPNOTNODE:
	.byte	15,10
	.ascii	"TFPNotNode"
	.long	_VMT_FPEXPRPARS_TFPNOTNODE
	.long	_RTTI_FPEXPRPARS_TFPUNARYOPERATOR
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld258
_$FPEXPRPARS$_Ld258:
	.short	0
	.long	_$FPEXPRPARS$_Ld259
	.align 2
.globl	_$FPEXPRPARS$_Ld259
_$FPEXPRPARS$_Ld259:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TINTCONVERTNODE
_INIT_FPEXPRPARS_TINTCONVERTNODE:
	.byte	15,15
	.ascii	"TIntConvertNode"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TINTCONVERTNODE
_RTTI_FPEXPRPARS_TINTCONVERTNODE:
	.byte	15,15
	.ascii	"TIntConvertNode"
	.long	_VMT_FPEXPRPARS_TINTCONVERTNODE
	.long	_RTTI_FPEXPRPARS_TFPCONVERTNODE
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld261
_$FPEXPRPARS$_Ld261:
	.short	0
	.long	_$FPEXPRPARS$_Ld262
	.align 2
.globl	_$FPEXPRPARS$_Ld262
_$FPEXPRPARS$_Ld262:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TINTTOFLOATNODE
_INIT_FPEXPRPARS_TINTTOFLOATNODE:
	.byte	15,15
	.ascii	"TIntToFloatNode"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TINTTOFLOATNODE
_RTTI_FPEXPRPARS_TINTTOFLOATNODE:
	.byte	15,15
	.ascii	"TIntToFloatNode"
	.long	_VMT_FPEXPRPARS_TINTTOFLOATNODE
	.long	_RTTI_FPEXPRPARS_TINTCONVERTNODE
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld264
_$FPEXPRPARS$_Ld264:
	.short	0
	.long	_$FPEXPRPARS$_Ld265
	.align 2
.globl	_$FPEXPRPARS$_Ld265
_$FPEXPRPARS$_Ld265:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TINTTODATETIMENODE
_INIT_FPEXPRPARS_TINTTODATETIMENODE:
	.byte	15,18
	.ascii	"TIntToDateTimeNode"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TINTTODATETIMENODE
_RTTI_FPEXPRPARS_TINTTODATETIMENODE:
	.byte	15,18
	.ascii	"TIntToDateTimeNode"
	.long	_VMT_FPEXPRPARS_TINTTODATETIMENODE
	.long	_RTTI_FPEXPRPARS_TINTCONVERTNODE
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld267
_$FPEXPRPARS$_Ld267:
	.short	0
	.long	_$FPEXPRPARS$_Ld268
	.align 2
.globl	_$FPEXPRPARS$_Ld268
_$FPEXPRPARS$_Ld268:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFLOATTODATETIMENODE
_INIT_FPEXPRPARS_TFLOATTODATETIMENODE:
	.byte	15,20
	.ascii	"TFloatToDateTimeNode"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFLOATTODATETIMENODE
_RTTI_FPEXPRPARS_TFLOATTODATETIMENODE:
	.byte	15,20
	.ascii	"TFloatToDateTimeNode"
	.long	_VMT_FPEXPRPARS_TFLOATTODATETIMENODE
	.long	_RTTI_FPEXPRPARS_TFPCONVERTNODE
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF692
_INIT_FPEXPRPARS_DEF692:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld270
_$FPEXPRPARS$_Ld270:
	.short	0
	.long	_$FPEXPRPARS$_Ld271
	.align 2
.globl	_$FPEXPRPARS$_Ld271
_$FPEXPRPARS$_Ld271:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPNEGATEOPERATION
_INIT_FPEXPRPARS_TFPNEGATEOPERATION:
	.byte	15,18
	.ascii	"TFPNegateOperation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPNEGATEOPERATION
_RTTI_FPEXPRPARS_TFPNEGATEOPERATION:
	.byte	15,18
	.ascii	"TFPNegateOperation"
	.long	_VMT_FPEXPRPARS_TFPNEGATEOPERATION
	.long	_RTTI_FPEXPRPARS_TFPUNARYOPERATOR
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF688
_INIT_FPEXPRPARS_DEF688:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF689
_INIT_FPEXPRPARS_DEF689:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld273
_$FPEXPRPARS$_Ld273:
	.short	0
	.long	_$FPEXPRPARS$_Ld274
	.align 2
.globl	_$FPEXPRPARS$_Ld274
_$FPEXPRPARS$_Ld274:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPCONSTEXPRESSION
_INIT_FPEXPRPARS_TFPCONSTEXPRESSION:
	.byte	15,18
	.ascii	"TFPConstExpression"
	.long	4,1
	.long	_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT
	.long	4

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPCONSTEXPRESSION
_RTTI_FPEXPRPARS_TFPCONSTEXPRESSION:
	.byte	15,18
	.ascii	"TFPConstExpression"
	.long	_VMT_FPEXPRPARS_TFPCONSTEXPRESSION
	.long	_RTTI_FPEXPRPARS_TFPEXPRNODE
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TIDENTIFIERTYPE
_INIT_FPEXPRPARS_TIDENTIFIERTYPE:
	.byte	3,15
	.ascii	"TIdentifierType"
	.byte	5
	.long	0,2,0
	.byte	10
	.ascii	"itVariable"
	.byte	18
	.ascii	"itFunctionCallBack"
	.byte	17
	.ascii	"itFunctionHandler"
	.byte	10
	.ascii	"fpexprpars"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TIDENTIFIERTYPE
_RTTI_FPEXPRPARS_TIDENTIFIERTYPE:
	.byte	3,15
	.ascii	"TIdentifierType"
	.byte	5
	.long	0,2,0
	.byte	10
	.ascii	"itVariable"
	.byte	18
	.ascii	"itFunctionCallBack"
	.byte	17
	.ascii	"itFunctionHandler"
	.byte	10
	.ascii	"fpexprpars"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TIDENTIFIERTYPE_s2o
_RTTI_FPEXPRPARS_TIDENTIFIERTYPE_s2o:
	.long	3,1
	.long	_RTTI_FPEXPRPARS_TIDENTIFIERTYPE+41
	.long	2
	.long	_RTTI_FPEXPRPARS_TIDENTIFIERTYPE+60
	.long	0
	.long	_RTTI_FPEXPRPARS_TIDENTIFIERTYPE+30

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TIDENTIFIERTYPE_o2s
_RTTI_FPEXPRPARS_TIDENTIFIERTYPE_o2s:
	.long	0
	.long	_RTTI_FPEXPRPARS_TIDENTIFIERTYPE+30
	.long	_RTTI_FPEXPRPARS_TIDENTIFIERTYPE+41
	.long	_RTTI_FPEXPRPARS_TIDENTIFIERTYPE+60

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPEXPRFUNCTIONCALLBACK
_INIT_FPEXPRPARS_TFPEXPRFUNCTIONCALLBACK:
	.byte	23,23
	.ascii	"TFPExprFunctionCallBack"

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPEXPRFUNCTIONCALLBACK
_RTTI_FPEXPRPARS_TFPEXPRFUNCTIONCALLBACK:
	.byte	23,23
	.ascii	"TFPExprFunctionCallBack"

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPEXPRFUNCTIONEVENT
_INIT_FPEXPRPARS_TFPEXPRFUNCTIONEVENT:
	.byte	6,20
	.ascii	"TFPExprFunctionEvent"
	.byte	0,2,1,6
	.ascii	"Result"
	.ascii	"\023TFPExpressionResult"
	.byte	2,4
	.ascii	"Args"
	.ascii	"\023TExprParameterArray"
	.byte	0
	.long	_RTTI_FPEXPRPARS_TFPEXPRESSIONRESULT
	.long	_RTTI_FPEXPRPARS_TEXPRPARAMETERARRAY

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPEXPRFUNCTIONEVENT
_RTTI_FPEXPRPARS_TFPEXPRFUNCTIONEVENT:
	.byte	6,20
	.ascii	"TFPExprFunctionEvent"
	.byte	0,2,1,6
	.ascii	"Result"
	.ascii	"\023TFPExpressionResult"
	.byte	2,4
	.ascii	"Args"
	.ascii	"\023TExprParameterArray"
	.byte	0
	.long	_RTTI_FPEXPRPARS_TFPEXPRESSIONRESULT
	.long	_RTTI_FPEXPRPARS_TEXPRPARAMETERARRAY

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF584
_INIT_FPEXPRPARS_DEF584:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld276
_$FPEXPRPARS$_Ld276:
	.short	0
	.long	_$FPEXPRPARS$_Ld277
	.align 2
.globl	_$FPEXPRPARS$_Ld277
_$FPEXPRPARS$_Ld277:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF
_INIT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF:
	.byte	15,20
	.ascii	"TFPExprIdentifierDef"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	24
	.long	_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT
	.long	28
	.long	_INIT_SYSTEM_ANSISTRING
	.long	44

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPEXPRIDENTIFIERDEF
_RTTI_FPEXPRPARS_TFPEXPRIDENTIFIERDEF:
	.byte	15,20
	.ascii	"TFPExprIdentifierDef"
	.long	_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF
	.long	_RTTI_CLASSES_TCOLLECTIONITEM
	.short	6
	.byte	10
	.ascii	"fpexprpars"
	.short	6
	.long	_RTTI_FPEXPRPARS_TIDENTIFIERTYPE
	.long	48,48,1,0,-2147483648
	.short	0
	.byte	48,14
	.ascii	"IdentifierType"
	.long	_RTTI_SYSTEM_SHORTSTRING
	.long	52
	.long	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETNAME$SHORTSTRING
	.long	1,0,-2147483648
	.short	1
	.byte	52,4
	.ascii	"Name"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__GETVALUE$$ANSISTRING
	.long	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETVALUE$ANSISTRING
	.long	1,0,-2147483648
	.short	2
	.byte	53,5
	.ascii	"Value"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	44
	.long	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETARGUMENTTYPES$ANSISTRING
	.long	1,0,-2147483648
	.short	3
	.byte	52,14
	.ascii	"ParameterTypes"
	.long	_RTTI_FPEXPRPARS_TRESULTTYPE
	.long	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__GETRESULTTYPE$$TRESULTTYPE
	.long	_FPEXPRPARS_TFPEXPRIDENTIFIERDEF_$__SETRESULTTYPE$TRESULTTYPE
	.long	1,0,-2147483648
	.short	4
	.byte	53,10
	.ascii	"ResultType"
	.long	_RTTI_FPEXPRPARS_TFPEXPRFUNCTIONEVENT
	.long	308,308,1,0,-2147483648
	.short	5
	.byte	48,18
	.ascii	"OnGetFunctionValue"

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TBUILTINCATEGORY
_INIT_FPEXPRPARS_TBUILTINCATEGORY:
	.byte	3,16
	.ascii	"TBuiltInCategory"
	.byte	5
	.long	0,7,0
	.byte	9
	.ascii	"bcStrings"
	.byte	10
	.ascii	"bcDateTime"
	.byte	6
	.ascii	"bcMath"
	.byte	9
	.ascii	"bcBoolean"
	.byte	12
	.ascii	"bcConversion"
	.byte	6
	.ascii	"bcData"
	.byte	7
	.ascii	"bcVaria"
	.byte	6
	.ascii	"bcUser"
	.byte	10
	.ascii	"fpexprpars"
	.byte	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TBUILTINCATEGORIES
_INIT_FPEXPRPARS_TBUILTINCATEGORIES:
	.byte	5,18
	.ascii	"TBuiltInCategories"
	.byte	5
	.long	_INIT_FPEXPRPARS_TBUILTINCATEGORY

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld279
_$FPEXPRPARS$_Ld279:
	.short	0
	.long	_$FPEXPRPARS$_Ld280
	.align 2
.globl	_$FPEXPRPARS$_Ld280
_$FPEXPRPARS$_Ld280:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPBUILTINEXPRIDENTIFIERDEF
_INIT_FPEXPRPARS_TFPBUILTINEXPRIDENTIFIERDEF:
	.byte	15,27
	.ascii	"TFPBuiltInExprIdentifierDef"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPBUILTINEXPRIDENTIFIERDEF
_RTTI_FPEXPRPARS_TFPBUILTINEXPRIDENTIFIERDEF:
	.byte	15,27
	.ascii	"TFPBuiltInExprIdentifierDef"
	.long	_VMT_FPEXPRPARS_TFPBUILTINEXPRIDENTIFIERDEF
	.long	_RTTI_FPEXPRPARS_TFPEXPRIDENTIFIERDEF
	.short	7
	.byte	10
	.ascii	"fpexprpars"
	.short	1
	.long	_RTTI_FPEXPRPARS_TBUILTINCATEGORY
	.long	320,320,1,0,-2147483648
	.short	6
	.byte	48,8
	.ascii	"Category"

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld282
_$FPEXPRPARS$_Ld282:
	.short	0
	.long	_$FPEXPRPARS$_Ld283
	.align 2
.globl	_$FPEXPRPARS$_Ld283
_$FPEXPRPARS$_Ld283:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS
_INIT_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS:
	.byte	15,21
	.ascii	"TFPExprIdentifierDefs"
	.long	4,0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld285
_$FPEXPRPARS$_Ld285:
	.short	0
	.long	_$FPEXPRPARS$_Ld286
	.align 2
.globl	_$FPEXPRPARS$_Ld286
_$FPEXPRPARS$_Ld286:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPEXPRIDENTIFIERNODE
_INIT_FPEXPRPARS_TFPEXPRIDENTIFIERNODE:
	.byte	15,21
	.ascii	"TFPExprIdentifierNode"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPEXPRIDENTIFIERNODE
_RTTI_FPEXPRPARS_TFPEXPRIDENTIFIERNODE:
	.byte	15,21
	.ascii	"TFPExprIdentifierNode"
	.long	_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERNODE
	.long	_RTTI_FPEXPRPARS_TFPEXPRNODE
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld288
_$FPEXPRPARS$_Ld288:
	.short	0
	.long	_$FPEXPRPARS$_Ld289
	.align 2
.globl	_$FPEXPRPARS$_Ld289
_$FPEXPRPARS$_Ld289:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPEXPRVARIABLE
_INIT_FPEXPRPARS_TFPEXPRVARIABLE:
	.byte	15,15
	.ascii	"TFPExprVariable"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPEXPRVARIABLE
_RTTI_FPEXPRPARS_TFPEXPRVARIABLE:
	.byte	15,15
	.ascii	"TFPExprVariable"
	.long	_VMT_FPEXPRPARS_TFPEXPRVARIABLE
	.long	_RTTI_FPEXPRPARS_TFPEXPRIDENTIFIERNODE
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_DEF858
_INIT_FPEXPRPARS_DEF858:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld291
_$FPEXPRPARS$_Ld291:
	.short	0
	.long	_$FPEXPRPARS$_Ld292
	.align 2
.globl	_$FPEXPRPARS$_Ld292
_$FPEXPRPARS$_Ld292:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPEXPRFUNCTION
_INIT_FPEXPRPARS_TFPEXPRFUNCTION:
	.byte	15,15
	.ascii	"TFPExprFunction"
	.long	4,2
	.long	_INIT_FPEXPRPARS_TEXPRARGUMENTARRAY
	.long	16
	.long	_INIT_FPEXPRPARS_TEXPRPARAMETERARRAY
	.long	20

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPEXPRFUNCTION
_RTTI_FPEXPRPARS_TFPEXPRFUNCTION:
	.byte	15,15
	.ascii	"TFPExprFunction"
	.long	_VMT_FPEXPRPARS_TFPEXPRFUNCTION
	.long	_RTTI_FPEXPRPARS_TFPEXPRIDENTIFIERNODE
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld294
_$FPEXPRPARS$_Ld294:
	.short	0
	.long	_$FPEXPRPARS$_Ld295
	.align 2
.globl	_$FPEXPRPARS$_Ld295
_$FPEXPRPARS$_Ld295:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPFUNCTIONCALLBACK
_INIT_FPEXPRPARS_TFPFUNCTIONCALLBACK:
	.byte	15,19
	.ascii	"TFPFunctionCallBack"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPFUNCTIONCALLBACK
_RTTI_FPEXPRPARS_TFPFUNCTIONCALLBACK:
	.byte	15,19
	.ascii	"TFPFunctionCallBack"
	.long	_VMT_FPEXPRPARS_TFPFUNCTIONCALLBACK
	.long	_RTTI_FPEXPRPARS_TFPEXPRFUNCTION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld297
_$FPEXPRPARS$_Ld297:
	.short	0
	.long	_$FPEXPRPARS$_Ld298
	.align 2
.globl	_$FPEXPRPARS$_Ld298
_$FPEXPRPARS$_Ld298:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_TFPFUNCTIONEVENTHANDLER
_INIT_FPEXPRPARS_TFPFUNCTIONEVENTHANDLER:
	.byte	15,23
	.ascii	"TFPFunctionEventHandler"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_TFPFUNCTIONEVENTHANDLER
_RTTI_FPEXPRPARS_TFPFUNCTIONEVENTHANDLER:
	.byte	15,23
	.ascii	"TFPFunctionEventHandler"
	.long	_VMT_FPEXPRPARS_TFPFUNCTIONEVENTHANDLER
	.long	_RTTI_FPEXPRPARS_TFPEXPRFUNCTION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
	.short	0

.const_data
	.align 2
.globl	_$FPEXPRPARS$_Ld300
_$FPEXPRPARS$_Ld300:
	.short	0
	.long	_$FPEXPRPARS$_Ld301
	.align 2
.globl	_$FPEXPRPARS$_Ld301
_$FPEXPRPARS$_Ld301:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPEXPRPARS_EEXPRPARSER
_INIT_FPEXPRPARS_EEXPRPARSER:
	.byte	15,11
	.ascii	"EExprParser"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPEXPRPARS_EEXPRPARSER
_RTTI_FPEXPRPARS_EEXPRPARSER:
	.byte	15,11
	.ascii	"EExprParser"
	.long	_VMT_FPEXPRPARS_EEXPRPARSER
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	10
	.ascii	"fpexprpars"
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
L_VMT_FPEXPRPARS_EEXPRPARSER$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_EEXPRPARSER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RTTI_FPEXPRPARS_TTOKENTYPE$non_lazy_ptr:
.indirect_symbol _RTTI_FPEXPRPARS_TTOKENTYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RTTI_FPEXPRPARS_TRESULTTYPE$non_lazy_ptr:
.indirect_symbol _RTTI_FPEXPRPARS_TRESULTTYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRINVALIDRESULTCHARACTER$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRINVALIDRESULTCHARACTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPEXPRPARS_BUILTINS$non_lazy_ptr:
.indirect_symbol _U_FPEXPRPARS_BUILTINS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TEXPRBUILTINMANAGER$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TEXPRBUILTINMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SUNKNOWNDELIMITER$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SUNKNOWNDELIMITER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_EEXPRSCANNER$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_EEXPRSCANNER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SBADQUOTES$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SBADQUOTES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRINVALIDNUMBERCHAR$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRINVALIDNUMBERCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRINVALIDNUMBER$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRINVALIDNUMBER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld2$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld4$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld6$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld8$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld10$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld10
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld12$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld12
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld14$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld14
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld16$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld16
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRUNKNOWNCHARACTER$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRUNKNOWNCHARACTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPEXPRIDENTIFIERDEFS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPEXPRESSIONSCANNER$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPEXPRESSIONSCANNER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CONTNRS_TFPHASHOBJECTLIST$non_lazy_ptr:
.indirect_symbol _VMT_CONTNRS_TFPHASHOBJECTLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRUNEXPECTEDENDOFEXPRESSION$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRUNEXPECTEDENDOFEXPRESSION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRINEXPRESSIONEMPTY$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRINEXPRESSIONEMPTY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRINEXPRESSION$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRINEXPRESSION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TINTTOFLOATNODE$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TINTTOFLOATNODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TINTTODATETIMENODE$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TINTTODATETIMENODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFLOATTODATETIMENODE$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFLOATTODATETIMENODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_FPEXPRPARS_TFPEXPRESSIONRESULT$non_lazy_ptr:
.indirect_symbol _INIT_FPEXPRPARS_TFPEXPRESSIONRESULT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPNOTNODE$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPNOTNODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPBINARYOROPERATION$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPBINARYOROPERATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPBINARYANDOPERATION$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPBINARYANDOPERATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPBINARYXOROPERATION$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPBINARYXOROPERATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRUNKNOWNBOOLEANOP$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRUNKNOWNBOOLEANOP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPLESSTHANOPERATION$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPLESSTHANOPERATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPLESSTHANEQUALOPERATION$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPLESSTHANEQUALOPERATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPGREATERTHANOPERATION$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPGREATERTHANOPERATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPGREATERTHANEQUALOPERATION$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPGREATERTHANEQUALOPERATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPEQUALOPERATION$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPEQUALOPERATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPUNEQUALOPERATION$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPUNEQUALOPERATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRUNKNOWNCOMPARISON$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRUNKNOWNCOMPARISON
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPADDOPERATION$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPADDOPERATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPSUBTRACTOPERATION$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPSUBTRACTOPERATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPMULTIPLYOPERATION$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPMULTIPLYOPERATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPDIVIDEOPERATION$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPDIVIDEOPERATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPNEGATEOPERATION$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPNEGATEOPERATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRBRACKETEXPECTED$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRBRACKETEXPECTED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_FPEXPRPARS_TEXPRARGUMENTARRAY$non_lazy_ptr:
.indirect_symbol _INIT_FPEXPRPARS_TEXPRARGUMENTARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPCONSTEXPRESSION$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPCONSTEXPRESSION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRINVALIDFLOAT$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRINVALIDFLOAT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRUNKNOWNTOKENATPOS$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRUNKNOWNTOKENATPOS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRUNKNOWNIDENTIFIER$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRUNKNOWNIDENTIFIER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRLEFTBRACKETEXPECTED$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRLEFTBRACKETEXPECTED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRCOMMAEXPECTED$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRCOMMAEXPECTED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TIFOPERATION$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TIFOPERATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TCASEOPERATION$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TCASEOPERATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPEXPRVARIABLE$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPEXPRVARIABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPFUNCTIONCALLBACK$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPFUNCTIONCALLBACK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPFUNCTIONEVENTHANDLER$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPFUNCTIONEVENTHANDLER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRUNTERMINATEDEXPRESSION$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRUNTERMINATEDEXPRESSION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRINVALIDRESULTTYPE$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRINVALIDRESULTTYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRDUPLICATEIDENTIFIER$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRDUPLICATEIDENTIFIER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld18$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld18
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRNOTVARIABLE$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRNOTVARIABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld20$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld20
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld22$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld22
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPEXPRPARS_TFPBUILTINEXPRIDENTIFIERDEF$non_lazy_ptr:
.indirect_symbol _VMT_FPEXPRPARS_TFPBUILTINEXPRIDENTIFIERDEF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRTYPESDONOTMATCH$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRTYPESDONOTMATCH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRNOLEFTOPERAND$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRNOLEFTOPERAND
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRNORIGHTOPERAND$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRNORIGHTOPERAND
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRNOOPERAND$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRNOOPERAND
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld24$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld24
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRNONEGATION$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRNONEGATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld26$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld26
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld28$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld28
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRNONODETOCHECK$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRNONODETOCHECK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld30$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld30
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SINVALIDNODETYPE$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SINVALIDNODETYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld32$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld32
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld34$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld34
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRNONOTOPERATION$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRNONOTOPERATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld36$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld36
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRIFNEEDSBOOLEAN$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRIFNEEDSBOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld38$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld38
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRCASENEEDS3$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRCASENEEDS3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRCASEEVENCOUNT$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRCASEEVENCOUNT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRCASELABELNOTACONST$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRCASELABELNOTACONST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRCASELABELTYPE$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRCASELABELTYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRCASEVALUETYPE$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRCASEVALUETYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld40$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld40
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld42$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld42
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld44$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld44
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld46$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld46
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld48$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld48
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld50$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld50
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld52$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld52
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld54$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld54
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld56$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld56
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld58$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld58
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld60$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld60
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld62$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld62
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld64$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld64
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_ERRINVALIDARGUMENTCOUNT$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_ERRINVALIDARGUMENTCOUNT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPEXPRPARS_SERRINVALIDARGUMENTTYPE$non_lazy_ptr:
.indirect_symbol _RESSTR_FPEXPRPARS_SERRINVALIDARGUMENTTYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_FPEXPRPARS_TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _INIT_FPEXPRPARS_TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld66$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld66
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld68$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld68
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_DEFAULTFORMATSETTINGS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld69$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld69
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld70$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld70
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINCOS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINCOS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld72$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld72
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSIN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSIN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld73$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld73
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINARCTAN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINARCTAN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld74$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld74
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINABS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINABS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld75$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld75
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSQR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSQR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld76$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld76
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSQRT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSQRT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld77$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld77
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINEXP$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINEXP$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld78$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld78
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINLN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINLN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld79$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld79
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINLOG$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINLOG$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld80$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld80
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINFRAC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINFRAC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld81$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld81
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTININT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTININT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld82$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld82
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINROUND$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINROUND$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld83$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld83
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINTRUNC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINTRUNC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld84$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld84
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld85$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld85
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINLENGTH$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINLENGTH$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld87$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld87
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld88$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld88
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINCOPY$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINCOPY$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld90$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld90
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINDELETE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINDELETE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld91$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld91
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld92$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld92
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINPOS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINPOS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld94$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld94
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINLOWERCASE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINLOWERCASE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld95$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld95
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINUPPERCASE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINUPPERCASE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld96$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld96
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld97$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld97
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSTRINGREPLACE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSTRINGREPLACE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld99$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld99
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINCOMPARETEXT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINCOMPARETEXT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld100$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld100
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINDATE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINDATE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld101$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld101
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINTIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINTIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld102$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld102
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINNOW$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINNOW$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld103$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld103
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld104$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld104
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINDAYOFWEEK$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINDAYOFWEEK$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld106$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld106
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINEXTRACTYEAR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINEXTRACTYEAR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld107$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld107
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINEXTRACTMONTH$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINEXTRACTMONTH$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld108$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld108
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINEXTRACTDAY$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINEXTRACTDAY$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld109$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld109
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINEXTRACTHOUR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINEXTRACTHOUR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld110$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld110
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINEXTRACTMIN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINEXTRACTMIN$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld111$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld111
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINEXTRACTSEC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINEXTRACTSEC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld112$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld112
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINEXTRACTMSEC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINEXTRACTMSEC$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld113$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld113
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld114$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld114
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINENCODEDATE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINENCODEDATE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld116$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld116
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld117$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld117
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINENCODETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINENCODETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld119$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld119
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld120$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld120
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINENCODEDATETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINENCODEDATETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld122$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld122
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld123$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld123
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSHORTDAYNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSHORTDAYNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld125$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld125
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSHORTMONTHNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSHORTMONTHNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld126$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld126
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINLONGDAYNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINLONGDAYNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld127$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld127
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINLONGMONTHNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINLONGMONTHNAME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld128$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld128
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld129$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld129
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINFORMATDATETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINFORMATDATETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld131$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld131
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld132$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld132
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSHL$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSHL$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld134$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld134
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSHR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSHR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld135$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld135
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld136$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld136
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINIFS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINIFS$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld138$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld138
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld139$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld139
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINIFF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINIFF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld141$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld141
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld142$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld142
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINIFD$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINIFD$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld144$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld144
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld145$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld145
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINIFI$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINIFI$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld147$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld147
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTININTTOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTININTTOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld148$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld148
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSTRTOINT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSTRTOINT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld149$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld149
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld150$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld150
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSTRTOINTDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSTRTOINTDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld152$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld152
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINFLOATTOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINFLOATTOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld153$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld153
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSTRTOFLOAT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSTRTOFLOAT$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld154$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld154
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld155$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld155
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSTRTOFLOATDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSTRTOFLOATDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld157$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld157
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld158$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld158
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINBOOLTOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINBOOLTOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld160$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld160
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSTRTOBOOL$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSTRTOBOOL$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld161$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld161
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld162$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld162
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSTRTOBOOLDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSTRTOBOOLDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld164$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld164
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINDATETOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINDATETOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld165$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld165
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINTIMETOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINTIMETOSTR$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld166$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld166
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSTRTODATE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSTRTODATE$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld167$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld167
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSTRTODATEDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSTRTODATEDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld168$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld168
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSTRTOTIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSTRTOTIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld169$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld169
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSTRTOTIMEDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSTRTOTIMEDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld170$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld170
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSTRTODATETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSTRTODATETIME$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld171$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld171
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPEXPRPARS_BUILTINSTRTODATETIMEDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY$non_lazy_ptr:
.indirect_symbol _FPEXPRPARS_BUILTINSTRTODATETIMEDEF$TFPEXPRESSIONRESULT$TEXPRPARAMETERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPEXPRPARS$_Ld172$non_lazy_ptr:
.indirect_symbol _$FPEXPRPARS$_Ld172
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_START
_RESSTR_FPEXPRPARS_START:
	.long	_$FPEXPRPARS$_Ld302
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SBADQUOTES
_RESSTR_FPEXPRPARS_SBADQUOTES:
	.long	_$FPEXPRPARS$_Ld306
	.long	_$FPEXPRPARS$_Ld304
	.long	_$FPEXPRPARS$_Ld304
	.long	62516807

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SUNKNOWNDELIMITER
_RESSTR_FPEXPRPARS_SUNKNOWNDELIMITER:
	.long	_$FPEXPRPARS$_Ld310
	.long	_$FPEXPRPARS$_Ld308
	.long	_$FPEXPRPARS$_Ld308
	.long	259329858

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRUNKNOWNCHARACTER
_RESSTR_FPEXPRPARS_SERRUNKNOWNCHARACTER:
	.long	_$FPEXPRPARS$_Ld314
	.long	_$FPEXPRPARS$_Ld312
	.long	_$FPEXPRPARS$_Ld312
	.long	32402706

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRUNEXPECTEDENDOFEXPRESSION
_RESSTR_FPEXPRPARS_SERRUNEXPECTEDENDOFEXPRESSION:
	.long	_$FPEXPRPARS$_Ld318
	.long	_$FPEXPRPARS$_Ld316
	.long	_$FPEXPRPARS$_Ld316
	.long	71989518

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRUNKNOWNCOMPARISON
_RESSTR_FPEXPRPARS_SERRUNKNOWNCOMPARISON:
	.long	_$FPEXPRPARS$_Ld322
	.long	_$FPEXPRPARS$_Ld320
	.long	_$FPEXPRPARS$_Ld320
	.long	256022398

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRUNKNOWNBOOLEANOP
_RESSTR_FPEXPRPARS_SERRUNKNOWNBOOLEANOP:
	.long	_$FPEXPRPARS$_Ld326
	.long	_$FPEXPRPARS$_Ld324
	.long	_$FPEXPRPARS$_Ld324
	.long	192024206

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRBRACKETEXPECTED
_RESSTR_FPEXPRPARS_SERRBRACKETEXPECTED:
	.long	_$FPEXPRPARS$_Ld330
	.long	_$FPEXPRPARS$_Ld328
	.long	_$FPEXPRPARS$_Ld328
	.long	44273011

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRUNKNOWNTOKENATPOS
_RESSTR_FPEXPRPARS_SERRUNKNOWNTOKENATPOS:
	.long	_$FPEXPRPARS$_Ld334
	.long	_$FPEXPRPARS$_Ld332
	.long	_$FPEXPRPARS$_Ld332
	.long	207971315

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRLEFTBRACKETEXPECTED
_RESSTR_FPEXPRPARS_SERRLEFTBRACKETEXPECTED:
	.long	_$FPEXPRPARS$_Ld338
	.long	_$FPEXPRPARS$_Ld336
	.long	_$FPEXPRPARS$_Ld336
	.long	45321587

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRINVALIDFLOAT
_RESSTR_FPEXPRPARS_SERRINVALIDFLOAT:
	.long	_$FPEXPRPARS$_Ld342
	.long	_$FPEXPRPARS$_Ld340
	.long	_$FPEXPRPARS$_Ld340
	.long	72652549

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRUNKNOWNIDENTIFIER
_RESSTR_FPEXPRPARS_SERRUNKNOWNIDENTIFIER:
	.long	_$FPEXPRPARS$_Ld346
	.long	_$FPEXPRPARS$_Ld344
	.long	_$FPEXPRPARS$_Ld344
	.long	2731731

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRINEXPRESSION
_RESSTR_FPEXPRPARS_SERRINEXPRESSION:
	.long	_$FPEXPRPARS$_Ld350
	.long	_$FPEXPRPARS$_Ld348
	.long	_$FPEXPRPARS$_Ld348
	.long	53161086

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRINEXPRESSIONEMPTY
_RESSTR_FPEXPRPARS_SERRINEXPRESSIONEMPTY:
	.long	_$FPEXPRPARS$_Ld354
	.long	_$FPEXPRPARS$_Ld352
	.long	_$FPEXPRPARS$_Ld352
	.long	42951870

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRCOMMAEXPECTED
_RESSTR_FPEXPRPARS_SERRCOMMAEXPECTED:
	.long	_$FPEXPRPARS$_Ld358
	.long	_$FPEXPRPARS$_Ld356
	.long	_$FPEXPRPARS$_Ld356
	.long	241025075

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRINVALIDNUMBERCHAR
_RESSTR_FPEXPRPARS_SERRINVALIDNUMBERCHAR:
	.long	_$FPEXPRPARS$_Ld362
	.long	_$FPEXPRPARS$_Ld360
	.long	_$FPEXPRPARS$_Ld360
	.long	109209699

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRINVALIDNUMBER
_RESSTR_FPEXPRPARS_SERRINVALIDNUMBER:
	.long	_$FPEXPRPARS$_Ld366
	.long	_$FPEXPRPARS$_Ld364
	.long	_$FPEXPRPARS$_Ld364
	.long	142798835

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRNOOPERAND
_RESSTR_FPEXPRPARS_SERRNOOPERAND:
	.long	_$FPEXPRPARS$_Ld370
	.long	_$FPEXPRPARS$_Ld368
	.long	_$FPEXPRPARS$_Ld368
	.long	157821123

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRNOLEFTOPERAND
_RESSTR_FPEXPRPARS_SERRNOLEFTOPERAND:
	.long	_$FPEXPRPARS$_Ld374
	.long	_$FPEXPRPARS$_Ld372
	.long	_$FPEXPRPARS$_Ld372
	.long	9183827

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRNORIGHTOPERAND
_RESSTR_FPEXPRPARS_SERRNORIGHTOPERAND:
	.long	_$FPEXPRPARS$_Ld378
	.long	_$FPEXPRPARS$_Ld376
	.long	_$FPEXPRPARS$_Ld376
	.long	9183827

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRNONEGATION
_RESSTR_FPEXPRPARS_SERRNONEGATION:
	.long	_$FPEXPRPARS$_Ld382
	.long	_$FPEXPRPARS$_Ld380
	.long	_$FPEXPRPARS$_Ld380
	.long	35799251

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRNONOTOPERATION
_RESSTR_FPEXPRPARS_SERRNONOTOPERATION:
	.long	_$FPEXPRPARS$_Ld386
	.long	_$FPEXPRPARS$_Ld384
	.long	_$FPEXPRPARS$_Ld384
	.long	265387779

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRTYPESDONOTMATCH
_RESSTR_FPEXPRPARS_SERRTYPESDONOTMATCH:
	.long	_$FPEXPRPARS$_Ld390
	.long	_$FPEXPRPARS$_Ld388
	.long	_$FPEXPRPARS$_Ld388
	.long	214499646

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRTYPESINCOMPATIBLE
_RESSTR_FPEXPRPARS_SERRTYPESINCOMPATIBLE:
	.long	_$FPEXPRPARS$_Ld394
	.long	_$FPEXPRPARS$_Ld392
	.long	_$FPEXPRPARS$_Ld392
	.long	168645150

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRNONODETOCHECK
_RESSTR_FPEXPRPARS_SERRNONODETOCHECK:
	.long	_$FPEXPRPARS$_Ld398
	.long	_$FPEXPRPARS$_Ld396
	.long	_$FPEXPRPARS$_Ld396
	.long	113747729

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SINVALIDNODETYPE
_RESSTR_FPEXPRPARS_SINVALIDNODETYPE:
	.long	_$FPEXPRPARS$_Ld402
	.long	_$FPEXPRPARS$_Ld400
	.long	_$FPEXPRPARS$_Ld400
	.long	152726547

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRUNTERMINATEDEXPRESSION
_RESSTR_FPEXPRPARS_SERRUNTERMINATEDEXPRESSION:
	.long	_$FPEXPRPARS$_Ld406
	.long	_$FPEXPRPARS$_Ld404
	.long	_$FPEXPRPARS$_Ld404
	.long	90798211

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRDUPLICATEIDENTIFIER
_RESSTR_FPEXPRPARS_SERRDUPLICATEIDENTIFIER:
	.long	_$FPEXPRPARS$_Ld410
	.long	_$FPEXPRPARS$_Ld408
	.long	_$FPEXPRPARS$_Ld408
	.long	21226318

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRINVALIDRESULTCHARACTER
_RESSTR_FPEXPRPARS_SERRINVALIDRESULTCHARACTER:
	.long	_$FPEXPRPARS$_Ld414
	.long	_$FPEXPRPARS$_Ld412
	.long	_$FPEXPRPARS$_Ld412
	.long	48453122

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_ERRINVALIDARGUMENTCOUNT
_RESSTR_FPEXPRPARS_ERRINVALIDARGUMENTCOUNT:
	.long	_$FPEXPRPARS$_Ld418
	.long	_$FPEXPRPARS$_Ld416
	.long	_$FPEXPRPARS$_Ld416
	.long	233408307

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRINVALIDARGUMENTTYPE
_RESSTR_FPEXPRPARS_SERRINVALIDARGUMENTTYPE:
	.long	_$FPEXPRPARS$_Ld422
	.long	_$FPEXPRPARS$_Ld420
	.long	_$FPEXPRPARS$_Ld420
	.long	261069763

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRINVALIDRESULTTYPE
_RESSTR_FPEXPRPARS_SERRINVALIDRESULTTYPE:
	.long	_$FPEXPRPARS$_Ld426
	.long	_$FPEXPRPARS$_Ld424
	.long	_$FPEXPRPARS$_Ld424
	.long	139298499

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRNOTVARIABLE
_RESSTR_FPEXPRPARS_SERRNOTVARIABLE:
	.long	_$FPEXPRPARS$_Ld430
	.long	_$FPEXPRPARS$_Ld428
	.long	_$FPEXPRPARS$_Ld428
	.long	145293733

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRINACTIVE
_RESSTR_FPEXPRPARS_SERRINACTIVE:
	.long	_$FPEXPRPARS$_Ld434
	.long	_$FPEXPRPARS$_Ld432
	.long	_$FPEXPRPARS$_Ld432
	.long	145322869

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRIFNEEDSBOOLEAN
_RESSTR_FPEXPRPARS_SERRIFNEEDSBOOLEAN:
	.long	_$FPEXPRPARS$_Ld438
	.long	_$FPEXPRPARS$_Ld436
	.long	_$FPEXPRPARS$_Ld436
	.long	220324467

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRCASENEEDS3
_RESSTR_FPEXPRPARS_SERRCASENEEDS3:
	.long	_$FPEXPRPARS$_Ld442
	.long	_$FPEXPRPARS$_Ld440
	.long	_$FPEXPRPARS$_Ld440
	.long	226127267

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRCASEEVENCOUNT
_RESSTR_FPEXPRPARS_SERRCASEEVENCOUNT:
	.long	_$FPEXPRPARS$_Ld446
	.long	_$FPEXPRPARS$_Ld444
	.long	_$FPEXPRPARS$_Ld444
	.long	23538707

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRCASELABELNOTACONST
_RESSTR_FPEXPRPARS_SERRCASELABELNOTACONST:
	.long	_$FPEXPRPARS$_Ld450
	.long	_$FPEXPRPARS$_Ld448
	.long	_$FPEXPRPARS$_Ld448
	.long	1096526

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRCASELABELTYPE
_RESSTR_FPEXPRPARS_SERRCASELABELTYPE:
	.long	_$FPEXPRPARS$_Ld454
	.long	_$FPEXPRPARS$_Ld452
	.long	_$FPEXPRPARS$_Ld452
	.long	182129299

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_SERRCASEVALUETYPE
_RESSTR_FPEXPRPARS_SERRCASEVALUETYPE:
	.long	_$FPEXPRPARS$_Ld458
	.long	_$FPEXPRPARS$_Ld456
	.long	_$FPEXPRPARS$_Ld456
	.long	122389123

.data
	.align 2
.globl	_RESSTR_FPEXPRPARS_END
_RESSTR_FPEXPRPARS_END:
	.long	_RESSTR_FPEXPRPARS_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

