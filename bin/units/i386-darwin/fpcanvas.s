# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPCANVAS_DECRECT$TRECT$LONGINT
_FPCANVAS_DECRECT$TRECT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,4(%eax)
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,12(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_DECRECT$TRECT
_FPCANVAS_DECRECT$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_FPCANVAS_DECRECT$TRECT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_INCRECT$TRECT
_FPCANVAS_INCRECT$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_FPCANVAS_INCRECT$TRECT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_INCRECT$TRECT$LONGINT
_FPCANVAS_INCRECT$TRECT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,4(%eax)
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,12(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPRECTREGION_$__GETBOUNDINGRECT$$TRECT
_FPCANVAS_TFPRECTREGION_$__GETBOUNDINGRECT$$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edi
	leal	4(%eax),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPRECTREGION_$__ISPOINTINREGION$LONGINT$LONGINT$$BOOLEAN
_FPCANVAS_TFPRECTREGION_$__ISPOINTINREGION$LONGINT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj45
	jmp	Lj42
Lj45:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	-4(%ebp),%eax
	jge	Lj44
	jmp	Lj42
Lj44:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-8(%ebp),%eax
	jle	Lj43
	jmp	Lj42
Lj43:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj41
	jmp	Lj42
Lj41:
	movb	$1,-13(%ebp)
	jmp	Lj46
Lj42:
	movb	$0,-13(%ebp)
Lj46:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCANVASHELPER_$__CREATE$$TFPCANVASHELPER
_FPCANVAS_TFPCANVASHELPER_$__CREATE$$TFPCANVASHELPER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj49
	jmp	Lj50
Lj49:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj50:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj55
	jmp	Lj56
Lj55:
	jmp	Lj47
Lj56:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj59
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj63
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%eax
	movl	$0,24(%eax)
	movl	-8(%ebp),%eax
	movb	$0,23(%eax)
	movl	-8(%ebp),%eax
	movb	$0,22(%eax)
Lj63:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj64
	call	LFPC_RERAISE$stub
Lj64:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj78
	jmp	Lj77
Lj78:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj76
	jmp	Lj77
Lj76:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj77:
Lj59:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj61
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj82
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj83
	jmp	Lj84
Lj83:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj84:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj82:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj81
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj81:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj61
Lj61:
Lj47:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCANVASHELPER_$__DESTROY
_FPCANVAS_TFPCANVASHELPER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj91
	jmp	Lj92
Lj91:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj92:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	testb	%al,%al
	jne	Lj95
	jmp	Lj96
Lj95:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCANVASHELPER_$__DEALLOCATERESOURCES$stub
Lj96:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TPERSISTENT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj107
	jmp	Lj106
Lj107:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj105
	jmp	Lj106
Lj105:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj106:
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCANVASHELPER_$__SETFIXEDCANVAS$BOOLEAN
_FPCANVAS_TFPCANVASHELPER_$__SETFIXEDCANVAS$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,23(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCANVASHELPER_$__NOTIFYCANVAS
_FPCANVAS_TFPCANVASHELPER_$__NOTIFYCANVAS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	jne	Lj116
	jmp	Lj117
Lj116:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*296(%ecx)
Lj117:
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCANVASHELPER_$__CHECKALLOCATED$BOOLEAN
_FPCANVAS_TFPCANVASHELPER_$__CHECKALLOCATED$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	cmpb	-4(%ebp),%al
	jne	Lj126
	jmp	Lj127
Lj126:
	movl	%ebp,%eax
	call	L_FPCANVAS_TFPCANVASHELPER_$_CHECKALLOCATED$BOOLEAN_RAISEERRALLOCATION$stub
Lj127:
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCANVASHELPER_$_CHECKALLOCATED$BOOLEAN_RAISEERRALLOCATION
_FPCANVAS_TFPCANVASHELPER_$_CHECKALLOCATED$BOOLEAN_RAISEERRALLOCATION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj125
Lj125:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$1,(%esp)
	movl	L_$FPCANVAS$_Ld5$non_lazy_ptr-Lj125(%ebx),%eax
	movl	%eax,-16(%ebp)
	movl	$11,-20(%ebp)
	movl	-4(%ebp),%eax
	movzbl	-4(%eax),%eax
	movl	L_TC_FPCANVAS_ERRALLOC$non_lazy_ptr-Lj125(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	movl	%eax,-8(%ebp)
	movl	$11,-12(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_FPCANVAS_TFPFONTEXCEPTION$non_lazy_ptr-Lj125(%ebx),%edx
	movl	L_$FPCANVAS$_Ld7$non_lazy_ptr-Lj125(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj125(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCANVASHELPER_$__SETFPCOLOR$TFPCOLOR
_FPCANVAS_TFPCANVASHELPER_$__SETFPCOLOR$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,14(%ecx)
	movl	4(%edx),%eax
	movl	%eax,18(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCANVASHELPER_$__CHANGING
_FPCANVAS_TFPCANVASHELPER_$__CHANGING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,40(%eax)
	jne	Lj148
	jmp	Lj149
Lj148:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	40(%ecx),%ecx
	call	*%ecx
Lj149:
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCANVASHELPER_$__CHANGED
_FPCANVAS_TFPCANVASHELPER_$__CHANGED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,32(%eax)
	jne	Lj156
	jmp	Lj157
Lj156:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	32(%ecx),%ecx
	call	*%ecx
Lj157:
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCANVASHELPER_$__LOCK
_FPCANVAS_TFPCANVASHELPER_$__LOCK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCANVASHELPER_$__UNLOCK
_FPCANVAS_TFPCANVASHELPER_$__UNLOCK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCANVASHELPER_$__SETFLAGS$LONGINT$BOOLEAN
_FPCANVAS_TFPCANVASHELPER_$__SETFLAGS$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj168
	jmp	Lj169
Lj168:
	movl	-12(%ebp),%eax
	movzwl	28(%eax),%edx
	movl	$1,%eax
	movl	-4(%ebp),%ecx
	shll	%cl,%eax
	orl	%eax,%edx
	movl	-12(%ebp),%eax
	movw	%dx,28(%eax)
	jmp	Lj172
Lj169:
	movl	$1,%eax
	movl	-4(%ebp),%ecx
	shll	%cl,%eax
	notl	%eax
	movl	-12(%ebp),%edx
	movzwl	28(%edx),%edx
	andl	%edx,%eax
	movl	-12(%ebp),%edx
	movw	%ax,28(%edx)
Lj172:
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCANVASHELPER_$__GETFLAGS$LONGINT$$BOOLEAN
_FPCANVAS_TFPCANVASHELPER_$__GETFLAGS$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movzwl	28(%eax),%edx
	movl	$1,%eax
	movl	-4(%ebp),%ecx
	shll	%cl,%eax
	andl	%eax,%edx
	testl	%edx,%edx
	setneb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCANVASHELPER_$__GETALLOCATED$$BOOLEAN
_FPCANVAS_TFPCANVASHELPER_$__GETALLOCATED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,23(%eax)
	jne	Lj181
	jmp	Lj182
Lj181:
	movl	-4(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj183
	jmp	Lj184
Lj183:
	movb	$1,-5(%ebp)
	jmp	Lj185
Lj184:
	movb	$0,-5(%ebp)
Lj185:
	jmp	Lj186
Lj182:
	movl	-4(%ebp),%eax
	movb	22(%eax),%al
	movb	%al,-5(%ebp)
Lj186:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCANVASHELPER_$__ALLOCATERESOURCES$TFPCUSTOMCANVAS$BOOLEAN
_FPCANVAS_TFPCANVASHELPER_$__ALLOCATERESOURCES$TFPCUSTOMCANVAS$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,23(%eax)
	jne	Lj193
	jmp	Lj192
Lj193:
	movl	-12(%ebp),%eax
	cmpb	$0,22(%eax)
	jne	Lj191
	jmp	Lj192
Lj191:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCANVASHELPER_$__DEALLOCATERESOURCES$stub
Lj192:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-12(%ebp),%eax
	cmpb	$0,12(%eax)
	jne	Lj200
	jmp	Lj199
Lj200:
	cmpb	$0,-8(%ebp)
	jne	Lj198
	jmp	Lj199
Lj198:
	jmp	Lj189
Lj199:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj203
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*132(%edx)
	movl	-12(%ebp),%eax
	movb	$1,22(%eax)
Lj203:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj205
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj212
	movl	-12(%ebp),%eax
	movl	$0,24(%eax)
	movl	-12(%ebp),%eax
	movb	$0,22(%eax)
Lj212:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj211
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj211:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj205
Lj205:
Lj189:
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCANVASHELPER_$__DEALLOCATERESOURCES
_FPCANVAS_TFPCANVASHELPER_$__DEALLOCATERESOURCES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,22(%eax)
	jne	Lj219
	jmp	Lj220
Lj219:
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj221
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*136(%edx)
Lj221:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	movb	$0,22(%eax)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCANVASHELPER_$__NOTIFYCANVAS$stub
	movl	-4(%ebp),%eax
	movl	$0,24(%eax)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj222
	decl	%eax
	testl	%eax,%eax
	je	Lj223
Lj223:
	call	LFPC_RERAISE$stub
Lj222:
Lj220:
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCANVASHELPER_$__DOCOPYPROPS$TFPCANVASHELPER
_FPCANVAS_TFPCANVASHELPER_$__DOCOPYPROPS$TFPCANVASHELPER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	14(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCANVASHELPER_$__DOALLOCATERESOURCES
_FPCANVAS_TFPCANVASHELPER_$__DOALLOCATERESOURCES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCANVASHELPER_$__DODEALLOCATERESOURCES
_FPCANVAS_TFPCANVASHELPER_$__DODEALLOCATERESOURCES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMFONT_$__SETNAME$ANSISTRING
_FPCANVAS_TFPCUSTOMFONT_$__SETNAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
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
	jne	Lj245
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	48(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,48(%ebx)
Lj245:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj246
	call	LFPC_RERAISE$stub
Lj246:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMFONT_$__SETSIZE$LONGINT
_FPCANVAS_TFPCUSTOMFONT_$__SETSIZE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,56(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMFONT_$__SETORIENTATION$LONGINT
_FPCANVAS_TFPCUSTOMFONT_$__SETORIENTATION$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,52(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMFONT_$__GETORIENTATION$$LONGINT
_FPCANVAS_TFPCUSTOMFONT_$__GETORIENTATION$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMFONT_$__DOCOPYPROPS$TFPCANVASHELPER
_FPCANVAS_TFPCUSTOMFONT_$__DOCOPYPROPS$TFPCANVASHELPER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj263
Lj263:
	popl	-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	L_VMT_FPCANVAS_TFPCUSTOMFONT$non_lazy_ptr-Lj263(%ecx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,%esi
	movl	%esi,%edi
	movl	48(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	48(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	48(%edi),%eax
	movl	%eax,48(%ebx)
	movl	-8(%ebp),%eax
	movl	56(%edi),%edx
	movl	%edx,56(%eax)
	movl	-8(%ebp),%edx
	movl	14(%edi),%eax
	movl	%eax,14(%edx)
	movl	18(%edi),%eax
	movl	%eax,18(%edx)
	movl	-8(%ebp),%edx
	movw	28(%edi),%ax
	movw	%ax,28(%edx)
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMFONT_$__COPYFONT$$TFPCUSTOMFONT
_FPCANVAS_TFPCUSTOMFONT_$__COPYFONT$$TFPCUSTOMFONT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMFONT_$__GETTEXTSIZE$ANSISTRING$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMFONT_$__GETTEXTSIZE$ANSISTRING$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj299
Lj299:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj300
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWFONT$non_lazy_ptr-Lj299(%ebx),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj303
	jmp	Lj304
Lj303:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*176(%esi)
	jmp	Lj317
Lj304:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%esi
	movl	24(%esi),%esi
	movl	(%esi),%esi
	call	*212(%esi)
Lj317:
Lj300:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj301
	call	LFPC_RERAISE$stub
Lj301:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMFONT_$__GETTEXTHEIGHT$ANSISTRING$$LONGINT
_FPCANVAS_TFPCUSTOMFONT_$__GETTEXTHEIGHT$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj327
Lj327:
	popl	%ebx
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
	jne	Lj328
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWFONT$non_lazy_ptr-Lj327(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj331
	jmp	Lj332
Lj331:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
	movl	%eax,-12(%ebp)
	jmp	Lj343
Lj332:
	movl	-8(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj344
	jmp	Lj345
Lj344:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETTEXTHEIGHT$ANSISTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	jmp	Lj352
Lj345:
	movl	$16,-12(%ebp)
Lj352:
Lj343:
Lj328:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj329
	call	LFPC_RERAISE$stub
Lj329:
	movl	-12(%ebp),%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMFONT_$__GETTEXTWIDTH$ANSISTRING$$LONGINT
_FPCANVAS_TFPCUSTOMFONT_$__GETTEXTWIDTH$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj356
Lj356:
	popl	%ebx
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
	jne	Lj357
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWFONT$non_lazy_ptr-Lj356(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj360
	jmp	Lj361
Lj360:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*184(%ecx)
	movl	%eax,-12(%ebp)
	jmp	Lj372
Lj361:
	movl	-8(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj373
	jmp	Lj374
Lj373:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETTEXTWIDTH$ANSISTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	jmp	Lj381
Lj374:
	movl	$16,-12(%ebp)
Lj381:
Lj372:
Lj357:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj358
	call	LFPC_RERAISE$stub
Lj358:
	movl	-12(%ebp),%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMPEN_$__SETMODE$TFPPENMODE
_FPCANVAS_TFPCUSTOMPEN_$__SETMODE$TFPPENMODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,56(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMPEN_$__SETWIDTH$LONGINT
_FPCANVAS_TFPCUSTOMPEN_$__SETWIDTH$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj390
	jmp	Lj391
Lj390:
	movl	-8(%ebp),%eax
	movl	$1,52(%eax)
	jmp	Lj394
Lj391:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,52(%eax)
Lj394:
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMPEN_$__SETSTYLE$TFPPENSTYLE
_FPCANVAS_TFPCUSTOMPEN_$__SETSTYLE$TFPPENSTYLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,48(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMPEN_$__SETPATTERN$LONGWORD
_FPCANVAS_TFPCUSTOMPEN_$__SETPATTERN$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,60(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMPEN_$__SETENDCAP$TFPPENENDCAP
_FPCANVAS_TFPCUSTOMPEN_$__SETENDCAP$TFPPENENDCAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj407
	jmp	Lj408
Lj407:
	jmp	Lj405
Lj408:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,64(%eax)
Lj405:
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMPEN_$__SETJOINSTYLE$TFPPENJOINSTYLE
_FPCANVAS_TFPCUSTOMPEN_$__SETJOINSTYLE$TFPPENJOINSTYLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj413
	jmp	Lj414
Lj413:
	jmp	Lj411
Lj414:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,68(%eax)
Lj411:
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMPEN_$__DOCOPYPROPS$TFPCANVASHELPER
_FPCANVAS_TFPCUSTOMPEN_$__DOCOPYPROPS$TFPCANVASHELPER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj418
Lj418:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMPEN$non_lazy_ptr-Lj418(%esi),%eax
	call	Lfpc_do_as$stub
	movl	%eax,%ebx
	movl	%ebx,%edi
	movl	48(%edi),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*168(%ecx)
	movl	52(%edi),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	movl	56(%edi),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	60(%edi),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*172(%ecx)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCANVASHELPER_$__DOCOPYPROPS$TFPCANVASHELPER$stub
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMPEN_$__COPYPEN$$TFPCUSTOMPEN
_FPCANVAS_TFPCUSTOMPEN_$__COPYPEN$$TFPCUSTOMPEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMBRUSH_$__SETSTYLE$TFPBRUSHSTYLE
_FPCANVAS_TFPCUSTOMBRUSH_$__SETSTYLE$TFPBRUSHSTYLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,48(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMBRUSH_$__SETIMAGE$TFPCUSTOMIMAGE
_FPCANVAS_TFPCUSTOMBRUSH_$__SETIMAGE$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,52(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMBRUSH_$__DOCOPYPROPS$TFPCANVASHELPER
_FPCANVAS_TFPCUSTOMBRUSH_$__DOCOPYPROPS$TFPCANVASHELPER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj474
Lj474:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMBRUSH$non_lazy_ptr-Lj474(%esi),%eax
	call	Lfpc_do_as$stub
	movl	%eax,%ebx
	movl	%ebx,%edi
	movl	48(%edi),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	52(%edi),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCANVASHELPER_$__DOCOPYPROPS$TFPCANVASHELPER$stub
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMBRUSH_$__COPYBRUSH$$TFPCUSTOMBRUSH
_FPCANVAS_TFPCUSTOMBRUSH_$__COPYBRUSH$$TFPCUSTOMBRUSH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMINTERPOLATION_$__INITIALIZE$TFPCUSTOMIMAGE$TFPCUSTOMCANVAS
_FPCANVAS_TFPCUSTOMINTERPOLATION_$__INITIALIZE$TFPCUSTOMIMAGE$TFPCUSTOMCANVAS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPBASEINTERPOLATION_$__CREATEPIXELWEIGHTS$LONGINT$LONGINT$POINTER$LONGINT$LONGINT
_FPCANVAS_TFPBASEINTERPOLATION_$__CREATEPIXELWEIGHTS$LONGINT$LONGINT$POINTER$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	call	Lj520
Lj520:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-4(%ebp),%eax
	je	Lj523
	jmp	Lj524
Lj523:
	movl	%ebp,%eax
	movl	$1,%edx
	call	L_FPCANVAS_TFPBASEINTERPOLATION_$_CREATEPIXELWEIGHTS$crc48DF19DC_SETSUPPORT$LONGINT$stub
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj530
	decl	-20(%ebp)
	.align 2
Lj531:
	incl	-20(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	%ecx,(%edx)
	addl	$4,-16(%ebp)
	movl	-16(%ebp),%edx
	fld1
	fstps	(%edx)
	addl	$4,-16(%ebp)
	cmpl	-20(%ebp),%eax
	jg	Lj531
Lj530:
	jmp	Lj536
Lj524:
	movl	-8(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj537
	jmp	Lj538
Lj537:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	cltd
	idivl	-8(%ebp)
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%eax
	cmpl	$2,%eax
	jl	Lj543
	jmp	Lj544
Lj543:
	movl	$2,%edx
	jmp	Lj547
Lj544:
	movl	-56(%ebp),%edx
Lj547:
	movl	%ebp,%eax
	call	L_FPCANVAS_TFPBASEINTERPOLATION_$_CREATEPIXELWEIGHTS$crc48DF19DC_SETSUPPORT$LONGINT$stub
	fildl	-4(%ebp)
	fildl	-8(%ebp)
	fdivrp	%st,%st(1)
	fstpl	-28(%ebp)
	movl	-8(%ebp),%esi
	decl	%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj555
	decl	-20(%ebp)
	.align 2
Lj556:
	incl	-20(%ebp)
	fildl	-20(%ebp)
	fldl	-28(%ebp)
	fmulp	%st,%st(1)
	fstpl	-36(%ebp)
	fldl	-36(%ebp)
	fstpt	(%esp)
	call	L_MATH_FLOOR$EXTENDED$$LONGINT$stub
	movl	%eax,-40(%ebp)
	movl	-16(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,(%edx)
	addl	$4,-16(%ebp)
	fildl	-40(%ebp)
	fldl	-36(%ebp)
	fsubp	%st,%st(1)
	fld1
	fsubp	%st,%st(1)
	fstpl	-52(%ebp)
	fldl	-28(%ebp)
	fldl	-52(%ebp)
	fdivp	%st,%st(1)
	movl	-16(%ebp),%eax
	fstps	(%eax)
	addl	$4,-16(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	subl	$2,%eax
	movl	$1,-44(%ebp)
	cmpl	-44(%ebp),%eax
	jl	Lj570
	decl	-44(%ebp)
	.align 2
Lj571:
	incl	-44(%ebp)
	fld1
	fldl	-28(%ebp)
	fdivrp	%st,%st(1)
	movl	-16(%ebp),%edx
	fstps	(%edx)
	addl	$4,-16(%ebp)
	cmpl	-44(%ebp),%eax
	jg	Lj571
Lj570:
	fldl	-52(%ebp)
	fldl	-28(%ebp)
	fsubp	%st,%st(1)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	subl	$2,%eax
	movl	%eax,-56(%ebp)
	fildl	-56(%ebp)
	fsubrp	%st,%st(1)
	fldl	-28(%ebp)
	fdivrp	%st,%st(1)
	movl	-16(%ebp),%eax
	fstps	(%eax)
	addl	$4,-16(%ebp)
	cmpl	-20(%ebp),%esi
	jg	Lj556
Lj555:
	jmp	Lj576
Lj538:
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	je	Lj577
	jmp	Lj578
Lj577:
	movl	%ebp,%eax
	movl	$1,%edx
	call	L_FPCANVAS_TFPBASEINTERPOLATION_$_CREATEPIXELWEIGHTS$crc48DF19DC_SETSUPPORT$LONGINT$stub
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj584
	decl	-20(%ebp)
	.align 2
Lj585:
	incl	-20(%ebp)
	movl	-16(%ebp),%edx
	movl	$0,(%edx)
	addl	$4,-16(%ebp)
	movl	-16(%ebp),%edx
	fld1
	fstps	(%edx)
	addl	$4,-16(%ebp)
	cmpl	-20(%ebp),%eax
	jg	Lj585
Lj584:
	jmp	Lj590
Lj578:
	movl	%ebp,%eax
	movl	$2,%edx
	call	L_FPCANVAS_TFPBASEINTERPOLATION_$_CREATEPIXELWEIGHTS$crc48DF19DC_SETSUPPORT$LONGINT$stub
	movl	-4(%ebp),%eax
	decl	%eax
	movl	%eax,-56(%ebp)
	fildl	-56(%ebp)
	fildl	-8(%ebp)
	fdivrp	%st,%st(1)
	fstpl	-28(%ebp)
	movl	-8(%ebp),%esi
	decl	%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj598
	decl	-20(%ebp)
	.align 2
Lj599:
	incl	-20(%ebp)
	fildl	-20(%ebp)
	fldl	-28(%ebp)
	fmulp	%st,%st(1)
	movl	L_$FPCANVAS$_Ld9$non_lazy_ptr-Lj520(%ebx),%eax
	fldl	(%eax)
	fldl	-28(%ebp)
	fdivp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	-36(%ebp)
	fldl	-36(%ebp)
	fstpt	(%esp)
	call	L_MATH_FLOOR$EXTENDED$$LONGINT$stub
	movl	%eax,-40(%ebp)
	movl	-16(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,(%eax)
	addl	$4,-16(%ebp)
	fildl	-40(%ebp)
	fldl	-36(%ebp)
	fsubp	%st,%st(1)
	fld1
	fsubp	%st,%st(1)
	fstpl	-52(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	fldl	-52(%ebp)
	fdivp	%st,%st(1)
	fstpl	(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	fstpl	-72(%ebp)
	fldz
	fstpl	-80(%ebp)
	fldl	-72(%ebp)
	fldl	-80(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj622
	jmp	Lj623
Lj622:
	movl	-80(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	-76(%ebp),%eax
	movl	%eax,-60(%ebp)
	jmp	Lj626
Lj623:
	movl	-72(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	-68(%ebp),%eax
	movl	%eax,-60(%ebp)
Lj626:
	leal	-64(%ebp),%eax
	movl	%eax,-56(%ebp)
	fld1
	fstpl	-72(%ebp)
	movl	-56(%ebp),%eax
	fldl	(%eax)
	fldl	-72(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj631
	jmp	Lj632
Lj631:
	movl	-72(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	-68(%ebp),%eax
	movl	%eax,-48(%ebp)
	jmp	Lj635
Lj632:
	movl	-56(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-52(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-48(%ebp)
Lj635:
	movl	-16(%ebp),%eax
	fldl	-52(%ebp)
	fstps	(%eax)
	addl	$4,-16(%ebp)
	fld1
	fldl	-52(%ebp)
	fsubrp	%st,%st(1)
	movl	-16(%ebp),%eax
	fstps	(%eax)
	addl	$4,-16(%ebp)
	cmpl	-20(%ebp),%esi
	jg	Lj599
Lj598:
Lj590:
Lj576:
Lj536:
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	imull	%eax,%edx
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	cmpl	-16(%ebp),%edx
	jne	Lj642
	jmp	Lj643
Lj642:
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj520(%ebx),%edx
	movl	L_$FPCANVAS$_Ld10$non_lazy_ptr-Lj520(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj520(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj643:
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPBASEINTERPOLATION_$_CREATEPIXELWEIGHTS$crc48DF19DC_SETSUPPORT$LONGINT
_FPCANVAS_TFPBASEINTERPOLATION_$_CREATEPIXELWEIGHTS$crc48DF19DC_SETSUPPORT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	shll	$2,%eax
	addl	$4,%eax
	movl	-8(%ebp),%edx
	movl	12(%edx),%edx
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	(%eax),%edx
	movl	-8(%ecx),%eax
	imull	%eax,%edx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPBASEINTERPOLATION_$__EXECUTE$LONGINT$LONGINT$LONGINT$LONGINT
_FPCANVAS_TFPBASEINTERPOLATION_$__EXECUTE$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$200,%esp
	movl	%ebx,-188(%ebp)
	movl	%esi,-184(%ebp)
	movl	%edi,-180(%ebp)
	call	Lj661
Lj661:
	popl	-176(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj662
	jmp	Lj666
Lj666:
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj662
	jmp	Lj665
Lj665:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj662
	jmp	Lj664
Lj664:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj662
	jmp	Lj663
Lj662:
	jmp	Lj660
Lj663:
	movl	$0,-28(%ebp)
	movl	$0,-40(%ebp)
	movl	$0,-24(%ebp)
	leal	-120(%ebp),%ecx
	leal	-144(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-148(%ebp)
	testl	%eax,%eax
	jne	Lj673
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	leal	-32(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-28(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	32(%eax),%edx
	movl	12(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPBASEINTERPOLATION_$__CREATEPIXELWEIGHTS$LONGINT$LONGINT$POINTER$LONGINT$LONGINT$stub
	leal	-48(%ebp),%eax
	movl	%eax,(%esp)
	leal	-44(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-40(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	28(%eax),%edx
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPBASEINTERPOLATION_$__CREATEPIXELWEIGHTS$LONGINT$LONGINT$POINTER$LONGINT$LONGINT$stub
	movl	12(%ebp),%edx
	movl	-48(%ebp),%eax
	imull	%eax,%edx
	shll	$3,%edx
	leal	-24(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	$0,-68(%ebp)
	movl	$0,-60(%ebp)
	movl	8(%ebp),%eax
	decl	%eax
	movl	%eax,-172(%ebp)
	movl	$0,-16(%ebp)
	movl	-172(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jl	Lj710
	decl	-16(%ebp)
	.align 2
Lj711:
	incl	-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj712
	jmp	Lj713
Lj712:
	movl	-40(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	-48(%ebp),%eax
	movl	%eax,-52(%ebp)
	jmp	Lj720
Lj713:
	movl	-56(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	-44(%ebp),%eax
	addl	%eax,-56(%ebp)
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	-60(%ebp),%edx
	movl	-64(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-52(%ebp)
	movl	-52(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj731
	jmp	Lj730
Lj731:
	movl	-48(%ebp),%eax
	cmpl	-52(%ebp),%eax
	jg	Lj729
	jmp	Lj730
Lj729:
	movl	-48(%ebp),%ecx
	movl	-52(%ebp),%eax
	subl	%eax,%ecx
	movl	12(%ebp),%eax
	imull	%eax,%ecx
	shll	$3,%ecx
	movl	-24(%ebp),%ebx
	movl	-52(%ebp),%eax
	movl	12(%ebp),%edx
	imull	%edx,%eax
	leal	(%ebx,%eax,8),%eax
	movl	-24(%ebp),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj730:
Lj720:
	movl	-48(%ebp),%eax
	decl	%eax
	movl	%eax,%edi
	movl	-48(%ebp),%edx
	movl	-52(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-72(%ebp)
	cmpl	-72(%ebp),%edi
	jl	Lj739
	decl	-72(%ebp)
	.align 2
Lj740:
	incl	-72(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	12(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj744
	decl	-20(%ebp)
	.align 2
Lj745:
	incl	-20(%ebp)
	movl	-76(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-80(%ebp)
	addl	$4,-76(%ebp)
	movl	-176(%ebp),%eax
	movl	L_TC_FPIMAGE_COLTRANSPARENT$non_lazy_ptr-Lj661(%eax),%edx
	movl	(%edx),%eax
	movl	%eax,-96(%ebp)
	movl	-176(%ebp),%edx
	movl	L_TC_FPIMAGE_COLTRANSPARENT$non_lazy_ptr-Lj661(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,-92(%ebp)
	movl	-36(%ebp),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-84(%ebp)
	cmpl	-84(%ebp),%ebx
	jl	Lj751
	decl	-84(%ebp)
	.align 2
Lj752:
	incl	-84(%ebp)
	movl	-76(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	addl	$4,-76(%ebp)
	movl	-60(%ebp),%edx
	movl	-72(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,%ecx
	movl	-80(%ebp),%edx
	movl	-84(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-156(%ebp)
	movl	%edx,-152(%ebp)
	movl	-156(%ebp),%eax
	movl	%eax,-104(%ebp)
	movl	-152(%ebp),%eax
	movl	%eax,-100(%ebp)
	movzwl	-96(%ebp),%edx
	movl	$0,%ecx
	movzwl	-104(%ebp),%eax
	movl	%eax,-160(%ebp)
	fildl	-160(%ebp)
	flds	-88(%ebp)
	fmulp	%st,%st(1)
	fistpq	-168(%ebp)
	fwait
	addl	-168(%ebp),%edx
	adcl	-164(%ebp),%ecx
	movl	%edx,-156(%ebp)
	movl	%ecx,-152(%ebp)
	movl	-156(%ebp),%edx
	movl	-152(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj767
	jg	Lj768
	cmpl	$65535,%edx
	jb	Lj767
	jmp	Lj768
Lj767:
	movl	-156(%ebp),%edx
	movl	-152(%ebp),%eax
	jmp	Lj771
Lj768:
	movl	$65535,%edx
	movl	$0,%eax
Lj771:
	movw	%dx,%ax
	movw	%ax,-96(%ebp)
	movzwl	-94(%ebp),%edx
	movl	$0,%ecx
	movzwl	-102(%ebp),%eax
	movl	%eax,-152(%ebp)
	fildl	-152(%ebp)
	flds	-88(%ebp)
	fmulp	%st,%st(1)
	fistpq	-160(%ebp)
	fwait
	addl	-160(%ebp),%edx
	adcl	-156(%ebp),%ecx
	movl	%edx,-168(%ebp)
	movl	%ecx,-164(%ebp)
	movl	-168(%ebp),%eax
	movl	-164(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj778
	jg	Lj779
	cmpl	$65535,%eax
	jb	Lj778
	jmp	Lj779
Lj778:
	movl	-168(%ebp),%edx
	movl	-164(%ebp),%eax
	jmp	Lj782
Lj779:
	movl	$65535,%edx
	movl	$0,%eax
Lj782:
	movw	%dx,%ax
	movw	%ax,-94(%ebp)
	movzwl	-92(%ebp),%edx
	movl	$0,%ecx
	movzwl	-100(%ebp),%eax
	movl	%eax,-152(%ebp)
	fildl	-152(%ebp)
	flds	-88(%ebp)
	fmulp	%st,%st(1)
	fistpq	-160(%ebp)
	fwait
	addl	-160(%ebp),%edx
	adcl	-156(%ebp),%ecx
	movl	%edx,-168(%ebp)
	movl	%ecx,-164(%ebp)
	movl	-168(%ebp),%edx
	movl	-164(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj789
	jg	Lj790
	cmpl	$65535,%edx
	jb	Lj789
	jmp	Lj790
Lj789:
	movl	-168(%ebp),%edx
	movl	-164(%ebp),%eax
	jmp	Lj793
Lj790:
	movl	$65535,%edx
	movl	$0,%eax
Lj793:
	movw	%dx,%ax
	movw	%ax,-92(%ebp)
	movzwl	-90(%ebp),%ecx
	movl	$0,%edx
	movzwl	-98(%ebp),%eax
	movl	%eax,-152(%ebp)
	fildl	-152(%ebp)
	flds	-88(%ebp)
	fmulp	%st,%st(1)
	fistpq	-160(%ebp)
	fwait
	addl	-160(%ebp),%ecx
	adcl	-156(%ebp),%edx
	movl	%ecx,-168(%ebp)
	movl	%edx,-164(%ebp)
	movl	-168(%ebp),%edx
	movl	-164(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj800
	jg	Lj801
	cmpl	$65535,%edx
	jb	Lj800
	jmp	Lj801
Lj800:
	movl	-168(%ebp),%eax
	movl	-164(%ebp),%edx
	jmp	Lj804
Lj801:
	movl	$65535,%eax
	movl	$0,%edx
Lj804:
	movw	%ax,-90(%ebp)
	cmpl	-84(%ebp),%ebx
	jg	Lj752
Lj751:
	movl	-24(%ebp),%ecx
	movl	-72(%ebp),%edx
	movl	12(%ebp),%eax
	imull	%eax,%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	-96(%ebp),%eax
	movl	%eax,(%ecx,%edx,8)
	movl	-92(%ebp),%eax
	movl	%eax,4(%ecx,%edx,8)
	cmpl	-20(%ebp),%esi
	jg	Lj745
Lj744:
	cmpl	-72(%ebp),%edi
	jg	Lj740
Lj739:
	movl	12(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj810
	decl	-20(%ebp)
	.align 2
Lj811:
	incl	-20(%ebp)
	movl	-56(%ebp),%eax
	addl	$4,%eax
	movl	%eax,-108(%ebp)
	movl	-176(%ebp),%edx
	movl	L_TC_FPIMAGE_COLTRANSPARENT$non_lazy_ptr-Lj661(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-96(%ebp)
	movl	-176(%ebp),%edx
	movl	L_TC_FPIMAGE_COLTRANSPARENT$non_lazy_ptr-Lj661(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,-92(%ebp)
	movl	-48(%ebp),%eax
	decl	%eax
	movl	%eax,%edx
	movl	$0,-72(%ebp)
	cmpl	-72(%ebp),%edx
	jl	Lj817
	decl	-72(%ebp)
	.align 2
Lj818:
	incl	-72(%ebp)
	movl	-108(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	addl	$4,-108(%ebp)
	movl	-24(%ebp),%ecx
	movl	-72(%ebp),%ebx
	movl	12(%ebp),%eax
	imull	%eax,%ebx
	movl	-20(%ebp),%eax
	addl	%eax,%ebx
	movl	(%ecx,%ebx,8),%eax
	movl	%eax,-104(%ebp)
	movl	4(%ecx,%ebx,8),%eax
	movl	%eax,-100(%ebp)
	movzwl	-96(%ebp),%eax
	movl	$0,%ecx
	movzwl	-104(%ebp),%ebx
	movl	%ebx,-152(%ebp)
	fildl	-152(%ebp)
	flds	-88(%ebp)
	fmulp	%st,%st(1)
	fistpq	-160(%ebp)
	fwait
	addl	-160(%ebp),%eax
	adcl	-156(%ebp),%ecx
	movl	%eax,-168(%ebp)
	movl	%ecx,-164(%ebp)
	movl	-168(%ebp),%eax
	movl	-164(%ebp),%ecx
	cmpl	$0,%ecx
	jl	Lj827
	jg	Lj828
	cmpl	$65535,%eax
	jb	Lj827
	jmp	Lj828
Lj827:
	movl	-168(%ebp),%eax
	movl	-164(%ebp),%ecx
	jmp	Lj831
Lj828:
	movl	$65535,%eax
	movl	$0,%ecx
Lj831:
	movw	%ax,-96(%ebp)
	movzwl	-94(%ebp),%eax
	movl	$0,%ecx
	movzwl	-102(%ebp),%ebx
	movl	%ebx,-152(%ebp)
	fildl	-152(%ebp)
	flds	-88(%ebp)
	fmulp	%st,%st(1)
	fistpq	-160(%ebp)
	fwait
	addl	-160(%ebp),%eax
	adcl	-156(%ebp),%ecx
	movl	%eax,-168(%ebp)
	movl	%ecx,-164(%ebp)
	movl	-168(%ebp),%ecx
	movl	-164(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj838
	jg	Lj839
	cmpl	$65535,%ecx
	jb	Lj838
	jmp	Lj839
Lj838:
	movl	-168(%ebp),%eax
	movl	-164(%ebp),%ecx
	jmp	Lj842
Lj839:
	movl	$65535,%eax
	movl	$0,%ecx
Lj842:
	movw	%ax,-94(%ebp)
	movzwl	-92(%ebp),%ebx
	movl	$0,%ecx
	movzwl	-100(%ebp),%eax
	movl	%eax,-152(%ebp)
	fildl	-152(%ebp)
	flds	-88(%ebp)
	fmulp	%st,%st(1)
	fistpq	-160(%ebp)
	fwait
	addl	-160(%ebp),%ebx
	adcl	-156(%ebp),%ecx
	movl	%ebx,-168(%ebp)
	movl	%ecx,-164(%ebp)
	movl	-168(%ebp),%eax
	movl	-164(%ebp),%ecx
	cmpl	$0,%ecx
	jl	Lj849
	jg	Lj850
	cmpl	$65535,%eax
	jb	Lj849
	jmp	Lj850
Lj849:
	movl	-168(%ebp),%eax
	movl	-164(%ebp),%ecx
	jmp	Lj853
Lj850:
	movl	$65535,%eax
	movl	$0,%ecx
Lj853:
	movw	%ax,-92(%ebp)
	movzwl	-90(%ebp),%ebx
	movl	$0,%eax
	movzwl	-98(%ebp),%ecx
	movl	%ecx,-152(%ebp)
	fildl	-152(%ebp)
	flds	-88(%ebp)
	fmulp	%st,%st(1)
	fistpq	-160(%ebp)
	fwait
	addl	-160(%ebp),%ebx
	adcl	-156(%ebp),%eax
	movl	%ebx,-168(%ebp)
	movl	%eax,-164(%ebp)
	movl	-168(%ebp),%eax
	movl	-164(%ebp),%ecx
	cmpl	$0,%ecx
	jl	Lj860
	jg	Lj861
	cmpl	$65535,%eax
	jb	Lj860
	jmp	Lj861
Lj860:
	movl	-168(%ebp),%eax
	movl	-164(%ebp),%ecx
	jmp	Lj864
Lj861:
	movl	$65535,%eax
	movl	$0,%ecx
Lj864:
	movw	%ax,-90(%ebp)
	cmpl	-72(%ebp),%edx
	jg	Lj818
Lj817:
	leal	-96(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
	cmpl	-20(%ebp),%esi
	jg	Lj811
Lj810:
	movl	-172(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj711
Lj710:
Lj673:
	call	LFPC_POPADDRSTACK$stub
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj875
	jmp	Lj876
Lj875:
	movl	-28(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj876:
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	jne	Lj879
	jmp	Lj880
Lj879:
	movl	-40(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj880:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj883
	jmp	Lj884
Lj883:
	movl	-24(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj884:
	movl	-148(%ebp),%eax
	testl	%eax,%eax
	je	Lj674
	decl	%eax
	testl	%eax,%eax
	je	Lj675
Lj675:
	call	LFPC_RERAISE$stub
Lj674:
Lj660:
	movl	-188(%ebp),%ebx
	movl	-184(%ebp),%esi
	movl	-180(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPBASEINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
_FPCANVAS_TFPBASEINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPBASEINTERPOLATION_$__MAXSUPPORT$$DOUBLE
_FPCANVAS_TFPBASEINTERPOLATION_$__MAXSUPPORT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	fld1
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TMITCHELINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
_FPCANVAS_TMITCHELINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj896
Lj896:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_$FPCANVAS$_Ld12$non_lazy_ptr-Lj896(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj897
	jmp	Lj898
Lj897:
	fldz
	fstpl	-12(%ebp)
	jmp	Lj901
Lj898:
	movl	L_$FPCANVAS$_Ld13$non_lazy_ptr-Lj896(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj902
	jmp	Lj903
Lj902:
	movl	L_$FPCANVAS$_Ld16$non_lazy_ptr-Lj896(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$FPCANVAS$_Ld9$non_lazy_ptr-Lj896(%edx),%eax
	fldl	(%eax)
	fsubp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$FPCANVAS$_Ld15$non_lazy_ptr-Lj896(%edx),%eax
	fldl	(%eax)
	fsubp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$FPCANVAS$_Ld14$non_lazy_ptr-Lj896(%edx),%eax
	fldl	(%eax)
	fsubp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj906
Lj903:
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj907
	jmp	Lj908
Lj907:
	movl	L_$FPCANVAS$_Ld18$non_lazy_ptr-Lj896(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$FPCANVAS$_Ld12$non_lazy_ptr-Lj896(%edx),%eax
	fldl	(%eax)
	fsubp	%st,%st(1)
	fldl	8(%ebp)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fmulp	%st,%st(1)
	movl	L_$FPCANVAS$_Ld17$non_lazy_ptr-Lj896(%edx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj911
Lj908:
	fld1
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj912
	jmp	Lj913
Lj912:
	movl	L_$FPCANVAS$_Ld18$non_lazy_ptr-Lj896(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$FPCANVAS$_Ld12$non_lazy_ptr-Lj896(%edx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fmulp	%st,%st(1)
	movl	L_$FPCANVAS$_Ld17$non_lazy_ptr-Lj896(%edx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj916
Lj913:
	movl	L_$FPCANVAS$_Ld9$non_lazy_ptr-Lj896(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj917
	jmp	Lj918
Lj917:
	movl	L_$FPCANVAS$_Ld16$non_lazy_ptr-Lj896(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$FPCANVAS$_Ld9$non_lazy_ptr-Lj896(%edx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$FPCANVAS$_Ld15$non_lazy_ptr-Lj896(%edx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$FPCANVAS$_Ld14$non_lazy_ptr-Lj896(%edx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj921
Lj918:
	fldz
	fstpl	-12(%ebp)
Lj921:
Lj916:
Lj911:
Lj906:
Lj901:
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TMITCHELINTERPOLATION_$__MAXSUPPORT$$DOUBLE
_FPCANVAS_TMITCHELINTERPOLATION_$__MAXSUPPORT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj925
Lj925:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_$FPCANVAS$_Ld9$non_lazy_ptr-Lj925(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	L_$FPCANVAS$_Ld9$non_lazy_ptr-Lj925(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__CREATE$$TFPCUSTOMCANVAS
_FPCANVAS_TFPCUSTOMCANVAS_$__CREATE$$TFPCUSTOMCANVAS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj929
Lj929:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj930
	jmp	Lj931
Lj930:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj931:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj936
	jmp	Lj937
Lj936:
	jmp	Lj928
Lj937:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj940
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj944
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%eax
	movb	$0,12(%eax)
	movl	-8(%ebp),%eax
	movb	$0,14(%eax)
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj929(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	-8(%ebp),%edx
	movl	%eax,16(%edx)
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEDEFAULTFONT$$TFPCUSTOMFONT$stub
	movl	-8(%ebp),%edx
	movl	%eax,28(%edx)
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEDEFAULTPEN$$TFPCUSTOMPEN$stub
	movl	-8(%ebp),%edx
	movl	%eax,44(%edx)
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEDEFAULTBRUSH$$TFPCUSTOMBRUSH$stub
	movl	-8(%ebp),%edx
	movl	%eax,36(%edx)
Lj944:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj945
	call	LFPC_RERAISE$stub
Lj945:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj975
	jmp	Lj974
Lj975:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj973
	jmp	Lj974
Lj973:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj974:
Lj940:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj942
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj979
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj980
	jmp	Lj981
Lj980:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj981:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj979:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj978
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj978:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj942
Lj942:
Lj928:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__DESTROY
_FPCANVAS_TFPCUSTOMCANVAS_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj988
	jmp	Lj989
Lj988:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj989:
	movl	-8(%ebp),%eax
	leal	60(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movb	$1,14(%eax)
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__REMOVEHELPERS$stub
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movb	$0,14(%eax)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TPERSISTENT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1014
	jmp	Lj1013
Lj1014:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1012
	jmp	Lj1013
Lj1012:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1013:
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__CHECKHELPER$TFPCANVASHELPER
_FPCANVAS_TFPCUSTOMCANVAS_$__CHECKHELPER$TFPCANVASHELPER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1019
	jmp	Lj1020
Lj1019:
	movl	-8(%ebp),%eax
	movl	$0,48(%eax)
	jmp	Lj1023
Lj1020:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1024
	jmp	Lj1025
Lj1024:
	movl	-8(%ebp),%eax
	movl	$0,32(%eax)
	jmp	Lj1028
Lj1025:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1029
	jmp	Lj1030
Lj1029:
	movl	-8(%ebp),%eax
	movl	$0,40(%eax)
Lj1030:
Lj1028:
Lj1023:
	movl	-8(%ebp),%eax
	movb	14(%eax),%al
	testb	%al,%al
	je	Lj1033
	jmp	Lj1034
Lj1033:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1035
	jmp	Lj1036
Lj1035:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEDEFAULTFONT$$TFPCUSTOMFONT$stub
	movl	-8(%ebp),%edx
	movl	%eax,28(%edx)
	jmp	Lj1041
Lj1036:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1042
	jmp	Lj1043
Lj1042:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEDEFAULTPEN$$TFPCUSTOMPEN$stub
	movl	-8(%ebp),%edx
	movl	%eax,44(%edx)
	jmp	Lj1048
Lj1043:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1049
	jmp	Lj1050
Lj1049:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEDEFAULTBRUSH$$TFPCUSTOMBRUSH$stub
	movl	-8(%ebp),%edx
	movl	%eax,36(%edx)
Lj1050:
Lj1048:
Lj1041:
Lj1034:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TLIST_$__REMOVE$POINTER$$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__REMOVEHELPERS
_FPCANVAS_TFPCUSTOMCANVAS_$__REMOVEHELPERS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jl	Lj1062
	incl	-8(%ebp)
	.align 2
Lj1063:
	decl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	%ebx,%esi
	movl	24(%esi),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1074
	jmp	Lj1075
Lj1074:
	cmpb	$0,23(%esi)
	jne	Lj1076
	jmp	Lj1077
Lj1076:
	movl	%esi,%eax
	call	L_FPCANVAS_TFPCANVASHELPER_$__DEALLOCATERESOURCES$stub
	jmp	Lj1080
Lj1077:
	movl	$0,24(%esi)
Lj1080:
Lj1075:
	cmpl	$0,-8(%ebp)
	jg	Lj1063
Lj1062:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__ADDHELPER$TFPCANVASHELPER
_FPCANVAS_TFPCUSTOMCANVAS_$__ADDHELPER$TFPCANVASHELPER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TLIST_$__INDEXOF$POINTER$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1093
	jmp	Lj1094
Lj1093:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
Lj1094:
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEDEFAULTFONT$$TFPCUSTOMFONT
_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEDEFAULTFONT$$TFPCUSTOMFONT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj1100
Lj1100:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jne	Lj1106
	jmp	Lj1105
Lj1105:
	movl	$0,(%esp)
	movl	L_$FPCANVAS$_Ld5$non_lazy_ptr-Lj1100(%ebx),%eax
	movl	%eax,-12(%ebp)
	movl	$11,-16(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_FPCANVAS_TFPCANVASEXCEPTION$non_lazy_ptr-Lj1100(%ebx),%edx
	movl	L_$FPCANVAS$_Ld19$non_lazy_ptr-Lj1100(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj1100(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	jmp	Lj1117
Lj1106:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$1,%cl
	call	L_FPCANVAS_TFPCANVASHELPER_$__ALLOCATERESOURCES$TFPCUSTOMCANVAS$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
Lj1117:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEDEFAULTPEN$$TFPCUSTOMPEN
_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEDEFAULTPEN$$TFPCUSTOMPEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj1129
Lj1129:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jne	Lj1135
	jmp	Lj1134
Lj1134:
	movl	$0,(%esp)
	movl	L_$FPCANVAS$_Ld21$non_lazy_ptr-Lj1129(%ebx),%eax
	movl	%eax,-12(%ebp)
	movl	$11,-16(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_FPCANVAS_TFPCANVASEXCEPTION$non_lazy_ptr-Lj1129(%ebx),%edx
	movl	L_$FPCANVAS$_Ld19$non_lazy_ptr-Lj1129(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj1129(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	jmp	Lj1146
Lj1135:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$1,%cl
	call	L_FPCANVAS_TFPCANVASHELPER_$__ALLOCATERESOURCES$TFPCUSTOMCANVAS$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
Lj1146:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEDEFAULTBRUSH$$TFPCUSTOMBRUSH
_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEDEFAULTBRUSH$$TFPCUSTOMBRUSH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj1158
Lj1158:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jne	Lj1164
	jmp	Lj1163
Lj1163:
	movl	$0,(%esp)
	movl	L_$FPCANVAS$_Ld23$non_lazy_ptr-Lj1158(%ebx),%eax
	movl	%eax,-12(%ebp)
	movl	$11,-16(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_FPCANVAS_TFPCANVASEXCEPTION$non_lazy_ptr-Lj1158(%ebx),%edx
	movl	L_$FPCANVAS$_Ld19$non_lazy_ptr-Lj1158(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La5:
	movl	%ebp,%ecx
	leal	La5-Lj1158(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	jmp	Lj1175
Lj1164:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$1,%cl
	call	L_FPCANVAS_TFPCANVASHELPER_$__ALLOCATERESOURCES$TFPCUSTOMCANVAS$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
Lj1175:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__GETCLIPPING$$BOOLEAN
_FPCANVAS_TFPCUSTOMCANVAS_$__GETCLIPPING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	12(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__GETCLIPRECT$$TRECT
_FPCANVAS_TFPCUSTOMCANVAS_$__GETCLIPRECT$$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	testl	%eax,%eax
	je	Lj1192
	jmp	Lj1193
Lj1192:
	movl	$0,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_TYPES_BOUNDS$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	jmp	Lj1204
Lj1193:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	60(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
Lj1204:
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEFONT$$TFPCUSTOMFONT
_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEFONT$$TFPCUSTOMFONT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEPEN$$TFPCUSTOMPEN
_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEPEN$$TFPCUSTOMPEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEBRUSH$$TFPCUSTOMBRUSH
_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEBRUSH$$TFPCUSTOMBRUSH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__ALLOWFONT$TFPCUSTOMFONT$$BOOLEAN
_FPCANVAS_TFPCUSTOMCANVAS_$__ALLOWFONT$TFPCUSTOMFONT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1228
Lj1228:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWFONT$non_lazy_ptr-Lj1228(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1229
	jmp	Lj1230
Lj1229:
	movb	$1,-9(%ebp)
	jmp	Lj1237
Lj1230:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movb	%al,-9(%ebp)
Lj1237:
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__SETFONT$TFPCUSTOMFONT
_FPCANVAS_TFPCUSTOMCANVAS_$__SETFONT$TFPCUSTOMFONT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj1248
	jmp	Lj1247
Lj1248:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__ALLOWFONT$TFPCUSTOMFONT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1246
	jmp	Lj1247
Lj1246:
	movl	-8(%ebp),%eax
	cmpb	$0,13(%eax)
	jne	Lj1253
	jmp	Lj1254
Lj1253:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	32(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	jmp	Lj1259
Lj1254:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$1,%cl
	call	L_FPCANVAS_TFPCANVASHELPER_$__ALLOCATERESOURCES$TFPCUSTOMCANVAS$BOOLEAN$stub
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__ADDHELPER$TFPCANVASHELPER$stub
Lj1259:
Lj1247:
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__GETFONT$$TFPCUSTOMFONT
_FPCANVAS_TFPCUSTOMCANVAS_$__GETFONT$$TFPCUSTOMFONT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,32(%eax)
	jne	Lj1274
	jmp	Lj1275
Lj1274:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1278
Lj1275:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-8(%ebp)
Lj1278:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__DOALLOWFONT$TFPCUSTOMFONT$$BOOLEAN
_FPCANVAS_TFPCUSTOMCANVAS_$__DOALLOWFONT$TFPCUSTOMFONT$$BOOLEAN:
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
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__ALLOWBRUSH$TFPCUSTOMBRUSH$$BOOLEAN
_FPCANVAS_TFPCUSTOMCANVAS_$__ALLOWBRUSH$TFPCUSTOMBRUSH$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1286
Lj1286:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWBRUSH$non_lazy_ptr-Lj1286(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1287
	jmp	Lj1288
Lj1287:
	movb	$1,-9(%ebp)
	jmp	Lj1295
Lj1288:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*152(%ecx)
	movb	%al,-9(%ebp)
Lj1295:
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__SETBRUSH$TFPCUSTOMBRUSH
_FPCANVAS_TFPCUSTOMCANVAS_$__SETBRUSH$TFPCUSTOMBRUSH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj1306
	jmp	Lj1305
Lj1306:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__ALLOWBRUSH$TFPCUSTOMBRUSH$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1304
	jmp	Lj1305
Lj1304:
	movl	-8(%ebp),%eax
	cmpb	$0,13(%eax)
	jne	Lj1311
	jmp	Lj1312
Lj1311:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	40(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	jmp	Lj1317
Lj1312:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$1,%cl
	call	L_FPCANVAS_TFPCANVASHELPER_$__ALLOCATERESOURCES$TFPCUSTOMCANVAS$BOOLEAN$stub
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,40(%edx)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__ADDHELPER$TFPCANVASHELPER$stub
Lj1317:
Lj1305:
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH
_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,40(%eax)
	jne	Lj1332
	jmp	Lj1333
Lj1332:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1336
Lj1333:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-8(%ebp)
Lj1336:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__DOALLOWBRUSH$TFPCUSTOMBRUSH$$BOOLEAN
_FPCANVAS_TFPCUSTOMCANVAS_$__DOALLOWBRUSH$TFPCUSTOMBRUSH$$BOOLEAN:
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
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__ALLOWPEN$TFPCUSTOMPEN$$BOOLEAN
_FPCANVAS_TFPCUSTOMCANVAS_$__ALLOWPEN$TFPCUSTOMPEN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1344
Lj1344:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWPEN$non_lazy_ptr-Lj1344(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1345
	jmp	Lj1346
Lj1345:
	movb	$1,-9(%ebp)
	jmp	Lj1353
Lj1346:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*148(%ecx)
	movb	%al,-9(%ebp)
Lj1353:
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__SETPEN$TFPCUSTOMPEN
_FPCANVAS_TFPCUSTOMCANVAS_$__SETPEN$TFPCUSTOMPEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj1364
	jmp	Lj1363
Lj1364:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__ALLOWPEN$TFPCUSTOMPEN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1362
	jmp	Lj1363
Lj1362:
	movl	-8(%ebp),%eax
	cmpb	$0,13(%eax)
	jne	Lj1369
	jmp	Lj1370
Lj1369:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	48(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	jmp	Lj1375
Lj1370:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$1,%cl
	call	L_FPCANVAS_TFPCANVASHELPER_$__ALLOCATERESOURCES$TFPCUSTOMCANVAS$BOOLEAN$stub
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,48(%edx)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__ADDHELPER$TFPCANVASHELPER$stub
Lj1375:
Lj1363:
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN
_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,48(%eax)
	jne	Lj1390
	jmp	Lj1391
Lj1390:
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1394
Lj1391:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,-8(%ebp)
Lj1394:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__SETCLIPPING$BOOLEAN
_FPCANVAS_TFPCUSTOMCANVAS_$__SETCLIPPING$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,12(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__SETCLIPRECT$TRECT
_FPCANVAS_TFPCUSTOMCANVAS_$__SETCLIPRECT$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj1402
Lj1402:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_VMT_FPCANVAS_TFPRECTREGION$non_lazy_ptr-Lj1402(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%esi
	leal	4(%eax),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	testl	%eax,%eax
	jne	Lj1411
	jmp	Lj1412
Lj1411:
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj1412:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,60(%eax)
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__SETPENPOS$TPOINT
_FPCANVAS_TFPCUSTOMCANVAS_$__SETPENPOS$TPOINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,52(%ecx)
	movl	4(%edx),%eax
	movl	%eax,56(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__DOALLOWPEN$TFPCUSTOMPEN$$BOOLEAN
_FPCANVAS_TFPCUSTOMCANVAS_$__DOALLOWPEN$TFPCUSTOMPEN$$BOOLEAN:
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
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__DOLOCKCANVAS
_FPCANVAS_TFPCUSTOMCANVAS_$__DOLOCKCANVAS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__DOUNLOCKCANVAS
_FPCANVAS_TFPCUSTOMCANVAS_$__DOUNLOCKCANVAS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__LOCKCANVAS
_FPCANVAS_TFPCUSTOMCANVAS_$__LOCKCANVAS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj1431
	jmp	Lj1432
Lj1431:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*200(%edx)
Lj1432:
	movl	-4(%ebp),%eax
	incl	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__UNLOCKCANVAS
_FPCANVAS_TFPCUSTOMCANVAS_$__UNLOCKCANVAS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj1436
Lj1436:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$0,%eax
	jg	Lj1437
	jmp	Lj1438
Lj1437:
	movl	-4(%ebp),%eax
	decl	20(%eax)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj1439
	jmp	Lj1440
Lj1439:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*204(%edx)
Lj1440:
	jmp	Lj1443
Lj1438:
	movl	L_VMT_FPCANVAS_TFPCANVASEXCEPTION$non_lazy_ptr-Lj1436(%ebx),%edx
	movl	L_$FPCANVAS$_Ld25$non_lazy_ptr-Lj1436(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La6:
	movl	%ebp,%ecx
	leal	La6-Lj1436(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1443:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__LOCKED$$BOOLEAN
_FPCANVAS_TFPCUSTOMCANVAS_$__LOCKED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$0,%eax
	setgb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTOUT$LONGINT$LONGINT$ANSISTRING
_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTOUT$LONGINT$LONGINT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj1455
Lj1455:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1456
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETFONT$$TFPCUSTOMFONT$stub
	movl	%eax,%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWFONT$non_lazy_ptr-Lj1455(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1459
	jmp	Lj1460
Lj1459:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETFONT$$TFPCUSTOMFONT$stub
	movl	%eax,%esi
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	call	L_FPCANVAS_TFPCUSTOMDRAWFONT_$__DRAWTEXT$LONGINT$LONGINT$ANSISTRING$stub
	jmp	Lj1479
Lj1460:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*208(%esi)
Lj1479:
Lj1456:
	call	LFPC_POPADDRSTACK$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1457
	call	LFPC_RERAISE$stub
Lj1457:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__GETTEXTSIZE$ANSISTRING$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMCANVAS_$__GETTEXTSIZE$ANSISTRING$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj1489
Lj1489:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1490
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETFONT$$TFPCUSTOMFONT$stub
	movl	%eax,%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWFONT$non_lazy_ptr-Lj1489(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1493
	jmp	Lj1494
Lj1493:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETFONT$$TFPCUSTOMFONT$stub
	movl	%eax,%esi
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	call	L_FPCANVAS_TFPCUSTOMDRAWFONT_$__GETTEXTSIZE$ANSISTRING$LONGINT$LONGINT$stub
	jmp	Lj1513
Lj1494:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*212(%esi)
Lj1513:
Lj1490:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1491
	call	LFPC_RERAISE$stub
Lj1491:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__GETTEXTHEIGHT$ANSISTRING$$LONGINT
_FPCANVAS_TFPCUSTOMCANVAS_$__GETTEXTHEIGHT$ANSISTRING$$LONGINT:
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
	jne	Lj1524
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*308(%ecx)
	movl	%eax,-12(%ebp)
Lj1524:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1525
	call	LFPC_RERAISE$stub
Lj1525:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__GETTEXTWIDTH$ANSISTRING$$LONGINT
_FPCANVAS_TFPCUSTOMCANVAS_$__GETTEXTWIDTH$ANSISTRING$$LONGINT:
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
	jne	Lj1535
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*312(%ecx)
	movl	%eax,-12(%ebp)
Lj1535:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1536
	call	LFPC_RERAISE$stub
Lj1536:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTEXTENT$ANSISTRING$$TSIZE
_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTEXTENT$ANSISTRING$$TSIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETTEXTSIZE$ANSISTRING$LONGINT$LONGINT$stub
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTHEIGHT$ANSISTRING$$LONGINT
_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTHEIGHT$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj1555
Lj1555:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETFONT$$TFPCUSTOMFONT$stub
	movl	%eax,%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWFONT$non_lazy_ptr-Lj1555(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1556
	jmp	Lj1557
Lj1556:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETFONT$$TFPCUSTOMFONT$stub
	movl	%eax,%esi
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	call	L_FPCANVAS_TFPCUSTOMDRAWFONT_$__GETTEXTHEIGHT$ANSISTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	jmp	Lj1574
Lj1557:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*216(%ecx)
	movl	%eax,-12(%ebp)
Lj1574:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTWIDTH$ANSISTRING$$LONGINT
_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTWIDTH$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj1582
Lj1582:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETFONT$$TFPCUSTOMFONT$stub
	movl	%eax,%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWFONT$non_lazy_ptr-Lj1582(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1583
	jmp	Lj1584
Lj1583:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETFONT$$TFPCUSTOMFONT$stub
	movl	%eax,%esi
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	call	L_FPCANVAS_TFPCUSTOMDRAWFONT_$__GETTEXTWIDTH$ANSISTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	jmp	Lj1601
Lj1584:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*220(%ecx)
	movl	%eax,-12(%ebp)
Lj1601:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__ARC$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMCANVAS_$__ARC$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__ARC$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMCANVAS_$__ARC$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__DOMOVETO$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMCANVAS_$__DOMOVETO$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__DOLINETO$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMCANVAS_$__DOLINETO$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	52(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*276(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__MOVETO$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMCANVAS_$__MOVETO$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,56(%eax)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*268(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__MOVETO$TPOINT
_FPCANVAS_TFPCUSTOMCANVAS_$__MOVETO$TPOINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%eax
	movl	%eax,56(%edx)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*268(%ebx)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__LINETO$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMCANVAS_$__LINETO$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj1649
Lj1649:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	48(%eax),%eax
	cmpl	$7,%eax
	jne	Lj1650
	jmp	Lj1651
Lj1650:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	%eax,%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWPEN$non_lazy_ptr-Lj1649(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1654
	jmp	Lj1655
Lj1654:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	%eax,%esi
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	52(%eax),%edx
	movl	%esi,%eax
	call	L_FPCANVAS_TFPCUSTOMDRAWPEN_$__DRAWLINE$LONGINT$LONGINT$LONGINT$LONGINT$stub
	jmp	Lj1676
Lj1655:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*272(%esi)
Lj1676:
Lj1651:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,56(%eax)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__LINETO$TPOINT
_FPCANVAS_TFPCUSTOMCANVAS_$__LINETO$TPOINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__LINETO$LONGINT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__LINE$LONGINT$LONGINT$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMCANVAS_$__LINE$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj1696
Lj1696:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	48(%eax),%eax
	cmpl	$7,%eax
	jne	Lj1697
	jmp	Lj1698
Lj1697:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	%eax,%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWPEN$non_lazy_ptr-Lj1696(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1701
	jmp	Lj1702
Lj1701:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	%eax,%esi
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	call	L_FPCANVAS_TFPCUSTOMDRAWPEN_$__DRAWLINE$LONGINT$LONGINT$LONGINT$LONGINT$stub
	jmp	Lj1723
Lj1702:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*276(%esi)
Lj1723:
Lj1698:
	movl	-12(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,56(%edx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__LINE$TPOINT$TPOINT
_FPCANVAS_TFPCUSTOMCANVAS_$__LINE$TPOINT$TPOINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__LINE$LONGINT$LONGINT$LONGINT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__LINE$TRECT
_FPCANVAS_TFPCUSTOMCANVAS_$__LINE$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__LINE$LONGINT$LONGINT$LONGINT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYLINE$array_of_TPOINT
_FPCANVAS_TFPCUSTOMCANVAS_$__POLYLINE$array_of_TPOINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj1763
Lj1763:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	48(%eax),%eax
	cmpl	$7,%eax
	jne	Lj1764
	jmp	Lj1765
Lj1764:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	%eax,%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWPEN$non_lazy_ptr-Lj1763(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1768
	jmp	Lj1769
Lj1768:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	%eax,%esi
	movb	$0,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	call	L_FPCANVAS_TFPCUSTOMDRAWPEN_$__POLYLINE$array_of_TPOINT$BOOLEAN$stub
	jmp	Lj1788
Lj1769:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*260(%esi)
Lj1788:
Lj1765:
	movl	-12(%ebp),%esi
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%eax,%edx,8),%ecx
	movl	%ecx,52(%esi)
	movl	4(%eax,%edx,8),%eax
	movl	%eax,56(%esi)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__RADIALPIE$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMCANVAS_$__RADIALPIE$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*288(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__DORADIALPIE$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMCANVAS_$__DORADIALPIE$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__DOPOLYBEZIER$PPOINT$LONGINT$BOOLEAN$BOOLEAN
_FPCANVAS_TFPCUSTOMCANVAS_$__DOPOLYBEZIER$PPOINT$LONGINT$BOOLEAN$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYBEZIER$PPOINT$LONGINT$BOOLEAN$BOOLEAN
_FPCANVAS_TFPCUSTOMCANVAS_$__POLYBEZIER$PPOINT$LONGINT$BOOLEAN$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	8(%ebp),%al
	movb	%al,(%esp)
	movb	12(%ebp),%al
	movb	%al,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*292(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYBEZIER$array_of_TPOINT$BOOLEAN$BOOLEAN
_FPCANVAS_TFPCUSTOMCANVAS_$__POLYBEZIER$array_of_TPOINT$BOOLEAN$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1833
	jmp	Lj1834
Lj1833:
	movb	8(%ebp),%al
	movb	%al,(%esp)
	movb	12(%ebp),%al
	movb	%al,4(%esp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*292(%ebx)
Lj1834:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__CLEAR
_FPCANVAS_TFPCUSTOMCANVAS_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	movl	%edi,-40(%ebp)
	call	Lj1846
Lj1846:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	48(%eax),%eax
	cmpl	$1,%eax
	jne	Lj1847
	jmp	Lj1848
Lj1847:
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	%eax,%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWBRUSH$non_lazy_ptr-Lj1846(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1851
	jmp	Lj1852
Lj1851:
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	%eax,%esi
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*168(%edx)
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*176(%edx)
	movl	%eax,4(%esp)
	movl	%esi,%eax
	movl	$0,%ecx
	movl	$0,%edx
	call	L_FPCANVAS_TFPCUSTOMDRAWBRUSH_$__RECTANGLE$LONGINT$LONGINT$LONGINT$LONGINT$stub
	jmp	Lj1877
Lj1852:
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*168(%edx)
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*176(%edx)
	movl	%eax,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_TYPES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-20(%ebp),%edi
	leal	-36(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*228(%ecx)
Lj1877:
Lj1848:
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	movl	-40(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__ERASE
_FPCANVAS_TFPCUSTOMCANVAS_$__ERASE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	call	Lj1899
Lj1899:
	popl	-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*176(%edx)
	decl	%eax
	movl	%eax,%edi
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%edi
	jl	Lj1901
	decl	-8(%ebp)
	.align 2
Lj1902:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*168(%edx)
	decl	%eax
	movl	%eax,%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj1906
	decl	-12(%ebp)
	.align 2
Lj1907:
	incl	-12(%ebp)
	movl	-16(%ebp),%edx
	movl	L_TC_FPIMAGE_COLTRANSPARENT$non_lazy_ptr-Lj1899(%edx),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
	cmpl	-12(%ebp),%esi
	jg	Lj1907
Lj1906:
	cmpl	-8(%ebp),%edi
	jg	Lj1902
Lj1901:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__DORECTANGLEANDFILL$TRECT
_FPCANVAS_TFPCUSTOMCANVAS_$__DORECTANGLEANDFILL$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*228(%ecx)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*224(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__DOELLIPSEANDFILL$TRECT
_FPCANVAS_TFPCUSTOMCANVAS_$__DOELLIPSEANDFILL$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*236(%ecx)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*240(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__DOPOLYGONANDFILL$array_of_TPOINT
_FPCANVAS_TFPCUSTOMCANVAS_$__DOPOLYGONANDFILL$array_of_TPOINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*248(%ebx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*252(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__ELLIPSE$TRECT
_FPCANVAS_TFPCUSTOMCANVAS_$__ELLIPSE$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj1953
Lj1953:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	48(%eax),%eax
	cmpl	$7,%eax
	setneb	-9(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	48(%eax),%eax
	cmpl	$1,%eax
	setneb	-10(%ebp)
	movb	$0,-13(%ebp)
	movb	$0,-11(%ebp)
	movb	$0,-12(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj1970
	jmp	Lj1969
Lj1970:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	%eax,%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWPEN$non_lazy_ptr-Lj1953(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1968
	jmp	Lj1969
Lj1968:
	movb	$0,-9(%ebp)
	movb	$1,-11(%ebp)
Lj1969:
	cmpb	$0,-10(%ebp)
	jne	Lj1983
	jmp	Lj1982
Lj1983:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	%eax,%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWBRUSH$non_lazy_ptr-Lj1953(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1981
	jmp	Lj1982
Lj1981:
	movb	$0,-10(%ebp)
	movb	$1,-12(%ebp)
Lj1982:
	cmpb	$0,-9(%ebp)
	jne	Lj1996
	jmp	Lj1995
Lj1996:
	cmpb	$0,-10(%ebp)
	jne	Lj1994
	jmp	Lj1995
Lj1994:
	movb	$0,-9(%ebp)
	movb	$0,-10(%ebp)
	movb	$1,-13(%ebp)
Lj1995:
	cmpb	$0,-13(%ebp)
	jne	Lj2003
	jmp	Lj2004
Lj2003:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*244(%ecx)
	jmp	Lj2009
Lj2004:
	cmpb	$0,-9(%ebp)
	jne	Lj2010
	jmp	Lj2011
Lj2010:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*240(%ecx)
	jmp	Lj2016
Lj2011:
	cmpb	$0,-11(%ebp)
	jne	Lj2017
	jmp	Lj2018
Lj2017:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	%eax,%esi
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	%esi,%eax
	call	L_FPCANVAS_TFPCUSTOMDRAWPEN_$__ELLIPSE$LONGINT$LONGINT$LONGINT$LONGINT$stub
Lj2018:
Lj2016:
	cmpb	$0,-10(%ebp)
	jne	Lj2033
	jmp	Lj2034
Lj2033:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*236(%ecx)
	jmp	Lj2039
Lj2034:
	cmpb	$0,-12(%ebp)
	jne	Lj2040
	jmp	Lj2041
Lj2040:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	%eax,%esi
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	%esi,%eax
	call	L_FPCANVAS_TFPCUSTOMDRAWBRUSH_$__ELLIPSE$LONGINT$LONGINT$LONGINT$LONGINT$stub
Lj2041:
Lj2039:
Lj2009:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__ELLIPSE$LONGINT$LONGINT$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMCANVAS_$__ELLIPSE$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-28(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*324(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__ELLIPSEC$LONGINT$LONGINT$LONGWORD$LONGWORD
_FPCANVAS_TFPCUSTOMCANVAS_$__ELLIPSEC$LONGINT$LONGINT$LONGWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	8(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ecx
	movl	12(%ebp),%eax
	addl	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	12(%ebp),%ebx
	subl	%ebx,%eax
	call	L_TYPES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-28(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*324(%ecx)
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__RECTANGLE$LONGINT$LONGINT$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMCANVAS_$__RECTANGLE$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-28(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*352(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__FILLRECT$TRECT
_FPCANVAS_TFPCUSTOMCANVAS_$__FILLRECT$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj2105
Lj2105:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	48(%eax),%eax
	cmpl	$1,%eax
	jne	Lj2106
	jmp	Lj2107
Lj2106:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	%eax,%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWBRUSH$non_lazy_ptr-Lj2105(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	je	Lj2110
	jmp	Lj2111
Lj2110:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*228(%ecx)
	jmp	Lj2122
Lj2111:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	%eax,%esi
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	%esi,%eax
	call	L_FPCANVAS_TFPCUSTOMDRAWBRUSH_$__RECTANGLE$LONGINT$LONGINT$LONGINT$LONGINT$stub
Lj2122:
Lj2107:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__FILLRECT$LONGINT$LONGINT$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMCANVAS_$__FILLRECT$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-28(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*360(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__RECTANGLE$TRECT
_FPCANVAS_TFPCUSTOMCANVAS_$__RECTANGLE$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj2154
Lj2154:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	48(%eax),%eax
	cmpl	$7,%eax
	setneb	-9(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	48(%eax),%eax
	cmpl	$1,%eax
	setneb	-10(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	%eax,%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWPEN$non_lazy_ptr-Lj2154(%ebx),%eax
	call	Lfpc_do_is$stub
	movb	%al,-11(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	%eax,%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWBRUSH$non_lazy_ptr-Lj2154(%ebx),%eax
	call	Lfpc_do_is$stub
	movb	%al,-12(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj2182
	jmp	Lj2180
Lj2182:
	cmpb	$0,-10(%ebp)
	jne	Lj2181
	jmp	Lj2180
Lj2181:
	cmpb	$0,-12(%ebp)
	jne	Lj2180
	jmp	Lj2183
Lj2183:
	cmpb	$0,-12(%ebp)
	jne	Lj2180
	jmp	Lj2179
Lj2179:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*232(%ecx)
	jmp	Lj2188
Lj2180:
	cmpb	$0,-9(%ebp)
	jne	Lj2189
	jmp	Lj2190
Lj2189:
	movb	-11(%ebp),%al
	testb	%al,%al
	je	Lj2191
	jmp	Lj2192
Lj2191:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*224(%ecx)
	jmp	Lj2197
Lj2192:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	%eax,%esi
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	%esi,%eax
	call	L_FPCANVAS_TFPCUSTOMDRAWPEN_$__RECTANGLE$LONGINT$LONGINT$LONGINT$LONGINT$stub
Lj2197:
Lj2190:
	cmpb	$0,-10(%ebp)
	jne	Lj2212
	jmp	Lj2213
Lj2212:
	movb	-12(%ebp),%al
	testb	%al,%al
	je	Lj2214
	jmp	Lj2215
Lj2214:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*228(%ecx)
	jmp	Lj2220
Lj2215:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	%eax,%esi
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	%esi,%eax
	call	L_FPCANVAS_TFPCUSTOMDRAWBRUSH_$__RECTANGLE$LONGINT$LONGINT$LONGINT$LONGINT$stub
Lj2220:
Lj2213:
Lj2188:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__FLOODFILL$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMCANVAS_$__FLOODFILL$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2236
Lj2236:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	48(%eax),%eax
	cmpl	$1,%eax
	jne	Lj2237
	jmp	Lj2238
Lj2237:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	%eax,%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWBRUSH$non_lazy_ptr-Lj2236(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj2241
	jmp	Lj2242
Lj2241:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	%eax,%esi
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	call	L_FPCANVAS_TFPCUSTOMDRAWBRUSH_$__FLOODFILL$LONGINT$LONGINT$stub
	jmp	Lj2259
Lj2242:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*264(%esi)
Lj2259:
Lj2238:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYGON$array_of_TPOINT
_FPCANVAS_TFPCUSTOMCANVAS_$__POLYGON$array_of_TPOINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj2267
Lj2267:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	48(%eax),%eax
	cmpl	$7,%eax
	setneb	-13(%ebp)
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	48(%eax),%eax
	cmpl	$1,%eax
	setneb	-14(%ebp)
	movb	$0,-15(%ebp)
	movb	$0,-16(%ebp)
	movb	$0,-17(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj2284
	jmp	Lj2283
Lj2284:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	%eax,%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWPEN$non_lazy_ptr-Lj2267(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj2282
	jmp	Lj2283
Lj2282:
	movb	$0,-13(%ebp)
	movb	$1,-15(%ebp)
Lj2283:
	cmpb	$0,-14(%ebp)
	jne	Lj2297
	jmp	Lj2296
Lj2297:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	%eax,%edx
	movl	L_VMT_FPCANVAS_TFPCUSTOMDRAWBRUSH$non_lazy_ptr-Lj2267(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj2295
	jmp	Lj2296
Lj2295:
	movb	$0,-14(%ebp)
	movb	$1,-16(%ebp)
Lj2296:
	cmpb	$0,-13(%ebp)
	jne	Lj2310
	jmp	Lj2309
Lj2310:
	cmpb	$0,-14(%ebp)
	jne	Lj2308
	jmp	Lj2309
Lj2308:
	movb	$0,-13(%ebp)
	movb	$0,-14(%ebp)
	movb	$1,-17(%ebp)
Lj2309:
	cmpb	$0,-17(%ebp)
	jne	Lj2317
	jmp	Lj2318
Lj2317:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*256(%esi)
	jmp	Lj2325
Lj2318:
	cmpb	$0,-13(%ebp)
	jne	Lj2326
	jmp	Lj2327
Lj2326:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*252(%esi)
	jmp	Lj2334
Lj2327:
	cmpb	$0,-15(%ebp)
	jne	Lj2335
	jmp	Lj2336
Lj2335:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	%eax,%esi
	movb	$1,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	call	L_FPCANVAS_TFPCUSTOMDRAWPEN_$__POLYLINE$array_of_TPOINT$BOOLEAN$stub
Lj2336:
Lj2334:
	cmpb	$0,-14(%ebp)
	jne	Lj2349
	jmp	Lj2350
Lj2349:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*248(%esi)
	jmp	Lj2357
Lj2350:
	cmpb	$0,-16(%ebp)
	jne	Lj2358
	jmp	Lj2359
Lj2358:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	%eax,%esi
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	call	L_FPCANVAS_TFPCUSTOMDRAWBRUSH_$__POLYGON$array_of_TPOINT$stub
Lj2359:
Lj2357:
Lj2325:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__COPYRECT$LONGINT$LONGINT$TFPCUSTOMCANVAS$TRECT
_FPCANVAS_TFPCUSTOMCANVAS_$__COPYRECT$LONGINT$LONGINT$TFPCUSTOMCANVAS$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%esi
	leal	-40(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-40(%ebp),%eax
	call	L_CLIPPING_SORTRECT$TRECT$stub
	movl	-28(%ebp),%edi
	movl	-36(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%edi
	jl	Lj2375
	decl	-24(%ebp)
	.align 2
Lj2376:
	incl	-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-36(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-32(%ebp),%ebx
	movl	-40(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj2380
	decl	-20(%ebp)
	.align 2
Lj2381:
	incl	-20(%ebp)
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	12(%ebp),%eax
	movl	12(%ebp),%esi
	movl	(%esi),%esi
	call	*160(%esi)
	movl	%eax,-48(%ebp)
	movl	%edx,-44(%ebp)
	leal	-48(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	movl	-40(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*156(%esi)
	cmpl	-20(%ebp),%ebx
	jg	Lj2381
Lj2380:
	cmpl	-24(%ebp),%edi
	jg	Lj2376
Lj2375:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__DRAW$LONGINT$LONGINT$TFPCUSTOMIMAGE
_FPCANVAS_TFPCUSTOMCANVAS_$__DRAW$LONGINT$LONGINT$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*176(%edx)
	cmpl	-28(%ebp),%eax
	jle	Lj2400
	jmp	Lj2401
Lj2400:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*176(%edx)
	decl	%eax
	movl	%eax,-28(%ebp)
Lj2401:
	movl	8(%ebp),%eax
	movl	28(%eax),%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	movl	%eax,-32(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*168(%edx)
	cmpl	-32(%ebp),%eax
	jle	Lj2410
	jmp	Lj2411
Lj2410:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*168(%edx)
	decl	%eax
	movl	%eax,-32(%ebp)
Lj2411:
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*188(%edx)
	testb	%al,%al
	jne	Lj2422
	jmp	Lj2423
Lj2422:
	leal	-32(%ebp),%eax
	movl	%eax,(%esp)
	leal	-28(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
	leal	-56(%ebp),%eax
	leal	-24(%ebp),%ecx
	leal	-20(%ebp),%edx
	call	L_CLIPPING_CHECKRECTCLIPPING$TRECT$LONGINT$LONGINT$LONGINT$LONGINT$stub
Lj2423:
	movl	-28(%ebp),%edi
	movl	-20(%ebp),%eax
	movl	%eax,-36(%ebp)
	cmpl	-36(%ebp),%edi
	jl	Lj2441
	decl	-36(%ebp)
	.align 2
Lj2442:
	incl	-36(%ebp)
	movl	-36(%ebp),%eax
	movl	-4(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	-32(%ebp),%ebx
	movl	-24(%ebp),%eax
	movl	%eax,-40(%ebp)
	cmpl	-40(%ebp),%ebx
	jl	Lj2446
	decl	-40(%ebp)
	.align 2
Lj2447:
	incl	-40(%ebp)
	movl	-40(%ebp),%ecx
	movl	-8(%ebp),%eax
	subl	%eax,%ecx
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-48(%ebp)
	movl	%edx,-44(%ebp)
	leal	-48(%ebp),%eax
	movl	%eax,(%esp)
	movl	-40(%ebp),%ecx
	movl	-36(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*156(%esi)
	cmpl	-40(%ebp),%ebx
	jg	Lj2447
Lj2446:
	cmpl	-36(%ebp),%edi
	jg	Lj2442
Lj2441:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMCANVAS_$__STRETCHDRAW$LONGINT$LONGINT$LONGINT$LONGINT$TFPCUSTOMIMAGE
_FPCANVAS_TFPCUSTOMCANVAS_$__STRETCHDRAW$LONGINT$LONGINT$LONGINT$LONGINT$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj2463
Lj2463:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj2465
	jmp	Lj2464
Lj2464:
	movb	$1,-17(%ebp)
	jmp	Lj2466
Lj2465:
	movb	$0,-17(%ebp)
Lj2466:
	cmpb	$0,-17(%ebp)
	jne	Lj2467
	jmp	Lj2468
Lj2467:
	movl	L_VMT_FPCANVAS_TMITCHELINTERPOLATION$non_lazy_ptr-Lj2463(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-24(%ebp)
	jmp	Lj2475
Lj2468:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-24(%ebp)
Lj2475:
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj2478
	movl	-12(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%esi
	movl	(%esi),%esi
	call	*100(%esi)
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
Lj2478:
	call	LFPC_POPADDRSTACK$stub
	cmpb	$0,-17(%ebp)
	jne	Lj2498
	jmp	Lj2499
Lj2498:
	movl	-24(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj2499:
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj2479
	decl	%eax
	testl	%eax,%eax
	je	Lj2480
Lj2480:
	call	LFPC_RERAISE$stub
Lj2479:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMDRAWPEN_$__DRAWLINE$LONGINT$LONGINT$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMDRAWPEN_$__DRAWLINE$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*184(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMDRAWPEN_$__POLYLINE$array_of_TPOINT$BOOLEAN
_FPCANVAS_TFPCUSTOMDRAWPEN_$__POLYLINE$array_of_TPOINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*188(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMDRAWPEN_$__ELLIPSE$LONGINT$LONGINT$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMDRAWPEN_$__ELLIPSE$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*192(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMDRAWPEN_$__RECTANGLE$LONGINT$LONGINT$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMDRAWPEN_$__RECTANGLE$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*196(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMDRAWBRUSH_$__RECTANGLE$LONGINT$LONGINT$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMDRAWBRUSH_$__RECTANGLE$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*168(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMDRAWBRUSH_$__FLOODFILL$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMDRAWBRUSH_$__FLOODFILL$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*176(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMDRAWBRUSH_$__ELLIPSE$LONGINT$LONGINT$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMDRAWBRUSH_$__ELLIPSE$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*172(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMDRAWBRUSH_$__POLYGON$array_of_TPOINT
_FPCANVAS_TFPCUSTOMDRAWBRUSH_$__POLYGON$array_of_TPOINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*180(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMDRAWFONT_$__DRAWTEXT$LONGINT$LONGINT$ANSISTRING
_FPCANVAS_TFPCUSTOMDRAWFONT_$__DRAWTEXT$LONGINT$LONGINT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2590
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*172(%ebx)
Lj2590:
	call	LFPC_POPADDRSTACK$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2591
	call	LFPC_RERAISE$stub
Lj2591:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMDRAWFONT_$__GETTEXTSIZE$ANSISTRING$LONGINT$LONGINT
_FPCANVAS_TFPCUSTOMDRAWFONT_$__GETTEXTSIZE$ANSISTRING$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2603
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*176(%ebx)
Lj2603:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2604
	call	LFPC_RERAISE$stub
Lj2604:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMDRAWFONT_$__GETTEXTHEIGHT$ANSISTRING$$LONGINT
_FPCANVAS_TFPCUSTOMDRAWFONT_$__GETTEXTHEIGHT$ANSISTRING$$LONGINT:
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
	jne	Lj2616
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
	movl	%eax,-12(%ebp)
Lj2616:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2617
	call	LFPC_RERAISE$stub
Lj2617:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCANVAS_TFPCUSTOMDRAWFONT_$__GETTEXTWIDTH$ANSISTRING$$LONGINT
_FPCANVAS_TFPCUSTOMDRAWFONT_$__GETTEXTWIDTH$ANSISTRING$$LONGINT:
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
	jne	Lj2627
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*184(%ecx)
	movl	%eax,-12(%ebp)
Lj2627:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2628
	call	LFPC_RERAISE$stub
Lj2628:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPCANVAS
_INIT$_FPCANVAS:
.reference __FPCANVAS_init_implicit
.globl	__FPCANVAS_init_implicit
__FPCANVAS_init_implicit:
.reference _INIT$_FPCANVAS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_FPCANVAS
_FINALIZE$_FPCANVAS:
.reference __FPCANVAS_finalize_implicit
.globl	__FPCANVAS_finalize_implicit
__FPCANVAS_finalize_implicit:
.reference _FINALIZE$_FPCANVAS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2639
Lj2639:
	popl	%ebx
	movl	L_INIT_FPCANVAS_DEF303$non_lazy_ptr-Lj2639(%ebx),%edx
	movl	L_TC_FPCANVAS_ERRALLOC$non_lazy_ptr-Lj2639(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld27
_$FPCANVAS$_Ld27:
	.byte	18
	.ascii	"TFPCanvasException"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TFPCANVASEXCEPTION
_VMT_FPCANVAS_TFPCANVASEXCEPTION:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$FPCANVAS$_Ld27
	.long	0,0
	.long	_$FPCANVAS$_Ld28
	.long	_RTTI_FPCANVAS_TFPCANVASEXCEPTION
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
.globl	_$FPCANVAS$_Ld30
_$FPCANVAS$_Ld30:
	.byte	15
	.ascii	"TFPPenException"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TFPPENEXCEPTION
_VMT_FPCANVAS_TFPPENEXCEPTION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPCANVASEXCEPTION
	.long	_$FPCANVAS$_Ld30
	.long	0,0
	.long	_$FPCANVAS$_Ld31
	.long	_RTTI_FPCANVAS_TFPPENEXCEPTION
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
.globl	_$FPCANVAS$_Ld33
_$FPCANVAS$_Ld33:
	.byte	17
	.ascii	"TFPBrushException"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TFPBRUSHEXCEPTION
_VMT_FPCANVAS_TFPBRUSHEXCEPTION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPCANVASEXCEPTION
	.long	_$FPCANVAS$_Ld33
	.long	0,0
	.long	_$FPCANVAS$_Ld34
	.long	_RTTI_FPCANVAS_TFPBRUSHEXCEPTION
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
.globl	_$FPCANVAS$_Ld36
_$FPCANVAS$_Ld36:
	.byte	16
	.ascii	"TFPFontException"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TFPFONTEXCEPTION
_VMT_FPCANVAS_TFPFONTEXCEPTION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPCANVASEXCEPTION
	.long	_$FPCANVAS$_Ld36
	.long	0,0
	.long	_$FPCANVAS$_Ld37
	.long	_RTTI_FPCANVAS_TFPFONTEXCEPTION
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
.globl	_$FPCANVAS$_Ld39
_$FPCANVAS$_Ld39:
	.byte	15
	.ascii	"TFPCustomCanvas"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TFPCUSTOMCANVAS
_VMT_FPCANVAS_TFPCUSTOMCANVAS:
	.long	64,-64
	.long	_VMT_CLASSES_TPERSISTENT
	.long	_$FPCANVAS$_Ld39
	.long	0,0
	.long	_$FPCANVAS$_Ld40
	.long	_RTTI_FPCANVAS_TFPCUSTOMCANVAS
	.long	0,0,0,0
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETFONT$TFPCUSTOMFONT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETBRUSH$TFPCUSTOMBRUSH
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETPEN$TFPCUSTOMPEN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOALLOWFONT$TFPCUSTOMFONT$$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOALLOWPEN$TFPCUSTOMPEN$$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOALLOWBRUSH$TFPCUSTOMBRUSH$$BOOLEAN
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__GETCLIPRECT$$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETCLIPRECT$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__GETCLIPPING$$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETCLIPPING$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETPENPOS$TPOINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOLOCKCANVAS
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOUNLOCKCANVAS
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DORECTANGLEANDFILL$TRECT
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOELLIPSEANDFILL$TRECT
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOPOLYGONANDFILL$array_of_TPOINT
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOMOVETO$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOLINETO$LONGINT$LONGINT
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DORADIALPIE$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOPOLYBEZIER$PPOINT$LONGINT$BOOLEAN$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__CHECKHELPER$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTOUT$LONGINT$LONGINT$ANSISTRING
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTEXTENT$ANSISTRING$$TSIZE
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTHEIGHT$ANSISTRING$$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTWIDTH$ANSISTRING$$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ARC$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ARC$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ELLIPSE$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ELLIPSE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYGON$array_of_TPOINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYLINE$array_of_TPOINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__RADIALPIE$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYBEZIER$PPOINT$LONGINT$BOOLEAN$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYBEZIER$array_of_TPOINT$BOOLEAN$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__RECTANGLE$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__RECTANGLE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__FILLRECT$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__FILLRECT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__FLOODFILL$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ERASE
	.long	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld42
_$FPCANVAS$_Ld42:
	.byte	15
	.ascii	"TFPCanvasHelper"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TFPCANVASHELPER
_VMT_FPCANVAS_TFPCANVASHELPER:
	.long	48,-48
	.long	_VMT_CLASSES_TPERSISTENT
	.long	_$FPCANVAS$_Ld42
	.long	0,0
	.long	_$FPCANVAS$_Ld43
	.long	_RTTI_FPCANVAS_TFPCANVASHELPER
	.long	0,0,0,0
	.long	_FPCANVAS_TFPCANVASHELPER_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETALLOCATED$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFLAGS$LONGINT$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETFLAGS$LONGINT$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__DOALLOCATERESOURCES
	.long	_FPCANVAS_TFPCANVASHELPER_$__DODEALLOCATERESOURCES
	.long	_FPCANVAS_TFPCANVASHELPER_$__DOCOPYPROPS$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFPCOLOR$TFPCOLOR
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGING
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGED
	.long	_FPCANVAS_TFPCANVASHELPER_$__CREATE$$TFPCANVASHELPER
	.long	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld45
_$FPCANVAS$_Ld45:
	.byte	13
	.ascii	"TFPCustomFont"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TFPCUSTOMFONT
_VMT_FPCANVAS_TFPCUSTOMFONT:
	.long	60,-60
	.long	_VMT_FPCANVAS_TFPCANVASHELPER
	.long	_$FPCANVAS$_Ld45
	.long	0,0
	.long	_$FPCANVAS$_Ld46
	.long	_RTTI_FPCANVAS_TFPCUSTOMFONT
	.long	_INIT_FPCANVAS_TFPCUSTOMFONT
	.long	0,0,0
	.long	_FPCANVAS_TFPCANVASHELPER_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETALLOCATED$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFLAGS$LONGINT$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETFLAGS$LONGINT$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__DOALLOCATERESOURCES
	.long	_FPCANVAS_TFPCANVASHELPER_$__DODEALLOCATERESOURCES
	.long	_FPCANVAS_TFPCUSTOMFONT_$__DOCOPYPROPS$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFPCOLOR$TFPCOLOR
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGING
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGED
	.long	_FPCANVAS_TFPCANVASHELPER_$__CREATE$$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCUSTOMFONT_$__SETNAME$ANSISTRING
	.long	_FPCANVAS_TFPCUSTOMFONT_$__SETSIZE$LONGINT
	.long	_FPCANVAS_TFPCUSTOMFONT_$__SETORIENTATION$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld48
_$FPCANVAS$_Ld48:
	.byte	12
	.ascii	"TFPCustomPen"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TFPCUSTOMPEN
_VMT_FPCANVAS_TFPCUSTOMPEN:
	.long	72,-72
	.long	_VMT_FPCANVAS_TFPCANVASHELPER
	.long	_$FPCANVAS$_Ld48
	.long	0,0
	.long	_$FPCANVAS$_Ld49
	.long	_RTTI_FPCANVAS_TFPCUSTOMPEN
	.long	0,0,0,0
	.long	_FPCANVAS_TFPCANVASHELPER_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETALLOCATED$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFLAGS$LONGINT$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETFLAGS$LONGINT$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__DOALLOCATERESOURCES
	.long	_FPCANVAS_TFPCANVASHELPER_$__DODEALLOCATERESOURCES
	.long	_FPCANVAS_TFPCUSTOMPEN_$__DOCOPYPROPS$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFPCOLOR$TFPCOLOR
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGING
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGED
	.long	_FPCANVAS_TFPCANVASHELPER_$__CREATE$$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETMODE$TFPPENMODE
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETWIDTH$LONGINT
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETSTYLE$TFPPENSTYLE
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETPATTERN$LONGWORD
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETENDCAP$TFPPENENDCAP
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETJOINSTYLE$TFPPENJOINSTYLE
	.long	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld51
_$FPCANVAS$_Ld51:
	.byte	14
	.ascii	"TFPCustomBrush"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TFPCUSTOMBRUSH
_VMT_FPCANVAS_TFPCUSTOMBRUSH:
	.long	184,-184
	.long	_VMT_FPCANVAS_TFPCANVASHELPER
	.long	_$FPCANVAS$_Ld51
	.long	0,0
	.long	_$FPCANVAS$_Ld52
	.long	_RTTI_FPCANVAS_TFPCUSTOMBRUSH
	.long	0,0,0,0
	.long	_FPCANVAS_TFPCANVASHELPER_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETALLOCATED$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFLAGS$LONGINT$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETFLAGS$LONGINT$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__DOALLOCATERESOURCES
	.long	_FPCANVAS_TFPCANVASHELPER_$__DODEALLOCATERESOURCES
	.long	_FPCANVAS_TFPCUSTOMBRUSH_$__DOCOPYPROPS$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFPCOLOR$TFPCOLOR
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGING
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGED
	.long	_FPCANVAS_TFPCANVASHELPER_$__CREATE$$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCUSTOMBRUSH_$__SETSTYLE$TFPBRUSHSTYLE
	.long	_FPCANVAS_TFPCUSTOMBRUSH_$__SETIMAGE$TFPCUSTOMIMAGE
	.long	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld54
_$FPCANVAS$_Ld54:
	.byte	22
	.ascii	"TFPCustomInterpolation"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TFPCUSTOMINTERPOLATION
_VMT_FPCANVAS_TFPCUSTOMINTERPOLATION:
	.long	12,-12
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPCANVAS$_Ld54
	.long	0,0
	.long	_$FPCANVAS$_Ld55
	.long	_RTTI_FPCANVAS_TFPCUSTOMINTERPOLATION
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
	.long	_FPCANVAS_TFPCUSTOMINTERPOLATION_$__INITIALIZE$TFPCUSTOMIMAGE$TFPCUSTOMCANVAS
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld57
_$FPCANVAS$_Ld57:
	.byte	20
	.ascii	"TFPBaseInterpolation"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TFPBASEINTERPOLATION
_VMT_FPCANVAS_TFPBASEINTERPOLATION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPCUSTOMINTERPOLATION
	.long	_$FPCANVAS$_Ld57
	.long	0,0
	.long	_$FPCANVAS$_Ld58
	.long	_RTTI_FPCANVAS_TFPBASEINTERPOLATION
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
	.long	_FPCANVAS_TFPCUSTOMINTERPOLATION_$__INITIALIZE$TFPCUSTOMIMAGE$TFPCUSTOMCANVAS
	.long	_FPCANVAS_TFPBASEINTERPOLATION_$__EXECUTE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPBASEINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
	.long	_FPCANVAS_TFPBASEINTERPOLATION_$__MAXSUPPORT$$DOUBLE
	.long	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld60
_$FPCANVAS$_Ld60:
	.byte	21
	.ascii	"TMitchelInterpolation"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TMITCHELINTERPOLATION
_VMT_FPCANVAS_TMITCHELINTERPOLATION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPBASEINTERPOLATION
	.long	_$FPCANVAS$_Ld60
	.long	0,0
	.long	_$FPCANVAS$_Ld61
	.long	_RTTI_FPCANVAS_TMITCHELINTERPOLATION
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
	.long	_FPCANVAS_TFPCUSTOMINTERPOLATION_$__INITIALIZE$TFPCUSTOMIMAGE$TFPCUSTOMCANVAS
	.long	_FPCANVAS_TFPBASEINTERPOLATION_$__EXECUTE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TMITCHELINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
	.long	_FPCANVAS_TMITCHELINTERPOLATION_$__MAXSUPPORT$$DOUBLE
	.long	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld63
_$FPCANVAS$_Ld63:
	.byte	15
	.ascii	"TFPCustomRegion"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TFPCUSTOMREGION
_VMT_FPCANVAS_TFPCUSTOMREGION:
	.long	4,-4
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPCANVAS$_Ld63
	.long	0,0
	.long	_$FPCANVAS$_Ld64
	.long	_RTTI_FPCANVAS_TFPCUSTOMREGION
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
	.long	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld66
_$FPCANVAS$_Ld66:
	.byte	13
	.ascii	"TFPRectRegion"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TFPRECTREGION
_VMT_FPCANVAS_TFPRECTREGION:
	.long	20,-20
	.long	_VMT_FPCANVAS_TFPCUSTOMREGION
	.long	_$FPCANVAS$_Ld66
	.long	0,0
	.long	_$FPCANVAS$_Ld67
	.long	_RTTI_FPCANVAS_TFPRECTREGION
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
	.long	_FPCANVAS_TFPRECTREGION_$__GETBOUNDINGRECT$$TRECT
	.long	_FPCANVAS_TFPRECTREGION_$__ISPOINTINREGION$LONGINT$LONGINT$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld69
_$FPCANVAS$_Ld69:
	.byte	17
	.ascii	"TFPCustomDrawFont"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TFPCUSTOMDRAWFONT
_VMT_FPCANVAS_TFPCUSTOMDRAWFONT:
	.long	60,-60
	.long	_VMT_FPCANVAS_TFPCUSTOMFONT
	.long	_$FPCANVAS$_Ld69
	.long	0,0
	.long	_$FPCANVAS$_Ld70
	.long	_RTTI_FPCANVAS_TFPCUSTOMDRAWFONT
	.long	0,0,0,0
	.long	_FPCANVAS_TFPCANVASHELPER_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETALLOCATED$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFLAGS$LONGINT$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETFLAGS$LONGINT$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__DOALLOCATERESOURCES
	.long	_FPCANVAS_TFPCANVASHELPER_$__DODEALLOCATERESOURCES
	.long	_FPCANVAS_TFPCUSTOMFONT_$__DOCOPYPROPS$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFPCOLOR$TFPCOLOR
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGING
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGED
	.long	_FPCANVAS_TFPCANVASHELPER_$__CREATE$$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCUSTOMFONT_$__SETNAME$ANSISTRING
	.long	_FPCANVAS_TFPCUSTOMFONT_$__SETSIZE$LONGINT
	.long	_FPCANVAS_TFPCUSTOMFONT_$__SETORIENTATION$LONGINT
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld72
_$FPCANVAS$_Ld72:
	.byte	12
	.ascii	"TFPEmptyFont"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TFPEMPTYFONT
_VMT_FPCANVAS_TFPEMPTYFONT:
	.long	60,-60
	.long	_VMT_FPCANVAS_TFPCUSTOMFONT
	.long	_$FPCANVAS$_Ld72
	.long	0,0
	.long	_$FPCANVAS$_Ld73
	.long	_RTTI_FPCANVAS_TFPEMPTYFONT
	.long	0,0,0,0
	.long	_FPCANVAS_TFPCANVASHELPER_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETALLOCATED$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFLAGS$LONGINT$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETFLAGS$LONGINT$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__DOALLOCATERESOURCES
	.long	_FPCANVAS_TFPCANVASHELPER_$__DODEALLOCATERESOURCES
	.long	_FPCANVAS_TFPCUSTOMFONT_$__DOCOPYPROPS$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFPCOLOR$TFPCOLOR
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGING
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGED
	.long	_FPCANVAS_TFPCANVASHELPER_$__CREATE$$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCUSTOMFONT_$__SETNAME$ANSISTRING
	.long	_FPCANVAS_TFPCUSTOMFONT_$__SETSIZE$LONGINT
	.long	_FPCANVAS_TFPCUSTOMFONT_$__SETORIENTATION$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld75
_$FPCANVAS$_Ld75:
	.byte	16
	.ascii	"TFPCustomDrawPen"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TFPCUSTOMDRAWPEN
_VMT_FPCANVAS_TFPCUSTOMDRAWPEN:
	.long	72,-72
	.long	_VMT_FPCANVAS_TFPCUSTOMPEN
	.long	_$FPCANVAS$_Ld75
	.long	0,0
	.long	_$FPCANVAS$_Ld76
	.long	_RTTI_FPCANVAS_TFPCUSTOMDRAWPEN
	.long	0,0,0,0
	.long	_FPCANVAS_TFPCANVASHELPER_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETALLOCATED$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFLAGS$LONGINT$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETFLAGS$LONGINT$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__DOALLOCATERESOURCES
	.long	_FPCANVAS_TFPCANVASHELPER_$__DODEALLOCATERESOURCES
	.long	_FPCANVAS_TFPCUSTOMPEN_$__DOCOPYPROPS$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFPCOLOR$TFPCOLOR
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGING
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGED
	.long	_FPCANVAS_TFPCANVASHELPER_$__CREATE$$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETMODE$TFPPENMODE
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETWIDTH$LONGINT
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETSTYLE$TFPPENSTYLE
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETPATTERN$LONGWORD
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETENDCAP$TFPPENENDCAP
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETJOINSTYLE$TFPPENJOINSTYLE
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld78
_$FPCANVAS$_Ld78:
	.byte	11
	.ascii	"TFPEmptyPen"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TFPEMPTYPEN
_VMT_FPCANVAS_TFPEMPTYPEN:
	.long	72,-72
	.long	_VMT_FPCANVAS_TFPCUSTOMPEN
	.long	_$FPCANVAS$_Ld78
	.long	0,0
	.long	_$FPCANVAS$_Ld79
	.long	_RTTI_FPCANVAS_TFPEMPTYPEN
	.long	0,0,0,0
	.long	_FPCANVAS_TFPCANVASHELPER_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETALLOCATED$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFLAGS$LONGINT$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETFLAGS$LONGINT$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__DOALLOCATERESOURCES
	.long	_FPCANVAS_TFPCANVASHELPER_$__DODEALLOCATERESOURCES
	.long	_FPCANVAS_TFPCUSTOMPEN_$__DOCOPYPROPS$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFPCOLOR$TFPCOLOR
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGING
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGED
	.long	_FPCANVAS_TFPCANVASHELPER_$__CREATE$$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETMODE$TFPPENMODE
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETWIDTH$LONGINT
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETSTYLE$TFPPENSTYLE
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETPATTERN$LONGWORD
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETENDCAP$TFPPENENDCAP
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETJOINSTYLE$TFPPENJOINSTYLE
	.long	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld81
_$FPCANVAS$_Ld81:
	.byte	18
	.ascii	"TFPCustomDrawBrush"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TFPCUSTOMDRAWBRUSH
_VMT_FPCANVAS_TFPCUSTOMDRAWBRUSH:
	.long	184,-184
	.long	_VMT_FPCANVAS_TFPCUSTOMBRUSH
	.long	_$FPCANVAS$_Ld81
	.long	0,0
	.long	_$FPCANVAS$_Ld82
	.long	_RTTI_FPCANVAS_TFPCUSTOMDRAWBRUSH
	.long	0,0,0,0
	.long	_FPCANVAS_TFPCANVASHELPER_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETALLOCATED$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFLAGS$LONGINT$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETFLAGS$LONGINT$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__DOALLOCATERESOURCES
	.long	_FPCANVAS_TFPCANVASHELPER_$__DODEALLOCATERESOURCES
	.long	_FPCANVAS_TFPCUSTOMBRUSH_$__DOCOPYPROPS$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFPCOLOR$TFPCOLOR
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGING
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGED
	.long	_FPCANVAS_TFPCANVASHELPER_$__CREATE$$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCUSTOMBRUSH_$__SETSTYLE$TFPBRUSHSTYLE
	.long	_FPCANVAS_TFPCUSTOMBRUSH_$__SETIMAGE$TFPCUSTOMIMAGE
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld84
_$FPCANVAS$_Ld84:
	.byte	13
	.ascii	"TFPEmptyBrush"

.const_data
	.align 2
.globl	_VMT_FPCANVAS_TFPEMPTYBRUSH
_VMT_FPCANVAS_TFPEMPTYBRUSH:
	.long	184,-184
	.long	_VMT_FPCANVAS_TFPCUSTOMBRUSH
	.long	_$FPCANVAS$_Ld84
	.long	0,0
	.long	_$FPCANVAS$_Ld85
	.long	_RTTI_FPCANVAS_TFPEMPTYBRUSH
	.long	0,0,0,0
	.long	_FPCANVAS_TFPCANVASHELPER_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETALLOCATED$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFLAGS$LONGINT$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETFLAGS$LONGINT$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__DOALLOCATERESOURCES
	.long	_FPCANVAS_TFPCANVASHELPER_$__DODEALLOCATERESOURCES
	.long	_FPCANVAS_TFPCUSTOMBRUSH_$__DOCOPYPROPS$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFPCOLOR$TFPCOLOR
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGING
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGED
	.long	_FPCANVAS_TFPCANVASHELPER_$__CREATE$$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCUSTOMBRUSH_$__SETSTYLE$TFPBRUSHSTYLE
	.long	_FPCANVAS_TFPCUSTOMBRUSH_$__SETIMAGE$TFPCUSTOMIMAGE
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPCANVAS
_THREADVARLIST_FPCANVAS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld2
_$FPCANVAS$_Ld2:
	.short	0,1
	.long	0,-1,7
.reference _$FPCANVAS$_Ld1
.globl	_$FPCANVAS$_Ld1
_$FPCANVAS$_Ld1:
.reference _$FPCANVAS$_Ld2
	.ascii	"may not\000"

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld4
_$FPCANVAS$_Ld4:
	.short	0,1
	.long	0,-1,4
.reference _$FPCANVAS$_Ld3
.globl	_$FPCANVAS$_Ld3
_$FPCANVAS$_Ld3:
.reference _$FPCANVAS$_Ld4
	.ascii	"must\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_FPCANVAS_ERRALLOC
_TC_FPCANVAS_ERRALLOC:
	.long	_$FPCANVAS$_Ld1
	.long	_$FPCANVAS$_Ld3

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld6
_$FPCANVAS$_Ld6:
	.short	0,1
	.long	0,-1,4
.reference _$FPCANVAS$_Ld5
.globl	_$FPCANVAS$_Ld5
_$FPCANVAS$_Ld5:
.reference _$FPCANVAS$_Ld6
	.ascii	"Font\000"

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld8
_$FPCANVAS$_Ld8:
	.short	0,1
	.long	0,-1,19
.reference _$FPCANVAS$_Ld7
.globl	_$FPCANVAS$_Ld7
_$FPCANVAS$_Ld7:
.reference _$FPCANVAS$_Ld8
	.ascii	"%s %s be allocated.\000"

.const
	.align 2
.globl	_$FPCANVAS$_Ld9
_$FPCANVAS$_Ld9:
	.byte	0,0,0,0,0,0,0,64

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld11
_$FPCANVAS$_Ld11:
	.short	0,1
	.long	0,-1,43
.reference _$FPCANVAS$_Ld10
.globl	_$FPCANVAS$_Ld10
_$FPCANVAS$_Ld10:
.reference _$FPCANVAS$_Ld11
	.ascii	"TFPBase2Interpolation.Execute inconsistency\000"

.const
	.align 2
.globl	_$FPCANVAS$_Ld12
_$FPCANVAS$_Ld12:
	.byte	0,0,0,0,0,0,0,192

.const
	.align 2
.globl	_$FPCANVAS$_Ld13
_$FPCANVAS$_Ld13:
	.byte	0,0,0,0,0,0,240,191

.const
	.align 2
.globl	_$FPCANVAS$_Ld14
_$FPCANVAS$_Ld14:
	.byte	28,199,113,28,199,113,252,63

.const
	.align 2
.globl	_$FPCANVAS$_Ld15
_$FPCANVAS$_Ld15:
	.byte	171,170,170,170,170,170,10,192

.const
	.align 2
.globl	_$FPCANVAS$_Ld16
_$FPCANVAS$_Ld16:
	.byte	57,142,227,56,142,227,216,191

.const
	.align 2
.globl	_$FPCANVAS$_Ld17
_$FPCANVAS$_Ld17:
	.byte	28,199,113,28,199,113,236,63

.const
	.align 2
.globl	_$FPCANVAS$_Ld18
_$FPCANVAS$_Ld18:
	.byte	171,170,170,170,170,170,242,63

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld20
_$FPCANVAS$_Ld20:
	.short	0,1
	.long	0,-1,22
.reference _$FPCANVAS$_Ld19
.globl	_$FPCANVAS$_Ld19
_$FPCANVAS$_Ld19:
.reference _$FPCANVAS$_Ld20
	.ascii	"Could not create a %s.\000"

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld22
_$FPCANVAS$_Ld22:
	.short	0,1
	.long	0,-1,3
.reference _$FPCANVAS$_Ld21
.globl	_$FPCANVAS$_Ld21
_$FPCANVAS$_Ld21:
.reference _$FPCANVAS$_Ld22
	.ascii	"Pen\000"

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld24
_$FPCANVAS$_Ld24:
	.short	0,1
	.long	0,-1,5
.reference _$FPCANVAS$_Ld23
.globl	_$FPCANVAS$_Ld23
_$FPCANVAS$_Ld23:
.reference _$FPCANVAS$_Ld24
	.ascii	"Brush\000"

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld26
_$FPCANVAS$_Ld26:
	.short	0,1
	.long	0,-1,18
.reference _$FPCANVAS$_Ld25
.globl	_$FPCANVAS$_Ld25
_$FPCANVAS$_Ld25:
.reference _$FPCANVAS$_Ld26
	.ascii	"Canvas not locked.\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_DECRECT$TRECT$LONGINT$stub:
.indirect_symbol _FPCANVAS_DECRECT$TRECT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_INCRECT$TRECT$LONGINT$stub:
.indirect_symbol _FPCANVAS_INCRECT$TRECT$LONGINT
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

L_FPCANVAS_TFPCANVASHELPER_$__DEALLOCATERESOURCES$stub:
.indirect_symbol _FPCANVAS_TFPCANVASHELPER_$__DEALLOCATERESOURCES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TPERSISTENT_$__DESTROY$stub:
.indirect_symbol _CLASSES_TPERSISTENT_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCANVASHELPER_$_CHECKALLOCATED$BOOLEAN_RAISEERRALLOCATION$stub:
.indirect_symbol _FPCANVAS_TFPCANVASHELPER_$_CHECKALLOCATED$BOOLEAN_RAISEERRALLOCATION
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

L_FPCANVAS_TFPCANVASHELPER_$__NOTIFYCANVAS$stub:
.indirect_symbol _FPCANVAS_TFPCANVASHELPER_$__NOTIFYCANVAS
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

Lfpc_do_as$stub:
.indirect_symbol fpc_do_as
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

L_FPCANVAS_TFPCUSTOMCANVAS_$__GETTEXTHEIGHT$ANSISTRING$$LONGINT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__GETTEXTHEIGHT$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__GETTEXTWIDTH$ANSISTRING$$LONGINT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__GETTEXTWIDTH$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCANVASHELPER_$__DOCOPYPROPS$TFPCANVASHELPER$stub:
.indirect_symbol _FPCANVAS_TFPCANVASHELPER_$__DOCOPYPROPS$TFPCANVASHELPER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPBASEINTERPOLATION_$_CREATEPIXELWEIGHTS$crc48DF19DC_SETSUPPORT$LONGINT$stub:
.indirect_symbol _FPCANVAS_TFPBASEINTERPOLATION_$_CREATEPIXELWEIGHTS$crc48DF19DC_SETSUPPORT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_FLOOR$EXTENDED$$LONGINT$stub:
.indirect_symbol _MATH_FLOOR$EXTENDED$$LONGINT
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

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPBASEINTERPOLATION_$__CREATEPIXELWEIGHTS$LONGINT$LONGINT$POINTER$LONGINT$LONGINT$stub:
.indirect_symbol _FPCANVAS_TFPBASEINTERPOLATION_$__CREATEPIXELWEIGHTS$LONGINT$LONGINT$POINTER$LONGINT$LONGINT
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

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR
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

L_CLASSES_TLIST_$__CREATE$$TLIST$stub:
.indirect_symbol _CLASSES_TLIST_$__CREATE$$TLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEDEFAULTFONT$$TFPCUSTOMFONT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__CREATEDEFAULTFONT$$TFPCUSTOMFONT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEDEFAULTPEN$$TFPCUSTOMPEN$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__CREATEDEFAULTPEN$$TFPCUSTOMPEN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__CREATEDEFAULTBRUSH$$TFPCUSTOMBRUSH$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__CREATEDEFAULTBRUSH$$TFPCUSTOMBRUSH
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

L_FPCANVAS_TFPCUSTOMCANVAS_$__REMOVEHELPERS$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__REMOVEHELPERS
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

L_CLASSES_TLIST_$__REMOVE$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__REMOVE$POINTER$$LONGINT
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

L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CLASSES_TLIST_$__GET$LONGINT$$POINTER
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

L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__ADD$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCANVASHELPER_$__ALLOCATERESOURCES$TFPCUSTOMCANVAS$BOOLEAN$stub:
.indirect_symbol _FPCANVAS_TFPCANVASHELPER_$__ALLOCATERESOURCES$TFPCUSTOMCANVAS$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPES_BOUNDS$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub:
.indirect_symbol _TYPES_BOUNDS$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT
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

L_FPCANVAS_TFPCUSTOMCANVAS_$__ALLOWFONT$TFPCUSTOMFONT$$BOOLEAN$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__ALLOWFONT$TFPCUSTOMFONT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__ADDHELPER$TFPCANVASHELPER$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__ADDHELPER$TFPCANVASHELPER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__ALLOWBRUSH$TFPCUSTOMBRUSH$$BOOLEAN$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__ALLOWBRUSH$TFPCUSTOMBRUSH$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__ALLOWPEN$TFPCUSTOMPEN$$BOOLEAN$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__ALLOWPEN$TFPCUSTOMPEN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__GETFONT$$TFPCUSTOMFONT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__GETFONT$$TFPCUSTOMFONT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMDRAWFONT_$__DRAWTEXT$LONGINT$LONGINT$ANSISTRING$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMDRAWFONT_$__DRAWTEXT$LONGINT$LONGINT$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMDRAWFONT_$__GETTEXTSIZE$ANSISTRING$LONGINT$LONGINT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMDRAWFONT_$__GETTEXTSIZE$ANSISTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__GETTEXTSIZE$ANSISTRING$LONGINT$LONGINT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__GETTEXTSIZE$ANSISTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMDRAWFONT_$__GETTEXTHEIGHT$ANSISTRING$$LONGINT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMDRAWFONT_$__GETTEXTHEIGHT$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMDRAWFONT_$__GETTEXTWIDTH$ANSISTRING$$LONGINT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMDRAWFONT_$__GETTEXTWIDTH$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMDRAWPEN_$__DRAWLINE$LONGINT$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMDRAWPEN_$__DRAWLINE$LONGINT$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__LINETO$LONGINT$LONGINT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__LINETO$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__LINE$LONGINT$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__LINE$LONGINT$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMDRAWPEN_$__POLYLINE$array_of_TPOINT$BOOLEAN$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMDRAWPEN_$__POLYLINE$array_of_TPOINT$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMDRAWBRUSH_$__RECTANGLE$LONGINT$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMDRAWBRUSH_$__RECTANGLE$LONGINT$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub:
.indirect_symbol _TYPES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMDRAWPEN_$__ELLIPSE$LONGINT$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMDRAWPEN_$__ELLIPSE$LONGINT$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMDRAWBRUSH_$__ELLIPSE$LONGINT$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMDRAWBRUSH_$__ELLIPSE$LONGINT$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMDRAWPEN_$__RECTANGLE$LONGINT$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMDRAWPEN_$__RECTANGLE$LONGINT$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMDRAWBRUSH_$__FLOODFILL$LONGINT$LONGINT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMDRAWBRUSH_$__FLOODFILL$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMDRAWBRUSH_$__POLYGON$array_of_TPOINT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMDRAWBRUSH_$__POLYGON$array_of_TPOINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLIPPING_SORTRECT$TRECT$stub:
.indirect_symbol _CLIPPING_SORTRECT$TRECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLIPPING_CHECKRECTCLIPPING$TRECT$LONGINT$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _CLIPPING_CHECKRECTCLIPPING$TRECT$LONGINT$LONGINT$LONGINT$LONGINT
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
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.const_data
	.align 2
.globl	_INIT_FPCANVAS_PPOINT
_INIT_FPCANVAS_PPOINT:
	.byte	0
	.ascii	"\006PPoint"

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_PPOINT
_RTTI_FPCANVAS_PPOINT:
	.byte	0
	.ascii	"\006PPoint"

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld28
_$FPCANVAS$_Ld28:
	.short	0
	.long	_$FPCANVAS$_Ld29
	.align 2
.globl	_$FPCANVAS$_Ld29
_$FPCANVAS$_Ld29:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPCANVASEXCEPTION
_INIT_FPCANVAS_TFPCANVASEXCEPTION:
	.byte	15,18
	.ascii	"TFPCanvasException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPCANVASEXCEPTION
_RTTI_FPCANVAS_TFPCANVASEXCEPTION:
	.byte	15,18
	.ascii	"TFPCanvasException"
	.long	_VMT_FPCANVAS_TFPCANVASEXCEPTION
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld31
_$FPCANVAS$_Ld31:
	.short	0
	.long	_$FPCANVAS$_Ld32
	.align 2
.globl	_$FPCANVAS$_Ld32
_$FPCANVAS$_Ld32:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPPENEXCEPTION
_INIT_FPCANVAS_TFPPENEXCEPTION:
	.byte	15,15
	.ascii	"TFPPenException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPPENEXCEPTION
_RTTI_FPCANVAS_TFPPENEXCEPTION:
	.byte	15,15
	.ascii	"TFPPenException"
	.long	_VMT_FPCANVAS_TFPPENEXCEPTION
	.long	_RTTI_FPCANVAS_TFPCANVASEXCEPTION
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld34
_$FPCANVAS$_Ld34:
	.short	0
	.long	_$FPCANVAS$_Ld35
	.align 2
.globl	_$FPCANVAS$_Ld35
_$FPCANVAS$_Ld35:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPBRUSHEXCEPTION
_INIT_FPCANVAS_TFPBRUSHEXCEPTION:
	.byte	15,17
	.ascii	"TFPBrushException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPBRUSHEXCEPTION
_RTTI_FPCANVAS_TFPBRUSHEXCEPTION:
	.byte	15,17
	.ascii	"TFPBrushException"
	.long	_VMT_FPCANVAS_TFPBRUSHEXCEPTION
	.long	_RTTI_FPCANVAS_TFPCANVASEXCEPTION
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld37
_$FPCANVAS$_Ld37:
	.short	0
	.long	_$FPCANVAS$_Ld38
	.align 2
.globl	_$FPCANVAS$_Ld38
_$FPCANVAS$_Ld38:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPFONTEXCEPTION
_INIT_FPCANVAS_TFPFONTEXCEPTION:
	.byte	15,16
	.ascii	"TFPFontException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPFONTEXCEPTION
_RTTI_FPCANVAS_TFPFONTEXCEPTION:
	.byte	15,16
	.ascii	"TFPFontException"
	.long	_VMT_FPCANVAS_TFPFONTEXCEPTION
	.long	_RTTI_FPCANVAS_TFPCANVASEXCEPTION
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld40
_$FPCANVAS$_Ld40:
	.short	0
	.long	_$FPCANVAS$_Ld41
	.align 2
.globl	_$FPCANVAS$_Ld41
_$FPCANVAS$_Ld41:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPCUSTOMCANVAS
_INIT_FPCANVAS_TFPCUSTOMCANVAS:
	.byte	15,15
	.ascii	"TFPCustomCanvas"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPCUSTOMCANVAS
_RTTI_FPCANVAS_TFPCUSTOMCANVAS:
	.byte	15,15
	.ascii	"TFPCustomCanvas"
	.long	_VMT_FPCANVAS_TFPCUSTOMCANVAS
	.long	_RTTI_CLASSES_TPERSISTENT
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld43
_$FPCANVAS$_Ld43:
	.short	0
	.long	_$FPCANVAS$_Ld44
	.align 2
.globl	_$FPCANVAS$_Ld44
_$FPCANVAS$_Ld44:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPCANVASHELPER
_INIT_FPCANVAS_TFPCANVASHELPER:
	.byte	15,15
	.ascii	"TFPCanvasHelper"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPCANVASHELPER
_RTTI_FPCANVAS_TFPCANVASHELPER:
	.byte	15,15
	.ascii	"TFPCanvasHelper"
	.long	_VMT_FPCANVAS_TFPCANVASHELPER
	.long	_RTTI_CLASSES_TPERSISTENT
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld46
_$FPCANVAS$_Ld46:
	.short	0
	.long	_$FPCANVAS$_Ld47
	.align 2
.globl	_$FPCANVAS$_Ld47
_$FPCANVAS$_Ld47:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPCUSTOMFONT
_INIT_FPCANVAS_TFPCUSTOMFONT:
	.byte	15,13
	.ascii	"TFPCustomFont"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	48

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPCUSTOMFONT
_RTTI_FPCANVAS_TFPCUSTOMFONT:
	.byte	15,13
	.ascii	"TFPCustomFont"
	.long	_VMT_FPCANVAS_TFPCUSTOMFONT
	.long	_RTTI_FPCANVAS_TFPCANVASHELPER
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPCUSTOMFONTCLASS
_INIT_FPCANVAS_TFPCUSTOMFONTCLASS:
	.byte	0
	.ascii	"\022TFPCustomFontClass"

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPCUSTOMFONTCLASS
_RTTI_FPCANVAS_TFPCUSTOMFONTCLASS:
	.byte	0
	.ascii	"\022TFPCustomFontClass"

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPPENSTYLE
_INIT_FPCANVAS_TFPPENSTYLE:
	.byte	3,11
	.ascii	"TFPPenStyle"
	.byte	5
	.long	0,7,0
	.byte	7
	.ascii	"psSolid"
	.byte	6
	.ascii	"psDash"
	.byte	5
	.ascii	"psDot"
	.byte	9
	.ascii	"psDashDot"
	.byte	12
	.ascii	"psDashDotDot"
	.byte	13
	.ascii	"psinsideFrame"
	.byte	9
	.ascii	"psPattern"
	.byte	7
	.ascii	"psClear"
	.byte	8
	.ascii	"FPCanvas"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPPENSTYLE
_RTTI_FPCANVAS_TFPPENSTYLE:
	.byte	3,11
	.ascii	"TFPPenStyle"
	.byte	5
	.long	0,7,0
	.byte	7
	.ascii	"psSolid"
	.byte	6
	.ascii	"psDash"
	.byte	5
	.ascii	"psDot"
	.byte	9
	.ascii	"psDashDot"
	.byte	12
	.ascii	"psDashDotDot"
	.byte	13
	.ascii	"psinsideFrame"
	.byte	9
	.ascii	"psPattern"
	.byte	7
	.ascii	"psClear"
	.byte	8
	.ascii	"FPCanvas"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPPENSTYLE_s2o
_RTTI_FPCANVAS_TFPPENSTYLE_s2o:
	.long	8,7
	.long	_RTTI_FPCANVAS_TFPPENSTYLE+94
	.long	1
	.long	_RTTI_FPCANVAS_TFPPENSTYLE+34
	.long	3
	.long	_RTTI_FPCANVAS_TFPPENSTYLE+47
	.long	4
	.long	_RTTI_FPCANVAS_TFPPENSTYLE+57
	.long	2
	.long	_RTTI_FPCANVAS_TFPPENSTYLE+41
	.long	5
	.long	_RTTI_FPCANVAS_TFPPENSTYLE+70
	.long	6
	.long	_RTTI_FPCANVAS_TFPPENSTYLE+84
	.long	0
	.long	_RTTI_FPCANVAS_TFPPENSTYLE+26

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPPENSTYLE_o2s
_RTTI_FPCANVAS_TFPPENSTYLE_o2s:
	.long	0
	.long	_RTTI_FPCANVAS_TFPPENSTYLE+26
	.long	_RTTI_FPCANVAS_TFPPENSTYLE+34
	.long	_RTTI_FPCANVAS_TFPPENSTYLE+41
	.long	_RTTI_FPCANVAS_TFPPENSTYLE+47
	.long	_RTTI_FPCANVAS_TFPPENSTYLE+57
	.long	_RTTI_FPCANVAS_TFPPENSTYLE+70
	.long	_RTTI_FPCANVAS_TFPPENSTYLE+84
	.long	_RTTI_FPCANVAS_TFPPENSTYLE+94

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPPENSTYLESET
_INIT_FPCANVAS_TFPPENSTYLESET:
	.byte	5,14
	.ascii	"TFPPenStyleSet"
	.byte	5
	.long	_INIT_FPCANVAS_TFPPENSTYLE

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPPENSTYLESET
_RTTI_FPCANVAS_TFPPENSTYLESET:
	.byte	5,14
	.ascii	"TFPPenStyleSet"
	.byte	5
	.long	_RTTI_FPCANVAS_TFPPENSTYLE

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPPENMODE
_INIT_FPCANVAS_TFPPENMODE:
	.byte	3,10
	.ascii	"TFPPenMode"
	.byte	5
	.long	0,15,0
	.byte	7
	.ascii	"pmBlack"
	.byte	7
	.ascii	"pmWhite"
	.byte	5
	.ascii	"pmNop"
	.byte	5
	.ascii	"pmNot"
	.byte	6
	.ascii	"pmCopy"
	.byte	9
	.ascii	"pmNotCopy"
	.byte	13
	.ascii	"pmMergePenNot"
	.byte	12
	.ascii	"pmMaskPenNot"
	.byte	13
	.ascii	"pmMergeNotPen"
	.byte	12
	.ascii	"pmMaskNotPen"
	.byte	7
	.ascii	"pmMerge"
	.byte	10
	.ascii	"pmNotMerge"
	.byte	6
	.ascii	"pmMask"
	.byte	9
	.ascii	"pmNotMask"
	.byte	5
	.ascii	"pmXor"
	.byte	8
	.ascii	"pmNotXor"
	.byte	8
	.ascii	"FPCanvas"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPPENMODE
_RTTI_FPCANVAS_TFPPENMODE:
	.byte	3,10
	.ascii	"TFPPenMode"
	.byte	5
	.long	0,15,0
	.byte	7
	.ascii	"pmBlack"
	.byte	7
	.ascii	"pmWhite"
	.byte	5
	.ascii	"pmNop"
	.byte	5
	.ascii	"pmNot"
	.byte	6
	.ascii	"pmCopy"
	.byte	9
	.ascii	"pmNotCopy"
	.byte	13
	.ascii	"pmMergePenNot"
	.byte	12
	.ascii	"pmMaskPenNot"
	.byte	13
	.ascii	"pmMergeNotPen"
	.byte	12
	.ascii	"pmMaskNotPen"
	.byte	7
	.ascii	"pmMerge"
	.byte	10
	.ascii	"pmNotMerge"
	.byte	6
	.ascii	"pmMask"
	.byte	9
	.ascii	"pmNotMask"
	.byte	5
	.ascii	"pmXor"
	.byte	8
	.ascii	"pmNotXor"
	.byte	8
	.ascii	"FPCanvas"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPPENMODE_s2o
_RTTI_FPCANVAS_TFPPENMODE_s2o:
	.long	16,0
	.long	_RTTI_FPCANVAS_TFPPENMODE+25
	.long	4
	.long	_RTTI_FPCANVAS_TFPPENMODE+53
	.long	12
	.long	_RTTI_FPCANVAS_TFPPENMODE+143
	.long	9
	.long	_RTTI_FPCANVAS_TFPPENMODE+111
	.long	7
	.long	_RTTI_FPCANVAS_TFPPENMODE+84
	.long	10
	.long	_RTTI_FPCANVAS_TFPPENMODE+124
	.long	8
	.long	_RTTI_FPCANVAS_TFPPENMODE+97
	.long	6
	.long	_RTTI_FPCANVAS_TFPPENMODE+70
	.long	2
	.long	_RTTI_FPCANVAS_TFPPENMODE+41
	.long	3
	.long	_RTTI_FPCANVAS_TFPPENMODE+47
	.long	5
	.long	_RTTI_FPCANVAS_TFPPENMODE+60
	.long	13
	.long	_RTTI_FPCANVAS_TFPPENMODE+150
	.long	11
	.long	_RTTI_FPCANVAS_TFPPENMODE+132
	.long	15
	.long	_RTTI_FPCANVAS_TFPPENMODE+166
	.long	1
	.long	_RTTI_FPCANVAS_TFPPENMODE+33
	.long	14
	.long	_RTTI_FPCANVAS_TFPPENMODE+160

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPPENMODE_o2s
_RTTI_FPCANVAS_TFPPENMODE_o2s:
	.long	0
	.long	_RTTI_FPCANVAS_TFPPENMODE+25
	.long	_RTTI_FPCANVAS_TFPPENMODE+33
	.long	_RTTI_FPCANVAS_TFPPENMODE+41
	.long	_RTTI_FPCANVAS_TFPPENMODE+47
	.long	_RTTI_FPCANVAS_TFPPENMODE+53
	.long	_RTTI_FPCANVAS_TFPPENMODE+60
	.long	_RTTI_FPCANVAS_TFPPENMODE+70
	.long	_RTTI_FPCANVAS_TFPPENMODE+84
	.long	_RTTI_FPCANVAS_TFPPENMODE+97
	.long	_RTTI_FPCANVAS_TFPPENMODE+111
	.long	_RTTI_FPCANVAS_TFPPENMODE+124
	.long	_RTTI_FPCANVAS_TFPPENMODE+132
	.long	_RTTI_FPCANVAS_TFPPENMODE+143
	.long	_RTTI_FPCANVAS_TFPPENMODE+150
	.long	_RTTI_FPCANVAS_TFPPENMODE+160
	.long	_RTTI_FPCANVAS_TFPPENMODE+166

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPPENENDCAP
_INIT_FPCANVAS_TFPPENENDCAP:
	.byte	3,12
	.ascii	"TFPPenEndCap"
	.byte	5
	.long	0,2,0
	.byte	8
	.ascii	"pecRound"
	.byte	9
	.ascii	"pecSquare"
	.byte	7
	.ascii	"pecFlat"
	.byte	8
	.ascii	"FPCanvas"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPPENENDCAP
_RTTI_FPCANVAS_TFPPENENDCAP:
	.byte	3,12
	.ascii	"TFPPenEndCap"
	.byte	5
	.long	0,2,0
	.byte	8
	.ascii	"pecRound"
	.byte	9
	.ascii	"pecSquare"
	.byte	7
	.ascii	"pecFlat"
	.byte	8
	.ascii	"FPCanvas"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPPENENDCAP_s2o
_RTTI_FPCANVAS_TFPPENENDCAP_s2o:
	.long	3,2
	.long	_RTTI_FPCANVAS_TFPPENENDCAP+46
	.long	0
	.long	_RTTI_FPCANVAS_TFPPENENDCAP+27
	.long	1
	.long	_RTTI_FPCANVAS_TFPPENENDCAP+36

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPPENENDCAP_o2s
_RTTI_FPCANVAS_TFPPENENDCAP_o2s:
	.long	0
	.long	_RTTI_FPCANVAS_TFPPENENDCAP+27
	.long	_RTTI_FPCANVAS_TFPPENENDCAP+36
	.long	_RTTI_FPCANVAS_TFPPENENDCAP+46

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPPENJOINSTYLE
_INIT_FPCANVAS_TFPPENJOINSTYLE:
	.byte	3,15
	.ascii	"TFPPenJoinStyle"
	.byte	5
	.long	0,2,0
	.byte	8
	.ascii	"pjsRound"
	.byte	8
	.ascii	"pjsBevel"
	.byte	8
	.ascii	"pjsMiter"
	.byte	8
	.ascii	"FPCanvas"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPPENJOINSTYLE
_RTTI_FPCANVAS_TFPPENJOINSTYLE:
	.byte	3,15
	.ascii	"TFPPenJoinStyle"
	.byte	5
	.long	0,2,0
	.byte	8
	.ascii	"pjsRound"
	.byte	8
	.ascii	"pjsBevel"
	.byte	8
	.ascii	"pjsMiter"
	.byte	8
	.ascii	"FPCanvas"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPPENJOINSTYLE_s2o
_RTTI_FPCANVAS_TFPPENJOINSTYLE_s2o:
	.long	3,1
	.long	_RTTI_FPCANVAS_TFPPENJOINSTYLE+39
	.long	2
	.long	_RTTI_FPCANVAS_TFPPENJOINSTYLE+48
	.long	0
	.long	_RTTI_FPCANVAS_TFPPENJOINSTYLE+30

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPPENJOINSTYLE_o2s
_RTTI_FPCANVAS_TFPPENJOINSTYLE_o2s:
	.long	0
	.long	_RTTI_FPCANVAS_TFPPENJOINSTYLE+30
	.long	_RTTI_FPCANVAS_TFPPENJOINSTYLE+39
	.long	_RTTI_FPCANVAS_TFPPENJOINSTYLE+48

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld49
_$FPCANVAS$_Ld49:
	.short	0
	.long	_$FPCANVAS$_Ld50
	.align 2
.globl	_$FPCANVAS$_Ld50
_$FPCANVAS$_Ld50:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPCUSTOMPEN
_INIT_FPCANVAS_TFPCUSTOMPEN:
	.byte	15,12
	.ascii	"TFPCustomPen"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPCUSTOMPEN
_RTTI_FPCANVAS_TFPCUSTOMPEN:
	.byte	15,12
	.ascii	"TFPCustomPen"
	.long	_VMT_FPCANVAS_TFPCUSTOMPEN
	.long	_RTTI_FPCANVAS_TFPCANVASHELPER
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPCUSTOMPENCLASS
_INIT_FPCANVAS_TFPCUSTOMPENCLASS:
	.byte	0
	.ascii	"\021TFPCustomPenClass"

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPCUSTOMPENCLASS
_RTTI_FPCANVAS_TFPCUSTOMPENCLASS:
	.byte	0
	.ascii	"\021TFPCustomPenClass"

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPBRUSHSTYLE
_INIT_FPCANVAS_TFPBRUSHSTYLE:
	.byte	3,13
	.ascii	"TFPBrushStyle"
	.byte	5
	.long	0,9,0
	.byte	7
	.ascii	"bsSolid"
	.byte	7
	.ascii	"bsClear"
	.byte	12
	.ascii	"bsHorizontal"
	.byte	10
	.ascii	"bsVertical"
	.byte	11
	.ascii	"bsFDiagonal"
	.byte	11
	.ascii	"bsBDiagonal"
	.byte	7
	.ascii	"bsCross"
	.byte	11
	.ascii	"bsDiagCross"
	.byte	7
	.ascii	"bsImage"
	.byte	9
	.ascii	"bsPattern"
	.byte	8
	.ascii	"FPCanvas"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPBRUSHSTYLE
_RTTI_FPCANVAS_TFPBRUSHSTYLE:
	.byte	3,13
	.ascii	"TFPBrushStyle"
	.byte	5
	.long	0,9,0
	.byte	7
	.ascii	"bsSolid"
	.byte	7
	.ascii	"bsClear"
	.byte	12
	.ascii	"bsHorizontal"
	.byte	10
	.ascii	"bsVertical"
	.byte	11
	.ascii	"bsFDiagonal"
	.byte	11
	.ascii	"bsBDiagonal"
	.byte	7
	.ascii	"bsCross"
	.byte	11
	.ascii	"bsDiagCross"
	.byte	7
	.ascii	"bsImage"
	.byte	9
	.ascii	"bsPattern"
	.byte	8
	.ascii	"FPCanvas"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPBRUSHSTYLE_s2o
_RTTI_FPCANVAS_TFPBRUSHSTYLE_s2o:
	.long	10,5
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+80
	.long	1
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+36
	.long	6
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+92
	.long	7
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+100
	.long	4
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+68
	.long	2
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+44
	.long	8
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+112
	.long	9
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+120
	.long	0
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+28
	.long	3
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+57

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPBRUSHSTYLE_o2s
_RTTI_FPCANVAS_TFPBRUSHSTYLE_o2s:
	.long	0
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+28
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+36
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+44
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+57
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+68
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+80
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+92
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+100
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+112
	.long	_RTTI_FPCANVAS_TFPBRUSHSTYLE+120

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TBRUSHPATTERN
_INIT_FPCANVAS_TBRUSHPATTERN:
	.byte	12
	.ascii	"\015TBrushPattern"
	.long	4,32
	.long	_INIT_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TBRUSHPATTERN
_RTTI_FPCANVAS_TBRUSHPATTERN:
	.byte	12
	.ascii	"\015TBrushPattern"
	.long	4,32
	.long	_RTTI_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_INIT_FPCANVAS_PBRUSHPATTERN
_INIT_FPCANVAS_PBRUSHPATTERN:
	.byte	0
	.ascii	"\015PBrushPattern"

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_PBRUSHPATTERN
_RTTI_FPCANVAS_PBRUSHPATTERN:
	.byte	0
	.ascii	"\015PBrushPattern"

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld52
_$FPCANVAS$_Ld52:
	.short	0
	.long	_$FPCANVAS$_Ld53
	.align 2
.globl	_$FPCANVAS$_Ld53
_$FPCANVAS$_Ld53:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPCUSTOMBRUSH
_INIT_FPCANVAS_TFPCUSTOMBRUSH:
	.byte	15,14
	.ascii	"TFPCustomBrush"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPCUSTOMBRUSH
_RTTI_FPCANVAS_TFPCUSTOMBRUSH:
	.byte	15,14
	.ascii	"TFPCustomBrush"
	.long	_VMT_FPCANVAS_TFPCUSTOMBRUSH
	.long	_RTTI_FPCANVAS_TFPCANVASHELPER
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPCUSTOMBRUSHCLASS
_INIT_FPCANVAS_TFPCUSTOMBRUSHCLASS:
	.byte	0
	.ascii	"\023TFPCustomBrushClass"

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPCUSTOMBRUSHCLASS
_RTTI_FPCANVAS_TFPCUSTOMBRUSHCLASS:
	.byte	0
	.ascii	"\023TFPCustomBrushClass"

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld55
_$FPCANVAS$_Ld55:
	.short	0
	.long	_$FPCANVAS$_Ld56
	.align 2
.globl	_$FPCANVAS$_Ld56
_$FPCANVAS$_Ld56:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPCUSTOMINTERPOLATION
_INIT_FPCANVAS_TFPCUSTOMINTERPOLATION:
	.byte	15,22
	.ascii	"TFPCustomInterpolation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPCUSTOMINTERPOLATION
_RTTI_FPCANVAS_TFPCUSTOMINTERPOLATION:
	.byte	15,22
	.ascii	"TFPCustomInterpolation"
	.long	_VMT_FPCANVAS_TFPCUSTOMINTERPOLATION
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld58
_$FPCANVAS$_Ld58:
	.short	0
	.long	_$FPCANVAS$_Ld59
	.align 2
.globl	_$FPCANVAS$_Ld59
_$FPCANVAS$_Ld59:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPBASEINTERPOLATION
_INIT_FPCANVAS_TFPBASEINTERPOLATION:
	.byte	15,20
	.ascii	"TFPBaseInterpolation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPBASEINTERPOLATION
_RTTI_FPCANVAS_TFPBASEINTERPOLATION:
	.byte	15,20
	.ascii	"TFPBaseInterpolation"
	.long	_VMT_FPCANVAS_TFPBASEINTERPOLATION
	.long	_RTTI_FPCANVAS_TFPCUSTOMINTERPOLATION
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld61
_$FPCANVAS$_Ld61:
	.short	0
	.long	_$FPCANVAS$_Ld62
	.align 2
.globl	_$FPCANVAS$_Ld62
_$FPCANVAS$_Ld62:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TMITCHELINTERPOLATION
_INIT_FPCANVAS_TMITCHELINTERPOLATION:
	.byte	15,21
	.ascii	"TMitchelInterpolation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TMITCHELINTERPOLATION
_RTTI_FPCANVAS_TMITCHELINTERPOLATION:
	.byte	15,21
	.ascii	"TMitchelInterpolation"
	.long	_VMT_FPCANVAS_TMITCHELINTERPOLATION
	.long	_RTTI_FPCANVAS_TFPBASEINTERPOLATION
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld64
_$FPCANVAS$_Ld64:
	.short	0
	.long	_$FPCANVAS$_Ld65
	.align 2
.globl	_$FPCANVAS$_Ld65
_$FPCANVAS$_Ld65:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPCUSTOMREGION
_INIT_FPCANVAS_TFPCUSTOMREGION:
	.byte	15,15
	.ascii	"TFPCustomRegion"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPCUSTOMREGION
_RTTI_FPCANVAS_TFPCUSTOMREGION:
	.byte	15,15
	.ascii	"TFPCustomRegion"
	.long	_VMT_FPCANVAS_TFPCUSTOMREGION
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld67
_$FPCANVAS$_Ld67:
	.short	0
	.long	_$FPCANVAS$_Ld68
	.align 2
.globl	_$FPCANVAS$_Ld68
_$FPCANVAS$_Ld68:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPRECTREGION
_INIT_FPCANVAS_TFPRECTREGION:
	.byte	15,13
	.ascii	"TFPRectRegion"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPRECTREGION
_RTTI_FPCANVAS_TFPRECTREGION:
	.byte	15,13
	.ascii	"TFPRectRegion"
	.long	_VMT_FPCANVAS_TFPRECTREGION
	.long	_RTTI_FPCANVAS_TFPCUSTOMREGION
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld70
_$FPCANVAS$_Ld70:
	.short	0
	.long	_$FPCANVAS$_Ld71
	.align 2
.globl	_$FPCANVAS$_Ld71
_$FPCANVAS$_Ld71:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPCUSTOMDRAWFONT
_INIT_FPCANVAS_TFPCUSTOMDRAWFONT:
	.byte	15,17
	.ascii	"TFPCustomDrawFont"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPCUSTOMDRAWFONT
_RTTI_FPCANVAS_TFPCUSTOMDRAWFONT:
	.byte	15,17
	.ascii	"TFPCustomDrawFont"
	.long	_VMT_FPCANVAS_TFPCUSTOMDRAWFONT
	.long	_RTTI_FPCANVAS_TFPCUSTOMFONT
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld73
_$FPCANVAS$_Ld73:
	.short	0
	.long	_$FPCANVAS$_Ld74
	.align 2
.globl	_$FPCANVAS$_Ld74
_$FPCANVAS$_Ld74:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPEMPTYFONT
_INIT_FPCANVAS_TFPEMPTYFONT:
	.byte	15,12
	.ascii	"TFPEmptyFont"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPEMPTYFONT
_RTTI_FPCANVAS_TFPEMPTYFONT:
	.byte	15,12
	.ascii	"TFPEmptyFont"
	.long	_VMT_FPCANVAS_TFPEMPTYFONT
	.long	_RTTI_FPCANVAS_TFPCUSTOMFONT
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld76
_$FPCANVAS$_Ld76:
	.short	0
	.long	_$FPCANVAS$_Ld77
	.align 2
.globl	_$FPCANVAS$_Ld77
_$FPCANVAS$_Ld77:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPCUSTOMDRAWPEN
_INIT_FPCANVAS_TFPCUSTOMDRAWPEN:
	.byte	15,16
	.ascii	"TFPCustomDrawPen"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPCUSTOMDRAWPEN
_RTTI_FPCANVAS_TFPCUSTOMDRAWPEN:
	.byte	15,16
	.ascii	"TFPCustomDrawPen"
	.long	_VMT_FPCANVAS_TFPCUSTOMDRAWPEN
	.long	_RTTI_FPCANVAS_TFPCUSTOMPEN
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld79
_$FPCANVAS$_Ld79:
	.short	0
	.long	_$FPCANVAS$_Ld80
	.align 2
.globl	_$FPCANVAS$_Ld80
_$FPCANVAS$_Ld80:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPEMPTYPEN
_INIT_FPCANVAS_TFPEMPTYPEN:
	.byte	15,11
	.ascii	"TFPEmptyPen"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPEMPTYPEN
_RTTI_FPCANVAS_TFPEMPTYPEN:
	.byte	15,11
	.ascii	"TFPEmptyPen"
	.long	_VMT_FPCANVAS_TFPEMPTYPEN
	.long	_RTTI_FPCANVAS_TFPCUSTOMPEN
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld82
_$FPCANVAS$_Ld82:
	.short	0
	.long	_$FPCANVAS$_Ld83
	.align 2
.globl	_$FPCANVAS$_Ld83
_$FPCANVAS$_Ld83:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPCUSTOMDRAWBRUSH
_INIT_FPCANVAS_TFPCUSTOMDRAWBRUSH:
	.byte	15,18
	.ascii	"TFPCustomDrawBrush"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPCUSTOMDRAWBRUSH
_RTTI_FPCANVAS_TFPCUSTOMDRAWBRUSH:
	.byte	15,18
	.ascii	"TFPCustomDrawBrush"
	.long	_VMT_FPCANVAS_TFPCUSTOMDRAWBRUSH
	.long	_RTTI_FPCANVAS_TFPCUSTOMBRUSH
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_$FPCANVAS$_Ld85
_$FPCANVAS$_Ld85:
	.short	0
	.long	_$FPCANVAS$_Ld86
	.align 2
.globl	_$FPCANVAS$_Ld86
_$FPCANVAS$_Ld86:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_TFPEMPTYBRUSH
_INIT_FPCANVAS_TFPEMPTYBRUSH:
	.byte	15,13
	.ascii	"TFPEmptyBrush"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCANVAS_TFPEMPTYBRUSH
_RTTI_FPCANVAS_TFPEMPTYBRUSH:
	.byte	15,13
	.ascii	"TFPEmptyBrush"
	.long	_VMT_FPCANVAS_TFPEMPTYBRUSH
	.long	_RTTI_FPCANVAS_TFPCUSTOMBRUSH
	.short	0
	.byte	8
	.ascii	"FPCanvas"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCANVAS_DEF303
_INIT_FPCANVAS_DEF303:
	.byte	12
	.ascii	"\000"
	.long	4,2
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
L_$FPCANVAS$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPCANVAS$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPCANVAS_ERRALLOC$non_lazy_ptr:
.indirect_symbol _TC_FPCANVAS_ERRALLOC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCANVAS_TFPFONTEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_FPCANVAS_TFPFONTEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCANVAS$_Ld7$non_lazy_ptr:
.indirect_symbol _$FPCANVAS$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCANVAS_TFPCUSTOMFONT$non_lazy_ptr:
.indirect_symbol _VMT_FPCANVAS_TFPCUSTOMFONT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCANVAS_TFPCUSTOMDRAWFONT$non_lazy_ptr:
.indirect_symbol _VMT_FPCANVAS_TFPCUSTOMDRAWFONT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCANVAS_TFPCUSTOMPEN$non_lazy_ptr:
.indirect_symbol _VMT_FPCANVAS_TFPCUSTOMPEN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCANVAS_TFPCUSTOMBRUSH$non_lazy_ptr:
.indirect_symbol _VMT_FPCANVAS_TFPCUSTOMBRUSH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCANVAS$_Ld9$non_lazy_ptr:
.indirect_symbol _$FPCANVAS$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCANVAS$_Ld10$non_lazy_ptr:
.indirect_symbol _$FPCANVAS$_Ld10
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLTRANSPARENT$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLTRANSPARENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCANVAS$_Ld12$non_lazy_ptr:
.indirect_symbol _$FPCANVAS$_Ld12
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCANVAS$_Ld13$non_lazy_ptr:
.indirect_symbol _$FPCANVAS$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCANVAS$_Ld16$non_lazy_ptr:
.indirect_symbol _$FPCANVAS$_Ld16
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCANVAS$_Ld15$non_lazy_ptr:
.indirect_symbol _$FPCANVAS$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCANVAS$_Ld14$non_lazy_ptr:
.indirect_symbol _$FPCANVAS$_Ld14
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCANVAS$_Ld18$non_lazy_ptr:
.indirect_symbol _$FPCANVAS$_Ld18
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCANVAS$_Ld17$non_lazy_ptr:
.indirect_symbol _$FPCANVAS$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCANVAS_TFPCANVASEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_FPCANVAS_TFPCANVASEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCANVAS$_Ld19$non_lazy_ptr:
.indirect_symbol _$FPCANVAS$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCANVAS$_Ld21$non_lazy_ptr:
.indirect_symbol _$FPCANVAS$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCANVAS$_Ld23$non_lazy_ptr:
.indirect_symbol _$FPCANVAS$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCANVAS_TFPCUSTOMDRAWBRUSH$non_lazy_ptr:
.indirect_symbol _VMT_FPCANVAS_TFPCUSTOMDRAWBRUSH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCANVAS_TFPCUSTOMDRAWPEN$non_lazy_ptr:
.indirect_symbol _VMT_FPCANVAS_TFPCUSTOMDRAWPEN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCANVAS_TFPRECTREGION$non_lazy_ptr:
.indirect_symbol _VMT_FPCANVAS_TFPRECTREGION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCANVAS$_Ld25$non_lazy_ptr:
.indirect_symbol _$FPCANVAS$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCANVAS_TMITCHELINTERPOLATION$non_lazy_ptr:
.indirect_symbol _VMT_FPCANVAS_TMITCHELINTERPOLATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_FPCANVAS_DEF303$non_lazy_ptr:
.indirect_symbol _INIT_FPCANVAS_DEF303
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

