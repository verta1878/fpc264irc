# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JDMASTER_USE_MERGED_UPSAMPLE$J_DECOMPRESS_PTR$$BOOLEAN
_JDMASTER_USE_MERGED_UPSAMPLE$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,63(%eax)
	jne	Lj7
	jmp	Lj9
Lj9:
	movl	-4(%ebp),%eax
	cmpb	$0,250(%eax)
	jne	Lj7
	jmp	Lj8
Lj7:
	movb	$0,-5(%ebp)
	jmp	Lj3
Lj8:
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	cmpb	$3,%al
	jne	Lj12
	jmp	Lj16
Lj16:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	$3,%eax
	jne	Lj12
	jmp	Lj15
Lj15:
	movl	-4(%ebp),%eax
	movb	41(%eax),%al
	cmpb	$2,%al
	jne	Lj12
	jmp	Lj14
Lj14:
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	cmpl	$3,%eax
	jne	Lj12
	jmp	Lj13
Lj12:
	movb	$0,-5(%ebp)
	jmp	Lj3
Lj13:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$2,%eax
	jne	Lj19
	jmp	Lj25
Lj25:
	movl	-12(%ebp),%eax
	movl	92(%eax),%eax
	cmpl	$1,%eax
	jne	Lj19
	jmp	Lj24
Lj24:
	movl	-12(%ebp),%eax
	movl	176(%eax),%eax
	cmpl	$1,%eax
	jne	Lj19
	jmp	Lj23
Lj23:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$2,%eax
	jg	Lj19
	jmp	Lj22
Lj22:
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	cmpl	$1,%eax
	jne	Lj19
	jmp	Lj21
Lj21:
	movl	-12(%ebp),%eax
	movl	180(%eax),%eax
	cmpl	$1,%eax
	jne	Lj19
	jmp	Lj20
Lj19:
	movb	$0,-5(%ebp)
	jmp	Lj3
Lj20:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	36(%eax),%eax
	cmpl	264(%edx),%eax
	jne	Lj28
	jmp	Lj31
Lj31:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	120(%eax),%eax
	cmpl	264(%edx),%eax
	jne	Lj28
	jmp	Lj30
Lj30:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	204(%eax),%eax
	cmpl	264(%edx),%eax
	jne	Lj28
	jmp	Lj29
Lj28:
	movb	$0,-5(%ebp)
	jmp	Lj3
Lj29:
	movb	$1,-5(%ebp)
Lj3:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JDMASTER_JPEG_CALC_OUTPUT_DIMENSIONS$J_DECOMPRESS_PTR
_JDMASTER_JPEG_CALC_OUTPUT_DIMENSIONS$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$202,%eax
	jne	Lj38
	jmp	Lj39
Lj38:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj39:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	shll	$3,%eax
	movl	-4(%ebp),%edx
	cmpl	48(%edx),%eax
	jbe	Lj46
	jmp	Lj47
Lj46:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	$8,%edx
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,76(%edx)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	$8,%edx
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,80(%edx)
	movl	-4(%ebp),%eax
	movl	$1,264(%eax)
	jmp	Lj62
Lj47:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	shll	$2,%eax
	movl	-4(%ebp),%edx
	cmpl	48(%edx),%eax
	jbe	Lj63
	jmp	Lj64
Lj63:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	$4,%edx
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,76(%edx)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	$4,%edx
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,80(%edx)
	movl	-4(%ebp),%eax
	movl	$2,264(%eax)
	jmp	Lj79
Lj64:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	cmpl	48(%edx),%eax
	jbe	Lj80
	jmp	Lj81
Lj80:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	$2,%edx
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,76(%edx)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	$2,%edx
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,80(%edx)
	movl	-4(%ebp),%eax
	movl	$4,264(%eax)
	jmp	Lj96
