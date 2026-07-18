# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JDMARKER_GET_SOI$J_DECOMPRESS_PTR$$BOOLEAN
_JDMARKER_GET_SOI$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	cmpb	$0,12(%eax)
	jne	Lj5
	jmp	Lj6
Lj5:
	movl	-4(%ebp),%eax
	movb	$62,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj6:
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj13:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	$0,186(%eax,%edx,1)
	movl	-12(%ebp),%edx
	movb	$1,202(%eax,%edx,1)
	movl	-12(%ebp),%edx
	movb	$5,218(%eax,%edx,1)
	cmpl	$15,-12(%ebp)
	jl	Lj13
	movl	-4(%ebp),%eax
	movl	$0,236(%eax)
	movl	-4(%ebp),%eax
	movb	$0,40(%eax)
	movb	$0,250(%eax)
	movb	$0,240(%eax)
	movb	$1,241(%eax)
	movb	$1,242(%eax)
	movb	$0,243(%eax)
	movw	$1,244(%eax)
	movw	$1,246(%eax)
	movb	$0,248(%eax)
	movb	$0,249(%eax)
	movl	388(%eax),%edx
	movb	$1,12(%edx)
	movb	$1,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_GET_SOF$J_DECOMPRESS_PTR$BOOLEAN$BOOLEAN$$BOOLEAN
