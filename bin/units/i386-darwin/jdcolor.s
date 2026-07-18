# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JDCOLOR_BUILD_YCC_RGB_TABLE$J_DECOMPRESS_PTR
_JDCOLOR_BUILD_YCC_RGB_TABLE$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	404(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$1024,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	-8(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	$1024,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	-8(%ebp),%edx
	movl	%eax,12(%edx)
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
	movl	8(%edx),%ecx
	movl	-12(%ebp),%edx
	movl	%eax,(%ecx,%edx,4)
	jmp	Lj50
Lj47:
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
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
	movl	12(%edx),%ecx
	movl	-12(%ebp),%edx
	movl	%eax,(%ecx,%edx,4)
	jmp	Lj59
Lj56:
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-20(%ebp),%eax
	shrl	$16,%eax
	movl	%eax,(%edx,%ecx,4)
Lj59:
	movl	-16(%ebp),%ecx
	imull	$-46802,%ecx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-12(%ebp),%edx
	movl	%ecx,(%eax,%edx,4)
	movl	-16(%ebp),%ecx
	imull	$-22554,%ecx
	addl	$32768,%ecx
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	-12(%ebp),%edx
	movl	%ecx,(%eax,%edx,4)
	incl	-16(%ebp)
	cmpl	$255,-12(%ebp)
	jl	Lj43
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDCOLOR_YCC_RGB_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT
_JDCOLOR_YCC_RGB_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-84(%ebp)
	movl	%esi,-80(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	404(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	272(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	-16(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-72(%ebp)
	jmp	Lj83
	.align 2
Lj82:
	decl	8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-40(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-44(%ebp)
	incl	-12(%ebp)
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	addl	$4,12(%ebp)
	movl	-52(%ebp),%eax
	decl	%eax
	movl	$0,-48(%ebp)
	cmpl	-48(%ebp),%eax
	jb	Lj94
	decl	-48(%ebp)
	.align 2
Lj95:
	incl	-48(%ebp)
	movl	-36(%ebp),%ecx
	movl	-48(%ebp),%edx
	movzbl	(%ecx,%edx,1),%edx
	movl	%edx,-20(%ebp)
	movl	-40(%ebp),%edx
	movl	-48(%ebp),%ecx
	movzbl	(%edx,%ecx,1),%edx
	movl	%edx,-24(%ebp)
	movl	-44(%ebp),%ecx
	movl	-48(%ebp),%edx
	movzbl	(%ecx,%edx,1),%edx
	movl	%edx,-28(%ebp)
	movl	-56(%ebp),%ecx
	movl	-60(%ebp),%edx
	movl	-28(%ebp),%ebx
	movl	(%edx,%ebx,4),%edx
	movl	-20(%ebp),%ebx
	addl	%ebx,%edx
	movl	-32(%ebp),%ebx
	movb	256(%ecx,%edx,1),%dl
	movb	%dl,(%ebx)
	movl	-72(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	-68(%ebp),%esi
	movl	-28(%ebp),%ebx
	movl	(%edx,%ecx,4),%ecx
	movl	(%esi,%ebx,4),%edx
	addl	%edx,%ecx
	movl	%ecx,-76(%ebp)
	movl	-76(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj106
	jmp	Lj107
Lj106:
	movl	-56(%ebp),%ebx
	movl	-76(%ebp),%edx
	shrl	$16,%edx
	orl	$-65536,%edx
	movl	-20(%ebp),%ecx
	addl	%ecx,%edx
	movl	-32(%ebp),%ecx
	movb	256(%ebx,%edx,1),%dl
	movb	%dl,1(%ecx)
	jmp	Lj110
Lj107:
	movl	-56(%ebp),%ebx
	movl	-76(%ebp),%edx
	shrl	$16,%edx
	movl	-20(%ebp),%ecx
	addl	%ecx,%edx
	movl	-32(%ebp),%ecx
	movb	256(%ebx,%edx,1),%dl
	movb	%dl,1(%ecx)
Lj110:
	movl	-56(%ebp),%ebx
	movl	-64(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	(%ecx,%edx,4),%edx
	movl	-20(%ebp),%ecx
	addl	%ecx,%edx
	movl	-32(%ebp),%ecx
	movb	256(%ebx,%edx,1),%dl
	movb	%dl,2(%ecx)
	addl	$3,-32(%ebp)
	cmpl	-48(%ebp),%eax
	ja	Lj95
Lj94:
Lj83:
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj82
	jmp	Lj84
Lj84:
	movl	-84(%ebp),%ebx
	movl	-80(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JDCOLOR_NULL_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT
_JDCOLOR_NULL_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-32(%ebp)
	jmp	Lj122
	.align 2
Lj121:
	decl	8(%ebp)
	movl	-28(%ebp),%eax
	decl	%eax
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%eax
	jl	Lj125
	decl	-36(%ebp)
	.align 2
Lj126:
	incl	-36(%ebp)
	movl	-8(%ebp),%edx
	movl	-36(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	-12(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-16(%ebp)
	movl	12(%ebp),%edx
	movl	(%edx),%ecx
	movl	-36(%ebp),%edx
	leal	(%ecx,%edx,1),%edx
	movl	%edx,-20(%ebp)
	movl	-32(%ebp),%edx
	decl	%edx
	movl	%edx,-24(%ebp)
	cmpl	$0,-24(%ebp)
	jb	Lj132
	incl	-24(%ebp)
	.align 2
Lj133:
	decl	-24(%ebp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movb	(%edx),%dl
	movb	%dl,(%ecx)
	incl	-16(%ebp)
	movl	-28(%ebp),%edx
	addl	%edx,-20(%ebp)
	cmpl	$0,-24(%ebp)
	ja	Lj133
Lj132:
	cmpl	-36(%ebp),%eax
	jg	Lj126
Lj125:
	incl	-12(%ebp)
	addl	$4,12(%ebp)
Lj122:
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj121
	jmp	Lj123
Lj123:
	leave
	ret

.text
	.align 4
.globl	_JDCOLOR_GRAYSCALE_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT
_JDCOLOR_GRAYSCALE_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,8(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%ebp),%ecx
	movl	-12(%ebp),%edx
	call	L_JUTILS_JCOPY_SAMPLE_ROWS$JSAMPARRAY$LONGINT$JSAMPARRAY$LONGINT$LONGINT$LONGWORD$stub
	leave
	ret

.text
	.align 4
.globl	_JDCOLOR_GRAY_RGB_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT
_JDCOLOR_GRAY_RGB_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj155
	.align 2
Lj154:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-16(%ebp)
	incl	-12(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-20(%ebp)
	addl	$4,12(%ebp)
	movl	-28(%ebp),%eax
	decl	%eax
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jb	Lj162
	decl	-24(%ebp)
	.align 2
Lj163:
	incl	-24(%ebp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movb	(%edx),%dl
	movb	%dl,(%ecx)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movb	(%edx),%dl
	movb	%dl,1(%ecx)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movb	(%edx),%dl
	movb	%dl,2(%ecx)
	incl	-16(%ebp)
	addl	$3,-20(%ebp)
	cmpl	-24(%ebp),%eax
	ja	Lj163
Lj162:
	decl	8(%ebp)
Lj155:
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj154
	jmp	Lj156
Lj156:
	leave
	ret

.text
	.align 4
.globl	_JDCOLOR_YCCK_CMYK_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT
_JDCOLOR_YCCK_CMYK_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	404(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	272(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-72(%ebp)
	movl	-16(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-76(%ebp)
	jmp	Lj187
	.align 2
Lj186:
	decl	8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-40(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-44(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-48(%ebp)
	incl	-12(%ebp)
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	addl	$4,12(%ebp)
	movl	-56(%ebp),%eax
	decl	%eax
	movl	$0,-52(%ebp)
	cmpl	-52(%ebp),%eax
	jb	Lj200
	decl	-52(%ebp)
	.align 2
Lj201:
	incl	-52(%ebp)
	movl	-36(%ebp),%ecx
	movl	-52(%ebp),%edx
	movzbl	(%ecx,%edx,1),%edx
	movl	%edx,-20(%ebp)
	movl	-40(%ebp),%edx
	movl	-52(%ebp),%ecx
	movzbl	(%edx,%ecx,1),%edx
	movl	%edx,-24(%ebp)
	movl	-44(%ebp),%ecx
	movl	-52(%ebp),%edx
	movzbl	(%ecx,%edx,1),%edx
	movl	%edx,-28(%ebp)
	movl	-60(%ebp),%ebx
	movl	-64(%ebp),%edx
	movl	-28(%ebp),%ecx
	movl	(%edx,%ecx,4),%ecx
	movl	-20(%ebp),%edx
	addl	%edx,%ecx
	movl	$255,%edx
	subl	%ecx,%edx
	movl	%edx,%ecx
	movl	-32(%ebp),%edx
	movb	256(%ebx,%ecx,1),%cl
	movb	%cl,(%edx)
	movl	-76(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	-72(%ebp),%esi
	movl	-28(%ebp),%ebx
	movl	(%edx,%ecx,4),%ecx
	movl	(%esi,%ebx,4),%edx
	addl	%edx,%ecx
	movl	%ecx,-80(%ebp)
	movl	-80(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj212
	jmp	Lj213
Lj212:
	movl	-60(%ebp),%ebx
	movl	-80(%ebp),%edx
	shrl	$16,%edx
	orl	$-65536,%edx
	movl	-20(%ebp),%ecx
	addl	%ecx,%edx
	movl	$255,%ecx
	subl	%edx,%ecx
	movl	%ecx,%edx
	movl	-32(%ebp),%ecx
	movb	256(%ebx,%edx,1),%dl
	movb	%dl,1(%ecx)
	jmp	Lj216
Lj213:
	movl	-60(%ebp),%ebx
	movl	-80(%ebp),%edx
	shrl	$16,%edx
	movl	-20(%ebp),%ecx
	addl	%ecx,%edx
	movl	$255,%ecx
	subl	%edx,%ecx
	movl	%ecx,%edx
	movl	-32(%ebp),%ecx
	movb	256(%ebx,%edx,1),%dl
	movb	%dl,1(%ecx)
Lj216:
	movl	-60(%ebp),%ebx
	movl	-68(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	(%edx,%ecx,4),%ecx
	movl	-20(%ebp),%edx
	addl	%edx,%ecx
	movl	$255,%edx
	subl	%ecx,%edx
	movl	%edx,%ecx
	movl	-32(%ebp),%edx
	movb	256(%ebx,%ecx,1),%cl
	movb	%cl,2(%edx)
	movl	-48(%ebp),%edx
	movl	-52(%ebp),%ecx
	movl	-32(%ebp),%ebx
	movb	(%edx,%ecx,1),%dl
	movb	%dl,3(%ebx)
	addl	$4,-32(%ebp)
	cmpl	-52(%ebp),%eax
	ja	Lj201
Lj200:
Lj187:
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj186
	jmp	Lj188
Lj188:
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JDCOLOR_START_PASS_DCOLOR$J_DECOMPRESS_PTR
_JDCOLOR_START_PASS_DCOLOR$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_JDCOLOR_JINIT_COLOR_DECONVERTER$J_DECOMPRESS_PTR
_JDCOLOR_JINIT_COLOR_DECONVERTER$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj226
Lj226:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$24,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,404(%edx)
	movl	-8(%ebp),%edx
	movl	L_JDCOLOR_START_PASS_DCOLOR$J_DECOMPRESS_PTR$non_lazy_ptr-Lj226(%esi),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	cmpb	$1,%al
	jb	Lj240
	decb	%al
	je	Lj241
	decb	%al
	jb	Lj240
	subb	$1,%al
	jbe	Lj242
	decb	%al
	subb	$1,%al
	jbe	Lj243
	jmp	Lj240
Lj241:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	$1,%eax
	jne	Lj244
	jmp	Lj245
Lj244:
	movl	-4(%ebp),%eax
	movb	$10,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj245:
	jmp	Lj239
Lj242:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	$3,%eax
	jne	Lj250
	jmp	Lj251
Lj250:
	movl	-4(%ebp),%eax
	movb	$10,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj251:
	jmp	Lj239
Lj243:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	$4,%eax
	jne	Lj256
	jmp	Lj257
Lj256:
	movl	-4(%ebp),%eax
	movb	$10,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj257:
	jmp	Lj239
Lj240:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	$1,%eax
	jl	Lj262
	jmp	Lj263
Lj262:
	movl	-4(%ebp),%eax
	movb	$10,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj263:
Lj239:
	movl	-4(%ebp),%eax
	movb	41(%eax),%al
	cmpb	$1,%al
	jb	Lj269
	decb	%al
	je	Lj270
	decb	%al
	je	Lj271
	subb	$2,%al
	je	Lj272
	jmp	Lj269
Lj270:
	movl	-4(%ebp),%eax
	movl	$1,84(%eax)
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	cmpb	$1,%al
	je	Lj275
	jmp	Lj277
Lj277:
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	cmpb	$3,%al
	je	Lj275
	jmp	Lj276
Lj275:
	movl	-8(%ebp),%edx
	movl	L_JDCOLOR_GRAYSCALE_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT$non_lazy_ptr-Lj226(%esi),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	decl	%eax
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jl	Lj281
	decl	-12(%ebp)
	.align 2
Lj282:
	incl	-12(%ebp)
	movl	-4(%ebp),%edx
	movl	180(%edx),%ecx
	movl	-12(%ebp),%edx
	imull	$84,%edx
	movb	$0,48(%ecx,%edx)
	cmpl	-12(%ebp),%eax
	jg	Lj282
Lj281:
	jmp	Lj285
Lj276:
	movl	-4(%ebp),%eax
	movb	$27,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj285:
	jmp	Lj268
Lj271:
	movl	-4(%ebp),%eax
	movl	$3,84(%eax)
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	cmpb	$3,%al
	je	Lj292
	jmp	Lj293
Lj292:
	movl	-8(%ebp),%edx
	movl	L_JDCOLOR_YCC_RGB_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT$non_lazy_ptr-Lj226(%esi),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	call	L_JDCOLOR_BUILD_YCC_RGB_TABLE$J_DECOMPRESS_PTR$stub
	jmp	Lj298
Lj293:
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	cmpb	$1,%al
	je	Lj299
	jmp	Lj300
Lj299:
	movl	-8(%ebp),%edx
	movl	L_JDCOLOR_GRAY_RGB_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT$non_lazy_ptr-Lj226(%esi),%eax
	movl	%eax,4(%edx)
	jmp	Lj303
Lj300:
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	cmpb	$2,%al
	je	Lj306
	jmp	Lj305
Lj306:
	jmp	Lj304
Lj304:
	movl	-8(%ebp),%edx
	movl	L_JDCOLOR_NULL_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT$non_lazy_ptr-Lj226(%esi),%eax
	movl	%eax,4(%edx)
	jmp	Lj309
Lj305:
	movl	-4(%ebp),%eax
	movb	$27,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj309:
Lj303:
Lj298:
	jmp	Lj268
Lj272:
	movl	-4(%ebp),%eax
	movl	$4,84(%eax)
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	cmpb	$5,%al
	je	Lj316
	jmp	Lj317
Lj316:
	movl	-8(%ebp),%edx
	movl	L_JDCOLOR_YCCK_CMYK_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT$non_lazy_ptr-Lj226(%esi),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	call	L_JDCOLOR_BUILD_YCC_RGB_TABLE$J_DECOMPRESS_PTR$stub
	jmp	Lj322
Lj317:
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	cmpb	$4,%al
	je	Lj323
	jmp	Lj324
Lj323:
	movl	-8(%ebp),%edx
	movl	L_JDCOLOR_NULL_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT$non_lazy_ptr-Lj226(%esi),%eax
	movl	%eax,4(%edx)
	jmp	Lj327
Lj324:
	movl	-4(%ebp),%eax
	movb	$27,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj327:
Lj322:
	jmp	Lj268
Lj269:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movb	41(%eax),%al
	cmpb	40(%edx),%al
	je	Lj332
	jmp	Lj333
Lj332:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,84(%edx)
	movl	-8(%ebp),%edx
	movl	L_JDCOLOR_NULL_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT$non_lazy_ptr-Lj226(%esi),%eax
	movl	%eax,4(%edx)
	jmp	Lj338
Lj333:
	movl	-4(%ebp),%eax
	movb	$27,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj338:
Lj268:
	movl	-4(%ebp),%eax
	cmpb	$0,65(%eax)
	jne	Lj343
	jmp	Lj344
Lj343:
	movl	-4(%ebp),%eax
	movl	$1,88(%eax)
	jmp	Lj347
Lj344:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	%eax,88(%edx)
Lj347:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JDCOLOR
_THREADVARLIST_JDCOLOR:
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

L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDCOLOR_BUILD_YCC_RGB_TABLE$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDCOLOR_BUILD_YCC_RGB_TABLE$J_DECOMPRESS_PTR
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
L_JDCOLOR_START_PASS_DCOLOR$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JDCOLOR_START_PASS_DCOLOR$J_DECOMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDCOLOR_GRAYSCALE_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT$non_lazy_ptr:
.indirect_symbol _JDCOLOR_GRAYSCALE_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDCOLOR_YCC_RGB_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT$non_lazy_ptr:
.indirect_symbol _JDCOLOR_YCC_RGB_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDCOLOR_GRAY_RGB_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT$non_lazy_ptr:
.indirect_symbol _JDCOLOR_GRAY_RGB_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDCOLOR_NULL_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT$non_lazy_ptr:
.indirect_symbol _JDCOLOR_NULL_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDCOLOR_YCCK_CMYK_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT$non_lazy_ptr:
.indirect_symbol _JDCOLOR_YCCK_CMYK_CONVERT$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$JSAMPARRAY$LONGINT
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