Lj81:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,76(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,80(%edx)
	movl	-4(%ebp),%eax
	movl	$8,264(%eax)
Lj96:
Lj79:
Lj62:
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	decl	%eax
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%eax
	jl	Lj106
	decl	-8(%ebp)
	.align 2
Lj107:
	incl	-8(%ebp)
	movl	-4(%ebp),%edx
	movl	264(%edx),%edx
	movl	%edx,-16(%ebp)
	jmp	Lj111
	.align 2
Lj110:
	movl	-16(%ebp),%edx
	shll	$1,%edx
	movl	%edx,-16(%ebp)
Lj111:
	movl	-16(%ebp),%edx
	cmpl	$8,%edx
	jl	Lj115
	jmp	Lj112
Lj115:
	movl	-12(%ebp),%edx
	movl	8(%edx),%edx
	movl	-16(%ebp),%ecx
	imull	%ecx,%edx
	shll	$1,%edx
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%esi
	movl	256(%ecx),%ebx
	movl	264(%esi),%ecx
	imull	%ecx,%ebx
	cmpl	%ebx,%edx
	jle	Lj116
	jmp	Lj112
Lj116:
	movl	-12(%ebp),%edx
	movl	12(%edx),%edx
	movl	-16(%ebp),%ecx
	imull	%ecx,%edx
	shll	$1,%edx
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%ebx
	movl	260(%ecx),%esi
	movl	264(%ebx),%ecx
	imull	%ecx,%esi
	cmpl	%esi,%edx
	jle	Lj110
	jmp	Lj112
Lj112:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	%ecx,36(%edx)
	addl	$84,-12(%ebp)
	cmpl	-8(%ebp),%eax
	jg	Lj107
Lj106:
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj122
	decl	-8(%ebp)
	.align 2
Lj123:
	incl	-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	8(%eax),%eax
	movl	36(%edx),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	movl	28(%edx),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	movl	256(%edx),%edx
	shll	$3,%edx
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	%eax,40(%edx)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	12(%eax),%eax
	movl	36(%edx),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	movl	260(%edx),%edx
	shll	$3,%edx
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	%eax,44(%edx)
	addl	$84,-12(%ebp)
	cmpl	-8(%ebp),%ebx
	jg	Lj123
Lj122:
	movl	-4(%ebp),%eax
	movb	41(%eax),%al
	cmpb	$1,%al
	jb	Lj137
	decb	%al
	je	Lj138
	decb	%al
	jb	Lj137
	subb	$1,%al
	jbe	Lj139
	decb	%al
	subb	$1,%al
	jbe	Lj140
	jmp	Lj137
Lj138:
	movl	-4(%ebp),%eax
	movl	$1,84(%eax)
	jmp	Lj136
Lj139:
	movl	-4(%ebp),%eax
	movl	$3,84(%eax)
	jmp	Lj136
Lj140:
	movl	-4(%ebp),%eax
	movl	$4,84(%eax)
	jmp	Lj136
Lj137:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,84(%edx)
Lj136:
	movl	-4(%ebp),%eax
	cmpb	$0,65(%eax)
	jne	Lj149
	jmp	Lj150
Lj149:
	movl	-4(%ebp),%eax
	movl	$1,88(%eax)
	jmp	Lj153
Lj150:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	%eax,88(%edx)
Lj153:
	movl	-4(%ebp),%eax
	call	L_JDMASTER_USE_MERGED_UPSAMPLE$J_DECOMPRESS_PTR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj156
	jmp	Lj157
Lj156:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	260(%eax),%eax
	movl	%eax,92(%edx)
	jmp	Lj162
Lj157:
	movl	-4(%ebp),%eax
	movl	$1,92(%eax)
Lj162:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JDMASTER_PREPARE_RANGE_LIMIT_TABLE$J_DECOMPRESS_PTR
_JDMASTER_PREPARE_RANGE_LIMIT_TABLE$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$1408,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$256,%edx
	call	L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,272(%eax)
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.align 2
Lj183:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	-16(%ebp),%cl
	movb	%cl,256(%eax,%edx,1)
	cmpl	$255,-16(%ebp)
	jl	Lj183
	movl	-8(%ebp),%eax
	leal	384(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	$128,-16(%ebp)
	decl	-16(%ebp)
	.align 2
Lj190:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	$255,(%eax,%edx,1)
	cmpl	$511,-16(%ebp)
	jl	Lj190
	movl	-12(%ebp),%eax
	leal	512(%eax),%eax
	movl	$384,%edx
	call	L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	272(%eax),%eax
	leal	256(%eax),%edx
	movl	-12(%ebp),%eax
	leal	896(%eax),%eax
	movl	$128,%ecx
	call	L_JINCLUDE_MEMCOPY$POINTER$POINTER$LONGINT$stub
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDMASTER_MASTER_SELECTION$J_DECOMPRESS_PTR
_JDMASTER_MASTER_SELECTION$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_JDMASTER_JPEG_CALC_OUTPUT_DIMENSIONS$J_DECOMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	call	L_JDMASTER_PREPARE_RANGE_LIMIT_TABLE$J_DECOMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	76(%eax),%ecx
	movl	84(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jne	Lj215
	jmp	Lj216
Lj215:
	movl	-4(%ebp),%eax
	movb	$71,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj216:
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	movl	-4(%ebp),%eax
	call	L_JDMASTER_USE_MERGED_UPSAMPLE$J_DECOMPRESS_PTR$$BOOLEAN$stub
	movl	-8(%ebp),%edx
	movb	%al,16(%edx)
	movl	-8(%ebp),%eax
	movl	$0,20(%eax)
	movl	-8(%ebp),%eax
	movl	$0,24(%eax)
	movl	-4(%ebp),%eax
	movb	65(%eax),%al
	testb	%al,%al
	je	Lj231
	jmp	Lj233
Lj233:
	movl	-4(%ebp),%eax
	movb	60(%eax),%al
	testb	%al,%al
	je	Lj231
	jmp	Lj232
Lj231:
	movl	-4(%ebp),%eax
	movb	$0,72(%eax)
	movl	-4(%ebp),%eax
	movb	$0,73(%eax)
	movl	-4(%ebp),%eax
	movb	$0,74(%eax)
Lj232:
	movl	-4(%ebp),%eax
	cmpb	$0,65(%eax)
	jne	Lj240
	jmp	Lj241
Lj240:
	movl	-4(%ebp),%eax
	cmpb	$0,61(%eax)
	jne	Lj242
	jmp	Lj243
Lj242:
	movl	-4(%ebp),%eax
	movb	$48,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj243:
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	cmpl	$3,%eax
	jne	Lj248
	jmp	Lj249
Lj248:
	movl	-4(%ebp),%eax
	movb	$1,72(%eax)
	movl	-4(%ebp),%eax
	movb	$0,73(%eax)
	movl	-4(%ebp),%eax
	movb	$0,74(%eax)
	movl	-4(%ebp),%eax
	movl	$0,100(%eax)
	jmp	Lj258
Lj249:
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	testl	%eax,%eax
	jne	Lj259
	jmp	Lj260
Lj259:
	movl	-4(%ebp),%eax
	movb	$1,73(%eax)
	jmp	Lj263
Lj260:
	movl	-4(%ebp),%eax
	cmpb	$0,67(%eax)
	jne	Lj264
	jmp	Lj265
Lj264:
	movl	-4(%ebp),%eax
	movb	$1,74(%eax)
	jmp	Lj268
Lj265:
	movl	-4(%ebp),%eax
	movb	$1,72(%eax)
Lj268:
Lj263:
Lj258:
	movl	-4(%ebp),%eax
	cmpb	$0,72(%eax)
	jne	Lj271
	jmp	Lj272
Lj271:
	movl	-4(%ebp),%eax
	call	L_JQUANT1_JINIT_1PASS_QUANTIZER$J_DECOMPRESS_PTR$stub
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,20(%edx)
Lj272:
	movl	-4(%ebp),%eax
	cmpb	$0,74(%eax)
	jne	Lj277
	jmp	Lj279
Lj279:
	movl	-4(%ebp),%eax
	cmpb	$0,73(%eax)
	jne	Lj277
	jmp	Lj278
Lj277:
	movl	-4(%ebp),%eax
	call	L_JQUANT2_JINIT_2PASS_QUANTIZER$J_DECOMPRESS_PTR$stub
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,24(%edx)
Lj278:
Lj241:
	movl	-4(%ebp),%eax
	movb	61(%eax),%al
	testb	%al,%al
	je	Lj284
	jmp	Lj285
Lj284:
	movl	-8(%ebp),%eax
	cmpb	$0,16(%eax)
	jne	Lj286
	jmp	Lj287
Lj286:
	movl	-4(%ebp),%eax
	call	L_JDMERGE_JINIT_MERGED_UPSAMPLER$J_DECOMPRESS_PTR$stub
	jmp	Lj290
Lj287:
	movl	-4(%ebp),%eax
	call	L_JDCOLOR_JINIT_COLOR_DECONVERTER$J_DECOMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	call	L_JDSAMPLE_JINIT_UPSAMPLER$J_DECOMPRESS_PTR$stub
Lj290:
	movl	-4(%ebp),%eax
	movb	74(%eax),%dl
	movl	-4(%ebp),%eax
	call	L_JDPOSTCT_JINIT_D_POST_CONTROLLER$J_DECOMPRESS_PTR$BOOLEAN$stub
Lj285:
	movl	-4(%ebp),%eax
	call	L_JDDCTMGR_JINIT_INVERSE_DCT$J_DECOMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	cmpb	$0,185(%eax)
	jne	Lj301
	jmp	Lj302
Lj301:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
	jmp	Lj307
Lj302:
	movl	-4(%ebp),%eax
	cmpb	$0,184(%eax)
	jne	Lj308
	jmp	Lj309
Lj308:
	movl	-4(%ebp),%eax
	call	L_JDPHUFF_JINIT_PHUFF_DECODER$J_DECOMPRESS_PTR$stub
	jmp	Lj312
Lj309:
	movl	-4(%ebp),%eax
	call	L_JDHUFF_JINIT_HUFF_DECODER$J_DECOMPRESS_PTR$stub
Lj312:
Lj307:
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	cmpb	$0,16(%eax)
	jne	Lj315
	jmp	Lj317
Lj317:
	movl	-4(%ebp),%eax
	cmpb	$0,60(%eax)
	jne	Lj315
	jmp	Lj316
Lj315:
	movb	$1,-9(%ebp)
	jmp	Lj318
Lj316:
	movb	$0,-9(%ebp)
Lj318:
	movb	-9(%ebp),%dl
	movl	-4(%ebp),%eax
	call	L_JDCOEFCT_JINIT_D_COEF_CONTROLLER$J_DECOMPRESS_PTR$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movb	61(%eax),%al
	testb	%al,%al
	je	Lj323
	jmp	Lj324
Lj323:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_JDMAINCT_JINIT_D_MAIN_CONTROLLER$J_DECOMPRESS_PTR$BOOLEAN$stub
Lj324:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	24(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	384(%edx),%edx
	movl	8(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj336
	jmp	Lj334
Lj336:
	movl	-4(%ebp),%eax
	movb	60(%eax),%al
	testb	%al,%al
	je	Lj335
	jmp	Lj334
Lj335:
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	cmpb	$0,16(%eax)
	jne	Lj333
	jmp	Lj334
Lj333:
	movl	-4(%ebp),%eax
	cmpb	$0,184(%eax)
	jne	Lj337
	jmp	Lj338
Lj337:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	imull	$3,%eax
	addl	$2,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj341
Lj338:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-24(%ebp)
Lj341:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	$0,4(%eax)
	movl	-4(%ebp),%eax
	movl	268(%eax),%edx
	movl	-24(%ebp),%eax
	imull	%eax,%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%edx,8(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	$0,12(%eax)
	movl	-4(%ebp),%eax
	cmpb	$0,74(%eax)
	jne	Lj350
	jmp	Lj351
Lj350:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	$3,16(%eax)
	jmp	Lj354
Lj351:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	$2,16(%eax)
Lj354:
	movl	-8(%ebp),%eax
	incl	12(%eax)
Lj334:
	leave
	ret

.text
	.align 4
.globl	_JDMASTER_PREPARE_FOR_OUTPUT_PASS$J_DECOMPRESS_PTR
_JDMASTER_PREPARE_FOR_OUTPUT_PASS$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,8(%eax)
	jne	Lj361
	jmp	Lj362
Lj361:
	movl	-8(%ebp),%eax
	movb	$0,8(%eax)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	movl	-4(%ebp),%ecx
	movl	408(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*%ecx
	movl	-4(%ebp),%eax
	movb	$2,%dl
	movl	-4(%ebp),%ecx
	movl	380(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*%ecx
	movl	-4(%ebp),%eax
	movb	$2,%dl
	movl	-4(%ebp),%ecx
	movl	372(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*%ecx
	jmp	Lj377
Lj362:
	movl	-4(%ebp),%eax
	cmpb	$0,65(%eax)
	jne	Lj380
	jmp	Lj379
Lj380:
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	testl	%eax,%eax
	je	Lj378
	jmp	Lj379
Lj378:
	movl	-4(%ebp),%eax
	cmpb	$0,67(%eax)
	jne	Lj383
	jmp	Lj382
Lj383:
	movl	-4(%ebp),%eax
	cmpb	$0,74(%eax)
	jne	Lj381
	jmp	Lj382
Lj381:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,408(%edx)
	movl	-8(%ebp),%eax
	movb	$1,8(%eax)
	jmp	Lj388
Lj382:
	movl	-4(%ebp),%eax
	cmpb	$0,72(%eax)
	jne	Lj389
	jmp	Lj390
Lj389:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,408(%edx)
	jmp	Lj393
Lj390:
	movl	-4(%ebp),%eax
	movb	$47,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj393:
Lj388:
Lj379:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	396(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	376(%edx),%edx
	movl	8(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movb	61(%eax),%al
	testb	%al,%al
	je	Lj402
	jmp	Lj403
Lj402:
	movl	-8(%ebp),%eax
	movb	16(%eax),%al
	testb	%al,%al
	je	Lj404
	jmp	Lj405
Lj404:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	404(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
Lj405:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	400(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	cmpb	$0,65(%eax)
	jne	Lj410
	jmp	Lj411
Lj410:
	movl	-8(%ebp),%eax
	movb	8(%eax),%dl
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	408(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*%ecx
Lj411:
	movl	-8(%ebp),%eax
	cmpb	$0,8(%eax)
	jne	Lj416
	jmp	Lj417
Lj416:
	movl	-4(%ebp),%eax
	movb	$3,%dl
	movl	-4(%ebp),%ecx
	movl	380(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*%ecx
	jmp	Lj422
Lj417:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	movl	-4(%ebp),%ecx
	movl	380(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*%ecx
Lj422:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	movl	-4(%ebp),%ecx
	movl	372(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*%ecx
Lj403:
Lj377:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj431
	jmp	Lj432
Lj431:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	cmpb	$0,8(%eax)
	jne	Lj435
	jmp	Lj436
Lj435:
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	addl	$2,%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%edx,16(%eax)
	jmp	Lj439
Lj436:
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%edx,16(%eax)
Lj439:
	movl	-4(%ebp),%eax
	cmpb	$0,60(%eax)
	jne	Lj444
	jmp	Lj443
Lj444:
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movb	17(%eax),%al
	testb	%al,%al
	je	Lj442
	jmp	Lj443
Lj442:
	movl	-4(%ebp),%eax
	cmpb	$0,74(%eax)
	jne	Lj445
	jmp	Lj446
Lj445:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	addl	$2,16(%eax)
	jmp	Lj447
Lj446:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	incl	16(%eax)
Lj447:
Lj443:
Lj432:
	leave
	ret

.text
	.align 4
.globl	_JDMASTER_FINISH_OUTPUT_PASS$J_DECOMPRESS_PTR
_JDMASTER_FINISH_OUTPUT_PASS$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,65(%eax)
	jne	Lj452
	jmp	Lj453
Lj452:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	408(%edx),%edx
	movl	8(%edx),%edx
	call	*%edx
Lj453:
	movl	-8(%ebp),%eax
	incl	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_JDMASTER_JPEG_NEW_COLORMAP$J_DECOMPRESS_PTR
_JDMASTER_JPEG_NEW_COLORMAP$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$207,%eax
	jne	Lj460
	jmp	Lj461
Lj460:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj461:
	movl	-4(%ebp),%eax
	cmpb	$0,65(%eax)
	jne	Lj471
	jmp	Lj469
Lj471:
	movl	-4(%ebp),%eax
	cmpb	$0,73(%eax)
	jne	Lj470
	jmp	Lj469
Lj470:
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	testl	%eax,%eax
	jne	Lj468
	jmp	Lj469
Lj468:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,408(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	408(%edx),%edx
	movl	12(%edx),%edx
	call	*%edx
	movl	-8(%ebp),%eax
	movb	$0,8(%eax)
	jmp	Lj478
Lj469:
	movl	-4(%ebp),%eax
	movb	$47,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj478:
	leave
	ret

.text
	.align 4
.globl	_JDMASTER_JINIT_MASTER_DECOMPRESS$J_DECOMPRESS_PTR
_JDMASTER_JINIT_MASTER_DECOMPRESS$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj484
Lj484:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$28,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,368(%edx)
	movl	-8(%ebp),%edx
	movl	L_JDMASTER_PREPARE_FOR_OUTPUT_PASS$J_DECOMPRESS_PTR$non_lazy_ptr-Lj484(%esi),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	L_JDMASTER_FINISH_OUTPUT_PASS$J_DECOMPRESS_PTR$non_lazy_ptr-Lj484(%esi),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	movb	$0,8(%eax)
	movl	-4(%ebp),%eax
	call	L_JDMASTER_MASTER_SELECTION$J_DECOMPRESS_PTR$stub
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JDMASTER
_THREADVARLIST_JDMASTER:
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

L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub:
.indirect_symbol _JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMASTER_USE_MERGED_UPSAMPLE$J_DECOMPRESS_PTR$$BOOLEAN$stub:
.indirect_symbol _JDMASTER_USE_MERGED_UPSAMPLE$J_DECOMPRESS_PTR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub:
.indirect_symbol _JINCLUDE_MEMZERO$POINTER$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JINCLUDE_MEMCOPY$POINTER$POINTER$LONGINT$stub:
.indirect_symbol _JINCLUDE_MEMCOPY$POINTER$POINTER$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMASTER_JPEG_CALC_OUTPUT_DIMENSIONS$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDMASTER_JPEG_CALC_OUTPUT_DIMENSIONS$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMASTER_PREPARE_RANGE_LIMIT_TABLE$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDMASTER_PREPARE_RANGE_LIMIT_TABLE$J_DECOMPRESS_PTR
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

L_JQUANT1_JINIT_1PASS_QUANTIZER$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JQUANT1_JINIT_1PASS_QUANTIZER$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JQUANT2_JINIT_2PASS_QUANTIZER$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JQUANT2_JINIT_2PASS_QUANTIZER$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMERGE_JINIT_MERGED_UPSAMPLER$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDMERGE_JINIT_MERGED_UPSAMPLER$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDCOLOR_JINIT_COLOR_DECONVERTER$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDCOLOR_JINIT_COLOR_DECONVERTER$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDSAMPLE_JINIT_UPSAMPLER$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDSAMPLE_JINIT_UPSAMPLER$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDPOSTCT_JINIT_D_POST_CONTROLLER$J_DECOMPRESS_PTR$BOOLEAN$stub:
.indirect_symbol _JDPOSTCT_JINIT_D_POST_CONTROLLER$J_DECOMPRESS_PTR$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDDCTMGR_JINIT_INVERSE_DCT$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDDCTMGR_JINIT_INVERSE_DCT$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDPHUFF_JINIT_PHUFF_DECODER$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDPHUFF_JINIT_PHUFF_DECODER$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDHUFF_JINIT_HUFF_DECODER$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDHUFF_JINIT_HUFF_DECODER$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDCOEFCT_JINIT_D_COEF_CONTROLLER$J_DECOMPRESS_PTR$BOOLEAN$stub:
.indirect_symbol _JDCOEFCT_JINIT_D_COEF_CONTROLLER$J_DECOMPRESS_PTR$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMAINCT_JINIT_D_MAIN_CONTROLLER$J_DECOMPRESS_PTR$BOOLEAN$stub:
.indirect_symbol _JDMAINCT_JINIT_D_MAIN_CONTROLLER$J_DECOMPRESS_PTR$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMASTER_MASTER_SELECTION$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDMASTER_MASTER_SELECTION$J_DECOMPRESS_PTR
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
L_JDMASTER_PREPARE_FOR_OUTPUT_PASS$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JDMASTER_PREPARE_FOR_OUTPUT_PASS$J_DECOMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDMASTER_FINISH_OUTPUT_PASS$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JDMASTER_FINISH_OUTPUT_PASS$J_DECOMPRESS_PTR
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

