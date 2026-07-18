# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JIDCTFST_DESCALE$LONGINT$LONGINT$$LONGINT
_JIDCTFST_DESCALE$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj7
	jmp	Lj8
Lj7:
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
	jmp	Lj11
Lj8:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-12(%ebp)
Lj11:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JIDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT
_JIDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$255,%edx
	addl	%edx,%eax
	sarl	$8,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JIDCTFST_DEQUANTIZE$LONGINT$LONGINT$$LONGINT
_JIDCTFST_DEQUANTIZE$LONGINT$LONGINT$$LONGINT:
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
.globl	_JIDCTFST_IDESCALE$LONGINT$LONGINT$$LONGINT
_JIDCTFST_IDESCALE$LONGINT$LONGINT$$LONGINT:
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
	jl	Lj26
	jmp	Lj27
Lj26:
	movl	-8(%ebp),%ecx
	movl	$16,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	$-1,%eax
	shll	%cl,%eax
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ecx
	shrl	%cl,%edx
	orl	%edx,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj30
Lj27:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-12(%ebp)
Lj30:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JIDCTFST_JPEG_IDCT_IFAST$crcAC8DA868
_JIDCTFST_JPEG_IDCT_IFAST$crcAC8DA868:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$376,%esp
	movl	%ebx,-372(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	272(%eax),%eax
	leal	384(%eax),%eax
	movl	%eax,-100(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-84(%ebp)
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,-88(%ebp)
	leal	-360(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$7,-104(%ebp)
	incl	-104(%ebp)
	.align 2
Lj45:
	decl	-104(%ebp)
	movl	-84(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj53
	jmp	Lj47
Lj53:
	movl	-84(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj52
	jmp	Lj47
Lj52:
	movl	-84(%ebp),%eax
	movl	96(%eax),%eax
	testl	%eax,%eax
	je	Lj51
	jmp	Lj47
Lj51:
	movl	-84(%ebp),%eax
	movl	128(%eax),%eax
	testl	%eax,%eax
	je	Lj50
	jmp	Lj47
Lj50:
	movl	-84(%ebp),%eax
	movl	160(%eax),%eax
	testl	%eax,%eax
	je	Lj49
	jmp	Lj47
Lj49:
	movl	-84(%ebp),%eax
	movl	192(%eax),%eax
	testl	%eax,%eax
	je	Lj48
	jmp	Lj47
Lj48:
	movl	-84(%ebp),%eax
	movl	224(%eax),%eax
	testl	%eax,%eax
	je	Lj46
	jmp	Lj47
Lj46:
	movl	-88(%ebp),%eax
	movl	(%eax),%edx
	movl	-84(%ebp),%eax
	movl	(%eax),%eax
	call	L_JIDCTFST_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-364(%ebp)
	movl	-92(%ebp),%eax
	movl	-364(%ebp),%edx
	movl	%edx,(%eax)
	movl	-92(%ebp),%eax
	movl	-364(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-92(%ebp),%edx
	movl	-364(%ebp),%eax
	movl	%eax,64(%edx)
	movl	-92(%ebp),%eax
	movl	-364(%ebp),%edx
	movl	%edx,96(%eax)
	movl	-92(%ebp),%edx
	movl	-364(%ebp),%eax
	movl	%eax,128(%edx)
	movl	-92(%ebp),%edx
	movl	-364(%ebp),%eax
	movl	%eax,160(%edx)
	movl	-92(%ebp),%edx
	movl	-364(%ebp),%eax
	movl	%eax,192(%edx)
	movl	-92(%ebp),%edx
	movl	-364(%ebp),%eax
	movl	%eax,224(%edx)
	addl	$4,-84(%ebp)
	addl	$4,-88(%ebp)
	addl	$4,-92(%ebp)
	jmp	Lj43
Lj47:
	movl	-88(%ebp),%eax
	movl	(%eax),%edx
	movl	-84(%ebp),%eax
	movl	(%eax),%eax
	call	L_JIDCTFST_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-88(%ebp),%eax
	movl	64(%eax),%edx
	movl	-84(%ebp),%eax
	movl	64(%eax),%eax
	call	L_JIDCTFST_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-88(%ebp),%eax
	movl	128(%eax),%edx
	movl	-84(%ebp),%eax
	movl	128(%eax),%eax
	call	L_JIDCTFST_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-88(%ebp),%eax
	movl	192(%eax),%edx
	movl	-84(%ebp),%eax
	movl	192(%eax),%eax
	call	L_JIDCTFST_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-48(%ebp)
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-52(%ebp)
	movl	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-60(%ebp)
	movl	-20(%ebp),%eax
	movl	-28(%ebp),%edx
	subl	%edx,%eax
	movl	$362,%edx
	call	L_JIDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	-60(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-56(%ebp)
	movl	-48(%ebp),%eax
	movl	-60(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	-48(%ebp),%eax
	movl	-60(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
	movl	-52(%ebp),%eax
	movl	-56(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	-52(%ebp),%edx
	movl	-56(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-88(%ebp),%eax
	movl	32(%eax),%edx
	movl	-84(%ebp),%eax
	movl	32(%eax),%eax
	call	L_JIDCTFST_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-32(%ebp)
	movl	-88(%ebp),%eax
	movl	96(%eax),%edx
	movl	-84(%ebp),%eax
	movl	96(%eax),%eax
	call	L_JIDCTFST_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-36(%ebp)
	movl	-88(%ebp),%eax
	movl	160(%eax),%edx
	movl	-84(%ebp),%eax
	movl	160(%eax),%eax
	call	L_JIDCTFST_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-40(%ebp)
	movl	-88(%ebp),%eax
	movl	224(%eax),%edx
	movl	-84(%ebp),%eax
	movl	224(%eax),%eax
	call	L_JIDCTFST_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-44(%ebp)
	movl	-40(%ebp),%eax
	movl	-36(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-80(%ebp)
	movl	-40(%ebp),%eax
	movl	-36(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-68(%ebp)
	movl	-32(%ebp),%eax
	movl	-44(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-72(%ebp)
	movl	-32(%ebp),%eax
	movl	-44(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-76(%ebp)
	movl	-72(%ebp),%eax
	movl	-80(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-44(%ebp)
	movl	-72(%ebp),%eax
	movl	-80(%ebp),%edx
	subl	%edx,%eax
	movl	$362,%edx
	call	L_JIDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-52(%ebp)
	movl	-68(%ebp),%eax
	movl	-76(%ebp),%edx
	addl	%edx,%eax
	movl	$473,%edx
	call	L_JIDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-64(%ebp)
	movl	-76(%ebp),%eax
	movl	$277,%edx
	call	L_JIDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	-64(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-68(%ebp),%eax
	movl	$-669,%edx
	call	L_JIDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	-64(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%eax
	movl	-44(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-40(%ebp)
	movl	-52(%ebp),%eax
	movl	-40(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-36(%ebp)
	movl	-48(%ebp),%eax
	movl	-36(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-32(%ebp)
	movl	-16(%ebp),%edx
	movl	-44(%ebp),%eax
	addl	%eax,%edx
	movl	-92(%ebp),%eax
	movl	%edx,(%eax)
	movl	-16(%ebp),%edx
	movl	-44(%ebp),%eax
	subl	%eax,%edx
	movl	-92(%ebp),%eax
	movl	%edx,224(%eax)
	movl	-20(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	%eax,%edx
	movl	-92(%ebp),%eax
	movl	%edx,32(%eax)
	movl	-20(%ebp),%edx
	movl	-40(%ebp),%eax
	subl	%eax,%edx
	movl	-92(%ebp),%eax
	movl	%edx,192(%eax)
	movl	-24(%ebp),%edx
	movl	-36(%ebp),%eax
	addl	%eax,%edx
	movl	-92(%ebp),%eax
	movl	%edx,64(%eax)
	movl	-24(%ebp),%edx
	movl	-36(%ebp),%eax
	subl	%eax,%edx
	movl	-92(%ebp),%eax
	movl	%edx,160(%eax)
	movl	-28(%ebp),%edx
	movl	-32(%ebp),%eax
	addl	%eax,%edx
	movl	-92(%ebp),%eax
	movl	%edx,128(%eax)
	movl	-28(%ebp),%edx
	movl	-32(%ebp),%eax
	subl	%eax,%edx
	movl	-92(%ebp),%eax
	movl	%edx,96(%eax)
	addl	$4,-84(%ebp)
	addl	$4,-88(%ebp)
	addl	$4,-92(%ebp)
Lj43:
	cmpl	$0,-104(%ebp)
	jg	Lj45
	leal	-360(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$0,-104(%ebp)
	decl	-104(%ebp)
	.align 2
Lj204:
	incl	-104(%ebp)
	movl	12(%ebp),%eax
	movl	-104(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	8(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	movl	%eax,-96(%ebp)
	movl	-92(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj214
	jmp	Lj208
Lj214:
	movl	-92(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj213
	jmp	Lj208
Lj213:
	movl	-92(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj212
	jmp	Lj208
Lj212:
	movl	-92(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj211
	jmp	Lj208
Lj211:
	movl	-92(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj210
	jmp	Lj208
Lj210:
	movl	-92(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj209
	jmp	Lj208
Lj209:
	movl	-92(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj207
	jmp	Lj208
Lj207:
	movl	-100(%ebp),%ebx
	movl	-92(%ebp),%eax
	movl	(%eax),%eax
	movl	$5,%edx
	call	L_JIDCTFST_IDESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movb	(%ebx,%eax,1),%al
	movb	%al,-365(%ebp)
	movl	-96(%ebp),%eax
	movb	-365(%ebp),%dl
	movb	%dl,(%eax)
	movl	-96(%ebp),%eax
	movb	-365(%ebp),%dl
	movb	%dl,1(%eax)
	movl	-96(%ebp),%eax
	movb	-365(%ebp),%dl
	movb	%dl,2(%eax)
	movl	-96(%ebp),%eax
	movb	-365(%ebp),%dl
	movb	%dl,3(%eax)
	movl	-96(%ebp),%eax
	movb	-365(%ebp),%dl
	movb	%dl,4(%eax)
	movl	-96(%ebp),%eax
	movb	-365(%ebp),%dl
	movb	%dl,5(%eax)
	movl	-96(%ebp),%eax
	movb	-365(%ebp),%dl
	movb	%dl,6(%eax)
	movl	-96(%ebp),%eax
	movb	-365(%ebp),%dl
	movb	%dl,7(%eax)
	addl	$32,-92(%ebp)
	jmp	Lj202
Lj208:
	movl	-92(%ebp),%eax
	movl	-92(%ebp),%edx
	movl	(%eax),%ecx
	movl	16(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,-48(%ebp)
	movl	-92(%ebp),%eax
	movl	-92(%ebp),%edx
	movl	(%eax),%ecx
	movl	16(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-52(%ebp)
	movl	-92(%ebp),%eax
	movl	-92(%ebp),%edx
	movl	8(%eax),%ecx
	movl	24(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,-60(%ebp)
	movl	-92(%ebp),%eax
	movl	-92(%ebp),%edx
	movl	8(%eax),%eax
	movl	24(%edx),%edx
	subl	%edx,%eax
	movl	$362,%edx
	call	L_JIDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	-60(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-56(%ebp)
	movl	-48(%ebp),%edx
	movl	-60(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-48(%ebp),%eax
	movl	-60(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
	movl	-52(%ebp),%eax
	movl	-56(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	-52(%ebp),%edx
	movl	-56(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-92(%ebp),%eax
	movl	-92(%ebp),%edx
	movl	20(%eax),%ecx
	movl	12(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,-80(%ebp)
	movl	-92(%ebp),%eax
	movl	-92(%ebp),%edx
	movl	20(%eax),%ecx
	movl	12(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-68(%ebp)
	movl	-92(%ebp),%eax
	movl	-92(%ebp),%edx
	movl	4(%eax),%ecx
	movl	28(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,-72(%ebp)
	movl	-92(%ebp),%eax
	movl	-92(%ebp),%edx
	movl	4(%eax),%ecx
	movl	28(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-76(%ebp)
	movl	-72(%ebp),%edx
	movl	-80(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-44(%ebp)
	movl	-72(%ebp),%eax
	movl	-80(%ebp),%edx
	subl	%edx,%eax
	movl	$362,%edx
	call	L_JIDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-52(%ebp)
	movl	-68(%ebp),%eax
	movl	-76(%ebp),%edx
	addl	%edx,%eax
	movl	$473,%edx
	call	L_JIDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-64(%ebp)
	movl	-76(%ebp),%eax
	movl	$277,%edx
	call	L_JIDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	-64(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-68(%ebp),%eax
	movl	$-669,%edx
	call	L_JIDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	-64(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%edx
	movl	-44(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-40(%ebp)
	movl	-52(%ebp),%edx
	movl	-40(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-36(%ebp)
	movl	-48(%ebp),%edx
	movl	-36(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-32(%ebp)
	movl	-100(%ebp),%ebx
	movl	-16(%ebp),%eax
	movl	-44(%ebp),%edx
	addl	%edx,%eax
	movl	$5,%edx
	call	L_JIDCTFST_IDESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-96(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,(%edx)
	movl	-100(%ebp),%ebx
	movl	-16(%ebp),%eax
	movl	-44(%ebp),%edx
	subl	%edx,%eax
	movl	$5,%edx
	call	L_JIDCTFST_IDESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-96(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,7(%edx)
	movl	-100(%ebp),%ebx
	movl	-20(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	movl	$5,%edx
	call	L_JIDCTFST_IDESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-96(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,1(%edx)
	movl	-100(%ebp),%ebx
	movl	-20(%ebp),%eax
	movl	-40(%ebp),%edx
	subl	%edx,%eax
	movl	$5,%edx
	call	L_JIDCTFST_IDESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-96(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,6(%edx)
	movl	-100(%ebp),%ebx
	movl	-24(%ebp),%eax
	movl	-36(%ebp),%edx
	addl	%edx,%eax
	movl	$5,%edx
	call	L_JIDCTFST_IDESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-96(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,2(%edx)
	movl	-100(%ebp),%ebx
	movl	-24(%ebp),%eax
	movl	-36(%ebp),%edx
	subl	%edx,%eax
	movl	$5,%edx
	call	L_JIDCTFST_IDESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-96(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,5(%edx)
	movl	-100(%ebp),%ebx
	movl	-28(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	movl	$5,%edx
	call	L_JIDCTFST_IDESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-96(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,4(%edx)
	movl	-100(%ebp),%ebx
	movl	-28(%ebp),%eax
	movl	-32(%ebp),%edx
	subl	%edx,%eax
	movl	$5,%edx
	call	L_JIDCTFST_IDESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-96(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,3(%edx)
	addl	$32,-92(%ebp)
Lj202:
	cmpl	$7,-104(%ebp)
	jl	Lj204
	movl	-372(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JIDCTFST
_THREADVARLIST_JIDCTFST:
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

L_JIDCTFST_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JIDCTFST_DEQUANTIZE$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JIDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JIDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JIDCTFST_IDESCALE$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JIDCTFST_IDESCALE$LONGINT$LONGINT$$LONGINT
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

