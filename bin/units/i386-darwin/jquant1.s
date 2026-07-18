# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JQUANT1_SELECT_NCOLORS$J_DECOMPRESS_PTR$array_of_LONGINT$$LONGINT
_JQUANT1_SELECT_NCOLORS$J_DECOMPRESS_PTR$array_of_LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$1,-32(%ebp)
	.align 2
Lj11:
	incl	-32(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-20(%ebp),%eax
	decl	%eax
	movl	$1,-36(%ebp)
	cmpl	-36(%ebp),%eax
	jl	Lj17
	decl	-36(%ebp)
	.align 2
Lj18:
	incl	-36(%ebp)
	movl	-48(%ebp),%edx
	movl	-32(%ebp),%ecx
	imull	%ecx,%edx
	movl	%edx,-48(%ebp)
	cmpl	-36(%ebp),%eax
	jg	Lj18
Lj17:
	movl	-48(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jg	Lj13
	jmp	Lj11
Lj13:
	decl	-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$2,%eax
	jl	Lj21
	jmp	Lj22
Lj21:
	movl	-48(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$57,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj22:
	movl	$1,-28(%ebp)
	movl	-20(%ebp),%eax
	decl	%eax
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%eax
	jl	Lj32
	decl	-36(%ebp)
	.align 2
Lj33:
	incl	-36(%ebp)
	movl	-8(%ebp),%ecx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edx
	movl	%edx,(%ecx,%esi,4)
	movl	-28(%ebp),%ecx
	movl	-32(%ebp),%edx
	imull	%edx,%ecx
	movl	%ecx,-28(%ebp)
	cmpl	-36(%ebp),%eax
	jg	Lj33
Lj32:
	.align 2
Lj38:
	movb	$0,-41(%ebp)
	movl	-20(%ebp),%ecx
	decl	%ecx
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%ecx
	jl	Lj44
	decl	-36(%ebp)
	.align 2
Lj45:
	incl	-36(%ebp)
	movl	-4(%ebp),%eax
	movb	41(%eax),%al
	cmpb	$2,%al
	je	Lj46
	jmp	Lj47
Lj46:
	movl	-36(%ebp),%edx
	movl	L_TC_JQUANT1_SELECT_NCOLORS$crc985A08F1_RGB_ORDER$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax,%edx,4),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj50
Lj47:
	movl	-36(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj50:
	movl	-8(%ebp),%edi
	movl	-40(%ebp),%esi
	movl	-28(%ebp),%eax
	cltd
	idivl	(%edi,%esi,4)
	movl	%eax,-48(%ebp)
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	incl	%edx
	movl	-48(%ebp),%eax
	imull	%eax,%edx
	movl	%edx,-48(%ebp)
	movl	-48(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jg	Lj57
	jmp	Lj58
Lj57:
	jmp	Lj44
Lj58:
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	incl	(%edx,%eax,4)
	movl	-48(%ebp),%eax
	movl	%eax,-28(%ebp)
	movb	$1,-41(%ebp)
	cmpl	-36(%ebp),%ecx
	jg	Lj45
Lj44:
	cmpb	$0,-41(%ebp)
	jne	Lj38
	jmp	Lj40
Lj40:
	movl	-28(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JQUANT1_OUTPUT_VALUE$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT$$LONGINT
_JQUANT1_OUTPUT_VALUE$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	imull	$255,%eax
	movl	8(%ebp),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%ecx
	sarl	$1,%ecx
	addl	%ecx,%eax
	cltd
	idivl	8(%ebp)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JQUANT1_LARGEST_INPUT_VALUE$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT$$LONGINT
_JQUANT1_LARGEST_INPUT_VALUE$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	shll	$1,%eax
	incl	%eax
	imull	$255,%eax
	movl	8(%ebp),%edx
	addl	%edx,%eax
	movl	8(%ebp),%ecx
	shll	$1,%ecx
	cltd
	idivl	%ecx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JQUANT1_CREATE_COLORMAP$J_DECOMPRESS_PTR
_JQUANT1_CREATE_COLORMAP$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leal	32(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	call	L_JQUANT1_SELECT_NCOLORS$J_DECOMPRESS_PTR$array_of_LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	8(%ebx),%ebx
	call	*%ebx
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj98
	decl	-20(%ebp)
	.align 2
Lj99:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	32(%eax,%edx,4),%eax
	movl	%eax,-32(%ebp)
	movl	-40(%ebp),%eax
	cltd
	idivl	-32(%ebp)
	movl	%eax,-36(%ebp)
	movl	-32(%ebp),%esi
	decl	%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj105
	decl	-24(%ebp)
	.align 2
Lj106:
	incl	-24(%ebp)
	movl	-32(%ebp),%eax
	decl	%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JQUANT1_OUTPUT_VALUE$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-48(%ebp)
	movl	-24(%ebp),%eax
	movl	-36(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,-44(%ebp)
	jmp	Lj120
	.align 2
Lj119:
	movl	-36(%ebp),%edx
	decl	%edx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%edx
	jl	Lj123
	decl	-28(%ebp)
	.align 2
Lj124:
	incl	-28(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%eax,%ecx,4),%edi
	movl	-44(%ebp),%ecx
	movl	-28(%ebp),%eax
	addl	%eax,%ecx
	movb	-48(%ebp),%al
	movb	%al,(%edi,%ecx,1)
	cmpl	-28(%ebp),%edx
	jg	Lj124
Lj123:
	movl	-40(%ebp),%eax
	addl	%eax,-44(%ebp)
Lj120:
	movl	-44(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jl	Lj119
	jmp	Lj121
Lj121:
	cmpl	-24(%ebp),%esi
	jg	Lj106
Lj105:
	movl	-36(%ebp),%eax
	movl	%eax,-40(%ebp)
	cmpl	-20(%ebp),%ebx
	jg	Lj99
Lj98:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JQUANT1_CREATE_COLORINDEX$J_DECOMPRESS_PTR
_JQUANT1_CREATE_COLORINDEX$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	66(%eax),%al
	cmpb	$1,%al
	je	Lj137
	jmp	Lj138
Lj137:
	movl	$510,-44(%ebp)
	movl	-8(%ebp),%eax
	movb	$1,28(%eax)
	jmp	Lj143
Lj138:
	movl	$0,-44(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,28(%eax)
Lj143:
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	%eax,(%esp)
	movl	-44(%ebp),%ecx
	addl	$256,%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	8(%ebx),%ebx
	call	*%ebx
	movl	-8(%ebp),%edx
	movl	%eax,24(%edx)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj161
	decl	-20(%ebp)
	.align 2
Lj162:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	32(%eax,%edx,4),%eax
	movl	%eax,-32(%ebp)
	movl	-36(%ebp),%eax
	cltd
	idivl	-32(%ebp)
	movl	%eax,-36(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	jne	Lj167
	jmp	Lj168
Lj167:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-20(%ebp),%edx
	addl	$255,(%eax,%edx,4)
Lj168:
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-40(%ebp)
	movl	-32(%ebp),%eax
	decl	%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	L_JQUANT1_LARGEST_INPUT_VALUE$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	$0,-24(%ebp)
	decl	-24(%ebp)
	.align 2
Lj185:
	incl	-24(%ebp)
	jmp	Lj187
	.align 2
Lj186:
	incl	-40(%ebp)
	movl	-32(%ebp),%eax
	decl	%eax
	movl	%eax,(%esp)
	movl	-40(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JQUANT1_LARGEST_INPUT_VALUE$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-28(%ebp)
Lj187:
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jg	Lj186
	jmp	Lj188
Lj188:
	movl	-40(%ebp),%eax
	movl	-36(%ebp),%edx
	imull	%edx,%eax
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	cmpl	$255,-24(%ebp)
	jl	Lj185
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	jne	Lj201
	jmp	Lj202
Lj201:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	subl	$255,-16(%ebp)
	movl	$1,-24(%ebp)
	decl	-24(%ebp)
	.align 2
Lj207:
	incl	-24(%ebp)
	movl	-16(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	$255,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%ecx,%edx,1)
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%eax
	addl	$255,%eax
	movl	-12(%ebp),%edx
	movb	255(%edx),%dl
	movb	%dl,(%ecx,%eax,1)
	cmpl	$255,-24(%ebp)
	jl	Lj207
Lj202:
	cmpl	-20(%ebp),%ebx
	jg	Lj162
Lj161:
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JQUANT1_MAKE_ODITHER_ARRAY$J_DECOMPRESS_PTR$LONGINT$$ODITHER_MATRIX_PTR
_JQUANT1_MAKE_ODITHER_ARRAY$J_DECOMPRESS_PTR$LONGINT$$ODITHER_MATRIX_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	call	Lj213
Lj213:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$1024,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	shll	$9,%eax
	movl	%eax,-32(%ebp)
	movl	$0,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj226:
	incl	-20(%ebp)
	movl	$0,-24(%ebp)
	decl	-24(%ebp)
	.align 2
Lj229:
	incl	-24(%ebp)
	movl	-20(%ebp),%eax
	shll	$4,%eax
	movl	-24(%ebp),%edx
	movl	L_TC_JQUANT1_BASE_DITHER_MATRIX$non_lazy_ptr-Lj213(%esi),%ecx
	leal	(%eax,%ecx),%ecx
	movzbl	(%ecx,%edx,1),%eax
	shll	$1,%eax
	movl	$255,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	imull	$255,%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj232
	jmp	Lj233
Lj232:
	movl	-28(%ebp),%eax
	negl	%eax
	cltd
	idivl	-32(%ebp)
	negl	%eax
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	shll	$6,%edx
	movl	-24(%ebp),%ebx
	leal	(%ecx,%edx),%edx
	movl	%eax,(%edx,%ebx,4)
	jmp	Lj236
Lj233:
	movl	-28(%ebp),%eax
	cltd
	idivl	-32(%ebp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	shll	$6,%edx
	movl	-24(%ebp),%ebx
	leal	(%ecx,%edx),%edx
	movl	%eax,(%edx,%ebx,4)
Lj236:
	cmpl	$15,-24(%ebp)
	jl	Lj229
	cmpl	$15,-20(%ebp)
	jl	Lj226
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JQUANT1_CREATE_ODITHER_TABLES$J_DECOMPRESS_PTR
_JQUANT1_CREATE_ODITHER_TABLES$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj246
	decl	-16(%ebp)
	.align 2
Lj247:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	32(%eax,%edx,4),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-12(%ebp)
	movl	-16(%ebp),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj253
	decl	-20(%ebp)
	.align 2
Lj254:
	incl	-20(%ebp)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	32(%edx,%ecx,4),%edx
	cmpl	-24(%ebp),%edx
	je	Lj255
	jmp	Lj256
Lj255:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	52(%edx,%ecx,4),%edx
	movl	%edx,-12(%ebp)
	jmp	Lj253
Lj256:
	cmpl	-20(%ebp),%eax
	jg	Lj254
Lj253:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj259
	jmp	Lj260
Lj259:
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JQUANT1_MAKE_ODITHER_ARRAY$J_DECOMPRESS_PTR$LONGINT$$ODITHER_MATRIX_PTR$stub
	movl	%eax,-12(%ebp)
Lj260:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	%ecx,52(%eax,%edx,4)
	cmpl	-16(%ebp),%ebx
	jg	Lj247
Lj246:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JQUANT1_COLOR_QUANTIZE$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT
_JQUANT1_COLOR_QUANTIZE$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	8(%ebp),%eax
	decl	%eax
	movl	$0,-40(%ebp)
	cmpl	-40(%ebp),%eax
	jl	Lj280
	decl	-40(%ebp)
	.align 2
Lj281:
	incl	-40(%ebp)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-32(%ebp)
	movl	-12(%ebp),%edx
	movl	-40(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-36(%ebp)
	movl	-48(%ebp),%edx
	decl	%edx
	movl	%edx,-44(%ebp)
	cmpl	$0,-44(%ebp)
	jb	Lj287
	incl	-44(%ebp)
	.align 2
Lj288:
	decl	-44(%ebp)
	movl	$0,-24(%ebp)
	movl	-52(%ebp),%edx
	decl	%edx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%edx
	jl	Lj292
	decl	-28(%ebp)
	.align 2
Lj293:
	incl	-28(%ebp)
	movl	-20(%ebp),%ebx
	movl	-28(%ebp),%ecx
	movl	(%ebx,%ecx,4),%ebx
	movl	-32(%ebp),%ecx
	movzbl	(%ecx),%ecx
	movzbl	(%ebx,%ecx,1),%ecx
	addl	%ecx,-24(%ebp)
	incl	-32(%ebp)
	cmpl	-28(%ebp),%edx
	jg	Lj293
Lj292:
	movl	-36(%ebp),%edx
	movb	-24(%ebp),%cl
	movb	%cl,(%edx)
	incl	-36(%ebp)
	cmpl	$0,-44(%ebp)
	ja	Lj288
Lj287:
	cmpl	-40(%ebp),%eax
	jg	Lj281
Lj280:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JQUANT1_COLOR_QUANTIZE3$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT
_JQUANT1_COLOR_QUANTIZE3$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	8(%ebp),%eax
	decl	%eax
	movl	$0,-44(%ebp)
	cmpl	-44(%ebp),%eax
	jl	Lj309
	decl	-44(%ebp)
	.align 2
Lj310:
	incl	-44(%ebp)
	movl	-8(%ebp),%edx
	movl	-44(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-24(%ebp)
	movl	-12(%ebp),%edx
	movl	-44(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-28(%ebp)
	movl	-52(%ebp),%edx
	decl	%edx
	movl	%edx,-48(%ebp)
	cmpl	$0,-48(%ebp)
	jb	Lj316
	incl	-48(%ebp)
	.align 2
Lj317:
	decl	-48(%ebp)
	movl	-32(%ebp),%ecx
	movl	-24(%ebp),%edx
	movzbl	(%edx),%edx
	movzbl	(%ecx,%edx,1),%edx
	movl	%edx,-20(%ebp)
	incl	-24(%ebp)
	movl	-36(%ebp),%ecx
	movl	-24(%ebp),%edx
	movzbl	(%edx),%edx
	movzbl	(%ecx,%edx,1),%edx
	addl	%edx,-20(%ebp)
	incl	-24(%ebp)
	movl	-40(%ebp),%ecx
	movl	-24(%ebp),%edx
	movzbl	(%edx),%edx
	movzbl	(%ecx,%edx,1),%edx
	addl	%edx,-20(%ebp)
	incl	-24(%ebp)
	movl	-28(%ebp),%edx
	movb	-20(%ebp),%cl
	movb	%cl,(%edx)
	incl	-28(%ebp)
	cmpl	$0,-48(%ebp)
	ja	Lj317
Lj316:
	cmpl	-44(%ebp),%eax
	jg	Lj310
Lj309:
	leave
	ret

.text
	.align 4
.globl	_JQUANT1_QUANTIZE_ORD_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT
_JQUANT1_QUANTIZE_ORD_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	cmpb	$0,28(%eax)
	jne	Lj330
	jmp	Lj331
Lj330:
	movl	$255,-64(%ebp)
	jmp	Lj334
Lj331:
	movl	$0,-64(%ebp)
Lj334:
	movl	8(%ebp),%ebx
	decl	%ebx
	movl	$0,-52(%ebp)
	cmpl	-52(%ebp),%ebx
	jl	Lj338
	decl	-52(%ebp)
	.align 2
Lj339:
	incl	-52(%ebp)
	movl	-12(%ebp),%edx
	movl	-52(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	-60(%ebp),%edx
	call	L_JUTILS_JZERO_FAR$POINTER$LONGINT$stub
	movl	-16(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-44(%ebp),%eax
	decl	%eax
	movl	$0,-48(%ebp)
	cmpl	-48(%ebp),%eax
	jl	Lj347
	decl	-48(%ebp)
	.align 2
Lj348:
	incl	-48(%ebp)
	movl	-8(%ebp),%ecx
	movl	-52(%ebp),%edx
	movl	(%ecx,%edx,4),%ecx
	movl	-48(%ebp),%edx
	leal	(%ecx,%edx,1),%edx
	movl	%edx,-20(%ebp)
	movl	-12(%ebp),%edx
	movl	-52(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-24(%ebp)
	movl	-16(%ebp),%edx
	movl	24(%edx),%edx
	movl	-48(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-28(%ebp)
	movl	-64(%ebp),%edx
	subl	%edx,-28(%ebp)
	movl	-16(%ebp),%edx
	movl	-48(%ebp),%ecx
	movl	52(%edx,%ecx,4),%ecx
	movl	-36(%ebp),%edx
	shll	$6,%edx
	leal	(%ecx,%edx),%edx
	movl	%edx,-32(%ebp)
	movl	$0,-40(%ebp)
	movl	-60(%ebp),%edx
	decl	%edx
	movl	%edx,-56(%ebp)
	cmpl	$0,-56(%ebp)
	jb	Lj360
	incl	-56(%ebp)
	.align 2
Lj361:
	decl	-56(%ebp)
	movl	-28(%ebp),%ecx
	movl	-20(%ebp),%edx
	movzbl	(%edx),%edx
	movl	-64(%ebp),%esi
	addl	%esi,%edx
	movl	-32(%ebp),%edi
	movl	-40(%ebp),%esi
	movl	(%edi,%esi,4),%esi
	addl	%esi,%edx
	movl	-24(%ebp),%esi
	movb	(%ecx,%edx,1),%dl
	addb	%dl,(%esi)
	incl	-24(%ebp)
	movl	-44(%ebp),%edx
	addl	%edx,-20(%ebp)
	movl	-40(%ebp),%edx
	incl	%edx
	andl	$15,%edx
	movl	%edx,-40(%ebp)
	cmpl	$0,-56(%ebp)
	ja	Lj361
Lj360:
	cmpl	-48(%ebp),%eax
	jg	Lj348
Lj347:
	movl	-36(%ebp),%eax
	incl	%eax
	andl	$15,%eax
	movl	%eax,-36(%ebp)
	movl	-16(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,48(%eax)
	cmpl	-52(%ebp),%ebx
	jg	Lj339
Lj338:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JQUANT1_QUANTIZE3_ORD_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT
_JQUANT1_QUANTIZE3_ORD_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-84(%ebp)
	movl	%esi,-80(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-72(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	cmpb	$0,28(%eax)
	jne	Lj380
	jmp	Lj381
Lj380:
	movl	$255,-76(%ebp)
	jmp	Lj384
Lj381:
	movl	$0,-76(%ebp)
Lj384:
	movl	-76(%ebp),%eax
	subl	%eax,-32(%ebp)
	movl	-76(%ebp),%eax
	subl	%eax,-36(%ebp)
	movl	-76(%ebp),%eax
	subl	%eax,-40(%ebp)
	movl	8(%ebp),%eax
	decl	%eax
	movl	$0,-64(%ebp)
	cmpl	-64(%ebp),%eax
	jl	Lj388
	decl	-64(%ebp)
	.align 2
Lj389:
	incl	-64(%ebp)
	movl	-16(%ebp),%edx
	movl	48(%edx),%edx
	movl	%edx,-56(%ebp)
	movl	-8(%ebp),%edx
	movl	-64(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-24(%ebp)
	movl	-12(%ebp),%ecx
	movl	-64(%ebp),%edx
	movl	(%ecx,%edx,4),%edx
	movl	%edx,-28(%ebp)
	movl	-16(%ebp),%edx
	movl	52(%edx),%ecx
	movl	-56(%ebp),%edx
	shll	$6,%edx
	leal	(%ecx,%edx),%edx
	movl	%edx,-44(%ebp)
	movl	-16(%ebp),%edx
	movl	56(%edx),%ecx
	movl	-56(%ebp),%edx
	shll	$6,%edx
	leal	(%ecx,%edx),%edx
	movl	%edx,-48(%ebp)
	movl	-16(%ebp),%edx
	movl	60(%edx),%ecx
	movl	-56(%ebp),%edx
	shll	$6,%edx
	leal	(%ecx,%edx),%edx
	movl	%edx,-52(%ebp)
	movl	$0,-60(%ebp)
	movl	-72(%ebp),%edx
	decl	%edx
	movl	%edx,-68(%ebp)
	cmpl	$0,-68(%ebp)
	jb	Lj405
	incl	-68(%ebp)
	.align 2
Lj406:
	decl	-68(%ebp)
	movl	-32(%ebp),%ebx
	movl	-24(%ebp),%edx
	movzbl	(%edx),%edx
	movl	-76(%ebp),%ecx
	addl	%ecx,%edx
	movl	-44(%ebp),%ecx
	movl	-60(%ebp),%esi
	movl	(%ecx,%esi,4),%ecx
	addl	%ecx,%edx
	movzbl	(%ebx,%edx,1),%edx
	movl	%edx,-20(%ebp)
	incl	-24(%ebp)
	movl	-36(%ebp),%ecx
	movl	-24(%ebp),%edx
	movzbl	(%edx),%edx
	movl	-76(%ebp),%ebx
	addl	%ebx,%edx
	movl	-48(%ebp),%esi
	movl	-60(%ebp),%ebx
	movl	(%esi,%ebx,4),%ebx
	addl	%ebx,%edx
	movzbl	(%ecx,%edx,1),%edx
	addl	%edx,-20(%ebp)
	incl	-24(%ebp)
	movl	-40(%ebp),%ebx
	movl	-24(%ebp),%edx
	movzbl	(%edx),%edx
	movl	-76(%ebp),%ecx
	addl	%ecx,%edx
	movl	-52(%ebp),%esi
	movl	-60(%ebp),%ecx
	movl	(%esi,%ecx,4),%ecx
	addl	%ecx,%edx
	movzbl	(%ebx,%edx,1),%edx
	addl	%edx,-20(%ebp)
	incl	-24(%ebp)
	movl	-28(%ebp),%edx
	movb	-20(%ebp),%cl
	movb	%cl,(%edx)
	incl	-28(%ebp)
	movl	-60(%ebp),%edx
	incl	%edx
	andl	$15,%edx
	movl	%edx,-60(%ebp)
	cmpl	$0,-68(%ebp)
	ja	Lj406
Lj405:
	movl	-56(%ebp),%edx
	incl	%edx
	andl	$15,%edx
	movl	%edx,-56(%ebp)
	movl	-16(%ebp),%ecx
	movl	-56(%ebp),%edx
	movl	%edx,48(%ecx)
	cmpl	-64(%ebp),%eax
	jg	Lj389
Lj388:
	movl	-84(%ebp),%ebx
	movl	-80(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JQUANT1_QUANTIZE_FS_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT
_JQUANT1_QUANTIZE_FS_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-92(%ebp)
	movl	-4(%ebp),%eax
	movl	272(%eax),%eax
	movl	%eax,-96(%ebp)
	movl	8(%ebp),%ebx
	decl	%ebx
	movl	$0,-84(%ebp)
	cmpl	-84(%ebp),%ebx
	jl	Lj428
	decl	-84(%ebp)
	.align 2
Lj429:
	incl	-84(%ebp)
	movl	-12(%ebp),%eax
	movl	-84(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	-92(%ebp),%edx
	call	L_JUTILS_JZERO_FAR$POINTER$LONGINT$stub
	movl	-68(%ebp),%esi
	decl	%esi
	movl	$0,-80(%ebp)
	cmpl	-80(%ebp),%esi
	jl	Lj435
	decl	-80(%ebp)
	.align 2
Lj436:
	incl	-80(%ebp)
	movl	-8(%ebp),%edx
	movl	-84(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	-80(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%eax
	movl	-84(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-52(%ebp)
	movl	-16(%ebp),%edx
	movl	-80(%ebp),%eax
	movl	68(%edx,%eax,4),%eax
	movl	%eax,-44(%ebp)
	movl	-16(%ebp),%eax
	cmpb	$0,84(%eax)
	jne	Lj443
	jmp	Lj444
Lj443:
	movl	-68(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-92(%ebp),%edx
	movl	$0,%eax
	subl	$1,%edx
	sbbl	$0,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	addl	%eax,-48(%ebp)
	movl	-92(%ebp),%eax
	decl	%eax
	addl	%eax,-52(%ebp)
	movl	$-1,-72(%ebp)
	movl	-68(%ebp),%eax
	negl	%eax
	movl	%eax,-76(%ebp)
	movl	-92(%ebp),%eax
	incl	%eax
	shll	$2,%eax
	addl	%eax,-44(%ebp)
	jmp	Lj455
Lj444:
	movl	$1,-72(%ebp)
	movl	-68(%ebp),%eax
	movl	%eax,-76(%ebp)
Lj455:
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	-80(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-56(%ebp)
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	-80(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-60(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-28(%ebp)
	movl	-92(%ebp),%eax
	decl	%eax
	movl	%eax,-88(%ebp)
	cmpl	$0,-88(%ebp)
	jb	Lj471
	incl	-88(%ebp)
	.align 2
Lj472:
	decl	-88(%ebp)
	movl	-44(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-72(%ebp),%eax
	shll	$2,%eax
	addl	%eax,-44(%ebp)
	movl	-44(%ebp),%eax
	movl	(%eax),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	addl	$8,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$15,%edx
	addl	%edx,%eax
	sarl	$4,%eax
	movl	%eax,-20(%ebp)
	movl	-48(%ebp),%eax
	movzbl	(%eax),%eax
	addl	%eax,-20(%ebp)
	movl	-96(%ebp),%eax
	movl	-20(%ebp),%edx
	movzbl	256(%eax,%edx,1),%eax
	movl	%eax,-20(%ebp)
	movl	-56(%ebp),%edx
	movl	-20(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	movl	%eax,-64(%ebp)
	movl	-52(%ebp),%edx
	movb	-64(%ebp),%al
	addb	%al,(%edx)
	movl	-60(%ebp),%eax
	movl	-64(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	subl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-20(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	addl	%eax,-20(%ebp)
	movl	-28(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	-40(%ebp),%eax
	movl	%edx,(%eax)
	movl	-36(%ebp),%eax
	addl	%eax,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-28(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-36(%ebp),%eax
	addl	%eax,-20(%ebp)
	movl	-76(%ebp),%eax
	addl	%eax,-48(%ebp)
	movl	-72(%ebp),%eax
	addl	%eax,-52(%ebp)
	cmpl	$0,-88(%ebp)
	ja	Lj472
Lj471:
	movl	-44(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,(%eax)
	cmpl	-80(%ebp),%esi
	jg	Lj436
Lj435:
	movl	-16(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	84(%eax),%al
	testb	%al,%al
	seteb	84(%edx)
	cmpl	-84(%ebp),%ebx
	jg	Lj429
Lj428:
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JQUANT1_ALLOC_FS_WORKSPACE$J_DECOMPRESS_PTR
_JQUANT1_ALLOC_FS_WORKSPACE$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	addl	$2,%eax
	shll	$2,%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj502
	decl	-16(%ebp)
	.align 2
Lj503:
	incl	-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	4(%esi),%esi
	call	*%esi
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	%eax,68(%edx,%ecx,4)
	cmpl	-16(%ebp),%ebx
	jg	Lj503
Lj502:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JQUANT1_START_PASS_1_QUANT$J_DECOMPRESS_PTR$BOOLEAN
_JQUANT1_START_PASS_1_QUANT$J_DECOMPRESS_PTR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj513
Lj513:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,100(%edx)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,96(%edx)
	movl	-4(%ebp),%eax
	movb	66(%eax),%al
	testb	%al,%al
	je	Lj522
	decb	%al
	je	Lj523
	decb	%al
	je	Lj524
	jmp	Lj521
Lj522:
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	cmpl	$3,%eax
	je	Lj525
	jmp	Lj526
Lj525:
	movl	-12(%ebp),%edx
	movl	L_JQUANT1_COLOR_QUANTIZE3$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT$non_lazy_ptr-Lj513(%ebx),%eax
	movl	%eax,4(%edx)
	jmp	Lj529
Lj526:
	movl	-12(%ebp),%edx
	movl	L_JQUANT1_COLOR_QUANTIZE$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT$non_lazy_ptr-Lj513(%ebx),%eax
	movl	%eax,4(%edx)
Lj529:
	jmp	Lj520
Lj523:
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	cmpl	$3,%eax
	je	Lj532
	jmp	Lj533
Lj532:
	movl	-12(%ebp),%edx
	movl	L_JQUANT1_QUANTIZE3_ORD_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT$non_lazy_ptr-Lj513(%ebx),%eax
	movl	%eax,4(%edx)
	jmp	Lj536
Lj533:
	movl	-12(%ebp),%edx
	movl	L_JQUANT1_QUANTIZE_ORD_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT$non_lazy_ptr-Lj513(%ebx),%eax
	movl	%eax,4(%edx)
Lj536:
	movl	-12(%ebp),%eax
	movl	$0,48(%eax)
	movl	-12(%ebp),%eax
	movb	28(%eax),%al
	testb	%al,%al
	je	Lj541
	jmp	Lj542
Lj541:
	movl	-4(%ebp),%eax
	call	L_JQUANT1_CREATE_COLORINDEX$J_DECOMPRESS_PTR$stub
Lj542:
	movl	-12(%ebp),%eax
	movl	52(%eax),%eax
	testl	%eax,%eax
	je	Lj545
	jmp	Lj546
Lj545:
	movl	-4(%ebp),%eax
	call	L_JQUANT1_CREATE_ODITHER_TABLES$J_DECOMPRESS_PTR$stub
Lj546:
	jmp	Lj520
Lj524:
	movl	-12(%ebp),%edx
	movl	L_JQUANT1_QUANTIZE_FS_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT$non_lazy_ptr-Lj513(%ebx),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movb	$0,84(%eax)
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	testl	%eax,%eax
	je	Lj553
	jmp	Lj554
Lj553:
	movl	-4(%ebp),%eax
	call	L_JQUANT1_ALLOC_FS_WORKSPACE$J_DECOMPRESS_PTR$stub
Lj554:
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	addl	$2,%eax
	shll	$2,%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%esi
	decl	%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj560
	decl	-20(%ebp)
	.align 2
Lj561:
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	68(%eax,%edx,4),%eax
	movl	-16(%ebp),%edx
	call	L_JUTILS_JZERO_FAR$POINTER$LONGINT$stub
	cmpl	-20(%ebp),%esi
	jg	Lj561
Lj560:
	jmp	Lj520
Lj521:
	movl	-4(%ebp),%eax
	movb	$49,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj520:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JQUANT1_FINISH_PASS_1_QUANT$J_DECOMPRESS_PTR
_JQUANT1_FINISH_PASS_1_QUANT$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_JQUANT1_NEW_COLOR_MAP_1_QUANT$J_DECOMPRESS_PTR
_JQUANT1_NEW_COLOR_MAP_1_QUANT$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$47,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
	leave
	ret

.text
	.align 4
.globl	_JQUANT1_JINIT_1PASS_QUANTIZER$J_DECOMPRESS_PTR
_JQUANT1_JINIT_1PASS_QUANTIZER$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj579
Lj579:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$88,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,408(%eax)
	movl	-8(%ebp),%edx
	movl	L_JQUANT1_START_PASS_1_QUANT$J_DECOMPRESS_PTR$BOOLEAN$non_lazy_ptr-Lj579(%esi),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	L_JQUANT1_FINISH_PASS_1_QUANT$J_DECOMPRESS_PTR$non_lazy_ptr-Lj579(%esi),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	L_JQUANT1_NEW_COLOR_MAP_1_QUANT$J_DECOMPRESS_PTR$non_lazy_ptr-Lj579(%esi),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	$0,68(%eax)
	movl	-8(%ebp),%eax
	movl	$0,52(%eax)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	cmpl	$4,%eax
	jg	Lj600
	jmp	Lj601
Lj600:
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	movb	$56,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj601:
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	cmpl	$256,%eax
	jg	Lj608
	jmp	Lj609
Lj608:
	movl	-4(%ebp),%eax
	movl	$256,%ecx
	movb	$58,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj609:
	movl	-4(%ebp),%eax
	call	L_JQUANT1_CREATE_COLORMAP$J_DECOMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	call	L_JQUANT1_CREATE_COLORINDEX$J_DECOMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	movb	66(%eax),%al
	cmpb	$2,%al
	je	Lj620
	jmp	Lj621
Lj620:
	movl	-4(%ebp),%eax
	call	L_JQUANT1_ALLOC_FS_WORKSPACE$J_DECOMPRESS_PTR$stub
Lj621:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JQUANT1
_THREADVARLIST_JQUANT1:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
.globl	_TC_JQUANT1_BASE_DITHER_MATRIX
_TC_JQUANT1_BASE_DITHER_MATRIX:
	.byte	0,192,48,240,12,204,60,252,3,195,51,243,15,207,63,255,128,64,176,112,140,76,188,124,131,67,179,115
	.byte	143,79,191,127,32,224,16,208,44,236,28,220,35,227,19,211,47,239,31,223,160,96,144,80,172,108,156,92
	.byte	163,99,147,83,175,111,159,95,8,200,56,248,4,196,52,244,11,203,59,251,7,199,55,247,136,72,184,120,132
	.byte	68,180,116,139,75,187,123,135,71,183,119,40,232,24,216,36,228,20,212,43,235,27,219,39,231,23,215,168
	.byte	104,152,88,164,100,148,84,171,107,155,91,167,103,151,87,2,194,50,242,14,206,62,254,1,193,49,241,13
	.byte	205,61,253,130,66,178,114,142,78,190,126,129,65,177,113,141,77,189,125,34,226,18,210,46,238,30,222
	.byte	33,225,17,209,45,237,29,221,162,98,146,82,174,110,158,94,161,97,145,81,173,109,157,93,10,202,58,250
	.byte	6,198,54,246,9,201,57,249,5,197,53,245,138,74,186,122,134,70,182,118,137,73,185,121,133,69,181,117
	.byte	42,234,26,218,38,230,22,214,41,233,25,217,37,229,21,213,170,106,154,90,166,102,150,86,169,105,153
	.byte	89,165,101,149,85

.data
	.align 2
.globl	_TC_JQUANT1_SELECT_NCOLORS$crc985A08F1_RGB_ORDER
_TC_JQUANT1_SELECT_NCOLORS$crc985A08F1_RGB_ORDER:
	.long	1,0,2
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub:
.indirect_symbol _JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JQUANT1_SELECT_NCOLORS$J_DECOMPRESS_PTR$array_of_LONGINT$$LONGINT$stub:
.indirect_symbol _JQUANT1_SELECT_NCOLORS$J_DECOMPRESS_PTR$array_of_LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JQUANT1_OUTPUT_VALUE$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JQUANT1_OUTPUT_VALUE$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JQUANT1_LARGEST_INPUT_VALUE$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JQUANT1_LARGEST_INPUT_VALUE$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JQUANT1_MAKE_ODITHER_ARRAY$J_DECOMPRESS_PTR$LONGINT$$ODITHER_MATRIX_PTR$stub:
.indirect_symbol _JQUANT1_MAKE_ODITHER_ARRAY$J_DECOMPRESS_PTR$LONGINT$$ODITHER_MATRIX_PTR
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

Lfpc_mul_int64$stub:
.indirect_symbol fpc_mul_int64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JQUANT1_CREATE_COLORINDEX$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JQUANT1_CREATE_COLORINDEX$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JQUANT1_CREATE_ODITHER_TABLES$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JQUANT1_CREATE_ODITHER_TABLES$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JQUANT1_ALLOC_FS_WORKSPACE$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JQUANT1_ALLOC_FS_WORKSPACE$J_DECOMPRESS_PTR
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

L_JQUANT1_CREATE_COLORMAP$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JQUANT1_CREATE_COLORMAP$J_DECOMPRESS_PTR
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
L_TC_JQUANT1_SELECT_NCOLORS$crc985A08F1_RGB_ORDER$non_lazy_ptr:
.indirect_symbol _TC_JQUANT1_SELECT_NCOLORS$crc985A08F1_RGB_ORDER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JQUANT1_BASE_DITHER_MATRIX$non_lazy_ptr:
.indirect_symbol _TC_JQUANT1_BASE_DITHER_MATRIX
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JQUANT1_COLOR_QUANTIZE3$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT$non_lazy_ptr:
.indirect_symbol _JQUANT1_COLOR_QUANTIZE3$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JQUANT1_COLOR_QUANTIZE$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT$non_lazy_ptr:
.indirect_symbol _JQUANT1_COLOR_QUANTIZE$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JQUANT1_QUANTIZE3_ORD_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT$non_lazy_ptr:
.indirect_symbol _JQUANT1_QUANTIZE3_ORD_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JQUANT1_QUANTIZE_ORD_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT$non_lazy_ptr:
.indirect_symbol _JQUANT1_QUANTIZE_ORD_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JQUANT1_QUANTIZE_FS_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT$non_lazy_ptr:
.indirect_symbol _JQUANT1_QUANTIZE_FS_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JQUANT1_START_PASS_1_QUANT$J_DECOMPRESS_PTR$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JQUANT1_START_PASS_1_QUANT$J_DECOMPRESS_PTR$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JQUANT1_FINISH_PASS_1_QUANT$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JQUANT1_FINISH_PASS_1_QUANT$J_DECOMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JQUANT1_NEW_COLOR_MAP_1_QUANT$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JQUANT1_NEW_COLOR_MAP_1_QUANT$J_DECOMPRESS_PTR
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

