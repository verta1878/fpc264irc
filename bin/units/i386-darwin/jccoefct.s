# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JCCOEFCT_START_IMCU_ROW$J_COMPRESS_PTR
_JCCOEFCT_START_IMCU_ROW$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	324(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	224(%eax),%eax
	cmpl	$1,%eax
	jg	Lj7
	jmp	Lj8
Lj7:
	movl	-8(%ebp),%eax
	movl	$1,20(%eax)
	jmp	Lj11
Lj8:
	movl	-4(%ebp),%eax
	movl	220(%eax),%ebx
	movl	$0,%ecx
	subl	$1,%ebx
	sbbl	$0,%ecx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	$0,%edx
	cmpl	%edx,%ecx
	jg	Lj12
	jl	Lj13
	cmpl	%eax,%ebx
	ja	Lj12
	jmp	Lj13
Lj12:
	movl	-4(%ebp),%eax
	movl	228(%eax),%eax
	movl	-8(%ebp),%edx
	movl	12(%eax),%eax
	movl	%eax,20(%edx)
	jmp	Lj16
Lj13:
	movl	-4(%ebp),%eax
	movl	228(%eax),%eax
	movl	-8(%ebp),%edx
	movl	72(%eax),%eax
	movl	%eax,20(%edx)
Lj16:
Lj11:
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCCOEFCT_START_PASS_COEF$J_COMPRESS_PTR$J_BUF_MODE
_JCCOEFCT_START_PASS_COEF$J_COMPRESS_PTR$J_BUF_MODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj24
Lj24:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	324(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	call	L_JCCOEFCT_START_IMCU_ROW$J_COMPRESS_PTR$stub
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj33
	subb	$2,%al
	je	Lj35
	decb	%al
	je	Lj34
	jmp	Lj32
Lj33:
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	jne	Lj36
	jmp	Lj37
Lj36:
	movl	-4(%ebp),%eax
	movb	$4,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj37:
	movl	-12(%ebp),%edx
	movl	L_JCCOEFCT_COMPRESS_DATA$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN$non_lazy_ptr-Lj24(%ebx),%eax
	movl	%eax,4(%edx)
	jmp	Lj31
Lj34:
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj44
	jmp	Lj45
Lj44:
	movl	-4(%ebp),%eax
	movb	$4,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj45:
	movl	-12(%ebp),%edx
	movl	L_JCCOEFCT_COMPRESS_FIRST_PASS$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN$non_lazy_ptr-Lj24(%ebx),%eax
	movl	%eax,4(%edx)
	jmp	Lj31
Lj35:
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj52
	jmp	Lj53
Lj52:
	movl	-4(%ebp),%eax
	movb	$4,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj53:
	movl	-12(%ebp),%edx
	movl	L_JCCOEFCT_COMPRESS_OUTPUT$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN$non_lazy_ptr-Lj24(%ebx),%eax
	movl	%eax,4(%edx)
	jmp	Lj31
Lj32:
	movl	-4(%ebp),%eax
	movb	$4,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj31:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCCOEFCT_COMPRESS_DATA$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN
_JCCOEFCT_COMPRESS_DATA$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	movl	%edi,-80(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	324(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	244(%eax),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	220(%eax),%eax
	decl	%eax
	movl	%eax,-28(%ebp)
	movl	-16(%ebp),%eax
	movl	20(%eax),%eax
	decl	%eax
	movl	%eax,-76(%ebp)
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-76(%ebp),%eax
	cmpl	-48(%ebp),%eax
	jl	Lj73
	decl	-48(%ebp)
	.align 2
Lj74:
	incl	-48(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-72(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj76
	decl	-20(%ebp)
	.align 2
Lj77:
	incl	-20(%ebp)
	movl	$0,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	224(%eax),%eax
	decl	%eax
	movl	%eax,-68(%ebp)
	movl	$0,-40(%ebp)
	movl	-68(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jl	Lj81
	decl	-40(%ebp)
	.align 2
Lj82:
	incl	-40(%ebp)
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	228(%eax,%edx,4),%eax
	movl	%eax,-64(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj85
	jmp	Lj86
Lj85:
	movl	-64(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-52(%ebp)
	jmp	Lj89
Lj86:
	movl	-64(%ebp),%eax
	movl	68(%eax),%eax
	movl	%eax,-52(%ebp)
Lj89:
	movl	-20(%ebp),%edx
	movl	$0,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	movl	-64(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,-60(%ebp)
	movl	-48(%ebp),%eax
	shll	$3,%eax
	movl	%eax,-56(%ebp)
	movl	-64(%ebp),%eax
	movl	56(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-44(%ebp)
	cmpl	-44(%ebp),%esi
	jl	Lj103
	decl	-44(%ebp)
	.align 2
Lj104:
	incl	-44(%ebp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-28(%ebp),%eax
	jb	Lj105
	jmp	Lj107
Lj107:
	movl	-48(%ebp),%edx
	movl	-44(%ebp),%eax
	addl	%eax,%edx
	movl	-64(%ebp),%eax
	cmpl	72(%eax),%edx
	jl	Lj105
	jmp	Lj106
Lj105:
	movl	-52(%ebp),%eax
	movl	%eax,(%esp)
	movl	-60(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	24(%eax,%edx,4),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%edx
	movl	-64(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%edx,%eax,4),%ecx
	movl	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	340(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	-64(%ebp),%eax
	movl	52(%eax),%eax
	cmpl	-52(%ebp),%eax
	jg	Lj122
	jmp	Lj123
Lj122:
	movl	-64(%ebp),%eax
	movl	52(%eax),%eax
	movl	-52(%ebp),%edx
	subl	%edx,%eax
	shll	$8,%eax
	movl	%eax,%edx
	movl	-16(%ebp),%ecx
	movl	-32(%ebp),%ebx
	movl	-52(%ebp),%eax
	addl	%eax,%ebx
	movl	%ebx,%eax
	movl	24(%ecx,%eax,4),%eax
	call	L_JUTILS_JZERO_FAR$POINTER$LONGINT$stub
	movl	-64(%ebp),%eax
	movl	52(%eax),%eax
	decl	%eax
	movl	%eax,%edx
	movl	-52(%ebp),%eax
	movl	%eax,-36(%ebp)
	cmpl	-36(%ebp),%edx
	jl	Lj129
	decl	-36(%ebp)
	.align 2
Lj130:
	incl	-36(%ebp)
	movl	-16(%ebp),%ebx
	movl	-32(%ebp),%ecx
	movl	-36(%ebp),%eax
	addl	%eax,%ecx
	decl	%ecx
	movl	%ecx,%eax
	movl	24(%ebx,%eax,4),%ebx
	movl	-16(%ebp),%ecx
	movl	-32(%ebp),%eax
	movl	-36(%ebp),%edi
	addl	%edi,%eax
	movl	24(%ecx,%eax,4),%ecx
	movl	(%ebx),%eax
	movl	%eax,(%ecx)
	cmpl	-36(%ebp),%edx
	jg	Lj130
Lj129:
Lj123:
	jmp	Lj133
Lj106:
	movl	-64(%ebp),%eax
	movl	52(%eax),%eax
	shll	$8,%eax
	movl	%eax,%edx
	movl	-16(%ebp),%ecx
	movl	-32(%ebp),%eax
	movl	24(%ecx,%eax,4),%eax
	call	L_JUTILS_JZERO_FAR$POINTER$LONGINT$stub
	movl	-64(%ebp),%eax
	movl	52(%eax),%eax
	decl	%eax
	movl	%eax,%edx
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%edx
	jl	Lj139
	decl	-36(%ebp)
	.align 2
Lj140:
	incl	-36(%ebp)
	movl	-16(%ebp),%ebx
	movl	-32(%ebp),%ecx
	movl	-36(%ebp),%eax
	addl	%eax,%ecx
	movl	%ecx,%eax
	movl	24(%ebx,%eax,4),%ecx
	movl	-16(%ebp),%ebx
	movl	-32(%ebp),%eax
	decl	%eax
	movl	24(%ebx,%eax,4),%eax
	movl	(%eax),%eax
	movl	%eax,(%ecx)
	cmpl	-36(%ebp),%edx
	jg	Lj140
Lj139:
Lj133:
	movl	-64(%ebp),%eax
	movl	52(%eax),%eax
	addl	%eax,-32(%ebp)
	addl	$8,-56(%ebp)
	cmpl	-44(%ebp),%esi
	jg	Lj104
Lj103:
	movl	-68(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jg	Lj82
Lj81:
	movl	-16(%ebp),%eax
	leal	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$536870910,%ecx
	movl	-4(%ebp),%ebx
	movl	344(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	testb	%al,%al
	je	Lj143
	jmp	Lj144
Lj143:
	movl	-16(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,12(%edx)
	movb	$0,-9(%ebp)
	jmp	Lj64
Lj144:
	movl	-72(%ebp),%eax
	cmpl	-20(%ebp),%eax
	ja	Lj77
Lj76:
	movl	-16(%ebp),%eax
	movl	$0,12(%eax)
	movl	-76(%ebp),%eax
	cmpl	-48(%ebp),%eax
	jg	Lj74
Lj73:
	movl	-16(%ebp),%eax
	incl	8(%eax)
	movl	-4(%ebp),%eax
	call	L_JCCOEFCT_START_IMCU_ROW$J_COMPRESS_PTR$stub
	movb	$1,-9(%ebp)
Lj64:
	movb	-9(%ebp),%al
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	movl	-80(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JCCOEFCT_COMPRESS_FIRST_PASS$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN
_JCCOEFCT_COMPRESS_FIRST_PASS$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	movl	%edi,-84(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	324(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	220(%eax),%eax
	decl	%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	decl	%eax
	movl	%eax,-80(%ebp)
	movl	$0,-40(%ebp)
	movl	-80(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jl	Lj172
	decl	-40(%ebp)
	.align 2
Lj173:
	incl	-40(%ebp)
	movl	-64(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%edx
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
	movl	-16(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	64(%eax,%edx,4),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	32(%ebx),%ebx
	call	*%ebx
	movl	%eax,-68(%ebp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj192
	jmp	Lj193
Lj192:
	movl	-64(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-52(%ebp)
	jmp	Lj196
Lj193:
	movl	-64(%ebp),%eax
	movl	32(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-64(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	call	Lfpc_mod_int64$stub
	movl	%eax,-52(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj203
	jmp	Lj204
Lj203:
	movl	-64(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-52(%ebp)
Lj204:
Lj196:
	movl	-64(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-64(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-24(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-44(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	call	Lfpc_mod_int64$stub
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj217
	jmp	Lj218
Lj217:
	movl	-44(%ebp),%eax
	movl	-56(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-56(%ebp)
Lj218:
	movl	-52(%ebp),%esi
	decl	%esi
	movl	$0,-48(%ebp)
	cmpl	-48(%ebp),%esi
	jl	Lj222
	decl	-48(%ebp)
	.align 2
Lj223:
	incl	-48(%ebp)
	movl	-68(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-72(%ebp)
	movl	$0,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-72(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-48(%ebp),%eax
	shll	$3,%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	(%eax,%edx,4),%ecx
	movl	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	340(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj240
	jmp	Lj241
Lj240:
	movl	-24(%ebp),%eax
	shll	$8,%eax
	addl	%eax,-72(%ebp)
	movl	-56(%ebp),%edx
	shll	$8,%edx
	movl	-72(%ebp),%eax
	call	L_JUTILS_JZERO_FAR$POINTER$LONGINT$stub
	subl	$256,-72(%ebp)
	movl	-72(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-60(%ebp)
	addl	$256,-72(%ebp)
	movl	-56(%ebp),%ebx
	decl	%ebx
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%ebx
	jl	Lj249
	decl	-36(%ebp)
	.align 2
Lj250:
	incl	-36(%ebp)
	movl	-72(%ebp),%eax
	movl	-36(%ebp),%ecx
	shll	$8,%ecx
	movl	-60(%ebp),%edx
	movl	%edx,(%eax,%ecx)
	cmpl	-36(%ebp),%ebx
	jg	Lj250
Lj249:
Lj241:
	cmpl	-48(%ebp),%esi
	jg	Lj223
Lj222:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-20(%ebp),%eax
	je	Lj253
	jmp	Lj254
Lj253:
	movl	-56(%ebp),%eax
	addl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-44(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	call	Lfpc_div_int64$stub
	movl	%eax,-28(%ebp)
	movl	-64(%ebp),%eax
	movl	12(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	-52(%ebp),%eax
	movl	%eax,-48(%ebp)
	cmpl	-48(%ebp),%ebx
	jl	Lj262
	decl	-48(%ebp)
	.align 2
Lj263:
	incl	-48(%ebp)
	movl	-68(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-72(%ebp)
	movl	-68(%ebp),%edx
	movl	-48(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-76(%ebp)
	movl	-24(%ebp),%edx
	shll	$8,%edx
	movl	-72(%ebp),%eax
	call	L_JUTILS_JZERO_FAR$POINTER$LONGINT$stub
	movl	-28(%ebp),%eax
	decl	%eax
	movl	%eax,%edx
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%edx
	jb	Lj273
	decl	-32(%ebp)
	.align 2
Lj274:
	incl	-32(%ebp)
	movl	-76(%ebp),%ecx
	movl	-44(%ebp),%eax
	decl	%eax
	shll	$8,%eax
	movl	(%ecx,%eax),%eax
	movl	%eax,-60(%ebp)
	movl	-44(%ebp),%eax
	decl	%eax
	movl	%eax,%ecx
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%ecx
	jl	Lj278
	decl	-36(%ebp)
	.align 2
Lj279:
	incl	-36(%ebp)
	movl	-72(%ebp),%esi
	movl	-36(%ebp),%eax
	movl	%eax,%edi
	shll	$8,%edi
	movl	-60(%ebp),%eax
	movl	%eax,(%esi,%edi)
	cmpl	-36(%ebp),%ecx
	jg	Lj279
Lj278:
	movl	-44(%ebp),%eax
	shll	$8,%eax
	addl	%eax,-72(%ebp)
	movl	-44(%ebp),%eax
	shll	$8,%eax
	addl	%eax,-76(%ebp)
	cmpl	-32(%ebp),%edx
	ja	Lj274
Lj273:
	cmpl	-48(%ebp),%ebx
	jg	Lj263
Lj262:
Lj254:
	addl	$84,-64(%ebp)
	movl	-80(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jg	Lj173
Lj172:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JCCOEFCT_COMPRESS_OUTPUT$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	movl	-84(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JCCOEFCT_COMPRESS_OUTPUT$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN
_JCCOEFCT_COMPRESS_OUTPUT$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	movl	%edi,-80(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	324(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	224(%eax),%esi
	decl	%esi
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%esi
	jl	Lj293
	decl	-28(%ebp)
	.align 2
Lj294:
	incl	-28(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	228(%eax,%edx,4),%eax
	movl	%eax,-68(%ebp)
	movl	-68(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%edx
	movl	$0,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,%ecx
	movb	$0,(%esp)
	movl	-68(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%edx
	movl	-68(%ebp),%eax
	movl	4(%eax),%eax
	movl	64(%edx,%eax,4),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	32(%ebx),%ebx
	call	*%ebx
	movl	-28(%ebp),%edx
	movl	%eax,-60(%ebp,%edx,4)
	cmpl	-28(%ebp),%esi
	jg	Lj294
Lj293:
	movl	-16(%ebp),%eax
	movl	20(%eax),%eax
	decl	%eax
	movl	%eax,-76(%ebp)
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-76(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jl	Lj316
	decl	-40(%ebp)
	.align 2
Lj317:
	incl	-40(%ebp)
	movl	-4(%ebp),%eax
	movl	244(%eax),%eax
	decl	%eax
	movl	%eax,-72(%ebp)
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-72(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj319
	decl	-20(%ebp)
	.align 2
Lj320:
	incl	-20(%ebp)
	movl	$0,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	224(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj324
	decl	-28(%ebp)
	.align 2
Lj325:
	incl	-28(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	228(%eax,%edx,4),%eax
	movl	%eax,-68(%ebp)
	movl	-20(%ebp),%eax
	movl	$0,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	-68(%ebp),%eax
	movl	52(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,-44(%ebp)
	movl	-68(%ebp),%eax
	movl	56(%eax),%eax
	decl	%eax
	movl	%eax,%edx
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%edx
	jl	Lj337
	decl	-36(%ebp)
	.align 2
Lj338:
	incl	-36(%ebp)
	movl	-28(%ebp),%eax
	movl	-60(%ebp,%eax,4),%esi
	movl	-36(%ebp),%ecx
	movl	-40(%ebp),%eax
	addl	%eax,%ecx
	movl	%ecx,%eax
	movl	(%esi,%eax,4),%ecx
	movl	-44(%ebp),%eax
	shll	$8,%eax
	leal	(%ecx,%eax),%eax
	movl	%eax,-64(%ebp)
	movl	-68(%ebp),%eax
	movl	52(%eax),%eax
	decl	%eax
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%eax
	jl	Lj342
	decl	-32(%ebp)
	.align 2
Lj343:
	incl	-32(%ebp)
	movl	-16(%ebp),%ecx
	movl	-24(%ebp),%esi
	movl	-64(%ebp),%edi
	movl	%edi,24(%ecx,%esi,4)
	incl	-24(%ebp)
	addl	$256,-64(%ebp)
	cmpl	-32(%ebp),%eax
	jg	Lj343
Lj342:
	cmpl	-36(%ebp),%edx
	jg	Lj338
Lj337:
	cmpl	-28(%ebp),%ebx
	jg	Lj325
Lj324:
	movl	-16(%ebp),%eax
	leal	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$9,%ecx
	movl	-4(%ebp),%ebx
	movl	344(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	testb	%al,%al
	je	Lj346
	jmp	Lj347
Lj346:
	movl	-16(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,12(%edx)
	movb	$0,-9(%ebp)
	jmp	Lj288
Lj347:
	movl	-72(%ebp),%eax
	cmpl	-20(%ebp),%eax
	ja	Lj320
Lj319:
	movl	-16(%ebp),%eax
	movl	$0,12(%eax)
	movl	-76(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jg	Lj317
Lj316:
	movl	-16(%ebp),%eax
	incl	8(%eax)
	movl	-4(%ebp),%eax
	call	L_JCCOEFCT_START_IMCU_ROW$J_COMPRESS_PTR$stub
	movb	$1,-9(%ebp)
Lj288:
	movb	-9(%ebp),%al
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	movl	-80(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JCCOEFCT_JINIT_C_COEF_CONTROLLER$J_COMPRESS_PTR$BOOLEAN
_JCCOEFCT_JINIT_C_COEF_CONTROLLER$J_COMPRESS_PTR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	call	Lj367
Lj367:
	popl	%edi
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$104,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,324(%eax)
	movl	-12(%ebp),%edx
	movl	L_JCCOEFCT_START_PASS_COEF$J_COMPRESS_PTR$J_BUF_MODE$non_lazy_ptr-Lj367(%edi),%eax
	movl	%eax,(%edx)
	cmpb	$0,-8(%ebp)
	jne	Lj380
	jmp	Lj381
Lj380:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj385
	decl	-24(%ebp)
	.align 2
Lj386:
	incl	-24(%ebp)
	movl	-28(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%eax
	movl	12(%eax),%edx
	movl	-28(%ebp),%eax
	movl	32(%eax),%eax
	call	L_JUTILS_JROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,4(%esp)
	movl	-28(%ebp),%eax
	movl	8(%eax),%edx
	movl	-28(%ebp),%eax
	movl	28(%eax),%eax
	call	L_JUTILS_JROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$1,%edx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	20(%esi),%esi
	call	*%esi
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	%eax,64(%ecx,%edx,4)
	addl	$84,-28(%ebp)
	cmpl	-24(%ebp),%ebx
	jg	Lj386
Lj385:
	jmp	Lj409
Lj381:
	movl	-4(%ebp),%eax
	movl	$2560,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj420:
	incl	-20(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	shll	$8,%eax
	leal	(%edx,%eax),%eax
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	%eax,24(%edx,%ecx,4)
	cmpl	$9,-20(%ebp)
	jl	Lj420
	movl	-12(%ebp),%eax
	movl	$0,64(%eax)
Lj409:
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JCCOEFCT
_THREADVARLIST_JCCOEFCT:
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

L_JCCOEFCT_START_IMCU_ROW$J_COMPRESS_PTR$stub:
.indirect_symbol _JCCOEFCT_START_IMCU_ROW$J_COMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE
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

L_JUTILS_JZERO_FAR$POINTER$LONGINT$stub:
.indirect_symbol _JUTILS_JZERO_FAR$POINTER$LONGINT
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

Lfpc_div_int64$stub:
.indirect_symbol fpc_div_int64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCCOEFCT_COMPRESS_OUTPUT$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN$stub:
.indirect_symbol _JCCOEFCT_COMPRESS_OUTPUT$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN
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
L_JCCOEFCT_COMPRESS_DATA$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JCCOEFCT_COMPRESS_DATA$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCCOEFCT_COMPRESS_FIRST_PASS$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JCCOEFCT_COMPRESS_FIRST_PASS$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCCOEFCT_COMPRESS_OUTPUT$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JCCOEFCT_COMPRESS_OUTPUT$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCCOEFCT_START_PASS_COEF$J_COMPRESS_PTR$J_BUF_MODE$non_lazy_ptr:
.indirect_symbol _JCCOEFCT_START_PASS_COEF$J_COMPRESS_PTR$J_BUF_MODE
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

