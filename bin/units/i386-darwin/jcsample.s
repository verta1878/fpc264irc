# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JCSAMPLE_START_PASS_DOWNSAMPLE$J_COMPRESS_PTR
_JCSAMPLE_START_PASS_DOWNSAMPLE$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_JCSAMPLE_EXPAND_RIGHT_EDGE$JSAMPARRAY$LONGINT$LONGWORD$LONGWORD
_JCSAMPLE_EXPAND_RIGHT_EDGE$JSAMPARRAY$LONGINT$LONGWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj9
	jmp	Lj10
Lj9:
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj12
	decl	-28(%ebp)
	.align 2
Lj13:
	incl	-28(%ebp)
	movl	-4(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	(%ecx,%edx,4),%ecx
	movl	-12(%ebp),%edx
	decl	%edx
	leal	(%ecx,%edx,1),%edx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%edx
	movb	(%edx),%dl
	movb	%dl,-17(%ebp)
	movl	-32(%ebp),%edx
	decl	%edx
	movl	%edx,-24(%ebp)
	cmpl	$0,-24(%ebp)
	jl	Lj19
	incl	-24(%ebp)
	.align 2
Lj20:
	decl	-24(%ebp)
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movb	-17(%ebp),%cl
	movb	%cl,(%edx)
	cmpl	$0,-24(%ebp)
	jg	Lj20
Lj19:
	cmpl	-28(%ebp),%eax
	jg	Lj13
Lj12:
Lj10:
	leave
	ret

.text
	.align 4
.globl	_JCSAMPLE_SEP_DOWNSAMPLE$J_COMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPIMAGE$LONGWORD
_JCSAMPLE_SEP_DOWNSAMPLE$J_COMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPIMAGE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	336(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj30
	decl	-20(%ebp)
	.align 2
Lj31:
	incl	-20(%ebp)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,4),%edx
	movl	-12(%ebp),%eax
	leal	(%edx,%eax,4),%eax
	movl	%eax,-28(%ebp)
	movl	12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%esi
	movl	8(%ebp),%edx
	movl	$0,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	movl	-24(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	leal	(%esi,%eax,4),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%esi
	movl	-20(%ebp),%edi
	movl	12(%esi,%edi,4),%esi
	call	*%esi
	addl	$84,-24(%ebp)
	cmpl	-20(%ebp),%ebx
	jg	Lj31
Lj30:
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JCSAMPLE_INT_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
_JCSAMPLE_INT_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	shll	$3,%eax
	movl	%eax,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	212(%eax),%eax
	cltd
	idivl	8(%ecx)
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	216(%eax),%eax
	cltd
	idivl	12(%ecx)
	movl	%eax,-28(%ebp)
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	movl	%edx,-36(%ebp)
	movl	-24(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-56(%ebp),%edx
	movl	$0,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	216(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_JCSAMPLE_EXPAND_RIGHT_EDGE$JSAMPARRAY$LONGINT$LONGWORD$LONGWORD$stub
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%ecx
	decl	%ecx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ecx
	jl	Lj79
	decl	-20(%ebp)
	.align 2
Lj80:
	incl	-20(%ebp)
	movl	8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-64(%ebp)
	movl	$0,-52(%ebp)
	movl	-56(%ebp),%ebx
	decl	%ebx
	movl	$0,-48(%ebp)
	cmpl	-48(%ebp),%ebx
	jb	Lj86
	decl	-48(%ebp)
	.align 2
Lj87:
	incl	-48(%ebp)
	movl	$0,-68(%ebp)
	movl	-28(%ebp),%eax
	decl	%eax
	movl	$0,-44(%ebp)
	cmpl	-44(%ebp),%eax
	jl	Lj91
	decl	-44(%ebp)
	.align 2
Lj92:
	incl	-44(%ebp)
	movl	-12(%ebp),%esi
	movl	-16(%ebp),%edx
	movl	-44(%ebp),%edi
	addl	%edi,%edx
	movl	(%esi,%edx,4),%edx
	movl	-52(%ebp),%esi
	leal	(%edx,%esi,1),%edx
	movl	%edx,-60(%ebp)
	movl	-24(%ebp),%edx
	decl	%edx
	movl	$0,-40(%ebp)
	cmpl	-40(%ebp),%edx
	jl	Lj96
	decl	-40(%ebp)
	.align 2
Lj97:
	incl	-40(%ebp)
	movl	-60(%ebp),%esi
	movzbl	(%esi),%esi
	addl	%esi,-68(%ebp)
	incl	-60(%ebp)
	cmpl	-40(%ebp),%edx
	jg	Lj97
Lj96:
	cmpl	-44(%ebp),%eax
	jg	Lj92
Lj91:
	movl	-68(%ebp),%eax
	movl	-36(%ebp),%edx
	addl	%edx,%eax
	cltd
	idivl	-32(%ebp)
	movl	-64(%ebp),%edx
	movb	%al,(%edx)
	incl	-64(%ebp)
	movl	-24(%ebp),%eax
	addl	%eax,-52(%ebp)
	cmpl	-48(%ebp),%ebx
	ja	Lj87
Lj86:
	movl	-28(%ebp),%eax
	addl	%eax,-16(%ebp)
	cmpl	-20(%ebp),%ecx
	jg	Lj80
Lj79:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JCSAMPLE_FULLSIZE_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
_JCSAMPLE_FULLSIZE_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,8(%esp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	216(%eax),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_JUTILS_JCOPY_SAMPLE_ROWS$JSAMPARRAY$LONGINT$JSAMPARRAY$LONGINT$LONGINT$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	shll	$3,%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	216(%eax),%edx
	movl	8(%ebp),%eax
	call	L_JCSAMPLE_EXPAND_RIGHT_EDGE$JSAMPARRAY$LONGINT$LONGWORD$LONGWORD$stub
	leave
	ret

.text
	.align 4
.globl	_JCSAMPLE_H2V1_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
_JCSAMPLE_H2V1_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	shll	$3,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	shll	$1,%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	216(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_JCSAMPLE_EXPAND_RIGHT_EDGE$JSAMPARRAY$LONGINT$LONGWORD$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj135
	decl	-16(%ebp)
	.align 2
Lj136:
	incl	-16(%ebp)
	movl	8(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-32(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-28(%ebp)
	movl	$0,-36(%ebp)
	movl	-24(%ebp),%edx
	decl	%edx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%edx
	jb	Lj144
	decl	-20(%ebp)
	.align 2
Lj145:
	incl	-20(%ebp)
	movl	-28(%ebp),%ecx
	movzbl	(%ecx),%ecx
	movl	-28(%ebp),%ebx
	movzbl	1(%ebx),%ebx
	addl	%ebx,%ecx
	movl	-36(%ebp),%ebx
	addl	%ebx,%ecx
	shrl	$1,%ecx
	movl	-32(%ebp),%ebx
	movb	%cl,(%ebx)
	incl	-32(%ebp)
	movl	-36(%ebp),%ecx
	xorl	$1,%ecx
	movl	%ecx,-36(%ebp)
	addl	$2,-28(%ebp)
	cmpl	-20(%ebp),%edx
	ja	Lj145
Lj144:
	cmpl	-16(%ebp),%eax
	jg	Lj136
Lj135:
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCSAMPLE_H2V2_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
_JCSAMPLE_H2V2_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	shll	$3,%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	shll	$1,%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	216(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_JCSAMPLE_EXPAND_RIGHT_EDGE$JSAMPARRAY$LONGINT$LONGWORD$LONGWORD$stub
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj165
	decl	-20(%ebp)
	.align 2
Lj166:
	incl	-20(%ebp)
	movl	8(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-40(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	(%ecx,%edx,4),%edx
	movl	%edx,-32(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	incl	%edx
	movl	(%ecx,%edx,4),%edx
	movl	%edx,-36(%ebp)
	movl	$1,-44(%ebp)
	movl	-28(%ebp),%edx
	decl	%edx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%edx
	jb	Lj176
	decl	-24(%ebp)
	.align 2
Lj177:
	incl	-24(%ebp)
	movl	-32(%ebp),%ecx
	movzbl	(%ecx),%ecx
	movl	-32(%ebp),%ebx
	movzbl	1(%ebx),%ebx
	addl	%ebx,%ecx
	movl	-36(%ebp),%ebx
	movzbl	(%ebx),%ebx
	addl	%ebx,%ecx
	movl	-36(%ebp),%ebx
	movzbl	1(%ebx),%ebx
	addl	%ebx,%ecx
	movl	-44(%ebp),%ebx
	addl	%ebx,%ecx
	shrl	$2,%ecx
	movl	-40(%ebp),%ebx
	movb	%cl,(%ebx)
	incl	-40(%ebp)
	movl	-44(%ebp),%ecx
	xorl	$3,%ecx
	movl	%ecx,-44(%ebp)
	addl	$2,-32(%ebp)
	addl	$2,-36(%ebp)
	cmpl	-24(%ebp),%edx
	ja	Lj177
Lj176:
	addl	$2,-16(%ebp)
	cmpl	-20(%ebp),%eax
	jg	Lj166
Lj165:
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCSAMPLE_H2V2_SMOOTH_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
_JCSAMPLE_H2V2_SMOOTH_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	shll	$3,%eax
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-68(%ebp)
	subl	$4,-68(%ebp)
	movl	-28(%ebp),%eax
	shll	$1,%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	216(%eax),%edx
	addl	$2,%edx
	movl	-4(%ebp),%eax
	movl	28(%eax),%ecx
	movl	-68(%ebp),%eax
	call	L_JCSAMPLE_EXPAND_RIGHT_EDGE$JSAMPARRAY$LONGINT$LONGWORD$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	176(%eax),%edx
	imull	$80,%edx
	movl	$16384,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	shll	$4,%eax
	movl	%eax,-64(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj203
	decl	-20(%ebp)
	.align 2
Lj204:
	incl	-20(%ebp)
	movl	8(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-48(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	(%ecx,%edx,4),%edx
	movl	%edx,-32(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	incl	%edx
	movl	(%ecx,%edx,4),%edx
	movl	%edx,-36(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	decl	%edx
	movl	(%ecx,%edx,4),%edx
	movl	%edx,-40(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	addl	$2,%edx
	movl	(%ecx,%edx,4),%edx
	movl	%edx,-44(%ebp)
	movl	-32(%ebp),%edx
	movzbl	(%edx),%ecx
	movl	-32(%ebp),%edx
	movzbl	1(%edx),%edx
	addl	%edx,%ecx
	movl	-36(%ebp),%edx
	movzbl	(%edx),%edx
	addl	%edx,%ecx
	movl	-36(%ebp),%edx
	movzbl	1(%edx),%edx
	addl	%edx,%ecx
	movl	%ecx,-52(%ebp)
	movl	-40(%ebp),%edx
	movzbl	(%edx),%ecx
	movl	-40(%ebp),%edx
	movzbl	1(%edx),%edx
	addl	%edx,%ecx
	movl	-44(%ebp),%edx
	movzbl	(%edx),%edx
	addl	%edx,%ecx
	movl	-44(%ebp),%edx
	movzbl	1(%edx),%edx
	addl	%edx,%ecx
	movl	-32(%ebp),%edx
	movzbl	(%edx),%edx
	addl	%edx,%ecx
	movl	-32(%ebp),%edx
	movzbl	2(%edx),%edx
	addl	%edx,%ecx
	movl	-36(%ebp),%edx
	movzbl	(%edx),%edx
	addl	%edx,%ecx
	movl	-36(%ebp),%edx
	movzbl	2(%edx),%edx
	addl	%edx,%ecx
	movl	%ecx,-56(%ebp)
	movl	-56(%ebp),%edx
	addl	%edx,-56(%ebp)
	movl	-40(%ebp),%edx
	movzbl	(%edx),%edx
	movl	-40(%ebp),%ecx
	movzbl	2(%ecx),%ecx
	addl	%ecx,%edx
	movl	-44(%ebp),%ecx
	movzbl	(%ecx),%ecx
	addl	%ecx,%edx
	movl	-44(%ebp),%ecx
	movzbl	2(%ecx),%ecx
	addl	%ecx,%edx
	addl	%edx,-56(%ebp)
	movl	-52(%ebp),%ebx
	movl	-60(%ebp),%edx
	imull	%edx,%ebx
	movl	-56(%ebp),%edx
	movl	-64(%ebp),%ecx
	imull	%ecx,%edx
	addl	%edx,%ebx
	movl	%ebx,-52(%ebp)
	movl	-52(%ebp),%edx
	addl	$32768,%edx
	shrl	$16,%edx
	movl	-48(%ebp),%ecx
	movb	%dl,(%ecx)
	incl	-48(%ebp)
	movl	-32(%ebp),%edx
	movl	%edx,-72(%ebp)
	movl	-36(%ebp),%edx
	movl	%edx,-76(%ebp)
	incl	-72(%ebp)
	incl	-76(%ebp)
	addl	$2,-32(%ebp)
	addl	$2,-36(%ebp)
	movl	-40(%ebp),%edx
	movl	%edx,-80(%ebp)
	movl	-44(%ebp),%edx
	movl	%edx,-84(%ebp)
	addl	$2,-40(%ebp)
	addl	$2,-44(%ebp)
	incl	-80(%ebp)
	incl	-84(%ebp)
	movl	-28(%ebp),%edx
	movl	$0,%ecx
	subl	$2,%edx
	sbbl	$0,%ecx
	subl	$1,%edx
	sbbl	$0,%ecx
	movl	%edx,-24(%ebp)
	cmpl	$0,-24(%ebp)
	jb	Lj232
	incl	-24(%ebp)
	.align 2
Lj233:
	decl	-24(%ebp)
	movl	-32(%ebp),%edx
	movzbl	(%edx),%ecx
	movl	-32(%ebp),%edx
	movzbl	1(%edx),%edx
	addl	%edx,%ecx
	movl	-36(%ebp),%edx
	movzbl	(%edx),%edx
	addl	%edx,%ecx
	movl	-36(%ebp),%edx
	movzbl	1(%edx),%edx
	addl	%edx,%ecx
	movl	%ecx,-52(%ebp)
	movl	-40(%ebp),%edx
	movzbl	(%edx),%ecx
	movl	-40(%ebp),%edx
	movzbl	1(%edx),%edx
	addl	%edx,%ecx
	movl	-44(%ebp),%edx
	movzbl	(%edx),%edx
	addl	%edx,%ecx
	movl	-44(%ebp),%edx
	movzbl	1(%edx),%edx
	addl	%edx,%ecx
	movl	-72(%ebp),%edx
	movzbl	(%edx),%edx
	addl	%edx,%ecx
	movl	-32(%ebp),%edx
	movzbl	2(%edx),%edx
	addl	%edx,%ecx
	movl	-76(%ebp),%edx
	movzbl	(%edx),%edx
	addl	%edx,%ecx
	movl	-36(%ebp),%edx
	movzbl	2(%edx),%edx
	addl	%edx,%ecx
	movl	%ecx,-56(%ebp)
	movl	-56(%ebp),%edx
	addl	%edx,-56(%ebp)
	movl	-80(%ebp),%edx
	movzbl	(%edx),%edx
	movl	-40(%ebp),%ecx
	movzbl	2(%ecx),%ecx
	addl	%ecx,%edx
	movl	-84(%ebp),%ecx
	movzbl	(%ecx),%ecx
	addl	%ecx,%edx
	movl	-44(%ebp),%ecx
	movzbl	2(%ecx),%ecx
	addl	%ecx,%edx
	addl	%edx,-56(%ebp)
	movl	-52(%ebp),%ebx
	movl	-60(%ebp),%edx
	imull	%edx,%ebx
	movl	-56(%ebp),%ecx
	movl	-64(%ebp),%edx
	imull	%edx,%ecx
	addl	%ecx,%ebx
	movl	%ebx,-52(%ebp)
	movl	-52(%ebp),%edx
	addl	$32768,%edx
	shrl	$16,%edx
	movl	-48(%ebp),%ecx
	movb	%dl,(%ecx)
	incl	-48(%ebp)
	addl	$2,-32(%ebp)
	addl	$2,-36(%ebp)
	addl	$2,-72(%ebp)
	addl	$2,-76(%ebp)
	addl	$2,-40(%ebp)
	addl	$2,-44(%ebp)
	addl	$2,-80(%ebp)
	addl	$2,-84(%ebp)
	cmpl	$0,-24(%ebp)
	ja	Lj233
Lj232:
	movl	-32(%ebp),%edx
	movzbl	(%edx),%ecx
	movl	-32(%ebp),%edx
	movzbl	1(%edx),%edx
	addl	%edx,%ecx
	movl	-36(%ebp),%edx
	movzbl	(%edx),%edx
	addl	%edx,%ecx
	movl	-36(%ebp),%edx
	movzbl	1(%edx),%edx
	addl	%edx,%ecx
	movl	%ecx,-52(%ebp)
	movl	-40(%ebp),%edx
	movzbl	(%edx),%ecx
	movl	-40(%ebp),%edx
	movzbl	1(%edx),%edx
	addl	%edx,%ecx
	movl	-44(%ebp),%edx
	movzbl	(%edx),%edx
	addl	%edx,%ecx
	movl	-44(%ebp),%edx
	movzbl	1(%edx),%edx
	addl	%edx,%ecx
	movl	-72(%ebp),%edx
	movzbl	(%edx),%edx
	addl	%edx,%ecx
	movl	-32(%ebp),%edx
	movzbl	1(%edx),%edx
	addl	%edx,%ecx
	movl	-76(%ebp),%edx
	movzbl	(%edx),%edx
	addl	%edx,%ecx
	movl	-36(%ebp),%edx
	movzbl	1(%edx),%edx
	addl	%edx,%ecx
	movl	%ecx,-56(%ebp)
	movl	-56(%ebp),%edx
	addl	%edx,-56(%ebp)
	movl	-80(%ebp),%edx
	movzbl	(%edx),%edx
	movl	-40(%ebp),%ecx
	movzbl	1(%ecx),%ecx
	addl	%ecx,%edx
	movl	-84(%ebp),%ecx
	movzbl	(%ecx),%ecx
	addl	%ecx,%edx
	movl	-44(%ebp),%ecx
	movzbl	1(%ecx),%ecx
	addl	%ecx,%edx
	addl	%edx,-56(%ebp)
	movl	-52(%ebp),%ebx
	movl	-60(%ebp),%edx
	imull	%edx,%ebx
	movl	-56(%ebp),%edx
	movl	-64(%ebp),%ecx
	imull	%ecx,%edx
	addl	%edx,%ebx
	movl	%ebx,-52(%ebp)
	movl	-52(%ebp),%edx
	addl	$32768,%edx
	shrl	$16,%edx
	movl	-48(%ebp),%ecx
	movb	%dl,(%ecx)
	addl	$2,-16(%ebp)
	cmpl	-20(%ebp),%eax
	jg	Lj204
Lj203:
	movl	-88(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCSAMPLE_FULLSIZE_SMOOTH_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
_JCSAMPLE_FULLSIZE_SMOOTH_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	shll	$3,%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-72(%ebp)
	subl	$4,-72(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	216(%eax),%edx
	addl	$2,%edx
	movl	-4(%ebp),%eax
	movl	28(%eax),%ecx
	movl	-72(%ebp),%eax
	call	L_JCSAMPLE_EXPAND_RIGHT_EDGE$JSAMPARRAY$LONGINT$LONGWORD$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	shll	$9,%eax
	movl	$65536,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	shll	$6,%eax
	movl	%eax,-56(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj269
	decl	-16(%ebp)
	.align 2
Lj270:
	incl	-16(%ebp)
	movl	8(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-40(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-28(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	decl	%edx
	movl	(%ecx,%edx,4),%edx
	movl	%edx,-32(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	incl	%edx
	movl	(%ecx,%edx,4),%edx
	movl	%edx,-36(%ebp)
	movl	-32(%ebp),%edx
	movzbl	(%edx),%ecx
	movl	-36(%ebp),%edx
	movzbl	(%edx),%edx
	addl	%edx,%ecx
	movl	-28(%ebp),%edx
	movzbl	(%edx),%edx
	addl	%edx,%ecx
	movl	%ecx,-60(%ebp)
	incl	-32(%ebp)
	incl	-36(%ebp)
	movl	-28(%ebp),%edx
	movzbl	(%edx),%edx
	movl	%edx,-44(%ebp)
	incl	-28(%ebp)
	movl	-32(%ebp),%edx
	movzbl	(%edx),%ecx
	movl	-36(%ebp),%edx
	movzbl	(%edx),%edx
	addl	%edx,%ecx
	movl	-28(%ebp),%edx
	movzbl	(%edx),%edx
	addl	%edx,%ecx
	movl	%ecx,-68(%ebp)
	movl	-60(%ebp),%ecx
	movl	-44(%ebp),%edx
	subl	%edx,%ecx
	movl	-60(%ebp),%edx
	addl	%edx,%ecx
	movl	-68(%ebp),%edx
	addl	%edx,%ecx
	movl	%ecx,-48(%ebp)
	movl	-44(%ebp),%ebx
	movl	-52(%ebp),%edx
	imull	%edx,%ebx
	movl	-48(%ebp),%edx
	movl	-56(%ebp),%ecx
	imull	%ecx,%edx
	addl	%edx,%ebx
	movl	%ebx,-44(%ebp)
	movl	-44(%ebp),%edx
	addl	$32768,%edx
	shrl	$16,%edx
	movl	-40(%ebp),%ecx
	movb	%dl,(%ecx)
	incl	-40(%ebp)
	movl	-60(%ebp),%edx
	movl	%edx,-64(%ebp)
	movl	-68(%ebp),%edx
	movl	%edx,-60(%ebp)
	movl	-24(%ebp),%edx
	movl	$0,%ecx
	subl	$2,%edx
	sbbl	$0,%ecx
	subl	$1,%edx
	sbbl	$0,%ecx
	movl	%edx,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jb	Lj296
	incl	-20(%ebp)
	.align 2
Lj297:
	decl	-20(%ebp)
	movl	-28(%ebp),%edx
	movzbl	(%edx),%edx
	movl	%edx,-44(%ebp)
	incl	-28(%ebp)
	incl	-32(%ebp)
	incl	-36(%ebp)
	movl	-32(%ebp),%edx
	movzbl	(%edx),%ecx
	movl	-36(%ebp),%edx
	movzbl	(%edx),%edx
	addl	%edx,%ecx
	movl	-28(%ebp),%edx
	movzbl	(%edx),%edx
	addl	%edx,%ecx
	movl	%ecx,-68(%ebp)
	movl	-60(%ebp),%ecx
	movl	-44(%ebp),%edx
	subl	%edx,%ecx
	movl	-64(%ebp),%edx
	addl	%edx,%ecx
	movl	-68(%ebp),%edx
	addl	%edx,%ecx
	movl	%ecx,-48(%ebp)
	movl	-44(%ebp),%ebx
	movl	-52(%ebp),%edx
	imull	%edx,%ebx
	movl	-48(%ebp),%ecx
	movl	-56(%ebp),%edx
	imull	%edx,%ecx
	addl	%ecx,%ebx
	movl	%ebx,-44(%ebp)
	movl	-44(%ebp),%edx
	addl	$32768,%edx
	shrl	$16,%edx
	movl	-40(%ebp),%ecx
	movb	%dl,(%ecx)
	incl	-40(%ebp)
	movl	-60(%ebp),%edx
	movl	%edx,-64(%ebp)
	movl	-68(%ebp),%edx
	movl	%edx,-60(%ebp)
	cmpl	$0,-20(%ebp)
	ja	Lj297
Lj296:
	movl	-28(%ebp),%edx
	movzbl	(%edx),%edx
	movl	%edx,-44(%ebp)
	movl	-60(%ebp),%ecx
	movl	-44(%ebp),%edx
	subl	%edx,%ecx
	movl	-64(%ebp),%edx
	addl	%edx,%ecx
	movl	-60(%ebp),%edx
	addl	%edx,%ecx
	movl	%ecx,-48(%ebp)
	movl	-44(%ebp),%ebx
	movl	-52(%ebp),%edx
	imull	%edx,%ebx
	movl	-48(%ebp),%edx
	movl	-56(%ebp),%ecx
	imull	%ecx,%edx
	addl	%edx,%ebx
	movl	%ebx,-44(%ebp)
	movl	-44(%ebp),%edx
	addl	$32768,%edx
	shrl	$16,%edx
	movl	-40(%ebp),%ecx
	movb	%dl,(%ecx)
	cmpl	-16(%ebp),%eax
	jg	Lj270
Lj269:
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCSAMPLE_JINIT_DOWNSAMPLER$J_COMPRESS_PTR
_JCSAMPLE_JINIT_DOWNSAMPLER$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj321
Lj321:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	$1,-17(%ebp)
	movl	-4(%ebp),%eax
	movl	$52,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	(%esi),%esi
	call	*%esi
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,336(%edx)
	movl	-8(%ebp),%edx
	movl	L_JCSAMPLE_START_PASS_DOWNSAMPLE$J_COMPRESS_PTR$non_lazy_ptr-Lj321(%ebx),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	L_JCSAMPLE_SEP_DOWNSAMPLE$J_COMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPIMAGE$LONGWORD$non_lazy_ptr-Lj321(%ebx),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	movb	$0,8(%eax)
	movl	-4(%ebp),%eax
	cmpb	$0,175(%eax)
	jne	Lj340
	jmp	Lj341
Lj340:
	movl	-4(%ebp),%eax
	movb	$25,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj341:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%esi
	decl	%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj349
	decl	-12(%ebp)
	.align 2
Lj350:
	incl	-12(%ebp)
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	212(%edx),%eax
	je	Lj353
	jmp	Lj352
Lj353:
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	12(%eax),%eax
	cmpl	216(%edx),%eax
	je	Lj351
	jmp	Lj352
Lj351:
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	testl	%eax,%eax
	jne	Lj354
	jmp	Lj355
Lj354:
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	L_JCSAMPLE_FULLSIZE_SMOOTH_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr-Lj321(%ebx),%eax
	movl	%eax,12(%ecx,%edx,4)
	movl	-8(%ebp),%eax
	movb	$1,8(%eax)
	jmp	Lj360
Lj355:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	L_JCSAMPLE_FULLSIZE_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr-Lj321(%ebx),%eax
	movl	%eax,12(%edx,%ecx,4)
Lj360:
	jmp	Lj363
Lj352:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	cmpl	212(%edx),%eax
	je	Lj366
	jmp	Lj365
Lj366:
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	12(%eax),%eax
	cmpl	216(%edx),%eax
	je	Lj364
	jmp	Lj365
Lj364:
	movb	$0,-17(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	L_JCSAMPLE_H2V1_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr-Lj321(%ebx),%eax
	movl	%eax,12(%edx,%ecx,4)
	jmp	Lj371
Lj365:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	cmpl	212(%edx),%eax
	je	Lj374
	jmp	Lj373
Lj374:
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	cmpl	216(%edx),%eax
	je	Lj372
	jmp	Lj373
Lj372:
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	testl	%eax,%eax
	jne	Lj375
	jmp	Lj376
Lj375:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	L_JCSAMPLE_H2V2_SMOOTH_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr-Lj321(%ebx),%eax
	movl	%eax,12(%edx,%ecx,4)
	movl	-8(%ebp),%eax
	movb	$1,8(%eax)
	jmp	Lj381
Lj376:
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	L_JCSAMPLE_H2V2_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr-Lj321(%ebx),%eax
	movl	%eax,12(%ecx,%edx,4)
Lj381:
	jmp	Lj384
Lj373:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	212(%eax),%eax
	cltd
	idivl	8(%ecx)
	testl	%edx,%edx
	je	Lj387
	jmp	Lj386
Lj387:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	216(%eax),%eax
	cltd
	idivl	12(%ecx)
	testl	%edx,%edx
	je	Lj385
	jmp	Lj386
Lj385:
	movb	$0,-17(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	L_JCSAMPLE_INT_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr-Lj321(%ebx),%eax
	movl	%eax,12(%edx,%ecx,4)
	jmp	Lj392
Lj386:
	movl	-4(%ebp),%eax
	movb	$39,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj392:
Lj384:
Lj371:
Lj363:
	addl	$84,-16(%ebp)
	cmpl	-12(%ebp),%esi
	jg	Lj350
Lj349:
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	testl	%eax,%eax
	jne	Lj399
	jmp	Lj398
Lj399:
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj397
	jmp	Lj398
Lj397:
	movl	-4(%ebp),%eax
	movb	$100,%cl
	movl	$0,%edx
	call	L_JERROR_TRACEMS$J_COMMON_PTR$LONGINT$J_MESSAGE_CODE$stub
Lj398:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JCSAMPLE
_THREADVARLIST_JCSAMPLE:
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

L_JCSAMPLE_EXPAND_RIGHT_EDGE$JSAMPARRAY$LONGINT$LONGWORD$LONGWORD$stub:
.indirect_symbol _JCSAMPLE_EXPAND_RIGHT_EDGE$JSAMPARRAY$LONGINT$LONGWORD$LONGWORD
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

L_JERROR_TRACEMS$J_COMMON_PTR$LONGINT$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_TRACEMS$J_COMMON_PTR$LONGINT$J_MESSAGE_CODE
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
L_JCSAMPLE_START_PASS_DOWNSAMPLE$J_COMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JCSAMPLE_START_PASS_DOWNSAMPLE$J_COMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCSAMPLE_SEP_DOWNSAMPLE$J_COMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPIMAGE$LONGWORD$non_lazy_ptr:
.indirect_symbol _JCSAMPLE_SEP_DOWNSAMPLE$J_COMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPIMAGE$LONGWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCSAMPLE_FULLSIZE_SMOOTH_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr:
.indirect_symbol _JCSAMPLE_FULLSIZE_SMOOTH_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCSAMPLE_FULLSIZE_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr:
.indirect_symbol _JCSAMPLE_FULLSIZE_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCSAMPLE_H2V1_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr:
.indirect_symbol _JCSAMPLE_H2V1_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCSAMPLE_H2V2_SMOOTH_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr:
.indirect_symbol _JCSAMPLE_H2V2_SMOOTH_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCSAMPLE_H2V2_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr:
.indirect_symbol _JCSAMPLE_H2V2_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCSAMPLE_INT_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY$non_lazy_ptr:
.indirect_symbol _JCSAMPLE_INT_DOWNSAMPLE$J_COMPRESS_PTR$JPEG_COMPONENT_INFO_PTR$JSAMPARRAY$JSAMPARRAY
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

