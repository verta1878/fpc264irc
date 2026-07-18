# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JDSAMPLE_START_PASS_UPSAMPLE$J_DECOMPRESS_PTR
_JDSAMPLE_START_PASS_UPSAMPLE$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	400(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	260(%eax),%eax
	movl	%eax,92(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,96(%edx)
	leave
	ret

.text
	.align 4
.globl	_JDSAMPLE_SEP_UPSAMPLE$crc49DD75E1
_JDSAMPLE_SEP_UPSAMPLE$crc49DD75E1:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	400(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	92(%eax),%eax
	cmpl	260(%edx),%eax
	jge	Lj15
	jmp	Lj16
Lj15:
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj20
	decl	-20(%ebp)
	.align 2
Lj21:
	incl	-20(%ebp)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,4),%esi
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	$0,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	100(%eax,%edx,4),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	leal	(%esi,%eax,4),%ecx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	12(%eax,%edx,4),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%esi
	movl	-20(%ebp),%edi
	movl	52(%esi,%edi,4),%esi
	call	*%esi
	addl	$84,-24(%ebp)
	cmpl	-20(%ebp),%ebx
	jg	Lj21
Lj20:
	movl	-16(%ebp),%eax
	movl	$0,92(%eax)
Lj16:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	260(%eax),%ecx
	movl	92(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-28(%ebp)
	movl	-16(%ebp),%eax
	movl	96(%eax),%eax
	cmpl	-28(%ebp),%eax
	jb	Lj40
	jmp	Lj41
Lj40:
	movl	-16(%ebp),%eax
	movl	96(%eax),%eax
	movl	%eax,-28(%ebp)
Lj41:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	subl	%eax,8(%ebp)
	movl	-28(%ebp),%eax
	cmpl	8(%ebp),%eax
	ja	Lj44
	jmp	Lj45
Lj44:
	movl	8(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj45:
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%edx
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	leal	(%edx,%eax,4),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	leal	12(%eax),%edx
	movl	-16(%ebp),%eax
	movl	92(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	404(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	12(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,(%eax)
	movl	-16(%ebp),%edx
	movl	-28(%ebp),%eax
	subl	%eax,96(%edx)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,92(%eax)
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	92(%eax),%eax
	cmpl	260(%edx),%eax
	jge	Lj58
	jmp	Lj59
Lj58:
	movl	-12(%ebp),%eax
	incl	(%eax)
Lj59:
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JDSAMPLE_FULLSIZE_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
_JDSAMPLE_FULLSIZE_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,(%eax)
	leave
	ret

.text
	.align 4
.globl	_JDSAMPLE_NOOP_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
_JDSAMPLE_NOOP_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	leave
	ret

.text
	.align 4
.globl	_JDSAMPLE_INT_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
_JDSAMPLE_INT_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	400(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movzbl	140(%edx,%eax,1),%eax
	movl	%eax,-40(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movzbl	150(%edx,%eax,1),%eax
	movl	%eax,-44(%ebp)
	movl	$0,-48(%ebp)
	movl	$0,-52(%ebp)
	jmp	Lj83
	.align 2
Lj82:
	movl	-12(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%edx
	movl	-52(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-56(%ebp)
	jmp	Lj92
	.align 2
Lj91:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-29(%ebp)
	incl	-24(%ebp)
	movl	-40(%ebp),%eax
	decl	%eax
	movl	%eax,-36(%ebp)
	cmpl	$0,-36(%ebp)
	jl	Lj97
	incl	-36(%ebp)
	.align 2
Lj98:
	decl	-36(%ebp)
	movl	-28(%ebp),%eax
	movb	-29(%ebp),%dl
	movb	%dl,(%eax)
	incl	-28(%ebp)
	decl	-56(%ebp)
	cmpl	$0,-36(%ebp)
	jg	Lj98
Lj97:
Lj92:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj91
	jmp	Lj93
Lj93:
	movl	-44(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj101
	jmp	Lj102
Lj101:
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,(%esp)
	movl	-44(%ebp),%eax
	decl	%eax
	movl	%eax,4(%esp)
	movl	-52(%ebp),%eax
	incl	%eax
	movl	%eax,8(%esp)
	movl	-20(%ebp),%ecx
	movl	-52(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_JUTILS_JCOPY_SAMPLE_ROWS$JSAMPARRAY$LONGINT$JSAMPARRAY$LONGINT$LONGINT$LONGWORD$stub
Lj102:
	incl	-48(%ebp)
	movl	-44(%ebp),%eax
	addl	%eax,-52(%ebp)
Lj83:
	movl	-4(%ebp),%eax
	movl	260(%eax),%eax
	cmpl	-52(%ebp),%eax
	jg	Lj82
	jmp	Lj84
Lj84:
	leave
	ret

.text
	.align 4
.globl	_JDSAMPLE_H2V1_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
_JDSAMPLE_H2V1_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	260(%eax),%eax
	decl	%eax
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%eax
	jl	Lj120
	decl	-36(%ebp)
	.align 2
Lj121:
	incl	-36(%ebp)
	movl	-12(%ebp),%ecx
	movl	-36(%ebp),%edx
	movl	(%ecx,%edx,4),%edx
	movl	%edx,-20(%ebp)
	movl	-16(%ebp),%edx
	movl	-36(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-24(%ebp)
	movl	-4(%ebp),%edx
	movl	76(%edx),%edx
	movl	%edx,-32(%ebp)
	jmp	Lj129
	.align 2
Lj128:
	movl	-20(%ebp),%edx
	movb	(%edx),%dl
	movb	%dl,-25(%ebp)
	incl	-20(%ebp)
	movl	-24(%ebp),%edx
	movb	-25(%ebp),%cl
	movb	%cl,(%edx)
	incl	-24(%ebp)
	movl	-24(%ebp),%edx
	movb	-25(%ebp),%cl
	movb	%cl,(%edx)
	incl	-24(%ebp)
	subl	$2,-32(%ebp)
Lj129:
	movl	-32(%ebp),%edx
	cmpl	$0,%edx
	jg	Lj128
	jmp	Lj130
Lj130:
	cmpl	-36(%ebp),%eax
	jg	Lj121
Lj120:
	leave
	ret

.text
	.align 4
.globl	_JDSAMPLE_H2V2_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
_JDSAMPLE_H2V2_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-36(%ebp)
	movl	$0,-40(%ebp)
	jmp	Lj146
	.align 2
Lj145:
	movl	-12(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-32(%ebp)
	jmp	Lj155
	.align 2
Lj154:
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-25(%ebp)
	incl	-20(%ebp)
	movl	-24(%ebp),%eax
	movb	-25(%ebp),%dl
	movb	%dl,(%eax)
	incl	-24(%ebp)
	movl	-24(%ebp),%eax
	movb	-25(%ebp),%dl
	movb	%dl,(%eax)
	incl	-24(%ebp)
	subl	$2,-32(%ebp)
Lj155:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj154
	jmp	Lj156
Lj156:
	movl	$1,4(%esp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,(%esp)
	movl	-40(%ebp),%eax
	incl	%eax
	movl	%eax,8(%esp)
	movl	-16(%ebp),%ecx
	movl	-40(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_JUTILS_JCOPY_SAMPLE_ROWS$JSAMPARRAY$LONGINT$JSAMPARRAY$LONGINT$LONGINT$LONGWORD$stub
	incl	-36(%ebp)
	addl	$2,-40(%ebp)
Lj146:
	movl	-4(%ebp),%eax
	movl	260(%eax),%eax
	cmpl	-40(%ebp),%eax
	jg	Lj145
	jmp	Lj147
Lj147:
	leave
	ret

.text
	.align 4
.globl	_JDSAMPLE_H2V1_FANCY_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
_JDSAMPLE_H2V1_FANCY_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	260(%eax),%eax
	decl	%eax
	movl	$0,-40(%ebp)
	cmpl	-40(%ebp),%eax
	jl	Lj180
	decl	-40(%ebp)
	.align 2
Lj181:
	incl	-40(%ebp)
	movl	-12(%ebp),%ecx
	movl	-40(%ebp),%edx
	movl	(%ecx,%edx,4),%edx
	movl	%edx,-24(%ebp)
	movl	-16(%ebp),%edx
	movl	-40(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-28(%ebp)
	movl	-24(%ebp),%edx
	movl	%edx,-20(%ebp)
	movl	-24(%ebp),%edx
	movzbl	(%edx),%edx
	movl	%edx,-32(%ebp)
	incl	-24(%ebp)
	movl	-28(%ebp),%edx
	movb	-32(%ebp),%cl
	movb	%cl,(%edx)
	incl	-28(%ebp)
	movl	-32(%ebp),%edx
	imull	$3,%edx
	movl	-24(%ebp),%ecx
	movzbl	(%ecx),%ecx
	addl	%ecx,%edx
	addl	$2,%edx
	shrl	$2,%edx
	movl	-28(%ebp),%ecx
	movb	%dl,(%ecx)
	incl	-28(%ebp)
	movl	-8(%ebp),%edx
	movl	40(%edx),%edx
	movl	$0,%ecx
	subl	$2,%edx
	sbbl	$0,%ecx
	subl	$1,%edx
	sbbl	$0,%ecx
	movl	%edx,-36(%ebp)
	cmpl	$0,-36(%ebp)
	jb	Lj195
	incl	-36(%ebp)
	.align 2
Lj196:
	decl	-36(%ebp)
	movl	-24(%ebp),%edx
	movzbl	(%edx),%edx
	imull	$3,%edx
	movl	%edx,-32(%ebp)
	incl	-24(%ebp)
	movl	-20(%ebp),%edx
	movzbl	(%edx),%edx
	movl	-32(%ebp),%ecx
	addl	%ecx,%edx
	incl	%edx
	shrl	$2,%edx
	movl	-28(%ebp),%ecx
	movb	%dl,(%ecx)
	incl	-20(%ebp)
	incl	-28(%ebp)
	movl	-24(%ebp),%edx
	movzbl	(%edx),%edx
	movl	-32(%ebp),%ecx
	addl	%ecx,%edx
	addl	$2,%edx
	shrl	$2,%edx
	movl	-28(%ebp),%ecx
	movb	%dl,(%ecx)
	incl	-28(%ebp)
	cmpl	$0,-36(%ebp)
	ja	Lj196
Lj195:
	movl	-24(%ebp),%edx
	movzbl	(%edx),%edx
	movl	%edx,-32(%ebp)
	movl	-32(%ebp),%edx
	imull	$3,%edx
	movl	-20(%ebp),%ecx
	movzbl	(%ecx),%ecx
	addl	%ecx,%edx
	incl	%edx
	shrl	$2,%edx
	movl	-28(%ebp),%ecx
	movb	%dl,(%ecx)
	incl	-28(%ebp)
	movl	-28(%ebp),%edx
	movb	-32(%ebp),%cl
	movb	%cl,(%edx)
	cmpl	-40(%ebp),%eax
	jg	Lj181
Lj180:
	leave
	ret

.text
	.align 4
.globl	_JDSAMPLE_H2V2_FANCY_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
_JDSAMPLE_H2V2_FANCY_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-52(%ebp)
	movl	$0,-48(%ebp)
	jmp	Lj218
	.align 2
Lj217:
	movl	$0,-56(%ebp)
	decl	-56(%ebp)
	.align 2
Lj222:
	incl	-56(%ebp)
	movl	-12(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-20(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj225
	jmp	Lj226
Lj225:
	movl	-12(%ebp),%eax
	movl	%eax,-60(%ebp)
	subl	$4,-60(%ebp)
	movl	-60(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj231
Lj226:
	movl	-12(%ebp),%edx
	movl	-48(%ebp),%eax
	incl	%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-24(%ebp)
Lj231:
	movl	-16(%ebp),%eax
	movl	-52(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-28(%ebp)
	incl	-52(%ebp)
	movl	-20(%ebp),%eax
	movzbl	(%eax),%edx
	imull	$3,%edx
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-32(%ebp)
	incl	-20(%ebp)
	incl	-24(%ebp)
	movl	-20(%ebp),%eax
	movzbl	(%eax),%edx
	imull	$3,%edx
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-40(%ebp)
	incl	-20(%ebp)
	incl	-24(%ebp)
	movl	-32(%ebp),%eax
	shll	$2,%eax
	addl	$8,%eax
	shrl	$4,%eax
	movl	-28(%ebp),%edx
	movb	%al,(%edx)
	incl	-28(%ebp)
	movl	-32(%ebp),%eax
	imull	$3,%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	addl	$7,%eax
	shrl	$4,%eax
	movl	-28(%ebp),%edx
	movb	%al,(%edx)
	incl	-28(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-40(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	$0,%edx
	subl	$2,%eax
	sbbl	$0,%edx
	subl	$1,%eax
	sbbl	$0,%edx
	movl	%eax,-44(%ebp)
	cmpl	$0,-44(%ebp)
	jb	Lj249
	incl	-44(%ebp)
	.align 2
Lj250:
	decl	-44(%ebp)
	movl	-20(%ebp),%eax
	movzbl	(%eax),%edx
	imull	$3,%edx
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-40(%ebp)
	incl	-20(%ebp)
	incl	-24(%ebp)
	movl	-32(%ebp),%eax
	imull	$3,%eax
	movl	-36(%ebp),%edx
	addl	%edx,%eax
	addl	$8,%eax
	shrl	$4,%eax
	movl	-28(%ebp),%edx
	movb	%al,(%edx)
	incl	-28(%ebp)
	movl	-32(%ebp),%eax
	imull	$3,%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	addl	$7,%eax
	shrl	$4,%eax
	movl	-28(%ebp),%edx
	movb	%al,(%edx)
	incl	-28(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-40(%ebp),%eax
	movl	%eax,-32(%ebp)
	cmpl	$0,-44(%ebp)
	ja	Lj250
Lj249:
	movl	-32(%ebp),%eax
	imull	$3,%eax
	movl	-36(%ebp),%edx
	addl	%edx,%eax
	addl	$8,%eax
	shrl	$4,%eax
	movl	-28(%ebp),%edx
	movb	%al,(%edx)
	incl	-28(%ebp)
	movl	-32(%ebp),%eax
	shll	$2,%eax
	addl	$7,%eax
	shrl	$4,%eax
	movl	-28(%ebp),%edx
	movb	%al,(%edx)
	cmpl	$1,-56(%ebp)
	jl	Lj222
	incl	-48(%ebp)
Lj218:
	movl	-4(%ebp),%eax
	movl	260(%eax),%eax
	cmpl	-52(%ebp),%eax
	jg	Lj217
	jmp	Lj219
Lj219:
	leave
	ret

.text
	.align 4
.globl	_JDSAMPLE_JINIT_UPSAMPLER$J_DECOMPRESS_PTR
_JDSAMPLE_JINIT_UPSAMPLER$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	movl	%edi,-40(%ebp)
	call	Lj266
Lj266:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$160,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,400(%eax)
	movl	-8(%ebp),%edx
	movl	L_JDSAMPLE_START_PASS_UPSAMPLE$J_DECOMPRESS_PTR$non_lazy_ptr-Lj266(%esi),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	L_JDSAMPLE_SEP_UPSAMPLE$crc49DD75E1$non_lazy_ptr-Lj266(%esi),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	movb	$0,8(%eax)
	movl	-4(%ebp),%eax
	cmpb	$0,250(%eax)
	jne	Lj283
	jmp	Lj284
Lj283:
	movl	-4(%ebp),%eax
	movb	$25,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj284:
	movl	-4(%ebp),%eax
	cmpb	$0,63(%eax)
	jne	Lj291
	jmp	Lj290
Lj291:
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	cmpl	$1,%eax
	jg	Lj289
	jmp	Lj290
Lj289:
	movb	$1,-18(%ebp)
	jmp	Lj292
Lj290:
	movb	$0,-18(%ebp)
Lj292:
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj296
	decl	-12(%ebp)
	.align 2
Lj297:
	incl	-12(%ebp)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	8(%eax),%eax
	movl	36(%edx),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%ecx
	cltd
	idivl	264(%ecx)
	movl	%eax,-24(%ebp)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	12(%eax),%eax
	movl	36(%edx),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%ecx
	cltd
	idivl	264(%ecx)
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	256(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	260(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ecx
	movl	%ecx,100(%edx,%eax,4)
	movb	$1,-17(%ebp)
	movl	-16(%ebp),%eax
	movb	48(%eax),%al
	testb	%al,%al
	je	Lj310
	jmp	Lj311
Lj310:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	L_JDSAMPLE_NOOP_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr-Lj266(%esi),%eax
	movl	%eax,52(%edx,%ecx,4)
	movb	$0,-17(%ebp)
	jmp	Lj316
Lj311:
	movl	-24(%ebp),%eax
	cmpl	-32(%ebp),%eax
	je	Lj319
	jmp	Lj318
Lj319:
	movl	-28(%ebp),%eax
	cmpl	-36(%ebp),%eax
	je	Lj317
	jmp	Lj318
Lj317:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	L_JDSAMPLE_FULLSIZE_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr-Lj266(%esi),%eax
	movl	%eax,52(%edx,%ecx,4)
	movb	$0,-17(%ebp)
	jmp	Lj324
Lj318:
	movl	-24(%ebp),%eax
	shll	$1,%eax
	cmpl	-32(%ebp),%eax
	je	Lj327
	jmp	Lj326
Lj327:
	movl	-28(%ebp),%eax
	cmpl	-36(%ebp),%eax
	je	Lj325
	jmp	Lj326
Lj325:
	cmpb	$0,-18(%ebp)
	jne	Lj330
	jmp	Lj329
Lj330:
	movl	-16(%ebp),%eax
	movl	40(%eax),%eax
	cmpl	$2,%eax
	ja	Lj328
	jmp	Lj329
Lj328:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	L_JDSAMPLE_H2V1_FANCY_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr-Lj266(%esi),%eax
	movl	%eax,52(%edx,%ecx,4)
	jmp	Lj333
Lj329:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	L_JDSAMPLE_H2V1_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr-Lj266(%esi),%eax
	movl	%eax,52(%edx,%ecx,4)
Lj333:
	jmp	Lj336
Lj326:
	movl	-24(%ebp),%eax
	shll	$1,%eax
	cmpl	-32(%ebp),%eax
	je	Lj339
	jmp	Lj338
Lj339:
	movl	-28(%ebp),%eax
	shll	$1,%eax
	cmpl	-36(%ebp),%eax
	je	Lj337
	jmp	Lj338
Lj337:
	cmpb	$0,-18(%ebp)
	jne	Lj342
	jmp	Lj341
Lj342:
	movl	-16(%ebp),%eax
	movl	40(%eax),%eax
	cmpl	$2,%eax
	ja	Lj340
	jmp	Lj341
Lj340:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	L_JDSAMPLE_H2V2_FANCY_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr-Lj266(%esi),%eax
	movl	%eax,52(%edx,%ecx,4)
	movl	-8(%ebp),%eax
	movb	$1,8(%eax)
	jmp	Lj347
Lj341:
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	L_JDSAMPLE_H2V2_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr-Lj266(%esi),%eax
	movl	%eax,52(%ecx,%edx,4)
Lj347:
	jmp	Lj350
Lj338:
	movl	-32(%ebp),%eax
	cltd
	idivl	-24(%ebp)
	testl	%edx,%edx
	je	Lj353
	jmp	Lj352
Lj353:
	movl	-36(%ebp),%eax
	cltd
	idivl	-28(%ebp)
	testl	%edx,%edx
	je	Lj351
	jmp	Lj352
Lj351:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	L_JDSAMPLE_INT_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr-Lj266(%esi),%eax
	movl	%eax,52(%edx,%ecx,4)
	movl	-32(%ebp),%eax
	cltd
	idivl	-24(%ebp)
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movb	%al,140(%ecx,%edx,1)
	movl	-36(%ebp),%eax
	cltd
	idivl	-28(%ebp)
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movb	%al,150(%ecx,%edx,1)
	jmp	Lj360
Lj352:
	movl	-4(%ebp),%eax
	movb	$39,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj360:
Lj350:
Lj336:
Lj324:
Lj316:
	cmpb	$0,-17(%ebp)
	jne	Lj365
	jmp	Lj366
Lj365:
	movl	-4(%ebp),%eax
	movl	260(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	256(%eax),%edx
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	call	L_JUTILS_JROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%edi
	movl	4(%edi),%edi
	movl	8(%edi),%edi
	call	*%edi
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	%eax,12(%edx,%ecx,4)
Lj366:
	addl	$84,-16(%ebp)
	cmpl	-12(%ebp),%ebx
	jg	Lj297
Lj296:
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	movl	-40(%ebp),%edi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JDSAMPLE
_THREADVARLIST_JDSAMPLE:
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

Lfpc_mul_int64$stub:
.indirect_symbol fpc_mul_int64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JUTILS_JCOPY_SAMPLE_ROWS$JSAMPARRAY$LONGINT$JSAMPARRAY$LONGINT$LONGINT$LONGWORD$stub:
.indirect_symbol _JUTILS_JCOPY_SAMPLE_ROWS$JSAMPARRAY$LONGINT$JSAMPARRAY$LONGINT$LONGINT$LONGWORD
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

.const_data
	.align 2
.globl	_INIT_JDSAMPLE_UPSAMPLE1_PTR
_INIT_JDSAMPLE_UPSAMPLE1_PTR:
	.byte	23,13
	.ascii	"upsample1_ptr"

.const_data
	.align 2
.globl	_RTTI_JDSAMPLE_UPSAMPLE1_PTR
_RTTI_JDSAMPLE_UPSAMPLE1_PTR:
	.byte	23,13
	.ascii	"upsample1_ptr"
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
L_JDSAMPLE_START_PASS_UPSAMPLE$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JDSAMPLE_START_PASS_UPSAMPLE$J_DECOMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDSAMPLE_SEP_UPSAMPLE$crc49DD75E1$non_lazy_ptr:
.indirect_symbol _JDSAMPLE_SEP_UPSAMPLE$crc49DD75E1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDSAMPLE_NOOP_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr:
.indirect_symbol _JDSAMPLE_NOOP_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDSAMPLE_FULLSIZE_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr:
.indirect_symbol _JDSAMPLE_FULLSIZE_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDSAMPLE_H2V1_FANCY_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr:
.indirect_symbol _JDSAMPLE_H2V1_FANCY_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDSAMPLE_H2V1_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr:
.indirect_symbol _JDSAMPLE_H2V1_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDSAMPLE_H2V2_FANCY_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr:
.indirect_symbol _JDSAMPLE_H2V2_FANCY_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDSAMPLE_H2V2_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr:
.indirect_symbol _JDSAMPLE_H2V2_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDSAMPLE_INT_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr:
.indirect_symbol _JDSAMPLE_INT_UPSAMPLE$J_DECOMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
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