_JDMARKER_GET_SOF$J_DECOMPRESS_PTR$BOOLEAN$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-4(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,184(%eax)
	movl	-4(%ebp),%eax
	movb	-12(%ebp),%dl
	movb	%dl,185(%eax)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj62
	jmp	Lj63
Lj62:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj64
	jmp	Lj65
Lj64:
	movb	$0,-13(%ebp)
	jmp	Lj50
Lj65:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj63:
	decl	-44(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	%eax,-20(%ebp)
	incl	-40(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj76
	jmp	Lj77
Lj76:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj78
	jmp	Lj79
Lj78:
	movb	$0,-13(%ebp)
	jmp	Lj50
Lj79:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj77:
	decl	-44(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	addl	%eax,-20(%ebp)
	incl	-40(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj88
	jmp	Lj89
Lj88:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj90
	jmp	Lj91
Lj90:
	movb	$0,-13(%ebp)
	jmp	Lj50
Lj91:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj89:
	decl	-44(%ebp)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,176(%edx)
	incl	-40(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj102
	jmp	Lj103
Lj102:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj104
	jmp	Lj105
Lj104:
	movb	$0,-13(%ebp)
	jmp	Lj50
Lj105:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj103:
	decl	-44(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	-4(%ebp),%edx
	movl	%eax,32(%edx)
	incl	-40(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj116
	jmp	Lj117
Lj116:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj118
	jmp	Lj119
Lj118:
	movb	$0,-13(%ebp)
	jmp	Lj50
Lj119:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj117:
	decl	-44(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%eax,32(%edx)
	incl	-40(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj128
	jmp	Lj129
Lj128:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj130
	jmp	Lj131
Lj130:
	movb	$0,-13(%ebp)
	jmp	Lj50
Lj131:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj129:
	decl	-44(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	-4(%ebp),%edx
	movl	%eax,28(%edx)
	incl	-40(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj142
	jmp	Lj143
Lj142:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj144
	jmp	Lj145
Lj144:
	movb	$0,-13(%ebp)
	jmp	Lj50
Lj145:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj143:
	decl	-44(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%eax,28(%edx)
	incl	-40(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj154
	jmp	Lj155
Lj154:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj156
	jmp	Lj157
Lj156:
	movb	$0,-13(%ebp)
	jmp	Lj50
Lj157:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj155:
	decl	-44(%ebp)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,36(%edx)
	incl	-40(%ebp)
	subl	$8,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	cmpb	$0,13(%eax)
	jne	Lj168
	jmp	Lj169
Lj168:
	movl	-4(%ebp),%eax
	movb	$59,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj169:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	$0,%eax
	jbe	Lj174
	jmp	Lj177
Lj177:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	$0,%eax
	jbe	Lj174
	jmp	Lj176
Lj176:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	$0,%eax
	jle	Lj174
	jmp	Lj175
Lj174:
	movl	-4(%ebp),%eax
	movb	$33,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj175:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	imull	$3,%eax
	cmpl	-20(%ebp),%eax
	jne	Lj182
	jmp	Lj183
Lj182:
	movl	-4(%ebp),%eax
	movb	$11,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj183:
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	testl	%eax,%eax
	je	Lj188
	jmp	Lj189
Lj188:
	movl	-4(%ebp),%eax
	movl	36(%eax),%ecx
	imull	$84,%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	-4(%ebp),%edx
	movl	%eax,180(%edx)
Lj189:
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%ebx
	decl	%ebx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj201
	decl	-28(%ebp)
	.align 2
Lj202:
	incl	-28(%ebp)
	movl	-32(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj205
	jmp	Lj206
Lj205:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj207
	jmp	Lj208
Lj207:
	movb	$0,-13(%ebp)
	jmp	Lj50
Lj208:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj206:
	decl	-44(%ebp)
	movl	-32(%ebp),%edx
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,(%edx)
	incl	-40(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj219
	jmp	Lj220
Lj219:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj221
	jmp	Lj222
Lj221:
	movb	$0,-13(%ebp)
	jmp	Lj50
Lj222:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj220:
	decl	-44(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-24(%ebp)
	incl	-40(%ebp)
	movl	-24(%ebp),%eax
	shrl	$4,%eax
	andl	$15,%eax
	movl	-32(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-24(%ebp),%eax
	andl	$15,%eax
	movl	-32(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj237
	jmp	Lj238
Lj237:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj239
	jmp	Lj240
Lj239:
	movb	$0,-13(%ebp)
	jmp	Lj50
Lj240:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj238:
	decl	-44(%ebp)
	movl	-32(%ebp),%edx
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,16(%edx)
	incl	-40(%ebp)
	addl	$84,-32(%ebp)
	cmpl	-28(%ebp),%ebx
	jg	Lj202
Lj201:
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	movb	$1,13(%eax)
	movl	-36(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,(%eax)
	movl	-36(%ebp),%edx
	movl	-44(%ebp),%eax
	movl	%eax,4(%edx)
	movb	$1,-13(%ebp)
Lj50:
	movb	-13(%ebp),%al
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_GET_SOS$J_DECOMPRESS_PTR$$BOOLEAN
_JDMARKER_GET_SOS$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-40(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	movb	13(%eax),%al
	testb	%al,%al
	je	Lj267
	jmp	Lj268
Lj267:
	movl	-4(%ebp),%eax
	movb	$63,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj268:
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj273
	jmp	Lj274
Lj273:
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj275
	jmp	Lj276
Lj275:
	movb	$0,-5(%ebp)
	jmp	Lj259
Lj276:
	movl	-40(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-40(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-48(%ebp)
Lj274:
	decl	-48(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	%eax,-12(%ebp)
	incl	-44(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj287
	jmp	Lj288
Lj287:
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj289
	jmp	Lj290
Lj289:
	movb	$0,-5(%ebp)
	jmp	Lj259
Lj290:
	movl	-40(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-40(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-48(%ebp)
Lj288:
	decl	-48(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%eax
	addl	%eax,-12(%ebp)
	incl	-44(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj299
	jmp	Lj300
Lj299:
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj301
	jmp	Lj302
Lj301:
	movb	$0,-5(%ebp)
	jmp	Lj259
Lj302:
	movl	-40(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-40(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-48(%ebp)
Lj300:
	decl	-48(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-24(%ebp)
	incl	-44(%ebp)
	movl	-24(%ebp),%eax
	shll	$1,%eax
	addl	$6,%eax
	cmpl	-12(%ebp),%eax
	jne	Lj313
	jmp	Lj316
Lj316:
	movl	-24(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj313
	jmp	Lj315
Lj315:
	movl	-24(%ebp),%eax
	cmpl	$4,%eax
	jg	Lj313
	jmp	Lj314
Lj313:
	movl	-4(%ebp),%eax
	movb	$11,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj314:
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,276(%eax)
	movl	-24(%ebp),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj324
	decl	-16(%ebp)
	.align 2
Lj325:
	incl	-16(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj326
	jmp	Lj327
Lj326:
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj328
	jmp	Lj329
Lj328:
	movb	$0,-5(%ebp)
	jmp	Lj259
Lj329:
	movl	-40(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-40(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-48(%ebp)
Lj327:
	decl	-48(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-32(%ebp)
	incl	-44(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj340
	jmp	Lj341
Lj340:
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj342
	jmp	Lj343
Lj342:
	movb	$0,-5(%ebp)
	jmp	Lj259
Lj343:
	movl	-40(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-40(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-48(%ebp)
Lj341:
	decl	-48(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-28(%ebp)
	incl	-44(%ebp)
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj357
	decl	-20(%ebp)
	.align 2
Lj358:
	incl	-20(%ebp)
	movl	-36(%ebp),%edx
	movl	(%edx),%edx
	cmpl	-32(%ebp),%edx
	je	Lj359
	jmp	Lj360
Lj359:
	jmp	Lj361
Lj360:
	addl	$84,-36(%ebp)
	cmpl	-20(%ebp),%eax
	jg	Lj358
Lj357:
	movl	-32(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$5,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj361:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	-36(%ebp),%ecx
	movl	%ecx,280(%eax,%edx,4)
	movl	-28(%ebp),%eax
	shrl	$4,%eax
	andl	$15,%eax
	movl	-36(%ebp),%edx
	movl	%eax,20(%edx)
	movl	-28(%ebp),%eax
	andl	$15,%eax
	movl	-36(%ebp),%edx
	movl	%eax,24(%edx)
	cmpl	-16(%ebp),%ebx
	jg	Lj325
Lj324:
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj374
	jmp	Lj375
Lj374:
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj376
	jmp	Lj377
Lj376:
	movb	$0,-5(%ebp)
	jmp	Lj259
Lj377:
	movl	-40(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-40(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-48(%ebp)
Lj375:
	decl	-48(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-28(%ebp)
	incl	-44(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,348(%eax)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj390
	jmp	Lj391
Lj390:
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj392
	jmp	Lj393
Lj392:
	movb	$0,-5(%ebp)
	jmp	Lj259
Lj393:
	movl	-40(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-40(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-48(%ebp)
Lj391:
	decl	-48(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-28(%ebp)
	incl	-44(%ebp)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,352(%edx)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj406
	jmp	Lj407
Lj406:
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj408
	jmp	Lj409
Lj408:
	movb	$0,-5(%ebp)
	jmp	Lj259
Lj409:
	movl	-40(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-40(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-48(%ebp)
Lj407:
	decl	-48(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-28(%ebp)
	incl	-44(%ebp)
	movl	-28(%ebp),%eax
	shrl	$4,%eax
	andl	$15,%eax
	movl	-4(%ebp),%edx
	movl	%eax,356(%edx)
	movl	-28(%ebp),%eax
	andl	$15,%eax
	movl	-4(%ebp),%edx
	movl	%eax,360(%edx)
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	movl	$0,16(%eax)
	movl	-4(%ebp),%eax
	incl	108(%eax)
	movl	-40(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,(%eax)
	movl	-40(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	%eax,4(%edx)
	movb	$1,-5(%ebp)
Lj259:
	movb	-5(%ebp),%al
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_SKIP_VARIABLE$J_DECOMPRESS_PTR$$BOOLEAN
_JDMARKER_SKIP_VARIABLE$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj440
	jmp	Lj441
Lj440:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj442
	jmp	Lj443
Lj442:
	movb	$0,-5(%ebp)
	jmp	Lj432
Lj443:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-24(%ebp)
Lj441:
	decl	-24(%ebp)
	movl	-20(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	%eax,-12(%ebp)
	incl	-20(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj454
	jmp	Lj455
Lj454:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj456
	jmp	Lj457
Lj456:
	movb	$0,-5(%ebp)
	jmp	Lj432
Lj457:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-24(%ebp)
Lj455:
	decl	-24(%ebp)
	movl	-20(%ebp),%eax
	movzbl	(%eax),%eax
	addl	%eax,-12(%ebp)
	incl	-20(%ebp)
	subl	$2,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj470
	jmp	Lj471
Lj470:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%ecx
	movl	16(%ecx),%ecx
	call	*%ecx
Lj471:
	movb	$1,-5(%ebp)
Lj432:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_GET_DAC$J_DECOMPRESS_PTR$$BOOLEAN
_JDMARKER_GET_DAC$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_JDMARKER_SKIP_VARIABLE$J_DECOMPRESS_PTR$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_GET_DHT$J_DECOMPRESS_PTR$$BOOLEAN
_JDMARKER_GET_DHT$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-320(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-308(%ebp)
	movl	-308(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-312(%ebp)
	movl	-308(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-316(%ebp)
	movl	-316(%ebp),%eax
	testl	%eax,%eax
	je	Lj492
	jmp	Lj493
Lj492:
	movl	-4(%ebp),%eax
	movl	-308(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj494
	jmp	Lj495
Lj494:
	movb	$0,-5(%ebp)
	jmp	Lj484
Lj495:
	movl	-308(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-312(%ebp)
	movl	-308(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-316(%ebp)
Lj493:
	decl	-316(%ebp)
	movl	-312(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	%eax,-12(%ebp)
	incl	-312(%ebp)
	movl	-316(%ebp),%eax
	testl	%eax,%eax
	je	Lj506
	jmp	Lj507
Lj506:
	movl	-4(%ebp),%eax
	movl	-308(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj508
	jmp	Lj509
Lj508:
	movb	$0,-5(%ebp)
	jmp	Lj484
Lj509:
	movl	-308(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-312(%ebp)
	movl	-308(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-316(%ebp)
Lj507:
	decl	-316(%ebp)
	movl	-312(%ebp),%eax
	movzbl	(%eax),%eax
	addl	%eax,-12(%ebp)
	incl	-312(%ebp)
	subl	$2,-12(%ebp)
	jmp	Lj519
	.align 2
Lj518:
	movl	-316(%ebp),%eax
	testl	%eax,%eax
	je	Lj521
	jmp	Lj522
Lj521:
	movl	-4(%ebp),%eax
	movl	-308(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj523
	jmp	Lj524
Lj523:
	movb	$0,-5(%ebp)
	jmp	Lj484
Lj524:
	movl	-308(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-312(%ebp)
	movl	-308(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-316(%ebp)
Lj522:
	decl	-316(%ebp)
	movl	-312(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-296(%ebp)
	incl	-312(%ebp)
	movb	$0,-29(%ebp)
	movl	$0,-300(%ebp)
	movl	$1,-292(%ebp)
	decl	-292(%ebp)
	.align 2
Lj541:
	incl	-292(%ebp)
	movl	-316(%ebp),%eax
	testl	%eax,%eax
	je	Lj542
	jmp	Lj543
Lj542:
	movl	-4(%ebp),%eax
	movl	-308(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj544
	jmp	Lj545
Lj544:
	movb	$0,-5(%ebp)
	jmp	Lj484
Lj545:
	movl	-308(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-312(%ebp)
	movl	-308(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-316(%ebp)
Lj543:
	decl	-316(%ebp)
	movl	-292(%ebp),%edx
	movl	-312(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-29(%ebp,%edx,1)
	incl	-312(%ebp)
	movl	-292(%ebp),%eax
	movzbl	-29(%ebp,%eax,1),%eax
	addl	%eax,-300(%ebp)
	cmpl	$16,-292(%ebp)
	jl	Lj541
	subl	$17,-12(%ebp)
	movl	-300(%ebp),%eax
	cmpl	$256,%eax
	jg	Lj556
	jmp	Lj558
Lj558:
	movl	-300(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj556
	jmp	Lj557
Lj556:
	movl	-4(%ebp),%eax
	movb	$8,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj557:
	movl	-300(%ebp),%ebx
	decl	%ebx
	movl	$0,-292(%ebp)
	cmpl	-292(%ebp),%ebx
	jl	Lj564
	decl	-292(%ebp)
	.align 2
Lj565:
	incl	-292(%ebp)
	movl	-316(%ebp),%eax
	testl	%eax,%eax
	je	Lj566
	jmp	Lj567
Lj566:
	movl	-4(%ebp),%eax
	movl	-308(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj568
	jmp	Lj569
Lj568:
	movb	$0,-5(%ebp)
	jmp	Lj484
Lj569:
	movl	-308(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-312(%ebp)
	movl	-308(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-316(%ebp)
Lj567:
	decl	-316(%ebp)
	movl	-292(%ebp),%edx
	movl	-312(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-285(%ebp,%edx,1)
	incl	-312(%ebp)
	cmpl	-292(%ebp),%ebx
	jg	Lj565
Lj564:
	movl	-300(%ebp),%eax
	subl	%eax,-12(%ebp)
	movl	-296(%ebp),%eax
	andl	$16,%eax
	testl	%eax,%eax
	jne	Lj580
	jmp	Lj581
Lj580:
	subl	$16,-296(%ebp)
	movl	-4(%ebp),%eax
	movl	-296(%ebp),%edx
	leal	160(%eax,%edx,4),%eax
	movl	%eax,-304(%ebp)
	jmp	Lj584
Lj581:
	movl	-4(%ebp),%edx
	movl	-296(%ebp),%eax
	leal	144(%edx,%eax,4),%eax
	movl	%eax,-304(%ebp)
Lj584:
	movl	-296(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj587
	jmp	Lj589
Lj589:
	movl	-296(%ebp),%eax
	cmpl	$4,%eax
	jge	Lj587
	jmp	Lj588
Lj587:
	movl	-296(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$31,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj588:
	movl	-304(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj596
	jmp	Lj597
Lj596:
	movl	-4(%ebp),%eax
	call	L_JCOMAPI_JPEG_ALLOC_HUFF_TABLE$J_COMMON_PTR$$JHUFF_TBL_PTR$stub
	movl	-304(%ebp),%edx
	movl	%eax,(%edx)
Lj597:
	leal	-29(%ebp),%edx
	movl	-304(%ebp),%eax
	movl	(%eax),%eax
	movl	$17,%ecx
	call	L_JINCLUDE_MEMCOPY$POINTER$POINTER$LONGINT$stub
	leal	-285(%ebp),%edx
	movl	-304(%ebp),%eax
	movl	(%eax),%eax
	leal	17(%eax),%eax
	movl	$256,%ecx
	call	L_JINCLUDE_MEMCOPY$POINTER$POINTER$LONGINT$stub
Lj519:
	movl	-12(%ebp),%eax
	cmpl	$16,%eax
	jg	Lj518
	jmp	Lj520
Lj520:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj614
	jmp	Lj615
Lj614:
	movl	-4(%ebp),%eax
	movb	$11,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj615:
	movl	-308(%ebp),%eax
	movl	-312(%ebp),%edx
	movl	%edx,(%eax)
	movl	-308(%ebp),%eax
	movl	-316(%ebp),%edx
	movl	%edx,4(%eax)
	movb	$1,-5(%ebp)
Lj484:
	movb	-5(%ebp),%al
	movl	-320(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_GET_DQT$J_DECOMPRESS_PTR$$BOOLEAN
_JDMARKER_GET_DQT$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	call	Lj627
Lj627:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj634
	jmp	Lj635
Lj634:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj636
	jmp	Lj637
Lj636:
	movb	$0,-5(%ebp)
	jmp	Lj626
Lj637:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj635:
	decl	-44(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	%eax,-12(%ebp)
	incl	-40(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj648
	jmp	Lj649
Lj648:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj650
	jmp	Lj651
Lj650:
	movb	$0,-5(%ebp)
	jmp	Lj626
Lj651:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj649:
	decl	-44(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	addl	%eax,-12(%ebp)
	incl	-40(%ebp)
	subl	$2,-12(%ebp)
	jmp	Lj661
	.align 2
Lj660:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj663
	jmp	Lj664
Lj663:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj665
	jmp	Lj666
Lj665:
	movb	$0,-5(%ebp)
	jmp	Lj626
Lj666:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj664:
	decl	-44(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-16(%ebp)
	incl	-40(%ebp)
	movl	-16(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,-24(%ebp)
	movl	-16(%ebp),%eax
	andl	$15,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$4,%eax
	jge	Lj681
	jmp	Lj682
Lj681:
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$32,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj682:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	128(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj689
	jmp	Lj690
Lj689:
	movl	-4(%ebp),%eax
	call	L_JCOMAPI_JPEG_ALLOC_QUANT_TABLE$J_COMMON_PTR$$JQUANT_TBL_PTR$stub
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	%eax,128(%edx,%ecx,4)
Lj690:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	128(%edx,%eax,4),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj699:
	incl	-20(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj700
	jmp	Lj701
Lj700:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj702
	jmp	Lj703
Lj702:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj704
	jmp	Lj705
Lj704:
	movb	$0,-5(%ebp)
	jmp	Lj626
Lj705:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj703:
	decl	-44(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	%eax,-28(%ebp)
	incl	-40(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj716
	jmp	Lj717
Lj716:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj718
	jmp	Lj719
Lj718:
	movb	$0,-5(%ebp)
	jmp	Lj626
Lj719:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj717:
	decl	-44(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	addl	%eax,-28(%ebp)
	incl	-40(%ebp)
	jmp	Lj728
Lj701:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj729
	jmp	Lj730
Lj729:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj731
	jmp	Lj732
Lj731:
	movb	$0,-5(%ebp)
	jmp	Lj626
Lj732:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj730:
	decl	-44(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-28(%ebp)
	incl	-40(%ebp)
Lj728:
	movl	-32(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	L_TC_JUTILS_JPEG_NATURAL_ORDER$non_lazy_ptr-Lj627(%ebx),%edx
	movl	(%edx,%eax,4),%edx
	movw	-28(%ebp),%ax
	movw	%ax,(%ecx,%edx,2)
	cmpl	$63,-20(%ebp)
	jl	Lj699
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	108(%eax),%eax
	cmpl	$2,%eax
	jge	Lj745
	jmp	Lj746
Lj745:
	movl	$0,-20(%ebp)
	jmp	Lj750
	.align 2
Lj749:
	addl	$8,-20(%ebp)
Lj750:
	movl	-20(%ebp),%eax
	cmpl	$63,%eax
	jl	Lj749
	jmp	Lj751
Lj751:
Lj746:
	subl	$65,-12(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj752
	jmp	Lj753
Lj752:
	subl	$64,-12(%ebp)
Lj753:
Lj661:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj660
	jmp	Lj662
Lj662:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj754
	jmp	Lj755
Lj754:
	movl	-4(%ebp),%eax
	movb	$11,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj755:
	movl	-36(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,(%edx)
	movl	-36(%ebp),%edx
	movl	-44(%ebp),%eax
	movl	%eax,4(%edx)
	movb	$1,-5(%ebp)
Lj626:
	movb	-5(%ebp),%al
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_GET_DRI$J_DECOMPRESS_PTR$$BOOLEAN
_JDMARKER_GET_DRI$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj774
	jmp	Lj775
Lj774:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj776
	jmp	Lj777
Lj776:
	movb	$0,-5(%ebp)
	jmp	Lj766
Lj777:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-28(%ebp)
Lj775:
	decl	-28(%ebp)
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	%eax,-12(%ebp)
	incl	-24(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj788
	jmp	Lj789
Lj788:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj790
	jmp	Lj791
Lj790:
	movb	$0,-5(%ebp)
	jmp	Lj766
Lj791:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-28(%ebp)
Lj789:
	decl	-28(%ebp)
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	addl	%eax,-12(%ebp)
	incl	-24(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$4,%eax
	jne	Lj800
	jmp	Lj801
Lj800:
	movl	-4(%ebp),%eax
	movb	$11,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj801:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj806
	jmp	Lj807
Lj806:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj808
	jmp	Lj809
Lj808:
	movb	$0,-5(%ebp)
	jmp	Lj766
Lj809:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-28(%ebp)
Lj807:
	decl	-28(%ebp)
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	%eax,-16(%ebp)
	incl	-24(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj820
	jmp	Lj821
Lj820:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj822
	jmp	Lj823
Lj822:
	movb	$0,-5(%ebp)
	jmp	Lj766
Lj823:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-28(%ebp)
Lj821:
	decl	-28(%ebp)
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	addl	%eax,-16(%ebp)
	incl	-24(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,236(%edx)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,(%eax)
	movl	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,4(%edx)
	movb	$1,-5(%ebp)
Lj766:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_EXAMINE_APP0$J_DECOMPRESS_PTR$array_of_BYTE$LONGWORD$LONGINT
_JDMARKER_EXAMINE_APP0$J_DECOMPRESS_PTR$array_of_BYTE$LONGWORD$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	12(%ebp),%eax
	cmpl	$14,%eax
	jae	Lj848
	jmp	Lj843
Lj848:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$74,%eax
	je	Lj847
	jmp	Lj843
Lj847:
	movl	-8(%ebp),%eax
	movzbl	1(%eax),%eax
	cmpl	$70,%eax
	je	Lj846
	jmp	Lj843
Lj846:
	movl	-8(%ebp),%eax
	movzbl	2(%eax),%eax
	cmpl	$73,%eax
	je	Lj845
	jmp	Lj843
Lj845:
	movl	-8(%ebp),%eax
	movzbl	3(%eax),%eax
	cmpl	$70,%eax
	je	Lj844
	jmp	Lj843
Lj844:
	movl	-8(%ebp),%eax
	movzbl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj842
	jmp	Lj843
Lj842:
	movl	-4(%ebp),%eax
	movb	$1,240(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	5(%eax),%al
	movb	%al,241(%edx)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	6(%eax),%al
	movb	%al,242(%edx)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	7(%eax),%al
	movb	%al,243(%edx)
	movl	-8(%ebp),%eax
	movzbl	8(%eax),%eax
	shll	$8,%eax
	movl	-8(%ebp),%edx
	movzbl	9(%edx),%edx
	addl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,244(%edx)
	movl	-8(%ebp),%eax
	movzbl	10(%eax),%eax
	shll	$8,%eax
	movl	-8(%ebp),%edx
	movzbl	11(%edx),%edx
	addl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,246(%edx)
	movl	-4(%ebp),%eax
	movzbl	241(%eax),%eax
	cmpl	$1,%eax
	jne	Lj861
	jmp	Lj862
Lj861:
	movl	-4(%ebp),%eax
	movzbl	242(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movzbl	241(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$120,%dl
	call	L_JERROR_WARNMS2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub
Lj862:
	jmp	Lj871
Lj843:
	movl	12(%ebp),%eax
	cmpl	$6,%eax
	jae	Lj878
	jmp	Lj873
Lj878:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$74,%eax
	je	Lj877
	jmp	Lj873
Lj877:
	movl	-8(%ebp),%eax
	movzbl	1(%eax),%eax
	cmpl	$70,%eax
	je	Lj876
	jmp	Lj873
Lj876:
	movl	-8(%ebp),%eax
	movzbl	2(%eax),%eax
	cmpl	$88,%eax
	je	Lj875
	jmp	Lj873
Lj875:
	movl	-8(%ebp),%eax
	movzbl	3(%eax),%eax
	cmpl	$88,%eax
	je	Lj874
	jmp	Lj873
Lj874:
	movl	-8(%ebp),%eax
	movzbl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj872
	jmp	Lj873
Lj872:
	jmp	Lj879
Lj873:
Lj879:
Lj871:
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_EXAMINE_APP14$J_DECOMPRESS_PTR$array_of_BYTE$LONGWORD$LONGINT
_JDMARKER_EXAMINE_APP14$J_DECOMPRESS_PTR$array_of_BYTE$LONGWORD$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	12(%ebp),%eax
	cmpl	$12,%eax
	jae	Lj888
	jmp	Lj883
Lj888:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$65,%eax
	je	Lj887
	jmp	Lj883
Lj887:
	movl	-8(%ebp),%eax
	movzbl	1(%eax),%eax
	cmpl	$100,%eax
	je	Lj886
	jmp	Lj883
Lj886:
	movl	-8(%ebp),%eax
	movzbl	2(%eax),%eax
	cmpl	$111,%eax
	je	Lj885
	jmp	Lj883
Lj885:
	movl	-8(%ebp),%eax
	movzbl	3(%eax),%eax
	cmpl	$98,%eax
	je	Lj884
	jmp	Lj883
Lj884:
	movl	-8(%ebp),%eax
	movzbl	4(%eax),%eax
	cmpl	$101,%eax
	je	Lj882
	jmp	Lj883
Lj882:
	movl	-8(%ebp),%eax
	movzbl	11(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,248(%eax)
	movl	-4(%ebp),%eax
	movb	-16(%ebp),%dl
	movb	%dl,249(%eax)
	jmp	Lj895
Lj883:
Lj895:
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_GET_INTERESTING_APPN$J_DECOMPRESS_PTR$$BOOLEAN
_JDMARKER_GET_INTERESTING_APPN$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-40(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj904
	jmp	Lj905
Lj904:
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj906
	jmp	Lj907
Lj906:
	movb	$0,-5(%ebp)
	jmp	Lj896
Lj907:
	movl	-40(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-40(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-48(%ebp)
Lj905:
	decl	-48(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	%eax,-12(%ebp)
	incl	-44(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj918
	jmp	Lj919
Lj918:
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj920
	jmp	Lj921
Lj920:
	movb	$0,-5(%ebp)
	jmp	Lj896
Lj921:
	movl	-40(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-40(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-48(%ebp)
Lj919:
	decl	-48(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%eax
	addl	%eax,-12(%ebp)
	incl	-44(%ebp)
	subl	$2,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$14,%eax
	jge	Lj930
	jmp	Lj931
Lj930:
	movl	$14,-36(%ebp)
	jmp	Lj934
Lj931:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj935
	jmp	Lj936
Lj935:
	movl	-12(%ebp),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj939
Lj936:
	movl	$0,-36(%ebp)
Lj939:
Lj934:
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj942
	jmp	Lj943
Lj942:
	movl	-36(%ebp),%ebx
	decl	%ebx
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%ebx
	jb	Lj945
	decl	-32(%ebp)
	.align 2
Lj946:
	incl	-32(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj947
	jmp	Lj948
Lj947:
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj949
	jmp	Lj950
Lj949:
	movb	$0,-5(%ebp)
	jmp	Lj896
Lj950:
	movl	-40(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-40(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-48(%ebp)
Lj948:
	decl	-48(%ebp)
	movl	-32(%ebp),%edx
	movl	-44(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-26(%ebp,%edx,1)
	incl	-44(%ebp)
	cmpl	-32(%ebp),%ebx
	ja	Lj946
Lj945:
Lj943:
	movl	-36(%ebp),%eax
	subl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	cmpl	$224,%eax
	jl	Lj962
	subl	$224,%eax
	je	Lj963
	subl	$14,%eax
	je	Lj964
	jmp	Lj962
Lj963:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-36(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-26(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$13,%ecx
	call	L_JDMARKER_EXAMINE_APP0$J_DECOMPRESS_PTR$array_of_BYTE$LONGWORD$LONGINT$stub
	jmp	Lj961
Lj964:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-36(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-26(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$13,%ecx
	call	L_JDMARKER_EXAMINE_APP14$J_DECOMPRESS_PTR$array_of_BYTE$LONGWORD$LONGINT$stub
	jmp	Lj961
Lj962:
	movl	-4(%ebp),%eax
	movl	364(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$69,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj961:
	movl	-40(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,(%eax)
	movl	-40(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj995
	jmp	Lj996
Lj995:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%ecx
	movl	16(%ecx),%ecx
	call	*%ecx
Lj996:
	movb	$1,-5(%ebp)
Lj896:
	movb	-5(%ebp),%al
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_SAVE_MARKER$J_DECOMPRESS_PTR$$BOOLEAN
_JDMARKER_SAVE_MARKER$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	160(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-32(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1017
	jmp	Lj1018
Lj1017:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj1019
	jmp	Lj1020
Lj1019:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj1021
	jmp	Lj1022
Lj1021:
	movb	$0,-5(%ebp)
	jmp	Lj1003
Lj1022:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj1020:
	decl	-44(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	%eax,-32(%ebp)
	incl	-40(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj1033
	jmp	Lj1034
Lj1033:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj1035
	jmp	Lj1036
Lj1035:
	movb	$0,-5(%ebp)
	jmp	Lj1003
Lj1036:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj1034:
	decl	-44(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	addl	%eax,-32(%ebp)
	incl	-40(%ebp)
	subl	$2,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1045
	jmp	Lj1046
Lj1045:
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	cmpl	$254,%eax
	je	Lj1047
	jmp	Lj1048
Lj1047:
	movl	-12(%ebp),%eax
	movl	92(%eax),%eax
	movl	%eax,-48(%ebp)
	jmp	Lj1051
Lj1048:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	subl	$224,%eax
	movl	96(%edx,%eax,4),%eax
	movl	%eax,-48(%ebp)
Lj1051:
	movl	-32(%ebp),%eax
	cmpl	-48(%ebp),%eax
	jb	Lj1054
	jmp	Lj1055
Lj1054:
	movl	-32(%ebp),%eax
	movl	%eax,-48(%ebp)
Lj1055:
	movl	-48(%ebp),%ecx
	addl	$20,%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	$0,(%eax)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	364(%eax),%al
	movb	%al,4(%edx)
	movl	-16(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-16(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-16(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,16(%edx)
	movl	-16(%ebp),%eax
	addl	$20,16(%eax)
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,160(%eax)
	movl	-12(%ebp),%eax
	movl	$0,164(%eax)
	movl	$0,-20(%ebp)
	movl	-48(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj1086
Lj1046:
	movl	$0,-24(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-28(%ebp)
Lj1086:
	jmp	Lj1093
Lj1018:
	movl	-12(%ebp),%eax
	movl	164(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-20(%ebp),%eax
	imull	$2147483647,%eax
	addl	%eax,-28(%ebp)
Lj1093:
	jmp	Lj1101
	.align 2
Lj1100:
	movl	-36(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,(%edx)
	movl	-36(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,164(%eax)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj1109
	jmp	Lj1110
Lj1109:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj1111
	jmp	Lj1112
Lj1111:
	movb	$0,-5(%ebp)
	jmp	Lj1003
Lj1112:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj1110:
	jmp	Lj1122
	.align 2
Lj1121:
	movl	-28(%ebp),%edx
	movl	-40(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-28(%ebp)
	incl	-40(%ebp)
	decl	-44(%ebp)
	incl	-20(%ebp)
Lj1122:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj1126
	jmp	Lj1123
Lj1126:
	movl	-44(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1121
	jmp	Lj1123
Lj1123:
Lj1101:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj1100
	jmp	Lj1102
Lj1102:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1127
	jmp	Lj1128
Lj1127:
	movl	-4(%ebp),%eax
	movl	252(%eax),%eax
	testl	%eax,%eax
	je	Lj1129
	jmp	Lj1130
Lj1129:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,252(%eax)
	jmp	Lj1133
Lj1130:
	movl	-4(%ebp),%eax
	movl	252(%eax),%eax
	movl	%eax,-52(%ebp)
	jmp	Lj1137
	.align 2
Lj1136:
	movl	-52(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-52(%ebp)
Lj1137:
	movl	-52(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj1136
	jmp	Lj1138
Lj1138:
	movl	-52(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
Lj1133:
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-32(%ebp)
Lj1128:
	movl	-12(%ebp),%eax
	movl	$0,160(%eax)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	cmpl	$224,%eax
	jl	Lj1150
	subl	$224,%eax
	je	Lj1151
	subl	$14,%eax
	je	Lj1152
	jmp	Lj1150
Lj1151:
	movl	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2147483646,%ecx
	call	L_JDMARKER_EXAMINE_APP0$J_DECOMPRESS_PTR$array_of_BYTE$LONGWORD$LONGINT$stub
	jmp	Lj1149
Lj1152:
	movl	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2147483646,%ecx
	call	L_JDMARKER_EXAMINE_APP14$J_DECOMPRESS_PTR$array_of_BYTE$LONGWORD$LONGINT$stub
	jmp	Lj1149
Lj1150:
Lj1149:
	movl	-36(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,(%edx)
	movl	-36(%ebp),%edx
	movl	-44(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1177
	jmp	Lj1178
Lj1177:
	movl	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%ecx
	movl	16(%ecx),%ecx
	call	*%ecx
Lj1178:
	movb	$1,-5(%ebp)
Lj1003:
	movb	-5(%ebp),%al
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_NEXT_MARKER$J_DECOMPRESS_PTR$$BOOLEAN
_JDMARKER_NEXT_MARKER$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-24(%ebp)
	.align 2
Lj1193:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj1196
	jmp	Lj1197
Lj1196:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj1198
	jmp	Lj1199
Lj1198:
	movb	$0,-5(%ebp)
	jmp	Lj1185
Lj1199:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-24(%ebp)
Lj1197:
	decl	-24(%ebp)
	movl	-20(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-12(%ebp)
	incl	-20(%ebp)
	jmp	Lj1211
	.align 2
Lj1210:
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	incl	20(%eax)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj1217
	jmp	Lj1218
Lj1217:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj1219
	jmp	Lj1220
Lj1219:
	movb	$0,-5(%ebp)
	jmp	Lj1185
Lj1220:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-24(%ebp)
Lj1218:
	decl	-24(%ebp)
	movl	-20(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-12(%ebp)
	incl	-20(%ebp)
Lj1211:
	movl	-12(%ebp),%eax
	cmpl	$255,%eax
	jne	Lj1210
	jmp	Lj1212
Lj1212:
	.align 2
Lj1231:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj1234
	jmp	Lj1235
Lj1234:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj1236
	jmp	Lj1237
Lj1236:
	movb	$0,-5(%ebp)
	jmp	Lj1185
Lj1237:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-24(%ebp)
Lj1235:
	decl	-24(%ebp)
	movl	-20(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-12(%ebp)
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$255,%eax
	jne	Lj1233
	jmp	Lj1231
Lj1233:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1248
	jmp	Lj1249
Lj1248:
	jmp	Lj1195
Lj1249:
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	addl	$2,20(%eax)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,4(%eax)
	jmp	Lj1193
Lj1195:
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	jne	Lj1254
	jmp	Lj1255
Lj1254:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$117,%dl
	call	L_JERROR_WARNMS2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	movl	$0,20(%eax)
Lj1255:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,364(%eax)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,(%edx)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,4(%eax)
	movb	$1,-5(%ebp)
Lj1185:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_FIRST_MARKER$J_DECOMPRESS_PTR$$BOOLEAN
_JDMARKER_FIRST_MARKER$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj1282
	jmp	Lj1283
Lj1282:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj1284
	jmp	Lj1285
Lj1284:
	movb	$0,-5(%ebp)
	jmp	Lj1274
Lj1285:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-28(%ebp)
Lj1283:
	decl	-28(%ebp)
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-12(%ebp)
	incl	-24(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj1296
	jmp	Lj1297
Lj1296:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj1298
	jmp	Lj1299
Lj1298:
	movb	$0,-5(%ebp)
	jmp	Lj1274
Lj1299:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-28(%ebp)
Lj1297:
	decl	-28(%ebp)
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-16(%ebp)
	incl	-24(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$255,%eax
	jne	Lj1310
	jmp	Lj1312
Lj1312:
	movl	-16(%ebp),%eax
	cmpl	$216,%eax
	jne	Lj1310
	jmp	Lj1311
Lj1310:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$54,%dl
	call	L_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub
Lj1311:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,364(%eax)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,(%eax)
	movl	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,4(%edx)
	movb	$1,-5(%ebp)
Lj1274:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_READ_MARKERS$J_DECOMPRESS_PTR$$LONGINT
_JDMARKER_READ_MARKERS$J_DECOMPRESS_PTR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1330
Lj1330:
	popl	%ebx
	movl	%eax,-4(%ebp)
	.align 2
Lj1331:
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	testl	%eax,%eax
	je	Lj1334
	jmp	Lj1335
Lj1334:
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	movb	12(%eax),%al
	testb	%al,%al
	je	Lj1336
	jmp	Lj1337
Lj1336:
	movl	-4(%ebp),%eax
	call	L_JDMARKER_FIRST_MARKER$J_DECOMPRESS_PTR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1338
	jmp	Lj1339
Lj1338:
	movl	$0,-8(%ebp)
	jmp	Lj1329
Lj1339:
	jmp	Lj1344
Lj1337:
	movl	-4(%ebp),%eax
	call	L_JDMARKER_NEXT_MARKER$J_DECOMPRESS_PTR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1345
	jmp	Lj1346
Lj1345:
	movl	$0,-8(%ebp)
	jmp	Lj1329
Lj1346:
Lj1344:
Lj1335:
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	cmpl	$1,%eax
	jl	Lj1352
	decl	%eax
	je	Lj1367
	subl	$191,%eax
	jl	Lj1352
	subl	$1,%eax
	jle	Lj1354
	decl	%eax
	je	Lj1355
	decl	%eax
	je	Lj1358
	decl	%eax
	je	Lj1362
	decl	%eax
	jl	Lj1352
	subl	$3,%eax
	jle	Lj1358
	decl	%eax
	je	Lj1356
	decl	%eax
	je	Lj1357
	decl	%eax
	je	Lj1358
	decl	%eax
	je	Lj1361
	decl	%eax
	jl	Lj1352
	subl	$2,%eax
	jle	Lj1358
	decl	%eax
	subl	$7,%eax
	jle	Lj1367
	decl	%eax
	je	Lj1353
	decl	%eax
	je	Lj1360
	decl	%eax
	je	Lj1359
	decl	%eax
	je	Lj1363
	decl	%eax
	je	Lj1368
	decl	%eax
	je	Lj1364
	subl	$3,%eax
	jl	Lj1352
	subl	$15,%eax
	jle	Lj1365
	subl	$15,%eax
	je	Lj1366
	jmp	Lj1352
Lj1353:
	movl	-4(%ebp),%eax
	call	L_JDMARKER_GET_SOI$J_DECOMPRESS_PTR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1369
	jmp	Lj1370
Lj1369:
	movl	$0,-8(%ebp)
	jmp	Lj1329
Lj1370:
	jmp	Lj1351
Lj1354:
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movb	$0,%dl
	call	L_JDMARKER_GET_SOF$J_DECOMPRESS_PTR$BOOLEAN$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1375
	jmp	Lj1376
Lj1375:
	movl	$0,-8(%ebp)
	jmp	Lj1329
Lj1376:
	jmp	Lj1351
Lj1355:
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movb	$1,%dl
	call	L_JDMARKER_GET_SOF$J_DECOMPRESS_PTR$BOOLEAN$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1385
	jmp	Lj1386
Lj1385:
	movl	$0,-8(%ebp)
	jmp	Lj1329
Lj1386:
	jmp	Lj1351
Lj1356:
	movl	-4(%ebp),%eax
	movb	$1,%cl
	movb	$0,%dl
	call	L_JDMARKER_GET_SOF$J_DECOMPRESS_PTR$BOOLEAN$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1395
	jmp	Lj1396
Lj1395:
	movl	$0,-8(%ebp)
	jmp	Lj1329
Lj1396:
	jmp	Lj1351
Lj1357:
	movl	-4(%ebp),%eax
	movb	$1,%cl
	movb	$1,%dl
	call	L_JDMARKER_GET_SOF$J_DECOMPRESS_PTR$BOOLEAN$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1405
	jmp	Lj1406
Lj1405:
	movl	$0,-8(%ebp)
	jmp	Lj1329
Lj1406:
	jmp	Lj1351
Lj1358:
	movl	-4(%ebp),%eax
	movl	364(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$61,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
	jmp	Lj1351
Lj1359:
	movl	-4(%ebp),%eax
	call	L_JDMARKER_GET_SOS$J_DECOMPRESS_PTR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1421
	jmp	Lj1422
Lj1421:
	movl	$0,-8(%ebp)
	jmp	Lj1329
Lj1422:
	movl	-4(%ebp),%eax
	movl	$0,364(%eax)
	movl	$1,-8(%ebp)
	jmp	Lj1329
	jmp	Lj1351
Lj1360:
	movl	-4(%ebp),%eax
	movl	$0,364(%eax)
	movl	$2,-8(%ebp)
	jmp	Lj1329
	jmp	Lj1351
Lj1361:
	movl	-4(%ebp),%eax
	call	L_JDMARKER_GET_DAC$J_DECOMPRESS_PTR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1435
	jmp	Lj1436
Lj1435:
	movl	$0,-8(%ebp)
	jmp	Lj1329
Lj1436:
	jmp	Lj1351
Lj1362:
	movl	-4(%ebp),%eax
	call	L_JDMARKER_GET_DHT$J_DECOMPRESS_PTR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1441
	jmp	Lj1442
Lj1441:
	movl	$0,-8(%ebp)
	jmp	Lj1329
Lj1442:
	jmp	Lj1351
Lj1363:
	movl	-4(%ebp),%eax
	call	L_JDMARKER_GET_DQT$J_DECOMPRESS_PTR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1447
	jmp	Lj1448
Lj1447:
	movl	$0,-8(%ebp)
	jmp	Lj1329
Lj1448:
	jmp	Lj1351
Lj1364:
	movl	-4(%ebp),%eax
	call	L_JDMARKER_GET_DRI$J_DECOMPRESS_PTR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1453
	jmp	Lj1454
Lj1453:
	movl	$0,-8(%ebp)
	jmp	Lj1329
Lj1454:
	jmp	Lj1351
Lj1365:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	388(%edx),%ecx
	movl	-4(%ebp),%edx
	movl	364(%edx),%edx
	subl	$224,%edx
	movl	28(%ecx,%edx,4),%edx
	call	*%edx
	testb	%al,%al
	je	Lj1459
	jmp	Lj1460
Lj1459:
	movl	$0,-8(%ebp)
	jmp	Lj1329
Lj1460:
	jmp	Lj1351
Lj1366:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	388(%edx),%edx
	movl	24(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj1465
	jmp	Lj1466
Lj1465:
	movl	$0,-8(%ebp)
	jmp	Lj1329
Lj1466:
	jmp	Lj1351
Lj1367:
	jmp	Lj1351
Lj1368:
	movl	-4(%ebp),%eax
	call	L_JDMARKER_SKIP_VARIABLE$J_DECOMPRESS_PTR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1471
	jmp	Lj1472
Lj1471:
	movl	$0,-8(%ebp)
	jmp	Lj1329
Lj1472:
	jmp	Lj1351
Lj1352:
	movl	L_U_JDMARKER_ON_UNKNOWN_MARKER$non_lazy_ptr-Lj1330(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj1477
	jmp	Lj1478
Lj1477:
	movl	-4(%ebp),%eax
	movl	L_U_JDMARKER_ON_UNKNOWN_MARKER$non_lazy_ptr-Lj1330(%ebx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	jmp	Lj1329
	jmp	Lj1483
Lj1478:
	movl	-4(%ebp),%eax
	call	L_JDMARKER_SKIP_VARIABLE$J_DECOMPRESS_PTR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1484
	jmp	Lj1485
Lj1484:
	movl	$0,-8(%ebp)
	jmp	Lj1329
Lj1485:
Lj1483:
Lj1351:
	movl	-4(%ebp),%eax
	movl	$0,364(%eax)
	jmp	Lj1331
Lj1329:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_READ_RESTART_MARKER$J_DECOMPRESS_PTR$$BOOLEAN
_JDMARKER_READ_RESTART_MARKER$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	testl	%eax,%eax
	je	Lj1494
	jmp	Lj1495
Lj1494:
	movl	-4(%ebp),%eax
	call	L_JDMARKER_NEXT_MARKER$J_DECOMPRESS_PTR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1496
	jmp	Lj1497
Lj1496:
	movb	$0,-5(%ebp)
	jmp	Lj1492
Lj1497:
Lj1495:
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	movl	16(%eax),%edx
	addl	$208,%edx
	movl	-4(%ebp),%eax
	cmpl	364(%eax),%edx
	je	Lj1502
	jmp	Lj1503
Lj1502:
	movl	-4(%ebp),%eax
	movl	$0,364(%eax)
	jmp	Lj1506
Lj1503:
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	movl	16(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%ecx
	movl	20(%ecx),%ecx
	call	*%ecx
	testb	%al,%al
	je	Lj1507
	jmp	Lj1508
Lj1507:
	movb	$0,-5(%ebp)
	jmp	Lj1492
Lj1508:
Lj1506:
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	movl	16(%eax),%edx
	incl	%edx
	andl	$7,%edx
	movl	%edx,16(%eax)
	movb	$1,-5(%ebp)
Lj1492:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_JPEG_RESYNC_TO_RESTART$J_DECOMPRESS_PTR$LONGINT$$BOOLEAN
_JDMARKER_JPEG_RESYNC_TO_RESTART$J_DECOMPRESS_PTR$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	$1,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$122,%dl
	call	L_JERROR_WARNMS2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub
	.align 2
Lj1535:
	movl	-16(%ebp),%eax
	cmpl	$192,%eax
	jl	Lj1538
	jmp	Lj1539
Lj1538:
	movl	$2,-20(%ebp)
	jmp	Lj1542
Lj1539:
	movl	-16(%ebp),%eax
	cmpl	$208,%eax
	jl	Lj1543
	jmp	Lj1545
Lj1545:
	movl	-16(%ebp),%eax
	cmpl	$215,%eax
	jg	Lj1543
	jmp	Lj1544
Lj1543:
	movl	$3,-20(%ebp)
	jmp	Lj1548
Lj1544:
	movl	-8(%ebp),%eax
	incl	%eax
	andl	$7,%eax
	addl	$208,%eax
	cmpl	-16(%ebp),%eax
	je	Lj1549
	jmp	Lj1551
Lj1551:
	movl	-8(%ebp),%eax
	addl	$2,%eax
	andl	$7,%eax
	addl	$208,%eax
	cmpl	-16(%ebp),%eax
	je	Lj1549
	jmp	Lj1550
Lj1549:
	movl	$3,-20(%ebp)
	jmp	Lj1554
Lj1550:
	movl	-8(%ebp),%eax
	decl	%eax
	andl	$7,%eax
	addl	$208,%eax
	cmpl	-16(%ebp),%eax
	je	Lj1555
	jmp	Lj1557
Lj1557:
	movl	-8(%ebp),%eax
	subl	$2,%eax
	andl	$7,%eax
	addl	$208,%eax
	cmpl	-16(%ebp),%eax
	je	Lj1555
	jmp	Lj1556
Lj1555:
	movl	$2,-20(%ebp)
	jmp	Lj1560
Lj1556:
	movl	$1,-20(%ebp)
Lj1560:
Lj1554:
Lj1548:
Lj1542:
	movl	-20(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj1564
	decl	%eax
	je	Lj1565
	decl	%eax
	je	Lj1566
	decl	%eax
	je	Lj1567
	jmp	Lj1564
Lj1565:
	movl	-4(%ebp),%eax
	movl	$0,364(%eax)
	movb	$1,-9(%ebp)
	jmp	Lj1521
	jmp	Lj1563
Lj1566:
	movl	-4(%ebp),%eax
	call	L_JDMARKER_NEXT_MARKER$J_DECOMPRESS_PTR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1572
	jmp	Lj1573
Lj1572:
	movb	$0,-9(%ebp)
	jmp	Lj1521
Lj1573:
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1563
Lj1567:
	movb	$1,-9(%ebp)
	jmp	Lj1521
	jmp	Lj1563
Lj1564:
Lj1563:
	jmp	Lj1535
Lj1521:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_RESET_MARKER_READER$J_DECOMPRESS_PTR
_JDMARKER_RESET_MARKER_READER$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,180(%eax)
	movl	$0,108(%eax)
	movl	$0,364(%eax)
	movl	-8(%ebp),%eax
	movb	$0,12(%eax)
	movl	-8(%ebp),%eax
	movb	$0,13(%eax)
	movl	-8(%ebp),%eax
	movl	$0,20(%eax)
	movl	-8(%ebp),%eax
	movl	$0,160(%eax)
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_JINIT_MARKER_READER$J_DECOMPRESS_PTR
_JDMARKER_JINIT_MARKER_READER$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj1603
Lj1603:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$168,%ecx
	movl	$0,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,388(%edx)
	movl	-8(%ebp),%edx
	movl	L_JDMARKER_RESET_MARKER_READER$J_DECOMPRESS_PTR$non_lazy_ptr-Lj1603(%esi),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	L_JDMARKER_READ_MARKERS$J_DECOMPRESS_PTR$$LONGINT$non_lazy_ptr-Lj1603(%esi),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	L_JDMARKER_READ_RESTART_MARKER$J_DECOMPRESS_PTR$$BOOLEAN$non_lazy_ptr-Lj1603(%esi),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	L_JDMARKER_SKIP_VARIABLE$J_DECOMPRESS_PTR$$BOOLEAN$non_lazy_ptr-Lj1603(%esi),%eax
	movl	%eax,24(%edx)
	movl	-8(%ebp),%eax
	movl	$0,92(%eax)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj1626:
	incl	-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	L_JDMARKER_SKIP_VARIABLE$J_DECOMPRESS_PTR$$BOOLEAN$non_lazy_ptr-Lj1603(%esi),%eax
	movl	%eax,28(%edx,%ecx,4)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	$0,96(%eax,%edx,4)
	cmpl	$15,-12(%ebp)
	jl	Lj1626
	movl	-8(%ebp),%edx
	movl	L_JDMARKER_GET_INTERESTING_APPN$J_DECOMPRESS_PTR$$BOOLEAN$non_lazy_ptr-Lj1603(%esi),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%edx
	movl	L_JDMARKER_GET_INTERESTING_APPN$J_DECOMPRESS_PTR$$BOOLEAN$non_lazy_ptr-Lj1603(%esi),%eax
	movl	%eax,84(%edx)
	movl	-4(%ebp),%eax
	call	L_JDMARKER_RESET_MARKER_READER$J_DECOMPRESS_PTR$stub
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_JPEG_SAVE_MARKERS$J_DECOMPRESS_PTR$LONGINT$LONGWORD
_JDMARKER_JPEG_SAVE_MARKERS$J_DECOMPRESS_PTR$LONGINT$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj1638
Lj1638:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	48(%eax),%eax
	subl	$20,%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj1643
	jmp	Lj1644
Lj1643:
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj1644:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1647
	jmp	Lj1648
Lj1647:
	movl	L_JDMARKER_SAVE_MARKER$J_DECOMPRESS_PTR$$BOOLEAN$non_lazy_ptr-Lj1638(%ebx),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$224,%eax
	je	Lj1653
	jmp	Lj1652
Lj1653:
	movl	-12(%ebp),%eax
	cmpl	$14,%eax
	jb	Lj1651
	jmp	Lj1652
Lj1651:
	movl	$14,-12(%ebp)
	jmp	Lj1656
Lj1652:
	movl	-8(%ebp),%eax
	cmpl	$238,%eax
	je	Lj1659
	jmp	Lj1658
Lj1659:
	movl	-12(%ebp),%eax
	cmpl	$12,%eax
	jb	Lj1657
	jmp	Lj1658
Lj1657:
	movl	$12,-12(%ebp)
Lj1658:
Lj1656:
	jmp	Lj1662
Lj1648:
	movl	L_JDMARKER_SKIP_VARIABLE$J_DECOMPRESS_PTR$$BOOLEAN$non_lazy_ptr-Lj1638(%ebx),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$224,%eax
	je	Lj1665
	jmp	Lj1667
Lj1667:
	movl	-8(%ebp),%eax
	cmpl	$238,%eax
	je	Lj1665
	jmp	Lj1666
Lj1665:
	movl	L_JDMARKER_GET_INTERESTING_APPN$J_DECOMPRESS_PTR$$BOOLEAN$non_lazy_ptr-Lj1638(%ebx),%eax
	movl	%eax,-24(%ebp)
Lj1666:
Lj1662:
	movl	-8(%ebp),%eax
	cmpl	$254,%eax
	je	Lj1670
	jmp	Lj1671
Lj1670:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,92(%eax)
	jmp	Lj1676
Lj1671:
	movl	-8(%ebp),%eax
	cmpl	$224,%eax
	jge	Lj1679
	jmp	Lj1678
Lj1679:
	movl	-8(%ebp),%eax
	cmpl	$239,%eax
	jle	Lj1677
	jmp	Lj1678
Lj1677:
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	subl	$224,%eax
	movl	-24(%ebp),%edx
	movl	%edx,28(%ecx,%eax,4)
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	subl	$224,%eax
	movl	-12(%ebp),%edx
	movl	%edx,96(%ecx,%eax,4)
	jmp	Lj1684
Lj1678:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$69,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj1684:
Lj1676:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDMARKER_JPEG_SET_MARKER_PROCESSOR$J_DECOMPRESS_PTR$LONGINT$JPEG_MARKER_PARSER_METHOD
_JDMARKER_JPEG_SET_MARKER_PROCESSOR$J_DECOMPRESS_PTR$LONGINT$JPEG_MARKER_PARSER_METHOD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$254,%eax
	je	Lj1695
	jmp	Lj1696
Lj1695:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,24(%eax)
	jmp	Lj1699
Lj1696:
	movl	-8(%ebp),%eax
	cmpl	$224,%eax
	jge	Lj1702
	jmp	Lj1701
Lj1702:
	movl	-8(%ebp),%eax
	cmpl	$239,%eax
	jle	Lj1700
	jmp	Lj1701
Lj1700:
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	subl	$224,%eax
	movl	-12(%ebp),%edx
	movl	%edx,28(%ecx,%eax,4)
	jmp	Lj1705
Lj1701:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$69,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj1705:
Lj1699:
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_JDMARKER_ON_UNKNOWN_MARKER
.data
.zerofill __DATA, __common, _U_JDMARKER_ON_UNKNOWN_MARKER, 4,2



.data
	.align 2
.globl	_THREADVARLIST_JDMARKER
_THREADVARLIST_JDMARKER:
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

L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub:
.indirect_symbol _JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMARKER_SKIP_VARIABLE$J_DECOMPRESS_PTR$$BOOLEAN$stub:
.indirect_symbol _JDMARKER_SKIP_VARIABLE$J_DECOMPRESS_PTR$$BOOLEAN
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

L_JINCLUDE_MEMCOPY$POINTER$POINTER$LONGINT$stub:
.indirect_symbol _JINCLUDE_MEMCOPY$POINTER$POINTER$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCOMAPI_JPEG_ALLOC_QUANT_TABLE$J_COMMON_PTR$$JQUANT_TBL_PTR$stub:
.indirect_symbol _JCOMAPI_JPEG_ALLOC_QUANT_TABLE$J_COMMON_PTR$$JQUANT_TBL_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_WARNMS2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub:
.indirect_symbol _JERROR_WARNMS2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMARKER_EXAMINE_APP0$J_DECOMPRESS_PTR$array_of_BYTE$LONGWORD$LONGINT$stub:
.indirect_symbol _JDMARKER_EXAMINE_APP0$J_DECOMPRESS_PTR$array_of_BYTE$LONGWORD$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMARKER_EXAMINE_APP14$J_DECOMPRESS_PTR$array_of_BYTE$LONGWORD$LONGINT$stub:
.indirect_symbol _JDMARKER_EXAMINE_APP14$J_DECOMPRESS_PTR$array_of_BYTE$LONGWORD$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub:
.indirect_symbol _JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMARKER_FIRST_MARKER$J_DECOMPRESS_PTR$$BOOLEAN$stub:
.indirect_symbol _JDMARKER_FIRST_MARKER$J_DECOMPRESS_PTR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMARKER_NEXT_MARKER$J_DECOMPRESS_PTR$$BOOLEAN$stub:
.indirect_symbol _JDMARKER_NEXT_MARKER$J_DECOMPRESS_PTR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMARKER_GET_SOI$J_DECOMPRESS_PTR$$BOOLEAN$stub:
.indirect_symbol _JDMARKER_GET_SOI$J_DECOMPRESS_PTR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMARKER_GET_SOF$J_DECOMPRESS_PTR$BOOLEAN$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _JDMARKER_GET_SOF$J_DECOMPRESS_PTR$BOOLEAN$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMARKER_GET_SOS$J_DECOMPRESS_PTR$$BOOLEAN$stub:
.indirect_symbol _JDMARKER_GET_SOS$J_DECOMPRESS_PTR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMARKER_GET_DAC$J_DECOMPRESS_PTR$$BOOLEAN$stub:
.indirect_symbol _JDMARKER_GET_DAC$J_DECOMPRESS_PTR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMARKER_GET_DHT$J_DECOMPRESS_PTR$$BOOLEAN$stub:
.indirect_symbol _JDMARKER_GET_DHT$J_DECOMPRESS_PTR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMARKER_GET_DQT$J_DECOMPRESS_PTR$$BOOLEAN$stub:
.indirect_symbol _JDMARKER_GET_DQT$J_DECOMPRESS_PTR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMARKER_GET_DRI$J_DECOMPRESS_PTR$$BOOLEAN$stub:
.indirect_symbol _JDMARKER_GET_DRI$J_DECOMPRESS_PTR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMARKER_RESET_MARKER_READER$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDMARKER_RESET_MARKER_READER$J_DECOMPRESS_PTR
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
.globl	_INIT_JDMARKER_MY_MARKER_PTR
_INIT_JDMARKER_MY_MARKER_PTR:
	.byte	0
	.ascii	"\015my_marker_ptr"

.const_data
	.align 2
.globl	_RTTI_JDMARKER_MY_MARKER_PTR
_RTTI_JDMARKER_MY_MARKER_PTR:
	.byte	0
	.ascii	"\015my_marker_ptr"

.const_data
	.align 2
.globl	_INIT_JDMARKER_MY_MARKER_READER
_INIT_JDMARKER_MY_MARKER_READER:
	.byte	13,16
	.ascii	"my_marker_reader"
	.long	168,0

.const_data
	.align 2
.globl	_RTTI_JDMARKER_DEF2
_RTTI_JDMARKER_DEF2:
	.byte	12
	.ascii	"\000"
	.long	4,16
	.long	_RTTI_JPEGLIB_JPEG_MARKER_PARSER_METHOD
	.long	-1

.const_data
	.align 2
.globl	_RTTI_JDMARKER_DEF3
_RTTI_JDMARKER_DEF3:
	.byte	12
	.ascii	"\000"
	.long	4,16
	.long	_RTTI_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_RTTI_JDMARKER_MY_MARKER_READER
_RTTI_JDMARKER_MY_MARKER_READER:
	.byte	13,16
	.ascii	"my_marker_reader"
	.long	168,7
	.long	_RTTI_JPEGLIB_JPEG_MARKER_READER
	.long	0
	.long	_RTTI_JPEGLIB_JPEG_MARKER_PARSER_METHOD
	.long	24
	.long	_RTTI_JDMARKER_DEF2
	.long	28
	.long	_RTTI_SYSTEM_LONGWORD
	.long	92
	.long	_RTTI_JDMARKER_DEF3
	.long	96
	.long	_RTTI_JPEGLIB_JPEG_SAVED_MARKER_PTR
	.long	160
	.long	_RTTI_SYSTEM_LONGWORD
	.long	164
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
L_U_JDMARKER_ON_UNKNOWN_MARKER$non_lazy_ptr:
.indirect_symbol _U_JDMARKER_ON_UNKNOWN_MARKER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDMARKER_RESET_MARKER_READER$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JDMARKER_RESET_MARKER_READER$J_DECOMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDMARKER_READ_MARKERS$J_DECOMPRESS_PTR$$LONGINT$non_lazy_ptr:
.indirect_symbol _JDMARKER_READ_MARKERS$J_DECOMPRESS_PTR$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDMARKER_READ_RESTART_MARKER$J_DECOMPRESS_PTR$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JDMARKER_READ_RESTART_MARKER$J_DECOMPRESS_PTR$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDMARKER_SKIP_VARIABLE$J_DECOMPRESS_PTR$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JDMARKER_SKIP_VARIABLE$J_DECOMPRESS_PTR$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDMARKER_GET_INTERESTING_APPN$J_DECOMPRESS_PTR$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JDMARKER_GET_INTERESTING_APPN$J_DECOMPRESS_PTR$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDMARKER_SAVE_MARKER$J_DECOMPRESS_PTR$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JDMARKER_SAVE_MARKER$J_DECOMPRESS_PTR$$BOOLEAN
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

