# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT
_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	jno	Lj7
	call	LFPC_OVERFLOW$stub
Lj7:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JIDCTINT_DEQUANTIZE$LONGINT$LONGINT$$LONGINT
_JIDCTINT_DEQUANTIZE$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	jno	Lj12
	call	LFPC_OVERFLOW$stub
Lj12:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT
_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	subl	$1,%ecx
	jno	Lj17
	call	LFPC_OVERFLOW$stub
Lj17:
	movl	$1,%eax
	shll	%cl,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	jno	Lj18
	call	LFPC_OVERFLOW$stub
Lj18:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj19
	jmp	Lj20
Lj19:
	movl	-8(%ebp),%ecx
	movl	$32,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	jno	Lj23
	call	LFPC_OVERFLOW$stub
Lj23:
	movl	$-1,%eax
	shll	%cl,%eax
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ecx
	shrl	%cl,%edx
	orl	%edx,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj24
Lj20:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-12(%ebp)
Lj24:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JIDCTINT_JPEG_IDCT_ISLOW$crcAC8DA868
_JIDCTINT_JPEG_IDCT_ISLOW$crcAC8DA868:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$360,%esp
	movl	%ebx,-356(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	272(%eax),%eax
	leal	384(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,-72(%ebp)
	leal	-344(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$7,-88(%ebp)
	addl	$1,-88(%ebp)
	.align 2
Lj39:
	subl	$1,-88(%ebp)
	movl	-68(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj47
	jmp	Lj41
Lj47:
	movl	-68(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj46
	jmp	Lj41
Lj46:
	movl	-68(%ebp),%eax
	movl	96(%eax),%eax
	testl	%eax,%eax
	je	Lj45
	jmp	Lj41
Lj45:
	movl	-68(%ebp),%eax
	movl	128(%eax),%eax
	testl	%eax,%eax
	je	Lj44
	jmp	Lj41
Lj44:
	movl	-68(%ebp),%eax
	movl	160(%eax),%eax
	testl	%eax,%eax
	je	Lj43
	jmp	Lj41
Lj43:
	movl	-68(%ebp),%eax
	movl	192(%eax),%eax
	testl	%eax,%eax
	je	Lj42
	jmp	Lj41
Lj42:
	movl	-68(%ebp),%eax
	movl	224(%eax),%eax
	testl	%eax,%eax
	je	Lj40
	jmp	Lj41
Lj40:
	movl	-72(%ebp),%eax
	movl	(%eax),%edx
	movl	-68(%ebp),%eax
	movl	(%eax),%eax
	call	L_JIDCTINT_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub
	shll	$2,%eax
	movl	%eax,-348(%ebp)
	movl	-76(%ebp),%edx
	movl	-348(%ebp),%eax
	movl	%eax,(%edx)
	movl	-76(%ebp),%edx
	movl	-348(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-76(%ebp),%eax
	movl	-348(%ebp),%edx
	movl	%edx,64(%eax)
	movl	-76(%ebp),%eax
	movl	-348(%ebp),%edx
	movl	%edx,96(%eax)
	movl	-76(%ebp),%eax
	movl	-348(%ebp),%edx
	movl	%edx,128(%eax)
	movl	-76(%ebp),%eax
	movl	-348(%ebp),%edx
	movl	%edx,160(%eax)
	movl	-76(%ebp),%eax
	movl	-348(%ebp),%edx
	movl	%edx,192(%eax)
	movl	-76(%ebp),%edx
	movl	-348(%ebp),%eax
	movl	%eax,224(%edx)
	addl	$4,-68(%ebp)
	addl	$4,-72(%ebp)
	addl	$4,-76(%ebp)
	jmp	Lj37
Lj41:
	movl	-72(%ebp),%eax
	movl	64(%eax),%edx
	movl	-68(%ebp),%eax
	movl	64(%eax),%eax
	call	L_JIDCTINT_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-52(%ebp)
	movl	-72(%ebp),%eax
	movl	192(%eax),%edx
	movl	-68(%ebp),%eax
	movl	192(%eax),%eax
	call	L_JIDCTINT_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-56(%ebp)
	movl	-52(%ebp),%eax
	movl	-56(%ebp),%edx
	addl	%edx,%eax
	jno	Lj86
	call	LFPC_OVERFLOW$stub
Lj86:
	movl	$4433,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-48(%ebp)
	movl	-56(%ebp),%eax
	movl	$-15137,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	-48(%ebp),%edx
	addl	%eax,%edx
	jno	Lj95
	call	LFPC_OVERFLOW$stub
Lj95:
	movl	%edx,-24(%ebp)
	movl	-52(%ebp),%eax
	movl	$6270,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	-48(%ebp),%edx
	addl	%eax,%edx
	jno	Lj102
	call	LFPC_OVERFLOW$stub
Lj102:
	movl	%edx,-28(%ebp)
	movl	-72(%ebp),%eax
	movl	(%eax),%edx
	movl	-68(%ebp),%eax
	movl	(%eax),%eax
	call	L_JIDCTINT_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-52(%ebp)
	movl	-72(%ebp),%eax
	movl	128(%eax),%edx
	movl	-68(%ebp),%eax
	movl	128(%eax),%eax
	call	L_JIDCTINT_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-56(%ebp)
	movl	-52(%ebp),%eax
	movl	-56(%ebp),%edx
	addl	%edx,%eax
	jno	Lj117
	call	LFPC_OVERFLOW$stub
Lj117:
	shll	$13,%eax
	movl	%eax,-16(%ebp)
	movl	-52(%ebp),%eax
	movl	-56(%ebp),%edx
	subl	%edx,%eax
	jno	Lj120
	call	LFPC_OVERFLOW$stub
Lj120:
	shll	$13,%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	jno	Lj123
	call	LFPC_OVERFLOW$stub
Lj123:
	movl	%eax,-32(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%edx
	subl	%edx,%eax
	jno	Lj126
	call	LFPC_OVERFLOW$stub
Lj126:
	movl	%eax,-44(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	jno	Lj129
	call	LFPC_OVERFLOW$stub
Lj129:
	movl	%eax,-36(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	jno	Lj132
	call	LFPC_OVERFLOW$stub
Lj132:
	movl	%eax,-40(%ebp)
	movl	-72(%ebp),%eax
	movl	224(%eax),%edx
	movl	-68(%ebp),%eax
	movl	224(%eax),%eax
	call	L_JIDCTINT_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-72(%ebp),%eax
	movl	160(%eax),%edx
	movl	-68(%ebp),%eax
	movl	160(%eax),%eax
	call	L_JIDCTINT_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-72(%ebp),%eax
	movl	96(%eax),%edx
	movl	-68(%ebp),%eax
	movl	96(%eax),%eax
	call	L_JIDCTINT_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-72(%ebp),%eax
	movl	32(%eax),%edx
	movl	-68(%ebp),%eax
	movl	32(%eax),%eax
	call	L_JIDCTINT_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	jno	Lj159
	call	LFPC_OVERFLOW$stub
Lj159:
	movl	%eax,-48(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	jno	Lj162
	call	LFPC_OVERFLOW$stub
Lj162:
	movl	%eax,-52(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	jno	Lj165
	call	LFPC_OVERFLOW$stub
Lj165:
	movl	%eax,-56(%ebp)
	movl	-20(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	jno	Lj168
	call	LFPC_OVERFLOW$stub
Lj168:
	movl	%eax,-60(%ebp)
	movl	-56(%ebp),%eax
	movl	-60(%ebp),%edx
	addl	%edx,%eax
	jno	Lj173
	call	LFPC_OVERFLOW$stub
Lj173:
	movl	$9633,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-64(%ebp)
	movl	-16(%ebp),%eax
	movl	$2446,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	$16819,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	$25172,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-28(%ebp),%eax
	movl	$12299,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-48(%ebp),%eax
	movl	$-7373,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-48(%ebp)
	movl	-52(%ebp),%eax
	movl	$-20995,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-52(%ebp)
	movl	-56(%ebp),%eax
	movl	$-16069,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-56(%ebp)
	movl	-60(%ebp),%eax
	movl	$-3196,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-60(%ebp)
	movl	-56(%ebp),%eax
	movl	-64(%ebp),%edx
	addl	%edx,%eax
	jno	Lj226
	call	LFPC_OVERFLOW$stub
Lj226:
	movl	%eax,-56(%ebp)
	movl	-60(%ebp),%eax
	movl	-64(%ebp),%edx
	addl	%edx,%eax
	jno	Lj229
	call	LFPC_OVERFLOW$stub
Lj229:
	movl	%eax,-60(%ebp)
	movl	-48(%ebp),%edx
	movl	-56(%ebp),%eax
	addl	%eax,%edx
	jno	Lj232
	call	LFPC_OVERFLOW$stub
Lj232:
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	jno	Lj233
	call	LFPC_OVERFLOW$stub
Lj233:
	movl	%edx,-16(%ebp)
	movl	-52(%ebp),%edx
	movl	-60(%ebp),%eax
	addl	%eax,%edx
	jno	Lj236
	call	LFPC_OVERFLOW$stub
Lj236:
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	jno	Lj237
	call	LFPC_OVERFLOW$stub
Lj237:
	movl	%edx,-20(%ebp)
	movl	-52(%ebp),%edx
	movl	-56(%ebp),%eax
	addl	%eax,%edx
	jno	Lj240
	call	LFPC_OVERFLOW$stub
Lj240:
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	jno	Lj241
	call	LFPC_OVERFLOW$stub
Lj241:
	movl	%edx,-24(%ebp)
	movl	-48(%ebp),%edx
	movl	-60(%ebp),%eax
	addl	%eax,%edx
	jno	Lj244
	call	LFPC_OVERFLOW$stub
Lj244:
	movl	-28(%ebp),%eax
	addl	%eax,%edx
	jno	Lj245
	call	LFPC_OVERFLOW$stub
Lj245:
	movl	%edx,-28(%ebp)
	movl	-32(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	jno	Lj250
	call	LFPC_OVERFLOW$stub
Lj250:
	movl	$11,%edx
	call	L_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-76(%ebp),%edx
	movl	%eax,(%edx)
	movl	-32(%ebp),%eax
	movl	-28(%ebp),%edx
	subl	%edx,%eax
	jno	Lj257
	call	LFPC_OVERFLOW$stub
Lj257:
	movl	$11,%edx
	call	L_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-76(%ebp),%edx
	movl	%eax,224(%edx)
	movl	-36(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	jno	Lj264
	call	LFPC_OVERFLOW$stub
Lj264:
	movl	$11,%edx
	call	L_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-76(%ebp),%edx
	movl	%eax,32(%edx)
	movl	-36(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	jno	Lj271
	call	LFPC_OVERFLOW$stub
Lj271:
	movl	$11,%edx
	call	L_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-76(%ebp),%edx
	movl	%eax,192(%edx)
	movl	-40(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	jno	Lj278
	call	LFPC_OVERFLOW$stub
Lj278:
	movl	$11,%edx
	call	L_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-76(%ebp),%edx
	movl	%eax,64(%edx)
	movl	-40(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	jno	Lj285
	call	LFPC_OVERFLOW$stub
Lj285:
	movl	$11,%edx
	call	L_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-76(%ebp),%edx
	movl	%eax,160(%edx)
	movl	-44(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	jno	Lj292
	call	LFPC_OVERFLOW$stub
Lj292:
	movl	$11,%edx
	call	L_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-76(%ebp),%edx
	movl	%eax,96(%edx)
	movl	-44(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	jno	Lj299
	call	LFPC_OVERFLOW$stub
Lj299:
	movl	$11,%edx
	call	L_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-76(%ebp),%edx
	movl	%eax,128(%edx)
	addl	$4,-68(%ebp)
	addl	$4,-72(%ebp)
	addl	$4,-76(%ebp)
Lj37:
	cmpl	$0,-88(%ebp)
	jg	Lj39
	leal	-344(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$0,-88(%ebp)
	subl	$1,-88(%ebp)
	.align 2
Lj306:
	addl	$1,-88(%ebp)
	movl	12(%ebp),%edx
	movl	-88(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-80(%ebp)
	movl	8(%ebp),%eax
	addl	%eax,-80(%ebp)
	movl	-76(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj316
	jmp	Lj310
Lj316:
	movl	-76(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj315
	jmp	Lj310
Lj315:
	movl	-76(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj314
	jmp	Lj310
Lj314:
	movl	-76(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj313
	jmp	Lj310
Lj313:
	movl	-76(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj312
	jmp	Lj310
Lj312:
	movl	-76(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj311
	jmp	Lj310
Lj311:
	movl	-76(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj309
	jmp	Lj310
Lj309:
	movl	-84(%ebp),%ebx
	movl	-76(%ebp),%eax
	movl	(%eax),%eax
	movl	$5,%edx
	call	L_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movb	(%ebx,%eax,1),%al
	movb	%al,-349(%ebp)
	movl	-80(%ebp),%eax
	movb	-349(%ebp),%dl
	movb	%dl,(%eax)
	movl	-80(%ebp),%eax
	movb	-349(%ebp),%dl
	movb	%dl,1(%eax)
	movl	-80(%ebp),%eax
	movb	-349(%ebp),%dl
	movb	%dl,2(%eax)
	movl	-80(%ebp),%eax
	movb	-349(%ebp),%dl
	movb	%dl,3(%eax)
	movl	-80(%ebp),%eax
	movb	-349(%ebp),%dl
	movb	%dl,4(%eax)
	movl	-80(%ebp),%eax
	movb	-349(%ebp),%dl
	movb	%dl,5(%eax)
	movl	-80(%ebp),%eax
	movb	-349(%ebp),%dl
	movb	%dl,6(%eax)
	movl	-80(%ebp),%eax
	movb	-349(%ebp),%dl
	movb	%dl,7(%eax)
	addl	$32,-76(%ebp)
	jmp	Lj304
Lj310:
	movl	-76(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	-76(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	-52(%ebp),%eax
	movl	-56(%ebp),%edx
	addl	%edx,%eax
	jno	Lj347
	call	LFPC_OVERFLOW$stub
Lj347:
	movl	$4433,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-48(%ebp)
	movl	-56(%ebp),%eax
	movl	$-15137,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	-48(%ebp),%edx
	addl	%eax,%edx
	jno	Lj356
	call	LFPC_OVERFLOW$stub
Lj356:
	movl	%edx,-24(%ebp)
	movl	-52(%ebp),%eax
	movl	$6270,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	-48(%ebp),%edx
	addl	%eax,%edx
	jno	Lj363
	call	LFPC_OVERFLOW$stub
Lj363:
	movl	%edx,-28(%ebp)
	movl	-76(%ebp),%eax
	movl	-76(%ebp),%edx
	movl	(%eax),%eax
	movl	16(%edx),%edx
	addl	%edx,%eax
	jno	Lj366
	call	LFPC_OVERFLOW$stub
Lj366:
	shll	$13,%eax
	movl	%eax,-16(%ebp)
	movl	-76(%ebp),%eax
	movl	-76(%ebp),%edx
	movl	(%eax),%eax
	movl	16(%edx),%edx
	subl	%edx,%eax
	jno	Lj369
	call	LFPC_OVERFLOW$stub
Lj369:
	shll	$13,%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	jno	Lj372
	call	LFPC_OVERFLOW$stub
Lj372:
	movl	%eax,-32(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%edx
	subl	%edx,%eax
	jno	Lj375
	call	LFPC_OVERFLOW$stub
Lj375:
	movl	%eax,-44(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	jno	Lj378
	call	LFPC_OVERFLOW$stub
Lj378:
	movl	%eax,-36(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	jno	Lj381
	call	LFPC_OVERFLOW$stub
Lj381:
	movl	%eax,-40(%ebp)
	movl	-76(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-76(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-76(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-76(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	jno	Lj392
	call	LFPC_OVERFLOW$stub
Lj392:
	movl	%eax,-48(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	jno	Lj395
	call	LFPC_OVERFLOW$stub
Lj395:
	movl	%eax,-52(%ebp)
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	jno	Lj398
	call	LFPC_OVERFLOW$stub
Lj398:
	movl	%edx,-56(%ebp)
	movl	-20(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	jno	Lj401
	call	LFPC_OVERFLOW$stub
Lj401:
	movl	%eax,-60(%ebp)
	movl	-56(%ebp),%eax
	movl	-60(%ebp),%edx
	addl	%edx,%eax
	jno	Lj406
	call	LFPC_OVERFLOW$stub
Lj406:
	movl	$9633,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-64(%ebp)
	movl	-16(%ebp),%eax
	movl	$2446,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	$16819,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	$25172,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-28(%ebp),%eax
	movl	$12299,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-48(%ebp),%eax
	movl	$-7373,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-48(%ebp)
	movl	-52(%ebp),%eax
	movl	$-20995,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-52(%ebp)
	movl	-56(%ebp),%eax
	movl	$-16069,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-56(%ebp)
	movl	-60(%ebp),%eax
	movl	$-3196,%edx
	call	L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-60(%ebp)
	movl	-56(%ebp),%edx
	movl	-64(%ebp),%eax
	addl	%eax,%edx
	jno	Lj459
	call	LFPC_OVERFLOW$stub
Lj459:
	movl	%edx,-56(%ebp)
	movl	-60(%ebp),%eax
	movl	-64(%ebp),%edx
	addl	%edx,%eax
	jno	Lj462
	call	LFPC_OVERFLOW$stub
Lj462:
	movl	%eax,-60(%ebp)
	movl	-48(%ebp),%edx
	movl	-56(%ebp),%eax
	addl	%eax,%edx
	jno	Lj465
	call	LFPC_OVERFLOW$stub
Lj465:
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	jno	Lj466
	call	LFPC_OVERFLOW$stub
Lj466:
	movl	%edx,-16(%ebp)
	movl	-52(%ebp),%edx
	movl	-60(%ebp),%eax
	addl	%eax,%edx
	jno	Lj469
	call	LFPC_OVERFLOW$stub
Lj469:
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	jno	Lj470
	call	LFPC_OVERFLOW$stub
Lj470:
	movl	%edx,-20(%ebp)
	movl	-52(%ebp),%edx
	movl	-56(%ebp),%eax
	addl	%eax,%edx
	jno	Lj473
	call	LFPC_OVERFLOW$stub
Lj473:
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	jno	Lj474
	call	LFPC_OVERFLOW$stub
Lj474:
	movl	%edx,-24(%ebp)
	movl	-48(%ebp),%edx
	movl	-60(%ebp),%eax
	addl	%eax,%edx
	jno	Lj477
	call	LFPC_OVERFLOW$stub
Lj477:
	movl	-28(%ebp),%eax
	addl	%eax,%edx
	jno	Lj478
	call	LFPC_OVERFLOW$stub
Lj478:
	movl	%edx,-28(%ebp)
	movl	-84(%ebp),%ebx
	movl	-32(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	jno	Lj483
	call	LFPC_OVERFLOW$stub
Lj483:
	movl	$18,%edx
	call	L_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-80(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,(%edx)
	movl	-84(%ebp),%ebx
	movl	-32(%ebp),%eax
	movl	-28(%ebp),%edx
	subl	%edx,%eax
	jno	Lj490
	call	LFPC_OVERFLOW$stub
Lj490:
	movl	$18,%edx
	call	L_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-80(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,7(%edx)
	movl	-84(%ebp),%ebx
	movl	-36(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	jno	Lj497
	call	LFPC_OVERFLOW$stub
Lj497:
	movl	$18,%edx
	call	L_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-80(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,1(%edx)
	movl	-84(%ebp),%ebx
	movl	-36(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	jno	Lj504
	call	LFPC_OVERFLOW$stub
Lj504:
	movl	$18,%edx
	call	L_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-80(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,6(%edx)
	movl	-84(%ebp),%ebx
	movl	-40(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	jno	Lj511
	call	LFPC_OVERFLOW$stub
Lj511:
	movl	$18,%edx
	call	L_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-80(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,2(%edx)
	movl	-84(%ebp),%ebx
	movl	-40(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	jno	Lj518
	call	LFPC_OVERFLOW$stub
Lj518:
	movl	$18,%edx
	call	L_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-80(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,5(%edx)
	movl	-84(%ebp),%ebx
	movl	-44(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	jno	Lj525
	call	LFPC_OVERFLOW$stub
Lj525:
	movl	$18,%edx
	call	L_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-80(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,3(%edx)
	movl	-84(%ebp),%ebx
	movl	-44(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	jno	Lj532
	call	LFPC_OVERFLOW$stub
Lj532:
	movl	$18,%edx
	call	L_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	andl	$1023,%eax
	movl	-80(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,4(%edx)
	addl	$32,-76(%ebp)
Lj304:
	cmpl	$7,-88(%ebp)
	jl	Lj306
	movl	-356(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JIDCTINT
_THREADVARLIST_JIDCTINT:
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

LFPC_OVERFLOW$stub:
.indirect_symbol FPC_OVERFLOW
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JIDCTINT_DEQUANTIZE$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JIDCTINT_DEQUANTIZE$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JIDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JIDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT
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

