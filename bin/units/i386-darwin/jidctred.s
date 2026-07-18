# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT
_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JIDCTRED_DEQUANTIZE$LONGINT$LONGINT$$LONGINT
_JIDCTRED_DEQUANTIZE$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JIDCTRED_DESCALE$LONGINT$LONGINT$$LONGINT
_JIDCTRED_DESCALE$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	decl	%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj15
	jmp	Lj16
Lj15:
	movl	-8(%ebp),%ecx
	movl	$32,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	$-1,%eax
	shll	%cl,%eax
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ecx
	shrl	%cl,%edx
	orl	%edx,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj19
Lj16:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-12(%ebp)
Lj19:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JIDCTRED_JPEG_IDCT_4X4$crcAC8DA868
_JIDCTRED_JPEG_IDCT_4X4$crcAC8DA868:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$216,%esp
	movl	%ebx,-208(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	272(%eax),%eax
	leal	384(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,-52(%ebp)
	leal	-196(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$8,-68(%ebp)
	incl	-68(%ebp)
	.align 2
Lj34:
	decl	-68(%ebp)
	movl	-68(%ebp),%eax
	cmpl	$4,%eax
	je	Lj35
	jmp	Lj36
Lj35:
	addl	$4,-48(%ebp)
	addl	$4,-52(%ebp)
	addl	$4,-56(%ebp)
	jmp	Lj32
Lj36:
	movl	-48(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj43
	jmp	Lj38
Lj43:
	movl	-48(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj42
	jmp	Lj38
Lj42:
	movl	-48(%ebp),%eax
	movl	96(%eax),%eax
	testl	%eax,%eax
	je	Lj41
	jmp	Lj38
Lj41:
	movl	-48(%ebp),%eax
	movl	160(%eax),%eax
	testl	%eax,%eax
	je	Lj40
	jmp	Lj38
Lj40:
	movl	-48(%ebp),%eax
	movl	192(%eax),%eax
	testl	%eax,%eax
	je	Lj39
	jmp	Lj38
Lj39:
	movl	-48(%ebp),%eax
	movl	224(%eax),%eax
	testl	%eax,%eax
	je	Lj37
	jmp	Lj38
Lj37:
	movl	-48(%ebp),%eax
	movl	-52(%ebp),%edx
	movl	(%eax),%eax
	movl	(%edx),%edx
	imull	%edx,%eax
	shll	$2,%eax
	movl	%eax,-200(%ebp)
	movl	-56(%ebp),%edx
	movl	-200(%ebp),%eax
	movl	%eax,(%edx)
	movl	-56(%ebp),%edx
	movl	-200(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-56(%ebp),%eax
	movl	-200(%ebp),%edx
	movl	%edx,64(%eax)
	movl	-56(%ebp),%eax
	movl	-200(%ebp),%edx
	movl	%edx,96(%eax)
	addl	$4,-48(%ebp)
	addl	$4,-52(%ebp)
	addl	$4,-56(%ebp)
	jmp	Lj32
Lj38:
	movl	-48(%ebp),%eax
	movl	-52(%ebp),%edx
	movl	(%eax),%ecx
	movl	(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-16(%ebp)
	movl	-16(%ebp),%eax
	shll	$14,%eax
	movl	%eax,-16(%ebp)
	movl	-48(%ebp),%eax
	movl	-52(%ebp),%edx
	movl	64(%eax),%ecx
	movl	64(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-36(%ebp)
	movl	-48(%ebp),%eax
	movl	-52(%ebp),%edx
	movl	192(%eax),%ecx
	movl	192(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	$15137,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%ebx
	movl	-40(%ebp),%eax
	movl	$-6270,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	%ebx,-20(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
	movl	-48(%ebp),%eax
	movl	-52(%ebp),%edx
	movl	224(%eax),%ecx
	movl	224(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-32(%ebp)
	movl	-48(%ebp),%eax
	movl	-52(%ebp),%edx
	movl	160(%eax),%ecx
	movl	160(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-36(%ebp)
	movl	-48(%ebp),%eax
	movl	-52(%ebp),%edx
	movl	96(%eax),%ecx
	movl	96(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-40(%ebp)
	movl	-48(%ebp),%eax
	movl	-52(%ebp),%edx
	movl	32(%eax),%ecx
	movl	32(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-44(%ebp)
	movl	-32(%ebp),%eax
	movl	$-1730,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%ebx
	movl	-36(%ebp),%eax
	movl	$11893,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	-40(%ebp),%eax
	movl	$-17799,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	-44(%ebp),%eax
	movl	$8697,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	%ebx,-16(%ebp)
	movl	-32(%ebp),%eax
	movl	$-4176,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%ebx
	movl	-36(%ebp),%eax
	movl	$-4926,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	-40(%ebp),%eax
	movl	$7373,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	-44(%ebp),%eax
	movl	$20995,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	%ebx,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	$12,%edx
	call	L_JIDCTRED_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-56(%ebp),%edx
	movl	%eax,(%edx)
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	$12,%edx
	call	L_JIDCTRED_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-56(%ebp),%edx
	movl	%eax,96(%edx)
	movl	-28(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	$12,%edx
	call	L_JIDCTRED_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-56(%ebp),%edx
	movl	%eax,32(%edx)
	movl	-28(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	movl	$12,%edx
	call	L_JIDCTRED_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-56(%ebp),%edx
	movl	%eax,64(%edx)
	addl	$4,-48(%ebp)
	addl	$4,-52(%ebp)
	addl	$4,-56(%ebp)
Lj32:
	cmpl	$1,-68(%ebp)
	jg	Lj34
	leal	-196(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$0,-68(%ebp)
	decl	-68(%ebp)
	.align 2
Lj148:
	incl	-68(%ebp)
	movl	12(%ebp),%eax
	movl	-68(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	8(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	movl	%eax,-60(%ebp)
	movl	-56(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj157
	jmp	Lj152
Lj157:
	movl	-56(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj156
	jmp	Lj152
Lj156:
	movl	-56(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj155
	jmp	Lj152
Lj155:
	movl	-56(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj154
	jmp	Lj152
Lj154:
	movl	-56(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj153
	jmp	Lj152
Lj153:
	movl	-56(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj151
	jmp	Lj152
Lj151:
	movl	-64(%ebp),%ebx
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	movl	$5,%edx
	call	L_JIDCTRED_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movb	(%ebx,%eax,1),%al
	movb	%al,-201(%ebp)
	movl	-60(%ebp),%eax
	movb	-201(%ebp),%dl
	movb	%dl,(%eax)
	movl	-60(%ebp),%eax
	movb	-201(%ebp),%dl
	movb	%dl,1(%eax)
	movl	-60(%ebp),%eax
	movb	-201(%ebp),%dl
	movb	%dl,2(%eax)
	movl	-60(%ebp),%eax
	movb	-201(%ebp),%dl
	movb	%dl,3(%eax)
	addl	$32,-56(%ebp)
	jmp	Lj146
Lj152:
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	shll	$14,%eax
	movl	%eax,-16(%ebp)
	movl	-56(%ebp),%eax
	movl	8(%eax),%eax
	movl	$15137,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%ebx
	movl	-56(%ebp),%eax
	movl	24(%eax),%eax
	movl	$-6270,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	%ebx,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
	movl	-56(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-56(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-56(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-56(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-32(%ebp),%eax
	movl	$-1730,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%ebx
	movl	-36(%ebp),%eax
	movl	$11893,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	-40(%ebp),%eax
	movl	$-17799,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	-44(%ebp),%eax
	movl	$8697,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	%ebx,-16(%ebp)
	movl	-32(%ebp),%eax
	movl	$-4176,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%ebx
	movl	-36(%ebp),%eax
	movl	$-4926,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	-40(%ebp),%eax
	movl	$7373,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	-44(%ebp),%eax
	movl	$20995,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	%ebx,-20(%ebp)
	movl	-64(%ebp),%ebx
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	$19,%edx
	call	L_JIDCTRED_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-60(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,(%edx)
	movl	-64(%ebp),%ebx
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	$19,%edx
	call	L_JIDCTRED_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-60(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,3(%edx)
	movl	-64(%ebp),%ebx
	movl	-28(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	$19,%edx
	call	L_JIDCTRED_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-60(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,1(%edx)
	movl	-64(%ebp),%ebx
	movl	-28(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	movl	$19,%edx
	call	L_JIDCTRED_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-60(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,2(%edx)
	addl	$32,-56(%ebp)
Lj146:
	cmpl	$3,-68(%ebp)
	jl	Lj148
	movl	-208(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JIDCTRED_JPEG_IDCT_2X2$crcAC8DA868
_JIDCTRED_JPEG_IDCT_2X2$crcAC8DA868:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-124(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	272(%eax),%eax
	leal	384(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,-32(%ebp)
	leal	-112(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	$8,-48(%ebp)
	incl	-48(%ebp)
	.align 2
Lj268:
	decl	-48(%ebp)
	movl	-48(%ebp),%eax
	cmpl	$6,%eax
	je	Lj269
	jmp	Lj272
Lj272:
	movl	-48(%ebp),%eax
	cmpl	$4,%eax
	je	Lj269
	jmp	Lj271
Lj271:
	movl	-48(%ebp),%eax
	cmpl	$2,%eax
	je	Lj269
	jmp	Lj270
Lj269:
	addl	$4,-28(%ebp)
	addl	$4,-32(%ebp)
	addl	$4,-36(%ebp)
	jmp	Lj266
Lj270:
	movl	-28(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj277
	jmp	Lj274
Lj277:
	movl	-28(%ebp),%eax
	movl	96(%eax),%eax
	testl	%eax,%eax
	je	Lj276
	jmp	Lj274
Lj276:
	movl	-28(%ebp),%eax
	movl	160(%eax),%eax
	testl	%eax,%eax
	je	Lj275
	jmp	Lj274
Lj275:
	movl	-28(%ebp),%eax
	movl	224(%eax),%eax
	testl	%eax,%eax
	je	Lj273
	jmp	Lj274
Lj273:
	movl	-28(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	(%eax),%eax
	movl	(%edx),%edx
	imull	%edx,%eax
	shll	$2,%eax
	movl	%eax,-116(%ebp)
	movl	-36(%ebp),%eax
	movl	-116(%ebp),%edx
	movl	%edx,(%eax)
	movl	-36(%ebp),%eax
	movl	-116(%ebp),%edx
	movl	%edx,32(%eax)
	addl	$4,-28(%ebp)
	addl	$4,-32(%ebp)
	addl	$4,-36(%ebp)
	jmp	Lj266
Lj274:
	movl	-28(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	(%eax),%ecx
	movl	(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-24(%ebp)
	movl	-24(%ebp),%eax
	shll	$15,%eax
	movl	%eax,-20(%ebp)
	movl	-28(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	224(%eax),%ecx
	movl	224(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	$-5906,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-28(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	160(%eax),%ecx
	movl	160(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	$6967,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,-16(%ebp)
	movl	-28(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	96(%eax),%ecx
	movl	96(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	$-10426,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,-16(%ebp)
	movl	-28(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	32(%eax),%ecx
	movl	32(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	$29692,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	$13,%edx
	call	L_JIDCTRED_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-36(%ebp),%edx
	movl	%eax,(%edx)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	movl	$13,%edx
	call	L_JIDCTRED_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-36(%ebp),%edx
	movl	%eax,32(%edx)
	addl	$4,-28(%ebp)
	addl	$4,-32(%ebp)
	addl	$4,-36(%ebp)
Lj266:
	cmpl	$1,-48(%ebp)
	jg	Lj268
	leal	-112(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	$0,-48(%ebp)
	decl	-48(%ebp)
	.align 2
Lj330:
	incl	-48(%ebp)
	movl	12(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	8(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj337
	jmp	Lj334
Lj337:
	movl	-36(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj336
	jmp	Lj334
Lj336:
	movl	-36(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj335
	jmp	Lj334
Lj335:
	movl	-36(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj333
	jmp	Lj334
Lj333:
	movl	-44(%ebp),%ebx
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	$5,%edx
	call	L_JIDCTRED_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movb	(%ebx,%eax,1),%al
	movb	%al,-117(%ebp)
	movl	-40(%ebp),%eax
	movb	-117(%ebp),%dl
	movb	%dl,(%eax)
	movl	-40(%ebp),%eax
	movb	-117(%ebp),%dl
	movb	%dl,1(%eax)
	addl	$32,-36(%ebp)
	jmp	Lj328
Lj334:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	shll	$15,%eax
	movl	%eax,-20(%ebp)
	movl	-36(%ebp),%eax
	movl	28(%eax),%eax
	movl	$-5906,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%ebx
	movl	-36(%ebp),%eax
	movl	20(%eax),%eax
	movl	$6967,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	-36(%ebp),%eax
	movl	12(%eax),%eax
	movl	$-10426,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	$29692,%edx
	call	L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	%ebx,-16(%ebp)
	movl	-44(%ebp),%ebx
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	$20,%edx
	call	L_JIDCTRED_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-40(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,(%edx)
	movl	-44(%ebp),%ebx
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	movl	$20,%edx
	call	L_JIDCTRED_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-40(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,1(%edx)
	addl	$32,-36(%ebp)
Lj328:
	cmpl	$1,-48(%ebp)
	jl	Lj330
	movl	-124(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JIDCTRED_JPEG_IDCT_1X1$crcAC8DA868
_JIDCTRED_JPEG_IDCT_1X1$crcAC8DA868:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	272(%eax),%eax
	leal	384(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%eax),%edx
	movl	(%ecx),%eax
	imull	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	$3,%edx
	call	L_JIDCTRED_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%ebx
	movl	-16(%ebp),%eax
	andl	$1023,%eax
	movl	12(%ebp),%edx
	movl	(%edx),%edx
	movl	8(%ebp),%ecx
	movb	(%ebx,%eax,1),%al
	movb	%al,(%edx,%ecx,1)
	movl	-28(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JIDCTRED
_THREADVARLIST_JIDCTRED:
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

L_JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JIDCTRED_MULTIPLY$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JIDCTRED_DESCALE$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JIDCTRED_DESCALE$LONGINT$LONGINT$$LONGINT
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

