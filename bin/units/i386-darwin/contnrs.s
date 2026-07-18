# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__CREATE$BOOLEAN$$TFPOBJECTLIST
_CONTNRS_TFPOBJECTLIST_$__CREATE$BOOLEAN$$TFPOBJECTLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj5
	jmp	Lj6
Lj5:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj6:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj11
	jmp	Lj12
Lj11:
	jmp	Lj3
Lj12:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj15
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj19
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__CREATE$$TFPOBJECTLIST$stub
	movl	-12(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,4(%eax)
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	call	LFPC_RERAISE$stub
Lj20:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj30
	jmp	Lj29
Lj30:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj28
	jmp	Lj29
Lj28:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj29:
Lj15:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj17
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj34
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj35
	jmp	Lj36
Lj35:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj36:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj34:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj33
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj33:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj17
Lj17:
Lj3:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__DESTROY
_CONTNRS_TFPOBJECTLIST_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj43
	jmp	Lj44
Lj43:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj44:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj47
	jmp	Lj48
Lj47:
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__CLEAR$stub
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	$1,%edx
	movl	-8(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj48:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj61
	jmp	Lj60
Lj61:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj59
	jmp	Lj60
Lj59:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj60:
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__CLEAR
_CONTNRS_TFPOBJECTLIST_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,4(%eax)
	jne	Lj66
	jmp	Lj67
Lj66:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jl	Lj69
	incl	-8(%ebp)
	.align 2
Lj70:
	decl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	$0,-8(%ebp)
	jg	Lj70
Lj69:
Lj67:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TFPLIST_$__CLEAR$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__CREATE$$TFPOBJECTLIST
_CONTNRS_TFPOBJECTLIST_$__CREATE$$TFPOBJECTLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj82
Lj82:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj83
	jmp	Lj84
Lj83:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj84:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj89
	jmp	Lj90
Lj89:
	jmp	Lj81
Lj90:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj93
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj97
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj82(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movb	$1,4(%eax)
Lj97:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj98
	call	LFPC_RERAISE$stub
Lj98:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj114
	jmp	Lj113
Lj114:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj112
	jmp	Lj113
Lj112:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj113:
Lj93:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj95
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj118
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj119
	jmp	Lj120
Lj119:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj120:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj118:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj117
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj117:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj95
Lj95:
Lj81:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT
_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__SETCOUNT$LONGINT
_CONTNRS_TFPOBJECTLIST_$__SETCOUNT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj131
	jmp	Lj132
Lj131:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__SETCOUNT$LONGINT$stub
Lj132:
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT
_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__SETITEM$LONGINT$TOBJECT
_CONTNRS_TFPOBJECTLIST_$__SETITEM$LONGINT$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,4(%eax)
	jne	Lj147
	jmp	Lj148
Lj147:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj148:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__PUT$LONGINT$POINTER$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__SETCAPACITY$LONGINT
_CONTNRS_TFPOBJECTLIST_$__SETCAPACITY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__SETCAPACITY$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__GETCAPACITY$$LONGINT
_CONTNRS_TFPOBJECTLIST_$__GETCAPACITY$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__ADD$TOBJECT$$LONGINT
_CONTNRS_TFPOBJECTLIST_$__ADD$TOBJECT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__DELETE$LONGINT
_CONTNRS_TFPOBJECTLIST_$__DELETE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,4(%eax)
	jne	Lj183
	jmp	Lj184
Lj183:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj184:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__DELETE$LONGINT$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__EXCHANGE$LONGINT$LONGINT
_CONTNRS_TFPOBJECTLIST_$__EXCHANGE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__EXCHANGE$LONGINT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__EXPAND$$TFPOBJECTLIST
_CONTNRS_TFPOBJECTLIST_$__EXPAND$$TFPOBJECTLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TFPLIST_$__EXPAND$$TFPLIST$stub
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__EXTRACT$TOBJECT$$TOBJECT
_CONTNRS_TFPOBJECTLIST_$__EXTRACT$TOBJECT$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__EXTRACT$POINTER$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__REMOVE$TOBJECT$$LONGINT
_CONTNRS_TFPOBJECTLIST_$__REMOVE$TOBJECT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj227
	jmp	Lj228
Lj227:
	movl	-8(%ebp),%eax
	cmpb	$0,4(%eax)
	jne	Lj229
	jmp	Lj230
Lj229:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj230:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__DELETE$LONGINT$stub
Lj228:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT
_CONTNRS_TFPOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__INDEXOF$POINTER$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__FINDINSTANCEOF$TCLASS$BOOLEAN$LONGINT$$LONGINT
_CONTNRS_TFPOBJECTLIST_$__FINDINSTANCEOF$TCLASS$BOOLEAN$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$-1,-16(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj257
	jmp	Lj258
Lj257:
	jmp	Lj260
	.align 2
Lj259:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%edx
	movl	(%edx),%edx
	movl	%edx,-24(%ebp)
	movl	-24(%ebp),%edx
	cmpl	-4(%ebp),%edx
	je	Lj262
	jmp	Lj263
Lj262:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj276
Lj263:
	incl	-20(%ebp)
Lj276:
Lj260:
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-20(%ebp),%eax
	jg	Lj277
	jmp	Lj261
Lj277:
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj259
	jmp	Lj261
Lj261:
	jmp	Lj280
Lj258:
	jmp	Lj282
	.align 2
Lj281:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%ebx
	movl	-4(%ebp),%edx
	movl	%ebx,%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj284
	jmp	Lj285
Lj284:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj298
Lj285:
	incl	-20(%ebp)
Lj298:
Lj282:
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-20(%ebp),%eax
	jg	Lj299
	jmp	Lj283
Lj299:
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj281
	jmp	Lj283
Lj283:
Lj280:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__INSERT$LONGINT$TOBJECT
_CONTNRS_TFPOBJECTLIST_$__INSERT$LONGINT$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__INSERT$LONGINT$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__MOVE$LONGINT$LONGINT
_CONTNRS_TFPOBJECTLIST_$__MOVE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__MOVE$LONGINT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__ASSIGN$TFPOBJECTLIST
_CONTNRS_TFPOBJECTLIST_$__ASSIGN$TFPOBJECTLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__CLEAR$stub
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj323
	decl	-12(%ebp)
	.align 2
Lj324:
	incl	-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__ADD$TOBJECT$$LONGINT$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj324
Lj323:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__PACK
_CONTNRS_TFPOBJECTLIST_$__PACK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TFPLIST_$__PACK$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__SORT$TLISTSORTCOMPARE
_CONTNRS_TFPOBJECTLIST_$__SORT$TLISTSORTCOMPARE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__SORT$TLISTSORTCOMPARE$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__FIRST$$TOBJECT
_CONTNRS_TFPOBJECTLIST_$__FIRST$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TFPLIST_$__FIRST$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__LAST$$TOBJECT
_CONTNRS_TFPOBJECTLIST_$__LAST$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TFPLIST_$__LAST$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__FOREACHCALL$TOBJECTLISTCALLBACK$POINTER
_CONTNRS_TFPOBJECTLIST_$__FOREACHCALL$TOBJECTLISTCALLBACK$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-20(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	leal	-20(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__FOREACHCALL$TLISTCALLBACK$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTLIST_$__FOREACHCALL$TOBJECTLISTSTATICCALLBACK$POINTER
_CONTNRS_TFPOBJECTLIST_$__FOREACHCALL$TOBJECTLISTSTATICCALLBACK$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__FOREACHCALL$TLISTSTATICCALLBACK$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTLIST_$__CREATE$BOOLEAN$$TOBJECTLIST
_CONTNRS_TOBJECTLIST_$__CREATE$BOOLEAN$$TOBJECTLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj375
	jmp	Lj376
Lj375:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj376:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj381
	jmp	Lj382
Lj381:
	jmp	Lj373
Lj382:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj385
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj389
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	-12(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,16(%eax)
Lj389:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj390
	call	LFPC_RERAISE$stub
Lj390:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj400
	jmp	Lj399
Lj400:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj398
	jmp	Lj399
Lj398:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj399:
Lj385:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj387
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj404
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj405
	jmp	Lj406
Lj405:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj406:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj404:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj403
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj403:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj387
Lj387:
Lj373:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTLIST_$__CREATE$$TOBJECTLIST
_CONTNRS_TOBJECTLIST_$__CREATE$$TOBJECTLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj413
	jmp	Lj414
Lj413:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj414:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj419
	jmp	Lj420
Lj419:
	jmp	Lj411
Lj420:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj423
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj427
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	-8(%ebp),%eax
	movb	$1,16(%eax)
Lj427:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj428
	call	LFPC_RERAISE$stub
Lj428:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj438
	jmp	Lj437
Lj438:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj436
	jmp	Lj437
Lj436:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj437:
Lj423:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj425
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj442
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj443
	jmp	Lj444
Lj443:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj444:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj442:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj441
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj441:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj425
Lj425:
Lj411:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION
_CONTNRS_TOBJECTLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,16(%eax)
	jne	Lj451
	jmp	Lj452
Lj451:
	movl	-8(%ebp),%eax
	cmpl	$2,%eax
	je	Lj453
	jmp	Lj454
Lj453:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj454:
Lj452:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT
_CONTNRS_TOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTLIST_$__SETITEM$LONGINT$TOBJECT
_CONTNRS_TOBJECTLIST_$__SETITEM$LONGINT$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TLIST_$__PUT$LONGINT$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTLIST_$__ADD$TOBJECT$$LONGINT
_CONTNRS_TOBJECTLIST_$__ADD$TOBJECT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTLIST_$__EXTRACT$TOBJECT$$TOBJECT
_CONTNRS_TOBJECTLIST_$__EXTRACT$TOBJECT$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__EXTRACT$POINTER$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTLIST_$__REMOVE$TOBJECT$$LONGINT
_CONTNRS_TOBJECTLIST_$__REMOVE$TOBJECT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__REMOVE$POINTER$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT
_CONTNRS_TOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__INDEXOF$POINTER$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTLIST_$__FINDINSTANCEOF$TCLASS$BOOLEAN$LONGINT$$LONGINT
_CONTNRS_TOBJECTLIST_$__FINDINSTANCEOF$TCLASS$BOOLEAN$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$-1,-16(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj517
	jmp	Lj518
Lj517:
	jmp	Lj520
	.align 2
Lj519:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%edx
	movl	(%edx),%edx
	movl	%edx,-24(%ebp)
	movl	-24(%ebp),%edx
	cmpl	-4(%ebp),%edx
	je	Lj522
	jmp	Lj523
Lj522:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj536
Lj523:
	incl	-20(%ebp)
Lj536:
Lj520:
	movl	-12(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-20(%ebp),%eax
	jg	Lj537
	jmp	Lj521
Lj537:
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj519
	jmp	Lj521
Lj521:
	jmp	Lj540
Lj518:
	jmp	Lj542
	.align 2
Lj541:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%ebx
	movl	-4(%ebp),%edx
	movl	%ebx,%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj544
	jmp	Lj545
Lj544:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj558
Lj545:
	incl	-20(%ebp)
Lj558:
Lj542:
	movl	-12(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-20(%ebp),%eax
	jg	Lj559
	jmp	Lj543
Lj559:
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj541
	jmp	Lj543
Lj543:
Lj540:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTLIST_$__INSERT$LONGINT$TOBJECT
_CONTNRS_TOBJECTLIST_$__INSERT$LONGINT$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TLIST_$__INSERT$LONGINT$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTLIST_$__FIRST$$TOBJECT
_CONTNRS_TOBJECTLIST_$__FIRST$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__FIRST$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTLIST_$__LAST$$TOBJECT
_CONTNRS_TOBJECTLIST_$__LAST$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__LAST$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TLISTCOMPONENT_$__NOTIFICATION$TCOMPONENT$TOPERATION
_CONTNRS_TLISTCOMPONENT_$__NOTIFICATION$TCOMPONENT$TOPERATION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj584
	jmp	Lj585
Lj584:
	movl	-12(%ebp),%eax
	movl	52(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	call	L_CONTNRS_TCOMPONENTLIST_$__HANDLEFREENOTIFY$TOBJECT$TCOMPONENT$stub
Lj585:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TCOMPONENT_$__NOTIFICATION$TCOMPONENT$TOPERATION$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCOMPONENTLIST_$__ADD$TCOMPONENT$$LONGINT
_CONTNRS_TCOMPONENTLIST_$__ADD$TCOMPONENT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TOBJECTLIST_$__ADD$TOBJECT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCOMPONENTLIST_$__DESTROY
_CONTNRS_TCOMPONENTLIST_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj608
	jmp	Lj609
Lj608:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj609:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TLIST_$__DESTROY$stub
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj620
	jmp	Lj619
Lj620:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj618
	jmp	Lj619
Lj618:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj619:
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCOMPONENTLIST_$__EXTRACT$TCOMPONENT$$TCOMPONENT
_CONTNRS_TCOMPONENTLIST_$__EXTRACT$TCOMPONENT$$TCOMPONENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TOBJECTLIST_$__EXTRACT$TOBJECT$$TOBJECT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCOMPONENTLIST_$__FIRST$$TCOMPONENT
_CONTNRS_TCOMPONENTLIST_$__FIRST$$TCOMPONENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TOBJECTLIST_$__FIRST$$TOBJECT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCOMPONENTLIST_$__GETITEMS$LONGINT$$TCOMPONENT
_CONTNRS_TCOMPONENTLIST_$__GETITEMS$LONGINT$$TCOMPONENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCOMPONENTLIST_$__HANDLEFREENOTIFY$TOBJECT$TCOMPONENT
_CONTNRS_TCOMPONENTLIST_$__HANDLEFREENOTIFY$TOBJECT$TCOMPONENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TCOMPONENTLIST_$__EXTRACT$TCOMPONENT$$TCOMPONENT$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCOMPONENTLIST_$__INDEXOF$TCOMPONENT$$LONGINT
_CONTNRS_TCOMPONENTLIST_$__INDEXOF$TCOMPONENT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCOMPONENTLIST_$__INSERT$LONGINT$TCOMPONENT
_CONTNRS_TCOMPONENTLIST_$__INSERT$LONGINT$TCOMPONENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TOBJECTLIST_$__INSERT$LONGINT$TOBJECT$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCOMPONENTLIST_$__LAST$$TCOMPONENT
_CONTNRS_TCOMPONENTLIST_$__LAST$$TCOMPONENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TOBJECTLIST_$__LAST$$TOBJECT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCOMPONENTLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION
_CONTNRS_TCOMPONENTLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj674
Lj674:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj675
	jmp	Lj676
Lj675:
	movl	L_VMT_CONTNRS_TLISTCOMPONENT$non_lazy_ptr-Lj674(%esi),%edx
	movl	$0,%ecx
	movl	$0,%eax
	movl	L_VMT_CONTNRS_TLISTCOMPONENT$non_lazy_ptr-Lj674(%esi),%ebx
	call	*196(%ebx)
	movl	-12(%ebp),%edx
	movl	%eax,20(%edx)
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	-12(%ebp),%eax
	movl	%eax,52(%edx)
Lj676:
	cmpl	$0,-4(%ebp)
	jne	Lj687
	jmp	Lj688
Lj687:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj691
	decl	%eax
	jb	Lj690
	subl	$1,%eax
	jbe	Lj692
	jmp	Lj690
Lj691:
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TCOMPONENT_$__FREENOTIFICATION$TCOMPONENT$stub
	jmp	Lj689
Lj692:
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TCOMPONENT_$__REMOVEFREENOTIFICATION$TCOMPONENT$stub
	jmp	Lj689
Lj690:
Lj689:
Lj688:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TOBJECTLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION$stub
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCOMPONENTLIST_$__REMOVE$TCOMPONENT$$LONGINT
_CONTNRS_TCOMPONENTLIST_$__REMOVE$TCOMPONENT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TOBJECTLIST_$__REMOVE$TOBJECT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCOMPONENTLIST_$__SETITEMS$LONGINT$TCOMPONENT
_CONTNRS_TCOMPONENTLIST_$__SETITEMS$LONGINT$TCOMPONENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TLIST_$__PUT$LONGINT$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCLASSLIST_$__ADD$TCLASS$$LONGINT
_CONTNRS_TCLASSLIST_$__ADD$TCLASS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCLASSLIST_$__EXTRACT$TCLASS$$TCLASS
_CONTNRS_TCLASSLIST_$__EXTRACT$TCLASS$$TCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__EXTRACT$POINTER$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCLASSLIST_$__FIRST$$TCLASS
_CONTNRS_TCLASSLIST_$__FIRST$$TCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__FIRST$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCLASSLIST_$__GETITEMS$LONGINT$$TCLASS
_CONTNRS_TCLASSLIST_$__GETITEMS$LONGINT$$TCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCLASSLIST_$__INDEXOF$TCLASS$$LONGINT
_CONTNRS_TCLASSLIST_$__INDEXOF$TCLASS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__INDEXOF$POINTER$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCLASSLIST_$__INSERT$LONGINT$TCLASS
_CONTNRS_TCLASSLIST_$__INSERT$LONGINT$TCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TLIST_$__INSERT$LONGINT$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCLASSLIST_$__LAST$$TCLASS
_CONTNRS_TCLASSLIST_$__LAST$$TCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__LAST$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCLASSLIST_$__REMOVE$TCLASS$$LONGINT
_CONTNRS_TCLASSLIST_$__REMOVE$TCLASS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__REMOVE$POINTER$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCLASSLIST_$__SETITEMS$LONGINT$TCLASS
_CONTNRS_TCLASSLIST_$__SETITEMS$LONGINT$TCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TLIST_$__PUT$LONGINT$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TORDEREDLIST_$__ATLEAST$LONGINT$$BOOLEAN
_CONTNRS_TORDEREDLIST_$__ATLEAST$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-4(%ebp),%eax
	setgeb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TORDEREDLIST_$__COUNT$$LONGINT
_CONTNRS_TORDEREDLIST_$__COUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TORDEREDLIST_$__CREATE$$TORDEREDLIST
_CONTNRS_TORDEREDLIST_$__CREATE$$TORDEREDLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj804
Lj804:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj805
	jmp	Lj806
Lj805:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj806:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj811
	jmp	Lj812
Lj811:
	jmp	Lj803
Lj812:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj815
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj819
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj804(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	-8(%ebp),%edx
	movl	%eax,4(%edx)
Lj819:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj820
	call	LFPC_RERAISE$stub
Lj820:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj830
	jmp	Lj829
Lj830:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj828
	jmp	Lj829
Lj828:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj829:
Lj815:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj817
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj834
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj835
	jmp	Lj836
Lj835:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj836:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj834:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj833
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj833:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj817
Lj817:
Lj803:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TORDEREDLIST_$__DESTROY
_CONTNRS_TORDEREDLIST_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj843
	jmp	Lj844
Lj843:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj844:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj851
	jmp	Lj850
Lj851:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj849
	jmp	Lj850
Lj849:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj850:
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TORDEREDLIST_$__PEEK$$POINTER
_CONTNRS_TORDEREDLIST_$__PEEK$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_CONTNRS_TORDEREDLIST_$__ATLEAST$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj856
	jmp	Lj857
Lj856:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-8(%ebp)
	jmp	Lj866
Lj857:
	movl	$0,-8(%ebp)
Lj866:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TORDEREDLIST_$__PEEKITEM$$POINTER
_CONTNRS_TORDEREDLIST_$__PEEKITEM$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%ebx
	movl	%ebx,%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%edx
	decl	%edx
	movl	%ebx,%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TORDEREDLIST_$__POP$$POINTER
_CONTNRS_TORDEREDLIST_$__POP$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_CONTNRS_TORDEREDLIST_$__ATLEAST$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj883
	jmp	Lj884
Lj883:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-8(%ebp)
	jmp	Lj893
Lj884:
	movl	$0,-8(%ebp)
Lj893:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TORDEREDLIST_$__POPITEM$$POINTER
_CONTNRS_TORDEREDLIST_$__POPITEM$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%ebx
	movl	%ebx,%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj900
	jmp	Lj901
Lj900:
	movl	%ebx,%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%edx
	decl	%edx
	movl	%ebx,%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	%ebx,%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%edx
	decl	%edx
	movl	%ebx,%eax
	call	L_CLASSES_TLIST_$__DELETE$LONGINT$stub
	jmp	Lj918
Lj901:
	movl	$0,-8(%ebp)
Lj918:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TORDEREDLIST_$__PUSH$POINTER$$POINTER
_CONTNRS_TORDEREDLIST_$__PUSH$POINTER$$POINTER:
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
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TSTACK_$__PUSHITEM$POINTER
_CONTNRS_TSTACK_$__PUSHITEM$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTSTACK_$__PEEK$$TOBJECT
_CONTNRS_TOBJECTSTACK_$__PEEK$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TORDEREDLIST_$__PEEK$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTSTACK_$__POP$$TOBJECT
_CONTNRS_TOBJECTSTACK_$__POP$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TORDEREDLIST_$__POP$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTSTACK_$__PUSH$TOBJECT$$TOBJECT
_CONTNRS_TOBJECTSTACK_$__PUSH$TOBJECT$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TORDEREDLIST_$__PUSH$POINTER$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TQUEUE_$__PUSHITEM$POINTER
_CONTNRS_TQUEUE_$__PUSHITEM$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%ebx
	movl	-4(%ebp),%ecx
	movl	%ebx,%eax
	movl	$0,%edx
	call	L_CLASSES_TLIST_$__INSERT$LONGINT$POINTER$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTQUEUE_$__PEEK$$TOBJECT
_CONTNRS_TOBJECTQUEUE_$__PEEK$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TORDEREDLIST_$__PEEK$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTQUEUE_$__POP$$TOBJECT
_CONTNRS_TOBJECTQUEUE_$__POP$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TORDEREDLIST_$__POP$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTQUEUE_$__PUSH$TOBJECT$$TOBJECT
_CONTNRS_TOBJECTQUEUE_$__PUSH$TOBJECT$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TORDEREDLIST_$__PUSH$POINTER$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_FPHASH$SHORTSTRING$$LONGWORD
_CONTNRS_FPHASH$SHORTSTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	incl	%eax
	movzbl	%al,%eax
	leal	(%edx,%eax,1),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj994
	.align 2
Lj993:
	movl	-8(%ebp),%eax
	shll	$5,%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	movl	-12(%ebp),%edx
	movzbl	(%edx),%edx
	xorl	%edx,%eax
	movl	%eax,-8(%ebp)
	incl	-12(%ebp)
Lj994:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jb	Lj993
	jmp	Lj995
Lj995:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_FPHASH$PCHAR$LONGINT$$LONGWORD
_CONTNRS_FPHASH$PCHAR$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1005
	.align 2
Lj1004:
	movl	-12(%ebp),%eax
	shll	$5,%eax
	movl	-12(%ebp),%edx
	subl	%edx,%eax
	movl	-4(%ebp),%edx
	movzbl	(%edx),%edx
	xorl	%edx,%eax
	movl	%eax,-12(%ebp)
	incl	-4(%ebp)
Lj1005:
	movl	-4(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jb	Lj1004
	jmp	Lj1006
Lj1006:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__RAISEINDEXERROR$LONGINT
_CONTNRS_TFPHASHLIST_$__RAISEINDEXERROR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1010
Lj1010:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_RESSTR_RTLCONSTS_SLISTINDEXERROR$non_lazy_ptr-Lj1010(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_CONTNRS_TFPHASHLIST_$__ERROR$ANSISTRING$LONGINT$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__GET$LONGINT$$POINTER
_CONTNRS_TFPHASHLIST_$__GET$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1019
	jmp	Lj1021
Lj1021:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj1019
	jmp	Lj1020
Lj1019:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__RAISEINDEXERROR$LONGINT$stub
Lj1020:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	shll	$4,%eax
	movl	12(%edx,%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__PUT$LONGINT$POINTER
_CONTNRS_TFPHASHLIST_$__PUT$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1030
	jmp	Lj1032
Lj1032:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj1030
	jmp	Lj1031
Lj1030:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__RAISEINDEXERROR$LONGINT$stub
Lj1031:
	movl	-12(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-4(%ebp),%eax
	shll	$4,%eax
	movl	-8(%ebp),%edx
	movl	%edx,12(%ecx,%eax)
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__NAMEOFINDEX$LONGINT$$SHORTSTRING
_CONTNRS_TFPHASHLIST_$__NAMEOFINDEX$LONGINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1041
	jmp	Lj1043
Lj1043:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj1041
	jmp	Lj1042
Lj1041:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__RAISEINDEXERROR$LONGINT$stub
Lj1042:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	shll	$4,%eax
	leal	(%edx,%eax),%ebx
	movl	4(%ebx),%eax
	cmpl	$0,%eax
	jge	Lj1050
	jmp	Lj1051
Lj1050:
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	4(%ebx),%eax
	leal	(%edx,%eax,1),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	jmp	Lj1058
Lj1051:
	movl	-12(%ebp),%eax
	movb	$0,(%eax)
Lj1058:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__HASHOFINDEX$LONGINT$$LONGWORD
_CONTNRS_TFPHASHLIST_$__HASHOFINDEX$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1063
	jmp	Lj1065
Lj1065:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj1063
	jmp	Lj1064
Lj1063:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__RAISEINDEXERROR$LONGINT$stub
Lj1064:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	shll	$4,%eax
	movl	(%edx,%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__GETNEXTCOLLISION$LONGINT$$LONGINT
_CONTNRS_TFPHASHLIST_$__GETNEXTCOLLISION$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$-1,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	jg	Lj1078
	jmp	Lj1077
Lj1078:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj1076
	jmp	Lj1077
Lj1076:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	shll	$4,%eax
	movl	8(%edx,%eax),%eax
	movl	%eax,-12(%ebp)
Lj1077:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__EXTRACT$POINTER$$POINTER
_CONTNRS_TFPHASHLIST_$__EXTRACT$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__INDEXOF$POINTER$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1091
	jmp	Lj1092
Lj1091:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__DELETE$LONGINT$stub
Lj1092:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__SETCAPACITY$LONGINT
_CONTNRS_TFPHASHLIST_$__SETCAPACITY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1100
Lj1100:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj1101
	jmp	Lj1103
Lj1103:
	movl	-4(%ebp),%eax
	cmpl	$134217727,%eax
	jg	Lj1101
	jmp	Lj1102
Lj1101:
	movl	-4(%ebp),%ecx
	movl	L_RESSTR_RTLCONSTS_SLISTCAPACITYERROR$non_lazy_ptr-Lj1100(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_CONTNRS_TFPHASHLIST_$__ERROR$ANSISTRING$LONGINT$stub
Lj1102:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1110
	jmp	Lj1111
Lj1110:
	jmp	Lj1099
Lj1111:
	movl	-4(%ebp),%edx
	shll	$4,%edx
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	imull	$3,%eax
	movl	-8(%ebp),%edx
	cmpl	12(%edx),%eax
	jl	Lj1118
	jmp	Lj1119
Lj1118:
	movl	-8(%ebp),%eax
	movl	12(%eax),%ecx
	movl	$1431655766,%eax
	imull	%ecx
	movl	%ecx,%eax
	shrl	$31,%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__SETHASHCAPACITY$LONGINT$stub
Lj1119:
Lj1099:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__SETCOUNT$LONGINT
_CONTNRS_TFPHASHLIST_$__SETCOUNT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1125
Lj1125:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1126
	jmp	Lj1128
Lj1128:
	movl	-4(%ebp),%eax
	cmpl	$134217727,%eax
	jg	Lj1126
	jmp	Lj1127
Lj1126:
	movl	-4(%ebp),%ecx
	movl	L_RESSTR_RTLCONSTS_SLISTCOUNTERROR$non_lazy_ptr-Lj1125(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_CONTNRS_TFPHASHLIST_$__ERROR$ANSISTRING$LONGINT$stub
Lj1127:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj1135
	jmp	Lj1136
Lj1135:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj1137
	jmp	Lj1138
Lj1137:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__SETCAPACITY$LONGINT$stub
Lj1138:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj1143
	jmp	Lj1144
Lj1143:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$15,%eax
	addl	%eax,%edx
	sarl	$4,%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	shll	$4,%eax
	leal	(%ecx,%eax),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
Lj1144:
Lj1136:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__SETSTRCAPACITY$LONGINT
_CONTNRS_TFPHASHLIST_$__SETSTRCAPACITY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1154
Lj1154:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj1155
	jmp	Lj1157
Lj1157:
	jmp	Lj1156
Lj1155:
	movl	-4(%ebp),%ecx
	movl	L_RESSTR_RTLCONSTS_SLISTCAPACITYERROR$non_lazy_ptr-Lj1154(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_CONTNRS_TFPHASHLIST_$__ERROR$ANSISTRING$LONGINT$stub
Lj1156:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1164
	jmp	Lj1165
Lj1164:
	jmp	Lj1153
Lj1165:
	movl	-8(%ebp),%eax
	leal	24(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,32(%edx)
Lj1153:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__SETHASHCAPACITY$LONGINT
_CONTNRS_TFPHASHLIST_$__SETHASHCAPACITY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1173
Lj1173:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj1174
	jmp	Lj1175
Lj1174:
	movl	-4(%ebp),%ecx
	movl	L_RESSTR_RTLCONSTS_SLISTCAPACITYERROR$non_lazy_ptr-Lj1173(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_CONTNRS_TFPHASHLIST_$__ERROR$ANSISTRING$LONGINT$stub
Lj1175:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1182
	jmp	Lj1183
Lj1182:
	jmp	Lj1172
Lj1183:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%eax
	movl	20(%eax),%edx
	shll	$2,%edx
	movl	-8(%ebp),%eax
	leal	16(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__REHASH$stub
Lj1172:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__REHASH
_CONTNRS_TFPHASHLIST_$__REHASH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	movl	20(%edx),%edx
	movl	$-1,%ecx
	call	L_SYSTEM_FILLDWORD$formal$LONGINT$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj1201
	decl	-8(%ebp)
	.align 2
Lj1202:
	incl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__ADDTOHASHTABLE$LONGINT$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj1202
Lj1201:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__CREATE$$TFPHASHLIST
_CONTNRS_TFPHASHLIST_$__CREATE$$TFPHASHLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1209
	jmp	Lj1210
Lj1209:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj1210:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1215
	jmp	Lj1216
Lj1215:
	jmp	Lj1207
Lj1216:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1219
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1223
	movl	-8(%ebp),%eax
	movl	$1,%edx
	call	L_CONTNRS_TFPHASHLIST_$__SETHASHCAPACITY$LONGINT$stub
Lj1223:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1224
	call	LFPC_RERAISE$stub
Lj1224:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1232
	jmp	Lj1231
Lj1232:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1230
	jmp	Lj1231
Lj1230:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1231:
Lj1219:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1221
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1236
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1237
	jmp	Lj1238
Lj1237:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1238:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1236:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1235
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1235:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1221
Lj1221:
Lj1207:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__DESTROY
_CONTNRS_TFPHASHLIST_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1245
	jmp	Lj1246
Lj1245:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1246:
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__CLEAR$stub
	movl	-8(%ebp),%eax
	cmpl	$0,16(%eax)
	jne	Lj1251
	jmp	Lj1252
Lj1251:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj1252:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1261
	jmp	Lj1260
Lj1261:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1259
	jmp	Lj1260
Lj1259:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1260:
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__ADDSTR$SHORTSTRING$$LONGINT
_CONTNRS_TFPHASHLIST_$__ADDSTR$SHORTSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	cmpl	32(%eax),%edx
	jge	Lj1268
	jmp	Lj1269
Lj1268:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__STREXPAND$LONGINT$stub
Lj1269:
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	leal	(%edx,%eax,1),%edx
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%eax,28(%edx)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__ADDTOHASHTABLE$LONGINT
_CONTNRS_TFPHASHLIST_$__ADDTOHASHTABLE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	shll	$4,%eax
	leal	(%edx,%eax),%ecx
	cmpl	$0,12(%ecx)
	jne	Lj1287
	jmp	Lj1286
Lj1286:
	jmp	Lj1282
Lj1287:
	movl	-8(%ebp),%ebx
	movl	(%ecx),%eax
	xorl	%edx,%edx
	divl	20(%ebx)
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,8(%ecx)
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx,%ebx,4)
Lj1282:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__ADD$SHORTSTRING$POINTER$$LONGINT
_CONTNRS_TFPHASHLIST_$__ADD$SHORTSTRING$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	12(%edx),%eax
	je	Lj1296
	jmp	Lj1297
Lj1296:
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__EXPAND$$TFPHASHLIST$stub
Lj1297:
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	shll	$4,%eax
	leal	(%edx,%eax),%ebx
	movl	-4(%ebp),%eax
	call	L_CONTNRS_FPHASH$SHORTSTRING$$LONGWORD$stub
	movl	%eax,(%ebx)
	movl	-8(%ebp),%eax
	movl	%eax,12(%ebx)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__ADDSTR$SHORTSTRING$$LONGINT$stub
	movl	%eax,4(%ebx)
	movl	-12(%ebp),%eax
	movl	8(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__ADDTOHASHTABLE$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	8(%eax)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__CLEAR
_CONTNRS_TFPHASHLIST_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj1322
	jmp	Lj1323
Lj1322:
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_CONTNRS_TFPHASHLIST_$__SETCAPACITY$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
Lj1323:
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_CONTNRS_TFPHASHLIST_$__SETHASHCAPACITY$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	$-1,(%eax)
	movl	-4(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj1338
	jmp	Lj1339
Lj1338:
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_CONTNRS_TFPHASHLIST_$__SETSTRCAPACITY$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$0,24(%eax)
Lj1339:
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__DELETE$LONGINT
_CONTNRS_TFPHASHLIST_$__DELETE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj1349
Lj1349:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1350
	jmp	Lj1352
Lj1352:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj1350
	jmp	Lj1351
Lj1350:
	movl	-4(%ebp),%ecx
	movl	L_RESSTR_RTLCONSTS_SLISTINDEXERROR$non_lazy_ptr-Lj1349(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_CONTNRS_TFPHASHLIST_$__ERROR$ANSISTRING$LONGINT$stub
Lj1351:
	movl	-8(%ebp),%eax
	decl	8(%eax)
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	subl	%eax,%ecx
	shll	$4,%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	incl	%eax
	shll	$4,%eax
	leal	(%edx,%eax),%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%esi
	movl	-4(%ebp),%edx
	shll	$4,%edx
	leal	(%esi,%edx),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__REHASH$stub
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$256,%eax
	jg	Lj1369
	jmp	Lj1368
Lj1369:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	shrl	$2,%eax
	movl	-8(%ebp),%edx
	cmpl	8(%edx),%eax
	jg	Lj1367
	jmp	Lj1368
Lj1367:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	shrl	$1,%eax
	movl	-8(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	shll	$4,%edx
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
Lj1368:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__REMOVE$POINTER$$LONGINT
_CONTNRS_TFPHASHLIST_$__REMOVE$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__INDEXOF$POINTER$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj1384
	jmp	Lj1385
Lj1384:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__DELETE$LONGINT$stub
Lj1385:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__ERROR$ANSISTRING$LONGINT
_CONTNRS_TFPHASHLIST_$__ERROR$ANSISTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj1391
Lj1391:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	%ebp,%eax
	call	L_SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER$stub
	movl	%eax,%ebx
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_CLASSES_ELISTERROR$non_lazy_ptr-Lj1391(%esi),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
	movl	$0,%ecx
	movl	%ebx,%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__EXPAND$$TFPHASHLIST
_CONTNRS_TFPHASHLIST_$__EXPAND$$TFPHASHLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	12(%edx),%eax
	jl	Lj1408
	jmp	Lj1409
Lj1408:
	jmp	Lj1404
Lj1409:
	movl	$8,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$127,%eax
	jg	Lj1412
	jmp	Lj1413
Lj1412:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	shrl	$2,%eax
	addl	%eax,-12(%ebp)
	jmp	Lj1414
Lj1413:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$12,%eax
	jg	Lj1415
	jmp	Lj1416
Lj1415:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	shrl	$1,%eax
	addl	%eax,-12(%ebp)
	jmp	Lj1417
Lj1416:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$4,%eax
	jge	Lj1418
	jmp	Lj1419
Lj1418:
	addl	$4,-12(%ebp)
Lj1419:
Lj1417:
Lj1414:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__SETCAPACITY$LONGINT$stub
Lj1404:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__STREXPAND$LONGINT
_CONTNRS_TFPHASHLIST_$__STREXPAND$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	cmpl	32(%eax),%edx
	jl	Lj1426
	jmp	Lj1427
Lj1426:
	jmp	Lj1424
Lj1427:
	movl	$64,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	$255,%eax
	jg	Lj1430
	jmp	Lj1431
Lj1430:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	shrl	$2,%eax
	addl	%eax,-12(%ebp)
Lj1431:
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__SETSTRCAPACITY$LONGINT$stub
Lj1424:
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__INDEXOF$POINTER$$LONGINT
_CONTNRS_TFPHASHLIST_$__INDEXOF$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$-1,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj1443
	decl	-20(%ebp)
	.align 2
Lj1444:
	incl	-20(%ebp)
	movl	-16(%ebp),%edx
	movl	12(%edx),%edx
	cmpl	-4(%ebp),%edx
	je	Lj1445
	jmp	Lj1446
Lj1445:
	movl	-20(%ebp),%edx
	movl	%edx,-12(%ebp)
	jmp	Lj1436
Lj1446:
	addl	$16,-16(%ebp)
	cmpl	-20(%ebp),%eax
	jg	Lj1444
Lj1443:
Lj1436:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__INTERNALFIND$LONGWORD$SHORTSTRING$LONGINT$$LONGINT
_CONTNRS_TFPHASHLIST_$__INTERNALFIND$LONGWORD$SHORTSTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	xorl	%edx,%edx
	divl	20(%ecx)
	movl	%edx,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-21(%ebp)
	movl	-8(%ebp),%edx
	movzbl	-21(%ebp),%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-22(%ebp)
	movl	8(%ebp),%eax
	movl	$-1,(%eax)
	jmp	Lj1462
	.align 2
Lj1461:
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	shll	$4,%eax
	leal	(%edx,%eax),%ebx
	cmpl	$0,12(%ebx)
	jne	Lj1471
	jmp	Lj1467
Lj1471:
	movl	(%ebx),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1470
	jmp	Lj1467
Lj1470:
	movl	-12(%ebp),%eax
	movl	24(%eax),%ecx
	movl	4(%ebx),%eax
	movb	-21(%ebp),%dl
	cmpb	(%ecx,%eax,1),%dl
	je	Lj1469
	jmp	Lj1467
Lj1469:
	movl	-12(%ebp),%eax
	movl	24(%eax),%ecx
	movzbl	-21(%ebp),%edx
	movl	4(%ebx),%eax
	addl	%edx,%eax
	movb	(%ecx,%eax,1),%al
	cmpb	-22(%ebp),%al
	je	Lj1468
	jmp	Lj1467
Lj1468:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	4(%ebx),%edx
	leal	(%eax,%edx,1),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_shortstr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1466
	jmp	Lj1467
Lj1466:
	jmp	Lj1449
Lj1467:
	movl	8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	movl	8(%ebx),%eax
	movl	%eax,-16(%ebp)
Lj1462:
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj1461
	jmp	Lj1463
Lj1463:
Lj1449:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__FIND$SHORTSTRING$$POINTER
_CONTNRS_TFPHASHLIST_$__FIND$SHORTSTRING$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	call	L_CONTNRS_FPHASH$SHORTSTRING$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__INTERNALFIND$LONGWORD$SHORTSTRING$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1496
	jmp	Lj1497
Lj1496:
	jmp	Lj1480
Lj1497:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	shll	$4,%eax
	movl	12(%edx,%eax),%eax
	movl	%eax,-12(%ebp)
Lj1480:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__FINDINDEXOF$SHORTSTRING$$LONGINT
_CONTNRS_TFPHASHLIST_$__FINDINDEXOF$SHORTSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	call	L_CONTNRS_FPHASH$SHORTSTRING$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__INTERNALFIND$LONGWORD$SHORTSTRING$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__FINDWITHHASH$SHORTSTRING$LONGWORD$$POINTER
_CONTNRS_TFPHASHLIST_$__FINDWITHHASH$SHORTSTRING$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__INTERNALFIND$LONGWORD$SHORTSTRING$LONGINT$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1528
	jmp	Lj1529
Lj1528:
	jmp	Lj1514
Lj1529:
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-20(%ebp),%eax
	shll	$4,%eax
	movl	12(%edx,%eax),%eax
	movl	%eax,-16(%ebp)
Lj1514:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__RENAME$SHORTSTRING$SHORTSTRING$$LONGINT
_CONTNRS_TFPHASHLIST_$__RENAME$SHORTSTRING$SHORTSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$-1,-16(%ebp)
	movl	-4(%ebp),%eax
	call	L_CONTNRS_FPHASH$SHORTSTRING$$LONGWORD$stub
	movl	%eax,-28(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__INTERNALFIND$LONGWORD$SHORTSTRING$LONGINT$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1550
	jmp	Lj1551
Lj1550:
	jmp	Lj1532
Lj1551:
	movl	-20(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj1552
	jmp	Lj1553
Lj1552:
	movl	-12(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-20(%ebp),%eax
	shll	$4,%eax
	movl	-12(%ebp),%edx
	movl	4(%edx),%ebx
	movl	-24(%ebp),%edx
	shll	$4,%edx
	movl	8(%ebx,%edx),%edx
	movl	%edx,8(%ecx,%eax)
	jmp	Lj1556
Lj1553:
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-12(%ebp),%ebx
	movl	-28(%ebp),%eax
	xorl	%edx,%edx
	divl	20(%ebx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%ebx
	movl	-24(%ebp),%eax
	shll	$4,%eax
	movl	8(%ebx,%eax),%eax
	movl	%eax,(%ecx,%edx,4)
Lj1556:
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-24(%ebp),%eax
	shll	$4,%eax
	leal	(%edx,%eax),%ebx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_FPHASH$SHORTSTRING$$LONGWORD$stub
	movl	%eax,(%ebx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__ADDSTR$SHORTSTRING$$LONGINT$stub
	movl	%eax,4(%ebx)
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__ADDTOHASHTABLE$LONGINT$stub
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1532:
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__PACK
_CONTNRS_TFPHASHLIST_$__PACK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-24(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1585
	movl	-4(%ebp),%eax
	movl	$0,24(%eax)
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
	movl	-4(%ebp),%eax
	movl	$0,32(%eax)
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1598
	decl	-12(%ebp)
	.align 2
Lj1599:
	incl	-12(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj1600
	jmp	Lj1601
Lj1600:
	movl	-16(%ebp),%edi
	movl	-20(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	leal	(%edx,%eax,1),%edx
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__ADDSTR$SHORTSTRING$$LONGINT$stub
	movl	-16(%ebp),%edx
	movl	%eax,4(%edx)
	addl	$16,-16(%ebp)
	incl	-8(%ebp)
Lj1601:
	addl	$16,-20(%ebp)
	cmpl	-12(%ebp),%ebx
	jg	Lj1599
Lj1598:
Lj1585:
	call	LFPC_POPADDRSTACK$stub
	movl	-24(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1586
	decl	%eax
	testl	%eax,%eax
	je	Lj1587
Lj1587:
	call	LFPC_RERAISE$stub
Lj1586:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__REHASH$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__SETCAPACITY$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TFPHASHLIST_$__SETSTRCAPACITY$LONGINT$stub
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__SHOWSTATISTICS
_CONTNRS_TFPHASHLIST_$__SHOWSTATISTICS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	call	Lj1625
Lj1625:
	popl	%ebx
	movl	%eax,-4(%ebp)
	fldz
	fstpl	-12(%ebp)
	fldz
	fstpl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	decl	%eax
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj1631
	decl	-28(%ebp)
	.align 2
Lj1632:
	incl	-28(%ebp)
	movl	$0,-32(%ebp)
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	movl	-28(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-24(%ebp)
	jmp	Lj1638
	.align 2
Lj1637:
	incl	-32(%ebp)
	movl	-4(%ebp),%edx
	movl	4(%edx),%ecx
	movl	-24(%ebp),%edx
	shll	$4,%edx
	movl	8(%ecx,%edx),%edx
	movl	%edx,-24(%ebp)
Lj1638:
	movl	-24(%ebp),%edx
	cmpl	$-1,%edx
	jne	Lj1637
	jmp	Lj1639
Lj1639:
	fildl	-32(%ebp)
	fldl	-12(%ebp)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	movl	-32(%ebp),%edx
	movl	-32(%ebp),%ecx
	imull	%ecx,%edx
	movl	%edx,-36(%ebp)
	fildl	-36(%ebp)
	fldl	-20(%ebp)
	faddp	%st,%st(1)
	fstpl	-20(%ebp)
	cmpl	-28(%ebp),%eax
	jg	Lj1632
Lj1631:
	movl	-4(%ebp),%eax
	fildl	20(%eax)
	fldl	-12(%ebp)
	fdivp	%st,%st(1)
	fstpl	-12(%ebp)
	movl	-4(%ebp),%eax
	fildl	20(%eax)
	fldl	-12(%ebp)
	fmul	%st(0),%st(0)
	fmulp	%st,%st(1)
	fldl	-20(%ebp)
	fsubp	%st,%st(1)
	fstpl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$1,%eax
	jg	Lj1652
	jmp	Lj1653
Lj1652:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	decl	%eax
	movl	%eax,-36(%ebp)
	fildl	-36(%ebp)
	fldl	-20(%ebp)
	fdivp	%st,%st(1)
	fsqrt
	fstpl	-20(%ebp)
	jmp	Lj1656
Lj1653:
	fldz
	fstpl	-20(%ebp)
Lj1656:
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	%esi,%edx
	movl	L_$CONTNRS$_Ld2$non_lazy_ptr-Lj1625(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_sint$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	%esi,%edx
	movl	L_$CONTNRS$_Ld3$non_lazy_ptr-Lj1625(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	fldl	-12(%ebp)
	fstpt	(%esp)
	movl	%esi,%eax
	movl	%eax,12(%esp)
	movl	$1,%ecx
	movl	$4,%edx
	movl	$1,%eax
	call	Lfpc_write_text_float$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	%esi,%edx
	movl	L_$CONTNRS$_Ld4$non_lazy_ptr-Lj1625(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	fldl	-20(%ebp)
	fstpt	(%esp)
	movl	%esi,%eax
	movl	%eax,12(%esp)
	movl	$1,%ecx
	movl	$4,%edx
	movl	$1,%eax
	call	Lfpc_write_text_float$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	%esi,%edx
	movl	L_$CONTNRS$_Ld5$non_lazy_ptr-Lj1625(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_sint$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movb	$47,%cl
	movl	$0,%eax
	call	Lfpc_write_text_char$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	movl	12(%eax),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_sint$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	%esi,%edx
	movl	L_$CONTNRS$_Ld6$non_lazy_ptr-Lj1625(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	movl	28(%eax),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_sint$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movb	$47,%cl
	movl	$0,%eax
	call	Lfpc_write_text_char$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	movl	32(%eax),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_sint$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__FOREACHCALL$TLISTCALLBACK$POINTER
_CONTNRS_TFPHASHLIST_$__FOREACHCALL$TLISTCALLBACK$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-28(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj1774
	decl	-16(%ebp)
	.align 2
Lj1775:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	shll	$4,%eax
	movl	12(%edx,%eax),%eax
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj1778
	jmp	Lj1779
Lj1778:
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%esi
	call	*%esi
Lj1779:
	cmpl	-16(%ebp),%ebx
	jg	Lj1775
Lj1774:
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHLIST_$__FOREACHCALL$TLISTSTATICCALLBACK$POINTER
_CONTNRS_TFPHASHLIST_$__FOREACHCALL$TLISTSTATICCALLBACK$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj1789
	decl	-16(%ebp)
	.align 2
Lj1790:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	shll	$4,%eax
	movl	12(%edx,%eax),%eax
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj1793
	jmp	Lj1794
Lj1793:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-4(%ebp),%ecx
	call	*%ecx
Lj1794:
	cmpl	-16(%ebp),%ebx
	jg	Lj1790
Lj1789:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECT_$__INTERNALCHANGEOWNER$TFPHASHOBJECTLIST$SHORTSTRING
_CONTNRS_TFPHASHOBJECT_$__INTERNALCHANGEOWNER$TFPHASHOBJECTLIST$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__ADD$SHORTSTRING$TOBJECT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%ecx
	movl	-16(%ebp),%eax
	shll	$4,%eax
	movl	-12(%ebp),%edx
	movl	4(%ecx,%eax),%eax
	movl	%eax,12(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	movl	24(%eax),%edx
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	leal	(%edx,%eax,1),%eax
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECT_$__CREATENOTOWNED$$TFPHASHOBJECT
_CONTNRS_TFPHASHOBJECT_$__CREATENOTOWNED$$TFPHASHOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1817
	jmp	Lj1818
Lj1817:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj1818:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1823
	jmp	Lj1824
Lj1823:
	jmp	Lj1815
Lj1824:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1827
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1831
	movl	-8(%ebp),%eax
	movl	$-1,12(%eax)
Lj1831:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1832
	call	LFPC_RERAISE$stub
Lj1832:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1838
	jmp	Lj1837
Lj1838:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1836
	jmp	Lj1837
Lj1836:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1837:
Lj1827:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1829
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1842
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1843
	jmp	Lj1844
Lj1843:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1844:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1842:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1841
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1841:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1829
Lj1829:
Lj1815:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECT_$__CREATE$TFPHASHOBJECTLIST$SHORTSTRING$$TFPHASHOBJECT
_CONTNRS_TFPHASHOBJECT_$__CREATE$TFPHASHOBJECTLIST$SHORTSTRING$$TFPHASHOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1851
	jmp	Lj1852
Lj1851:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1852:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1857
	jmp	Lj1858
Lj1857:
	jmp	Lj1849
Lj1858:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1861
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1865
	movl	8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPHASHOBJECT_$__INTERNALCHANGEOWNER$TFPHASHOBJECTLIST$SHORTSTRING$stub
Lj1865:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1866
	call	LFPC_RERAISE$stub
Lj1866:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1876
	jmp	Lj1875
Lj1876:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1874
	jmp	Lj1875
Lj1874:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1875:
Lj1861:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1863
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1880
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1881
	jmp	Lj1882
Lj1881:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1882:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1880:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1879
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1879:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1863
Lj1863:
Lj1849:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECT_$__CHANGEOWNER$TFPHASHOBJECTLIST
_CONTNRS_TFPHASHOBJECT_$__CHANGEOWNER$TFPHASHOBJECTLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	movl	24(%eax),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	leal	(%edx,%eax,1),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPHASHOBJECT_$__INTERNALCHANGEOWNER$TFPHASHOBJECTLIST$SHORTSTRING$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECT_$__CHANGEOWNERANDNAME$TFPHASHOBJECTLIST$SHORTSTRING
_CONTNRS_TFPHASHOBJECT_$__CHANGEOWNERANDNAME$TFPHASHOBJECTLIST$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPHASHOBJECT_$__INTERNALCHANGEOWNER$TFPHASHOBJECTLIST$SHORTSTRING$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECT_$__RENAME$SHORTSTRING
_CONTNRS_TFPHASHOBJECT_$__RENAME$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	movl	24(%eax),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	leal	(%edx,%eax,1),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%ecx
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__RENAME$SHORTSTRING$SHORTSTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj1913
	jmp	Lj1914
Lj1913:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%ecx
	movl	-12(%ebp),%eax
	shll	$4,%eax
	movl	-8(%ebp),%edx
	movl	4(%ecx,%eax),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	movl	24(%eax),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	leal	(%edx,%eax,1),%edx
	movl	-8(%ebp),%eax
	movl	%edx,8(%eax)
Lj1914:
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECT_$__GETNAME$$SHORTSTRING
_CONTNRS_TFPHASHOBJECT_$__GETNAME$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj1921
	jmp	Lj1922
Lj1921:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	leal	(%edx,%eax,1),%edx
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	jmp	Lj1931
Lj1922:
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
Lj1931:
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECT_$__GETHASH$$LONGWORD
_CONTNRS_TFPHASHOBJECT_$__GETHASH$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj1936
	jmp	Lj1937
Lj1936:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	leal	(%edx,%eax,1),%eax
	call	L_CONTNRS_FPHASH$SHORTSTRING$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1942
Lj1937:
	movl	$-1,-8(%ebp)
Lj1942:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__CREATE$BOOLEAN$$TFPHASHOBJECTLIST
_CONTNRS_TFPHASHOBJECTLIST_$__CREATE$BOOLEAN$$TFPHASHOBJECTLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj1946
Lj1946:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1947
	jmp	Lj1948
Lj1947:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1948:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1953
	jmp	Lj1954
Lj1953:
	jmp	Lj1945
Lj1954:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1957
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1961
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	L_VMT_CONTNRS_TFPHASHLIST$non_lazy_ptr-Lj1946(%ebx),%edx
	movl	$0,%eax
	call	L_CONTNRS_TFPHASHLIST_$__CREATE$$TFPHASHLIST$stub
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,4(%eax)
Lj1961:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1962
	call	LFPC_RERAISE$stub
Lj1962:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1978
	jmp	Lj1977
Lj1978:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1976
	jmp	Lj1977
Lj1976:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1977:
Lj1957:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1959
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1982
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1983
	jmp	Lj1984
Lj1983:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1984:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1982:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1981
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1981:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1959
Lj1959:
Lj1945:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__DESTROY
_CONTNRS_TFPHASHOBJECTLIST_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1991
	jmp	Lj1992
Lj1991:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1992:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj1995
	jmp	Lj1996
Lj1995:
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__CLEAR$stub
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	$1,%edx
	movl	-8(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1996:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2009
	jmp	Lj2008
Lj2009:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2007
	jmp	Lj2008
Lj2007:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj2008:
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__CLEAR
_CONTNRS_TFPHASHOBJECTLIST_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,4(%eax)
	jne	Lj2014
	jmp	Lj2015
Lj2014:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj2017
	decl	-8(%ebp)
	.align 2
Lj2018:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj2018
Lj2017:
Lj2015:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CONTNRS_TFPHASHLIST_$__CLEAR$stub
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__GETCOUNT$$LONGINT
_CONTNRS_TFPHASHOBJECTLIST_$__GETCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__SETCOUNT$LONGINT
_CONTNRS_TFPHASHOBJECTLIST_$__SETCOUNT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj2035
	jmp	Lj2036
Lj2035:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__SETCOUNT$LONGINT$stub
Lj2036:
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT
_CONTNRS_TFPHASHOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__SETITEM$LONGINT$TOBJECT
_CONTNRS_TFPHASHOBJECTLIST_$__SETITEM$LONGINT$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,4(%eax)
	jne	Lj2051
	jmp	Lj2052
Lj2051:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj2052:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__PUT$LONGINT$POINTER$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__SETCAPACITY$LONGINT
_CONTNRS_TFPHASHOBJECTLIST_$__SETCAPACITY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__SETCAPACITY$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__GETCAPACITY$$LONGINT
_CONTNRS_TFPHASHOBJECTLIST_$__GETCAPACITY$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__ADD$SHORTSTRING$TOBJECT$$LONGINT
_CONTNRS_TFPHASHOBJECTLIST_$__ADD$SHORTSTRING$TOBJECT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__ADD$SHORTSTRING$POINTER$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__NAMEOFINDEX$LONGINT$$SHORTSTRING
_CONTNRS_TFPHASHOBJECTLIST_$__NAMEOFINDEX$LONGINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__NAMEOFINDEX$LONGINT$$SHORTSTRING$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__HASHOFINDEX$LONGINT$$LONGWORD
_CONTNRS_TFPHASHOBJECTLIST_$__HASHOFINDEX$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__HASHOFINDEX$LONGINT$$LONGWORD$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__GETNEXTCOLLISION$LONGINT$$LONGINT
_CONTNRS_TFPHASHOBJECTLIST_$__GETNEXTCOLLISION$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__GETNEXTCOLLISION$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__DELETE$LONGINT
_CONTNRS_TFPHASHOBJECTLIST_$__DELETE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,4(%eax)
	jne	Lj2113
	jmp	Lj2114
Lj2113:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj2114:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__DELETE$LONGINT$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__EXPAND$$TFPHASHOBJECTLIST
_CONTNRS_TFPHASHOBJECTLIST_$__EXPAND$$TFPHASHOBJECTLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CONTNRS_TFPHASHLIST_$__EXPAND$$TFPHASHLIST$stub
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__EXTRACT$TOBJECT$$TOBJECT
_CONTNRS_TFPHASHOBJECTLIST_$__EXTRACT$TOBJECT$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__EXTRACT$POINTER$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__REMOVE$TOBJECT$$LONGINT
_CONTNRS_TFPHASHOBJECTLIST_$__REMOVE$TOBJECT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj2149
	jmp	Lj2150
Lj2149:
	movl	-8(%ebp),%eax
	cmpb	$0,4(%eax)
	jne	Lj2151
	jmp	Lj2152
Lj2151:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj2152:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__DELETE$LONGINT$stub
Lj2150:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT
_CONTNRS_TFPHASHOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__INDEXOF$POINTER$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__FIND$SHORTSTRING$$TOBJECT
_CONTNRS_TFPHASHOBJECTLIST_$__FIND$SHORTSTRING$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__FIND$SHORTSTRING$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__FINDINDEXOF$SHORTSTRING$$LONGINT
_CONTNRS_TFPHASHOBJECTLIST_$__FINDINDEXOF$SHORTSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__FINDINDEXOF$SHORTSTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__FINDWITHHASH$SHORTSTRING$LONGWORD$$POINTER
_CONTNRS_TFPHASHOBJECTLIST_$__FINDWITHHASH$SHORTSTRING$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__FINDWITHHASH$SHORTSTRING$LONGWORD$$POINTER$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__RENAME$SHORTSTRING$SHORTSTRING$$LONGINT
_CONTNRS_TFPHASHOBJECTLIST_$__RENAME$SHORTSTRING$SHORTSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__RENAME$SHORTSTRING$SHORTSTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__FINDINSTANCEOF$TCLASS$BOOLEAN$LONGINT$$LONGINT
_CONTNRS_TFPHASHOBJECTLIST_$__FINDINSTANCEOF$TCLASS$BOOLEAN$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$-1,-16(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj2215
	jmp	Lj2216
Lj2215:
	jmp	Lj2218
	.align 2
Lj2217:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%edx
	movl	(%edx),%edx
	movl	%edx,-24(%ebp)
	movl	-24(%ebp),%edx
	cmpl	-4(%ebp),%edx
	je	Lj2220
	jmp	Lj2221
Lj2220:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj2234
Lj2221:
	incl	-20(%ebp)
Lj2234:
Lj2218:
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-20(%ebp),%eax
	jg	Lj2235
	jmp	Lj2219
Lj2235:
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj2217
	jmp	Lj2219
Lj2219:
	jmp	Lj2238
Lj2216:
	jmp	Lj2240
	.align 2
Lj2239:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%ebx
	movl	-4(%ebp),%edx
	movl	%ebx,%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2242
	jmp	Lj2243
Lj2242:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj2256
Lj2243:
	incl	-20(%ebp)
Lj2256:
Lj2240:
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-20(%ebp),%eax
	jg	Lj2257
	jmp	Lj2241
Lj2257:
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj2239
	jmp	Lj2241
Lj2241:
Lj2238:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__PACK
_CONTNRS_TFPHASHOBJECTLIST_$__PACK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CONTNRS_TFPHASHLIST_$__PACK$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__SHOWSTATISTICS
_CONTNRS_TFPHASHOBJECTLIST_$__SHOWSTATISTICS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CONTNRS_TFPHASHLIST_$__SHOWSTATISTICS$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__FOREACHCALL$TOBJECTLISTCALLBACK$POINTER
_CONTNRS_TFPHASHOBJECTLIST_$__FOREACHCALL$TOBJECTLISTCALLBACK$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-20(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	leal	-20(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__FOREACHCALL$TLISTCALLBACK$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPHASHOBJECTLIST_$__FOREACHCALL$TOBJECTLISTSTATICCALLBACK$POINTER
_CONTNRS_TFPHASHOBJECTLIST_$__FOREACHCALL$TOBJECTLISTSTATICCALLBACK$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__FOREACHCALL$TLISTSTATICCALLBACK$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_RSHASH$ANSISTRING$LONGWORD$$LONGWORD
_CONTNRS_RSHASH$ANSISTRING$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$63689,-16(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2292
	movl	-4(%eax),%eax
Lj2292:
	cmpl	$0,%eax
	jg	Lj2290
	jmp	Lj2291
Lj2290:
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj2296
	movl	-4(%ecx),%ecx
Lj2296:
	movl	$1,-20(%ebp)
	cmpl	-20(%ebp),%ecx
	jb	Lj2294
	decl	-20(%ebp)
	.align 2
Lj2295:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	mull	-12(%ebp)
	movl	-4(%ebp),%ebx
	movl	-20(%ebp),%edx
	movzbl	-1(%ebx,%edx,1),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	$378551,%eax
	mull	-16(%ebp)
	movl	%eax,-16(%ebp)
	cmpl	-20(%ebp),%ecx
	ja	Lj2295
Lj2294:
Lj2291:
	movl	-12(%ebp),%eax
	andl	$2147483647,%eax
	xorl	%edx,%edx
	divl	-8(%ebp)
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_THTCUSTOMNODE_$__CREATEWITH$ANSISTRING$$THTCUSTOMNODE
_CONTNRS_THTCUSTOMNODE_$__CREATEWITH$ANSISTRING$$THTCUSTOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2305
	jmp	Lj2306
Lj2305:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj2306:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2311
	jmp	Lj2312
Lj2311:
	jmp	Lj2303
Lj2312:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2315
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2319
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,4(%ebx)
Lj2319:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2320
	call	LFPC_RERAISE$stub
Lj2320:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2330
	jmp	Lj2329
Lj2330:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2328
	jmp	Lj2329
Lj2328:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2329:
Lj2315:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2317
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2334
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2335
	jmp	Lj2336
Lj2335:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2336:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2334:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2333
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2333:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2317
Lj2317:
Lj2303:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_THTCUSTOMNODE_$__HASKEY$ANSISTRING$$BOOLEAN
_CONTNRS_THTCUSTOMNODE_$__HASKEY$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2342
Lj2342:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	testl	%edx,%edx
	je	Lj2345
	movl	-4(%edx),%edx
Lj2345:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2346
	movl	-4(%eax),%eax
Lj2346:
	cmpl	%eax,%edx
	jne	Lj2343
	jmp	Lj2344
Lj2343:
	movb	$0,-9(%ebp)
	jmp	Lj2341
	jmp	Lj2349
Lj2344:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj2354
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj2342(%esi),%edx
	movl	%edx,%eax
Lj2354:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj2357
	movl	-4(%edx),%edx
Lj2357:
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	jne	Lj2360
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj2342(%esi),%ecx
	movl	%ecx,%ebx
Lj2360:
	movl	%edx,%ecx
	movl	%ebx,%edx
	call	L_SYSUTILS_COMPAREMEM$POINTER$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-9(%ebp)
Lj2349:
Lj2341:
	movb	-9(%ebp),%al
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__CREATE$$TFPCUSTOMHASHTABLE
_CONTNRS_TFPCUSTOMHASHTABLE_$__CREATE$$TFPCUSTOMHASHTABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj2362
Lj2362:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2363
	jmp	Lj2364
Lj2363:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj2364:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2369
	jmp	Lj2370
Lj2369:
	jmp	Lj2361
Lj2370:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj2373
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj2377
	movl	L_CONTNRS_RSHASH$ANSISTRING$LONGWORD$$LONGWORD$non_lazy_ptr-Lj2362(%ebx),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	$196613,%ecx
	movl	$0,%edx
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CREATEWITH$LONGWORD$THASHFUNCTION$$TFPCUSTOMHASHTABLE$stub
Lj2377:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj2378
	call	LFPC_RERAISE$stub
Lj2378:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2390
	jmp	Lj2389
Lj2390:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2388
	jmp	Lj2389
Lj2388:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2389:
Lj2373:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj2375
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj2394
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2395
	jmp	Lj2396
Lj2395:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2396:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2394:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj2393
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2393:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2375
Lj2375:
Lj2361:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__CREATEWITH$LONGWORD$THASHFUNCTION$$TFPCUSTOMHASHTABLE
_CONTNRS_TFPCUSTOMHASHTABLE_$__CREATEWITH$LONGWORD$THASHFUNCTION$$TFPCUSTOMHASHTABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj2402
Lj2402:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2403
	jmp	Lj2404
Lj2403:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj2404:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2409
	jmp	Lj2410
Lj2409:
	jmp	Lj2401
Lj2410:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2413
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2417
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	L_VMT_CONTNRS_TFPOBJECTLIST$non_lazy_ptr-Lj2402(%ebx),%edx
	movb	$1,%cl
	movl	$0,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__CREATE$BOOLEAN$$TFPOBJECTLIST$stub
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__SETHASHTABLESIZE$LONGWORD$stub
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,12(%edx)
Lj2417:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2418
	call	LFPC_RERAISE$stub
Lj2418:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2440
	jmp	Lj2439
Lj2440:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2438
	jmp	Lj2439
Lj2438:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2439:
Lj2413:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2415
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2444
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2445
	jmp	Lj2446
Lj2445:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2446:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2444:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2443
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2443:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2415
Lj2415:
Lj2401:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__DESTROY
_CONTNRS_TFPCUSTOMHASHTABLE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2453
	jmp	Lj2454
Lj2453:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj2454:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2465
	jmp	Lj2464
Lj2465:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2463
	jmp	Lj2464
Lj2463:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj2464:
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__GETDENSITY$$LONGWORD
_CONTNRS_TFPCUSTOMHASHTABLE_$__GETDENSITY$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__GETVOIDSLOTS$$LONGWORD$stub
	movl	8(%ebx),%edx
	subl	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__GETNUMBEROFCOLLISIONS$$LONGWORD
_CONTNRS_TFPCUSTOMHASHTABLE_$__GETNUMBEROFCOLLISIONS$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__GETVOIDSLOTS$$LONGWORD$stub
	movl	8(%ebx),%edx
	subl	%eax,%edx
	movl	16(%esi),%eax
	subl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__SETHASHTABLESIZE$LONGWORD
_CONTNRS_TFPCUSTOMHASHTABLE_$__SETHASHTABLESIZE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj2481
Lj2481:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj2482
	jmp	Lj2483
Lj2482:
	movl	$0,-12(%ebp)
	jmp	Lj2487
	.align 2
Lj2486:
	incl	-12(%ebp)
Lj2487:
	movl	-12(%ebp),%edx
	movl	L_TC_CONTNRS_PRIMELIST$non_lazy_ptr-Lj2481(%ebx),%eax
	movl	(%eax,%edx,4),%eax
	cmpl	-4(%ebp),%eax
	jb	Lj2489
	jmp	Lj2488
Lj2489:
	movl	-12(%ebp),%eax
	cmpl	$27,%eax
	jb	Lj2486
	jmp	Lj2488
Lj2488:
	movl	-12(%ebp),%eax
	movl	L_TC_CONTNRS_PRIMELIST$non_lazy_ptr-Lj2481(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj2492
	jmp	Lj2493
Lj2492:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__INITIALIZEHASHTABLE$stub
	jmp	Lj2498
Lj2493:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*120(%ecx)
Lj2498:
Lj2483:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__INITIALIZEHASHTABLE
_CONTNRS_TFPCUSTOMHASHTABLE_$__INITIALIZEHASHTABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$0,%eax
	ja	Lj2505
	jmp	Lj2506
Lj2505:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jb	Lj2508
	decl	-8(%ebp)
	.align 2
Lj2509:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	$0,%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__ADD$TOBJECT$$LONGINT$stub
	cmpl	-8(%ebp),%ebx
	ja	Lj2509
Lj2508:
Lj2506:
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__CHANGETABLESIZE$LONGWORD
_CONTNRS_TFPCUSTOMHASHTABLE_$__CHANGETABLESIZE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	call	Lj2517
Lj2517:
	popl	-32(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-32(%ebp),%eax
	movl	L_VMT_CONTNRS_TFPOBJECTLIST$non_lazy_ptr-Lj2517(%eax),%edx
	movb	$1,%cl
	movl	$0,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__CREATE$BOOLEAN$$TFPOBJECTLIST$stub
	movl	-8(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__INITIALIZEHASHTABLE$stub
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj2534
	jmp	Lj2535
Lj2534:
	movl	-16(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jb	Lj2537
	decl	-20(%ebp)
	.align 2
Lj2538:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	testl	%eax,%eax
	jne	Lj2539
	jmp	Lj2540
Lj2539:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jb	Lj2546
	decl	-24(%ebp)
	.align 2
Lj2547:
	incl	-24(%ebp)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%edi
	movl	-24(%ebp),%edx
	movl	%edi,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	cmpl	-24(%ebp),%ebx
	ja	Lj2547
Lj2546:
Lj2540:
	cmpl	-20(%ebp),%esi
	ja	Lj2538
Lj2537:
Lj2535:
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__SETHASHFUNCTION$THASHFUNCTION
_CONTNRS_TFPCUSTOMHASHTABLE_$__SETHASHFUNCTION$THASHFUNCTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj2575
Lj2575:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__ISEMPTY$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2576
	jmp	Lj2577
Lj2576:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,12(%edx)
	jmp	Lj2582
Lj2577:
	movl	L_RESSTR_CONTNRS_NOTEMPTYMSG$non_lazy_ptr-Lj2575(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj2575(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj2575(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2582:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__FIND$ANSISTRING$$THTCUSTOMNODE
_CONTNRS_TFPCUSTOMHASHTABLE_$__FIND$ANSISTRING$$THTCUSTOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	12(%ecx),%ecx
	call	*%ecx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj2603
	jmp	Lj2604
Lj2603:
	movl	-20(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj2605
	jmp	Lj2606
Lj2605:
	movl	-20(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jb	Lj2610
	decl	-24(%ebp)
	.align 2
Lj2611:
	incl	-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%esi
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	call	L_CONTNRS_THTCUSTOMNODE_$__HASKEY$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2614
	jmp	Lj2615
Lj2614:
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,-12(%ebp)
	jmp	Lj2589
Lj2615:
	cmpl	-24(%ebp),%ebx
	ja	Lj2611
Lj2610:
Lj2606:
Lj2604:
	movl	$0,-12(%ebp)
Lj2589:
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__FINDCHAINFORADD$ANSISTRING$$TFPOBJECTLIST
_CONTNRS_TFPCUSTOMHASHTABLE_$__FINDCHAINFORADD$ANSISTRING$$TFPOBJECTLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	call	Lj2635
Lj2635:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	12(%ecx),%ecx
	call	*%ecx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj2648
	jmp	Lj2649
Lj2648:
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj2650
	jmp	Lj2651
Lj2650:
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jb	Lj2655
	decl	-20(%ebp)
	.align 2
Lj2656:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%edi
	movl	-4(%ebp),%edx
	movl	%edi,%eax
	call	L_CONTNRS_THTCUSTOMNODE_$__HASKEY$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2659
	jmp	Lj2660
Lj2659:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$11,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_CONTNRS_DUPLICATEMSG$non_lazy_ptr-Lj2635(%esi),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_CONTNRS_EDUPLICATE$non_lazy_ptr-Lj2635(%esi),%eax
	movl	$0,%edi
	movl	%eax,%edx
	movl	%edi,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj2635(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2660:
	cmpl	-20(%ebp),%ebx
	ja	Lj2656
Lj2655:
Lj2651:
	jmp	Lj2681
Lj2649:
	movl	L_VMT_CONTNRS_TFPOBJECTLIST$non_lazy_ptr-Lj2635(%esi),%edx
	movb	$1,%cl
	movl	$0,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__CREATE$BOOLEAN$$TFPOBJECTLIST$stub
	movl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__SETITEM$LONGINT$TOBJECT$stub
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,-12(%ebp)
Lj2681:
	movl	-8(%ebp),%eax
	incl	16(%eax)
	movl	-12(%ebp),%eax
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__DELETE$ANSISTRING
_CONTNRS_TFPCUSTOMHASHTABLE_$__DELETE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	12(%ecx),%ecx
	call	*%ecx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj2714
	jmp	Lj2715
Lj2714:
	movl	-16(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj2716
	jmp	Lj2717
Lj2716:
	movl	-16(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jb	Lj2721
	decl	-20(%ebp)
	.align 2
Lj2722:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%esi
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	call	L_CONTNRS_THTCUSTOMNODE_$__HASKEY$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2725
	jmp	Lj2726
Lj2725:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__DELETE$LONGINT$stub
	movl	-8(%ebp),%eax
	decl	16(%eax)
	jmp	Lj2700
Lj2726:
	cmpl	-20(%ebp),%ebx
	ja	Lj2722
Lj2721:
Lj2717:
Lj2715:
Lj2700:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__ISEMPTY$$BOOLEAN
_CONTNRS_TFPCUSTOMHASHTABLE_$__ISEMPTY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST
_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__GETVOIDSLOTS$$LONGWORD
_CONTNRS_TFPCUSTOMHASHTABLE_$__GETVOIDSLOTS$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$0,%eax
	ja	Lj2757
	jmp	Lj2758
Lj2757:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jb	Lj2760
	decl	-12(%ebp)
	.align 2
Lj2761:
	incl	-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	testl	%eax,%eax
	jne	Lj2763
	jmp	Lj2762
Lj2762:
	incl	-16(%ebp)
Lj2763:
	cmpl	-12(%ebp),%ebx
	ja	Lj2761
Lj2760:
Lj2758:
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__GETLOADFACTOR$$DOUBLE
_CONTNRS_TFPCUSTOMHASHTABLE_$__GETLOADFACTOR$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-20(%ebp)
	fildq	-24(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-28(%ebp)
	fildq	-32(%ebp)
	fdivrp	%st,%st(1)
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__GETAVGCHAINLEN$$DOUBLE
_CONTNRS_TFPCUSTOMHASHTABLE_$__GETAVGCHAINLEN$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%esi
	movl	$0,%ebx
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__GETVOIDSLOTS$$LONGWORD$stub
	movl	$0,%edx
	subl	%eax,%esi
	sbbl	%edx,%ebx
	movl	%esi,-24(%ebp)
	movl	%ebx,-20(%ebp)
	fildq	-24(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-20(%ebp)
	fildq	-24(%ebp)
	fdivp	%st,%st(1)
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__GETMAXCHAINLENGTH$$LONGWORD
_CONTNRS_TFPCUSTOMHASHTABLE_$__GETMAXCHAINLENGTH$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$0,%eax
	ja	Lj2784
	jmp	Lj2785
Lj2784:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jb	Lj2787
	decl	-12(%ebp)
	.align 2
Lj2788:
	incl	-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	cmpl	-8(%ebp),%eax
	ja	Lj2789
	jmp	Lj2790
Lj2789:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	%eax,-8(%ebp)
Lj2790:
	cmpl	-12(%ebp),%ebx
	ja	Lj2788
Lj2787:
Lj2785:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__FINDORCREATENEW$ANSISTRING$$THTCUSTOMNODE
_CONTNRS_TFPCUSTOMHASHTABLE_$__FINDORCREATENEW$ANSISTRING$$THTCUSTOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	call	Lj2802
Lj2802:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	12(%ecx),%ecx
	call	*%ecx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj2815
	jmp	Lj2816
Lj2815:
	movl	-20(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj2817
	jmp	Lj2818
Lj2817:
	movl	-20(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%edi
	decl	%edi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%edi
	jb	Lj2822
	decl	-24(%ebp)
	.align 2
Lj2823:
	incl	-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%ebx
	movl	-4(%ebp),%edx
	movl	%ebx,%eax
	call	L_CONTNRS_THTCUSTOMNODE_$__HASKEY$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2826
	jmp	Lj2827
Lj2826:
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,-12(%ebp)
	jmp	Lj2801
Lj2827:
	cmpl	-24(%ebp),%edi
	ja	Lj2823
Lj2822:
Lj2818:
	jmp	Lj2844
Lj2816:
	movl	L_VMT_CONTNRS_TFPOBJECTLIST$non_lazy_ptr-Lj2802(%esi),%edx
	movb	$1,%cl
	movl	$0,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__CREATE$BOOLEAN$$TFPOBJECTLIST$stub
	movl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__SETITEM$LONGINT$TOBJECT$stub
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,-20(%ebp)
Lj2844:
	movl	-8(%ebp),%eax
	incl	16(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__ADD$TOBJECT$$LONGINT$stub
Lj2801:
	movl	-12(%ebp),%eax
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAINLENGTH$LONGWORD$$LONGWORD
_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAINLENGTH$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	testl	%eax,%eax
	jne	Lj2875
	jmp	Lj2876
Lj2875:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	jmp	Lj2891
Lj2876:
	movl	$0,-12(%ebp)
Lj2891:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPCUSTOMHASHTABLE_$__CLEAR
_CONTNRS_TFPCUSTOMHASHTABLE_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$0,%eax
	ja	Lj2896
	jmp	Lj2897
Lj2896:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jb	Lj2899
	decl	-8(%ebp)
	.align 2
Lj2900:
	incl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	testl	%eax,%eax
	jne	Lj2901
	jmp	Lj2902
Lj2901:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__CLEAR$stub
Lj2902:
	cmpl	-8(%ebp),%ebx
	ja	Lj2900
Lj2899:
Lj2897:
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPDATAHASHTABLE_$__ADD$ANSISTRING$POINTER
_CONTNRS_TFPDATAHASHTABLE_$__ADD$ANSISTRING$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__FINDCHAINFORADD$ANSISTRING$$TFPOBJECTLIST$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__ADD$TOBJECT$$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPDATAHASHTABLE_$__GETDATA$ANSISTRING$$POINTER
_CONTNRS_TFPDATAHASHTABLE_$__GETDATA$ANSISTRING$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__FIND$ANSISTRING$$THTCUSTOMNODE$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj2945
	jmp	Lj2946
Lj2945:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj2949
Lj2946:
	movl	$0,-12(%ebp)
Lj2949:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPDATAHASHTABLE_$__SETDATA$ANSISTRING$POINTER
_CONTNRS_TFPDATAHASHTABLE_$__SETDATA$ANSISTRING$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-8(%ebp),%edx
	movl	%edx,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPDATAHASHTABLE_$__CREATENEWNODE$ANSISTRING$$THTCUSTOMNODE
_CONTNRS_TFPDATAHASHTABLE_$__CREATENEWNODE$ANSISTRING$$THTCUSTOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj2961
Lj2961:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_CONTNRS_THTDATANODE$non_lazy_ptr-Lj2961(%ebx),%edx
	movl	$0,%eax
	call	L_CONTNRS_THTCUSTOMNODE_$__CREATEWITH$ANSISTRING$$THTCUSTOMNODE$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPDATAHASHTABLE_$__ITERATE$TDATAITERATORMETHOD$$POINTER
_CONTNRS_TFPDATAHASHTABLE_$__ITERATE$TDATAITERATORMETHOD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-20(%ebp)
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj2978
	jmp	Lj2979
Lj2978:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj2982
Lj2979:
	movl	$0,-12(%ebp)
Lj2982:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPDATAHASHTABLE_$__FOREACHCALL$TDATAITERATORMETHOD$$THTDATANODE
_CONTNRS_TFPDATAHASHTABLE_$__FOREACHCALL$TDATAITERATORMETHOD$$THTDATANODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	movl	%edi,-40(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-32(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-28(%ebp)
	movl	$0,-12(%ebp)
	movb	$1,-21(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$0,%eax
	ja	Lj2991
	jmp	Lj2992
Lj2991:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-36(%ebp)
	movl	$0,-16(%ebp)
	movl	-36(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jb	Lj2994
	decl	-16(%ebp)
	.align 2
Lj2995:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	testl	%eax,%eax
	jne	Lj2996
	jmp	Lj2997
Lj2996:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj3002
	jmp	Lj3003
Lj3002:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jb	Lj3013
	decl	-20(%ebp)
	.align 2
Lj3014:
	incl	-20(%ebp)
	leal	-21(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,%esi
	movl	-20(%ebp),%edx
	movl	%esi,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	4(%eax),%esi
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,%edi
	movl	-20(%ebp),%edx
	movl	%edi,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	8(%eax),%edx
	movl	-28(%ebp),%eax
	movl	-32(%ebp),%edi
	movl	%esi,%ecx
	call	*%edi
	movb	-21(%ebp),%al
	testb	%al,%al
	je	Lj3051
	jmp	Lj3052
Lj3051:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,%esi
	movl	-20(%ebp),%edx
	movl	%esi,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,-12(%ebp)
	jmp	Lj2985
Lj3052:
	cmpl	-20(%ebp),%ebx
	ja	Lj3014
Lj3013:
Lj3003:
Lj2997:
	movl	-36(%ebp),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj2995
Lj2994:
Lj2992:
Lj2985:
	movl	-12(%ebp),%eax
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	movl	-40(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPDATAHASHTABLE_$__ADDNODE$THTCUSTOMNODE
_CONTNRS_TFPDATAHASHTABLE_$__ADDNODE$THTCUSTOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*148(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPSTRINGHASHTABLE_$__ADDNODE$THTCUSTOMNODE
_CONTNRS_TFPSTRINGHASHTABLE_$__ADDNODE$THTCUSTOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*148(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPSTRINGHASHTABLE_$__GETDATA$ANSISTRING$$ANSISTRING
_CONTNRS_TFPSTRINGHASHTABLE_$__GETDATA$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__FIND$ANSISTRING$$THTCUSTOMNODE$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj3089
	jmp	Lj3090
Lj3089:
	movl	-16(%ebp),%esi
	movl	8(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj3093
Lj3090:
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
Lj3093:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPSTRINGHASHTABLE_$__SETDATA$ANSISTRING$ANSISTRING
_CONTNRS_TFPSTRINGHASHTABLE_$__SETDATA$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	%eax,%ebx
	leal	8(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,8(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPSTRINGHASHTABLE_$__ADD$ANSISTRING$ANSISTRING
_CONTNRS_TFPSTRINGHASHTABLE_$__ADD$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__FINDCHAINFORADD$ANSISTRING$$TFPOBJECTLIST$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-20(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,8(%ebx)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__ADD$TOBJECT$$LONGINT$stub
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPSTRINGHASHTABLE_$__CREATENEWNODE$ANSISTRING$$THTCUSTOMNODE
_CONTNRS_TFPSTRINGHASHTABLE_$__CREATENEWNODE$ANSISTRING$$THTCUSTOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj3125
Lj3125:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_CONTNRS_THTSTRINGNODE$non_lazy_ptr-Lj3125(%ebx),%edx
	movl	$0,%eax
	call	L_CONTNRS_THTCUSTOMNODE_$__CREATEWITH$ANSISTRING$$THTCUSTOMNODE$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPSTRINGHASHTABLE_$__ITERATE$TSTRINGITERATORMETHOD$$ANSISTRING
_CONTNRS_TFPSTRINGHASHTABLE_$__ITERATE$TSTRINGITERATORMETHOD$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-20(%ebp)
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj3142
	jmp	Lj3143
Lj3142:
	movl	-16(%ebp),%esi
	movl	8(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj3146
Lj3143:
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
Lj3146:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPSTRINGHASHTABLE_$__FOREACHCALL$TSTRINGITERATORMETHOD$$THTSTRINGNODE
_CONTNRS_TFPSTRINGHASHTABLE_$__FOREACHCALL$TSTRINGITERATORMETHOD$$THTSTRINGNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	movl	%edi,-40(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-32(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-28(%ebp)
	movl	$0,-12(%ebp)
	movb	$1,-21(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$0,%eax
	ja	Lj3155
	jmp	Lj3156
Lj3155:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-36(%ebp)
	movl	$0,-16(%ebp)
	movl	-36(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jb	Lj3158
	decl	-16(%ebp)
	.align 2
Lj3159:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	testl	%eax,%eax
	jne	Lj3160
	jmp	Lj3161
Lj3160:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj3166
	jmp	Lj3167
Lj3166:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jb	Lj3177
	decl	-20(%ebp)
	.align 2
Lj3178:
	incl	-20(%ebp)
	leal	-21(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,%esi
	movl	-20(%ebp),%edx
	movl	%esi,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	4(%eax),%esi
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,%edi
	movl	-20(%ebp),%edx
	movl	%edi,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	8(%eax),%edx
	movl	-28(%ebp),%eax
	movl	-32(%ebp),%edi
	movl	%esi,%ecx
	call	*%edi
	movb	-21(%ebp),%al
	testb	%al,%al
	je	Lj3215
	jmp	Lj3216
Lj3215:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,%esi
	movl	-20(%ebp),%edx
	movl	%esi,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,-12(%ebp)
	jmp	Lj3149
Lj3216:
	cmpl	-20(%ebp),%ebx
	ja	Lj3178
Lj3177:
Lj3167:
Lj3161:
	movl	-36(%ebp),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj3159
Lj3158:
Lj3156:
Lj3149:
	movl	-12(%ebp),%eax
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	movl	-40(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTHASHTABLE_$__ADDNODE$THTCUSTOMNODE
_CONTNRS_TFPOBJECTHASHTABLE_$__ADDNODE$THTCUSTOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*148(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTHASHTABLE_$__GETDATA$ANSISTRING$$TOBJECT
_CONTNRS_TFPOBJECTHASHTABLE_$__GETDATA$ANSISTRING$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__FIND$ANSISTRING$$THTCUSTOMNODE$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj3245
	jmp	Lj3246
Lj3245:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj3249
Lj3246:
	movl	$0,-12(%ebp)
Lj3249:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTHASHTABLE_$__SETDATA$ANSISTRING$TOBJECT
_CONTNRS_TFPOBJECTHASHTABLE_$__SETDATA$ANSISTRING$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-8(%ebp),%edx
	movl	%edx,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTHASHTABLE_$__ADD$ANSISTRING$TOBJECT
_CONTNRS_TFPOBJECTHASHTABLE_$__ADD$ANSISTRING$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__FINDCHAINFORADD$ANSISTRING$$TFPOBJECTLIST$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__ADD$TOBJECT$$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTHASHTABLE_$__CREATENEWNODE$ANSISTRING$$THTCUSTOMNODE
_CONTNRS_TFPOBJECTHASHTABLE_$__CREATENEWNODE$ANSISTRING$$THTCUSTOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj3281
Lj3281:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj3282
	jmp	Lj3283
Lj3282:
	movl	-4(%ebp),%ecx
	movl	L_VMT_CONTNRS_THTOWNEDOBJECTNODE$non_lazy_ptr-Lj3281(%ebx),%edx
	movl	$0,%eax
	call	L_CONTNRS_THTCUSTOMNODE_$__CREATEWITH$ANSISTRING$$THTCUSTOMNODE$stub
	movl	%eax,-12(%ebp)
	jmp	Lj3292
Lj3283:
	movl	-4(%ebp),%ecx
	movl	L_VMT_CONTNRS_THTOBJECTNODE$non_lazy_ptr-Lj3281(%ebx),%edx
	movl	$0,%eax
	call	L_CONTNRS_THTCUSTOMNODE_$__CREATEWITH$ANSISTRING$$THTCUSTOMNODE$stub
	movl	%eax,-12(%ebp)
Lj3292:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTHASHTABLE_$__ITERATE$TOBJECTITERATORMETHOD$$TOBJECT
_CONTNRS_TFPOBJECTHASHTABLE_$__ITERATE$TOBJECTITERATORMETHOD$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-20(%ebp)
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj3309
	jmp	Lj3310
Lj3309:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj3313
Lj3310:
	movl	$0,-12(%ebp)
Lj3313:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTHASHTABLE_$__FOREACHCALL$TOBJECTITERATORMETHOD$$THTOBJECTNODE
_CONTNRS_TFPOBJECTHASHTABLE_$__FOREACHCALL$TOBJECTITERATORMETHOD$$THTOBJECTNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	movl	%edi,-40(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-32(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-28(%ebp)
	movl	$0,-12(%ebp)
	movb	$1,-21(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$0,%eax
	ja	Lj3322
	jmp	Lj3323
Lj3322:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-36(%ebp)
	movl	$0,-16(%ebp)
	movl	-36(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jb	Lj3325
	decl	-16(%ebp)
	.align 2
Lj3326:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	testl	%eax,%eax
	jne	Lj3327
	jmp	Lj3328
Lj3327:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj3333
	jmp	Lj3334
Lj3333:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jb	Lj3344
	decl	-20(%ebp)
	.align 2
Lj3345:
	incl	-20(%ebp)
	leal	-21(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,%esi
	movl	-20(%ebp),%edx
	movl	%esi,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	4(%eax),%esi
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,%edi
	movl	-20(%ebp),%edx
	movl	%edi,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	8(%eax),%edx
	movl	-28(%ebp),%eax
	movl	-32(%ebp),%edi
	movl	%esi,%ecx
	call	*%edi
	movb	-21(%ebp),%al
	testb	%al,%al
	je	Lj3382
	jmp	Lj3383
Lj3382:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub
	movl	%eax,%esi
	movl	-20(%ebp),%edx
	movl	%esi,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,-12(%ebp)
	jmp	Lj3316
Lj3383:
	cmpl	-20(%ebp),%ebx
	ja	Lj3345
Lj3344:
Lj3334:
Lj3328:
	movl	-36(%ebp),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj3326
Lj3325:
Lj3323:
Lj3316:
	movl	-12(%ebp),%eax
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	movl	-40(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTHASHTABLE_$__CREATE$BOOLEAN$$TFPOBJECTHASHTABLE
_CONTNRS_TFPOBJECTHASHTABLE_$__CREATE$BOOLEAN$$TFPOBJECTHASHTABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj3398
	jmp	Lj3399
Lj3398:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj3399:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3404
	jmp	Lj3405
Lj3404:
	jmp	Lj3396
Lj3405:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3408
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3412
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CREATE$$TFPCUSTOMHASHTABLE$stub
	movl	-12(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,20(%eax)
Lj3412:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3413
	call	LFPC_RERAISE$stub
Lj3413:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3423
	jmp	Lj3422
Lj3423:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3421
	jmp	Lj3422
Lj3421:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3422:
Lj3408:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3410
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3427
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3428
	jmp	Lj3429
Lj3428:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3429:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3427:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3426
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3426:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3410
Lj3410:
Lj3396:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TFPOBJECTHASHTABLE_$__CREATEWITH$LONGWORD$THASHFUNCTION$BOOLEAN$$TFPOBJECTHASHTABLE
_CONTNRS_TFPOBJECTHASHTABLE_$__CREATEWITH$LONGWORD$THASHFUNCTION$BOOLEAN$$TFPOBJECTHASHTABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj3436
	jmp	Lj3437
Lj3436:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj3437:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3442
	jmp	Lj3443
Lj3442:
	jmp	Lj3434
Lj3443:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3446
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3450
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CONTNRS_TFPCUSTOMHASHTABLE_$__CREATEWITH$LONGWORD$THASHFUNCTION$$TFPCUSTOMHASHTABLE$stub
	movl	-12(%ebp),%eax
	movb	8(%ebp),%dl
	movb	%dl,20(%eax)
Lj3450:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3451
	call	LFPC_RERAISE$stub
Lj3451:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3465
	jmp	Lj3464
Lj3465:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3463
	jmp	Lj3464
Lj3463:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3464:
Lj3446:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3448
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3469
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3470
	jmp	Lj3471
Lj3470:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3471:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3469:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3468
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3468:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3448
Lj3448:
Lj3434:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_THTOWNEDOBJECTNODE_$__DESTROY
_CONTNRS_THTOWNEDOBJECTNODE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3478
	jmp	Lj3479
Lj3478:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj3479:
	movl	-8(%ebp),%eax
	leal	8(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3490
	jmp	Lj3489
Lj3490:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3488
	jmp	Lj3489
Lj3488:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj3489:
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCUSTOMBUCKETLIST_$__GETDATA$POINTER$$POINTER
_CONTNRS_TCUSTOMBUCKETLIST_$__GETDATA$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TCUSTOMBUCKETLIST_$__GETBUCKETITEM$POINTER$LONGINT$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movl	-20(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCUSTOMBUCKETLIST_$__GETBUCKETCOUNT$$LONGINT
_CONTNRS_TCUSTOMBUCKETLIST_$__GETBUCKETCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCUSTOMBUCKETLIST_$__SETDATA$POINTER$POINTER
_CONTNRS_TCUSTOMBUCKETLIST_$__SETDATA$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TCUSTOMBUCKETLIST_$__GETBUCKETITEM$POINTER$LONGINT$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	%ecx,4(%eax,%edx,8)
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCUSTOMBUCKETLIST_$__SETBUCKETCOUNT$LONGINT
_CONTNRS_TCUSTOMBUCKETLIST_$__SETBUCKETCOUNT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj3524
Lj3524:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TCUSTOMBUCKETLIST_$__GETBUCKETCOUNT$$LONGINT$stub
	cmpl	-4(%ebp),%eax
	jne	Lj3525
	jmp	Lj3526
Lj3525:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_CONTNRS_TBUCKETARRAY$non_lazy_ptr-Lj3524(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
Lj3526:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCUSTOMBUCKETLIST_$__GETBUCKETITEM$POINTER$LONGINT$LONGINT
_CONTNRS_TCUSTOMBUCKETLIST_$__GETBUCKETITEM$POINTER$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj3540
Lj3540:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*112(%esi)
	testb	%al,%al
	je	Lj3541
	jmp	Lj3542
Lj3541:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$5,-20(%ebp)
	leal	-20(%ebp),%ecx
	movl	L_RESSTR_CONTNRS_SERRNOSUCHITEM$non_lazy_ptr-Lj3540(%ebx),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TCUSTOMBUCKETLIST_$__ERROR$ANSISTRING$array_of_const$stub
Lj3542:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCUSTOMBUCKETLIST_$__ADDITEM$LONGINT$POINTER$POINTER$$POINTER
_CONTNRS_TCUSTOMBUCKETLIST_$__ADDITEM$LONGINT$POINTER$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	call	Lj3560
Lj3560:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	leal	(%eax,%edx,8),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-24(%ebp),%eax
	je	Lj3567
	jmp	Lj3568
Lj3567:
	movl	-24(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj3569
	jmp	Lj3570
Lj3569:
	movl	$8,-24(%ebp)
	jmp	Lj3573
Lj3570:
	movl	-24(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-24(%ebp)
Lj3573:
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_CONTNRS_TBUCKETITEMARRAY$non_lazy_ptr-Lj3560(%ebx),%edx
	movl	-20(%ebp),%eax
	leal	4(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
Lj3568:
	movl	-20(%ebp),%eax
	movl	4(%eax),%esi
	movl	(%eax),%edx
	movl	-8(%ebp),%ecx
	movl	%ecx,(%esi,%edx,8)
	movl	4(%eax),%esi
	movl	(%eax),%edx
	movl	8(%ebp),%ecx
	movl	%ecx,4(%esi,%edx,8)
	movl	8(%ebp),%edx
	movl	%edx,-16(%ebp)
	incl	(%eax)
	movl	-16(%ebp),%eax
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCUSTOMBUCKETLIST_$__DELETEITEM$LONGINT$LONGINT$$POINTER
_CONTNRS_TCUSTOMBUCKETLIST_$__DELETEITEM$LONGINT$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	call	Lj3595
Lj3595:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	leal	(%eax,%edx,8),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj3600
	jmp	Lj3601
Lj3600:
	movl	$0,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_CONTNRS_TBUCKETITEMARRAY$non_lazy_ptr-Lj3595(%ebx),%edx
	movl	-20(%ebp),%eax
	leal	4(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	jmp	Lj3612
Lj3601:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3615
	jmp	Lj3616
Lj3615:
	movl	-20(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	incl	%eax
	leal	(%edx,%eax,8),%eax
	movl	-24(%ebp),%ecx
	shll	$3,%ecx
	movl	-20(%ebp),%edx
	movl	4(%edx),%esi
	movl	-8(%ebp),%edx
	leal	(%esi,%edx,8),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj3616:
Lj3612:
	movl	-20(%ebp),%eax
	decl	(%eax)
	movl	-16(%ebp),%eax
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCUSTOMBUCKETLIST_$__ERROR$ANSISTRING$array_of_const
_CONTNRS_TCUSTOMBUCKETLIST_$__ERROR$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	call	Lj3624
Lj3624:
	popl	-56(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
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
	jne	Lj3625
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ecx
	movl	-56(%ebp),%eax
	movl	L_VMT_CLASSES_ELISTERROR$non_lazy_ptr-Lj3624(%eax),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	movl	-56(%ebp),%ebx
	leal	La3-Lj3624(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj3625:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3626
	call	LFPC_RERAISE$stub
Lj3626:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCUSTOMBUCKETLIST_$__FINDITEM$POINTER$LONGINT$LONGINT$$BOOLEAN
_CONTNRS_TCUSTOMBUCKETLIST_$__FINDITEM$POINTER$LONGINT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	call	Lj3639
Lj3639:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_INIT_CONTNRS_TBUCKET$non_lazy_ptr-Lj3639(%ebx),%edx
	leal	-28(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj3640
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	L_INIT_CONTNRS_TBUCKET$non_lazy_ptr-Lj3639(%ebx),%ecx
	leal	-28(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%esi
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	leal	(%esi,%eax,8),%eax
	call	Lfpc_copy_proc$stub
	movl	-28(%ebp),%eax
	decl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj3658
	.align 2
Lj3657:
	decl	-20(%ebp)
Lj3658:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj3660
	jmp	Lj3659
Lj3660:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,8),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj3657
	jmp	Lj3659
Lj3659:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	setgeb	-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj3663
	jmp	Lj3664
Lj3663:
	movl	8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,(%edx)
Lj3664:
Lj3640:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_CONTNRS_TBUCKET$non_lazy_ptr-Lj3639(%ebx),%edx
	leal	-28(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj3641
	call	LFPC_RERAISE$stub
Lj3641:
	movb	-13(%ebp),%al
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCUSTOMBUCKETLIST_$__DESTROY
_CONTNRS_TCUSTOMBUCKETLIST_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3677
	jmp	Lj3678
Lj3677:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj3678:
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TCUSTOMBUCKETLIST_$__CLEAR$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3689
	jmp	Lj3688
Lj3689:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3687
	jmp	Lj3688
Lj3687:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj3688:
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCUSTOMBUCKETLIST_$__CLEAR
_CONTNRS_TCUSTOMBUCKETLIST_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	call	Lj3693
Lj3693:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	L_INIT_CONTNRS_TBUCKET$non_lazy_ptr-Lj3693(%esi),%edx
	leal	-12(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj3694
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	Lfpc_dynarray_length$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj3698
	decl	-16(%ebp)
	.align 2
Lj3699:
	incl	-16(%ebp)
	movl	L_INIT_CONTNRS_TBUCKET$non_lazy_ptr-Lj3693(%esi),%ecx
	leal	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edi
	movl	-16(%ebp),%edx
	leal	(%edi,%edx,8),%edi
	movl	%eax,%edx
	movl	%edi,%eax
	call	Lfpc_copy_proc$stub
	movl	-12(%ebp),%eax
	decl	%eax
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jl	Lj3709
	incl	-20(%ebp)
	.align 2
Lj3710:
	decl	-20(%ebp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edi
	movl	(%edi),%edi
	call	*108(%edi)
	cmpl	$0,-20(%ebp)
	jg	Lj3710
Lj3709:
	cmpl	-16(%ebp),%ebx
	jg	Lj3699
Lj3698:
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_CONTNRS_TBUCKETARRAY$non_lazy_ptr-Lj3693(%esi),%edx
	movl	-4(%ebp),%eax
	leal	4(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
Lj3694:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_CONTNRS_TBUCKET$non_lazy_ptr-Lj3693(%esi),%edx
	leal	-12(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj3695
	call	LFPC_RERAISE$stub
Lj3695:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCUSTOMBUCKETLIST_$__ADD$POINTER$POINTER$$POINTER
_CONTNRS_TCUSTOMBUCKETLIST_$__ADD$POINTER$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	call	Lj3736
Lj3736:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
	testb	%al,%al
	jne	Lj3737
	jmp	Lj3738
Lj3737:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	$5,-32(%ebp)
	leal	-32(%ebp),%ecx
	movl	L_RESSTR_CONTNRS_SDUPLICATEITEM$non_lazy_ptr-Lj3736(%esi),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TCUSTOMBUCKETLIST_$__ERROR$ANSISTRING$array_of_const$stub
Lj3738:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*100(%ebx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCUSTOMBUCKETLIST_$__ASSIGN$TCUSTOMBUCKETLIST
_CONTNRS_TCUSTOMBUCKETLIST_$__ASSIGN$TCUSTOMBUCKETLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	call	Lj3766
Lj3766:
	popl	-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TCUSTOMBUCKETLIST_$__CLEAR$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%eax
	movl	L_INIT_CONTNRS_TBUCKETARRAY$non_lazy_ptr-Lj3766(%eax),%edx
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TCUSTOMBUCKETLIST_$__GETBUCKETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-24(%ebp)
	movl	$0,-12(%ebp)
	movl	-24(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj3782
	decl	-12(%ebp)
	.align 2
Lj3783:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%eax
	movl	L_INIT_CONTNRS_TBUCKETITEMARRAY$non_lazy_ptr-Lj3766(%eax),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%ecx
	leal	4(%eax,%ecx,8),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,8),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%edi
	jl	Lj3799
	decl	-16(%ebp)
	.align 2
Lj3800:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movl	-16(%ebp),%edx
	leal	(%eax,%edx,8),%eax
	movl	%eax,%esi
	movl	4(%esi),%eax
	movl	%eax,(%esp)
	movl	(%esi),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*100(%ebx)
	cmpl	-16(%ebp),%edi
	jg	Lj3800
Lj3799:
	movl	-24(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj3783
Lj3782:
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCUSTOMBUCKETLIST_$__EXISTS$POINTER$$BOOLEAN
_CONTNRS_TCUSTOMBUCKETLIST_$__EXISTS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCUSTOMBUCKETLIST_$__FIND$POINTER$POINTER$$BOOLEAN
_CONTNRS_TCUSTOMBUCKETLIST_$__FIND$POINTER$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
	movb	%al,-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj3835
	jmp	Lj3836
Lj3835:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-20(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%eax,%edx,8),%eax
	movl	%eax,(%ecx)
Lj3836:
	movb	-13(%ebp),%al
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCUSTOMBUCKETLIST_$__FOREACH$TBUCKETPROC$POINTER$$BOOLEAN
_CONTNRS_TCUSTOMBUCKETLIST_$__FOREACH$TBUCKETPROC$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	movl	%edi,-80(%ebp)
	call	Lj3840
Lj3840:
	popl	%edi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_INIT_CONTNRS_TBUCKET$non_lazy_ptr-Lj3840(%edi),%edx
	leal	-36(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-76(%ebp)
	testl	%eax,%eax
	jne	Lj3841
	movl	$0,-20(%ebp)
	movb	$1,-13(%ebp)
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TCUSTOMBUCKETLIST_$__GETBUCKETCOUNT$$LONGINT$stub
	movl	%eax,-28(%ebp)
	jmp	Lj3853
	.align 2
Lj3852:
	movl	$0,-24(%ebp)
	movl	L_INIT_CONTNRS_TBUCKET$non_lazy_ptr-Lj3840(%edi),%ecx
	leal	-36(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%ebx
	movl	-20(%ebp),%eax
	leal	(%ebx,%eax,8),%eax
	call	Lfpc_copy_proc$stub
	jmp	Lj3864
	.align 2
Lj3863:
	movl	-32(%ebp),%edx
	movl	-24(%ebp),%eax
	leal	(%edx,%eax,8),%eax
	movl	%eax,%ebx
	leal	-13(%ebp),%eax
	movl	%eax,(%esp)
	movl	4(%ebx),%ecx
	movl	(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%esi
	call	*%esi
	incl	-24(%ebp)
Lj3864:
	cmpb	$0,-13(%ebp)
	jne	Lj3876
	jmp	Lj3865
Lj3876:
	movl	-24(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jl	Lj3863
	jmp	Lj3865
Lj3865:
	incl	-20(%ebp)
Lj3853:
	cmpb	$0,-13(%ebp)
	jne	Lj3877
	jmp	Lj3854
Lj3877:
	movl	-20(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj3852
	jmp	Lj3854
Lj3854:
Lj3841:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_CONTNRS_TBUCKET$non_lazy_ptr-Lj3840(%edi),%edx
	leal	-36(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj3842
	call	LFPC_RERAISE$stub
Lj3842:
	movb	-13(%ebp),%al
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	movl	-80(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCUSTOMBUCKETLIST_$__FOREACH$TBUCKETPROCOBJECT$$BOOLEAN
_CONTNRS_TCUSTOMBUCKETLIST_$__FOREACH$TBUCKETPROCOBJECT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	movl	%edi,-80(%ebp)
	call	Lj3887
Lj3887:
	popl	%edi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-40(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	L_INIT_CONTNRS_TBUCKET$non_lazy_ptr-Lj3887(%edi),%edx
	leal	-32(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-52(%ebp),%ecx
	leal	-76(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-4(%ebp)
	testl	%eax,%eax
	jne	Lj3888
	movl	$0,-16(%ebp)
	movb	$1,-9(%ebp)
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TCUSTOMBUCKETLIST_$__GETBUCKETCOUNT$$LONGINT$stub
	movl	%eax,-24(%ebp)
	jmp	Lj3900
	.align 2
Lj3899:
	movl	$0,-20(%ebp)
	movl	L_INIT_CONTNRS_TBUCKET$non_lazy_ptr-Lj3887(%edi),%ecx
	leal	-32(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%ebx
	movl	-16(%ebp),%eax
	leal	(%ebx,%eax,8),%eax
	call	Lfpc_copy_proc$stub
	jmp	Lj3911
	.align 2
Lj3910:
	movl	-28(%ebp),%edx
	movl	-20(%ebp),%eax
	leal	(%edx,%eax,8),%eax
	movl	%eax,%ebx
	leal	-9(%ebp),%eax
	movl	%eax,(%esp)
	movl	4(%ebx),%ecx
	movl	(%ebx),%edx
	movl	-36(%ebp),%eax
	movl	-40(%ebp),%esi
	call	*%esi
	incl	-20(%ebp)
Lj3911:
	cmpb	$0,-9(%ebp)
	jne	Lj3923
	jmp	Lj3912
Lj3923:
	movl	-20(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jl	Lj3910
	jmp	Lj3912
Lj3912:
	incl	-16(%ebp)
Lj3900:
	cmpb	$0,-9(%ebp)
	jne	Lj3924
	jmp	Lj3901
Lj3924:
	movl	-16(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jl	Lj3899
	jmp	Lj3901
Lj3901:
Lj3888:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_CONTNRS_TBUCKET$non_lazy_ptr-Lj3887(%edi),%edx
	leal	-32(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj3889
	call	LFPC_RERAISE$stub
Lj3889:
	movb	-9(%ebp),%al
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	movl	-80(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TCUSTOMBUCKETLIST_$__REMOVE$POINTER$$POINTER
_CONTNRS_TCUSTOMBUCKETLIST_$__REMOVE$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
	testb	%al,%al
	jne	Lj3935
	jmp	Lj3936
Lj3935:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movl	-20(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	%eax,-12(%ebp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	jmp	Lj3953
Lj3936:
	movl	$0,-12(%ebp)
Lj3953:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TBUCKETLIST_$__BUCKETFOR$POINTER$$LONGINT
_CONTNRS_TBUCKETLIST_$__BUCKETFOR$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	shrl	$2,%eax
	movl	-8(%ebp),%edx
	movzbl	8(%edx),%edx
	andl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TBUCKETLIST_$__CREATE$TBUCKETLISTSIZES$$TBUCKETLIST
_CONTNRS_TBUCKETLIST_$__CREATE$TBUCKETLISTSIZES$$TBUCKETLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj3962
	jmp	Lj3963
Lj3962:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj3963:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3968
	jmp	Lj3969
Lj3968:
	jmp	Lj3960
Lj3969:
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj3972
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj3976
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-4(%ebp),%ecx
	incl	%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TCUSTOMBUCKETLIST_$__SETBUCKETCOUNT$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	decl	%eax
	movb	%al,8(%edx)
Lj3976:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj3977
	call	LFPC_RERAISE$stub
Lj3977:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3993
	jmp	Lj3992
Lj3993:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3991
	jmp	Lj3992
Lj3991:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3992:
Lj3972:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj3974
	leal	-68(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj3997
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3998
	jmp	Lj3999
Lj3998:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3999:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3997:
	call	LFPC_POPADDRSTACK$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj3996
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3996:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3974
Lj3974:
Lj3960:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTBUCKETLIST_$__GETDATA$TOBJECT$$TOBJECT
_CONTNRS_TOBJECTBUCKETLIST_$__GETDATA$TOBJECT$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TCUSTOMBUCKETLIST_$__GETDATA$POINTER$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTBUCKETLIST_$__SETDATA$TOBJECT$TOBJECT
_CONTNRS_TOBJECTBUCKETLIST_$__SETDATA$TOBJECT$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TCUSTOMBUCKETLIST_$__SETDATA$POINTER$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTBUCKETLIST_$__ADD$TOBJECT$TOBJECT$$TOBJECT
_CONTNRS_TOBJECTBUCKETLIST_$__ADD$TOBJECT$TOBJECT$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TCUSTOMBUCKETLIST_$__ADD$POINTER$POINTER$$POINTER$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONTNRS_TOBJECTBUCKETLIST_$__REMOVE$TOBJECT$$TOBJECT
_CONTNRS_TOBJECTBUCKETLIST_$__REMOVE$TOBJECT$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONTNRS_TCUSTOMBUCKETLIST_$__REMOVE$POINTER$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$CONTNRS$_Ld7
_$CONTNRS$_Ld7:
	.byte	13
	.ascii	"TFPObjectList"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TFPOBJECTLIST
_VMT_CONTNRS_TFPOBJECTLIST:
	.long	12,-12
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$CONTNRS$_Ld7
	.long	0,0
	.long	_$CONTNRS$_Ld8
	.long	_RTTI_CONTNRS_TFPOBJECTLIST
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_CONTNRS_TFPOBJECTLIST_$__DESTROY
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
.globl	_$CONTNRS$_Ld10
_$CONTNRS$_Ld10:
	.byte	11
	.ascii	"TObjectList"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TOBJECTLIST
_VMT_CONTNRS_TOBJECTLIST:
	.long	20,-20
	.long	_VMT_CLASSES_TLIST
	.long	_$CONTNRS$_Ld10
	.long	0,0
	.long	_$CONTNRS$_Ld11
	.long	_RTTI_CONTNRS_TOBJECTLIST
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
	.long	_CONTNRS_TOBJECTLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION
	.long	_CLASSES_TLIST_$__CLEAR
	.long	_CLASSES_TLIST_$__ERROR$ANSISTRING$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld13
_$CONTNRS$_Ld13:
	.byte	14
	.ascii	"TComponentList"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TCOMPONENTLIST
_VMT_CONTNRS_TCOMPONENTLIST:
	.long	24,-24
	.long	_VMT_CONTNRS_TOBJECTLIST
	.long	_$CONTNRS$_Ld13
	.long	0,0
	.long	_$CONTNRS$_Ld14
	.long	_RTTI_CONTNRS_TCOMPONENTLIST
	.long	0,0,0,0
	.long	_CONTNRS_TCOMPONENTLIST_$__DESTROY
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
	.long	_CONTNRS_TCOMPONENTLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION
	.long	_CLASSES_TLIST_$__CLEAR
	.long	_CLASSES_TLIST_$__ERROR$ANSISTRING$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld16
_$CONTNRS$_Ld16:
	.byte	10
	.ascii	"TClassList"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TCLASSLIST
_VMT_CONTNRS_TCLASSLIST:
	.long	16,-16
	.long	_VMT_CLASSES_TLIST
	.long	_$CONTNRS$_Ld16
	.long	0,0
	.long	_$CONTNRS$_Ld17
	.long	_RTTI_CONTNRS_TCLASSLIST
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
.globl	_$CONTNRS$_Ld19
_$CONTNRS$_Ld19:
	.byte	12
	.ascii	"TOrderedList"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TORDEREDLIST
_VMT_CONTNRS_TORDEREDLIST:
	.long	8,-8
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$CONTNRS$_Ld19
	.long	0,0
	.long	_$CONTNRS$_Ld20
	.long	_RTTI_CONTNRS_TORDEREDLIST
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_CONTNRS_TORDEREDLIST_$__DESTROY
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
	.long	_CONTNRS_TORDEREDLIST_$__POPITEM$$POINTER
	.long	_CONTNRS_TORDEREDLIST_$__PEEKITEM$$POINTER
	.long	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld22
_$CONTNRS$_Ld22:
	.byte	6
	.ascii	"TStack"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TSTACK
_VMT_CONTNRS_TSTACK:
	.long	8,-8
	.long	_VMT_CONTNRS_TORDEREDLIST
	.long	_$CONTNRS$_Ld22
	.long	0,0
	.long	_$CONTNRS$_Ld23
	.long	_RTTI_CONTNRS_TSTACK
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_CONTNRS_TORDEREDLIST_$__DESTROY
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
	.long	_CONTNRS_TSTACK_$__PUSHITEM$POINTER
	.long	_CONTNRS_TORDEREDLIST_$__POPITEM$$POINTER
	.long	_CONTNRS_TORDEREDLIST_$__PEEKITEM$$POINTER
	.long	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld25
_$CONTNRS$_Ld25:
	.byte	12
	.ascii	"TObjectStack"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TOBJECTSTACK
_VMT_CONTNRS_TOBJECTSTACK:
	.long	8,-8
	.long	_VMT_CONTNRS_TSTACK
	.long	_$CONTNRS$_Ld25
	.long	0,0
	.long	_$CONTNRS$_Ld26
	.long	_RTTI_CONTNRS_TOBJECTSTACK
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_CONTNRS_TORDEREDLIST_$__DESTROY
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
	.long	_CONTNRS_TSTACK_$__PUSHITEM$POINTER
	.long	_CONTNRS_TORDEREDLIST_$__POPITEM$$POINTER
	.long	_CONTNRS_TORDEREDLIST_$__PEEKITEM$$POINTER
	.long	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld28
_$CONTNRS$_Ld28:
	.byte	6
	.ascii	"TQueue"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TQUEUE
_VMT_CONTNRS_TQUEUE:
	.long	8,-8
	.long	_VMT_CONTNRS_TORDEREDLIST
	.long	_$CONTNRS$_Ld28
	.long	0,0
	.long	_$CONTNRS$_Ld29
	.long	_RTTI_CONTNRS_TQUEUE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_CONTNRS_TORDEREDLIST_$__DESTROY
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
	.long	_CONTNRS_TQUEUE_$__PUSHITEM$POINTER
	.long	_CONTNRS_TORDEREDLIST_$__POPITEM$$POINTER
	.long	_CONTNRS_TORDEREDLIST_$__PEEKITEM$$POINTER
	.long	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld31
_$CONTNRS$_Ld31:
	.byte	12
	.ascii	"TObjectQueue"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TOBJECTQUEUE
_VMT_CONTNRS_TOBJECTQUEUE:
	.long	8,-8
	.long	_VMT_CONTNRS_TQUEUE
	.long	_$CONTNRS$_Ld31
	.long	0,0
	.long	_$CONTNRS$_Ld32
	.long	_RTTI_CONTNRS_TOBJECTQUEUE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_CONTNRS_TORDEREDLIST_$__DESTROY
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
	.long	_CONTNRS_TQUEUE_$__PUSHITEM$POINTER
	.long	_CONTNRS_TORDEREDLIST_$__POPITEM$$POINTER
	.long	_CONTNRS_TORDEREDLIST_$__PEEKITEM$$POINTER
	.long	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld34
_$CONTNRS$_Ld34:
	.byte	11
	.ascii	"TFPHashList"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TFPHASHLIST
_VMT_CONTNRS_TFPHASHLIST:
	.long	36,-36
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$CONTNRS$_Ld34
	.long	0,0
	.long	_$CONTNRS$_Ld35
	.long	_RTTI_CONTNRS_TFPHASHLIST
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_CONTNRS_TFPHASHLIST_$__DESTROY
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
.globl	_$CONTNRS$_Ld37
_$CONTNRS$_Ld37:
	.byte	17
	.ascii	"TFPHashObjectList"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TFPHASHOBJECTLIST
_VMT_CONTNRS_TFPHASHOBJECTLIST:
	.long	12,-12
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$CONTNRS$_Ld37
	.long	0,0
	.long	_$CONTNRS$_Ld38
	.long	_RTTI_CONTNRS_TFPHASHOBJECTLIST
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_CONTNRS_TFPHASHOBJECTLIST_$__DESTROY
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
.globl	_$CONTNRS$_Ld40
_$CONTNRS$_Ld40:
	.byte	13
	.ascii	"TFPHashObject"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TFPHASHOBJECT
_VMT_CONTNRS_TFPHASHOBJECT:
	.long	16,-16
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$CONTNRS$_Ld40
	.long	0,0
	.long	_$CONTNRS$_Ld41
	.long	_RTTI_CONTNRS_TFPHASHOBJECT
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
	.long	_CONTNRS_TFPHASHOBJECT_$__GETNAME$$SHORTSTRING
	.long	_CONTNRS_TFPHASHOBJECT_$__GETHASH$$LONGWORD
	.long	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld43
_$CONTNRS$_Ld43:
	.byte	13
	.ascii	"THTCustomNode"

.const_data
	.align 2
.globl	_VMT_CONTNRS_THTCUSTOMNODE
_VMT_CONTNRS_THTCUSTOMNODE:
	.long	8,-8
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$CONTNRS$_Ld43
	.long	0,0
	.long	_$CONTNRS$_Ld44
	.long	_RTTI_CONTNRS_THTCUSTOMNODE
	.long	_INIT_CONTNRS_THTCUSTOMNODE
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

.const_data
	.align 2
.globl	_$CONTNRS$_Ld46
_$CONTNRS$_Ld46:
	.byte	18
	.ascii	"TFPCustomHashTable"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TFPCUSTOMHASHTABLE
_VMT_CONTNRS_TFPCUSTOMHASHTABLE:
	.long	20,-20
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$CONTNRS$_Ld46
	.long	0,0
	.long	_$CONTNRS$_Ld47
	.long	_RTTI_CONTNRS_TFPCUSTOMHASHTABLE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__DESTROY
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
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAINLENGTH$LONGWORD$$LONGWORD
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__FINDORCREATENEW$ANSISTRING$$THTCUSTOMNODE
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__SETHASHFUNCTION$THASHFUNCTION
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__CHANGETABLESIZE$LONGWORD
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__CLEAR
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__DELETE$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld49
_$CONTNRS$_Ld49:
	.byte	11
	.ascii	"THTDataNode"

.const_data
	.align 2
.globl	_VMT_CONTNRS_THTDATANODE
_VMT_CONTNRS_THTDATANODE:
	.long	12,-12
	.long	_VMT_CONTNRS_THTCUSTOMNODE
	.long	_$CONTNRS$_Ld49
	.long	0,0
	.long	_$CONTNRS$_Ld50
	.long	_RTTI_CONTNRS_THTDATANODE
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
.globl	_$CONTNRS$_Ld52
_$CONTNRS$_Ld52:
	.byte	16
	.ascii	"TFPDataHashTable"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TFPDATAHASHTABLE
_VMT_CONTNRS_TFPDATAHASHTABLE:
	.long	20,-20
	.long	_VMT_CONTNRS_TFPCUSTOMHASHTABLE
	.long	_$CONTNRS$_Ld52
	.long	0,0
	.long	_$CONTNRS$_Ld53
	.long	_RTTI_CONTNRS_TFPDATAHASHTABLE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__DESTROY
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
	.long	_CONTNRS_TFPDATAHASHTABLE_$__CREATENEWNODE$ANSISTRING$$THTCUSTOMNODE
	.long	_CONTNRS_TFPDATAHASHTABLE_$__ADDNODE$THTCUSTOMNODE
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAINLENGTH$LONGWORD$$LONGWORD
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__FINDORCREATENEW$ANSISTRING$$THTCUSTOMNODE
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__SETHASHFUNCTION$THASHFUNCTION
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__CHANGETABLESIZE$LONGWORD
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__CLEAR
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__DELETE$ANSISTRING
	.long	_CONTNRS_TFPDATAHASHTABLE_$__SETDATA$ANSISTRING$POINTER
	.long	_CONTNRS_TFPDATAHASHTABLE_$__GETDATA$ANSISTRING$$POINTER
	.long	_CONTNRS_TFPDATAHASHTABLE_$__FOREACHCALL$TDATAITERATORMETHOD$$THTDATANODE
	.long	_CONTNRS_TFPDATAHASHTABLE_$__ITERATE$TDATAITERATORMETHOD$$POINTER
	.long	_CONTNRS_TFPDATAHASHTABLE_$__ADD$ANSISTRING$POINTER
	.long	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld55
_$CONTNRS$_Ld55:
	.byte	13
	.ascii	"THTStringNode"

.const_data
	.align 2
.globl	_VMT_CONTNRS_THTSTRINGNODE
_VMT_CONTNRS_THTSTRINGNODE:
	.long	12,-12
	.long	_VMT_CONTNRS_THTCUSTOMNODE
	.long	_$CONTNRS$_Ld55
	.long	0,0
	.long	_$CONTNRS$_Ld56
	.long	_RTTI_CONTNRS_THTSTRINGNODE
	.long	_INIT_CONTNRS_THTSTRINGNODE
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

.const_data
	.align 2
.globl	_$CONTNRS$_Ld58
_$CONTNRS$_Ld58:
	.byte	18
	.ascii	"TFPStringHashTable"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TFPSTRINGHASHTABLE
_VMT_CONTNRS_TFPSTRINGHASHTABLE:
	.long	20,-20
	.long	_VMT_CONTNRS_TFPCUSTOMHASHTABLE
	.long	_$CONTNRS$_Ld58
	.long	0,0
	.long	_$CONTNRS$_Ld59
	.long	_RTTI_CONTNRS_TFPSTRINGHASHTABLE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__DESTROY
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
	.long	_CONTNRS_TFPSTRINGHASHTABLE_$__CREATENEWNODE$ANSISTRING$$THTCUSTOMNODE
	.long	_CONTNRS_TFPSTRINGHASHTABLE_$__ADDNODE$THTCUSTOMNODE
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAINLENGTH$LONGWORD$$LONGWORD
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__FINDORCREATENEW$ANSISTRING$$THTCUSTOMNODE
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__SETHASHFUNCTION$THASHFUNCTION
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__CHANGETABLESIZE$LONGWORD
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__CLEAR
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__DELETE$ANSISTRING
	.long	_CONTNRS_TFPSTRINGHASHTABLE_$__SETDATA$ANSISTRING$ANSISTRING
	.long	_CONTNRS_TFPSTRINGHASHTABLE_$__GETDATA$ANSISTRING$$ANSISTRING
	.long	_CONTNRS_TFPSTRINGHASHTABLE_$__FOREACHCALL$TSTRINGITERATORMETHOD$$THTSTRINGNODE
	.long	_CONTNRS_TFPSTRINGHASHTABLE_$__ITERATE$TSTRINGITERATORMETHOD$$ANSISTRING
	.long	_CONTNRS_TFPSTRINGHASHTABLE_$__ADD$ANSISTRING$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld61
_$CONTNRS$_Ld61:
	.byte	13
	.ascii	"THTObjectNode"

.const_data
	.align 2
.globl	_VMT_CONTNRS_THTOBJECTNODE
_VMT_CONTNRS_THTOBJECTNODE:
	.long	12,-12
	.long	_VMT_CONTNRS_THTCUSTOMNODE
	.long	_$CONTNRS$_Ld61
	.long	0,0
	.long	_$CONTNRS$_Ld62
	.long	_RTTI_CONTNRS_THTOBJECTNODE
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
.globl	_$CONTNRS$_Ld64
_$CONTNRS$_Ld64:
	.byte	18
	.ascii	"THTOwnedObjectNode"

.const_data
	.align 2
.globl	_VMT_CONTNRS_THTOWNEDOBJECTNODE
_VMT_CONTNRS_THTOWNEDOBJECTNODE:
	.long	12,-12
	.long	_VMT_CONTNRS_THTOBJECTNODE
	.long	_$CONTNRS$_Ld64
	.long	0,0
	.long	_$CONTNRS$_Ld65
	.long	_RTTI_CONTNRS_THTOWNEDOBJECTNODE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_CONTNRS_THTOWNEDOBJECTNODE_$__DESTROY
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
.globl	_$CONTNRS$_Ld67
_$CONTNRS$_Ld67:
	.byte	18
	.ascii	"TFPObjectHashTable"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TFPOBJECTHASHTABLE
_VMT_CONTNRS_TFPOBJECTHASHTABLE:
	.long	24,-24
	.long	_VMT_CONTNRS_TFPCUSTOMHASHTABLE
	.long	_$CONTNRS$_Ld67
	.long	0,0
	.long	_$CONTNRS$_Ld68
	.long	_RTTI_CONTNRS_TFPOBJECTHASHTABLE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__DESTROY
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
	.long	_CONTNRS_TFPOBJECTHASHTABLE_$__CREATENEWNODE$ANSISTRING$$THTCUSTOMNODE
	.long	_CONTNRS_TFPOBJECTHASHTABLE_$__ADDNODE$THTCUSTOMNODE
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAINLENGTH$LONGWORD$$LONGWORD
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__FINDORCREATENEW$ANSISTRING$$THTCUSTOMNODE
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__SETHASHFUNCTION$THASHFUNCTION
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__CHANGETABLESIZE$LONGWORD
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__CLEAR
	.long	_CONTNRS_TFPCUSTOMHASHTABLE_$__DELETE$ANSISTRING
	.long	_CONTNRS_TFPOBJECTHASHTABLE_$__SETDATA$ANSISTRING$TOBJECT
	.long	_CONTNRS_TFPOBJECTHASHTABLE_$__GETDATA$ANSISTRING$$TOBJECT
	.long	_CONTNRS_TFPOBJECTHASHTABLE_$__FOREACHCALL$TOBJECTITERATORMETHOD$$THTOBJECTNODE
	.long	_CONTNRS_TFPOBJECTHASHTABLE_$__ITERATE$TOBJECTITERATORMETHOD$$TOBJECT
	.long	_CONTNRS_TFPOBJECTHASHTABLE_$__ADD$ANSISTRING$TOBJECT
	.long	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld70
_$CONTNRS$_Ld70:
	.byte	10
	.ascii	"EDuplicate"

.const_data
	.align 2
.globl	_VMT_CONTNRS_EDUPLICATE
_VMT_CONTNRS_EDUPLICATE:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$CONTNRS$_Ld70
	.long	0,0
	.long	_$CONTNRS$_Ld71
	.long	_RTTI_CONTNRS_EDUPLICATE
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
.globl	_$CONTNRS$_Ld73
_$CONTNRS$_Ld73:
	.byte	12
	.ascii	"EKeyNotFound"

.const_data
	.align 2
.globl	_VMT_CONTNRS_EKEYNOTFOUND
_VMT_CONTNRS_EKEYNOTFOUND:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$CONTNRS$_Ld73
	.long	0,0
	.long	_$CONTNRS$_Ld74
	.long	_RTTI_CONTNRS_EKEYNOTFOUND
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
.globl	_$CONTNRS$_Ld76
_$CONTNRS$_Ld76:
	.byte	17
	.ascii	"TCustomBucketList"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TCUSTOMBUCKETLIST
_VMT_CONTNRS_TCUSTOMBUCKETLIST:
	.long	8,-8
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$CONTNRS$_Ld76
	.long	0,0
	.long	_$CONTNRS$_Ld77
	.long	_RTTI_CONTNRS_TCUSTOMBUCKETLIST
	.long	_INIT_CONTNRS_TCUSTOMBUCKETLIST
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_CONTNRS_TCUSTOMBUCKETLIST_$__DESTROY
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
	.long	_CONTNRS_TCUSTOMBUCKETLIST_$__ADDITEM$LONGINT$POINTER$POINTER$$POINTER
	.long	FPC_ABSTRACTERROR
	.long	_CONTNRS_TCUSTOMBUCKETLIST_$__DELETEITEM$LONGINT$LONGINT$$POINTER
	.long	_CONTNRS_TCUSTOMBUCKETLIST_$__FINDITEM$POINTER$LONGINT$LONGINT$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld79
_$CONTNRS$_Ld79:
	.byte	11
	.ascii	"TBucketList"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TBUCKETLIST
_VMT_CONTNRS_TBUCKETLIST:
	.long	12,-12
	.long	_VMT_CONTNRS_TCUSTOMBUCKETLIST
	.long	_$CONTNRS$_Ld79
	.long	0,0
	.long	_$CONTNRS$_Ld80
	.long	_RTTI_CONTNRS_TBUCKETLIST
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_CONTNRS_TCUSTOMBUCKETLIST_$__DESTROY
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
	.long	_CONTNRS_TCUSTOMBUCKETLIST_$__ADDITEM$LONGINT$POINTER$POINTER$$POINTER
	.long	_CONTNRS_TBUCKETLIST_$__BUCKETFOR$POINTER$$LONGINT
	.long	_CONTNRS_TCUSTOMBUCKETLIST_$__DELETEITEM$LONGINT$LONGINT$$POINTER
	.long	_CONTNRS_TCUSTOMBUCKETLIST_$__FINDITEM$POINTER$LONGINT$LONGINT$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld82
_$CONTNRS$_Ld82:
	.byte	17
	.ascii	"TObjectBucketList"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TOBJECTBUCKETLIST
_VMT_CONTNRS_TOBJECTBUCKETLIST:
	.long	12,-12
	.long	_VMT_CONTNRS_TBUCKETLIST
	.long	_$CONTNRS$_Ld82
	.long	0,0
	.long	_$CONTNRS$_Ld83
	.long	_RTTI_CONTNRS_TOBJECTBUCKETLIST
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_CONTNRS_TCUSTOMBUCKETLIST_$__DESTROY
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
	.long	_CONTNRS_TCUSTOMBUCKETLIST_$__ADDITEM$LONGINT$POINTER$POINTER$$POINTER
	.long	_CONTNRS_TBUCKETLIST_$__BUCKETFOR$POINTER$$LONGINT
	.long	_CONTNRS_TCUSTOMBUCKETLIST_$__DELETEITEM$LONGINT$LONGINT$$POINTER
	.long	_CONTNRS_TCUSTOMBUCKETLIST_$__FINDITEM$POINTER$LONGINT$LONGINT$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld85
_$CONTNRS$_Ld85:
	.byte	14
	.ascii	"TlistComponent"

.const_data
	.align 2
.globl	_VMT_CONTNRS_TLISTCOMPONENT
_VMT_CONTNRS_TLISTCOMPONENT:
	.long	56,-56
	.long	_VMT_CLASSES_TCOMPONENT
	.long	_$CONTNRS$_Ld85
	.long	0,0
	.long	_$CONTNRS$_Ld86
	.long	_RTTI_CONTNRS_TLISTCOMPONENT
	.long	0,0,0,0
	.long	_CLASSES_TCOMPONENT_$__DESTROY
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
	.long	_CONTNRS_TLISTCOMPONENT_$__NOTIFICATION$TCOMPONENT$TOPERATION
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
	.long	_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__GETPARENTCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__HASPARENT$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_CONTNRS
_THREADVARLIST_CONTNRS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$CONTNRS$_Ld89
_$CONTNRS$_Ld89:
	.short	0,1
	.long	0,-1,7
.reference _$CONTNRS$_Ld88
.globl	_$CONTNRS$_Ld88
_$CONTNRS$_Ld88:
.reference _$CONTNRS$_Ld89
	.ascii	"CONTNRS\000"

.const_data
	.align 2
.globl	_$CONTNRS$_Ld91
_$CONTNRS$_Ld91:
	.short	0,1
	.long	0,-1,36
.reference _$CONTNRS$_Ld90
.globl	_$CONTNRS$_Ld90
_$CONTNRS$_Ld90:
.reference _$CONTNRS$_Ld91
	.ascii	"An item with key %0:s already exists\000"
	.align 2
.globl	_$CONTNRS$_Ld93
_$CONTNRS$_Ld93:
	.short	0,1
	.long	0,-1,20
.reference _$CONTNRS$_Ld92
.globl	_$CONTNRS$_Ld92
_$CONTNRS$_Ld92:
.reference _$CONTNRS$_Ld93
	.ascii	"contnrs.duplicatemsg\000"

.const_data
	.align 2
.globl	_$CONTNRS$_Ld95
_$CONTNRS$_Ld95:
	.short	0,1
	.long	0,-1,48
.reference _$CONTNRS$_Ld94
.globl	_$CONTNRS$_Ld94
_$CONTNRS$_Ld94:
.reference _$CONTNRS$_Ld95
	.ascii	"Method: %0:s key ['%1:s'] not found in container\000"
	.align 2
.globl	_$CONTNRS$_Ld97
_$CONTNRS$_Ld97:
	.short	0,1
	.long	0,-1,22
.reference _$CONTNRS$_Ld96
.globl	_$CONTNRS$_Ld96
_$CONTNRS$_Ld96:
.reference _$CONTNRS$_Ld97
	.ascii	"contnrs.keynotfoundmsg\000"

.const_data
	.align 2
.globl	_$CONTNRS$_Ld99
_$CONTNRS$_Ld99:
	.short	0,1
	.long	0,-1,21
.reference _$CONTNRS$_Ld98
.globl	_$CONTNRS$_Ld98
_$CONTNRS$_Ld98:
.reference _$CONTNRS$_Ld99
	.ascii	"Hash table not empty.\000"
	.align 2
.globl	_$CONTNRS$_Ld101
_$CONTNRS$_Ld101:
	.short	0,1
	.long	0,-1,19
.reference _$CONTNRS$_Ld100
.globl	_$CONTNRS$_Ld100
_$CONTNRS$_Ld100:
.reference _$CONTNRS$_Ld101
	.ascii	"contnrs.notemptymsg\000"

.const_data
	.align 2
.globl	_$CONTNRS$_Ld103
_$CONTNRS$_Ld103:
	.short	0,1
	.long	0,-1,22
.reference _$CONTNRS$_Ld102
.globl	_$CONTNRS$_Ld102
_$CONTNRS$_Ld102:
.reference _$CONTNRS$_Ld103
	.ascii	"No item in list for %p\000"
	.align 2
.globl	_$CONTNRS$_Ld105
_$CONTNRS$_Ld105:
	.short	0,1
	.long	0,-1,22
.reference _$CONTNRS$_Ld104
.globl	_$CONTNRS$_Ld104
_$CONTNRS$_Ld104:
.reference _$CONTNRS$_Ld105
	.ascii	"contnrs.serrnosuchitem\000"

.const_data
	.align 2
.globl	_$CONTNRS$_Ld107
_$CONTNRS$_Ld107:
	.short	0,1
	.long	0,-1,31
.reference _$CONTNRS$_Ld106
.globl	_$CONTNRS$_Ld106
_$CONTNRS$_Ld106:
.reference _$CONTNRS$_Ld107
	.ascii	"Item already exists in list: %p\000"
	.align 2
.globl	_$CONTNRS$_Ld109
_$CONTNRS$_Ld109:
	.short	0,1
	.long	0,-1,22
.reference _$CONTNRS$_Ld108
.globl	_$CONTNRS$_Ld108
_$CONTNRS$_Ld108:
.reference _$CONTNRS$_Ld109
	.ascii	"contnrs.sduplicateitem\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_CONTNRS_PRIMELIST
_TC_CONTNRS_PRIMELIST:
	.long	53,97,193,389,769,1543,3079,6151,12289,24593,49157,98317,196613,393241,786433,1572869,3145739
	.long	6291469,12582917,25165843,50331653,100663319,201326611,402653189,805306457,1610612741
	.long	-1073741823,-5

.const
	.align 2
.globl	_$CONTNRS$_Ld1
_$CONTNRS$_Ld1:
	.ascii	"\000\000"

.const
	.align 2
.globl	_$CONTNRS$_Ld2
_$CONTNRS$_Ld2:
	.ascii	"\015HashSize   : \000"

.const
	.align 2
.globl	_$CONTNRS$_Ld3
_$CONTNRS$_Ld3:
	.ascii	"\015HashMean   : \000"

.const
	.align 2
.globl	_$CONTNRS$_Ld4
_$CONTNRS$_Ld4:
	.ascii	"\015HashStdDev : \000"

.const
	.align 2
.globl	_$CONTNRS$_Ld5
_$CONTNRS$_Ld5:
	.ascii	"\015ListSize   : \000"

.const
	.align 2
.globl	_$CONTNRS$_Ld6
_$CONTNRS$_Ld6:
	.ascii	"\015StringSize : \000"
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

L_CONTNRS_TFPOBJECTLIST_$__CREATE$$TFPOBJECTLIST$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__CREATE$$TFPOBJECTLIST
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

L_CONTNRS_TFPOBJECTLIST_$__CLEAR$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__CLEAR
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

L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__GET$LONGINT$$POINTER
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

L_CLASSES_TFPLIST_$__CLEAR$stub:
.indirect_symbol _CLASSES_TFPLIST_$__CLEAR
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

L_CLASSES_TFPLIST_$__SETCOUNT$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__SETCOUNT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__PUT$LONGINT$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__PUT$LONGINT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__SETCAPACITY$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__SETCAPACITY$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__DELETE$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__DELETE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__EXCHANGE$LONGINT$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__EXCHANGE$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__EXPAND$$TFPLIST$stub:
.indirect_symbol _CLASSES_TFPLIST_$__EXPAND$$TFPLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__EXTRACT$POINTER$$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__EXTRACT$POINTER$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__INDEXOF$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__INDEXOF$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__INSERT$LONGINT$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__INSERT$LONGINT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__MOVE$LONGINT$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__MOVE$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPOBJECTLIST_$__ADD$TOBJECT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__ADD$TOBJECT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__PACK$stub:
.indirect_symbol _CLASSES_TFPLIST_$__PACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__SORT$TLISTSORTCOMPARE$stub:
.indirect_symbol _CLASSES_TFPLIST_$__SORT$TLISTSORTCOMPARE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__FIRST$$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__FIRST$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__LAST$$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__LAST$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__FOREACHCALL$TLISTCALLBACK$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__FOREACHCALL$TLISTCALLBACK$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__FOREACHCALL$TLISTSTATICCALLBACK$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__FOREACHCALL$TLISTSTATICCALLBACK$POINTER
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

L_CLASSES_TLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION$stub:
.indirect_symbol _CLASSES_TLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION
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

L_CLASSES_TLIST_$__PUT$LONGINT$POINTER$stub:
.indirect_symbol _CLASSES_TLIST_$__PUT$LONGINT$POINTER
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

L_CLASSES_TLIST_$__EXTRACT$POINTER$$POINTER$stub:
.indirect_symbol _CLASSES_TLIST_$__EXTRACT$POINTER$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__REMOVE$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__REMOVE$POINTER$$LONGINT
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

L_CONTNRS_TOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub:
.indirect_symbol _CONTNRS_TOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT
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

L_CLASSES_TLIST_$__INSERT$LONGINT$POINTER$stub:
.indirect_symbol _CLASSES_TLIST_$__INSERT$LONGINT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__FIRST$$POINTER$stub:
.indirect_symbol _CLASSES_TLIST_$__FIRST$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__LAST$$POINTER$stub:
.indirect_symbol _CLASSES_TLIST_$__LAST$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TCOMPONENTLIST_$__HANDLEFREENOTIFY$TOBJECT$TCOMPONENT$stub:
.indirect_symbol _CONTNRS_TCOMPONENTLIST_$__HANDLEFREENOTIFY$TOBJECT$TCOMPONENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOMPONENT_$__NOTIFICATION$TCOMPONENT$TOPERATION$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__NOTIFICATION$TCOMPONENT$TOPERATION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TOBJECTLIST_$__ADD$TOBJECT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TOBJECTLIST_$__ADD$TOBJECT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__DESTROY$stub:
.indirect_symbol _CLASSES_TLIST_$__DESTROY
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

L_CONTNRS_TOBJECTLIST_$__EXTRACT$TOBJECT$$TOBJECT$stub:
.indirect_symbol _CONTNRS_TOBJECTLIST_$__EXTRACT$TOBJECT$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TOBJECTLIST_$__FIRST$$TOBJECT$stub:
.indirect_symbol _CONTNRS_TOBJECTLIST_$__FIRST$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TCOMPONENTLIST_$__EXTRACT$TCOMPONENT$$TCOMPONENT$stub:
.indirect_symbol _CONTNRS_TCOMPONENTLIST_$__EXTRACT$TCOMPONENT$$TCOMPONENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TOBJECTLIST_$__INSERT$LONGINT$TOBJECT$stub:
.indirect_symbol _CONTNRS_TOBJECTLIST_$__INSERT$LONGINT$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TOBJECTLIST_$__LAST$$TOBJECT$stub:
.indirect_symbol _CONTNRS_TOBJECTLIST_$__LAST$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOMPONENT_$__FREENOTIFICATION$TCOMPONENT$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__FREENOTIFICATION$TCOMPONENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOMPONENT_$__REMOVEFREENOTIFICATION$TCOMPONENT$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__REMOVEFREENOTIFICATION$TCOMPONENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TOBJECTLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION$stub:
.indirect_symbol _CONTNRS_TOBJECTLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TOBJECTLIST_$__REMOVE$TOBJECT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TOBJECTLIST_$__REMOVE$TOBJECT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TORDEREDLIST_$__ATLEAST$LONGINT$$BOOLEAN$stub:
.indirect_symbol _CONTNRS_TORDEREDLIST_$__ATLEAST$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__DELETE$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__DELETE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TORDEREDLIST_$__PEEK$$POINTER$stub:
.indirect_symbol _CONTNRS_TORDEREDLIST_$__PEEK$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TORDEREDLIST_$__POP$$POINTER$stub:
.indirect_symbol _CONTNRS_TORDEREDLIST_$__POP$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TORDEREDLIST_$__PUSH$POINTER$$POINTER$stub:
.indirect_symbol _CONTNRS_TORDEREDLIST_$__PUSH$POINTER$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__ERROR$ANSISTRING$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__ERROR$ANSISTRING$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__RAISEINDEXERROR$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__RAISEINDEXERROR$LONGINT
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

L_CONTNRS_TFPHASHLIST_$__INDEXOF$POINTER$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__INDEXOF$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__DELETE$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__DELETE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__SETHASHCAPACITY$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__SETHASHCAPACITY$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__SETCAPACITY$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__SETCAPACITY$LONGINT
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

L_CONTNRS_TFPHASHLIST_$__REHASH$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__REHASH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLDWORD$formal$LONGINT$LONGWORD$stub:
.indirect_symbol _SYSTEM_FILLDWORD$formal$LONGINT$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__ADDTOHASHTABLE$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__ADDTOHASHTABLE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__CLEAR$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__CLEAR
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

L_CONTNRS_TFPHASHLIST_$__STREXPAND$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__STREXPAND$LONGINT
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

L_CONTNRS_TFPHASHLIST_$__EXPAND$$TFPHASHLIST$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__EXPAND$$TFPHASHLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_FPHASH$SHORTSTRING$$LONGWORD$stub:
.indirect_symbol _CONTNRS_FPHASH$SHORTSTRING$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__ADDSTR$SHORTSTRING$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__ADDSTR$SHORTSTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__SETSTRCAPACITY$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__SETSTRCAPACITY$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER$stub:
.indirect_symbol _SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER
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

Lfpc_shortstr_compare_equal$stub:
.indirect_symbol fpc_shortstr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__INTERNALFIND$LONGWORD$SHORTSTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__INTERNALFIND$LONGWORD$SHORTSTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_get_output$stub:
.indirect_symbol fpc_get_output
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_shortstr$stub:
.indirect_symbol fpc_write_text_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_IOCHECK$stub:
.indirect_symbol FPC_IOCHECK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_sint$stub:
.indirect_symbol fpc_write_text_sint
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_writeln_end$stub:
.indirect_symbol fpc_writeln_end
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_float$stub:
.indirect_symbol fpc_write_text_float
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_char$stub:
.indirect_symbol fpc_write_text_char
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

L_CONTNRS_TFPHASHOBJECT_$__INTERNALCHANGEOWNER$TFPHASHOBJECTLIST$SHORTSTRING$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECT_$__INTERNALCHANGEOWNER$TFPHASHOBJECTLIST$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHOBJECTLIST_$__RENAME$SHORTSTRING$SHORTSTRING$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__RENAME$SHORTSTRING$SHORTSTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__CREATE$$TFPHASHLIST$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__CREATE$$TFPHASHLIST
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

L_CONTNRS_TFPHASHLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__GET$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__SETCOUNT$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__SETCOUNT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__PUT$LONGINT$POINTER$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__PUT$LONGINT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__ADD$SHORTSTRING$POINTER$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__ADD$SHORTSTRING$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__NAMEOFINDEX$LONGINT$$SHORTSTRING$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__NAMEOFINDEX$LONGINT$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__HASHOFINDEX$LONGINT$$LONGWORD$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__HASHOFINDEX$LONGINT$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__GETNEXTCOLLISION$LONGINT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__GETNEXTCOLLISION$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__EXTRACT$POINTER$$POINTER$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__EXTRACT$POINTER$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__FIND$SHORTSTRING$$POINTER$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__FIND$SHORTSTRING$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__FINDINDEXOF$SHORTSTRING$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__FINDINDEXOF$SHORTSTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__FINDWITHHASH$SHORTSTRING$LONGWORD$$POINTER$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__FINDWITHHASH$SHORTSTRING$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__RENAME$SHORTSTRING$SHORTSTRING$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__RENAME$SHORTSTRING$SHORTSTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHOBJECTLIST_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__PACK$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__PACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__SHOWSTATISTICS$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__SHOWSTATISTICS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__FOREACHCALL$TLISTCALLBACK$POINTER$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__FOREACHCALL$TLISTCALLBACK$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__FOREACHCALL$TLISTSTATICCALLBACK$POINTER$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__FOREACHCALL$TLISTSTATICCALLBACK$POINTER
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

L_SYSUTILS_COMPAREMEM$POINTER$POINTER$LONGWORD$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_COMPAREMEM$POINTER$POINTER$LONGWORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPCUSTOMHASHTABLE_$__CREATEWITH$LONGWORD$THASHFUNCTION$$TFPCUSTOMHASHTABLE$stub:
.indirect_symbol _CONTNRS_TFPCUSTOMHASHTABLE_$__CREATEWITH$LONGWORD$THASHFUNCTION$$TFPCUSTOMHASHTABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPOBJECTLIST_$__CREATE$BOOLEAN$$TFPOBJECTLIST$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__CREATE$BOOLEAN$$TFPOBJECTLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPCUSTOMHASHTABLE_$__SETHASHTABLESIZE$LONGWORD$stub:
.indirect_symbol _CONTNRS_TFPCUSTOMHASHTABLE_$__SETHASHTABLESIZE$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPCUSTOMHASHTABLE_$__GETVOIDSLOTS$$LONGWORD$stub:
.indirect_symbol _CONTNRS_TFPCUSTOMHASHTABLE_$__GETVOIDSLOTS$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPCUSTOMHASHTABLE_$__INITIALIZEHASHTABLE$stub:
.indirect_symbol _CONTNRS_TFPCUSTOMHASHTABLE_$__INITIALIZEHASHTABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPCUSTOMHASHTABLE_$__ISEMPTY$$BOOLEAN$stub:
.indirect_symbol _CONTNRS_TFPCUSTOMHASHTABLE_$__ISEMPTY$$BOOLEAN
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

L_CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST$stub:
.indirect_symbol _CONTNRS_TFPCUSTOMHASHTABLE_$__CHAIN$LONGWORD$$TFPOBJECTLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_THTCUSTOMNODE_$__HASKEY$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _CONTNRS_THTCUSTOMNODE_$__HASKEY$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPOBJECTLIST_$__SETITEM$LONGINT$TOBJECT$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__SETITEM$LONGINT$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPOBJECTLIST_$__DELETE$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__DELETE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPCUSTOMHASHTABLE_$__FINDCHAINFORADD$ANSISTRING$$TFPOBJECTLIST$stub:
.indirect_symbol _CONTNRS_TFPCUSTOMHASHTABLE_$__FINDCHAINFORADD$ANSISTRING$$TFPOBJECTLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPCUSTOMHASHTABLE_$__FIND$ANSISTRING$$THTCUSTOMNODE$stub:
.indirect_symbol _CONTNRS_TFPCUSTOMHASHTABLE_$__FIND$ANSISTRING$$THTCUSTOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_THTCUSTOMNODE_$__CREATEWITH$ANSISTRING$$THTCUSTOMNODE$stub:
.indirect_symbol _CONTNRS_THTCUSTOMNODE_$__CREATEWITH$ANSISTRING$$THTCUSTOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPCUSTOMHASHTABLE_$__CREATE$$TFPCUSTOMHASHTABLE$stub:
.indirect_symbol _CONTNRS_TFPCUSTOMHASHTABLE_$__CREATE$$TFPCUSTOMHASHTABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TCUSTOMBUCKETLIST_$__GETBUCKETITEM$POINTER$LONGINT$LONGINT$stub:
.indirect_symbol _CONTNRS_TCUSTOMBUCKETLIST_$__GETBUCKETITEM$POINTER$LONGINT$LONGINT
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

L_CONTNRS_TCUSTOMBUCKETLIST_$__GETBUCKETCOUNT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TCUSTOMBUCKETLIST_$__GETBUCKETCOUNT$$LONGINT
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

L_CONTNRS_TCUSTOMBUCKETLIST_$__ERROR$ANSISTRING$array_of_const$stub:
.indirect_symbol _CONTNRS_TCUSTOMBUCKETLIST_$__ERROR$ANSISTRING$array_of_const
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

LFPC_FREEMEM$stub:
.indirect_symbol FPC_FREEMEM
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

L_CONTNRS_TCUSTOMBUCKETLIST_$__CLEAR$stub:
.indirect_symbol _CONTNRS_TCUSTOMBUCKETLIST_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TCUSTOMBUCKETLIST_$__SETBUCKETCOUNT$LONGINT$stub:
.indirect_symbol _CONTNRS_TCUSTOMBUCKETLIST_$__SETBUCKETCOUNT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TCUSTOMBUCKETLIST_$__GETDATA$POINTER$$POINTER$stub:
.indirect_symbol _CONTNRS_TCUSTOMBUCKETLIST_$__GETDATA$POINTER$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TCUSTOMBUCKETLIST_$__SETDATA$POINTER$POINTER$stub:
.indirect_symbol _CONTNRS_TCUSTOMBUCKETLIST_$__SETDATA$POINTER$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TCUSTOMBUCKETLIST_$__ADD$POINTER$POINTER$$POINTER$stub:
.indirect_symbol _CONTNRS_TCUSTOMBUCKETLIST_$__ADD$POINTER$POINTER$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TCUSTOMBUCKETLIST_$__REMOVE$POINTER$$POINTER$stub:
.indirect_symbol _CONTNRS_TCUSTOMBUCKETLIST_$__REMOVE$POINTER$$POINTER
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
.globl	_INIT_CONTNRS_TOBJECTLISTCALLBACK
_INIT_CONTNRS_TOBJECTLISTCALLBACK:
	.byte	6,19
	.ascii	"TObjectListCallback"
	.byte	0,2,8,4
	.ascii	"data"
	.ascii	"\007TObject"
	.byte	0,3
	.ascii	"arg"
	.ascii	"\007Pointer"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_POINTER

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TOBJECTLISTCALLBACK
_RTTI_CONTNRS_TOBJECTLISTCALLBACK:
	.byte	6,19
	.ascii	"TObjectListCallback"
	.byte	0,2,8,4
	.ascii	"data"
	.ascii	"\007TObject"
	.byte	0,3
	.ascii	"arg"
	.ascii	"\007Pointer"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_POINTER

.const_data
	.align 2
.globl	_INIT_CONTNRS_TOBJECTLISTSTATICCALLBACK
_INIT_CONTNRS_TOBJECTLISTSTATICCALLBACK:
	.byte	23,25
	.ascii	"TObjectListStaticCallback"

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TOBJECTLISTSTATICCALLBACK
_RTTI_CONTNRS_TOBJECTLISTSTATICCALLBACK:
	.byte	23,25
	.ascii	"TObjectListStaticCallback"

.const_data
	.align 2
.globl	_$CONTNRS$_Ld8
_$CONTNRS$_Ld8:
	.short	0
	.long	_$CONTNRS$_Ld9
	.align 2
.globl	_$CONTNRS$_Ld9
_$CONTNRS$_Ld9:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TFPOBJECTLIST
_INIT_CONTNRS_TFPOBJECTLIST:
	.byte	15,13
	.ascii	"TFPObjectList"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TFPOBJECTLIST
_RTTI_CONTNRS_TFPOBJECTLIST:
	.byte	15,13
	.ascii	"TFPObjectList"
	.long	_VMT_CONTNRS_TFPOBJECTLIST
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld11
_$CONTNRS$_Ld11:
	.short	0
	.long	_$CONTNRS$_Ld12
	.align 2
.globl	_$CONTNRS$_Ld12
_$CONTNRS$_Ld12:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TOBJECTLIST
_INIT_CONTNRS_TOBJECTLIST:
	.byte	15,11
	.ascii	"TObjectList"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TOBJECTLIST
_RTTI_CONTNRS_TOBJECTLIST:
	.byte	15,11
	.ascii	"TObjectList"
	.long	_VMT_CONTNRS_TOBJECTLIST
	.long	_RTTI_CLASSES_TLIST
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld14
_$CONTNRS$_Ld14:
	.short	0
	.long	_$CONTNRS$_Ld15
	.align 2
.globl	_$CONTNRS$_Ld15
_$CONTNRS$_Ld15:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TCOMPONENTLIST
_INIT_CONTNRS_TCOMPONENTLIST:
	.byte	15,14
	.ascii	"TComponentList"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TCOMPONENTLIST
_RTTI_CONTNRS_TCOMPONENTLIST:
	.byte	15,14
	.ascii	"TComponentList"
	.long	_VMT_CONTNRS_TCOMPONENTLIST
	.long	_RTTI_CONTNRS_TOBJECTLIST
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld17
_$CONTNRS$_Ld17:
	.short	0
	.long	_$CONTNRS$_Ld18
	.align 2
.globl	_$CONTNRS$_Ld18
_$CONTNRS$_Ld18:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TCLASSLIST
_INIT_CONTNRS_TCLASSLIST:
	.byte	15,10
	.ascii	"TClassList"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TCLASSLIST
_RTTI_CONTNRS_TCLASSLIST:
	.byte	15,10
	.ascii	"TClassList"
	.long	_VMT_CONTNRS_TCLASSLIST
	.long	_RTTI_CLASSES_TLIST
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld20
_$CONTNRS$_Ld20:
	.short	0
	.long	_$CONTNRS$_Ld21
	.align 2
.globl	_$CONTNRS$_Ld21
_$CONTNRS$_Ld21:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TORDEREDLIST
_INIT_CONTNRS_TORDEREDLIST:
	.byte	15,12
	.ascii	"TOrderedList"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TORDEREDLIST
_RTTI_CONTNRS_TORDEREDLIST:
	.byte	15,12
	.ascii	"TOrderedList"
	.long	_VMT_CONTNRS_TORDEREDLIST
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld23
_$CONTNRS$_Ld23:
	.short	0
	.long	_$CONTNRS$_Ld24
	.align 2
.globl	_$CONTNRS$_Ld24
_$CONTNRS$_Ld24:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TSTACK
_INIT_CONTNRS_TSTACK:
	.byte	15,6
	.ascii	"TStack"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TSTACK
_RTTI_CONTNRS_TSTACK:
	.byte	15,6
	.ascii	"TStack"
	.long	_VMT_CONTNRS_TSTACK
	.long	_RTTI_CONTNRS_TORDEREDLIST
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld26
_$CONTNRS$_Ld26:
	.short	0
	.long	_$CONTNRS$_Ld27
	.align 2
.globl	_$CONTNRS$_Ld27
_$CONTNRS$_Ld27:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TOBJECTSTACK
_INIT_CONTNRS_TOBJECTSTACK:
	.byte	15,12
	.ascii	"TObjectStack"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TOBJECTSTACK
_RTTI_CONTNRS_TOBJECTSTACK:
	.byte	15,12
	.ascii	"TObjectStack"
	.long	_VMT_CONTNRS_TOBJECTSTACK
	.long	_RTTI_CONTNRS_TSTACK
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld29
_$CONTNRS$_Ld29:
	.short	0
	.long	_$CONTNRS$_Ld30
	.align 2
.globl	_$CONTNRS$_Ld30
_$CONTNRS$_Ld30:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TQUEUE
_INIT_CONTNRS_TQUEUE:
	.byte	15,6
	.ascii	"TQueue"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TQUEUE
_RTTI_CONTNRS_TQUEUE:
	.byte	15,6
	.ascii	"TQueue"
	.long	_VMT_CONTNRS_TQUEUE
	.long	_RTTI_CONTNRS_TORDEREDLIST
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld32
_$CONTNRS$_Ld32:
	.short	0
	.long	_$CONTNRS$_Ld33
	.align 2
.globl	_$CONTNRS$_Ld33
_$CONTNRS$_Ld33:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TOBJECTQUEUE
_INIT_CONTNRS_TOBJECTQUEUE:
	.byte	15,12
	.ascii	"TObjectQueue"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TOBJECTQUEUE
_RTTI_CONTNRS_TOBJECTQUEUE:
	.byte	15,12
	.ascii	"TObjectQueue"
	.long	_VMT_CONTNRS_TOBJECTQUEUE
	.long	_RTTI_CONTNRS_TQUEUE
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_THASHITEM
_INIT_CONTNRS_THASHITEM:
	.byte	13,9
	.ascii	"THashItem"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_THASHITEM
_RTTI_CONTNRS_THASHITEM:
	.byte	13,9
	.ascii	"THashItem"
	.long	16,4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_POINTER
	.long	12

.const_data
	.align 2
.globl	_INIT_CONTNRS_PHASHITEM
_INIT_CONTNRS_PHASHITEM:
	.byte	0
	.ascii	"\011PHashItem"

.const_data
	.align 2
.globl	_RTTI_CONTNRS_PHASHITEM
_RTTI_CONTNRS_PHASHITEM:
	.byte	0
	.ascii	"\011PHashItem"

.const_data
	.align 2
.globl	_INIT_CONTNRS_PHASHITEMLIST
_INIT_CONTNRS_PHASHITEMLIST:
	.byte	0
	.ascii	"\015PHashItemList"

.const_data
	.align 2
.globl	_RTTI_CONTNRS_PHASHITEMLIST
_RTTI_CONTNRS_PHASHITEMLIST:
	.byte	0
	.ascii	"\015PHashItemList"

.const_data
	.align 2
.globl	_INIT_CONTNRS_THASHITEMLIST
_INIT_CONTNRS_THASHITEMLIST:
	.byte	12
	.ascii	"\015THashItemList"
	.long	16,134217727
	.long	_INIT_CONTNRS_THASHITEM
	.long	-1

.const_data
	.align 2
.globl	_RTTI_CONTNRS_THASHITEMLIST
_RTTI_CONTNRS_THASHITEMLIST:
	.byte	12
	.ascii	"\015THashItemList"
	.long	16,134217727
	.long	_RTTI_CONTNRS_THASHITEM
	.long	-1

.const_data
	.align 2
.globl	_INIT_CONTNRS_PHASHTABLE
_INIT_CONTNRS_PHASHTABLE:
	.byte	0
	.ascii	"\012PHashTable"

.const_data
	.align 2
.globl	_RTTI_CONTNRS_PHASHTABLE
_RTTI_CONTNRS_PHASHTABLE:
	.byte	0
	.ascii	"\012PHashTable"

.const_data
	.align 2
.globl	_INIT_CONTNRS_THASHTABLE
_INIT_CONTNRS_THASHTABLE:
	.byte	12
	.ascii	"\012THashTable"
	.long	4,536870911
	.long	_INIT_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_CONTNRS_THASHTABLE
_RTTI_CONTNRS_THASHTABLE:
	.byte	12
	.ascii	"\012THashTable"
	.long	4,536870911
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_$CONTNRS$_Ld35
_$CONTNRS$_Ld35:
	.short	0
	.long	_$CONTNRS$_Ld36
	.align 2
.globl	_$CONTNRS$_Ld36
_$CONTNRS$_Ld36:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TFPHASHLIST
_INIT_CONTNRS_TFPHASHLIST:
	.byte	15,11
	.ascii	"TFPHashList"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TFPHASHLIST
_RTTI_CONTNRS_TFPHASHLIST:
	.byte	15,11
	.ascii	"TFPHashList"
	.long	_VMT_CONTNRS_TFPHASHLIST
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld38
_$CONTNRS$_Ld38:
	.short	0
	.long	_$CONTNRS$_Ld39
	.align 2
.globl	_$CONTNRS$_Ld39
_$CONTNRS$_Ld39:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TFPHASHOBJECTLIST
_INIT_CONTNRS_TFPHASHOBJECTLIST:
	.byte	15,17
	.ascii	"TFPHashObjectList"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TFPHASHOBJECTLIST
_RTTI_CONTNRS_TFPHASHOBJECTLIST:
	.byte	15,17
	.ascii	"TFPHashObjectList"
	.long	_VMT_CONTNRS_TFPHASHOBJECTLIST
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld41
_$CONTNRS$_Ld41:
	.short	0
	.long	_$CONTNRS$_Ld42
	.align 2
.globl	_$CONTNRS$_Ld42
_$CONTNRS$_Ld42:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TFPHASHOBJECT
_INIT_CONTNRS_TFPHASHOBJECT:
	.byte	15,13
	.ascii	"TFPHashObject"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TFPHASHOBJECT
_RTTI_CONTNRS_TFPHASHOBJECT:
	.byte	15,13
	.ascii	"TFPHashObject"
	.long	_VMT_CONTNRS_TFPHASHOBJECT
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_THASHFUNCTION
_INIT_CONTNRS_THASHFUNCTION:
	.byte	23,13
	.ascii	"THashFunction"

.const_data
	.align 2
.globl	_RTTI_CONTNRS_THASHFUNCTION
_RTTI_CONTNRS_THASHFUNCTION:
	.byte	23,13
	.ascii	"THashFunction"

.const_data
	.align 2
.globl	_$CONTNRS$_Ld44
_$CONTNRS$_Ld44:
	.short	0
	.long	_$CONTNRS$_Ld45
	.align 2
.globl	_$CONTNRS$_Ld45
_$CONTNRS$_Ld45:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_THTCUSTOMNODE
_INIT_CONTNRS_THTCUSTOMNODE:
	.byte	15,13
	.ascii	"THTCustomNode"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	4

.const_data
	.align 2
.globl	_RTTI_CONTNRS_THTCUSTOMNODE
_RTTI_CONTNRS_THTCUSTOMNODE:
	.byte	15,13
	.ascii	"THTCustomNode"
	.long	_VMT_CONTNRS_THTCUSTOMNODE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_THTCUSTOMNODECLASS
_INIT_CONTNRS_THTCUSTOMNODECLASS:
	.byte	0
	.ascii	"\022THTCustomNodeClass"

.const_data
	.align 2
.globl	_RTTI_CONTNRS_THTCUSTOMNODECLASS
_RTTI_CONTNRS_THTCUSTOMNODECLASS:
	.byte	0
	.ascii	"\022THTCustomNodeClass"

.const_data
	.align 2
.globl	_INIT_CONTNRS_DEF675
_INIT_CONTNRS_DEF675:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$CONTNRS$_Ld47
_$CONTNRS$_Ld47:
	.short	0
	.long	_$CONTNRS$_Ld48
	.align 2
.globl	_$CONTNRS$_Ld48
_$CONTNRS$_Ld48:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TFPCUSTOMHASHTABLE
_INIT_CONTNRS_TFPCUSTOMHASHTABLE:
	.byte	15,18
	.ascii	"TFPCustomHashTable"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TFPCUSTOMHASHTABLE
_RTTI_CONTNRS_TFPCUSTOMHASHTABLE:
	.byte	15,18
	.ascii	"TFPCustomHashTable"
	.long	_VMT_CONTNRS_TFPCUSTOMHASHTABLE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld50
_$CONTNRS$_Ld50:
	.short	0
	.long	_$CONTNRS$_Ld51
	.align 2
.globl	_$CONTNRS$_Ld51
_$CONTNRS$_Ld51:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_THTDATANODE
_INIT_CONTNRS_THTDATANODE:
	.byte	15,11
	.ascii	"THTDataNode"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_THTDATANODE
_RTTI_CONTNRS_THTDATANODE:
	.byte	15,11
	.ascii	"THTDataNode"
	.long	_VMT_CONTNRS_THTDATANODE
	.long	_RTTI_CONTNRS_THTCUSTOMNODE
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TDATAITERATORMETHOD
_INIT_CONTNRS_TDATAITERATORMETHOD:
	.byte	6,19
	.ascii	"TDataIteratorMethod"
	.byte	0,3,0,4
	.ascii	"Item"
	.ascii	"\007Pointer"
	.byte	2,3
	.ascii	"Key"
	.ascii	"\012AnsiString"
	.byte	1,8
	.ascii	"Continue"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_SYSTEM_POINTER
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TDATAITERATORMETHOD
_RTTI_CONTNRS_TDATAITERATORMETHOD:
	.byte	6,19
	.ascii	"TDataIteratorMethod"
	.byte	0,3,0,4
	.ascii	"Item"
	.ascii	"\007Pointer"
	.byte	2,3
	.ascii	"Key"
	.ascii	"\012AnsiString"
	.byte	1,8
	.ascii	"Continue"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_SYSTEM_POINTER
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_$CONTNRS$_Ld53
_$CONTNRS$_Ld53:
	.short	0
	.long	_$CONTNRS$_Ld54
	.align 2
.globl	_$CONTNRS$_Ld54
_$CONTNRS$_Ld54:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TFPDATAHASHTABLE
_INIT_CONTNRS_TFPDATAHASHTABLE:
	.byte	15,16
	.ascii	"TFPDataHashTable"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TFPDATAHASHTABLE
_RTTI_CONTNRS_TFPDATAHASHTABLE:
	.byte	15,16
	.ascii	"TFPDataHashTable"
	.long	_VMT_CONTNRS_TFPDATAHASHTABLE
	.long	_RTTI_CONTNRS_TFPCUSTOMHASHTABLE
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld56
_$CONTNRS$_Ld56:
	.short	0
	.long	_$CONTNRS$_Ld57
	.align 2
.globl	_$CONTNRS$_Ld57
_$CONTNRS$_Ld57:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_THTSTRINGNODE
_INIT_CONTNRS_THTSTRINGNODE:
	.byte	15,13
	.ascii	"THTStringNode"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	8

.const_data
	.align 2
.globl	_RTTI_CONTNRS_THTSTRINGNODE
_RTTI_CONTNRS_THTSTRINGNODE:
	.byte	15,13
	.ascii	"THTStringNode"
	.long	_VMT_CONTNRS_THTSTRINGNODE
	.long	_RTTI_CONTNRS_THTCUSTOMNODE
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TSTRINGITERATORMETHOD
_INIT_CONTNRS_TSTRINGITERATORMETHOD:
	.byte	6,21
	.ascii	"TStringIteratorMethod"
	.byte	0,3,0,4
	.ascii	"Item"
	.ascii	"\012AnsiString"
	.byte	2,3
	.ascii	"Key"
	.ascii	"\012AnsiString"
	.byte	1,8
	.ascii	"Continue"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TSTRINGITERATORMETHOD
_RTTI_CONTNRS_TSTRINGITERATORMETHOD:
	.byte	6,21
	.ascii	"TStringIteratorMethod"
	.byte	0,3,0,4
	.ascii	"Item"
	.ascii	"\012AnsiString"
	.byte	2,3
	.ascii	"Key"
	.ascii	"\012AnsiString"
	.byte	1,8
	.ascii	"Continue"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_$CONTNRS$_Ld59
_$CONTNRS$_Ld59:
	.short	0
	.long	_$CONTNRS$_Ld60
	.align 2
.globl	_$CONTNRS$_Ld60
_$CONTNRS$_Ld60:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TFPSTRINGHASHTABLE
_INIT_CONTNRS_TFPSTRINGHASHTABLE:
	.byte	15,18
	.ascii	"TFPStringHashTable"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TFPSTRINGHASHTABLE
_RTTI_CONTNRS_TFPSTRINGHASHTABLE:
	.byte	15,18
	.ascii	"TFPStringHashTable"
	.long	_VMT_CONTNRS_TFPSTRINGHASHTABLE
	.long	_RTTI_CONTNRS_TFPCUSTOMHASHTABLE
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld62
_$CONTNRS$_Ld62:
	.short	0
	.long	_$CONTNRS$_Ld63
	.align 2
.globl	_$CONTNRS$_Ld63
_$CONTNRS$_Ld63:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_THTOBJECTNODE
_INIT_CONTNRS_THTOBJECTNODE:
	.byte	15,13
	.ascii	"THTObjectNode"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_THTOBJECTNODE
_RTTI_CONTNRS_THTOBJECTNODE:
	.byte	15,13
	.ascii	"THTObjectNode"
	.long	_VMT_CONTNRS_THTOBJECTNODE
	.long	_RTTI_CONTNRS_THTCUSTOMNODE
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld65
_$CONTNRS$_Ld65:
	.short	0
	.long	_$CONTNRS$_Ld66
	.align 2
.globl	_$CONTNRS$_Ld66
_$CONTNRS$_Ld66:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_THTOWNEDOBJECTNODE
_INIT_CONTNRS_THTOWNEDOBJECTNODE:
	.byte	15,18
	.ascii	"THTOwnedObjectNode"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_THTOWNEDOBJECTNODE
_RTTI_CONTNRS_THTOWNEDOBJECTNODE:
	.byte	15,18
	.ascii	"THTOwnedObjectNode"
	.long	_VMT_CONTNRS_THTOWNEDOBJECTNODE
	.long	_RTTI_CONTNRS_THTOBJECTNODE
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TOBJECTITERATORMETHOD
_INIT_CONTNRS_TOBJECTITERATORMETHOD:
	.byte	6,21
	.ascii	"TObjectIteratorMethod"
	.byte	0,3,8,4
	.ascii	"Item"
	.ascii	"\007TObject"
	.byte	2,3
	.ascii	"Key"
	.ascii	"\012AnsiString"
	.byte	1,8
	.ascii	"Continue"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TOBJECTITERATORMETHOD
_RTTI_CONTNRS_TOBJECTITERATORMETHOD:
	.byte	6,21
	.ascii	"TObjectIteratorMethod"
	.byte	0,3,8,4
	.ascii	"Item"
	.ascii	"\007TObject"
	.byte	2,3
	.ascii	"Key"
	.ascii	"\012AnsiString"
	.byte	1,8
	.ascii	"Continue"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_$CONTNRS$_Ld68
_$CONTNRS$_Ld68:
	.short	0
	.long	_$CONTNRS$_Ld69
	.align 2
.globl	_$CONTNRS$_Ld69
_$CONTNRS$_Ld69:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TFPOBJECTHASHTABLE
_INIT_CONTNRS_TFPOBJECTHASHTABLE:
	.byte	15,18
	.ascii	"TFPObjectHashTable"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TFPOBJECTHASHTABLE
_RTTI_CONTNRS_TFPOBJECTHASHTABLE:
	.byte	15,18
	.ascii	"TFPObjectHashTable"
	.long	_VMT_CONTNRS_TFPOBJECTHASHTABLE
	.long	_RTTI_CONTNRS_TFPCUSTOMHASHTABLE
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld71
_$CONTNRS$_Ld71:
	.short	0
	.long	_$CONTNRS$_Ld72
	.align 2
.globl	_$CONTNRS$_Ld72
_$CONTNRS$_Ld72:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_EDUPLICATE
_INIT_CONTNRS_EDUPLICATE:
	.byte	15,10
	.ascii	"EDuplicate"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_EDUPLICATE
_RTTI_CONTNRS_EDUPLICATE:
	.byte	15,10
	.ascii	"EDuplicate"
	.long	_VMT_CONTNRS_EDUPLICATE
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld74
_$CONTNRS$_Ld74:
	.short	0
	.long	_$CONTNRS$_Ld75
	.align 2
.globl	_$CONTNRS$_Ld75
_$CONTNRS$_Ld75:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_EKEYNOTFOUND
_INIT_CONTNRS_EKEYNOTFOUND:
	.byte	15,12
	.ascii	"EKeyNotFound"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_EKEYNOTFOUND
_RTTI_CONTNRS_EKEYNOTFOUND:
	.byte	15,12
	.ascii	"EKeyNotFound"
	.long	_VMT_CONTNRS_EKEYNOTFOUND
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TBUCKETITEM
_INIT_CONTNRS_TBUCKETITEM:
	.byte	13,11
	.ascii	"TBucketItem"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TBUCKETITEM
_RTTI_CONTNRS_TBUCKETITEM:
	.byte	13,11
	.ascii	"TBucketItem"
	.long	8,2
	.long	_RTTI_SYSTEM_POINTER
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	4

.const_data
	.align 2
.globl	_INIT_CONTNRS_TBUCKETITEMARRAY
_INIT_CONTNRS_TBUCKETITEMARRAY:
	.byte	21
	.ascii	"\020TBucketItemArray"
	.long	8
	.long	_INIT_CONTNRS_TBUCKETITEM
	.long	-1,0
	.byte	7
	.ascii	"contnrs"

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TBUCKETITEMARRAY
_RTTI_CONTNRS_TBUCKETITEMARRAY:
	.byte	21
	.ascii	"\020TBucketItemArray"
	.long	8
	.long	_RTTI_CONTNRS_TBUCKETITEM
	.long	-1,0
	.byte	7
	.ascii	"contnrs"

.const_data
	.align 2
.globl	_INIT_CONTNRS_TBUCKET
_INIT_CONTNRS_TBUCKET:
	.byte	13,7
	.ascii	"TBucket"
	.long	8,1
	.long	_INIT_CONTNRS_TBUCKETITEMARRAY
	.long	4

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TBUCKET
_RTTI_CONTNRS_TBUCKET:
	.byte	13,7
	.ascii	"TBucket"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_CONTNRS_TBUCKETITEMARRAY
	.long	4

.const_data
	.align 2
.globl	_INIT_CONTNRS_PBUCKET
_INIT_CONTNRS_PBUCKET:
	.byte	0
	.ascii	"\007PBucket"

.const_data
	.align 2
.globl	_RTTI_CONTNRS_PBUCKET
_RTTI_CONTNRS_PBUCKET:
	.byte	0
	.ascii	"\007PBucket"

.const_data
	.align 2
.globl	_INIT_CONTNRS_TBUCKETARRAY
_INIT_CONTNRS_TBUCKETARRAY:
	.byte	21
	.ascii	"\014TBucketArray"
	.long	8
	.long	_INIT_CONTNRS_TBUCKET
	.long	-1
	.long	_INIT_CONTNRS_TBUCKET
	.byte	7
	.ascii	"contnrs"

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TBUCKETARRAY
_RTTI_CONTNRS_TBUCKETARRAY:
	.byte	21
	.ascii	"\014TBucketArray"
	.long	8
	.long	_RTTI_CONTNRS_TBUCKET
	.long	-1
	.long	_RTTI_CONTNRS_TBUCKET
	.byte	7
	.ascii	"contnrs"

.const_data
	.align 2
.globl	_INIT_CONTNRS_TBUCKETPROC
_INIT_CONTNRS_TBUCKETPROC:
	.byte	23,11
	.ascii	"TBucketProc"

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TBUCKETPROC
_RTTI_CONTNRS_TBUCKETPROC:
	.byte	23,11
	.ascii	"TBucketProc"

.const_data
	.align 2
.globl	_INIT_CONTNRS_TBUCKETPROCOBJECT
_INIT_CONTNRS_TBUCKETPROCOBJECT:
	.byte	6,17
	.ascii	"TBucketProcObject"
	.byte	0,3,0,5
	.ascii	"AItem"
	.ascii	"\007Pointer"
	.byte	0,5
	.ascii	"AData"
	.ascii	"\007Pointer"
	.byte	32,9
	.ascii	"AContinue"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_SYSTEM_POINTER
	.long	_RTTI_SYSTEM_POINTER
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TBUCKETPROCOBJECT
_RTTI_CONTNRS_TBUCKETPROCOBJECT:
	.byte	6,17
	.ascii	"TBucketProcObject"
	.byte	0,3,0,5
	.ascii	"AItem"
	.ascii	"\007Pointer"
	.byte	0,5
	.ascii	"AData"
	.ascii	"\007Pointer"
	.byte	32,9
	.ascii	"AContinue"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_SYSTEM_POINTER
	.long	_RTTI_SYSTEM_POINTER
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_$CONTNRS$_Ld77
_$CONTNRS$_Ld77:
	.short	0
	.long	_$CONTNRS$_Ld78
	.align 2
.globl	_$CONTNRS$_Ld78
_$CONTNRS$_Ld78:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TCUSTOMBUCKETLIST
_INIT_CONTNRS_TCUSTOMBUCKETLIST:
	.byte	15,17
	.ascii	"TCustomBucketList"
	.long	4,1
	.long	_INIT_CONTNRS_TBUCKETARRAY
	.long	4

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TCUSTOMBUCKETLIST
_RTTI_CONTNRS_TCUSTOMBUCKETLIST:
	.byte	15,17
	.ascii	"TCustomBucketList"
	.long	_VMT_CONTNRS_TCUSTOMBUCKETLIST
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TBUCKETLISTSIZES
_INIT_CONTNRS_TBUCKETLISTSIZES:
	.byte	3,16
	.ascii	"TBucketListSizes"
	.byte	5
	.long	0,7,0
	.byte	3
	.ascii	"bl2"
	.byte	3
	.ascii	"bl4"
	.byte	3
	.ascii	"bl8"
	.byte	4
	.ascii	"bl16"
	.byte	4
	.ascii	"bl32"
	.byte	4
	.ascii	"bl64"
	.byte	5
	.ascii	"bl128"
	.byte	5
	.ascii	"bl256"
	.byte	7
	.ascii	"contnrs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TBUCKETLISTSIZES
_RTTI_CONTNRS_TBUCKETLISTSIZES:
	.byte	3,16
	.ascii	"TBucketListSizes"
	.byte	5
	.long	0,7,0
	.byte	3
	.ascii	"bl2"
	.byte	3
	.ascii	"bl4"
	.byte	3
	.ascii	"bl8"
	.byte	4
	.ascii	"bl16"
	.byte	4
	.ascii	"bl32"
	.byte	4
	.ascii	"bl64"
	.byte	5
	.ascii	"bl128"
	.byte	5
	.ascii	"bl256"
	.byte	7
	.ascii	"contnrs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TBUCKETLISTSIZES_s2o
_RTTI_CONTNRS_TBUCKETLISTSIZES_s2o:
	.long	8,6
	.long	_RTTI_CONTNRS_TBUCKETLISTSIZES+58
	.long	3
	.long	_RTTI_CONTNRS_TBUCKETLISTSIZES+43
	.long	0
	.long	_RTTI_CONTNRS_TBUCKETLISTSIZES+31
	.long	7
	.long	_RTTI_CONTNRS_TBUCKETLISTSIZES+64
	.long	4
	.long	_RTTI_CONTNRS_TBUCKETLISTSIZES+48
	.long	1
	.long	_RTTI_CONTNRS_TBUCKETLISTSIZES+35
	.long	5
	.long	_RTTI_CONTNRS_TBUCKETLISTSIZES+53
	.long	2
	.long	_RTTI_CONTNRS_TBUCKETLISTSIZES+39

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TBUCKETLISTSIZES_o2s
_RTTI_CONTNRS_TBUCKETLISTSIZES_o2s:
	.long	0
	.long	_RTTI_CONTNRS_TBUCKETLISTSIZES+31
	.long	_RTTI_CONTNRS_TBUCKETLISTSIZES+35
	.long	_RTTI_CONTNRS_TBUCKETLISTSIZES+39
	.long	_RTTI_CONTNRS_TBUCKETLISTSIZES+43
	.long	_RTTI_CONTNRS_TBUCKETLISTSIZES+48
	.long	_RTTI_CONTNRS_TBUCKETLISTSIZES+53
	.long	_RTTI_CONTNRS_TBUCKETLISTSIZES+58
	.long	_RTTI_CONTNRS_TBUCKETLISTSIZES+64

.const_data
	.align 2
.globl	_$CONTNRS$_Ld80
_$CONTNRS$_Ld80:
	.short	0
	.long	_$CONTNRS$_Ld81
	.align 2
.globl	_$CONTNRS$_Ld81
_$CONTNRS$_Ld81:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TBUCKETLIST
_INIT_CONTNRS_TBUCKETLIST:
	.byte	15,11
	.ascii	"TBucketList"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TBUCKETLIST
_RTTI_CONTNRS_TBUCKETLIST:
	.byte	15,11
	.ascii	"TBucketList"
	.long	_VMT_CONTNRS_TBUCKETLIST
	.long	_RTTI_CONTNRS_TCUSTOMBUCKETLIST
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld83
_$CONTNRS$_Ld83:
	.short	0
	.long	_$CONTNRS$_Ld84
	.align 2
.globl	_$CONTNRS$_Ld84
_$CONTNRS$_Ld84:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONTNRS_TOBJECTBUCKETLIST
_INIT_CONTNRS_TOBJECTBUCKETLIST:
	.byte	15,17
	.ascii	"TObjectBucketList"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TOBJECTBUCKETLIST
_RTTI_CONTNRS_TOBJECTBUCKETLIST:
	.byte	15,17
	.ascii	"TObjectBucketList"
	.long	_VMT_CONTNRS_TOBJECTBUCKETLIST
	.long	_RTTI_CONTNRS_TBUCKETLIST
	.short	0
	.byte	7
	.ascii	"contnrs"
	.short	0

.const_data
	.align 2
.globl	_$CONTNRS$_Ld86
_$CONTNRS$_Ld86:
	.short	0
	.long	_$CONTNRS$_Ld87
	.align 2
.globl	_$CONTNRS$_Ld87
_$CONTNRS$_Ld87:
	.short	0

.const_data
	.align 2
.globl	_RTTI_CONTNRS_TLISTCOMPONENT
_RTTI_CONTNRS_TLISTCOMPONENT:
	.byte	15,14
	.ascii	"TlistComponent"
	.long	_VMT_CONTNRS_TLISTCOMPONENT
	.long	_RTTI_CLASSES_TCOMPONENT
	.short	2
	.byte	7
	.ascii	"contnrs"
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
L_VMT_CLASSES_TFPLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFPLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CONTNRS_TLISTCOMPONENT$non_lazy_ptr:
.indirect_symbol _VMT_CONTNRS_TLISTCOMPONENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RTLCONSTS_SLISTINDEXERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_RTLCONSTS_SLISTINDEXERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RTLCONSTS_SLISTCAPACITYERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_RTLCONSTS_SLISTCAPACITYERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RTLCONSTS_SLISTCOUNTERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_RTLCONSTS_SLISTCOUNTERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_ELISTERROR$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_ELISTERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CONTNRS$_Ld2$non_lazy_ptr:
.indirect_symbol _$CONTNRS$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CONTNRS$_Ld3$non_lazy_ptr:
.indirect_symbol _$CONTNRS$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CONTNRS$_Ld4$non_lazy_ptr:
.indirect_symbol _$CONTNRS$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CONTNRS$_Ld5$non_lazy_ptr:
.indirect_symbol _$CONTNRS$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CONTNRS$_Ld6$non_lazy_ptr:
.indirect_symbol _$CONTNRS$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CONTNRS_TFPHASHLIST$non_lazy_ptr:
.indirect_symbol _VMT_CONTNRS_TFPHASHLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CONTNRS_RSHASH$ANSISTRING$LONGWORD$$LONGWORD$non_lazy_ptr:
.indirect_symbol _CONTNRS_RSHASH$ANSISTRING$LONGWORD$$LONGWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CONTNRS_TFPOBJECTLIST$non_lazy_ptr:
.indirect_symbol _VMT_CONTNRS_TFPOBJECTLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_CONTNRS_PRIMELIST$non_lazy_ptr:
.indirect_symbol _TC_CONTNRS_PRIMELIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_CONTNRS_NOTEMPTYMSG$non_lazy_ptr:
.indirect_symbol _RESSTR_CONTNRS_NOTEMPTYMSG
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_CONTNRS_DUPLICATEMSG$non_lazy_ptr:
.indirect_symbol _RESSTR_CONTNRS_DUPLICATEMSG
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CONTNRS_EDUPLICATE$non_lazy_ptr:
.indirect_symbol _VMT_CONTNRS_EDUPLICATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CONTNRS_THTDATANODE$non_lazy_ptr:
.indirect_symbol _VMT_CONTNRS_THTDATANODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CONTNRS_THTSTRINGNODE$non_lazy_ptr:
.indirect_symbol _VMT_CONTNRS_THTSTRINGNODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CONTNRS_THTOWNEDOBJECTNODE$non_lazy_ptr:
.indirect_symbol _VMT_CONTNRS_THTOWNEDOBJECTNODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CONTNRS_THTOBJECTNODE$non_lazy_ptr:
.indirect_symbol _VMT_CONTNRS_THTOBJECTNODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_CONTNRS_TBUCKETARRAY$non_lazy_ptr:
.indirect_symbol _INIT_CONTNRS_TBUCKETARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_CONTNRS_SERRNOSUCHITEM$non_lazy_ptr:
.indirect_symbol _RESSTR_CONTNRS_SERRNOSUCHITEM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_CONTNRS_TBUCKETITEMARRAY$non_lazy_ptr:
.indirect_symbol _INIT_CONTNRS_TBUCKETITEMARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_CONTNRS_TBUCKET$non_lazy_ptr:
.indirect_symbol _INIT_CONTNRS_TBUCKET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_CONTNRS_SDUPLICATEITEM$non_lazy_ptr:
.indirect_symbol _RESSTR_CONTNRS_SDUPLICATEITEM
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_CONTNRS_START
_RESSTR_CONTNRS_START:
	.long	_$CONTNRS$_Ld88
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_CONTNRS_DUPLICATEMSG
_RESSTR_CONTNRS_DUPLICATEMSG:
	.long	_$CONTNRS$_Ld92
	.long	_$CONTNRS$_Ld90
	.long	_$CONTNRS$_Ld90
	.long	140729443

.data
	.align 2
.globl	_RESSTR_CONTNRS_KEYNOTFOUNDMSG
_RESSTR_CONTNRS_KEYNOTFOUNDMSG:
	.long	_$CONTNRS$_Ld96
	.long	_$CONTNRS$_Ld94
	.long	_$CONTNRS$_Ld94
	.long	55732706

.data
	.align 2
.globl	_RESSTR_CONTNRS_NOTEMPTYMSG
_RESSTR_CONTNRS_NOTEMPTYMSG:
	.long	_$CONTNRS$_Ld100
	.long	_$CONTNRS$_Ld98
	.long	_$CONTNRS$_Ld98
	.long	225887438

.data
	.align 2
.globl	_RESSTR_CONTNRS_SERRNOSUCHITEM
_RESSTR_CONTNRS_SERRNOSUCHITEM:
	.long	_$CONTNRS$_Ld104
	.long	_$CONTNRS$_Ld102
	.long	_$CONTNRS$_Ld102
	.long	103542576

.data
	.align 2
.globl	_RESSTR_CONTNRS_SDUPLICATEITEM
_RESSTR_CONTNRS_SDUPLICATEITEM:
	.long	_$CONTNRS$_Ld108
	.long	_$CONTNRS$_Ld106
	.long	_$CONTNRS$_Ld106
	.long	2506976

.data
	.align 2
.globl	_RESSTR_CONTNRS_END
_RESSTR_CONTNRS_END:
	.long	_RESSTR_CONTNRS_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

