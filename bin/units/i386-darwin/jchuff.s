# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JCHUFF_START_PASS_HUFF$J_COMPRESS_PTR$BOOLEAN
_JCHUFF_START_PASS_HUFF$J_COMPRESS_PTR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	call	Lj4
Lj4:
	popl	%edi
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	344(%eax),%eax
	movl	%eax,-12(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj7
	jmp	Lj8
Lj7:
	movl	-12(%ebp),%edx
	movl	L_JCHUFF_ENCODE_MCU_GATHER$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr-Lj4(%edi),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%edx
	movl	L_JCHUFF_FINISH_PASS_GATHER$J_COMPRESS_PTR$non_lazy_ptr-Lj4(%edi),%eax
	movl	%eax,8(%edx)
	jmp	Lj13
Lj8:
	movl	-12(%ebp),%edx
	movl	L_JCHUFF_ENCODE_MCU_HUFF$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr-Lj4(%edi),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%edx
	movl	L_JCHUFF_FINISH_PASS_HUFF$J_COMPRESS_PTR$non_lazy_ptr-Lj4(%edi),%eax
	movl	%eax,8(%edx)
Lj13:
	movl	-4(%ebp),%eax
	movl	224(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj19
	decl	-16(%ebp)
	.align 2
Lj20:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	228(%edx,%eax,4),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-28(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-24(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj27
	jmp	Lj28
Lj27:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj29
	jmp	Lj31
Lj31:
	movl	-20(%ebp),%eax
	cmpl	$4,%eax
	jge	Lj29
	jmp	Lj30
Lj29:
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$51,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj30:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj38
	jmp	Lj40
Lj40:
	movl	-24(%ebp),%eax
	cmpl	$4,%eax
	jge	Lj38
	jmp	Lj39
Lj38:
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$51,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj39:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	76(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj47
	jmp	Lj48
Lj47:
	movl	-4(%ebp),%eax
	movl	$1028,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	(%esi),%esi
	call	*%esi
	movl	-12(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	%eax,76(%ecx,%edx,4)
Lj48:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	76(%edx,%eax,4),%eax
	movl	$1028,%edx
	call	L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	92(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj61
	jmp	Lj62
Lj61:
	movl	-4(%ebp),%eax
	movl	$1028,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	(%esi),%esi
	call	*%esi
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	%eax,92(%edx,%ecx,4)
Lj62:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	92(%eax,%edx,4),%eax
	movl	$1028,%edx
	call	L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub
	jmp	Lj75
Lj28:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	44(%eax,%edx,4),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_JCHUFF_JPEG_MAKE_C_DERIVED_TBL$J_COMPRESS_PTR$BOOLEAN$LONGINT$C_DERIVED_TBL_PTR$stub
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	leal	60(%eax,%edx,4),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_JCHUFF_JPEG_MAKE_C_DERIVED_TBL$J_COMPRESS_PTR$BOOLEAN$LONGINT$C_DERIVED_TBL_PTR$stub
Lj75:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	$0,20(%eax,%edx,4)
	cmpl	-16(%ebp),%ebx
	jg	Lj20
Lj19:
	movl	-12(%ebp),%eax
	movl	$0,12(%eax)
	movl	-12(%ebp),%eax
	movl	$0,16(%eax)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	movl	%eax,36(%edx)
	movl	-12(%ebp),%eax
	movl	$0,40(%eax)
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JCHUFF_JPEG_MAKE_C_DERIVED_TBL$J_COMPRESS_PTR$BOOLEAN$LONGINT$C_DERIVED_TBL_PTR
_JCHUFF_JPEG_MAKE_C_DERIVED_TBL$J_COMPRESS_PTR$BOOLEAN$LONGINT$C_DERIVED_TBL_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1352,%esp
	movl	%ebx,-1340(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj104
	jmp	Lj106
Lj106:
	movl	-12(%ebp),%eax
	cmpl	$4,%eax
	jge	Lj104
	jmp	Lj105
Lj104:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$51,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj105:
	cmpb	$0,-8(%ebp)
	jne	Lj113
	jmp	Lj114
Lj113:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	84(%edx,%eax,4),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj117
Lj114:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	100(%eax,%edx,4),%eax
	movl	%eax,-16(%ebp)
Lj117:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj120
	jmp	Lj121
Lj120:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$51,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj121:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj128
	jmp	Lj129
Lj128:
	movl	-4(%ebp),%eax
	movl	$1280,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	8(%ebp),%edx
	movl	%eax,(%edx)
Lj129:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$1,-32(%ebp)
	decl	-32(%ebp)
	.align 2
Lj144:
	incl	-32(%ebp)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj149
	jmp	Lj148
Lj149:
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	cmpl	$256,%eax
	jg	Lj147
	jmp	Lj148
Lj147:
	movl	-4(%ebp),%eax
	movb	$8,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj148:
	jmp	Lj155
	.align 2
Lj154:
	movl	-24(%ebp),%eax
	movb	-32(%ebp),%dl
	movb	%dl,-301(%ebp,%eax,1)
	incl	-24(%ebp)
	decl	-28(%ebp)
Lj155:
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj154
	jmp	Lj156
Lj156:
	cmpl	$16,-32(%ebp)
	jl	Lj144
	movl	-24(%ebp),%eax
	movb	$0,-301(%ebp,%eax,1)
	movl	-24(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	$0,-1336(%ebp)
	movzbl	-301(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	$0,-24(%ebp)
	jmp	Lj170
	.align 2
Lj169:
	jmp	Lj173
	.align 2
Lj172:
	movl	-24(%ebp),%eax
	movl	-1336(%ebp),%edx
	movl	%edx,-1332(%ebp,%eax,4)
	incl	-24(%ebp)
	incl	-1336(%ebp)
Lj173:
	movl	-24(%ebp),%eax
	movzbl	-301(%ebp,%eax,1),%eax
	cmpl	-40(%ebp),%eax
	je	Lj172
	jmp	Lj174
Lj174:
	movl	$1,%eax
	movl	-40(%ebp),%ecx
	shll	%cl,%eax
	cmpl	-1336(%ebp),%eax
	jle	Lj177
	jmp	Lj178
Lj177:
	movl	-4(%ebp),%eax
	movb	$8,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj178:
	movl	-1336(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-1336(%ebp)
	incl	-40(%ebp)
Lj170:
	movl	-24(%ebp),%eax
	movzbl	-301(%ebp,%eax,1),%eax
	testl	%eax,%eax
	jne	Lj169
	jmp	Lj171
Lj171:
	movl	-20(%ebp),%eax
	leal	1024(%eax),%eax
	movl	$256,%edx
	call	L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub
	cmpb	$0,-8(%ebp)
	jne	Lj189
	jmp	Lj190
Lj189:
	movl	$15,-44(%ebp)
	jmp	Lj193
Lj190:
	movl	$255,-44(%ebp)
Lj193:
	movl	-36(%ebp),%ebx
	decl	%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj197
	decl	-24(%ebp)
	.align 2
Lj198:
	incl	-24(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	movzbl	17(%eax,%edx,1),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj201
	jmp	Lj204
Lj204:
	movl	-28(%ebp),%eax
	cmpl	-44(%ebp),%eax
	jg	Lj201
	jmp	Lj203
Lj203:
	movl	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	movzbl	1024(%edx,%eax,1),%eax
	testl	%eax,%eax
	jne	Lj201
	jmp	Lj202
Lj201:
	movl	-4(%ebp),%eax
	movb	$8,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj202:
	movl	-20(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-1332(%ebp,%eax,4),%eax
	movl	%eax,(%ecx,%edx,4)
	movl	-20(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	-24(%ebp),%eax
	movb	-301(%ebp,%eax,1),%al
	movb	%al,1024(%ecx,%edx,1)
	cmpl	-24(%ebp),%ebx
	jg	Lj198
Lj197:
	movl	-1340(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCHUFF_DUMP_BUFFER$WORKING_STATE$$BOOLEAN
_JCHUFF_DUMP_BUFFER$WORKING_STATE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	24(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-12(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj217
	jmp	Lj218
Lj217:
	movb	$0,-5(%ebp)
	jmp	Lj213
Lj218:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	movb	$1,-5(%ebp)
Lj213:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JCHUFF_EMIT_BITS$WORKING_STATE$LONGWORD$LONGINT$$BOOLEAN
_JCHUFF_EMIT_BITS$WORKING_STATE$LONGWORD$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj235
	jmp	Lj236
Lj235:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movb	$41,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj236:
	movl	$1,%eax
	movl	-12(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	-20(%ebp),%edx
	andl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	addl	%eax,-24(%ebp)
	movl	-24(%ebp),%ecx
	movl	$24,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	-20(%ebp),%eax
	shll	%cl,%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	8(%eax),%eax
	orl	%eax,%edx
	movl	%edx,-20(%ebp)
	jmp	Lj248
	.align 2
Lj247:
	movl	-20(%ebp),%eax
	shrl	$16,%eax
	andl	$255,%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	-28(%ebp),%dl
	movb	%dl,(%eax)
	movl	-4(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	decl	4(%eax)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj254
	jmp	Lj255
Lj254:
	movl	-4(%ebp),%eax
	call	L_JCHUFF_DUMP_BUFFER$WORKING_STATE$$BOOLEAN$stub
	testb	%al,%al
	je	Lj256
	jmp	Lj257
Lj256:
	movb	$0,-13(%ebp)
	jmp	Lj229
Lj257:
Lj255:
	movl	-28(%ebp),%eax
	cmpl	$255,%eax
	je	Lj262
	jmp	Lj263
Lj262:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,(%eax)
	movl	-4(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	decl	4(%eax)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj266
	jmp	Lj267
Lj266:
	movl	-4(%ebp),%eax
	call	L_JCHUFF_DUMP_BUFFER$WORKING_STATE$$BOOLEAN$stub
	testb	%al,%al
	je	Lj268
	jmp	Lj269
Lj268:
	movb	$0,-13(%ebp)
	jmp	Lj229
Lj269:
Lj267:
Lj263:
	movl	-20(%ebp),%eax
	shll	$8,%eax
	movl	%eax,-20(%ebp)
	subl	$8,-24(%ebp)
Lj248:
	movl	-24(%ebp),%eax
	cmpl	$8,%eax
	jge	Lj247
	jmp	Lj249
Lj249:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,12(%edx)
	movb	$1,-13(%ebp)
Lj229:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JCHUFF_FLUSH_BITS$WORKING_STATE$$BOOLEAN
_JCHUFF_FLUSH_BITS$WORKING_STATE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$7,%ecx
	movl	$127,%edx
	call	L_JCHUFF_EMIT_BITS$WORKING_STATE$LONGWORD$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj284
	jmp	Lj285
Lj284:
	movb	$0,-5(%ebp)
	jmp	Lj282
Lj285:
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	movl	$0,12(%eax)
	movb	$1,-5(%ebp)
Lj282:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JCHUFF_ENCODE_ONE_BLOCK$crcD11B115D
_JCHUFF_ENCODE_ONE_BLOCK$crcD11B115D:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	call	Lj301
Lj301:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj306
	jmp	Lj307
Lj306:
	movl	-20(%ebp),%eax
	negl	%eax
	movl	%eax,-20(%ebp)
	decl	-24(%ebp)
Lj307:
	movl	$0,-28(%ebp)
	jmp	Lj313
	.align 2
Lj312:
	incl	-28(%ebp)
	movl	-20(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-20(%ebp)
Lj313:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj312
	jmp	Lj314
Lj314:
	movl	-28(%ebp),%eax
	cmpl	$11,%eax
	jg	Lj317
	jmp	Lj318
Lj317:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movb	$6,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj318:
	movl	12(%ebp),%eax
	movl	-28(%ebp),%edx
	movzbl	1024(%eax,%edx,1),%ecx
	movl	12(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	(%edx,%eax,4),%edx
	movl	-4(%ebp),%eax
	call	L_JCHUFF_EMIT_BITS$WORKING_STATE$LONGWORD$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj323
	jmp	Lj324
Lj323:
	movb	$0,-13(%ebp)
	jmp	Lj300
Lj324:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj333
	jmp	Lj334
Lj333:
	movl	-28(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JCHUFF_EMIT_BITS$WORKING_STATE$LONGWORD$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj335
	jmp	Lj336
Lj335:
	movb	$0,-13(%ebp)
	jmp	Lj300
Lj336:
Lj334:
	movl	$0,-36(%ebp)
	movl	$1,-32(%ebp)
	decl	-32(%ebp)
	.align 2
Lj349:
	incl	-32(%ebp)
	movl	-8(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	L_TC_JUTILS_JPEG_NATURAL_ORDER$non_lazy_ptr-Lj301(%ebx),%eax
	movl	(%eax,%edx,4),%eax
	movl	(%ecx,%eax,4),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj352
	jmp	Lj353
Lj352:
	incl	-36(%ebp)
	jmp	Lj354
Lj353:
	jmp	Lj356
	.align 2
Lj355:
	movl	8(%ebp),%eax
	movzbl	1264(%eax),%ecx
	movl	8(%ebp),%eax
	movl	960(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCHUFF_EMIT_BITS$WORKING_STATE$LONGWORD$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj358
	jmp	Lj359
Lj358:
	movb	$0,-13(%ebp)
	jmp	Lj300
Lj359:
	subl	$16,-36(%ebp)
Lj356:
	movl	-36(%ebp),%eax
	cmpl	$15,%eax
	jg	Lj355
	jmp	Lj357
Lj357:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj370
	jmp	Lj371
Lj370:
	movl	-20(%ebp),%eax
	negl	%eax
	movl	%eax,-20(%ebp)
	decl	-24(%ebp)
Lj371:
	movl	$0,-28(%ebp)
	.align 2
Lj376:
	incl	-28(%ebp)
	movl	-20(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj378
	jmp	Lj376
Lj378:
	movl	-28(%ebp),%eax
	cmpl	$10,%eax
	jg	Lj381
	jmp	Lj382
Lj381:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movb	$6,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj382:
	movl	-36(%ebp),%eax
	shll	$4,%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-40(%ebp)
	movl	8(%ebp),%eax
	movl	-40(%ebp),%edx
	movzbl	1024(%eax,%edx,1),%ecx
	movl	8(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	-4(%ebp),%eax
	call	L_JCHUFF_EMIT_BITS$WORKING_STATE$LONGWORD$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj389
	jmp	Lj390
Lj389:
	movb	$0,-13(%ebp)
	jmp	Lj300
Lj390:
	movl	-28(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JCHUFF_EMIT_BITS$WORKING_STATE$LONGWORD$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj399
	jmp	Lj400
Lj399:
	movb	$0,-13(%ebp)
	jmp	Lj300
Lj400:
	movl	$0,-36(%ebp)
Lj354:
	cmpl	$63,-32(%ebp)
	jl	Lj349
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj411
	jmp	Lj412
Lj411:
	movl	8(%ebp),%eax
	movzbl	1024(%eax),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCHUFF_EMIT_BITS$WORKING_STATE$LONGWORD$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj413
	jmp	Lj414
Lj413:
	movb	$0,-13(%ebp)
	jmp	Lj300
Lj414:
Lj412:
	movb	$1,-13(%ebp)
Lj300:
	movb	-13(%ebp),%al
	movl	-44(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCHUFF_EMIT_RESTART$WORKING_STATE$LONGINT$$BOOLEAN
_JCHUFF_EMIT_RESTART$WORKING_STATE$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_JCHUFF_FLUSH_BITS$WORKING_STATE$$BOOLEAN$stub
	testb	%al,%al
	je	Lj427
	jmp	Lj428
Lj427:
	movb	$0,-9(%ebp)
	jmp	Lj425
Lj428:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	$255,(%eax)
	movl	-4(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	decl	4(%eax)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj435
	jmp	Lj436
Lj435:
	movl	-4(%ebp),%eax
	call	L_JCHUFF_DUMP_BUFFER$WORKING_STATE$$BOOLEAN$stub
	testb	%al,%al
	je	Lj437
	jmp	Lj438
Lj437:
	movb	$0,-9(%ebp)
	jmp	Lj425
Lj438:
Lj436:
	movl	-8(%ebp),%eax
	addl	$208,%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movb	%al,(%edx)
	movl	-4(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	decl	4(%eax)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj445
	jmp	Lj446
Lj445:
	movl	-4(%ebp),%eax
	call	L_JCHUFF_DUMP_BUFFER$WORKING_STATE$$BOOLEAN$stub
	testb	%al,%al
	je	Lj447
	jmp	Lj448
Lj447:
	movb	$0,-9(%ebp)
	jmp	Lj425
Lj448:
Lj446:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	224(%eax),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj454
	decl	-16(%ebp)
	.align 2
Lj455:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	$0,16(%edx,%ecx,4)
	cmpl	-16(%ebp),%eax
	jg	Lj455
Lj454:
	movb	$1,-9(%ebp)
Lj425:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JCHUFF_ENCODE_MCU_HUFF$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
_JCHUFF_ENCODE_MCU_HUFF$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	344(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	-20(%ebp),%eax
	leal	-48(%ebp),%edi
	leal	12(%eax),%esi
	cld
	movl	$6,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	testl	%eax,%eax
	jne	Lj472
	jmp	Lj473
Lj472:
	movl	-20(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	je	Lj474
	jmp	Lj475
Lj474:
	movl	-20(%ebp),%eax
	movl	40(%eax),%edx
	leal	-56(%ebp),%eax
	call	L_JCHUFF_EMIT_RESTART$WORKING_STATE$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj476
	jmp	Lj477
Lj476:
	movb	$0,-13(%ebp)
	jmp	Lj460
Lj477:
Lj475:
Lj473:
	movl	-4(%ebp),%eax
	movl	252(%eax),%ebx
	decl	%ebx
	movl	$0,-60(%ebp)
	cmpl	-60(%ebp),%ebx
	jl	Lj485
	decl	-60(%ebp)
	.align 2
Lj486:
	incl	-60(%ebp)
	movl	-4(%ebp),%edx
	movl	-60(%ebp),%eax
	movl	256(%edx,%eax,4),%eax
	movl	%eax,-64(%ebp)
	movl	-4(%ebp),%edx
	movl	-64(%ebp),%eax
	movl	228(%edx,%eax,4),%eax
	movl	%eax,-68(%ebp)
	movl	-20(%ebp),%edx
	movl	-68(%ebp),%eax
	movl	24(%eax),%eax
	movl	60(%edx,%eax,4),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	movl	-68(%ebp),%eax
	movl	20(%eax),%eax
	movl	44(%edx,%eax,4),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	-60(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	-64(%ebp),%eax
	movl	-40(%ebp,%eax,4),%ecx
	leal	-56(%ebp),%eax
	call	L_JCHUFF_ENCODE_ONE_BLOCK$crcD11B115D$stub
	testb	%al,%al
	je	Lj491
	jmp	Lj492
Lj491:
	movb	$0,-13(%ebp)
	jmp	Lj460
Lj492:
	movl	-8(%ebp),%edx
	movl	-60(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	-64(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,-40(%ebp,%edx,4)
	cmpl	-60(%ebp),%ebx
	jg	Lj486
Lj485:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-56(%ebp),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-52(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-20(%ebp),%eax
	leal	12(%eax),%edi
	leal	-48(%ebp),%esi
	cld
	movl	$6,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	testl	%eax,%eax
	jne	Lj513
	jmp	Lj514
Lj513:
	movl	-20(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	je	Lj515
	jmp	Lj516
Lj515:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	movl	%eax,36(%edx)
	movl	-20(%ebp),%eax
	incl	40(%eax)
	movl	-20(%ebp),%eax
	movl	40(%eax),%edx
	andl	$7,%edx
	movl	%edx,40(%eax)
Lj516:
	movl	-20(%ebp),%eax
	decl	36(%eax)
Lj514:
	movb	$1,-13(%ebp)
Lj460:
	movb	-13(%ebp),%al
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JCHUFF_FINISH_PASS_HUFF$J_COMPRESS_PTR
_JCHUFF_FINISH_PASS_HUFF$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-52(%ebp)
	movl	%edi,-48(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	344(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-8(%ebp),%eax
	leal	-36(%ebp),%edi
	leal	12(%eax),%esi
	cld
	movl	$6,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	leal	-44(%ebp),%eax
	call	L_JCHUFF_FLUSH_BITS$WORKING_STATE$$BOOLEAN$stub
	testb	%al,%al
	je	Lj537
	jmp	Lj538
Lj537:
	movl	-4(%ebp),%eax
	movb	$24,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj538:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-44(%ebp),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-40(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%eax
	leal	12(%eax),%edi
	leal	-36(%ebp),%esi
	cld
	movl	$6,%ecx
	rep
	movsl
	movl	-52(%ebp),%esi
	movl	-48(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JCHUFF_HTEST_ONE_BLOCK$J_COMPRESS_PTR$JBLOCK$LONGINT$TLONGTABLEPTR$TLONGTABLEPTR
_JCHUFF_HTEST_ONE_BLOCK$J_COMPRESS_PTR$JBLOCK$LONGINT$TLONGTABLEPTR$TLONGTABLEPTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	call	Lj552
Lj552:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj555
	jmp	Lj556
Lj555:
	movl	-16(%ebp),%eax
	negl	%eax
	movl	%eax,-16(%ebp)
Lj556:
	movl	$0,-20(%ebp)
	jmp	Lj562
	.align 2
Lj561:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-16(%ebp)
Lj562:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj561
	jmp	Lj563
Lj563:
	movl	-20(%ebp),%eax
	cmpl	$11,%eax
	jg	Lj566
	jmp	Lj567
Lj566:
	movl	-4(%ebp),%eax
	movb	$6,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj567:
	movl	12(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	(%edx,%eax,4)
	movl	$0,-28(%ebp)
	movl	$1,-24(%ebp)
	decl	-24(%ebp)
	.align 2
Lj576:
	incl	-24(%ebp)
	movl	-8(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	L_TC_JUTILS_JPEG_NATURAL_ORDER$non_lazy_ptr-Lj552(%ebx),%eax
	movl	(%eax,%edx,4),%eax
	movl	(%ecx,%eax,4),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj579
	jmp	Lj580
Lj579:
	incl	-28(%ebp)
	jmp	Lj581
Lj580:
	jmp	Lj583
	.align 2
Lj582:
	movl	8(%ebp),%eax
	incl	960(%eax)
	subl	$16,-28(%ebp)
Lj583:
	movl	-28(%ebp),%eax
	cmpl	$15,%eax
	jg	Lj582
	jmp	Lj584
Lj584:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj585
	jmp	Lj586
Lj585:
	movl	-16(%ebp),%eax
	negl	%eax
	movl	%eax,-16(%ebp)
Lj586:
	movl	$0,-20(%ebp)
	.align 2
Lj591:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj593
	jmp	Lj591
Lj593:
	movl	8(%ebp),%ecx
	movl	-28(%ebp),%eax
	shll	$4,%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	incl	(%ecx,%eax,4)
	movl	$0,-28(%ebp)
Lj581:
	cmpl	$63,-24(%ebp)
	jl	Lj576
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj598
	jmp	Lj599
Lj598:
	movl	8(%ebp),%eax
	incl	(%eax)
Lj599:
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCHUFF_ENCODE_MCU_GATHER$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
_JCHUFF_ENCODE_MCU_GATHER$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	344(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	testl	%eax,%eax
	jne	Lj604
	jmp	Lj605
Lj604:
	movl	-20(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	je	Lj606
	jmp	Lj607
Lj606:
	movl	-4(%ebp),%eax
	movl	224(%eax),%eax
	decl	%eax
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj609
	decl	-28(%ebp)
	.align 2
Lj610:
	incl	-28(%ebp)
	movl	-20(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	$0,20(%ecx,%edx,4)
	cmpl	-28(%ebp),%eax
	jg	Lj610
Lj609:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	movl	%eax,36(%edx)
Lj607:
	movl	-20(%ebp),%eax
	decl	36(%eax)
Lj605:
	movl	-4(%ebp),%eax
	movl	252(%eax),%ebx
	decl	%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj616
	decl	-24(%ebp)
	.align 2
Lj617:
	incl	-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	256(%eax,%edx,4),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	228(%edx,%eax,4),%eax
	movl	%eax,-32(%ebp)
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	24(%eax),%eax
	movl	92(%edx,%eax,4),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	20(%eax),%eax
	movl	76(%edx,%eax,4),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	20(%eax,%edx,4),%ecx
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	-4(%ebp),%eax
	call	L_JCHUFF_HTEST_ONE_BLOCK$J_COMPRESS_PTR$JBLOCK$LONGINT$TLONGTABLEPTR$TLONGTABLEPTR$stub
	movl	-20(%ebp),%edx
	movl	-28(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%esi
	movl	(%eax,%esi,4),%eax
	movl	(%eax),%eax
	movl	%eax,20(%edx,%ecx,4)
	cmpl	-24(%ebp),%ebx
	jg	Lj617
Lj616:
	movb	$1,-13(%ebp)
	movb	-13(%ebp),%al
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JCHUFF_JPEG_GEN_OPTIMAL_TABLE$J_COMPRESS_PTR$JHUFF_TBL_PTR$TLONGTABLE
_JCHUFF_JPEG_GEN_OPTIMAL_TABLE$J_COMPRESS_PTR$JHUFF_TBL_PTR$TLONGTABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$2136,%esp
	movl	%ebx,-2132(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-45(%ebp),%eax
	movl	$33,%edx
	call	L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub
	leal	-1076(%ebp),%eax
	movl	$1028,%edx
	call	L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub
	movl	$0,-2120(%ebp)
	decl	-2120(%ebp)
	.align 2
Lj648:
	incl	-2120(%ebp)
	movl	-2120(%ebp),%eax
	movl	$-1,-2104(%ebp,%eax,4)
	cmpl	$256,-2120(%ebp)
	jl	Lj648
	movl	-12(%ebp),%eax
	movl	$1,1024(%eax)
	jmp	Lj654
	.align 2
Lj653:
	movl	$-1,-2108(%ebp)
	movl	$1000000000,-2128(%ebp)
	movl	$0,-2120(%ebp)
	decl	-2120(%ebp)
	.align 2
Lj662:
	incl	-2120(%ebp)
	movl	-12(%ebp),%edx
	movl	-2120(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj665
	jmp	Lj664
Lj665:
	movl	-12(%ebp),%eax
	movl	-2120(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	cmpl	-2128(%ebp),%eax
	jle	Lj663
	jmp	Lj664
Lj663:
	movl	-12(%ebp),%eax
	movl	-2120(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-2128(%ebp)
	movl	-2120(%ebp),%eax
	movl	%eax,-2108(%ebp)
Lj664:
	cmpl	$256,-2120(%ebp)
	jl	Lj662
	movl	$-1,-2112(%ebp)
	movl	$1000000000,-2128(%ebp)
	movl	$0,-2120(%ebp)
	decl	-2120(%ebp)
	.align 2
Lj676:
	incl	-2120(%ebp)
	movl	-12(%ebp),%edx
	movl	-2120(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj680
	jmp	Lj678
Lj680:
	movl	-12(%ebp),%edx
	movl	-2120(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	cmpl	-2128(%ebp),%eax
	jle	Lj679
	jmp	Lj678
Lj679:
	movl	-2120(%ebp),%eax
	cmpl	-2108(%ebp),%eax
	jne	Lj677
	jmp	Lj678
Lj677:
	movl	-12(%ebp),%eax
	movl	-2120(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-2128(%ebp)
	movl	-2120(%ebp),%eax
	movl	%eax,-2112(%ebp)
Lj678:
	cmpl	$256,-2120(%ebp)
	jl	Lj676
	movl	-2112(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj685
	jmp	Lj686
Lj685:
	jmp	Lj655
Lj686:
	movl	-12(%ebp),%edx
	movl	-2112(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	-2108(%ebp),%ecx
	movl	(%edx,%eax,4),%eax
	addl	%eax,(%ebx,%ecx,4)
	movl	-12(%ebp),%eax
	movl	-2112(%ebp),%edx
	movl	$0,(%eax,%edx,4)
	movl	-2108(%ebp),%eax
	incl	-1076(%ebp,%eax,4)
	jmp	Lj690
	.align 2
Lj689:
	movl	-2108(%ebp),%eax
	movl	-2104(%ebp,%eax,4),%eax
	movl	%eax,-2108(%ebp)
	movl	-2108(%ebp),%eax
	incl	-1076(%ebp,%eax,4)
Lj690:
	movl	-2108(%ebp),%eax
	movl	-2104(%ebp,%eax,4),%eax
	cmpl	$0,%eax
	jge	Lj689
	jmp	Lj691
Lj691:
	movl	-2108(%ebp),%eax
	movl	-2112(%ebp),%edx
	movl	%edx,-2104(%ebp,%eax,4)
	movl	-2112(%ebp),%eax
	incl	-1076(%ebp,%eax,4)
	jmp	Lj697
	.align 2
Lj696:
	movl	-2112(%ebp),%eax
	movl	-2104(%ebp,%eax,4),%eax
	movl	%eax,-2112(%ebp)
	movl	-2112(%ebp),%eax
	incl	-1076(%ebp,%eax,4)
Lj697:
	movl	-2112(%ebp),%eax
	movl	-2104(%ebp,%eax,4),%eax
	cmpl	$0,%eax
	jge	Lj696
	jmp	Lj698
Lj698:
Lj654:
	jmp	Lj653
Lj655:
	movl	$0,-2120(%ebp)
	decl	-2120(%ebp)
	.align 2
Lj703:
	incl	-2120(%ebp)
	movl	-2120(%ebp),%eax
	movl	-1076(%ebp,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj704
	jmp	Lj705
Lj704:
	movl	-2120(%ebp),%eax
	movl	-1076(%ebp,%eax,4),%eax
	cmpl	$32,%eax
	jg	Lj706
	jmp	Lj707
Lj706:
	movl	-4(%ebp),%eax
	movb	$40,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj707:
	movl	-2120(%ebp),%eax
	movl	-1076(%ebp,%eax,4),%eax
	incb	-45(%ebp,%eax,1)
Lj705:
	cmpl	$256,-2120(%ebp)
	jl	Lj703
	movl	$32,-2120(%ebp)
	incl	-2120(%ebp)
	.align 2
Lj714:
	decl	-2120(%ebp)
	jmp	Lj716
	.align 2
Lj715:
	movl	-2120(%ebp),%eax
	subl	$2,%eax
	movl	%eax,-2124(%ebp)
	jmp	Lj721
	.align 2
Lj720:
	decl	-2124(%ebp)
Lj721:
	movl	-2124(%ebp),%eax
	movzbl	-45(%ebp,%eax,1),%eax
	testl	%eax,%eax
	je	Lj720
	jmp	Lj722
Lj722:
	movl	-2120(%ebp),%eax
	subb	$2,-45(%ebp,%eax,1)
	movl	-2120(%ebp),%eax
	decl	%eax
	incb	-45(%ebp,%eax,1)
	movl	-2124(%ebp),%eax
	incl	%eax
	addb	$2,-45(%ebp,%eax,1)
	movl	-2124(%ebp),%eax
	decb	-45(%ebp,%eax,1)
Lj716:
	movl	-2120(%ebp),%eax
	movzbl	-45(%ebp,%eax,1),%eax
	cmpl	$0,%eax
	jg	Lj715
	jmp	Lj717
Lj717:
	cmpl	$17,-2120(%ebp)
	jg	Lj714
	movl	$16,-2120(%ebp)
	jmp	Lj726
	.align 2
Lj725:
	decl	-2120(%ebp)
Lj726:
	movl	-2120(%ebp),%eax
	movzbl	-45(%ebp,%eax,1),%eax
	testl	%eax,%eax
	je	Lj725
	jmp	Lj727
Lj727:
	movl	-2120(%ebp),%eax
	decb	-45(%ebp,%eax,1)
	leal	-45(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$17,%ecx
	call	L_JINCLUDE_MEMCOPY$POINTER$POINTER$LONGINT$stub
	movl	$0,-2116(%ebp)
	movl	$1,-2120(%ebp)
	decl	-2120(%ebp)
	.align 2
Lj738:
	incl	-2120(%ebp)
	movl	$0,-2124(%ebp)
	decl	-2124(%ebp)
	.align 2
Lj741:
	incl	-2124(%ebp)
	movl	-2124(%ebp),%eax
	movl	-1076(%ebp,%eax,4),%eax
	cmpl	-2120(%ebp),%eax
	je	Lj742
	jmp	Lj743
Lj742:
	movl	-8(%ebp),%eax
	movl	-2116(%ebp),%edx
	movb	-2124(%ebp),%cl
	movb	%cl,17(%eax,%edx,1)
	incl	-2116(%ebp)
Lj743:
	cmpl	$255,-2124(%ebp)
	jl	Lj741
	cmpl	$32,-2120(%ebp)
	jl	Lj738
	movl	-8(%ebp),%eax
	movb	$0,273(%eax)
	movl	-2132(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCHUFF_FINISH_PASS_GATHER$J_COMPRESS_PTR
_JCHUFF_FINISH_PASS_GATHER$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	344(%eax),%eax
	movl	%eax,-8(%ebp)
	leal	-32(%ebp),%eax
	movl	$4,%edx
	call	L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub
	leal	-36(%ebp),%eax
	movl	$4,%edx
	call	L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	224(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj761
	decl	-12(%ebp)
	.align 2
Lj762:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	228(%eax,%edx,4),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movb	-32(%ebp,%eax,1),%al
	testb	%al,%al
	je	Lj769
	jmp	Lj770
Lj769:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	leal	84(%edx,%eax,4),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj773
	jmp	Lj774
Lj773:
	movl	-4(%ebp),%eax
	call	L_JCOMAPI_JPEG_ALLOC_HUFF_TABLE$J_COMMON_PTR$$JHUFF_TBL_PTR$stub
	movl	-28(%ebp),%edx
	movl	%eax,(%edx)
Lj774:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	76(%edx,%eax,4),%ecx
	movl	-28(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCHUFF_JPEG_GEN_OPTIMAL_TABLE$J_COMPRESS_PTR$JHUFF_TBL_PTR$TLONGTABLE$stub
	movl	-16(%ebp),%eax
	movb	$1,-32(%ebp,%eax,1)
Lj770:
	movl	-20(%ebp),%eax
	movb	-36(%ebp,%eax,1),%al
	testb	%al,%al
	je	Lj787
	jmp	Lj788
Lj787:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	100(%eax,%edx,4),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj791
	jmp	Lj792
Lj791:
	movl	-4(%ebp),%eax
	call	L_JCOMAPI_JPEG_ALLOC_HUFF_TABLE$J_COMMON_PTR$$JHUFF_TBL_PTR$stub
	movl	-28(%ebp),%edx
	movl	%eax,(%edx)
Lj792:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	92(%edx,%eax,4),%ecx
	movl	-28(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCHUFF_JPEG_GEN_OPTIMAL_TABLE$J_COMPRESS_PTR$JHUFF_TBL_PTR$TLONGTABLE$stub
	movl	-20(%ebp),%eax
	movb	$1,-36(%ebp,%eax,1)
Lj788:
	cmpl	-12(%ebp),%ebx
	jg	Lj762
Lj761:
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCHUFF_JINIT_HUFF_ENCODER$J_COMPRESS_PTR
_JCHUFF_JINIT_HUFF_ENCODER$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj806
Lj806:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$108,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,344(%eax)
	movl	-8(%ebp),%edx
	movl	L_JCHUFF_START_PASS_HUFF$J_COMPRESS_PTR$BOOLEAN$non_lazy_ptr-Lj806(%esi),%eax
	movl	%eax,(%edx)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj821:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	$0,60(%eax,%edx,4)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	$0,44(%eax,%edx,4)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	$0,92(%eax,%edx,4)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,76(%edx,%eax,4)
	cmpl	$3,-12(%ebp)
	jl	Lj821
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JCHUFF
_THREADVARLIST_JCHUFF:
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

L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub:
.indirect_symbol _JINCLUDE_MEMZERO$POINTER$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCHUFF_JPEG_MAKE_C_DERIVED_TBL$J_COMPRESS_PTR$BOOLEAN$LONGINT$C_DERIVED_TBL_PTR$stub:
.indirect_symbol _JCHUFF_JPEG_MAKE_C_DERIVED_TBL$J_COMPRESS_PTR$BOOLEAN$LONGINT$C_DERIVED_TBL_PTR
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

L_JCHUFF_DUMP_BUFFER$WORKING_STATE$$BOOLEAN$stub:
.indirect_symbol _JCHUFF_DUMP_BUFFER$WORKING_STATE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCHUFF_EMIT_BITS$WORKING_STATE$LONGWORD$LONGINT$$BOOLEAN$stub:
.indirect_symbol _JCHUFF_EMIT_BITS$WORKING_STATE$LONGWORD$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCHUFF_FLUSH_BITS$WORKING_STATE$$BOOLEAN$stub:
.indirect_symbol _JCHUFF_FLUSH_BITS$WORKING_STATE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCHUFF_EMIT_RESTART$WORKING_STATE$LONGINT$$BOOLEAN$stub:
.indirect_symbol _JCHUFF_EMIT_RESTART$WORKING_STATE$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCHUFF_ENCODE_ONE_BLOCK$crcD11B115D$stub:
.indirect_symbol _JCHUFF_ENCODE_ONE_BLOCK$crcD11B115D
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCHUFF_HTEST_ONE_BLOCK$J_COMPRESS_PTR$JBLOCK$LONGINT$TLONGTABLEPTR$TLONGTABLEPTR$stub:
.indirect_symbol _JCHUFF_HTEST_ONE_BLOCK$J_COMPRESS_PTR$JBLOCK$LONGINT$TLONGTABLEPTR$TLONGTABLEPTR
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

L_JCOMAPI_JPEG_ALLOC_HUFF_TABLE$J_COMMON_PTR$$JHUFF_TBL_PTR$stub:
.indirect_symbol _JCOMAPI_JPEG_ALLOC_HUFF_TABLE$J_COMMON_PTR$$JHUFF_TBL_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCHUFF_JPEG_GEN_OPTIMAL_TABLE$J_COMPRESS_PTR$JHUFF_TBL_PTR$TLONGTABLE$stub:
.indirect_symbol _JCHUFF_JPEG_GEN_OPTIMAL_TABLE$J_COMPRESS_PTR$JHUFF_TBL_PTR$TLONGTABLE
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
.globl	_INIT_JCHUFF_C_DERIVED_TBL_PTR
_INIT_JCHUFF_C_DERIVED_TBL_PTR:
	.byte	0
	.ascii	"\021c_derived_tbl_ptr"

.const_data
	.align 2
.globl	_RTTI_JCHUFF_C_DERIVED_TBL_PTR
_RTTI_JCHUFF_C_DERIVED_TBL_PTR:
	.byte	0
	.ascii	"\021c_derived_tbl_ptr"

.const_data
	.align 2
.globl	_INIT_JCHUFF_C_DERIVED_TBL
_INIT_JCHUFF_C_DERIVED_TBL:
	.byte	13,13
	.ascii	"c_derived_tbl"
	.long	1280,0

.const_data
	.align 2
.globl	_RTTI_JCHUFF_DEF2
_RTTI_JCHUFF_DEF2:
	.byte	12
	.ascii	"\000"
	.long	4,256
	.long	_RTTI_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_RTTI_JCHUFF_DEF3
_RTTI_JCHUFF_DEF3:
	.byte	12
	.ascii	"\000"
	.long	1,256
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_JCHUFF_C_DERIVED_TBL
_RTTI_JCHUFF_C_DERIVED_TBL:
	.byte	13,13
	.ascii	"c_derived_tbl"
	.long	1280,2
	.long	_RTTI_JCHUFF_DEF2
	.long	0
	.long	_RTTI_JCHUFF_DEF3
	.long	1024

.const_data
	.align 2
.globl	_INIT_JCHUFF_TLONGTABLE
_INIT_JCHUFF_TLONGTABLE:
	.byte	12
	.ascii	"\012TLongTable"
	.long	4,257
	.long	_INIT_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_JCHUFF_TLONGTABLE
_RTTI_JCHUFF_TLONGTABLE:
	.byte	12
	.ascii	"\012TLongTable"
	.long	4,257
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_INIT_JCHUFF_TLONGTABLEPTR
_INIT_JCHUFF_TLONGTABLEPTR:
	.byte	0
	.ascii	"\015TLongTablePtr"

.const_data
	.align 2
.globl	_RTTI_JCHUFF_TLONGTABLEPTR
_RTTI_JCHUFF_TLONGTABLEPTR:
	.byte	0
	.ascii	"\015TLongTablePtr"
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
L_JCHUFF_ENCODE_MCU_GATHER$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JCHUFF_ENCODE_MCU_GATHER$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCHUFF_FINISH_PASS_GATHER$J_COMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JCHUFF_FINISH_PASS_GATHER$J_COMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCHUFF_ENCODE_MCU_HUFF$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JCHUFF_ENCODE_MCU_HUFF$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCHUFF_FINISH_PASS_HUFF$J_COMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JCHUFF_FINISH_PASS_HUFF$J_COMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JUTILS_JPEG_NATURAL_ORDER$non_lazy_ptr:
.indirect_symbol _TC_JUTILS_JPEG_NATURAL_ORDER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCHUFF_START_PASS_HUFF$J_COMPRESS_PTR$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JCHUFF_START_PASS_HUFF$J_COMPRESS_PTR$BOOLEAN
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

