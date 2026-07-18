# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_ELLIPSES_TELLIPSEINFO_$__CREATE$$TELLIPSEINFO
_ELLIPSES_TELLIPSEINFO_$__CREATE$$TELLIPSEINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj5
	jmp	Lj6
Lj5:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj6:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj11
	jmp	Lj12
Lj11:
	jmp	Lj3
Lj12:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj15
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj19
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	-8(%ebp),%edx
	movl	%eax,76(%edx)
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	call	LFPC_RERAISE$stub
Lj20:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj34
	jmp	Lj33
Lj34:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj32
	jmp	Lj33
Lj32:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj33:
Lj15:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj17
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj38
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj39
	jmp	Lj40
Lj39:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj40:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj38:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj37
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj37:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj17
Lj17:
Lj3:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_TELLIPSEINFO_$__DESTROY
_ELLIPSES_TELLIPSEINFO_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj47
	jmp	Lj48
Lj47:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj48:
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__FREELIST$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj59
	jmp	Lj58
Lj59:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj57
	jmp	Lj58
Lj57:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj58:
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_TELLIPSEINFO_$__CLEARLIST
_ELLIPSES_TELLIPSEINFO_$__CLEARLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,76(%eax)
	jne	Lj64
	jmp	Lj65
Lj64:
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj67
	decl	-8(%ebp)
	.align 2
