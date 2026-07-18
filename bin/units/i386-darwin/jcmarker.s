# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT
_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movb	-8(%ebp),%dl
	movb	%dl,(%eax)
	movl	-12(%ebp),%eax
	incl	(%eax)
	movl	-12(%ebp),%eax
	decl	4(%eax)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj9
	jmp	Lj10
Lj9:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj11
	jmp	Lj12
Lj11:
	movl	-4(%ebp),%eax
	movb	$24,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj12:
Lj10:
	leave
	ret

.text
	.align 4
.globl	_JCMARKER_EMIT_MARKER$J_COMPRESS_PTR$WORD
_JCMARKER_EMIT_MARKER$J_COMPRESS_PTR$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$255,%edx
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movzwl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT
_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	shrl	$8,%edx
	andl	$255,%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-8(%ebp),%edx
	andl	$255,%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_JCMARKER_EMIT_DQT$J_COMPRESS_PTR$LONGINT$$LONGINT
_JCMARKER_EMIT_DQT$J_COMPRESS_PTR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	call	Lj40
Lj40:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	68(%eax,%edx,4),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj43
	jmp	Lj44
Lj43:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$53,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj44:
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	decl	-24(%ebp)
	.align 2
Lj55:
	incl	-24(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	movw	(%eax,%edx,2),%ax
	cmpw	$255,%ax
	ja	Lj56
	jmp	Lj57
Lj56:
	movl	$1,-20(%ebp)
Lj57:
	cmpl	$63,-24(%ebp)
	jl	Lj55
	movl	-16(%ebp),%eax
	movb	128(%eax),%al
	testb	%al,%al
	je	Lj60
	jmp	Lj61
Lj60:
	movl	-4(%ebp),%eax
	movw	$219,%dx
	call	L_JCMARKER_EMIT_MARKER$J_COMPRESS_PTR$WORD$stub
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj66
	jmp	Lj67
Lj66:
	movl	-4(%ebp),%eax
	movl	$131,%edx
	call	L_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT$stub
	jmp	Lj72
Lj67:
	movl	-4(%ebp),%eax
	movl	$67,%edx
	call	L_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT$stub
Lj72:
	movl	-20(%ebp),%edx
	shll	$4,%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	$0,-24(%ebp)
	decl	-24(%ebp)
	.align 2
Lj83:
	incl	-24(%ebp)
	movl	-16(%ebp),%ecx
	movl	-24(%ebp),%eax
	movl	L_TC_JUTILS_JPEG_NATURAL_ORDER$non_lazy_ptr-Lj40(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	movzwl	(%ecx,%eax,2),%eax
	movl	%eax,-28(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj86
	jmp	Lj87
Lj86:
	movl	-28(%ebp),%edx
	shrl	$8,%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
Lj87:
	movl	-28(%ebp),%edx
	andl	$255,%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	cmpl	$63,-24(%ebp)
	jl	Lj83
	movl	-16(%ebp),%eax
	movb	$1,128(%eax)
Lj61:
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCMARKER_EMIT_DHT$J_COMPRESS_PTR$LONGINT$BOOLEAN
_JCMARKER_EMIT_DHT$J_COMPRESS_PTR$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj102
	jmp	Lj103
Lj102:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	100(%edx,%eax,4),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	addl	$16,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj108
Lj103:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	84(%edx,%eax,4),%eax
	movl	%eax,-16(%ebp)
Lj108:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj111
	jmp	Lj112
Lj111:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$51,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj112:
	movl	-16(%ebp),%eax
	movb	273(%eax),%al
	testb	%al,%al
	je	Lj119
	jmp	Lj120
Lj119:
	movl	-4(%ebp),%eax
	movw	$196,%dx
	call	L_JCMARKER_EMIT_MARKER$J_COMPRESS_PTR$WORD$stub
	movl	$0,-20(%ebp)
	movl	$1,-24(%ebp)
	decl	-24(%ebp)
	.align 2
Lj129:
	incl	-24(%ebp)
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	movzbl	(%edx,%eax,1),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	cmpl	$16,-24(%ebp)
	jl	Lj129
	movl	-20(%ebp),%edx
	addl	$2,%edx
	incl	%edx
	addl	$16,%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	$1,-24(%ebp)
	decl	-24(%ebp)
	.align 2
Lj142:
	incl	-24(%ebp)
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	movzbl	(%edx,%eax,1),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	cmpl	$16,-24(%ebp)
	jl	Lj142
	movl	-20(%ebp),%ebx
	decl	%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj148
	decl	-24(%ebp)
	.align 2
Lj149:
	incl	-24(%ebp)
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	movzbl	17(%edx,%eax,1),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	cmpl	-24(%ebp),%ebx
	jg	Lj149
Lj148:
	movl	-16(%ebp),%eax
	movb	$1,273(%eax)
Lj120:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCMARKER_EMIT_DAC$J_COMPRESS_PTR
_JCMARKER_EMIT_DAC$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_JCMARKER_EMIT_DRI$J_COMPRESS_PTR
_JCMARKER_EMIT_DRI$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	$221,%dx
	call	L_JCMARKER_EMIT_MARKER$J_COMPRESS_PTR$WORD$stub
	movl	-4(%ebp),%eax
	movl	$4,%edx
	call	L_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	184(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_JCMARKER_EMIT_SOF$J_COMPRESS_PTR$WORD
_JCMARKER_EMIT_SOF$J_COMPRESS_PTR$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	-8(%ebp),%dx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_MARKER$J_COMPRESS_PTR$WORD$stub
	movl	-4(%ebp),%eax
	movl	56(%eax),%edx
	imull	$3,%edx
	addl	$2,%edx
	addl	$5,%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	$65535,%eax
	jg	Lj182
	jmp	Lj184
Lj184:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	$65535,%eax
	jg	Lj182
	jmp	Lj183
Lj182:
	movl	-4(%ebp),%eax
	movl	$65535,%ecx
	movb	$42,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj183:
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	32(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	56(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj210
	decl	-12(%ebp)
	.align 2
Lj211:
	incl	-12(%ebp)
	movl	-16(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-16(%ebp),%eax
	movl	8(%eax),%edx
	shll	$4,%edx
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-16(%ebp),%eax
	movl	16(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	addl	$84,-16(%ebp)
	cmpl	-12(%ebp),%ebx
	jg	Lj211
Lj210:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCMARKER_EMIT_SOS$J_COMPRESS_PTR
_JCMARKER_EMIT_SOS$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	$218,%dx
	call	L_JCMARKER_EMIT_MARKER$J_COMPRESS_PTR$WORD$stub
	movl	-4(%ebp),%eax
	movl	224(%eax),%edx
	shll	$1,%edx
	addl	$2,%edx
	incl	%edx
	addl	$3,%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	224(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	224(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj239
	decl	-8(%ebp)
	.align 2
Lj240:
	incl	-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	228(%edx,%eax,4),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-20(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,208(%eax)
	jne	Lj251
	jmp	Lj252
Lj251:
	movl	-4(%ebp),%eax
	movl	296(%eax),%eax
	testl	%eax,%eax
	je	Lj253
	jmp	Lj254
Lj253:
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	304(%eax),%eax
	testl	%eax,%eax
	jne	Lj259
	jmp	Lj258
Lj259:
	movl	-4(%ebp),%eax
	movb	173(%eax),%al
	testb	%al,%al
	je	Lj257
	jmp	Lj258
Lj257:
	movl	$0,-12(%ebp)
Lj258:
	jmp	Lj262
Lj254:
	movl	$0,-12(%ebp)
Lj262:
Lj252:
	movl	-12(%ebp),%edx
	shll	$4,%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj240
Lj239:
	movl	-4(%ebp),%eax
	movl	296(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	300(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	304(%eax),%edx
	shll	$4,%edx
	movl	-4(%ebp),%eax
	movl	308(%eax),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCMARKER_EMIT_JFIF_APP0$J_COMPRESS_PTR
_JCMARKER_EMIT_JFIF_APP0$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	$224,%dx
	call	L_JCMARKER_EMIT_MARKER$J_COMPRESS_PTR$WORD$stub
	movl	-4(%ebp),%eax
	movl	$16,%edx
	call	L_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$74,%edx
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$70,%edx
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$73,%edx
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$70,%edx
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movzbl	193(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movzbl	194(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movzbl	195(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movzwl	196(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movzwl	198(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_JCMARKER_EMIT_ADOBE_APP14$J_COMPRESS_PTR
_JCMARKER_EMIT_ADOBE_APP14$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	$238,%dx
	call	L_JCMARKER_EMIT_MARKER$J_COMPRESS_PTR$WORD$stub
	movl	-4(%ebp),%eax
	movl	$14,%edx
	call	L_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$65,%edx
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$100,%edx
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$111,%edx
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$98,%edx
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$101,%edx
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$100,%edx
	call	L_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movb	60(%eax),%al
	cmpb	$3,%al
	jb	Lj382
	subb	$3,%al
	je	Lj383
	subb	$2,%al
	je	Lj384
	jmp	Lj382
Lj383:
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	jmp	Lj381
Lj384:
	movl	-4(%ebp),%eax
	movl	$2,%edx
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	jmp	Lj381
Lj382:
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
Lj381:
	leave
	ret

.text
	.align 4
.globl	_JCMARKER_WRITE_MARKER_HEADER$J_COMPRESS_PTR$LONGINT$LONGWORD
_JCMARKER_WRITE_MARKER_HEADER$J_COMPRESS_PTR$LONGINT$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$65533,%eax
	ja	Lj399
	jmp	Lj400
Lj399:
	movl	-4(%ebp),%eax
	movb	$11,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj400:
	movw	-8(%ebp),%dx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_MARKER$J_COMPRESS_PTR$WORD$stub
	movl	-12(%ebp),%edx
	addl	$2,%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_JCMARKER_WRITE_MARKER_BYTE$J_COMPRESS_PTR$LONGINT
_JCMARKER_WRITE_MARKER_BYTE$J_COMPRESS_PTR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_JCMARKER_WRITE_FILE_HEADER$J_COMPRESS_PTR
_JCMARKER_WRITE_FILE_HEADER$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	328(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movw	$216,%dx
	call	L_JCMARKER_EMIT_MARKER$J_COMPRESS_PTR$WORD$stub
	movl	-8(%ebp),%eax
	movl	$0,28(%eax)
	movl	-4(%ebp),%eax
	cmpb	$0,192(%eax)
	jne	Lj429
	jmp	Lj430
Lj429:
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_JFIF_APP0$J_COMPRESS_PTR$stub
Lj430:
	movl	-4(%ebp),%eax
	cmpb	$0,200(%eax)
	jne	Lj433
	jmp	Lj434
Lj433:
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_ADOBE_APP14$J_COMPRESS_PTR$stub
Lj434:
	leave
	ret

.text
	.align 4
.globl	_JCMARKER_WRITE_FRAME_HEADER$J_COMPRESS_PTR
_JCMARKER_WRITE_FRAME_HEADER$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj444
	decl	-8(%ebp)
	.align 2
Lj445:
	incl	-8(%ebp)
	movl	-20(%ebp),%eax
	movl	16(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_DQT$J_COMPRESS_PTR$LONGINT$$LONGINT$stub
	movl	-12(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	addl	$84,-20(%ebp)
	cmpl	-8(%ebp),%ebx
	jg	Lj445
Lj444:
	movl	-4(%ebp),%eax
	cmpb	$0,173(%eax)
	jne	Lj452
	jmp	Lj455
Lj455:
	movl	-4(%ebp),%eax
	cmpb	$0,208(%eax)
	jne	Lj452
	jmp	Lj454
Lj454:
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	cmpl	$8,%eax
	jne	Lj452
	jmp	Lj453
Lj452:
	movb	$0,-13(%ebp)
	jmp	Lj458
Lj453:
	movb	$1,-13(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	decl	%eax
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%eax
	jl	Lj464
	decl	-8(%ebp)
	.align 2
Lj465:
	incl	-8(%ebp)
	movl	-20(%ebp),%edx
	movl	20(%edx),%edx
	cmpl	$1,%edx
	jg	Lj466
	jmp	Lj468
Lj468:
	movl	-20(%ebp),%edx
	movl	24(%edx),%edx
	cmpl	$1,%edx
	jg	Lj466
	jmp	Lj467
Lj466:
	movb	$0,-13(%ebp)
Lj467:
	addl	$84,-20(%ebp)
	cmpl	-8(%ebp),%eax
	jg	Lj465
Lj464:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj473
	jmp	Lj472
Lj473:
	cmpb	$0,-13(%ebp)
	jne	Lj471
	jmp	Lj472
Lj471:
	movb	$0,-13(%ebp)
Lj472:
Lj458:
	movl	-4(%ebp),%eax
	cmpb	$0,173(%eax)
	jne	Lj476
	jmp	Lj477
Lj476:
	movl	-4(%ebp),%eax
	movw	$201,%dx
	call	L_JCMARKER_EMIT_SOF$J_COMPRESS_PTR$WORD$stub
	jmp	Lj482
Lj477:
	movl	-4(%ebp),%eax
	cmpb	$0,208(%eax)
	jne	Lj483
	jmp	Lj484
Lj483:
	movl	-4(%ebp),%eax
	movw	$194,%dx
	call	L_JCMARKER_EMIT_SOF$J_COMPRESS_PTR$WORD$stub
	jmp	Lj489
Lj484:
	cmpb	$0,-13(%ebp)
	jne	Lj490
	jmp	Lj491
Lj490:
	movl	-4(%ebp),%eax
	movw	$192,%dx
	call	L_JCMARKER_EMIT_SOF$J_COMPRESS_PTR$WORD$stub
	jmp	Lj496
Lj491:
	movl	-4(%ebp),%eax
	movw	$193,%dx
	call	L_JCMARKER_EMIT_SOF$J_COMPRESS_PTR$WORD$stub
Lj496:
Lj489:
Lj482:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCMARKER_WRITE_SCAN_HEADER$J_COMPRESS_PTR
_JCMARKER_WRITE_SCAN_HEADER$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	328(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,173(%eax)
	jne	Lj505
	jmp	Lj506
Lj505:
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_DAC$J_COMPRESS_PTR$stub
	jmp	Lj509
Lj506:
	movl	-4(%ebp),%eax
	movl	224(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj511
	decl	-12(%ebp)
	.align 2
Lj512:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	228(%eax,%edx,4),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,208(%eax)
	jne	Lj515
	jmp	Lj516
Lj515:
	movl	-4(%ebp),%eax
	movl	296(%eax),%eax
	testl	%eax,%eax
	je	Lj517
	jmp	Lj518
Lj517:
	movl	-4(%ebp),%eax
	movl	304(%eax),%eax
	testl	%eax,%eax
	je	Lj519
	jmp	Lj520
Lj519:
	movl	-16(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	L_JCMARKER_EMIT_DHT$J_COMPRESS_PTR$LONGINT$BOOLEAN$stub
Lj520:
	jmp	Lj527
Lj518:
	movl	-16(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movb	$1,%cl
	call	L_JCMARKER_EMIT_DHT$J_COMPRESS_PTR$LONGINT$BOOLEAN$stub
Lj527:
	jmp	Lj534
Lj516:
	movl	-16(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	L_JCMARKER_EMIT_DHT$J_COMPRESS_PTR$LONGINT$BOOLEAN$stub
	movl	-16(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movb	$1,%cl
	call	L_JCMARKER_EMIT_DHT$J_COMPRESS_PTR$LONGINT$BOOLEAN$stub
Lj534:
	cmpl	-12(%ebp),%ebx
	jg	Lj512
Lj511:
Lj509:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	184(%eax),%eax
	cmpl	28(%edx),%eax
	jne	Lj547
	jmp	Lj548
Lj547:
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_DRI$J_COMPRESS_PTR$stub
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	movl	%eax,28(%edx)
Lj548:
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_SOS$J_COMPRESS_PTR$stub
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCMARKER_WRITE_FILE_TRAILER$J_COMPRESS_PTR
_JCMARKER_WRITE_FILE_TRAILER$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	$217,%dx
	call	L_JCMARKER_EMIT_MARKER$J_COMPRESS_PTR$WORD$stub
	leave
	ret

.text
	.align 4
.globl	_JCMARKER_WRITE_TABLES_ONLY$J_COMPRESS_PTR
_JCMARKER_WRITE_TABLES_ONLY$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	$216,%dx
	call	L_JCMARKER_EMIT_MARKER$J_COMPRESS_PTR$WORD$stub
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.align 2
Lj569:
	incl	-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	68(%edx,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj570
	jmp	Lj571
Lj570:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_EMIT_DQT$J_COMPRESS_PTR$LONGINT$$LONGINT$stub
Lj571:
	cmpl	$3,-8(%ebp)
	jl	Lj569
	movl	-4(%ebp),%eax
	movb	173(%eax),%al
	testb	%al,%al
	je	Lj576
	jmp	Lj577
Lj576:
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.align 2
Lj580:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	84(%eax,%edx,4),%eax
	testl	%eax,%eax
	jne	Lj581
	jmp	Lj582
Lj581:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	L_JCMARKER_EMIT_DHT$J_COMPRESS_PTR$LONGINT$BOOLEAN$stub
Lj582:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	100(%eax,%edx,4),%eax
	testl	%eax,%eax
	jne	Lj589
	jmp	Lj590
Lj589:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$1,%cl
	call	L_JCMARKER_EMIT_DHT$J_COMPRESS_PTR$LONGINT$BOOLEAN$stub
Lj590:
	cmpl	$3,-8(%ebp)
	jl	Lj580
Lj577:
	movl	-4(%ebp),%eax
	movw	$217,%dx
	call	L_JCMARKER_EMIT_MARKER$J_COMPRESS_PTR$WORD$stub
	leave
	ret

.text
	.align 4
.globl	_JCMARKER_JINIT_MARKER_WRITER$J_COMPRESS_PTR
_JCMARKER_JINIT_MARKER_WRITER$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj602
Lj602:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$32,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,328(%eax)
	movl	-8(%ebp),%edx
	movl	L_JCMARKER_WRITE_FILE_HEADER$J_COMPRESS_PTR$non_lazy_ptr-Lj602(%esi),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	L_JCMARKER_WRITE_FRAME_HEADER$J_COMPRESS_PTR$non_lazy_ptr-Lj602(%esi),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	L_JCMARKER_WRITE_SCAN_HEADER$J_COMPRESS_PTR$non_lazy_ptr-Lj602(%esi),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	L_JCMARKER_WRITE_FILE_TRAILER$J_COMPRESS_PTR$non_lazy_ptr-Lj602(%esi),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%edx
	movl	L_JCMARKER_WRITE_TABLES_ONLY$J_COMPRESS_PTR$non_lazy_ptr-Lj602(%esi),%eax
	movl	%eax,16(%edx)
	movl	-8(%ebp),%edx
	movl	L_JCMARKER_WRITE_MARKER_HEADER$J_COMPRESS_PTR$LONGINT$LONGWORD$non_lazy_ptr-Lj602(%esi),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%edx
	movl	L_JCMARKER_WRITE_MARKER_BYTE$J_COMPRESS_PTR$LONGINT$non_lazy_ptr-Lj602(%esi),%eax
	movl	%eax,24(%edx)
	movl	-8(%ebp),%eax
	movl	$0,28(%eax)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JCMARKER
_THREADVARLIST_JCMARKER:
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

L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT$stub:
.indirect_symbol _JCMARKER_EMIT_BYTE$J_COMPRESS_PTR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub:
.indirect_symbol _JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMARKER_EMIT_MARKER$J_COMPRESS_PTR$WORD$stub:
.indirect_symbol _JCMARKER_EMIT_MARKER$J_COMPRESS_PTR$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT$stub:
.indirect_symbol _JCMARKER_EMIT_2BYTES$J_COMPRESS_PTR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMARKER_EMIT_JFIF_APP0$J_COMPRESS_PTR$stub:
.indirect_symbol _JCMARKER_EMIT_JFIF_APP0$J_COMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMARKER_EMIT_ADOBE_APP14$J_COMPRESS_PTR$stub:
.indirect_symbol _JCMARKER_EMIT_ADOBE_APP14$J_COMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMARKER_EMIT_DQT$J_COMPRESS_PTR$LONGINT$$LONGINT$stub:
.indirect_symbol _JCMARKER_EMIT_DQT$J_COMPRESS_PTR$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMARKER_EMIT_SOF$J_COMPRESS_PTR$WORD$stub:
.indirect_symbol _JCMARKER_EMIT_SOF$J_COMPRESS_PTR$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMARKER_EMIT_DAC$J_COMPRESS_PTR$stub:
.indirect_symbol _JCMARKER_EMIT_DAC$J_COMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMARKER_EMIT_DHT$J_COMPRESS_PTR$LONGINT$BOOLEAN$stub:
.indirect_symbol _JCMARKER_EMIT_DHT$J_COMPRESS_PTR$LONGINT$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMARKER_EMIT_DRI$J_COMPRESS_PTR$stub:
.indirect_symbol _JCMARKER_EMIT_DRI$J_COMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMARKER_EMIT_SOS$J_COMPRESS_PTR$stub:
.indirect_symbol _JCMARKER_EMIT_SOS$J_COMPRESS_PTR
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
.globl	_INIT_JCMARKER_MY_MARKER_PTR
_INIT_JCMARKER_MY_MARKER_PTR:
	.byte	0
	.ascii	"\015my_marker_ptr"

.const_data
	.align 2
.globl	_RTTI_JCMARKER_MY_MARKER_PTR
_RTTI_JCMARKER_MY_MARKER_PTR:
	.byte	0
	.ascii	"\015my_marker_ptr"

.const_data
	.align 2
.globl	_INIT_JCMARKER_MY_MARKER_WRITER
_INIT_JCMARKER_MY_MARKER_WRITER:
	.byte	13,16
	.ascii	"my_marker_writer"
	.long	32,0

.const_data
	.align 2
.globl	_RTTI_JCMARKER_MY_MARKER_WRITER
_RTTI_JCMARKER_MY_MARKER_WRITER:
	.byte	13,16
	.ascii	"my_marker_writer"
	.long	32,2
	.long	_RTTI_JPEGLIB_JPEG_MARKER_WRITER
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	28
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
L_TC_JUTILS_JPEG_NATURAL_ORDER$non_lazy_ptr:
.indirect_symbol _TC_JUTILS_JPEG_NATURAL_ORDER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCMARKER_WRITE_FILE_HEADER$J_COMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JCMARKER_WRITE_FILE_HEADER$J_COMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCMARKER_WRITE_FRAME_HEADER$J_COMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JCMARKER_WRITE_FRAME_HEADER$J_COMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCMARKER_WRITE_SCAN_HEADER$J_COMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JCMARKER_WRITE_SCAN_HEADER$J_COMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCMARKER_WRITE_FILE_TRAILER$J_COMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JCMARKER_WRITE_FILE_TRAILER$J_COMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCMARKER_WRITE_TABLES_ONLY$J_COMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JCMARKER_WRITE_TABLES_ONLY$J_COMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCMARKER_WRITE_MARKER_HEADER$J_COMPRESS_PTR$LONGINT$LONGWORD$non_lazy_ptr:
.indirect_symbol _JCMARKER_WRITE_MARKER_HEADER$J_COMPRESS_PTR$LONGINT$LONGWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCMARKER_WRITE_MARKER_BYTE$J_COMPRESS_PTR$LONGINT$non_lazy_ptr:
.indirect_symbol _JCMARKER_WRITE_MARKER_BYTE$J_COMPRESS_PTR$LONGINT
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

