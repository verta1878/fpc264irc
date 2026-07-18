# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JDHUFF_START_PASS_HUFF_DECODER$J_DECOMPRESS_PTR
_JDHUFF_START_PASS_HUFF_DECODER$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	392(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	testl	%eax,%eax
	jne	Lj7
	jmp	Lj11
Lj11:
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	cmpl	$63,%eax
	jne	Lj7
	jmp	Lj10
Lj10:
	movl	-4(%ebp),%eax
	movl	356(%eax),%eax
	testl	%eax,%eax
	jne	Lj7
	jmp	Lj9
Lj9:
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	testl	%eax,%eax
	jne	Lj7
	jmp	Lj8
Lj7:
	movl	-4(%ebp),%eax
	movb	$123,%dl
	call	L_JERROR_WARNMS$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj8:
	movl	-4(%ebp),%eax
	movl	276(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj17
	decl	-12(%ebp)
	.align 2
Lj18:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	280(%eax,%edx,4),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-28(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	leal	40(%edx,%eax,4),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_JDHUFF_JPEG_MAKE_D_DERIVED_TBL$J_DECOMPRESS_PTR$BOOLEAN$LONGINT$D_DERIVED_TBL_PTR$stub
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	leal	60(%edx,%eax,4),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_JDHUFF_JPEG_MAKE_D_DERIVED_TBL$J_DECOMPRESS_PTR$BOOLEAN$LONGINT$D_DERIVED_TBL_PTR$stub
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,20(%edx,%eax,4)
	cmpl	-12(%ebp),%ebx
	jg	Lj18
Lj17:
	movl	-4(%ebp),%eax
	movl	304(%eax),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj44
	decl	-16(%ebp)
	.align 2
Lj45:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	308(%edx,%ecx,4),%edx
	movl	%edx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	280(%edx,%ecx,4),%edx
	movl	%edx,-28(%ebp)
	movl	-8(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	20(%edx),%edx
	movl	-8(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	40(%ecx,%edx,4),%edx
	movl	%edx,80(%ebx,%esi,4)
	movl	-8(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	24(%edx),%edx
	movl	-8(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	60(%ecx,%edx,4),%edx
	movl	%edx,120(%ebx,%esi,4)
	movl	-28(%ebp),%edx
	cmpb	$0,48(%edx)
	jne	Lj54
	jmp	Lj55
Lj54:
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movb	$1,160(%ecx,%edx,1)
	movl	-8(%ebp),%ebx
	movl	-16(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	36(%edx),%edx
	cmpl	$1,%edx
	setgb	170(%ebx,%ecx,1)
	jmp	Lj60
Lj55:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%ecx
	movb	$0,170(%edx,%ecx,1)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%ecx
	movb	$0,160(%edx,%ecx,1)
Lj60:
	cmpl	-16(%ebp),%eax
	jg	Lj45
Lj44:
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	movl	-8(%ebp),%eax
	movb	$0,8(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	236(%eax),%eax
	movl	%eax,36(%edx)
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JDHUFF_JPEG_MAKE_D_DERIVED_TBL$J_DECOMPRESS_PTR$BOOLEAN$LONGINT$D_DERIVED_TBL_PTR
_JDHUFF_JPEG_MAKE_D_DERIVED_TBL$J_DECOMPRESS_PTR$BOOLEAN$LONGINT$D_DERIVED_TBL_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1352,%esp
	movl	%ebx,-1352(%ebp)
	movl	%esi,-1348(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj75
	jmp	Lj77
Lj77:
	movl	-12(%ebp),%eax
	cmpl	$4,%eax
	jge	Lj75
	jmp	Lj76
Lj75:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$51,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj76:
	cmpb	$0,-8(%ebp)
	jne	Lj84
	jmp	Lj85
Lj84:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	144(%eax,%edx,4),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj88
Lj85:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	160(%eax,%edx,4),%eax
	movl	%eax,-16(%ebp)
Lj88:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj91
	jmp	Lj92
Lj91:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$51,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj92:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj99
	jmp	Lj100
Lj99:
	movl	-4(%ebp),%eax
	movl	$1424,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	8(%ebp),%edx
	movl	%eax,(%edx)
Lj100:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,140(%eax)
	movl	$0,-24(%ebp)
	movl	$1,-32(%ebp)
	decl	-32(%ebp)
	.align 2
Lj117:
	incl	-32(%ebp)
	movl	-16(%ebp),%edx
	movl	-32(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj120
	jmp	Lj122
Lj122:
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	cmpl	$256,%eax
	jg	Lj120
	jmp	Lj121
Lj120:
	movl	-4(%ebp),%eax
	movb	$8,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj121:
	jmp	Lj128
	.align 2
Lj127:
	movl	-24(%ebp),%eax
	movb	-32(%ebp),%dl
	movb	%dl,-305(%ebp,%eax,1)
	incl	-24(%ebp)
	decl	-28(%ebp)
Lj128:
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj127
	jmp	Lj129
Lj129:
	cmpl	$16,-32(%ebp)
	jl	Lj117
	movl	-24(%ebp),%eax
	movb	$0,-305(%ebp,%eax,1)
	movl	-24(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	$0,-1340(%ebp)
	movzbl	-305(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	$0,-24(%ebp)
	jmp	Lj143
	.align 2
Lj142:
	jmp	Lj146
	.align 2
Lj145:
	movl	-24(%ebp),%eax
	movl	-1340(%ebp),%edx
	movl	%edx,-1336(%ebp,%eax,4)
	incl	-24(%ebp)
	incl	-1340(%ebp)
Lj146:
	movl	-24(%ebp),%eax
	movzbl	-305(%ebp,%eax,1),%eax
	cmpl	-36(%ebp),%eax
	je	Lj145
	jmp	Lj147
Lj147:
	movl	$1,%eax
	movl	-36(%ebp),%ecx
	shll	%cl,%eax
	cmpl	-1340(%ebp),%eax
	jle	Lj150
	jmp	Lj151
Lj150:
	movl	-4(%ebp),%eax
	movb	$8,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj151:
	movl	-1340(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-1340(%ebp)
	incl	-36(%ebp)
Lj143:
	movl	-24(%ebp),%eax
	movzbl	-305(%ebp,%eax,1),%eax
	testl	%eax,%eax
	jne	Lj142
	jmp	Lj144
Lj144:
	movl	$0,-24(%ebp)
	movl	$1,-32(%ebp)
	decl	-32(%ebp)
	.align 2
Lj162:
	incl	-32(%ebp)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	testl	%eax,%eax
	jne	Lj163
	jmp	Lj164
Lj163:
	movl	-24(%ebp),%eax
	movl	-1336(%ebp,%eax,4),%edx
	movl	-24(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-20(%ebp),%eax
	movl	-32(%ebp),%ecx
	movl	%edx,72(%eax,%ecx,4)
	movl	-16(%ebp),%edx
	movl	-32(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	addl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	decl	%eax
	movl	-20(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-1336(%ebp,%eax,4),%eax
	movl	%eax,(%ecx,%edx,4)
	jmp	Lj169
Lj164:
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	$-1,(%edx,%eax,4)
Lj169:
	cmpl	$16,-32(%ebp)
	jl	Lj162
	movl	-20(%ebp),%eax
	movl	$1048575,68(%eax)
	movl	-20(%ebp),%eax
	leal	144(%eax),%eax
	movl	$1024,%edx
	call	L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub
	movl	$0,-24(%ebp)
	movl	$1,-32(%ebp)
	decl	-32(%ebp)
	.align 2
Lj182:
	incl	-32(%ebp)
	movl	-16(%ebp),%edx
	movl	-32(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	movl	$1,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj184
	decl	-28(%ebp)
	.align 2
Lj185:
	incl	-28(%ebp)
	movl	-24(%ebp),%ebx
	movl	-32(%ebp),%ecx
	movl	$8,%edx
	subl	%ecx,%edx
	movl	%edx,%ecx
	movl	-1336(%ebp,%ebx,4),%edx
	shll	%cl,%edx
	movl	%edx,-44(%ebp)
	movl	-32(%ebp),%ecx
	movl	$8,%edx
	subl	%ecx,%edx
	movl	%edx,%ecx
	movl	$1,%edx
	shll	%cl,%edx
	decl	%edx
	movl	%edx,-48(%ebp)
	cmpl	$0,-48(%ebp)
	jl	Lj189
	incl	-48(%ebp)
	.align 2
Lj190:
	decl	-48(%ebp)
	movl	-20(%ebp),%ecx
	movl	-44(%ebp),%edx
	movl	-32(%ebp),%ebx
	movl	%ebx,144(%ecx,%edx,4)
	movl	-20(%ebp),%esi
	movl	-44(%ebp),%ebx
	movl	-16(%ebp),%ecx
	movl	-24(%ebp),%edx
	movb	17(%ecx,%edx,1),%dl
	movb	%dl,1168(%esi,%ebx,1)
	incl	-44(%ebp)
	cmpl	$0,-48(%ebp)
	jg	Lj190
Lj189:
	incl	-24(%ebp)
	cmpl	-28(%ebp),%eax
	jg	Lj185
Lj184:
	cmpl	$8,-32(%ebp)
	jl	Lj182
	cmpb	$0,-8(%ebp)
	jne	Lj195
	jmp	Lj196
Lj195:
	movl	-40(%ebp),%ebx
	decl	%ebx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj198
	decl	-28(%ebp)
	.align 2
Lj199:
	incl	-28(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%edx
	movzbl	17(%eax,%edx,1),%eax
	movl	%eax,-1344(%ebp)
	movl	-1344(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj202
	jmp	Lj204
Lj204:
	movl	-1344(%ebp),%eax
	cmpl	$15,%eax
	jg	Lj202
	jmp	Lj203
Lj202:
	movl	-4(%ebp),%eax
	movb	$8,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj203:
	cmpl	-28(%ebp),%ebx
	jg	Lj199
Lj198:
Lj196:
	movl	-1352(%ebp),%ebx
	movl	-1348(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN
_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	movl	364(%eax),%eax
	testl	%eax,%eax
	je	Lj217
	jmp	Lj218
Lj217:
	jmp	Lj220
	.align 2
Lj219:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj222
	jmp	Lj223
Lj222:
	movl	-32(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	24(%edx),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj224
	jmp	Lj225
Lj224:
	movb	$0,-13(%ebp)
	jmp	Lj209
Lj225:
	movl	-32(%ebp),%eax
	movl	24(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-32(%ebp),%eax
	movl	24(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-24(%ebp)
Lj223:
	decl	-24(%ebp)
	movl	-20(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-28(%ebp)
	incl	-20(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$255,%eax
	je	Lj236
	jmp	Lj237
Lj236:
	.align 2
Lj238:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj241
	jmp	Lj242
Lj241:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	movl	24(%edx),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj243
	jmp	Lj244
Lj243:
	movb	$0,-13(%ebp)
	jmp	Lj209
Lj244:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	24(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	24(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-24(%ebp)
Lj242:
	decl	-24(%ebp)
	movl	-20(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-28(%ebp)
	incl	-20(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$255,%eax
	jne	Lj240
	jmp	Lj238
Lj240:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj255
	jmp	Lj256
Lj255:
	movl	$255,-28(%ebp)
	jmp	Lj259
Lj256:
	movl	-32(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,364(%eax)
	jmp	Lj262
Lj259:
Lj237:
	movl	-8(%ebp),%eax
	shll	$8,%eax
	movl	-28(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-8(%ebp)
	addl	$8,-12(%ebp)
Lj220:
	movl	-12(%ebp),%eax
	cmpl	$15,%eax
	jl	Lj219
	jmp	Lj221
Lj221:
	jmp	Lj265
Lj218:
Lj262:
	movl	8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj266
	jmp	Lj267
Lj266:
	movl	-32(%ebp),%eax
	movl	392(%eax),%eax
	movb	8(%eax),%al
	testb	%al,%al
	je	Lj268
	jmp	Lj269
Lj268:
	movl	-32(%ebp),%eax
	movb	$118,%dl
	call	L_JERROR_WARNMS$J_COMMON_PTR$J_MESSAGE_CODE$stub
	movl	-32(%ebp),%eax
	movl	392(%eax),%eax
	movb	$1,8(%eax)
Lj269:
	movl	-12(%ebp),%ecx
	movl	$15,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	-8(%ebp),%eax
	shll	%cl,%eax
	movl	%eax,-8(%ebp)
	movl	$15,-12(%ebp)
Lj267:
Lj265:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,12(%eax)
	movb	$1,-13(%ebp)
Lj209:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JDHUFF_JPEG_HUFF_DECODE$crc98D6E41A
_JDHUFF_JPEG_HUFF_DECODE$crc98D6E41A:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj294
	jmp	Lj295
Lj294:
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj296
	jmp	Lj297
Lj296:
	movl	$-1,-16(%ebp)
	jmp	Lj290
Lj297:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-12(%ebp)
Lj295:
	movl	-20(%ebp),%eax
	subl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ecx
	shrl	%cl,%eax
	movl	$1,%edx
	movl	-20(%ebp),%ecx
	shll	%cl,%edx
	decl	%edx
	andl	%edx,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj315
	.align 2
Lj314:
	movl	-24(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj319
	jmp	Lj320
Lj319:
	movl	$1,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj321
	jmp	Lj322
Lj321:
	movl	$-1,-16(%ebp)
	jmp	Lj290
Lj322:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-12(%ebp)
Lj320:
	decl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ecx
	shrl	%cl,%eax
	andl	$1,%eax
	movl	-24(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-24(%ebp)
	incl	-20(%ebp)
Lj315:
	movl	12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	cmpl	-24(%ebp),%eax
	jl	Lj314
	jmp	Lj316
Lj316:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-20(%ebp),%eax
	cmpl	$16,%eax
	jg	Lj343
	jmp	Lj344
Lj343:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	$119,%dl
	call	L_JERROR_WARNMS$J_COMMON_PTR$J_MESSAGE_CODE$stub
	movl	$0,-16(%ebp)
	jmp	Lj290
Lj344:
	movl	12(%ebp),%eax
	movl	140(%eax),%ecx
	movl	12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	72(%eax,%edx,4),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movzbl	17(%ecx,%eax,1),%eax
	movl	%eax,-16(%ebp)
Lj290:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JDHUFF_PROCESS_RESTART$J_DECOMPRESS_PTR$$BOOLEAN
_JDHUFF_PROCESS_RESTART$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	392(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$7,%eax
	addl	%eax,%edx
	sarl	$3,%edx
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	addl	%edx,20(%eax)
	movl	-12(%ebp),%eax
	movl	$0,16(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	388(%edx),%edx
	movl	8(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj359
	jmp	Lj360
Lj359:
	movb	$0,-5(%ebp)
	jmp	Lj353
Lj360:
	movl	-4(%ebp),%eax
	movl	276(%eax),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj366
	decl	-16(%ebp)
	.align 2
Lj367:
	incl	-16(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	$0,20(%edx,%ecx,4)
	cmpl	-16(%ebp),%eax
	jg	Lj367
Lj366:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	236(%eax),%eax
	movl	%eax,36(%edx)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	testl	%eax,%eax
	je	Lj372
	jmp	Lj373
Lj372:
	movl	-12(%ebp),%eax
	movb	$0,8(%eax)
Lj373:
	movb	$1,-5(%ebp)
Lj353:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JDHUFF_DECODE_MCU$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
_JDHUFF_DECODE_MCU$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-116(%ebp)
	movl	%esi,-112(%ebp)
	movl	%edi,-108(%ebp)
	call	Lj379
Lj379:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	392(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	236(%eax),%eax
	testl	%eax,%eax
	jne	Lj382
	jmp	Lj383
Lj382:
	movl	-20(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	je	Lj384
	jmp	Lj385
Lj384:
	movl	-4(%ebp),%eax
	call	L_JDHUFF_PROCESS_RESTART$J_DECOMPRESS_PTR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj386
	jmp	Lj387
Lj386:
	movb	$0,-13(%ebp)
	jmp	Lj378
Lj387:
Lj385:
Lj383:
	movl	-20(%ebp),%eax
	movb	8(%eax),%al
	testb	%al,%al
	je	Lj392
	jmp	Lj393
Lj392:
	movl	-4(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-72(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	-20(%ebp),%eax
	leal	-88(%ebp),%edi
	leal	20(%eax),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	movl	304(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%esi
	jl	Lj407
	decl	-36(%ebp)
	.align 2
Lj408:
	incl	-36(%ebp)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-44(%ebp)
	movl	-20(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	80(%eax,%edx,4),%eax
	movl	%eax,-92(%ebp)
	movl	-20(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	120(%eax,%edx,4),%eax
	movl	%eax,-96(%ebp)
	movl	-52(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj415
	jmp	Lj416
Lj415:
	movl	$0,(%esp)
	movl	-52(%ebp),%ecx
	movl	-48(%ebp),%edx
	leal	-72(%ebp),%eax
	call	L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj417
	jmp	Lj418
Lj417:
	movb	$0,-13(%ebp)
	jmp	Lj378
Lj418:
	movl	-64(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	-52(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj433
	jmp	Lj434
Lj433:
	movl	$1,-100(%ebp)
	jmp	Lj437
Lj434:
Lj416:
	movl	-52(%ebp),%ecx
	subl	$8,%ecx
	movl	-48(%ebp),%eax
	shrl	%cl,%eax
	andl	$255,%eax
	movl	%eax,-104(%ebp)
	movl	-92(%ebp),%edx
	movl	-104(%ebp),%eax
	movl	144(%edx,%eax,4),%eax
	movl	%eax,-100(%ebp)
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	jne	Lj442
	jmp	Lj443
Lj442:
	movl	-100(%ebp),%eax
	subl	%eax,-52(%ebp)
	movl	-92(%ebp),%eax
	movl	-104(%ebp),%edx
	movzbl	1168(%eax,%edx,1),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj446
Lj443:
	movl	$9,-100(%ebp)
Lj437:
	movl	-100(%ebp),%eax
	movl	%eax,(%esp)
	movl	-92(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-52(%ebp),%ecx
	movl	-48(%ebp),%edx
	leal	-72(%ebp),%eax
	call	L_JDHUFF_JPEG_HUFF_DECODE$crc98D6E41A$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj461
	jmp	Lj462
Lj461:
	movb	$0,-13(%ebp)
	jmp	Lj378
Lj462:
	movl	-64(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-52(%ebp)
Lj446:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj469
	jmp	Lj470
Lj469:
	movl	-52(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jl	Lj471
	jmp	Lj472
Lj471:
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-52(%ebp),%ecx
	movl	-48(%ebp),%edx
	leal	-72(%ebp),%eax
	call	L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj473
	jmp	Lj474
Lj473:
	movb	$0,-13(%ebp)
	jmp	Lj378
Lj474:
	movl	-64(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-52(%ebp)
Lj472:
	movl	-24(%ebp),%eax
	subl	%eax,-52(%ebp)
	movl	-48(%ebp),%eax
	movl	-52(%ebp),%ecx
	shrl	%cl,%eax
	movl	$1,%edx
	movl	-24(%ebp),%ecx
	shll	%cl,%edx
	decl	%edx
	andl	%edx,%eax
	movl	%eax,-32(%ebp)
	movl	-24(%ebp),%eax
	movl	L_TC_JDHUFF_EXTEND_TEST$non_lazy_ptr-Lj379(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	cmpl	-32(%ebp),%eax
	jg	Lj491
	jmp	Lj492
Lj491:
	movl	-24(%ebp),%eax
	movl	L_TC_JDHUFF_EXTEND_OFFSET$non_lazy_ptr-Lj379(%ebx),%edx
	movl	(%edx,%eax,4),%edx
	movl	-32(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-24(%ebp)
	jmp	Lj495
Lj492:
	movl	-32(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj495:
Lj470:
	movl	-20(%ebp),%eax
	movl	-36(%ebp),%edx
	cmpb	$0,160(%eax,%edx,1)
	jne	Lj498
	jmp	Lj499
Lj498:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	308(%eax,%edx,4),%eax
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	movl	-88(%ebp,%eax,4),%eax
	addl	%eax,-24(%ebp)
	movl	-40(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,-88(%ebp,%eax,4)
	movl	-44(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,(%edx)
Lj499:
	movl	-20(%ebp),%eax
	movl	-36(%ebp),%edx
	cmpb	$0,170(%eax,%edx,1)
	jne	Lj506
	jmp	Lj507
Lj506:
	movl	$1,-28(%ebp)
	jmp	Lj511
	.align 2
Lj510:
	movl	-52(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj513
	jmp	Lj514
Lj513:
	movl	$0,(%esp)
	movl	-52(%ebp),%ecx
	movl	-48(%ebp),%edx
	leal	-72(%ebp),%eax
	call	L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj515
	jmp	Lj516
Lj515:
	movb	$0,-13(%ebp)
	jmp	Lj378
Lj516:
	movl	-64(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	-52(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj531
	jmp	Lj532
Lj531:
	movl	$1,-100(%ebp)
	jmp	Lj535
Lj532:
Lj514:
	movl	-52(%ebp),%ecx
	subl	$8,%ecx
	movl	-48(%ebp),%eax
	shrl	%cl,%eax
	andl	$255,%eax
	movl	%eax,-104(%ebp)
	movl	-96(%ebp),%eax
	movl	-104(%ebp),%edx
	movl	144(%eax,%edx,4),%eax
	movl	%eax,-100(%ebp)
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	jne	Lj540
	jmp	Lj541
Lj540:
	movl	-100(%ebp),%eax
	subl	%eax,-52(%ebp)
	movl	-96(%ebp),%eax
	movl	-104(%ebp),%edx
	movzbl	1168(%eax,%edx,1),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj544
Lj541:
	movl	$9,-100(%ebp)
Lj535:
	movl	-100(%ebp),%eax
	movl	%eax,(%esp)
	movl	-96(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-52(%ebp),%ecx
	movl	-48(%ebp),%edx
	leal	-72(%ebp),%eax
	call	L_JDHUFF_JPEG_HUFF_DECODE$crc98D6E41A$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj559
	jmp	Lj560
Lj559:
	movb	$0,-13(%ebp)
	jmp	Lj378
Lj560:
	movl	-64(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-52(%ebp)
Lj544:
	movl	-24(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,-32(%ebp)
	movl	-24(%ebp),%eax
	andl	$15,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj571
	jmp	Lj572
Lj571:
	movl	-32(%ebp),%eax
	addl	%eax,-28(%ebp)
	movl	-52(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jl	Lj573
	jmp	Lj574
Lj573:
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-52(%ebp),%ecx
	movl	-48(%ebp),%edx
	leal	-72(%ebp),%eax
	call	L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj575
	jmp	Lj576
Lj575:
	movb	$0,-13(%ebp)
	jmp	Lj378
Lj576:
	movl	-64(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-52(%ebp)
Lj574:
	movl	-24(%ebp),%eax
	subl	%eax,-52(%ebp)
	movl	-48(%ebp),%eax
	movl	-52(%ebp),%ecx
	shrl	%cl,%eax
	movl	$1,%edx
	movl	-24(%ebp),%ecx
	shll	%cl,%edx
	decl	%edx
	andl	%edx,%eax
	movl	%eax,-32(%ebp)
	movl	-24(%ebp),%edx
	movl	L_TC_JDHUFF_EXTEND_TEST$non_lazy_ptr-Lj379(%ebx),%eax
	movl	(%eax,%edx,4),%eax
	cmpl	-32(%ebp),%eax
	jg	Lj593
	jmp	Lj594
Lj593:
	movl	-24(%ebp),%eax
	movl	L_TC_JDHUFF_EXTEND_OFFSET$non_lazy_ptr-Lj379(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj597
Lj594:
	movl	-32(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj597:
	movl	-44(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	L_TC_JUTILS_JPEG_NATURAL_ORDER$non_lazy_ptr-Lj379(%ebx),%ecx
	movl	(%ecx,%eax,4),%eax
	movl	-24(%ebp),%ecx
	movl	%ecx,(%edx,%eax,4)
	jmp	Lj602
Lj572:
	movl	-32(%ebp),%eax
	cmpl	$15,%eax
	jne	Lj603
	jmp	Lj604
Lj603:
	jmp	Lj512
Lj604:
	addl	$15,-28(%ebp)
Lj602:
	incl	-28(%ebp)
Lj511:
	movl	-28(%ebp),%eax
	cmpl	$64,%eax
	jl	Lj510
	jmp	Lj512
Lj512:
	jmp	Lj605
Lj507:
	movl	$1,-28(%ebp)
	jmp	Lj609
	.align 2
Lj608:
	movl	-52(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj611
	jmp	Lj612
Lj611:
	movl	$0,(%esp)
	movl	-52(%ebp),%ecx
	movl	-48(%ebp),%edx
	leal	-72(%ebp),%eax
	call	L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj613
	jmp	Lj614
Lj613:
	movb	$0,-13(%ebp)
	jmp	Lj378
Lj614:
	movl	-64(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	-52(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj629
	jmp	Lj630
Lj629:
	movl	$1,-100(%ebp)
	jmp	Lj633
Lj630:
Lj612:
	movl	-52(%ebp),%ecx
	subl	$8,%ecx
	movl	-48(%ebp),%eax
	shrl	%cl,%eax
	andl	$255,%eax
	movl	%eax,-104(%ebp)
	movl	-96(%ebp),%eax
	movl	-104(%ebp),%edx
	movl	144(%eax,%edx,4),%eax
	movl	%eax,-100(%ebp)
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	jne	Lj638
	jmp	Lj639
Lj638:
	movl	-100(%ebp),%eax
	subl	%eax,-52(%ebp)
	movl	-96(%ebp),%edx
	movl	-104(%ebp),%eax
	movzbl	1168(%edx,%eax,1),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj642
Lj639:
	movl	$9,-100(%ebp)
Lj633:
	movl	-100(%ebp),%eax
	movl	%eax,(%esp)
	movl	-96(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-52(%ebp),%ecx
	movl	-48(%ebp),%edx
	leal	-72(%ebp),%eax
	call	L_JDHUFF_JPEG_HUFF_DECODE$crc98D6E41A$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj657
	jmp	Lj658
Lj657:
	movb	$0,-13(%ebp)
	jmp	Lj378
Lj658:
	movl	-64(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-52(%ebp)
Lj642:
	movl	-24(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,-32(%ebp)
	movl	-24(%ebp),%eax
	andl	$15,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj669
	jmp	Lj670
Lj669:
	movl	-32(%ebp),%eax
	addl	%eax,-28(%ebp)
	movl	-52(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jl	Lj671
	jmp	Lj672
Lj671:
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-52(%ebp),%ecx
	movl	-48(%ebp),%edx
	leal	-72(%ebp),%eax
	call	L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj673
	jmp	Lj674
Lj673:
	movb	$0,-13(%ebp)
	jmp	Lj378
Lj674:
	movl	-64(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-52(%ebp)
Lj672:
	movl	-24(%ebp),%eax
	subl	%eax,-52(%ebp)
	jmp	Lj689
Lj670:
	movl	-32(%ebp),%eax
	cmpl	$15,%eax
	jne	Lj690
	jmp	Lj691
Lj690:
	jmp	Lj610
Lj691:
	addl	$15,-28(%ebp)
Lj689:
	incl	-28(%ebp)
Lj609:
	movl	-28(%ebp),%eax
	cmpl	$64,%eax
	jl	Lj608
	jmp	Lj610
Lj610:
Lj605:
	cmpl	-36(%ebp),%esi
	jg	Lj408
Lj407:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-72(%ebp),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-68(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-20(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-20(%ebp),%edx
	movl	-52(%ebp),%eax
	movl	%eax,16(%edx)
	movl	-20(%ebp),%eax
	leal	20(%eax),%edi
	leal	-88(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
Lj393:
	movl	-20(%ebp),%eax
	decl	36(%eax)
	movb	$1,-13(%ebp)
Lj378:
	movb	-13(%ebp),%al
	movl	-116(%ebp),%ebx
	movl	-112(%ebp),%esi
	movl	-108(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JDHUFF_JINIT_HUFF_DECODER$J_DECOMPRESS_PTR
_JDHUFF_JINIT_HUFF_DECODER$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj705
Lj705:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$180,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,392(%eax)
	movl	-8(%ebp),%edx
	movl	L_JDHUFF_START_PASS_HUFF_DECODER$J_DECOMPRESS_PTR$non_lazy_ptr-Lj705(%esi),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	L_JDHUFF_DECODE_MCU$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr-Lj705(%esi),%eax
	movl	%eax,4(%edx)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj722:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	$0,40(%eax,%edx,4)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,60(%edx,%eax,4)
	cmpl	$3,-12(%ebp)
	jl	Lj722
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JDHUFF
_THREADVARLIST_JDHUFF:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_JDHUFF_EXTEND_TEST
_TC_JDHUFF_EXTEND_TEST:
	.long	0,1,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192,16384

.data
	.align 2
.globl	_TC_JDHUFF_EXTEND_OFFSET
_TC_JDHUFF_EXTEND_OFFSET:
	.long	0,-1,-3,-7,-15,-31,-63,-127,-255,-511,-1023,-2047,-4095,-8191,-16383,-32767
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_WARNMS$J_COMMON_PTR$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_WARNMS$J_COMMON_PTR$J_MESSAGE_CODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDHUFF_JPEG_MAKE_D_DERIVED_TBL$J_DECOMPRESS_PTR$BOOLEAN$LONGINT$D_DERIVED_TBL_PTR$stub:
.indirect_symbol _JDHUFF_JPEG_MAKE_D_DERIVED_TBL$J_DECOMPRESS_PTR$BOOLEAN$LONGINT$D_DERIVED_TBL_PTR
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

L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE
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

L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub:
.indirect_symbol _JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDHUFF_PROCESS_RESTART$J_DECOMPRESS_PTR$$BOOLEAN$stub:
.indirect_symbol _JDHUFF_PROCESS_RESTART$J_DECOMPRESS_PTR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDHUFF_JPEG_HUFF_DECODE$crc98D6E41A$stub:
.indirect_symbol _JDHUFF_JPEG_HUFF_DECODE$crc98D6E41A
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
.globl	_INIT_JDHUFF_D_DERIVED_TBL_PTR
_INIT_JDHUFF_D_DERIVED_TBL_PTR:
	.byte	0
	.ascii	"\021d_derived_tbl_ptr"

.const_data
	.align 2
.globl	_RTTI_JDHUFF_D_DERIVED_TBL_PTR
_RTTI_JDHUFF_D_DERIVED_TBL_PTR:
	.byte	0
	.ascii	"\021d_derived_tbl_ptr"

.const_data
	.align 2
.globl	_INIT_JDHUFF_D_DERIVED_TBL
_INIT_JDHUFF_D_DERIVED_TBL:
	.byte	13,13
	.ascii	"d_derived_tbl"
	.long	1424,0

.const_data
	.align 2
.globl	_RTTI_JDHUFF_DEF2
_RTTI_JDHUFF_DEF2:
	.byte	12
	.ascii	"\000"
	.long	4,18
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_JDHUFF_DEF3
_RTTI_JDHUFF_DEF3:
	.byte	12
	.ascii	"\000"
	.long	4,17
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_JDHUFF_DEF4
_RTTI_JDHUFF_DEF4:
	.byte	12
	.ascii	"\000"
	.long	4,256
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_JDHUFF_DEF5
_RTTI_JDHUFF_DEF5:
	.byte	12
	.ascii	"\000"
	.long	1,256
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_JDHUFF_D_DERIVED_TBL
_RTTI_JDHUFF_D_DERIVED_TBL:
	.byte	13,13
	.ascii	"d_derived_tbl"
	.long	1424,5
	.long	_RTTI_JDHUFF_DEF2
	.long	0
	.long	_RTTI_JDHUFF_DEF3
	.long	72
	.long	_RTTI_JPEGLIB_JHUFF_TBL_PTR
	.long	140
	.long	_RTTI_JDHUFF_DEF4
	.long	144
	.long	_RTTI_JDHUFF_DEF5
	.long	1168

.const_data
	.align 2
.globl	_INIT_JDHUFF_BITREAD_PERM_STATE
_INIT_JDHUFF_BITREAD_PERM_STATE:
	.byte	13,18
	.ascii	"bitread_perm_state"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_JDHUFF_BITREAD_PERM_STATE
_RTTI_JDHUFF_BITREAD_PERM_STATE:
	.byte	13,18
	.ascii	"bitread_perm_state"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4

.const_data
	.align 2
.globl	_INIT_JDHUFF_BITREAD_WORKING_STATE
_INIT_JDHUFF_BITREAD_WORKING_STATE:
	.byte	13,21
	.ascii	"bitread_working_state"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_JDHUFF_BITREAD_WORKING_STATE
_RTTI_JDHUFF_BITREAD_WORKING_STATE:
	.byte	13,21
	.ascii	"bitread_working_state"
	.long	20,5
	.long	_RTTI_JMORECFG_JOCTETPTR
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_JPEGLIB_J_DECOMPRESS_PTR
	.long	16
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
L_TC_JDHUFF_EXTEND_TEST$non_lazy_ptr:
.indirect_symbol _TC_JDHUFF_EXTEND_TEST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JDHUFF_EXTEND_OFFSET$non_lazy_ptr:
.indirect_symbol _TC_JDHUFF_EXTEND_OFFSET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JUTILS_JPEG_NATURAL_ORDER$non_lazy_ptr:
.indirect_symbol _TC_JUTILS_JPEG_NATURAL_ORDER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDHUFF_START_PASS_HUFF_DECODER$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JDHUFF_START_PASS_HUFF_DECODER$J_DECOMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDHUFF_DECODE_MCU$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JDHUFF_DECODE_MCU$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
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