Lj68:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	call	Lfpc_freemem$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj68
Lj67:
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	-4(%ebp),%edx
	movl	76(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
Lj65:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_TELLIPSEINFO_$__FREELIST
_ELLIPSES_TELLIPSEINFO_$__FREELIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,76(%eax)
	jne	Lj83
	jmp	Lj84
Lj83:
	movl	-4(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__CLEARLIST$stub
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-4(%ebp),%eax
	movl	$0,76(%eax)
Lj84:
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_TELLIPSEINFO_$__GETINFOFORX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$$BOOLEAN
_ELLIPSES_TELLIPSEINFO_$__GETINFOFORX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__GETINFOFORX$LONGINT$PELLIPSEINFODATA$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj101
	jmp	Lj102
Lj101:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	16(%ebp),%edx
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	12(%ebp),%edx
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
Lj102:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_TELLIPSEINFO_$__FINDXINDEX$LONGINT$$LONGINT
_ELLIPSES_TELLIPSEINFO_$__FINDXINDEX$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	76(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	.align 2
Lj117:
	decl	-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj119
	jmp	Lj120
Lj120:
	movl	-8(%ebp),%eax
	movl	76(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	-4(%ebp),%edx
	cmpl	(%eax),%edx
	je	Lj119
	jmp	Lj117
Lj119:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_TELLIPSEINFO_$__GETINFOFORX$LONGINT$PELLIPSEINFODATA$$BOOLEAN
_ELLIPSES_TELLIPSEINFO_$__GETINFOFORX$LONGINT$PELLIPSEINFODATA$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__FINDXINDEX$LONGINT$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	setgeb	-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj135
	jmp	Lj136
Lj135:
	movl	-12(%ebp),%eax
	movl	76(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
Lj136:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_TELLIPSEINFO_$__PREPARECALCULATION$LONGINT$REAL
_ELLIPSES_TELLIPSEINFO_$__PREPARECALCULATION$LONGINT$REAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj144
Lj144:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	fldl	20(%eax)
	fmul	%st(0),%st(0)
	movl	-12(%ebp),%eax
	fldl	28(%eax)
	fmul	%st(0),%st(0)
	faddp	%st,%st(1)
	fsqrt
	movl	L_$ELLIPSES$_Ld1$non_lazy_ptr-Lj144(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fistpq	-20(%ebp)
	fwait
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
	fldpi
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	shll	$1,%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fdivrp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_TELLIPSEINFO_$__NEWINFOREC$LONGINT$$PELLIPSEINFODATA
_ELLIPSES_TELLIPSEINFO_$__NEWINFOREC$LONGINT$$PELLIPSEINFODATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$24,%eax
	call	Lfpc_getmem$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	76(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	$-1,4(%eax)
	movl	$2147483647,8(%eax)
	movl	$-1,12(%eax)
	movl	$2147483647,16(%eax)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_TELLIPSEINFO_$__CALCULATECIRCULAR$TRECT$REAL$REAL$REAL$REAL
_ELLIPSES_TELLIPSEINFO_$__CALCULATECIRCULAR$TRECT$REAL$REAL$REAL$REAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj174
Lj174:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	8(%eax),%edx
	movl	(%ecx),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	fildl	-16(%ebp)
	movl	L_$ELLIPSES$_Ld2$non_lazy_ptr-Lj174(%ebx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%eax),%ecx
	movl	12(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,-16(%ebp)
	fildl	-16(%ebp)
	movl	L_$ELLIPSES$_Ld2$non_lazy_ptr-Lj174(%ebx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	movl	16(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%eax
	xorl	%eax,%edx
	subl	%eax,%edx
	movl	%edx,-16(%ebp)
	fildl	-16(%ebp)
	movl	L_$ELLIPSES$_Ld2$non_lazy_ptr-Lj174(%ebx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	movl	12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	12(%eax),%eax
	movl	4(%edx),%edx
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%eax
	xorl	%eax,%edx
	subl	%eax,%edx
	movl	%edx,-16(%ebp)
	fildl	-16(%ebp)
	movl	L_$ELLIPSES$_Ld2$non_lazy_ptr-Lj174(%ebx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	movl	8(%ebp),%eax
	fstpl	(%eax)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_TELLIPSEINFO_$__GATHERELLIPSEINFO$TRECT
_ELLIPSES_TELLIPSEINFO_$__GATHERELLIPSEINFO$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-136(%ebp)
	movl	%esi,-132(%ebp)
	call	Lj184
Lj184:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__CLEARLIST$stub
	leal	-88(%ebp),%eax
	movl	%eax,(%esp)
	leal	-80(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-72(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-64(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__CALCULATECIRCULAR$TRECT$REAL$REAL$REAL$REAL$stub
	movl	-8(%ebp),%edx
	movl	-64(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-60(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-72(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-68(%ebp),%eax
	movl	%eax,16(%edx)
	movl	-8(%ebp),%edx
	movl	-80(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-76(%ebp),%eax
	movl	%eax,24(%edx)
	movl	-8(%ebp),%edx
	movl	-88(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-84(%ebp),%eax
	movl	%eax,32(%edx)
	movl	L_$ELLIPSES$_Ld3$non_lazy_ptr-Lj184(%ebx),%eax
	fldl	(%eax)
	fldl	-80(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj209
	jmp	Lj208
Lj209:
	movl	L_$ELLIPSES$_Ld3$non_lazy_ptr-Lj184(%ebx),%eax
	fldl	(%eax)
	fldl	-88(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj207
	jmp	Lj208
Lj207:
	fldl	-64(%ebp)
	fistpq	-128(%ebp)
	fwait
	movl	-128(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__NEWINFOREC$LONGINT$$PELLIPSEINFODATA$stub
	fldl	-72(%ebp)
	fistpq	-128(%ebp)
	fwait
	movl	-128(%ebp),%edx
	movl	%edx,4(%eax)
	movl	4(%eax),%edx
	movl	%edx,8(%eax)
	movl	4(%eax),%edx
	movl	%edx,12(%eax)
	movl	4(%eax),%edx
	movl	%edx,16(%eax)
	jmp	Lj224
Lj208:
	leal	-120(%ebp),%ecx
	leal	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__PREPARECALCULATION$LONGINT$REAL$stub
	movl	-28(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	movl	%edx,-20(%ebp)
	movl	L_$ELLIPSES$_Ld4$non_lazy_ptr-Lj184(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	L_$ELLIPSES$_Ld4$non_lazy_ptr-Lj184(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	L_$ELLIPSES$_Ld4$non_lazy_ptr-Lj184(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	L_$ELLIPSES$_Ld4$non_lazy_ptr-Lj184(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-52(%ebp)
	fldz
	fstpl	-112(%ebp)
	fldl	-80(%ebp)
	fldl	-64(%ebp)
	faddp	%st,%st(1)
	fistpq	-128(%ebp)
	fwait
	movl	-128(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__NEWINFOREC$LONGINT$$PELLIPSEINFODATA$stub
	movl	%eax,-12(%ebp)
	fldl	-80(%ebp)
	fldl	-64(%ebp)
	fsubp	%st,%st(1)
	fistpq	-128(%ebp)
	fwait
	movl	-128(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__NEWINFOREC$LONGINT$$PELLIPSEINFODATA$stub
	movl	%eax,-16(%ebp)
	movl	-28(%ebp),%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj252
	decl	-24(%ebp)
	.align 2
Lj253:
	incl	-24(%ebp)
	fldl	-112(%ebp)
	fcos
	fldl	-80(%ebp)
	fmulp	%st,%st(1)
	fstpl	-96(%ebp)
	fldl	-112(%ebp)
	fsin
	fldl	-88(%ebp)
	fmulp	%st,%st(1)
	fstpl	-104(%ebp)
	fldl	-104(%ebp)
	fldl	-72(%ebp)
	fsubp	%st,%st(1)
	fistpq	-128(%ebp)
	fwait
	movl	-128(%ebp),%eax
	movl	%eax,-36(%ebp)
	fldl	-104(%ebp)
	fldl	-72(%ebp)
	faddp	%st,%st(1)
	fistpq	-128(%ebp)
	fwait
	movl	-128(%ebp),%eax
	movl	%eax,-40(%ebp)
	fldl	-96(%ebp)
	fldl	-64(%ebp)
	faddp	%st,%st(1)
	fistpq	-128(%ebp)
	fwait
	movl	-128(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-32(%ebp),%eax
	jne	Lj264
	jmp	Lj265
Lj264:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj268
	jmp	Lj269
Lj268:
	movl	8(%edx),%eax
	cmpl	-36(%ebp),%eax
	je	Lj270
	jmp	Lj271
Lj270:
	incl	8(%edx)
	decl	12(%edx)
Lj271:
	jmp	Lj272
Lj269:
	fildl	4(%edx)
	fldl	-48(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj275
	jmp	Lj274
Lj275:
	movl	4(%edx),%eax
	cmpl	8(%edx),%eax
	jne	Lj273
	jmp	Lj274
Lj273:
	decl	4(%edx)
	incl	16(%edx)
Lj274:
Lj272:
	fildl	8(%edx)
	fstpl	-48(%ebp)
	leal	-12(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__GETINFOFORX$LONGINT$PELLIPSEINFODATA$$BOOLEAN$stub
	testb	%al,%al
	je	Lj278
	jmp	Lj279
Lj278:
	movl	-32(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__NEWINFOREC$LONGINT$$PELLIPSEINFODATA$stub
	movl	%eax,-12(%ebp)
Lj279:
Lj265:
	movl	-12(%ebp),%eax
	movl	-36(%ebp),%edx
	cmpl	8(%eax),%edx
	jl	Lj294
	jmp	Lj295
Lj294:
	movl	-36(%ebp),%edx
	movl	%edx,8(%eax)
Lj295:
	movl	-40(%ebp),%edx
	cmpl	16(%eax),%edx
	jl	Lj298
	jmp	Lj299
Lj298:
	movl	-40(%ebp),%edx
	movl	%edx,16(%eax)
Lj299:
	movl	-36(%ebp),%edx
	cmpl	4(%eax),%edx
	jg	Lj302
	jmp	Lj303
Lj302:
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
Lj303:
	movl	-40(%ebp),%edx
	cmpl	12(%eax),%edx
	jg	Lj306
	jmp	Lj307
Lj306:
	movl	-40(%ebp),%edx
	movl	%edx,12(%eax)
Lj307:
	fldl	-96(%ebp)
	fldl	-64(%ebp)
	fsubp	%st,%st(1)
	fistpq	-128(%ebp)
	fwait
	movl	-128(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-32(%ebp),%eax
	jne	Lj312
	jmp	Lj313
Lj312:
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj316
	jmp	Lj317
Lj316:
	movl	8(%edx),%eax
	cmpl	-36(%ebp),%eax
	je	Lj318
	jmp	Lj319
Lj318:
	incl	8(%edx)
	decl	12(%edx)
Lj319:
	jmp	Lj320
Lj317:
	fildl	4(%edx)
	fldl	-56(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj323
	jmp	Lj322
Lj323:
	movl	4(%edx),%eax
	cmpl	8(%edx),%eax
	jne	Lj321
	jmp	Lj322
Lj321:
	decl	4(%edx)
	incl	16(%edx)
Lj322:
Lj320:
	fildl	8(%edx)
	fstpl	-56(%ebp)
	leal	-16(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__GETINFOFORX$LONGINT$PELLIPSEINFODATA$$BOOLEAN$stub
	testb	%al,%al
	je	Lj326
	jmp	Lj327
Lj326:
	movl	-32(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__NEWINFOREC$LONGINT$$PELLIPSEINFODATA$stub
	movl	%eax,-16(%ebp)
Lj327:
Lj313:
	movl	-16(%ebp),%eax
	movl	-36(%ebp),%edx
	cmpl	8(%eax),%edx
	jl	Lj342
	jmp	Lj343
Lj342:
	movl	-36(%ebp),%edx
	movl	%edx,8(%eax)
Lj343:
	movl	-40(%ebp),%edx
	cmpl	16(%eax),%edx
	jl	Lj346
	jmp	Lj347
Lj346:
	movl	-40(%ebp),%edx
	movl	%edx,16(%eax)
Lj347:
	movl	-36(%ebp),%edx
	cmpl	4(%eax),%edx
	jg	Lj350
	jmp	Lj351
Lj350:
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
Lj351:
	movl	-40(%ebp),%edx
	cmpl	12(%eax),%edx
	jg	Lj354
	jmp	Lj355
Lj354:
	movl	-40(%ebp),%edx
	movl	%edx,12(%eax)
Lj355:
	fldl	-120(%ebp)
	fldl	-112(%ebp)
	faddp	%st,%st(1)
	fstpl	-112(%ebp)
	cmpl	-24(%ebp),%esi
	jg	Lj253
Lj252:
Lj224:
	movl	-136(%ebp),%ebx
	movl	-132(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_TELLIPSEINFO_$__GATHERARCINFO$TRECT$REAL$REAL
_ELLIPSES_TELLIPSEINFO_$__GATHERARCINFO$TRECT$REAL$REAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_TELLIPSEINFO_$_GATHERARCINFO$TRECT$REAL$REAL_CHECKANGLES
_ELLIPSES_TELLIPSEINFO_$_GATHERARCINFO$TRECT$REAL$REAL_CHECKANGLES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	fldl	44(%eax)
	fldl	36(%edx)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj364
	jmp	Lj365
Lj364:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	36(%eax),%edx
	movl	%edx,-16(%ecx)
	movl	40(%eax),%eax
	movl	%eax,-12(%ecx)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%ecx
	movl	44(%edx),%eax
	movl	%eax,-24(%ecx)
	movl	48(%edx),%eax
	movl	%eax,-20(%ecx)
	jmp	Lj370
Lj365:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	44(%eax),%edx
	movl	%edx,-16(%ecx)
	movl	48(%eax),%eax
	movl	%eax,-12(%ecx)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%ecx
	movl	36(%edx),%eax
	movl	%eax,-24(%ecx)
	movl	40(%edx),%eax
	movl	%eax,-20(%ecx)
Lj370:
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_PATTERNTOPOINTS$LONGWORD$PLINEPOINTS
_ELLIPSES_PATTERNTOPOINTS$LONGWORD$PLINEPOINTS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$1,-16(%ebp)
	movl	$31,-12(%ebp)
	incl	-12(%ebp)
	.align 2
Lj381:
	decl	-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%ebx
	movl	-16(%ebp),%eax
	andl	%eax,%ebx
	testl	%ebx,%ebx
	setneb	(%edx,%ecx,1)
	movl	-16(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-16(%ebp)
	cmpl	$1,-12(%ebp)
	jg	Lj381
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	andl	%ecx,%edx
	testl	%edx,%edx
	setneb	(%eax)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_PUTPIXELCOPY$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR
_ELLIPSES_PUTPIXELCOPY$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-20(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_PUTPIXELXOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR
_ELLIPSES_PUTPIXELXOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*160(%ebx)
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	leal	-28(%ebp),%eax
	leal	-20(%ebp),%edx
	call	L_FPIMAGE_xor$TFPCOLOR$TFPCOLOR$$TFPCOLOR$stub
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_PUTPIXELOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR
_ELLIPSES_PUTPIXELOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*160(%ebx)
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	leal	-28(%ebp),%eax
	leal	-20(%ebp),%edx
	call	L_FPIMAGE_or$TFPCOLOR$TFPCOLOR$$TFPCOLOR$stub
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_PUTPIXELAND$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR
_ELLIPSES_PUTPIXELAND$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*160(%ebx)
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	leal	-28(%ebp),%eax
	leal	-20(%ebp),%edx
	call	L_FPIMAGE_and$TFPCOLOR$TFPCOLOR$$TFPCOLOR$stub
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_DRAWSOLIDELLIPSE$TFPCUSTOMCANVAS$TRECT$TFPCOLOR
_ELLIPSES_DRAWSOLIDELLIPSE$TFPCUSTOMCANVAS$TRECT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	movl	%edi,-84(%ebp)
	call	Lj459
Lj459:
	popl	-80(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-36(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	%eax,%edx
	movl	56(%edx),%ecx
	cmpl	$10,%ecx
	jb	Lj467
	subl	$10,%ecx
	je	Lj469
	subl	$2,%ecx
	je	Lj468
	subl	$2,%ecx
	je	Lj470
	jmp	Lj467
Lj468:
	movl	-80(%ebp),%ebx
	movl	L_ELLIPSES_PUTPIXELAND$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj459(%ebx),%ecx
	movl	%ecx,-28(%ebp)
	jmp	Lj466
Lj469:
	movl	-80(%ebp),%ebx
	movl	L_ELLIPSES_PUTPIXELOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj459(%ebx),%ecx
	movl	%ecx,-28(%ebp)
	jmp	Lj466
Lj470:
	movl	-80(%ebp),%ebx
	movl	L_ELLIPSES_PUTPIXELXOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj459(%ebx),%ecx
	movl	%ecx,-28(%ebp)
	jmp	Lj466
Lj467:
	movl	-80(%ebp),%ebx
	movl	L_ELLIPSES_PUTPIXELCOPY$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj459(%ebx),%ecx
	movl	%ecx,-28(%ebp)
Lj466:
	movl	-80(%ebp),%eax
	movl	L_VMT_ELLIPSES_TELLIPSEINFO$non_lazy_ptr-Lj459(%eax),%edx
	movl	$0,%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__CREATE$$TELLIPSEINFO$stub
	movl	%eax,-16(%ebp)
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-12(%ebp)
	testl	%eax,%eax
	jne	Lj485
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__GATHERELLIPSEINFO$TRECT$stub
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-76(%ebp)
	movl	$0,-20(%ebp)
	movl	-76(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj494
	decl	-20(%ebp)
	.align 2
Lj495:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	4(%ebx),%esi
	movl	8(%ebx),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj505
	decl	-24(%ebp)
	.align 2
Lj506:
	incl	-24(%ebp)
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	(%ebx),%edx
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edi
	call	*%edi
	cmpl	-24(%ebp),%esi
	jg	Lj506
Lj505:
	movl	12(%ebx),%esi
	movl	16(%ebx),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj516
	decl	-24(%ebp)
	.align 2
Lj517:
	incl	-24(%ebp)
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	(%ebx),%edx
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edi
	call	*%edi
	cmpl	-24(%ebp),%esi
	jg	Lj517
Lj516:
	movl	-76(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj495
Lj494:
Lj485:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj486
	decl	%eax
	testl	%eax,%eax
	je	Lj487
Lj487:
	call	LFPC_RERAISE$stub
Lj486:
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	movl	-84(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_DRAWSOLIDELLIPSE$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
_ELLIPSES_DRAWSOLIDELLIPSE$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-120(%ebp)
	movl	%esi,-116(%ebp)
	movl	%edi,-112(%ebp)
	call	Lj529
Lj529:
	popl	-108(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-44(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-40(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	%eax,%edx
	movl	56(%edx),%ecx
	cmpl	$10,%ecx
	jb	Lj537
	subl	$10,%ecx
	je	Lj539
	subl	$2,%ecx
	je	Lj538
	subl	$2,%ecx
	je	Lj540
	jmp	Lj537
Lj538:
	movl	-108(%ebp),%ebx
	movl	L_ELLIPSES_PUTPIXELAND$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj529(%ebx),%ecx
	movl	%ecx,-36(%ebp)
	jmp	Lj536
Lj539:
	movl	-108(%ebp),%ebx
	movl	L_ELLIPSES_PUTPIXELOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj529(%ebx),%ecx
	movl	%ecx,-36(%ebp)
	jmp	Lj536
Lj540:
	movl	-108(%ebp),%ebx
	movl	L_ELLIPSES_PUTPIXELXOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj529(%ebx),%ecx
	movl	%ecx,-36(%ebp)
	jmp	Lj536
Lj537:
	movl	-108(%ebp),%ebx
	movl	L_ELLIPSES_PUTPIXELCOPY$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj529(%ebx),%ecx
	movl	%ecx,-36(%ebp)
Lj536:
	movl	-108(%ebp),%eax
	movl	L_VMT_ELLIPSES_TELLIPSEINFO$non_lazy_ptr-Lj529(%eax),%edx
	movl	$0,%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__CREATE$$TELLIPSEINFO$stub
	movl	%eax,-20(%ebp)
	movl	-108(%ebp),%eax
	movl	L_VMT_ELLIPSES_TELLIPSEINFO$non_lazy_ptr-Lj529(%eax),%edx
	movl	$0,%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__CREATE$$TELLIPSEINFO$stub
	movl	%eax,-16(%ebp)
	decl	-12(%ebp)
	leal	-56(%ebp),%ecx
	leal	-80(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-84(%ebp)
	testl	%eax,%eax
	jne	Lj561
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__GATHERELLIPSEINFO$TRECT$stub
	leal	-100(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-12(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-12(%ebp),%eax
	subl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%ebx
	addl	%ebx,%eax
	call	L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-100(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__GATHERELLIPSEINFO$TRECT$stub
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-104(%ebp)
	movl	$0,-24(%ebp)
	movl	-104(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jl	Lj584
	decl	-24(%ebp)
	.align 2
Lj585:
	incl	-24(%ebp)
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	movl	-24(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	leal	-32(%ebp),%ecx
	movl	(%ebx),%edx
	movl	-20(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__GETINFOFORX$LONGINT$PELLIPSEINFODATA$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj594
	jmp	Lj595
Lj594:
	movl	-32(%ebp),%eax
	movl	4(%eax),%esi
	movl	8(%ebx),%eax
	movl	%eax,-28(%ebp)
	cmpl	-28(%ebp),%esi
	jl	Lj603
	decl	-28(%ebp)
	.align 2
Lj604:
	incl	-28(%ebp)
	leal	-44(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%ecx
	movl	(%ebx),%edx
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edi
	call	*%edi
	cmpl	-28(%ebp),%esi
	jg	Lj604
Lj603:
	movl	12(%ebx),%esi
	movl	-32(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-28(%ebp)
	cmpl	-28(%ebp),%esi
	jl	Lj614
	decl	-28(%ebp)
	.align 2
Lj615:
	incl	-28(%ebp)
	leal	-44(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%ecx
	movl	(%ebx),%edx
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edi
	call	*%edi
	cmpl	-28(%ebp),%esi
	jg	Lj615
Lj614:
	jmp	Lj624
Lj595:
	movl	12(%ebx),%esi
	movl	8(%ebx),%eax
	movl	%eax,-28(%ebp)
	cmpl	-28(%ebp),%esi
	jl	Lj626
	decl	-28(%ebp)
	.align 2
Lj627:
	incl	-28(%ebp)
	leal	-44(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%ecx
	movl	(%ebx),%edx
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edi
	call	*%edi
	cmpl	-28(%ebp),%esi
	jg	Lj627
Lj626:
Lj624:
	movl	-104(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jg	Lj585
Lj584:
Lj561:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-20(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-84(%ebp),%eax
	testl	%eax,%eax
	je	Lj562
	decl	%eax
	testl	%eax,%eax
	je	Lj563
Lj563:
	call	LFPC_RERAISE$stub
Lj562:
	movl	-120(%ebp),%ebx
	movl	-116(%ebp),%esi
	movl	-112(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_DRAWPATTERNELLIPSE$TFPCUSTOMCANVAS$TRECT$LONGWORD$TFPCOLOR
_ELLIPSES_DRAWPATTERNELLIPSE$TFPCUSTOMCANVAS$TRECT$LONGWORD$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%ebx,-156(%ebp)
	movl	%esi,-152(%ebp)
	movl	%edi,-148(%ebp)
	call	Lj641
Lj641:
	popl	-144(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-84(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-80(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	%eax,%edx
	movl	56(%edx),%ecx
	cmpl	$10,%ecx
	jb	Lj649
	subl	$10,%ecx
	je	Lj651
	subl	$2,%ecx
	je	Lj650
	subl	$2,%ecx
	je	Lj652
	jmp	Lj649
Lj650:
	movl	-144(%ebp),%ebx
	movl	L_ELLIPSES_PUTPIXELAND$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj641(%ebx),%ecx
	movl	%ecx,-60(%ebp)
	jmp	Lj648
Lj651:
	movl	-144(%ebp),%ebx
	movl	L_ELLIPSES_PUTPIXELOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj641(%ebx),%ecx
	movl	%ecx,-60(%ebp)
	jmp	Lj648
Lj652:
	movl	-144(%ebp),%ebx
	movl	L_ELLIPSES_PUTPIXELXOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj641(%ebx),%ecx
	movl	%ecx,-60(%ebp)
	jmp	Lj648
Lj649:
	movl	-144(%ebp),%ebx
	movl	L_ELLIPSES_PUTPIXELCOPY$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj641(%ebx),%ecx
	movl	%ecx,-60(%ebp)
Lj648:
	leal	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_ELLIPSES_PATTERNTOPOINTS$LONGWORD$PLINEPOINTS$stub
	movl	-144(%ebp),%eax
	movl	L_VMT_ELLIPSES_TELLIPSEINFO$non_lazy_ptr-Lj641(%eax),%edx
	movl	$0,%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__CREATE$$TELLIPSEINFO$stub
	movl	%eax,-16(%ebp)
	leal	-96(%ebp),%ecx
	leal	-120(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-124(%ebp)
	testl	%eax,%eax
	jne	Lj671
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__GATHERELLIPSEINFO$TRECT$stub
	movl	$0,-72(%ebp)
	movl	$31,-68(%ebp)
	movl	-16(%ebp),%eax
	fldl	4(%eax)
	fistpq	-132(%ebp)
	fwait
	movl	-132(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	-76(%ebp),%eax
	movl	%eax,-140(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-140(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj686
	decl	-20(%ebp)
	.align 2
Lj687:
	incl	-20(%ebp)
	leal	-64(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__GETINFOFORX$LONGINT$PELLIPSEINFODATA$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj688
	jmp	Lj689
Lj688:
	movl	-64(%ebp),%eax
	movl	%eax,%ebx
	movl	8(%ebx),%esi
	movl	4(%ebx),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jg	Lj699
	incl	-24(%ebp)
	.align 2
Lj700:
	decl	-24(%ebp)
	movl	-72(%ebp),%eax
	cltd
	movl	$32,%ecx
	idivl	%ecx
	cmpb	$0,-56(%ebp,%edx,1)
	jne	Lj701
	jmp	Lj702
Lj701:
	leal	-84(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-60(%ebp),%edi
	call	*%edi
Lj702:
	incl	-72(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj700
Lj699:
	movl	12(%ebx),%esi
	movl	16(%ebx),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj712
	decl	-24(%ebp)
	.align 2
Lj713:
	incl	-24(%ebp)
	movl	-68(%ebp),%eax
	cltd
	movl	$32,%ecx
	idivl	%ecx
	movl	$32,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	decl	%edx
	cmpb	$0,-56(%ebp,%edx,1)
	jne	Lj714
	jmp	Lj715
Lj714:
	leal	-84(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-60(%ebp),%edi
	call	*%edi
Lj715:
	incl	-68(%ebp)
	cmpl	-24(%ebp),%esi
	jg	Lj713
Lj712:
Lj689:
	movl	-140(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj687
Lj686:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,-136(%ebp)
	movl	-76(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	movl	-136(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj725
	decl	-20(%ebp)
	.align 2
Lj726:
	incl	-20(%ebp)
	leal	-64(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__GETINFOFORX$LONGINT$PELLIPSEINFODATA$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj727
	jmp	Lj728
Lj727:
	movl	-64(%ebp),%eax
	movl	%eax,%ebx
	movl	4(%ebx),%esi
	movl	8(%ebx),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj738
	decl	-24(%ebp)
	.align 2
Lj739:
	incl	-24(%ebp)
	movl	-72(%ebp),%eax
	cltd
	movl	$32,%ecx
	idivl	%ecx
	cmpb	$0,-56(%ebp,%edx,1)
	jne	Lj740
	jmp	Lj741
Lj740:
	leal	-84(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-60(%ebp),%edi
	call	*%edi
Lj741:
	incl	-72(%ebp)
	cmpl	-24(%ebp),%esi
	jg	Lj739
Lj738:
	movl	16(%ebx),%esi
	movl	12(%ebx),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jg	Lj751
	incl	-24(%ebp)
	.align 2
Lj752:
	decl	-24(%ebp)
	movl	-68(%ebp),%eax
	cltd
	movl	$32,%ecx
	idivl	%ecx
	movl	$32,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	decl	%edx
	cmpb	$0,-56(%ebp,%edx,1)
	jne	Lj753
	jmp	Lj754
Lj753:
	leal	-84(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-60(%ebp),%edi
	call	*%edi
Lj754:
	incl	-68(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj752
Lj751:
Lj728:
	movl	-136(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj726
Lj725:
Lj671:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-124(%ebp),%eax
	testl	%eax,%eax
	je	Lj672
	decl	%eax
	testl	%eax,%eax
	je	Lj673
Lj673:
	call	LFPC_RERAISE$stub
Lj672:
	movl	-156(%ebp),%ebx
	movl	-152(%ebp),%esi
	movl	-148(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_FILLELLIPSECOLOR$TFPCUSTOMCANVAS$TRECT$TFPCOLOR
_ELLIPSES_FILLELLIPSECOLOR$TFPCUSTOMCANVAS$TRECT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	movl	%edi,-84(%ebp)
	call	Lj766
Lj766:
	popl	-80(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-36(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-32(%ebp)
	movl	-80(%ebp),%eax
	movl	L_VMT_ELLIPSES_TELLIPSEINFO$non_lazy_ptr-Lj766(%eax),%edx
	movl	$0,%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__CREATE$$TELLIPSEINFO$stub
	movl	%eax,-16(%ebp)
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-12(%ebp)
	testl	%eax,%eax
	jne	Lj773
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__GATHERELLIPSEINFO$TRECT$stub
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-76(%ebp)
	movl	$0,-20(%ebp)
	movl	-76(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj782
	decl	-20(%ebp)
	.align 2
Lj783:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	12(%esi),%edi
	movl	8(%esi),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%edi
	jl	Lj793
	decl	-24(%ebp)
	.align 2
Lj794:
	incl	-24(%ebp)
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	(%esi),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
	cmpl	-24(%ebp),%edi
	jg	Lj794
Lj793:
	movl	-76(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj783
Lj782:
Lj773:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj774
	decl	%eax
	testl	%eax,%eax
	je	Lj775
Lj775:
	call	LFPC_RERAISE$stub
Lj774:
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	movl	-84(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_FILLELLIPSEPATTERN$TFPCUSTOMCANVAS$TRECT$TBRUSHPATTERN$TFPCOLOR
_ELLIPSES_FILLELLIPSEPATTERN$TFPCUSTOMCANVAS$TRECT$TBRUSHPATTERN$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%esi,-156(%ebp)
	movl	%edi,-152(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%esi
	leal	-140(%ebp),%edi
	cld
	movl	$32,%ecx
	rep
	movsl
	movl	8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-148(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-144(%ebp)
	movl	-156(%ebp),%esi
	movl	-152(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_FILLELLIPSEHASHHORIZONTAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
_ELLIPSES_FILLELLIPSEHASHHORIZONTAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	movl	%edi,-80(%ebp)
	call	Lj808
Lj808:
	popl	-76(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-76(%ebp),%eax
	movl	L_VMT_ELLIPSES_TELLIPSEINFO$non_lazy_ptr-Lj808(%eax),%edx
	movl	$0,%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__CREATE$$TELLIPSEINFO$stub
	movl	%eax,-16(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj815
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__GATHERELLIPSEINFO$TRECT$stub
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-72(%ebp)
	movl	$0,-20(%ebp)
	movl	-72(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj824
	decl	-20(%ebp)
	.align 2
Lj825:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	12(%esi),%edi
	movl	8(%esi),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%edi
	jl	Lj835
	decl	-24(%ebp)
	.align 2
Lj836:
	incl	-24(%ebp)
	movl	-24(%ebp),%eax
	cltd
	idivl	-12(%ebp)
	testl	%edx,%edx
	je	Lj837
	jmp	Lj838
Lj837:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	(%esi),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
Lj838:
	cmpl	-24(%ebp),%edi
	jg	Lj836
Lj835:
	movl	-72(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj825
Lj824:
Lj815:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj816
	decl	%eax
	testl	%eax,%eax
	je	Lj817
Lj817:
	call	LFPC_RERAISE$stub
Lj816:
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	movl	-80(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_FILLELLIPSEHASHVERTICAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
_ELLIPSES_FILLELLIPSEHASHVERTICAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	movl	%edi,-80(%ebp)
	call	Lj850
Lj850:
	popl	-76(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-76(%ebp),%eax
	movl	L_VMT_ELLIPSES_TELLIPSEINFO$non_lazy_ptr-Lj850(%eax),%edx
	movl	$0,%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__CREATE$$TELLIPSEINFO$stub
	movl	%eax,-16(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj857
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__GATHERELLIPSEINFO$TRECT$stub
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-72(%ebp)
	movl	$0,-20(%ebp)
	movl	-72(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj866
	decl	-20(%ebp)
	.align 2
Lj867:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edi
	movl	(%edi),%eax
	cltd
	idivl	-12(%ebp)
	testl	%edx,%edx
	je	Lj876
	jmp	Lj877
Lj876:
	movl	12(%edi),%esi
	movl	8(%edi),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj879
	decl	-24(%ebp)
	.align 2
Lj880:
	incl	-24(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	(%edi),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
	cmpl	-24(%ebp),%esi
	jg	Lj880
Lj879:
Lj877:
	movl	-72(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj867
Lj866:
Lj857:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj858
	decl	%eax
	testl	%eax,%eax
	je	Lj859
Lj859:
	call	LFPC_RERAISE$stub
Lj858:
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	movl	-80(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_FILLELLIPSEHASHDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
_ELLIPSES_FILLELLIPSEHASHDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	movl	%edi,-84(%ebp)
	call	Lj892
Lj892:
	popl	-80(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-80(%ebp),%eax
	movl	L_VMT_ELLIPSES_TELLIPSEINFO$non_lazy_ptr-Lj892(%eax),%edx
	movl	$0,%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__CREATE$$TELLIPSEINFO$stub
	movl	%eax,-16(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj899
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__GATHERELLIPSEINFO$TRECT$stub
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-76(%ebp)
	movl	$0,-20(%ebp)
	movl	-76(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj908
	decl	-20(%ebp)
	.align 2
Lj909:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edi
	movl	(%edi),%eax
	cltd
	idivl	-12(%ebp)
	movl	-12(%ebp),%eax
	decl	%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-32(%ebp)
	movl	12(%edi),%esi
	movl	8(%edi),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj921
	decl	-24(%ebp)
	.align 2
Lj922:
	incl	-24(%ebp)
	movl	-24(%ebp),%eax
	cltd
	idivl	-12(%ebp)
	cmpl	-32(%ebp),%edx
	je	Lj923
	jmp	Lj924
Lj923:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	(%edi),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
Lj924:
	cmpl	-24(%ebp),%esi
	jg	Lj922
Lj921:
	movl	-76(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj909
Lj908:
Lj899:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj900
	decl	%eax
	testl	%eax,%eax
	je	Lj901
Lj901:
	call	LFPC_RERAISE$stub
Lj900:
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	movl	-84(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_FILLELLIPSEHASHBACKDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
_ELLIPSES_FILLELLIPSEHASHBACKDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	movl	%edi,-84(%ebp)
	call	Lj936
Lj936:
	popl	-80(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-80(%ebp),%eax
	movl	L_VMT_ELLIPSES_TELLIPSEINFO$non_lazy_ptr-Lj936(%eax),%edx
	movl	$0,%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__CREATE$$TELLIPSEINFO$stub
	movl	%eax,-16(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj943
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__GATHERELLIPSEINFO$TRECT$stub
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-76(%ebp)
	movl	$0,-20(%ebp)
	movl	-76(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj952
	decl	-20(%ebp)
	.align 2
Lj953:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edi
	movl	(%edi),%eax
	cltd
	idivl	-12(%ebp)
	movl	%edx,-32(%ebp)
	movl	12(%edi),%esi
	movl	8(%edi),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj965
	decl	-24(%ebp)
	.align 2
Lj966:
	incl	-24(%ebp)
	movl	-24(%ebp),%eax
	cltd
	idivl	-12(%ebp)
	cmpl	-32(%ebp),%edx
	je	Lj967
	jmp	Lj968
Lj967:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	(%edi),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
Lj968:
	cmpl	-24(%ebp),%esi
	jg	Lj966
Lj965:
	movl	-76(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj953
Lj952:
Lj943:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj944
	decl	%eax
	testl	%eax,%eax
	je	Lj945
Lj945:
	call	LFPC_RERAISE$stub
Lj944:
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	movl	-84(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_FILLELLIPSEHASHDIAGCROSS$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
_ELLIPSES_FILLELLIPSEHASHDIAGCROSS$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%edi,-92(%ebp)
	call	Lj980
Lj980:
	popl	-88(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-88(%ebp),%eax
	movl	L_VMT_ELLIPSES_TELLIPSEINFO$non_lazy_ptr-Lj980(%eax),%edx
	movl	$0,%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__CREATE$$TELLIPSEINFO$stub
	movl	%eax,-16(%ebp)
	leal	-52(%ebp),%ecx
	leal	-76(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-80(%ebp)
	testl	%eax,%eax
	jne	Lj987
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__GATHERELLIPSEINFO$TRECT$stub
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-84(%ebp)
	movl	$0,-20(%ebp)
	movl	-84(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj996
	decl	-20(%ebp)
	.align 2
Lj997:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edi
	movl	(%edi),%eax
	cltd
	idivl	-12(%ebp)
	movl	%edx,-36(%ebp)
	movl	(%edi),%eax
	cltd
	idivl	-12(%ebp)
	movl	-12(%ebp),%eax
	decl	%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-40(%ebp)
	movl	12(%edi),%esi
	movl	8(%edi),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj1011
	decl	-24(%ebp)
	.align 2
Lj1012:
	incl	-24(%ebp)
	movl	-24(%ebp),%eax
	cltd
	idivl	-12(%ebp)
	movl	%edx,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	-36(%ebp),%eax
	je	Lj1015
	jmp	Lj1017
Lj1017:
	movl	-32(%ebp),%eax
	cmpl	-40(%ebp),%eax
	je	Lj1015
	jmp	Lj1016
Lj1015:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	(%edi),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
Lj1016:
	cmpl	-24(%ebp),%esi
	jg	Lj1012
Lj1011:
	movl	-84(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj997
Lj996:
Lj987:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-80(%ebp),%eax
	testl	%eax,%eax
	je	Lj988
	decl	%eax
	testl	%eax,%eax
	je	Lj989
Lj989:
	call	LFPC_RERAISE$stub
Lj988:
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	movl	-92(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_FILLELLIPSEHASHCROSS$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
_ELLIPSES_FILLELLIPSEHASHCROSS$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	movl	%edi,-80(%ebp)
	call	Lj1029
Lj1029:
	popl	-76(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-76(%ebp),%eax
	movl	L_VMT_ELLIPSES_TELLIPSEINFO$non_lazy_ptr-Lj1029(%eax),%edx
	movl	$0,%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__CREATE$$TELLIPSEINFO$stub
	movl	%eax,-16(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj1036
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__GATHERELLIPSEINFO$TRECT$stub
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-72(%ebp)
	movl	$0,-20(%ebp)
	movl	-72(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj1045
	decl	-20(%ebp)
	.align 2
Lj1046:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edi
	movl	(%edi),%eax
	cltd
	idivl	-12(%ebp)
	testl	%edx,%edx
	je	Lj1055
	jmp	Lj1056
Lj1055:
	movl	12(%edi),%esi
	movl	8(%edi),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj1058
	decl	-24(%ebp)
	.align 2
Lj1059:
	incl	-24(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	(%edi),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
	cmpl	-24(%ebp),%esi
	jg	Lj1059
Lj1058:
	jmp	Lj1068
Lj1056:
	movl	12(%edi),%esi
	movl	8(%edi),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj1070
	decl	-24(%ebp)
	.align 2
Lj1071:
	incl	-24(%ebp)
	movl	-24(%ebp),%eax
	cltd
	idivl	-12(%ebp)
	testl	%edx,%edx
	je	Lj1072
	jmp	Lj1073
Lj1072:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	(%edi),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
Lj1073:
	cmpl	-24(%ebp),%esi
	jg	Lj1071
Lj1070:
Lj1068:
	movl	-72(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj1046
Lj1045:
Lj1036:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj1037
	decl	%eax
	testl	%eax,%eax
	je	Lj1038
Lj1038:
	call	LFPC_RERAISE$stub
Lj1037:
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	movl	-80(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_FILLELLIPSEIMAGE$TFPCUSTOMCANVAS$TRECT$TFPCUSTOMIMAGE
_ELLIPSES_FILLELLIPSEIMAGE$TFPCUSTOMCANVAS$TRECT$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%edi,-92(%ebp)
	call	Lj1085
Lj1085:
	popl	-88(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-88(%ebp),%eax
	movl	L_VMT_ELLIPSES_TELLIPSEINFO$non_lazy_ptr-Lj1085(%eax),%edx
	movl	$0,%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__CREATE$$TELLIPSEINFO$stub
	movl	%eax,-16(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj1092
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__GATHERELLIPSEINFO$TRECT$stub
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-84(%ebp)
	movl	$0,-20(%ebp)
	movl	-84(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj1101
	decl	-20(%ebp)
	.align 2
Lj1102:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edi
	movl	-12(%ebp),%ecx
	movl	(%edi),%eax
	cltd
	idivl	32(%ecx)
	movl	%edx,-32(%ebp)
	movl	12(%edi),%esi
	movl	8(%edi),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj1114
	decl	-24(%ebp)
	.align 2
Lj1115:
	incl	-24(%ebp)
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%eax
	cltd
	idivl	28(%ecx)
	movl	%edx,%ecx
	movl	-32(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-80(%ebp)
	movl	%edx,-76(%ebp)
	leal	-80(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	(%edi),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
	cmpl	-24(%ebp),%esi
	jg	Lj1115
Lj1114:
	movl	-84(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj1102
Lj1101:
Lj1092:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj1093
	decl	%eax
	testl	%eax,%eax
	je	Lj1094
Lj1094:
	call	LFPC_RERAISE$stub
Lj1093:
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	movl	-92(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_ELLIPSES_FILLELLIPSEIMAGEREL$TFPCUSTOMCANVAS$TRECT$TFPCUSTOMIMAGE
_ELLIPSES_FILLELLIPSEIMAGEREL$TFPCUSTOMCANVAS$TRECT$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-112(%ebp)
	movl	%esi,-108(%ebp)
	movl	%edi,-104(%ebp)
	call	Lj1133
Lj1133:
	popl	-100(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-100(%ebp),%eax
	movl	L_VMT_ELLIPSES_TELLIPSEINFO$non_lazy_ptr-Lj1133(%eax),%edx
	movl	$0,%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__CREATE$$TELLIPSEINFO$stub
	movl	%eax,-16(%ebp)
	leal	-56(%ebp),%ecx
	leal	-80(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-84(%ebp)
	testl	%eax,%eax
	jne	Lj1140
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_ELLIPSES_TELLIPSEINFO_$__GATHERELLIPSEINFO$TRECT$stub
	movl	-12(%ebp),%eax
	movl	32(%eax),%ecx
	movl	%ecx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%ecx
	sarl	$1,%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	movl	-16(%ebp),%eax
	fldl	4(%eax)
	fistpq	-92(%ebp)
	fwait
	movl	-92(%ebp),%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	-88(%ebp),%eax
	sbbl	%edx,%eax
	movl	%eax,%edx
	movl	%ecx,-32(%ebp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%ecx
	movl	%ecx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%ecx
	sarl	$1,%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	movl	-16(%ebp),%eax
	fldl	12(%eax)
	fistpq	-92(%ebp)
	fwait
	movl	-92(%ebp),%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	-88(%ebp),%eax
	sbbl	%edx,%eax
	movl	%eax,%edx
	movl	%ecx,-36(%ebp)
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-96(%ebp)
	movl	$0,-20(%ebp)
	movl	-96(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj1153
	decl	-20(%ebp)
	.align 2
Lj1154:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edi
	movl	(%edi),%eax
	movl	-32(%ebp),%edx
	subl	%edx,%eax
	movl	-12(%ebp),%ecx
	cltd
	idivl	32(%ecx)
	movl	%edx,-40(%ebp)
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1165
	jmp	Lj1166
Lj1165:
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	addl	%eax,-40(%ebp)
Lj1166:
	movl	12(%edi),%esi
	movl	8(%edi),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj1168
	decl	-24(%ebp)
	.align 2
Lj1169:
	incl	-24(%ebp)
	movl	-24(%ebp),%eax
	movl	-36(%ebp),%edx
	subl	%edx,%eax
	movl	-12(%ebp),%ecx
	cltd
	idivl	28(%ecx)
	movl	%edx,-44(%ebp)
	movl	-44(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1172
	jmp	Lj1173
Lj1172:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	addl	%eax,-44(%ebp)
Lj1173:
	movl	-44(%ebp),%ecx
	movl	-40(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-92(%ebp)
	movl	%edx,-88(%ebp)
	leal	-92(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	(%edi),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
	cmpl	-24(%ebp),%esi
	jg	Lj1169
Lj1168:
	movl	-96(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj1154
Lj1153:
Lj1140:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-84(%ebp),%eax
	testl	%eax,%eax
	je	Lj1141
	decl	%eax
	testl	%eax,%eax
	je	Lj1142
Lj1142:
	call	LFPC_RERAISE$stub
Lj1141:
	movl	-112(%ebp),%ebx
	movl	-108(%ebp),%esi
	movl	-104(%ebp),%edi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$ELLIPSES$_Ld5
_$ELLIPSES$_Ld5:
	.byte	12
	.ascii	"TEllipseInfo"

.const_data
	.align 2
.globl	_VMT_ELLIPSES_TELLIPSEINFO
_VMT_ELLIPSES_TELLIPSEINFO:
	.long	80,-80
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$ELLIPSES$_Ld5
	.long	0,0
	.long	_$ELLIPSES$_Ld6
	.long	_RTTI_ELLIPSES_TELLIPSEINFO
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_ELLIPSES_TELLIPSEINFO_$__DESTROY
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
.globl	_THREADVARLIST_ELLIPSES
_THREADVARLIST_ELLIPSES:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 3
.globl	_$ELLIPSES$_Ld1
_$ELLIPSES$_Ld1:
	.byte	239,56,69,71,114,249,15,201,255,63

.const
	.align 3
.globl	_$ELLIPSES$_Ld2
_$ELLIPSES$_Ld2:
	.byte	0,0,0,0,0,0,0,128,0,64

.const
	.align 2
.globl	_$ELLIPSES$_Ld3
_$ELLIPSES$_Ld3:
	.byte	0,0,0,0,0,0,224,63

.const
	.align 2
.globl	_$ELLIPSES$_Ld4
_$ELLIPSES$_Ld4:
	.byte	0,0,192,255,255,255,223,65
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

L_ELLIPSES_TELLIPSEINFO_$__FREELIST$stub:
.indirect_symbol _ELLIPSES_TELLIPSEINFO_$__FREELIST
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

Lfpc_freemem$stub:
.indirect_symbol fpc_freemem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_TELLIPSEINFO_$__CLEARLIST$stub:
.indirect_symbol _ELLIPSES_TELLIPSEINFO_$__CLEARLIST
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

L_ELLIPSES_TELLIPSEINFO_$__GETINFOFORX$LONGINT$PELLIPSEINFODATA$$BOOLEAN$stub:
.indirect_symbol _ELLIPSES_TELLIPSEINFO_$__GETINFOFORX$LONGINT$PELLIPSEINFODATA$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_TELLIPSEINFO_$__FINDXINDEX$LONGINT$$LONGINT$stub:
.indirect_symbol _ELLIPSES_TELLIPSEINFO_$__FINDXINDEX$LONGINT$$LONGINT
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

L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__ADD$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_TELLIPSEINFO_$__CALCULATECIRCULAR$TRECT$REAL$REAL$REAL$REAL$stub:
.indirect_symbol _ELLIPSES_TELLIPSEINFO_$__CALCULATECIRCULAR$TRECT$REAL$REAL$REAL$REAL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_TELLIPSEINFO_$__NEWINFOREC$LONGINT$$PELLIPSEINFODATA$stub:
.indirect_symbol _ELLIPSES_TELLIPSEINFO_$__NEWINFOREC$LONGINT$$PELLIPSEINFODATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_TELLIPSEINFO_$__PREPARECALCULATION$LONGINT$REAL$stub:
.indirect_symbol _ELLIPSES_TELLIPSEINFO_$__PREPARECALCULATION$LONGINT$REAL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_xor$TFPCOLOR$TFPCOLOR$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_xor$TFPCOLOR$TFPCOLOR$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_or$TFPCOLOR$TFPCOLOR$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_or$TFPCOLOR$TFPCOLOR$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_and$TFPCOLOR$TFPCOLOR$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_and$TFPCOLOR$TFPCOLOR$$TFPCOLOR
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

L_ELLIPSES_TELLIPSEINFO_$__CREATE$$TELLIPSEINFO$stub:
.indirect_symbol _ELLIPSES_TELLIPSEINFO_$__CREATE$$TELLIPSEINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_TELLIPSEINFO_$__GATHERELLIPSEINFO$TRECT$stub:
.indirect_symbol _ELLIPSES_TELLIPSEINFO_$__GATHERELLIPSEINFO$TRECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub:
.indirect_symbol _CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_PATTERNTOPOINTS$LONGWORD$PLINEPOINTS$stub:
.indirect_symbol _ELLIPSES_PATTERNTOPOINTS$LONGWORD$PLINEPOINTS
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
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.const_data
	.align 2
.globl	_INIT_ELLIPSES_PELLIPSEINFODATA
_INIT_ELLIPSES_PELLIPSEINFODATA:
	.byte	0
	.ascii	"\020PEllipseInfoData"

.const_data
	.align 2
.globl	_RTTI_ELLIPSES_PELLIPSEINFODATA
_RTTI_ELLIPSES_PELLIPSEINFODATA:
	.byte	0
	.ascii	"\020PEllipseInfoData"

.const_data
	.align 2
.globl	_INIT_ELLIPSES_TELLIPSEINFODATA
_INIT_ELLIPSES_TELLIPSEINFODATA:
	.byte	13,16
	.ascii	"TEllipseInfoData"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_ELLIPSES_TELLIPSEINFODATA
_RTTI_ELLIPSES_TELLIPSEINFODATA:
	.byte	13,16
	.ascii	"TEllipseInfoData"
	.long	24,6
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	20

.const_data
	.align 2
.globl	_$ELLIPSES$_Ld6
_$ELLIPSES$_Ld6:
	.short	0
	.long	_$ELLIPSES$_Ld7
	.align 2
.globl	_$ELLIPSES$_Ld7
_$ELLIPSES$_Ld7:
	.short	0

.const_data
	.align 2
.globl	_INIT_ELLIPSES_TELLIPSEINFO
_INIT_ELLIPSES_TELLIPSEINFO:
	.byte	15,12
	.ascii	"TEllipseInfo"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_ELLIPSES_TELLIPSEINFO
_RTTI_ELLIPSES_TELLIPSEINFO:
	.byte	15,12
	.ascii	"TEllipseInfo"
	.long	_VMT_ELLIPSES_TELLIPSEINFO
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"Ellipses"
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
L_VMT_CLASSES_TLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ELLIPSES$_Ld1$non_lazy_ptr:
.indirect_symbol _$ELLIPSES$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ELLIPSES$_Ld2$non_lazy_ptr:
.indirect_symbol _$ELLIPSES$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ELLIPSES$_Ld3$non_lazy_ptr:
.indirect_symbol _$ELLIPSES$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ELLIPSES$_Ld4$non_lazy_ptr:
.indirect_symbol _$ELLIPSES$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_ELLIPSES_PUTPIXELAND$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr:
.indirect_symbol _ELLIPSES_PUTPIXELAND$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_ELLIPSES_PUTPIXELOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr:
.indirect_symbol _ELLIPSES_PUTPIXELOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_ELLIPSES_PUTPIXELXOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr:
.indirect_symbol _ELLIPSES_PUTPIXELXOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_ELLIPSES_PUTPIXELCOPY$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr:
.indirect_symbol _ELLIPSES_PUTPIXELCOPY$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_ELLIPSES_TELLIPSEINFO$non_lazy_ptr:
.indirect_symbol _VMT_ELLIPSES_TELLIPSEINFO
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

