# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JDCOEFCT_START_IMCU_ROW$J_DECOMPRESS_PTR
_JDCOEFCT_START_IMCU_ROW$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	376(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	276(%eax),%eax
	cmpl	$1,%eax
	jg	Lj7
	jmp	Lj8
Lj7:
	movl	-8(%ebp),%eax
	movl	$1,28(%eax)
	jmp	Lj11
Lj8:
	movl	-4(%ebp),%eax
	movl	268(%eax),%ebx
	movl	$0,%ecx
	subl	$1,%ebx
	sbbl	$0,%ecx
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	movl	$0,%edx
	cmpl	%edx,%ecx
	jg	Lj12
	jl	Lj13
	cmpl	%eax,%ebx
	ja	Lj12
	jmp	Lj13
Lj12:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	-8(%ebp),%edx
	movl	12(%eax),%eax
	movl	%eax,28(%edx)
	jmp	Lj16
Lj13:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	-8(%ebp),%edx
	movl	72(%eax),%eax
	movl	%eax,28(%edx)
Lj16:
Lj11:
	movl	-8(%ebp),%eax
	movl	$0,20(%eax)
	movl	-8(%ebp),%eax
	movl	$0,24(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDCOEFCT_START_INPUT_PASS$J_DECOMPRESS_PTR
_JDCOEFCT_START_INPUT_PASS$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,112(%eax)
	movl	-4(%ebp),%eax
	call	L_JDCOEFCT_START_IMCU_ROW$J_DECOMPRESS_PTR$stub
	leave
	ret

.text
	.align 4
.globl	_JDCOEFCT_START_OUTPUT_PASS$J_DECOMPRESS_PTR
_JDCOEFCT_START_OUTPUT_PASS$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj30
Lj30:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	376(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj33
	jmp	Lj34
Lj33:
	movl	-4(%ebp),%eax
	cmpb	$0,64(%eax)
	jne	Lj37
	jmp	Lj36
Lj37:
	movl	-4(%ebp),%eax
	call	L_JDCOEFCT_SMOOTHING_OK$J_DECOMPRESS_PTR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj35
	jmp	Lj36
Lj35:
	movl	-8(%ebp),%edx
	movl	L_JDCOEFCT_DECOMPRESS_SMOOTH_DATA$J_DECOMPRESS_PTR$JSAMPIMAGE$$LONGINT$non_lazy_ptr-Lj30(%ebx),%eax
	movl	%eax,12(%edx)
	jmp	Lj42
Lj36:
	movl	-8(%ebp),%edx
	movl	L_JDCOEFCT_DECOMPRESS_DATA$J_DECOMPRESS_PTR$JSAMPIMAGE$$LONGINT$non_lazy_ptr-Lj30(%ebx),%eax
	movl	%eax,12(%edx)
Lj42:
Lj34:
	movl	-4(%ebp),%eax
	movl	$0,120(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDCOEFCT_DECOMPRESS_ONEPASS$J_DECOMPRESS_PTR$JSAMPIMAGE$$LONGINT
_JDCOEFCT_DECOMPRESS_ONEPASS$J_DECOMPRESS_PTR$JSAMPIMAGE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	movl	%edi,-88(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	376(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	296(%eax),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	decl	%eax
	movl	%eax,-28(%ebp)
	movl	-16(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,-84(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-84(%ebp),%eax
	cmpl	-48(%ebp),%eax
	jl	Lj56
	decl	-48(%ebp)
	.align 2
Lj57:
	incl	-48(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	-16(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-80(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj59
	decl	-20(%ebp)
	.align 2
Lj60:
	incl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	304(%eax),%edx
	shll	$8,%edx
	movl	-16(%ebp),%eax
	movl	32(%eax),%eax
	call	L_JUTILS_JZERO_FAR$POINTER$LONGINT$stub
	movl	-16(%ebp),%eax
	leal	32(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$9,%ecx
	movl	-4(%ebp),%ebx
	movl	392(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	testb	%al,%al
	je	Lj65
	jmp	Lj66
Lj65:
	movl	-16(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,20(%edx)
	movl	$0,-12(%ebp)
	jmp	Lj47
Lj66:
	movl	$0,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	276(%eax),%eax
	decl	%eax
	movl	%eax,-76(%ebp)
	movl	$0,-36(%ebp)
	movl	-76(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jl	Lj82
	decl	-36(%ebp)
	.align 2
Lj83:
	incl	-36(%ebp)
	movl	-4(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	280(%edx,%eax,4),%eax
	movl	%eax,-68(%ebp)
	movl	-68(%ebp),%eax
	movb	48(%eax),%al
	testb	%al,%al
	je	Lj86
	jmp	Lj87
Lj86:
	movl	-68(%ebp),%eax
	movl	60(%eax),%eax
	addl	%eax,-32(%ebp)
	jmp	Lj81
Lj87:
	movl	-4(%ebp),%eax
	movl	396(%eax),%edx
	movl	-68(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%edx,%eax,4),%eax
	movl	%eax,-72(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj90
	jmp	Lj91
Lj90:
	movl	-68(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-52(%ebp)
	jmp	Lj94
Lj91:
	movl	-68(%ebp),%eax
	movl	68(%eax),%eax
	movl	%eax,-52(%ebp)
Lj94:
	movl	-8(%ebp),%edx
	movl	-68(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%edx,%eax,4),%ecx
	movl	-68(%ebp),%eax
	movl	36(%eax),%edx
	movl	-48(%ebp),%eax
	imull	%eax,%edx
	leal	(%ecx,%edx,4),%eax
	movl	%eax,-56(%ebp)
	movl	-20(%ebp),%eax
	movl	$0,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	-68(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,-60(%ebp)
	movl	-68(%ebp),%eax
	movl	56(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-44(%ebp)
	cmpl	-44(%ebp),%ebx
	jl	Lj108
	decl	-44(%ebp)
	.align 2
Lj109:
	incl	-44(%ebp)
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	cmpl	-28(%ebp),%eax
	jb	Lj110
	jmp	Lj112
Lj112:
	movl	-48(%ebp),%edx
	movl	-44(%ebp),%eax
	addl	%eax,%edx
	movl	-68(%ebp),%eax
	cmpl	72(%eax),%edx
	jl	Lj110
	jmp	Lj111
Lj110:
	movl	-60(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	-52(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-40(%ebp)
	cmpl	-40(%ebp),%esi
	jl	Lj116
	decl	-40(%ebp)
	.align 2
Lj117:
	incl	-40(%ebp)
	movl	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,%eax
	movl	32(%ecx,%eax,4),%ecx
	movl	-68(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-72(%ebp),%edi
	call	*%edi
	movl	-68(%ebp),%eax
	movl	36(%eax),%eax
	addl	%eax,-64(%ebp)
	cmpl	-40(%ebp),%esi
	jg	Lj117
Lj116:
Lj111:
	movl	-68(%ebp),%eax
	movl	52(%eax),%eax
	addl	%eax,-32(%ebp)
	movl	-68(%ebp),%eax
	movl	36(%eax),%eax
	shll	$2,%eax
	addl	%eax,-56(%ebp)
	cmpl	-44(%ebp),%ebx
	jg	Lj109
Lj108:
Lj81:
	movl	-76(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jg	Lj83
Lj82:
	movl	-80(%ebp),%eax
	cmpl	-20(%ebp),%eax
	ja	Lj60
Lj59:
	movl	-16(%ebp),%eax
	movl	$0,20(%eax)
	movl	-84(%ebp),%eax
	cmpl	-48(%ebp),%eax
	jg	Lj57
Lj56:
	movl	-4(%ebp),%eax
	incl	120(%eax)
	movl	-4(%ebp),%eax
	incl	112(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	112(%eax),%eax
	cmpl	268(%edx),%eax
	jb	Lj130
	jmp	Lj131
Lj130:
	movl	-4(%ebp),%eax
	call	L_JDCOEFCT_START_IMCU_ROW$J_DECOMPRESS_PTR$stub
	movl	$3,-12(%ebp)
	jmp	Lj47
Lj131:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	384(%edx),%edx
	movl	12(%edx),%edx
	call	*%edx
	movl	$4,-12(%ebp)
Lj47:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	movl	-88(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JDCOEFCT_DUMMY_CONSUME_DATA$J_DECOMPRESS_PTR$$LONGINT
_JDCOEFCT_DUMMY_CONSUME_DATA$J_DECOMPRESS_PTR$$LONGINT:
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
.globl	_JDCOEFCT_CONSUME_DATA$J_DECOMPRESS_PTR$$LONGINT
_JDCOEFCT_CONSUME_DATA$J_DECOMPRESS_PTR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-84(%ebp)
	movl	%esi,-80(%ebp)
	movl	%edi,-76(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	376(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	276(%eax),%esi
	decl	%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj149
	decl	-24(%ebp)
	.align 2
Lj150:
	incl	-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	280(%eax,%edx,4),%eax
	movl	%eax,-64(%ebp)
	movl	-64(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	112(%eax),%edx
	movl	$0,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,%ecx
	movb	$1,(%esp)
	movl	-64(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	-64(%ebp),%edx
	movl	4(%edx),%edx
	movl	72(%eax,%edx,4),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	32(%ebx),%ebx
	call	*%ebx
	movl	-24(%ebp),%edx
	movl	%eax,-56(%ebp,%edx,4)
	cmpl	-24(%ebp),%esi
	jg	Lj150
Lj149:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,-72(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-72(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jl	Lj172
	decl	-36(%ebp)
	.align 2
Lj173:
	incl	-36(%ebp)
	movl	-4(%ebp),%eax
	movl	296(%eax),%eax
	decl	%eax
	movl	%eax,-68(%ebp)
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-68(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jb	Lj175
	decl	-16(%ebp)
	.align 2
Lj176:
	incl	-16(%ebp)
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	276(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj180
	decl	-24(%ebp)
	.align 2
Lj181:
	incl	-24(%ebp)
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	280(%edx,%eax,4),%eax
	movl	%eax,-64(%ebp)
	movl	-16(%ebp),%edx
	movl	$0,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	movl	-64(%ebp),%eax
	movl	52(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,-40(%ebp)
	movl	-64(%ebp),%eax
	movl	56(%eax),%eax
	decl	%eax
	movl	%eax,%edx
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%edx
	jl	Lj193
	decl	-32(%ebp)
	.align 2
Lj194:
	incl	-32(%ebp)
	movl	-24(%ebp),%eax
	movl	-56(%ebp,%eax,4),%esi
	movl	-32(%ebp),%eax
	movl	-36(%ebp),%ecx
	addl	%ecx,%eax
	movl	(%esi,%eax,4),%ecx
	movl	-40(%ebp),%eax
	shll	$8,%eax
	leal	(%ecx,%eax),%eax
	movl	%eax,-60(%ebp)
	movl	-64(%ebp),%eax
	movl	52(%eax),%eax
	decl	%eax
	movl	%eax,%ecx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%ecx
	jl	Lj198
	decl	-28(%ebp)
	.align 2
Lj199:
	incl	-28(%ebp)
	movl	-12(%ebp),%esi
	movl	-20(%ebp),%edi
	movl	-60(%ebp),%eax
	movl	%eax,32(%esi,%edi,4)
	incl	-20(%ebp)
	addl	$256,-60(%ebp)
	cmpl	-28(%ebp),%ecx
	jg	Lj199
Lj198:
	cmpl	-32(%ebp),%edx
	jg	Lj194
Lj193:
	cmpl	-24(%ebp),%ebx
	jg	Lj181
Lj180:
	movl	-12(%ebp),%eax
	leal	32(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$9,%ecx
	movl	-4(%ebp),%ebx
	movl	392(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	testb	%al,%al
	je	Lj202
	jmp	Lj203
Lj202:
	movl	-12(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,20(%eax)
	movl	$0,-8(%ebp)
	jmp	Lj144
Lj203:
	movl	-68(%ebp),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj176
Lj175:
	movl	-12(%ebp),%eax
	movl	$0,20(%eax)
	movl	-72(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jg	Lj173
Lj172:
	movl	-4(%ebp),%eax
	incl	112(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	112(%eax),%eax
	cmpl	268(%edx),%eax
	jb	Lj218
	jmp	Lj219
Lj218:
	movl	-4(%ebp),%eax
	call	L_JDCOEFCT_START_IMCU_ROW$J_DECOMPRESS_PTR$stub
	movl	$3,-8(%ebp)
	jmp	Lj144
Lj219:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	384(%edx),%edx
	movl	12(%edx),%edx
	call	*%edx
	movl	$4,-8(%ebp)
Lj144:
	movl	-8(%ebp),%eax
	movl	-84(%ebp),%ebx
	movl	-80(%ebp),%esi
	movl	-76(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JDCOEFCT_DECOMPRESS_DATA$J_DECOMPRESS_PTR$JSAMPIMAGE$$LONGINT
_JDCOEFCT_DECOMPRESS_DATA$J_DECOMPRESS_PTR$JSAMPIMAGE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	376(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	decl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj235
	.align 2
Lj234:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	testl	%eax,%eax
	je	Lj237
	jmp	Lj238
Lj237:
	movl	$0,-12(%ebp)
	jmp	Lj228
Lj238:
Lj235:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	108(%eax),%eax
	cmpl	116(%edx),%eax
	jl	Lj234
	jmp	Lj243
Lj243:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	108(%eax),%eax
	cmpl	116(%edx),%eax
	je	Lj244
	jmp	Lj236
Lj244:
	movl	-4(%ebp),%eax
	movl	112(%eax),%ebx
	movl	$0,%ecx
	movl	-4(%ebp),%eax
	movl	120(%eax),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	cmpl	%edx,%ecx
	jl	Lj234
	jg	Lj236
	cmpl	%eax,%ebx
	jbe	Lj234
	jmp	Lj236
Lj236:
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	decl	%eax
	movl	%eax,-64(%ebp)
	movl	$0,-28(%ebp)
	movl	-64(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj248
	decl	-28(%ebp)
	.align 2
Lj249:
	incl	-28(%ebp)
	movl	-56(%ebp),%eax
	movb	48(%eax),%al
	testb	%al,%al
	je	Lj250
	jmp	Lj251
Lj250:
	jmp	Lj247
Lj251:
	movb	$0,(%esp)
	movl	-56(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	-56(%ebp),%edx
	movl	120(%eax),%ecx
	movl	12(%edx),%eax
	imull	%eax,%ecx
	movl	-16(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	72(%edx,%eax,4),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	32(%ebx),%ebx
	call	*%ebx
	movl	%eax,-40(%ebp)
	movl	-4(%ebp),%eax
	movl	120(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	-20(%ebp),%ecx
	movl	$0,%ebx
	cmpl	%ebx,%eax
	jl	Lj264
	jg	Lj265
	cmpl	%ecx,%edx
	jb	Lj264
	jmp	Lj265
Lj264:
	movl	-56(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj268
Lj265:
	movl	-56(%ebp),%eax
	movl	32(%eax),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-56(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	call	Lfpc_mod_int64$stub
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj275
	jmp	Lj276
Lj275:
	movl	-56(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-36(%ebp)
Lj276:
Lj268:
	movl	-4(%ebp),%eax
	movl	396(%eax),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,4),%eax
	movl	%eax,-60(%ebp)
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-48(%ebp)
	movl	-36(%ebp),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%ebx
	jl	Lj284
	decl	-32(%ebp)
	.align 2
Lj285:
	incl	-32(%ebp)
	movl	-40(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-44(%ebp)
	movl	$0,-52(%ebp)
	movl	-56(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jb	Lj291
	decl	-24(%ebp)
	.align 2
Lj292:
	incl	-24(%ebp)
	movl	-52(%ebp),%eax
	movl	%eax,(%esp)
	movl	-48(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-44(%ebp),%ecx
	movl	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-60(%ebp),%edi
	call	*%edi
	addl	$256,-44(%ebp)
	movl	-56(%ebp),%eax
	movl	36(%eax),%eax
	addl	%eax,-52(%ebp)
	cmpl	-24(%ebp),%esi
	ja	Lj292
Lj291:
	movl	-56(%ebp),%eax
	movl	36(%eax),%eax
	shll	$2,%eax
	addl	%eax,-48(%ebp)
	cmpl	-32(%ebp),%ebx
	jg	Lj285
Lj284:
	addl	$84,-56(%ebp)
Lj247:
	movl	-64(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jg	Lj249
Lj248:
	movl	-4(%ebp),%eax
	incl	120(%eax)
	movl	-4(%ebp),%eax
	movl	120(%eax),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	movl	$0,%edx
	cmpl	%edx,%ecx
	jl	Lj303
	jg	Lj304
	cmpl	%eax,%ebx
	jb	Lj303
	jmp	Lj304
Lj303:
	movl	$3,-12(%ebp)
	jmp	Lj228
Lj304:
	movl	$4,-12(%ebp)
Lj228:
	movl	-12(%ebp),%eax
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JDCOEFCT_SMOOTHING_OK$J_DECOMPRESS_PTR$$BOOLEAN
_JDCOEFCT_SMOOTHING_OK$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	376(%eax),%eax
	movl	%eax,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	-4(%ebp),%eax
	movb	184(%eax),%al
	testb	%al,%al
	je	Lj315
	jmp	Lj317
Lj317:
	movl	-4(%ebp),%eax
	movl	124(%eax),%eax
	testl	%eax,%eax
	je	Lj315
	jmp	Lj316
Lj315:
	movb	$0,-5(%ebp)
	jmp	Lj309
Lj316:
	movl	-12(%ebp),%eax
	movl	112(%eax),%eax
	testl	%eax,%eax
	je	Lj320
	jmp	Lj321
Lj320:
	movl	-4(%ebp),%eax
	movl	36(%eax),%ecx
	imull	$24,%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	-12(%ebp),%edx
	movl	%eax,112(%edx)
Lj321:
	movl	-12(%ebp),%eax
	movl	112(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj335
	decl	-20(%ebp)
	.align 2
Lj336:
	incl	-20(%ebp)
	movl	-28(%ebp),%edx
	movl	76(%edx),%edx
	movl	%edx,-32(%ebp)
	movl	-32(%ebp),%edx
	testl	%edx,%edx
	je	Lj339
	jmp	Lj340
Lj339:
	movb	$0,-5(%ebp)
	jmp	Lj309
Lj340:
	movl	-32(%ebp),%edx
	movzwl	(%edx),%edx
	testl	%edx,%edx
	je	Lj343
	jmp	Lj349
Lj349:
	movl	-32(%ebp),%edx
	movzwl	2(%edx),%edx
	testl	%edx,%edx
	je	Lj343
	jmp	Lj348
Lj348:
	movl	-32(%ebp),%edx
	movzwl	16(%edx),%edx
	testl	%edx,%edx
	je	Lj343
	jmp	Lj347
Lj347:
	movl	-32(%ebp),%edx
	movzwl	32(%edx),%edx
	testl	%edx,%edx
	je	Lj343
	jmp	Lj346
Lj346:
	movl	-32(%ebp),%edx
	movzwl	18(%edx),%edx
	testl	%edx,%edx
	je	Lj343
	jmp	Lj345
Lj345:
	movl	-32(%ebp),%edx
	movzwl	4(%edx),%edx
	testl	%edx,%edx
	je	Lj343
	jmp	Lj344
Lj343:
	movb	$0,-5(%ebp)
	jmp	Lj309
Lj344:
	movl	-4(%ebp),%edx
	movl	124(%edx),%ecx
	movl	-20(%ebp),%edx
	shll	$8,%edx
	leal	(%ecx,%edx),%edx
	movl	%edx,-36(%ebp)
	movl	-36(%ebp),%edx
	movl	(%edx),%edx
	cmpl	$0,%edx
	jl	Lj354
	jmp	Lj355
Lj354:
	movb	$0,-5(%ebp)
	jmp	Lj309
Lj355:
	movl	$1,-24(%ebp)
	decl	-24(%ebp)
	.align 2
Lj360:
	incl	-24(%ebp)
	movl	-40(%ebp),%esi
	movl	-24(%ebp),%ebx
	movl	-36(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	(%ecx,%edx,4),%edx
	movl	%edx,(%esi,%ebx,4)
	movl	-36(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	(%ecx,%edx,4),%edx
	testl	%edx,%edx
	jne	Lj363
	jmp	Lj364
Lj363:
	movb	$1,-13(%ebp)
Lj364:
	cmpl	$5,-24(%ebp)
	jl	Lj360
	addl	$24,-40(%ebp)
	addl	$84,-28(%ebp)
	cmpl	-20(%ebp),%eax
	jg	Lj336
Lj335:
	movb	-13(%ebp),%al
	movb	%al,-5(%ebp)
Lj309:
	movb	-5(%ebp),%al
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JDCOEFCT_DECOMPRESS_SMOOTH_DATA$J_DECOMPRESS_PTR$JSAMPIMAGE$$LONGINT
_JDCOEFCT_DECOMPRESS_SMOOTH_DATA$J_DECOMPRESS_PTR$JSAMPIMAGE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$456,%esp
	movl	%ebx,-436(%ebp)
	movl	%esi,-432(%ebp)
	movl	%edi,-428(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	376(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	decl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj376
	.align 2
Lj375:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	108(%eax),%eax
	cmpl	116(%edx),%eax
	je	Lj378
	jmp	Lj379
Lj378:
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	testl	%eax,%eax
	je	Lj380
	jmp	Lj381
Lj380:
	movl	$1,-420(%ebp)
	jmp	Lj384
Lj381:
	movl	$0,-420(%ebp)
Lj384:
	movl	-4(%ebp),%eax
	movl	120(%eax),%ecx
	movl	%ecx,%ebx
	sarl	$31,%ebx
	movl	-420(%ebp),%eax
	movl	$0,%edx
	addl	%eax,%ecx
	adcl	%edx,%ebx
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	movl	$0,%edx
	cmpl	%edx,%ebx
	jl	Lj387
	jg	Lj388
	cmpl	%eax,%ecx
	jb	Lj387
	jmp	Lj388
Lj387:
	jmp	Lj377
Lj388:
Lj379:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	testl	%eax,%eax
	je	Lj389
	jmp	Lj390
Lj389:
	movl	$0,-12(%ebp)
	jmp	Lj369
Lj390:
Lj376:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	108(%eax),%eax
	cmpl	116(%edx),%eax
	jle	Lj395
	jmp	Lj377
Lj395:
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movb	17(%eax),%al
	testb	%al,%al
	je	Lj375
	jmp	Lj377
Lj377:
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-72(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	decl	%eax
	movl	%eax,-424(%ebp)
	movl	$0,-32(%ebp)
	movl	-424(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jl	Lj399
	decl	-32(%ebp)
	.align 2
Lj400:
	incl	-32(%ebp)
	movl	-72(%ebp),%eax
	movb	48(%eax),%al
	testb	%al,%al
	je	Lj401
	jmp	Lj402
Lj401:
	jmp	Lj398
Lj402:
	movl	-4(%ebp),%eax
	movl	120(%eax),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	movl	-20(%ebp),%ebx
	movl	$0,%eax
	cmpl	%eax,%edx
	jl	Lj403
	jg	Lj404
	cmpl	%ebx,%ecx
	jb	Lj403
	jmp	Lj404
Lj403:
	movl	-72(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-44(%ebp)
	movb	$0,-78(%ebp)
	jmp	Lj411
Lj404:
	movl	-72(%ebp),%eax
	movl	32(%eax),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-72(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	call	Lfpc_mod_int64$stub
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj418
	jmp	Lj419
Lj418:
	movl	-72(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-40(%ebp)
Lj419:
	movl	-40(%ebp),%eax
	movl	%eax,-44(%ebp)
	movb	$1,-78(%ebp)
Lj411:
	movl	-4(%ebp),%eax
	movl	120(%eax),%eax
	cmpl	$0,%eax
	jg	Lj426
	jmp	Lj427
Lj426:
	movl	-72(%ebp),%eax
	movl	12(%eax),%eax
	addl	%eax,-44(%ebp)
	movb	$0,(%esp)
	movl	-44(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	120(%eax),%ecx
	decl	%ecx
	movl	-72(%ebp),%eax
	movl	12(%eax),%eax
	imull	%eax,%ecx
	movl	-16(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	72(%edx,%eax,4),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	32(%ebx),%ebx
	call	*%ebx
	movl	%eax,-48(%ebp)
	movl	-72(%ebp),%eax
	movl	12(%eax),%eax
	shll	$2,%eax
	addl	%eax,-48(%ebp)
	movb	$0,-77(%ebp)
	jmp	Lj442
Lj427:
	movb	$0,(%esp)
	movl	-44(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	72(%eax,%edx,4),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	32(%ebx),%ebx
	call	*%ebx
	movl	%eax,-48(%ebp)
	movb	$1,-77(%ebp)
Lj442:
	movl	-16(%ebp),%eax
	movl	112(%eax),%eax
	movl	%eax,-340(%ebp)
	movl	-32(%ebp),%eax
	imull	$24,%eax
	addl	%eax,-340(%ebp)
	movl	-72(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-344(%ebp)
	movl	-344(%ebp),%eax
	movzwl	(%eax),%eax
	movl	%eax,-348(%ebp)
	movl	-344(%ebp),%eax
	movzwl	2(%eax),%eax
	movl	%eax,-352(%ebp)
	movl	-344(%ebp),%eax
	movzwl	16(%eax),%eax
	movl	%eax,-360(%ebp)
	movl	-344(%ebp),%eax
	movzwl	32(%eax),%eax
	movl	%eax,-368(%ebp)
	movl	-344(%ebp),%eax
	movzwl	18(%eax),%eax
	movl	%eax,-364(%ebp)
	movl	-344(%ebp),%eax
	movzwl	4(%eax),%eax
	movl	%eax,-356(%ebp)
	movl	-4(%ebp),%eax
	movl	396(%eax),%edx
	movl	-32(%ebp),%eax
	movl	4(%edx,%eax,4),%eax
	movl	%eax,-76(%ebp)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-64(%ebp)
	movl	-40(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%esi
	jl	Lj478
	decl	-36(%ebp)
	.align 2
Lj479:
	incl	-36(%ebp)
	movl	-48(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-52(%ebp)
	cmpb	$0,-77(%ebp)
	jne	Lj484
	jmp	Lj483
Lj484:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj482
	jmp	Lj483
Lj482:
	movl	-52(%ebp),%eax
	movl	%eax,-56(%ebp)
	jmp	Lj487
Lj483:
	movl	-48(%ebp),%edx
	movl	-36(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-56(%ebp)
Lj487:
	cmpb	$0,-78(%ebp)
	jne	Lj492
	jmp	Lj491
Lj492:
	movl	-40(%ebp),%eax
	decl	%eax
	cmpl	-36(%ebp),%eax
	je	Lj490
	jmp	Lj491
Lj490:
	movl	-52(%ebp),%eax
	movl	%eax,-60(%ebp)
	jmp	Lj495
Lj491:
	movl	-48(%ebp),%edx
	movl	-36(%ebp),%eax
	incl	%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-60(%ebp)
Lj495:
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-384(%ebp)
	movl	-384(%ebp),%eax
	movl	%eax,-380(%ebp)
	movl	-380(%ebp),%eax
	movl	%eax,-376(%ebp)
	movl	-52(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-396(%ebp)
	movl	-396(%ebp),%eax
	movl	%eax,-392(%ebp)
	movl	-392(%ebp),%eax
	movl	%eax,-388(%ebp)
	movl	-60(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-408(%ebp)
	movl	-408(%ebp),%eax
	movl	%eax,-404(%ebp)
	movl	-404(%ebp),%eax
	movl	%eax,-400(%ebp)
	movl	$0,-68(%ebp)
	movl	-72(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jb	Lj521
	decl	-24(%ebp)
	.align 2
Lj522:
	incl	-24(%ebp)
	leal	-336(%ebp),%edx
	movl	-52(%ebp),%eax
	movl	$1,%ecx
	call	L_JUTILS_JCOPY_BLOCK_ROW$JBLOCKROW$JBLOCKROW$LONGWORD$stub
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jb	Lj529
	jmp	Lj530
Lj529:
	movl	-56(%ebp),%eax
	movl	256(%eax),%eax
	movl	%eax,-384(%ebp)
	movl	-52(%ebp),%eax
	movl	256(%eax),%eax
	movl	%eax,-396(%ebp)
	movl	-60(%ebp),%eax
	movl	256(%eax),%eax
	movl	%eax,-408(%ebp)
Lj530:
	movl	-340(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-412(%ebp)
	movl	-412(%ebp),%eax
	testl	%eax,%eax
	jne	Lj541
	jmp	Lj540
Lj541:
	movl	-332(%ebp),%eax
	testl	%eax,%eax
	je	Lj539
	jmp	Lj540
Lj539:
	movl	-348(%ebp),%eax
	imull	$36,%eax
	movl	-388(%ebp),%edx
	movl	-396(%ebp),%ecx
	subl	%ecx,%edx
	imull	%edx,%eax
	movl	%eax,-372(%ebp)
	movl	-372(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj544
	jmp	Lj545
Lj544:
	movl	-352(%ebp),%eax
	shll	$7,%eax
	movl	-372(%ebp),%edx
	addl	%edx,%eax
	movl	-352(%ebp),%ecx
	shll	$8,%ecx
	cltd
	idivl	%ecx
	movl	%eax,-416(%ebp)
	movl	-412(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj550
	jmp	Lj549
Lj550:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	cmpl	-416(%ebp),%eax
	jle	Lj548
	jmp	Lj549
Lj548:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	%eax,-416(%ebp)
Lj549:
	jmp	Lj553
Lj545:
	movl	-352(%ebp),%eax
	shll	$7,%eax
	movl	-372(%ebp),%edx
	subl	%edx,%eax
	movl	-352(%ebp),%ecx
	shll	$8,%ecx
	cltd
	idivl	%ecx
	movl	%eax,-416(%ebp)
	movl	-412(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj558
	jmp	Lj557
Lj558:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	cmpl	-416(%ebp),%eax
	jle	Lj556
	jmp	Lj557
Lj556:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	%eax,-416(%ebp)
Lj557:
	movl	-416(%ebp),%eax
	negl	%eax
	movl	%eax,-416(%ebp)
Lj553:
	movl	-416(%ebp),%eax
	movl	%eax,-332(%ebp)
Lj540:
	movl	-340(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-412(%ebp)
	movl	-412(%ebp),%eax
	testl	%eax,%eax
	jne	Lj569
	jmp	Lj568
Lj569:
	movl	-304(%ebp),%eax
	testl	%eax,%eax
	je	Lj567
	jmp	Lj568
Lj567:
	movl	-348(%ebp),%eax
	imull	$36,%eax
	movl	-380(%ebp),%edx
	movl	-404(%ebp),%ecx
	subl	%ecx,%edx
	imull	%edx,%eax
	movl	%eax,-372(%ebp)
	movl	-372(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj572
	jmp	Lj573
Lj572:
	movl	-360(%ebp),%eax
	shll	$7,%eax
	movl	-372(%ebp),%edx
	addl	%edx,%eax
	movl	-360(%ebp),%ecx
	shll	$8,%ecx
	cltd
	idivl	%ecx
	movl	%eax,-416(%ebp)
	movl	-412(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj578
	jmp	Lj577
Lj578:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	cmpl	-416(%ebp),%eax
	jle	Lj576
	jmp	Lj577
Lj576:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	%eax,-416(%ebp)
Lj577:
	jmp	Lj581
Lj573:
	movl	-360(%ebp),%eax
	shll	$7,%eax
	movl	-372(%ebp),%edx
	subl	%edx,%eax
	movl	-360(%ebp),%ecx
	shll	$8,%ecx
	cltd
	idivl	%ecx
	movl	%eax,-416(%ebp)
	movl	-412(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj586
	jmp	Lj585
Lj586:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	cmpl	-416(%ebp),%eax
	jle	Lj584
	jmp	Lj585
Lj584:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	%eax,-416(%ebp)
Lj585:
	movl	-416(%ebp),%eax
	negl	%eax
	movl	%eax,-416(%ebp)
Lj581:
	movl	-416(%ebp),%eax
	movl	%eax,-304(%ebp)
Lj568:
	movl	-340(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-412(%ebp)
	movl	-412(%ebp),%eax
	testl	%eax,%eax
	jne	Lj597
	jmp	Lj596
Lj597:
	movl	-272(%ebp),%eax
	testl	%eax,%eax
	je	Lj595
	jmp	Lj596
Lj595:
	movl	-348(%ebp),%ecx
	imull	$9,%ecx
	movl	-380(%ebp),%edx
	movl	-404(%ebp),%eax
	addl	%eax,%edx
	movl	-392(%ebp),%eax
	shll	$1,%eax
	subl	%eax,%edx
	imull	%edx,%ecx
	movl	%ecx,-372(%ebp)
	movl	-372(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj600
	jmp	Lj601
Lj600:
	movl	-368(%ebp),%eax
	shll	$7,%eax
	movl	-372(%ebp),%edx
	addl	%edx,%eax
	movl	-368(%ebp),%ecx
	shll	$8,%ecx
	cltd
	idivl	%ecx
	movl	%eax,-416(%ebp)
	movl	-412(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj606
	jmp	Lj605
Lj606:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	cmpl	-416(%ebp),%eax
	jle	Lj604
	jmp	Lj605
Lj604:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	%eax,-416(%ebp)
Lj605:
	jmp	Lj609
Lj601:
	movl	-368(%ebp),%eax
	shll	$7,%eax
	movl	-372(%ebp),%edx
	subl	%edx,%eax
	movl	-368(%ebp),%ecx
	shll	$8,%ecx
	cltd
	idivl	%ecx
	movl	%eax,-416(%ebp)
	movl	-412(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj614
	jmp	Lj613
Lj614:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	cmpl	-416(%ebp),%eax
	jle	Lj612
	jmp	Lj613
Lj612:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	%eax,-416(%ebp)
Lj613:
	movl	-416(%ebp),%eax
	negl	%eax
	movl	%eax,-416(%ebp)
Lj609:
	movl	-416(%ebp),%eax
	movl	%eax,-272(%ebp)
Lj596:
	movl	-340(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-412(%ebp)
	movl	-412(%ebp),%eax
	testl	%eax,%eax
	jne	Lj625
	jmp	Lj624
Lj625:
	movl	-300(%ebp),%eax
	testl	%eax,%eax
	je	Lj623
	jmp	Lj624
Lj623:
	movl	-348(%ebp),%ecx
	imull	$5,%ecx
	movl	-376(%ebp),%edx
	movl	-384(%ebp),%eax
	subl	%eax,%edx
	movl	-400(%ebp),%eax
	subl	%eax,%edx
	movl	-408(%ebp),%eax
	addl	%eax,%edx
	imull	%edx,%ecx
	movl	%ecx,-372(%ebp)
	movl	-372(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj628
	jmp	Lj629
Lj628:
	movl	-364(%ebp),%eax
	shll	$7,%eax
	movl	-372(%ebp),%edx
	addl	%edx,%eax
	movl	-364(%ebp),%ecx
	shll	$8,%ecx
	cltd
	idivl	%ecx
	movl	%eax,-416(%ebp)
	movl	-412(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj634
	jmp	Lj633
Lj634:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	cmpl	-416(%ebp),%eax
	jle	Lj632
	jmp	Lj633
Lj632:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	%eax,-416(%ebp)
Lj633:
	jmp	Lj637
Lj629:
	movl	-364(%ebp),%eax
	shll	$7,%eax
	movl	-372(%ebp),%edx
	subl	%edx,%eax
	movl	-364(%ebp),%ecx
	shll	$8,%ecx
	cltd
	idivl	%ecx
	movl	%eax,-416(%ebp)
	movl	-412(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj642
	jmp	Lj641
Lj642:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	cmpl	-416(%ebp),%eax
	jle	Lj640
	jmp	Lj641
Lj640:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	%eax,-416(%ebp)
Lj641:
	movl	-416(%ebp),%eax
	negl	%eax
	movl	%eax,-416(%ebp)
Lj637:
	movl	-416(%ebp),%eax
	movl	%eax,-300(%ebp)
Lj624:
	movl	-340(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-412(%ebp)
	movl	-412(%ebp),%eax
	testl	%eax,%eax
	jne	Lj653
	jmp	Lj652
Lj653:
	movl	-328(%ebp),%eax
	testl	%eax,%eax
	je	Lj651
	jmp	Lj652
Lj651:
	movl	-348(%ebp),%edx
	imull	$9,%edx
	movl	-388(%ebp),%eax
	movl	-396(%ebp),%ecx
	addl	%ecx,%eax
	movl	-392(%ebp),%ecx
	shll	$1,%ecx
	subl	%ecx,%eax
	imull	%eax,%edx
	movl	%edx,-372(%ebp)
	movl	-372(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj656
	jmp	Lj657
Lj656:
	movl	-356(%ebp),%eax
	shll	$7,%eax
	movl	-372(%ebp),%edx
	addl	%edx,%eax
	movl	-356(%ebp),%ecx
	shll	$8,%ecx
	cltd
	idivl	%ecx
	movl	%eax,-416(%ebp)
	movl	-412(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj662
	jmp	Lj661
Lj662:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	cmpl	-416(%ebp),%eax
	jle	Lj660
	jmp	Lj661
Lj660:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	%eax,-416(%ebp)
Lj661:
	jmp	Lj665
Lj657:
	movl	-356(%ebp),%eax
	shll	$7,%eax
	movl	-372(%ebp),%edx
	subl	%edx,%eax
	movl	-356(%ebp),%ecx
	shll	$8,%ecx
	cltd
	idivl	%ecx
	movl	%eax,-416(%ebp)
	movl	-412(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj670
	jmp	Lj669
Lj670:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	cmpl	-416(%ebp),%eax
	jle	Lj668
	jmp	Lj669
Lj668:
	movl	$1,%eax
	movl	-412(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	%eax,-416(%ebp)
Lj669:
	movl	-416(%ebp),%eax
	negl	%eax
	movl	%eax,-416(%ebp)
Lj665:
	movl	-416(%ebp),%eax
	movl	%eax,-328(%ebp)
Lj652:
	movl	-68(%ebp),%eax
	movl	%eax,(%esp)
	movl	-64(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-336(%ebp),%ecx
	movl	-72(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-76(%ebp),%edi
	call	*%edi
	movl	-380(%ebp),%eax
	movl	%eax,-376(%ebp)
	movl	-384(%ebp),%eax
	movl	%eax,-380(%ebp)
	movl	-392(%ebp),%eax
	movl	%eax,-388(%ebp)
	movl	-396(%ebp),%eax
	movl	%eax,-392(%ebp)
	movl	-404(%ebp),%eax
	movl	%eax,-400(%ebp)
	movl	-408(%ebp),%eax
	movl	%eax,-404(%ebp)
	addl	$256,-52(%ebp)
	addl	$256,-56(%ebp)
	addl	$256,-60(%ebp)
	movl	-72(%ebp),%eax
	movl	36(%eax),%eax
	addl	%eax,-68(%ebp)
	cmpl	-24(%ebp),%ebx
	ja	Lj522
Lj521:
	movl	-72(%ebp),%eax
	movl	36(%eax),%eax
	shll	$2,%eax
	addl	%eax,-64(%ebp)
	cmpl	-36(%ebp),%esi
	jg	Lj479
Lj478:
	addl	$84,-72(%ebp)
Lj398:
	movl	-424(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jg	Lj400
Lj399:
	movl	-4(%ebp),%eax
	incl	120(%eax)
	movl	-4(%ebp),%eax
	movl	120(%eax),%ecx
	movl	%ecx,%ebx
	sarl	$31,%ebx
	movl	-4(%ebp),%eax
	movl	268(%eax),%edx
	movl	$0,%eax
	cmpl	%eax,%ebx
	jl	Lj699
	jg	Lj700
	cmpl	%edx,%ecx
	jb	Lj699
	jmp	Lj700
Lj699:
	movl	$3,-12(%ebp)
	jmp	Lj369
Lj700:
	movl	$4,-12(%ebp)
Lj369:
	movl	-12(%ebp),%eax
	movl	-436(%ebp),%ebx
	movl	-432(%ebp),%esi
	movl	-428(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JDCOEFCT_JINIT_D_COEF_CONTROLLER$J_DECOMPRESS_PTR$BOOLEAN
_JDCOEFCT_JINIT_D_COEF_CONTROLLER$J_DECOMPRESS_PTR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	call	Lj706
Lj706:
	popl	%esi
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$116,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,376(%eax)
	movl	-12(%ebp),%edx
	movl	L_JDCOEFCT_START_INPUT_PASS$J_DECOMPRESS_PTR$non_lazy_ptr-Lj706(%esi),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%edx
	movl	L_JDCOEFCT_START_OUTPUT_PASS$J_DECOMPRESS_PTR$non_lazy_ptr-Lj706(%esi),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movl	$0,112(%eax)
	cmpb	$0,-8(%ebp)
	jne	Lj723
	jmp	Lj724
Lj723:
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj728
	decl	-16(%ebp)
	.align 2
Lj729:
	incl	-16(%ebp)
	movl	-24(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,184(%eax)
	jne	Lj732
	jmp	Lj733
Lj732:
	movl	-20(%ebp),%eax
	imull	$3,%eax
	movl	%eax,-20(%ebp)
Lj733:
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	12(%eax),%edx
	movl	-24(%ebp),%eax
	movl	32(%eax),%eax
	call	L_JUTILS_JROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	8(%eax),%edx
	movl	-24(%ebp),%eax
	movl	28(%eax),%eax
	call	L_JUTILS_JROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movb	$1,%cl
	movl	$1,%edx
	movl	-4(%ebp),%edi
	movl	4(%edi),%edi
	movl	20(%edi),%edi
	call	*%edi
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	%eax,72(%edx,%ecx,4)
	addl	$84,-24(%ebp)
	cmpl	-16(%ebp),%ebx
	jg	Lj729
Lj728:
	movl	-12(%ebp),%edx
	movl	L_JDCOEFCT_CONSUME_DATA$J_DECOMPRESS_PTR$$LONGINT$non_lazy_ptr-Lj706(%esi),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%edx
	movl	L_JDCOEFCT_DECOMPRESS_DATA$J_DECOMPRESS_PTR$JSAMPIMAGE$$LONGINT$non_lazy_ptr-Lj706(%esi),%eax
	movl	%eax,12(%edx)
	movl	-12(%ebp),%eax
	leal	72(%eax),%eax
	movl	-12(%ebp),%edx
	movl	%eax,16(%edx)
	jmp	Lj764
Lj724:
	movl	-4(%ebp),%eax
	movl	$2560,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	%eax,-28(%ebp)
	movl	$0,-32(%ebp)
	decl	-32(%ebp)
	.align 2
Lj775:
	incl	-32(%ebp)
	movl	-12(%ebp),%edx
	movl	-32(%ebp),%ecx
	movl	-28(%ebp),%eax
	movl	%eax,32(%edx,%ecx,4)
	addl	$256,-28(%ebp)
	cmpl	$9,-32(%ebp)
	jl	Lj775
	movl	-12(%ebp),%edx
	movl	L_JDCOEFCT_DUMMY_CONSUME_DATA$J_DECOMPRESS_PTR$$LONGINT$non_lazy_ptr-Lj706(%esi),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%edx
	movl	L_JDCOEFCT_DECOMPRESS_ONEPASS$J_DECOMPRESS_PTR$JSAMPIMAGE$$LONGINT$non_lazy_ptr-Lj706(%esi),%eax
	movl	%eax,12(%edx)
	movl	-12(%ebp),%eax
	movl	$0,16(%eax)
Lj764:
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JDCOEFCT
_THREADVARLIST_JDCOEFCT:
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

L_JDCOEFCT_START_IMCU_ROW$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDCOEFCT_START_IMCU_ROW$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDCOEFCT_SMOOTHING_OK$J_DECOMPRESS_PTR$$BOOLEAN$stub:
.indirect_symbol _JDCOEFCT_SMOOTHING_OK$J_DECOMPRESS_PTR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JUTILS_JZERO_FAR$POINTER$LONGINT$stub:
.indirect_symbol _JUTILS_JZERO_FAR$POINTER$LONGINT
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

Lfpc_mod_int64$stub:
.indirect_symbol fpc_mod_int64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JUTILS_JCOPY_BLOCK_ROW$JBLOCKROW$JBLOCKROW$LONGWORD$stub:
.indirect_symbol _JUTILS_JCOPY_BLOCK_ROW$JBLOCKROW$JBLOCKROW$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JUTILS_JROUND_UP$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JUTILS_JROUND_UP$LONGINT$LONGINT$$LONGINT
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
L_JDCOEFCT_DECOMPRESS_SMOOTH_DATA$J_DECOMPRESS_PTR$JSAMPIMAGE$$LONGINT$non_lazy_ptr:
.indirect_symbol _JDCOEFCT_DECOMPRESS_SMOOTH_DATA$J_DECOMPRESS_PTR$JSAMPIMAGE$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDCOEFCT_DECOMPRESS_DATA$J_DECOMPRESS_PTR$JSAMPIMAGE$$LONGINT$non_lazy_ptr:
.indirect_symbol _JDCOEFCT_DECOMPRESS_DATA$J_DECOMPRESS_PTR$JSAMPIMAGE$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDCOEFCT_START_INPUT_PASS$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JDCOEFCT_START_INPUT_PASS$J_DECOMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDCOEFCT_START_OUTPUT_PASS$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JDCOEFCT_START_OUTPUT_PASS$J_DECOMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDCOEFCT_CONSUME_DATA$J_DECOMPRESS_PTR$$LONGINT$non_lazy_ptr:
.indirect_symbol _JDCOEFCT_CONSUME_DATA$J_DECOMPRESS_PTR$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDCOEFCT_DUMMY_CONSUME_DATA$J_DECOMPRESS_PTR$$LONGINT$non_lazy_ptr:
.indirect_symbol _JDCOEFCT_DUMMY_CONSUME_DATA$J_DECOMPRESS_PTR$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDCOEFCT_DECOMPRESS_ONEPASS$J_DECOMPRESS_PTR$JSAMPIMAGE$$LONGINT$non_lazy_ptr:
.indirect_symbol _JDCOEFCT_DECOMPRESS_ONEPASS$J_DECOMPRESS_PTR$JSAMPIMAGE$$LONGINT
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

