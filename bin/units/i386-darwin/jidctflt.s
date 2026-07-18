# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JIDCTFLT_DEQUANTIZE$LONGINT$DOUBLE$$DOUBLE
_JIDCTFLT_DEQUANTIZE$LONGINT$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_JIDCTFLT_DESCALE$LONGINT$LONGINT$$LONGINT
_JIDCTFLT_DESCALE$LONGINT$LONGINT$$LONGINT:
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
	jl	Lj11
	jmp	Lj12
Lj11:
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
	jmp	Lj15
Lj12:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-12(%ebp)
Lj15:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JIDCTFLT_JPEG_IDCT_FLOAT$crcAC8DA868
_JIDCTFLT_JPEG_IDCT_FLOAT$crcAC8DA868:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$728,%esp
	movl	%ebx,-708(%ebp)
	movl	%esi,-704(%ebp)
	call	Lj19
Lj19:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	272(%eax),%eax
	leal	384(%eax),%eax
	movl	%eax,-168(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-152(%ebp)
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,-156(%ebp)
	leal	-684(%ebp),%eax
	movl	%eax,-160(%ebp)
	movl	$7,-172(%ebp)
	incl	-172(%ebp)
	.align 2
Lj30:
	decl	-172(%ebp)
	movl	-152(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj38
	jmp	Lj32
Lj38:
	movl	-152(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj37
	jmp	Lj32
Lj37:
	movl	-152(%ebp),%eax
	movl	96(%eax),%eax
	testl	%eax,%eax
	je	Lj36
	jmp	Lj32
Lj36:
	movl	-152(%ebp),%eax
	movl	128(%eax),%eax
	testl	%eax,%eax
	je	Lj35
	jmp	Lj32
Lj35:
	movl	-152(%ebp),%eax
	movl	160(%eax),%eax
	testl	%eax,%eax
	je	Lj34
	jmp	Lj32
Lj34:
	movl	-152(%ebp),%eax
	movl	192(%eax),%eax
	testl	%eax,%eax
	je	Lj33
	jmp	Lj32
Lj33:
	movl	-152(%ebp),%eax
	movl	224(%eax),%eax
	testl	%eax,%eax
	je	Lj31
	jmp	Lj32
Lj31:
	movl	-156(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,(%esp)
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	-152(%ebp),%eax
	movl	(%eax),%eax
	call	L_JIDCTFLT_DEQUANTIZE$LONGINT$DOUBLE$$DOUBLE$stub
	fstpl	-692(%ebp)
	movl	-160(%ebp),%edx
	movl	-692(%ebp),%eax
	movl	%eax,(%edx)
	movl	-688(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-160(%ebp),%edx
	movl	-692(%ebp),%eax
	movl	%eax,64(%edx)
	movl	-688(%ebp),%eax
	movl	%eax,68(%edx)
	movl	-160(%ebp),%edx
	movl	-692(%ebp),%eax
	movl	%eax,128(%edx)
	movl	-688(%ebp),%eax
	movl	%eax,132(%edx)
	movl	-160(%ebp),%edx
	movl	-692(%ebp),%eax
	movl	%eax,192(%edx)
	movl	-688(%ebp),%eax
	movl	%eax,196(%edx)
	movl	-160(%ebp),%edx
	movl	-692(%ebp),%eax
	movl	%eax,256(%edx)
	movl	-688(%ebp),%eax
	movl	%eax,260(%edx)
	movl	-160(%ebp),%edx
	movl	-692(%ebp),%eax
	movl	%eax,320(%edx)
	movl	-688(%ebp),%eax
	movl	%eax,324(%edx)
	movl	-160(%ebp),%edx
	movl	-692(%ebp),%eax
	movl	%eax,384(%edx)
	movl	-688(%ebp),%eax
	movl	%eax,388(%edx)
	movl	-160(%ebp),%edx
	movl	-692(%ebp),%eax
	movl	%eax,448(%edx)
	movl	-688(%ebp),%eax
	movl	%eax,452(%edx)
	addl	$4,-152(%ebp)
	addl	$8,-156(%ebp)
	addl	$8,-160(%ebp)
	jmp	Lj28
Lj32:
	movl	-156(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,(%esp)
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	-152(%ebp),%eax
	movl	(%eax),%eax
	call	L_JIDCTFLT_DEQUANTIZE$LONGINT$DOUBLE$$DOUBLE$stub
	fstpl	-20(%ebp)
	movl	-156(%ebp),%eax
	movl	128(%eax),%edx
	movl	%edx,(%esp)
	movl	132(%eax),%eax
	movl	%eax,4(%esp)
	movl	-152(%ebp),%eax
	movl	64(%eax),%eax
	call	L_JIDCTFLT_DEQUANTIZE$LONGINT$DOUBLE$$DOUBLE$stub
	fstpl	-28(%ebp)
	movl	-156(%ebp),%eax
	movl	256(%eax),%edx
	movl	%edx,(%esp)
	movl	260(%eax),%eax
	movl	%eax,4(%esp)
	movl	-152(%ebp),%eax
	movl	128(%eax),%eax
	call	L_JIDCTFLT_DEQUANTIZE$LONGINT$DOUBLE$$DOUBLE$stub
	fstpl	-36(%ebp)
	movl	-156(%ebp),%eax
	movl	384(%eax),%edx
	movl	%edx,(%esp)
	movl	388(%eax),%eax
	movl	%eax,4(%esp)
	movl	-152(%ebp),%eax
	movl	192(%eax),%eax
	call	L_JIDCTFLT_DEQUANTIZE$LONGINT$DOUBLE$$DOUBLE$stub
	fstpl	-44(%ebp)
	fldl	-36(%ebp)
	fldl	-20(%ebp)
	faddp	%st,%st(1)
	fstpl	-84(%ebp)
	fldl	-36(%ebp)
	fldl	-20(%ebp)
	fsubp	%st,%st(1)
	fstpl	-92(%ebp)
	fldl	-44(%ebp)
	fldl	-28(%ebp)
	faddp	%st,%st(1)
	fstpl	-108(%ebp)
	fldl	-44(%ebp)
	fldl	-28(%ebp)
	fsubp	%st,%st(1)
	movl	L_$JIDCTFLT$_Ld1$non_lazy_ptr-Lj19(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldl	-108(%ebp)
	fsubrp	%st,%st(1)
	fstpl	-100(%ebp)
	fldl	-108(%ebp)
	fldl	-84(%ebp)
	faddp	%st,%st(1)
	fstpl	-20(%ebp)
	fldl	-108(%ebp)
	fldl	-84(%ebp)
	fsubp	%st,%st(1)
	fstpl	-44(%ebp)
	fldl	-100(%ebp)
	fldl	-92(%ebp)
	faddp	%st,%st(1)
	fstpl	-28(%ebp)
	fldl	-100(%ebp)
	fldl	-92(%ebp)
	fsubp	%st,%st(1)
	fstpl	-36(%ebp)
	movl	-156(%ebp),%eax
	movl	64(%eax),%edx
	movl	%edx,(%esp)
	movl	68(%eax),%eax
	movl	%eax,4(%esp)
	movl	-152(%ebp),%eax
	movl	32(%eax),%eax
	call	L_JIDCTFLT_DEQUANTIZE$LONGINT$DOUBLE$$DOUBLE$stub
	fstpl	-52(%ebp)
	movl	-156(%ebp),%eax
	movl	192(%eax),%edx
	movl	%edx,(%esp)
	movl	196(%eax),%eax
	movl	%eax,4(%esp)
	movl	-152(%ebp),%eax
	movl	96(%eax),%eax
	call	L_JIDCTFLT_DEQUANTIZE$LONGINT$DOUBLE$$DOUBLE$stub
	fstpl	-60(%ebp)
	movl	-156(%ebp),%edx
	movl	320(%edx),%eax
	movl	%eax,(%esp)
	movl	324(%edx),%eax
	movl	%eax,4(%esp)
	movl	-152(%ebp),%eax
	movl	160(%eax),%eax
	call	L_JIDCTFLT_DEQUANTIZE$LONGINT$DOUBLE$$DOUBLE$stub
	fstpl	-68(%ebp)
	movl	-156(%ebp),%eax
	movl	448(%eax),%edx
	movl	%edx,(%esp)
	movl	452(%eax),%eax
	movl	%eax,4(%esp)
	movl	-152(%ebp),%eax
	movl	224(%eax),%eax
	call	L_JIDCTFLT_DEQUANTIZE$LONGINT$DOUBLE$$DOUBLE$stub
	fstpl	-76(%ebp)
	fldl	-60(%ebp)
	fldl	-68(%ebp)
	faddp	%st,%st(1)
	fstpl	-148(%ebp)
	fldl	-60(%ebp)
	fldl	-68(%ebp)
	fsubp	%st,%st(1)
	fstpl	-124(%ebp)
	fldl	-76(%ebp)
	fldl	-52(%ebp)
	faddp	%st,%st(1)
	fstpl	-132(%ebp)
	fldl	-76(%ebp)
	fldl	-52(%ebp)
	fsubp	%st,%st(1)
	fstpl	-140(%ebp)
	fldl	-148(%ebp)
	fldl	-132(%ebp)
	faddp	%st,%st(1)
	fstpl	-76(%ebp)
	fldl	-148(%ebp)
	fldl	-132(%ebp)
	fsubp	%st,%st(1)
	movl	L_$JIDCTFLT$_Ld1$non_lazy_ptr-Lj19(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpl	-92(%ebp)
	fldl	-140(%ebp)
	fldl	-124(%ebp)
	faddp	%st,%st(1)
	movl	L_$JIDCTFLT$_Ld2$non_lazy_ptr-Lj19(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpl	-116(%ebp)
	fldl	-140(%ebp)
	movl	L_$JIDCTFLT$_Ld3$non_lazy_ptr-Lj19(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldl	-116(%ebp)
	fsubrp	%st,%st(1)
	fstpl	-84(%ebp)
	fldl	-124(%ebp)
	movl	L_$JIDCTFLT$_Ld4$non_lazy_ptr-Lj19(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldl	-116(%ebp)
	faddp	%st,%st(1)
	fstpl	-100(%ebp)
	fldl	-76(%ebp)
	fldl	-100(%ebp)
	fsubp	%st,%st(1)
	fstpl	-68(%ebp)
	fldl	-68(%ebp)
	fldl	-92(%ebp)
	fsubp	%st,%st(1)
	fstpl	-60(%ebp)
	fldl	-60(%ebp)
	fldl	-84(%ebp)
	faddp	%st,%st(1)
	fstpl	-52(%ebp)
	fldl	-76(%ebp)
	fldl	-20(%ebp)
	faddp	%st,%st(1)
	movl	-160(%ebp),%eax
	fstpl	(%eax)
	fldl	-76(%ebp)
	fldl	-20(%ebp)
	fsubp	%st,%st(1)
	movl	-160(%ebp),%eax
	fstpl	448(%eax)
	fldl	-68(%ebp)
	fldl	-28(%ebp)
	faddp	%st,%st(1)
	movl	-160(%ebp),%eax
	fstpl	64(%eax)
	fldl	-68(%ebp)
	fldl	-28(%ebp)
	fsubp	%st,%st(1)
	movl	-160(%ebp),%eax
	fstpl	384(%eax)
	fldl	-60(%ebp)
	fldl	-36(%ebp)
	faddp	%st,%st(1)
	movl	-160(%ebp),%eax
	fstpl	128(%eax)
	fldl	-60(%ebp)
	fldl	-36(%ebp)
	fsubp	%st,%st(1)
	movl	-160(%ebp),%eax
	fstpl	320(%eax)
	fldl	-52(%ebp)
	fldl	-44(%ebp)
	faddp	%st,%st(1)
	movl	-160(%ebp),%eax
	fstpl	256(%eax)
	fldl	-52(%ebp)
	fldl	-44(%ebp)
	fsubp	%st,%st(1)
	movl	-160(%ebp),%eax
	fstpl	192(%eax)
	addl	$4,-152(%ebp)
	addl	$8,-156(%ebp)
	addl	$8,-160(%ebp)
Lj28:
	cmpl	$0,-172(%ebp)
	jg	Lj30
	leal	-684(%ebp),%eax
	movl	%eax,-160(%ebp)
	movl	$0,-172(%ebp)
	decl	-172(%ebp)
	.align 2
Lj169:
	incl	-172(%ebp)
	movl	12(%ebp),%eax
	movl	-172(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	8(%ebp),%eax
	leal	(%edx,%eax,1),%eax
	movl	%eax,-164(%ebp)
	movl	-160(%ebp),%edx
	movl	-160(%ebp),%eax
	fldl	32(%eax)
	fldl	(%edx)
	faddp	%st,%st(1)
	fstpl	-84(%ebp)
	movl	-160(%ebp),%eax
	movl	-160(%ebp),%edx
	fldl	32(%edx)
	fldl	(%eax)
	fsubp	%st,%st(1)
	fstpl	-92(%ebp)
	movl	-160(%ebp),%edx
	movl	-160(%ebp),%eax
	fldl	48(%eax)
	fldl	16(%edx)
	faddp	%st,%st(1)
	fstpl	-108(%ebp)
	movl	-160(%ebp),%edx
	movl	-160(%ebp),%eax
	fldl	48(%eax)
	fldl	16(%edx)
	fsubp	%st,%st(1)
	movl	L_$JIDCTFLT$_Ld1$non_lazy_ptr-Lj19(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldl	-108(%ebp)
	fsubrp	%st,%st(1)
	fstpl	-100(%ebp)
	fldl	-108(%ebp)
	fldl	-84(%ebp)
	faddp	%st,%st(1)
	fstpl	-20(%ebp)
	fldl	-108(%ebp)
	fldl	-84(%ebp)
	fsubp	%st,%st(1)
	fstpl	-44(%ebp)
	fldl	-100(%ebp)
	fldl	-92(%ebp)
	faddp	%st,%st(1)
	fstpl	-28(%ebp)
	fldl	-100(%ebp)
	fldl	-92(%ebp)
	fsubp	%st,%st(1)
	fstpl	-36(%ebp)
	movl	-160(%ebp),%edx
	movl	-160(%ebp),%eax
	fldl	24(%eax)
	fldl	40(%edx)
	faddp	%st,%st(1)
	fstpl	-148(%ebp)
	movl	-160(%ebp),%eax
	movl	-160(%ebp),%edx
	fldl	24(%edx)
	fldl	40(%eax)
	fsubp	%st,%st(1)
	fstpl	-124(%ebp)
	movl	-160(%ebp),%edx
	movl	-160(%ebp),%eax
	fldl	56(%eax)
	fldl	8(%edx)
	faddp	%st,%st(1)
	fstpl	-132(%ebp)
	movl	-160(%ebp),%eax
	movl	-160(%ebp),%edx
	fldl	56(%edx)
	fldl	8(%eax)
	fsubp	%st,%st(1)
	fstpl	-140(%ebp)
	fldl	-148(%ebp)
	fldl	-132(%ebp)
	faddp	%st,%st(1)
	fstpl	-76(%ebp)
	fldl	-148(%ebp)
	fldl	-132(%ebp)
	fsubp	%st,%st(1)
	movl	L_$JIDCTFLT$_Ld1$non_lazy_ptr-Lj19(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpl	-92(%ebp)
	fldl	-140(%ebp)
	fldl	-124(%ebp)
	faddp	%st,%st(1)
	movl	L_$JIDCTFLT$_Ld2$non_lazy_ptr-Lj19(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpl	-116(%ebp)
	fldl	-140(%ebp)
	movl	L_$JIDCTFLT$_Ld3$non_lazy_ptr-Lj19(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldl	-116(%ebp)
	fsubrp	%st,%st(1)
	fstpl	-84(%ebp)
	fldl	-124(%ebp)
	movl	L_$JIDCTFLT$_Ld4$non_lazy_ptr-Lj19(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldl	-116(%ebp)
	faddp	%st,%st(1)
	fstpl	-100(%ebp)
	fldl	-76(%ebp)
	fldl	-100(%ebp)
	fsubp	%st,%st(1)
	fstpl	-68(%ebp)
	fldl	-68(%ebp)
	fldl	-92(%ebp)
	fsubp	%st,%st(1)
	fstpl	-60(%ebp)
	fldl	-60(%ebp)
	fldl	-84(%ebp)
	faddp	%st,%st(1)
	fstpl	-52(%ebp)
	movl	-168(%ebp),%esi
	fldl	-76(%ebp)
	fldl	-20(%ebp)
	faddp	%st,%st(1)
	fistpq	-700(%ebp)
	fwait
	movl	-700(%ebp),%eax
	movl	$3,%edx
	call	L_JIDCTFLT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-164(%ebp),%edx
	movb	(%esi,%eax,1),%al
	movb	%al,(%edx)
	movl	-168(%ebp),%esi
	fldl	-76(%ebp)
	fldl	-20(%ebp)
	fsubp	%st,%st(1)
	fistpq	-700(%ebp)
	fwait
	movl	-700(%ebp),%eax
	movl	$3,%edx
	call	L_JIDCTFLT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-164(%ebp),%edx
	movb	(%esi,%eax,1),%al
	movb	%al,7(%edx)
	movl	-168(%ebp),%esi
	fldl	-68(%ebp)
	fldl	-28(%ebp)
	faddp	%st,%st(1)
	fistpq	-700(%ebp)
	fwait
	movl	-700(%ebp),%eax
	movl	$3,%edx
	call	L_JIDCTFLT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-164(%ebp),%edx
	movb	(%esi,%eax,1),%al
	movb	%al,1(%edx)
	movl	-168(%ebp),%esi
	fldl	-68(%ebp)
	fldl	-28(%ebp)
	fsubp	%st,%st(1)
	fistpq	-700(%ebp)
	fwait
	movl	-700(%ebp),%eax
	movl	$3,%edx
	call	L_JIDCTFLT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-164(%ebp),%edx
	movb	(%esi,%eax,1),%al
	movb	%al,6(%edx)
	movl	-168(%ebp),%esi
	fldl	-60(%ebp)
	fldl	-36(%ebp)
	faddp	%st,%st(1)
	fistpq	-700(%ebp)
	fwait
	movl	-700(%ebp),%eax
	movl	$3,%edx
	call	L_JIDCTFLT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-164(%ebp),%edx
	movb	(%esi,%eax,1),%al
	movb	%al,2(%edx)
	movl	-168(%ebp),%esi
	fldl	-60(%ebp)
	fldl	-36(%ebp)
	fsubp	%st,%st(1)
	fistpq	-700(%ebp)
	fwait
	movl	-700(%ebp),%eax
	movl	$3,%edx
	call	L_JIDCTFLT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-164(%ebp),%edx
	movb	(%esi,%eax,1),%al
	movb	%al,5(%edx)
	movl	-168(%ebp),%esi
	fldl	-52(%ebp)
	fldl	-44(%ebp)
	faddp	%st,%st(1)
	fistpq	-700(%ebp)
	fwait
	movl	-700(%ebp),%eax
	movl	$3,%edx
	call	L_JIDCTFLT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-164(%ebp),%edx
	movb	(%esi,%eax,1),%al
	movb	%al,4(%edx)
	movl	-168(%ebp),%esi
	fldl	-52(%ebp)
	fldl	-44(%ebp)
	fsubp	%st,%st(1)
	fistpq	-700(%ebp)
	fwait
	movl	-700(%ebp),%eax
	movl	$3,%edx
	call	L_JIDCTFLT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-164(%ebp),%edx
	movb	(%esi,%eax,1),%al
	movb	%al,3(%edx)
	addl	$64,-160(%ebp)
	cmpl	$7,-172(%ebp)
	jl	Lj169
	movl	-708(%ebp),%ebx
	movl	-704(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JIDCTFLT
_THREADVARLIST_JIDCTFLT:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 3
.globl	_$JIDCTFLT$_Ld1
_$JIDCTFLT$_Ld1:
	.byte	188,238,193,44,51,243,4,181,255,63

.const
	.align 3
.globl	_$JIDCTFLT$_Ld2
_$JIDCTFLT$_Ld2:
	.byte	200,64,1,136,121,94,131,236,255,63

.const
	.align 3
.globl	_$JIDCTFLT$_Ld3
_$JIDCTFLT$_Ld3:
	.byte	11,219,5,57,222,211,139,138,255,63

.const
	.align 3
.globl	_$JIDCTFLT$_Ld4
_$JIDCTFLT$_Ld4:
	.byte	66,83,126,107,138,116,61,167,0,192
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JIDCTFLT_DEQUANTIZE$LONGINT$DOUBLE$$DOUBLE$stub:
.indirect_symbol _JIDCTFLT_DEQUANTIZE$LONGINT$DOUBLE$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JIDCTFLT_DESCALE$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JIDCTFLT_DESCALE$LONGINT$LONGINT$$LONGINT
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
L_$JIDCTFLT$_Ld1$non_lazy_ptr:
.indirect_symbol _$JIDCTFLT$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JIDCTFLT$_Ld2$non_lazy_ptr:
.indirect_symbol _$JIDCTFLT$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JIDCTFLT$_Ld3$non_lazy_ptr:
.indirect_symbol _$JIDCTFLT$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JIDCTFLT$_Ld4$non_lazy_ptr:
.indirect_symbol _$JIDCTFLT$_Ld4
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

