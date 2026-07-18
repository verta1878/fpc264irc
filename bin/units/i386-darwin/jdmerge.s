# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JDMERGE_BUILD_YCC_RGB_TABLE$J_DECOMPRESS_PTR
_JDMERGE_BUILD_YCC_RGB_TABLE$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	400(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$1024,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	-8(%ebp),%edx
	movl	%eax,16(%edx)
	movl	-4(%ebp),%eax
	movl	$1024,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	-8(%ebp),%edx
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	$1024,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	-8(%ebp),%edx
	movl	%eax,24(%edx)
	movl	-4(%ebp),%eax
	movl	$1024,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	-8(%ebp),%edx
	movl	%eax,28(%edx)
	movl	$-128,-16(%ebp)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj43:
	incl	-12(%ebp)
	movl	-16(%ebp),%eax
	imull	$91881,%eax
	addl	$32768,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj46
	jmp	Lj47
Lj46:
	movl	-20(%ebp),%eax
	shrl	$16,%eax
	orl	$-65536,%eax
	movl	-8(%ebp),%edx
	movl	16(%edx),%ecx
	movl	-12(%ebp),%edx
	movl	%eax,(%ecx,%edx,4)
	jmp	Lj50
Lj47:
	movl	-8(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	shrl	$16,%eax
	movl	%eax,(%ecx,%edx,4)
Lj50:
	movl	-16(%ebp),%eax
	imull	$116130,%eax
	addl	$32768,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj55
	jmp	Lj56
Lj55:
	movl	-20(%ebp),%eax
	shrl	$16,%eax
	orl	$-65536,%eax
	movl	-8(%ebp),%edx
	movl	20(%edx),%ecx
	movl	-12(%ebp),%edx
	movl	%eax,(%ecx,%edx,4)
	jmp	Lj59
Lj56:
	movl	-8(%ebp),%eax
	movl	20(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-20(%ebp),%eax
	shrl	$16,%eax
	movl	%eax,(%edx,%ecx,4)
Lj59:
	movl	-16(%ebp),%ecx
	imull	$-46802,%ecx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-12(%ebp),%edx
	movl	%ecx,(%eax,%edx,4)
	movl	-16(%ebp),%ecx
	imull	$-22554,%ecx
	addl	$32768,%ecx
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	-12(%ebp),%edx
	movl	%ecx,(%eax,%edx,4)
	incl	-16(%ebp)
	cmpl	$254,-12(%ebp)
	jl	Lj43
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDMERGE_START_PASS_MERGED_UPSAMPLE$J_DECOMPRESS_PTR
_JDMERGE_START_PASS_MERGED_UPSAMPLE$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	400(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,36(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,44(%edx)
	leave
	ret

.text
	.align 4
.globl	_JDMERGE_MERGED_2V_UPSAMPLE$crc49DD75E1
_JDMERGE_MERGED_2V_UPSAMPLE$crc49DD75E1:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	400(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpb	$0,36(%eax)
	jne	Lj78
	jmp	Lj79
Lj78:
	movl	$1,4(%esp)
	movl	$0,8(%esp)
	movl	-16(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%edx
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	leal	(%edx,%eax,4),%ecx
	movl	-16(%ebp),%eax
	leal	32(%eax),%eax
	movl	$0,%edx
	call	L_JUTILS_JCOPY_SAMPLE_ROWS$JSAMPARRAY$LONGINT$JSAMPARRAY$LONGINT$LONGINT$LONGWORD$stub
	movl	$1,-28(%ebp)
	movl	-16(%ebp),%eax
	movb	$0,36(%eax)
	jmp	Lj96
Lj79:
	movl	$2,-28(%ebp)
	movl	-16(%ebp),%eax
	movl	44(%eax),%eax
	cmpl	-28(%ebp),%eax
	jb	Lj99
	jmp	Lj100
Lj99:
	movl	-16(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,-28(%ebp)
Lj100:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	subl	%eax,8(%ebp)
	movl	-28(%ebp),%eax
	cmpl	8(%ebp),%eax
	ja	Lj103
	jmp	Lj104
Lj103:
	movl	8(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj104:
	movl	16(%ebp),%edx
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-24(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj109
	jmp	Lj110
Lj109:
	movl	16(%ebp),%edx
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	incl	%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj113
Lj110:
	movl	-16(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movb	$1,36(%eax)
Lj113:
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	12(%ebx),%ebx
	call	*%ebx
Lj96:
	movl	12(%ebp),%edx
	movl	-28(%ebp),%eax
	addl	%eax,(%edx)
	movl	-16(%ebp),%edx
	movl	-28(%ebp),%eax
	subl	%eax,44(%edx)
	movl	-16(%ebp),%eax
	movb	36(%eax),%al
	testb	%al,%al
	je	Lj126
	jmp	Lj127
Lj126:
	movl	-12(%ebp),%eax
	incl	(%eax)
Lj127:
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDMERGE_MERGED_1V_UPSAMPLE$crc49DD75E1
_JDMERGE_MERGED_1V_UPSAMPLE$crc49DD75E1:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	400(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	16(%ebp),%edx
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	leal	(%edx,%eax,4),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	12(%ebx),%ebx
	call	*%ebx
	movl	12(%ebp),%eax
	incl	(%eax)
	movl	-12(%ebp),%eax
	incl	(%eax)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDMERGE_H2V1_MERGED_UPSAMPLE$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY
_JDMERGE_H2V1_MERGED_UPSAMPLE$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	400(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	272(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	-16(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-72(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-76(%ebp)
	movl	-16(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-48(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-56(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	shrl	$1,%eax
	decl	%eax
	movl	%eax,-60(%ebp)
	cmpl	$0,-60(%ebp)
	jb	Lj163
	incl	-60(%ebp)
	.align 2
Lj164:
	decl	-60(%ebp)
	movl	-52(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-36(%ebp)
	incl	-52(%ebp)
	movl	-56(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-40(%ebp)
	incl	-56(%ebp)
	movl	-68(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-24(%ebp)
	movl	-80(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	-76(%ebp),%ebx
	movl	-40(%ebp),%ecx
	movl	(%edx,%eax,4),%edx
	movl	(%ebx,%ecx,4),%eax
	addl	%eax,%edx
	movl	%edx,-84(%ebp)
	movl	-84(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj173
	jmp	Lj174
Lj173:
	movl	-84(%ebp),%eax
	shrl	$16,%eax
	orl	$-65536,%eax
	movl	%eax,-28(%ebp)
	jmp	Lj177
Lj174:
	movl	-84(%ebp),%eax
	shrl	$16,%eax
	movl	%eax,-28(%ebp)
Lj177:
	movl	-72(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-32(%ebp)
	movl	-48(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-20(%ebp)
	incl	-48(%ebp)
	movl	-64(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	-44(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,(%edx)
	movl	-64(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	movl	-44(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,1(%edx)
	movl	-64(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	movl	-44(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,2(%edx)
	addl	$3,-44(%ebp)
	movl	-48(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-20(%ebp)
	incl	-48(%ebp)
	movl	-64(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	-44(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,(%edx)
	movl	-64(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	movl	-44(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,1(%edx)
	movl	-64(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	movl	-44(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,2(%edx)
	addl	$3,-44(%ebp)
	cmpl	$0,-60(%ebp)
	ja	Lj164
Lj163:
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	-88(%ebp),%eax
	andl	$1,%eax
	testb	%al,%al
	jne	Lj198
	jmp	Lj199
Lj198:
	movl	-52(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-56(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-68(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-24(%ebp)
	movl	-80(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	-76(%ebp),%ebx
	movl	-40(%ebp),%ecx
	movl	(%eax,%edx,4),%edx
	movl	(%ebx,%ecx,4),%eax
	addl	%eax,%edx
	movl	%edx,-84(%ebp)
	movl	-84(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj214
	jmp	Lj215
Lj214:
	movl	-84(%ebp),%eax
	shrl	$16,%eax
	orl	$-65536,%eax
	movl	%eax,-28(%ebp)
	jmp	Lj218
Lj215:
	movl	-84(%ebp),%eax
	shrl	$16,%eax
	movl	%eax,-28(%ebp)
Lj218:
	movl	-72(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-32(%ebp)
	movl	-48(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-64(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	-44(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,(%edx)
	movl	-64(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	movl	-44(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,1(%edx)
	movl	-64(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	movl	-44(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,2(%edx)
Lj199:
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDMERGE_H2V2_MERGED_UPSAMPLE$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY
_JDMERGE_H2V2_MERGED_UPSAMPLE$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	400(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	272(%eax),%eax
	movl	%eax,-72(%ebp)
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-76(%ebp)
	movl	-16(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	-16(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	shll	$1,%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	shll	$1,%eax
	incl	%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-56(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-60(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-64(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	shrl	$1,%eax
	decl	%eax
	movl	%eax,-68(%ebp)
	cmpl	$0,-68(%ebp)
	jb	Lj258
	incl	-68(%ebp)
	.align 2
Lj259:
	decl	-68(%ebp)
	movl	-60(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-36(%ebp)
	incl	-60(%ebp)
	movl	-64(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-40(%ebp)
	incl	-64(%ebp)
	movl	-76(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-24(%ebp)
	movl	-88(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	-84(%ebp),%ecx
	movl	-40(%ebp),%ebx
	movl	(%eax,%edx,4),%edx
	movl	(%ecx,%ebx,4),%eax
	addl	%eax,%edx
	movl	%edx,-92(%ebp)
	movl	-92(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj268
	jmp	Lj269
Lj268:
	movl	-92(%ebp),%eax
	shrl	$16,%eax
	orl	$-65536,%eax
	movl	%eax,-28(%ebp)
	jmp	Lj272
Lj269:
	movl	-92(%ebp),%eax
	shrl	$16,%eax
	movl	%eax,-28(%ebp)
Lj272:
	movl	-80(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-32(%ebp)
	movl	-52(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-20(%ebp)
	incl	-52(%ebp)
	movl	-72(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	-44(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,(%edx)
	movl	-72(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	movl	-44(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,1(%edx)
	movl	-72(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	movl	-44(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,2(%edx)
	addl	$3,-44(%ebp)
	movl	-52(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-20(%ebp)
	incl	-52(%ebp)
	movl	-72(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	-44(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,(%edx)
	movl	-72(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	movl	-44(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,1(%edx)
	movl	-72(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	movl	-44(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,2(%edx)
	addl	$3,-44(%ebp)
	movl	-56(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-20(%ebp)
	incl	-56(%ebp)
	movl	-72(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	-48(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,(%edx)
	movl	-72(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	movl	-48(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,1(%edx)
	movl	-72(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	movl	-48(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,2(%edx)
	addl	$3,-48(%ebp)
	movl	-56(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-20(%ebp)
	incl	-56(%ebp)
	movl	-72(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	-48(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,(%edx)
	movl	-72(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	movl	-48(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,1(%edx)
	movl	-72(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	movl	-48(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,2(%edx)
	addl	$3,-48(%ebp)
	cmpl	$0,-68(%ebp)
	ja	Lj259
Lj258:
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-96(%ebp)
	movl	-96(%ebp),%eax
	andl	$1,%eax
	testb	%al,%al
	jne	Lj309
	jmp	Lj310
Lj309:
	movl	-60(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-64(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-76(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-24(%ebp)
	movl	-88(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	-84(%ebp),%ecx
	movl	-40(%ebp),%ebx
	movl	(%edx,%eax,4),%edx
	movl	(%ecx,%ebx,4),%eax
	addl	%eax,%edx
	movl	%edx,-92(%ebp)
	movl	-92(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj325
	jmp	Lj326
Lj325:
	movl	-92(%ebp),%eax
	shrl	$16,%eax
	orl	$-65536,%eax
	movl	%eax,-28(%ebp)
	jmp	Lj329
Lj326:
	movl	-92(%ebp),%eax
	shrl	$16,%eax
	movl	%eax,-28(%ebp)
Lj329:
	movl	-80(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-32(%ebp)
	movl	-52(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-72(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	-44(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,(%edx)
	movl	-72(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	movl	-44(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,1(%edx)
	movl	-72(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	movl	-44(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,2(%edx)
	movl	-56(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-72(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	-48(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,(%edx)
	movl	-72(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	movl	-48(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,1(%edx)
	movl	-72(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	movl	-48(%ebp),%edx
	movb	256(%ecx,%eax,1),%al
	movb	%al,2(%edx)
Lj310:
	movl	-100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDMERGE_JINIT_MERGED_UPSAMPLER$J_DECOMPRESS_PTR
_JDMERGE_JINIT_MERGED_UPSAMPLER$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj351
Lj351:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$48,%ecx
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
	movl	L_JDMERGE_START_PASS_MERGED_UPSAMPLE$J_DECOMPRESS_PTR$non_lazy_ptr-Lj351(%esi),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movb	$0,8(%eax)
	movl	-4(%ebp),%eax
	movl	84(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	$0,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	-8(%ebp),%edx
	movl	%eax,40(%edx)
	movl	-4(%ebp),%eax
	movl	260(%eax),%eax
	cmpl	$2,%eax
	je	Lj374
	jmp	Lj375
Lj374:
	movl	-8(%ebp),%edx
	movl	L_JDMERGE_MERGED_2V_UPSAMPLE$crc49DD75E1$non_lazy_ptr-Lj351(%esi),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	L_JDMERGE_H2V2_MERGED_UPSAMPLE$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$non_lazy_ptr-Lj351(%esi),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	40(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	-8(%ebp),%edx
	movl	%eax,32(%edx)
	jmp	Lj388
Lj375:
	movl	-8(%ebp),%edx
	movl	L_JDMERGE_MERGED_1V_UPSAMPLE$crc49DD75E1$non_lazy_ptr-Lj351(%esi),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	L_JDMERGE_H2V1_MERGED_UPSAMPLE$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$non_lazy_ptr-Lj351(%esi),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	$0,32(%eax)
Lj388:
	movl	-4(%ebp),%eax
	call	L_JDMERGE_BUILD_YCC_RGB_TABLE$J_DECOMPRESS_PTR$stub
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JDMERGE
_THREADVARLIST_JDMERGE:
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

L_JUTILS_JCOPY_SAMPLE_ROWS$JSAMPARRAY$LONGINT$JSAMPARRAY$LONGINT$LONGINT$LONGWORD$stub:
.indirect_symbol _JUTILS_JCOPY_SAMPLE_ROWS$JSAMPARRAY$LONGINT$JSAMPARRAY$LONGINT$LONGINT$LONGWORD
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

L_JDMERGE_BUILD_YCC_RGB_TABLE$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDMERGE_BUILD_YCC_RGB_TABLE$J_DECOMPRESS_PTR
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
L_JDMERGE_START_PASS_MERGED_UPSAMPLE$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JDMERGE_START_PASS_MERGED_UPSAMPLE$J_DECOMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDMERGE_MERGED_2V_UPSAMPLE$crc49DD75E1$non_lazy_ptr:
.indirect_symbol _JDMERGE_MERGED_2V_UPSAMPLE$crc49DD75E1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDMERGE_H2V2_MERGED_UPSAMPLE$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$non_lazy_ptr:
.indirect_symbol _JDMERGE_H2V2_MERGED_UPSAMPLE$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDMERGE_MERGED_1V_UPSAMPLE$crc49DD75E1$non_lazy_ptr:
.indirect_symbol _JDMERGE_MERGED_1V_UPSAMPLE$crc49DD75E1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDMERGE_H2V1_MERGED_UPSAMPLE$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$non_lazy_ptr:
.indirect_symbol _JDMERGE_H2V1_MERGED_UPSAMPLE$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY
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

