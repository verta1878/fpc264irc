	.file "flacdec.pas"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
FLACDEC_BRINIT$TBITREADER$PBYTE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	movb	$0,12(%eax)
	leave
	ret

.text
	.balign 4,0x90
FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$17,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	jmp	Lj18
	.balign 4,0x90
Lj17:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	4(%edx),%eax
	jge	Lj20
	jmp	Lj21
Lj20:
	jmp	Lj13
Lj21:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-17(%ebp)
	movl	-4(%ebp),%eax
	movzbl	12(%eax),%edx
	movl	$8,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj26
	jmp	Lj27
Lj26:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj27:
	movzbl	-17(%ebp),%edx
	movl	-4(%ebp),%eax
	movzbl	12(%eax),%ecx
	movl	$8,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	shrl	%cl,%edx
	movl	$1,%eax
	movl	-16(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	andl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ecx
	shll	%cl,%eax
	orl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-4(%ebp),%eax
	movb	-16(%ebp),%dl
	addb	%dl,12(%eax)
	movl	-16(%ebp),%eax
	subl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movzbl	12(%eax),%eax
	cmpl	$8,%eax
	jge	Lj32
	jmp	Lj33
Lj32:
	movl	-4(%ebp),%eax
	movb	$0,12(%eax)
	movl	-4(%ebp),%eax
	incl	8(%eax)
Lj33:
Lj18:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj17
	jmp	Lj19
Lj19:
Lj13:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
FLACDEC_BRREADSIGNED$TBITREADER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%ecx
	decl	%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movl	-16(%ebp),%edx
	andl	%edx,%eax
	testl	%eax,%eax
	jne	Lj44
	jmp	Lj45
Lj44:
	movl	$1,%eax
	movl	-8(%ebp),%ecx
	shll	%cl,%eax
	movl	-16(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj48
Lj45:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj48:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
FLACDEC_BRREADUNARY$TBITREADER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	jmp	Lj56
	.balign 4,0x90
Lj55:
	incl	-8(%ebp)
Lj56:
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	testl	%eax,%eax
	je	Lj55
	jmp	Lj57
Lj57:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
FLACDEC_BRREADRICE$TBITREADER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	FLACDEC_BRREADUNARY$TBITREADER$$LONGWORD
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%ecx
	shll	%cl,%eax
	movl	-20(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj76
	jmp	Lj77
Lj76:
	movl	-24(%ebp),%eax
	incl	%eax
	shrl	$1,%eax
	negl	%eax
	movl	%eax,-12(%ebp)
	jmp	Lj80
Lj77:
	movl	-24(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-12(%ebp)
Lj80:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
FLACDEC_BRALIGNBYTE$TBITREADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	12(%eax),%eax
	cmpl	$0,%eax
	jg	Lj85
	jmp	Lj86
Lj85:
	movl	-4(%ebp),%eax
	movb	$0,12(%eax)
	movl	-4(%ebp),%eax
	incl	8(%eax)
Lj86:
	leave
	ret

.text
	.balign 4,0x90
.globl	FLACDEC_FLACLOADMEM$PBYTE$LONGINT$TFLACINFO$$BOOLEAN
FLACDEC_FLACLOADMEM$PBYTE$LONGINT$TFLACINFO$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$2359660,%esp
	movl	%ebx,-2359660(%ebp)
	movl	%esi,-2359656(%ebp)
	movl	%edi,-2359652(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$24,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-8(%ebp),%eax
	cmpl	$42,%eax
	jl	Lj99
	jmp	Lj100
Lj99:
	jmp	Lj89
Lj100:
	movl	$0,-24(%ebp)
	decl	-24(%ebp)
	.balign 4,0x90
Lj103:
	incl	-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	-24(%ebp),%ecx
	movb	(%eax,%edx,1),%al
	cmpb	TC_FLACDEC_FLAC_MARKER(,%ecx,1),%al
	jne	Lj104
	jmp	Lj105
Lj104:
	jmp	Lj89
Lj105:
	cmpl	$3,-24(%ebp)
	jl	Lj103
	movl	$4,-20(%ebp)
	.balign 4,0x90
Lj108:
	movl	-20(%ebp),%eax
	addl	$4,%eax
	cmpl	-8(%ebp),%eax
	jg	Lj111
	jmp	Lj112
Lj111:
	jmp	Lj89
Lj112:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	-33(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	(%edx,%eax,1),%al
	andb	$127,%al
	movb	%al,-34(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$16,%eax
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	addl	$2,%edx
	movzbl	(%ecx,%edx,1),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	addl	$3,%edx
	movzbl	(%ecx,%edx,1),%edx
	orl	%edx,%eax
	movl	%eax,-40(%ebp)
	addl	$4,-20(%ebp)
	movzbl	-34(%ebp),%eax
	testl	%eax,%eax
	je	Lj119
	jmp	Lj120
Lj119:
	movl	-40(%ebp),%eax
	cmpl	$34,%eax
	jae	Lj121
	jmp	Lj122
Lj121:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movzbw	(%eax,%edx,1),%ax
	movzwl	%ax,%eax
	shll	$8,%eax
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	incl	%edx
	movzbl	(%ecx,%edx,1),%edx
	orl	%edx,%eax
	movl	-12(%ebp),%edx
	movw	%ax,20(%edx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$2,%eax
	movzbw	(%edx,%eax,1),%ax
	movzwl	%ax,%eax
	shll	$8,%eax
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	addl	$3,%edx
	movzbl	(%ecx,%edx,1),%edx
	orl	%edx,%eax
	movl	-12(%ebp),%edx
	movw	%ax,22(%edx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$10,%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$12,%eax
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	addl	$11,%edx
	movzbl	(%ecx,%edx,1),%edx
	shll	$4,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	addl	$12,%edx
	movzbl	(%ecx,%edx,1),%edx
	shrl	$4,%edx
	orl	%edx,%eax
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$12,%eax
	movzbl	(%edx,%eax,1),%eax
	shrl	$1,%eax
	andl	$7,%eax
	incl	%eax
	movl	-12(%ebp),%edx
	movb	%al,12(%edx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$12,%eax
	movb	(%edx,%eax,1),%al
	andb	$1,%al
	movzbl	%al,%eax
	shll	$4,%eax
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	addl	$13,%edx
	movzbl	(%ecx,%edx,1),%edx
	shrl	$4,%edx
	orl	%edx,%eax
	incl	%eax
	movl	-12(%ebp),%edx
	movb	%al,13(%edx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$13,%eax
	movzbl	(%edx,%eax,1),%eax
	andl	$15,%eax
	shll	$28,%eax
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	addl	$14,%edx
	movzbl	(%ecx,%edx,1),%edx
	shll	$20,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	addl	$15,%edx
	movzbl	(%ecx,%edx,1),%edx
	shll	$12,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	addl	$16,%edx
	movzbl	(%ecx,%edx,1),%edx
	shll	$4,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	addl	$17,%edx
	movzbl	(%ecx,%edx,1),%edx
	shrl	$4,%edx
	orl	%edx,%eax
	movl	-12(%ebp),%edx
	movl	%eax,16(%edx)
Lj122:
Lj120:
	movl	-40(%ebp),%eax
	addl	%eax,-20(%ebp)
	cmpb	$0,-33(%ebp)
	jne	Lj110
	jmp	Lj135
Lj135:
	movl	-20(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj110
	jmp	Lj108
Lj110:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj136
	jmp	Lj138
Lj138:
	movl	-12(%ebp),%eax
	movzbl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj136
	jmp	Lj137
Lj136:
	jmp	Lj89
Lj137:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj139
	jmp	Lj140
Lj139:
	movl	-12(%ebp),%eax
	movl	$13230000,16(%eax)
Lj140:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-2359632(%ebp)
	movl	-12(%ebp),%eax
	movzbl	12(%eax),%edx
	movl	-2359632(%ebp),%eax
	imull	%edx,%eax
	shll	$1,%eax
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	movl	4(%edx),%edx
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	$0,-2359628(%ebp)
	jmp	Lj160
	.balign 4,0x90
Lj159:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$255,%al
	jne	Lj162
	jmp	Lj164
Lj164:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movb	(%edx,%eax,1),%al
	andb	$252,%al
	cmpb	$248,%al
	jne	Lj162
	jmp	Lj163
Lj162:
	incl	-20(%ebp)
	jmp	Lj160
Lj163:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	(%eax,%edx,1),%edx
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	leal	-56(%ebp),%eax
	call	FLACDEC_BRINIT$TBITREADER$PBYTE$LONGINT
	leal	-56(%ebp),%eax
	movl	$14,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	movw	%ax,-58(%ebp)
	movzwl	-58(%ebp),%eax
	cmpl	$16382,%eax
	jne	Lj177
	jmp	Lj178
Lj177:
	incl	-20(%ebp)
	jmp	Lj160
Lj178:
	leal	-56(%ebp),%eax
	movl	$1,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	leal	-56(%ebp),%eax
	movl	$1,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	movb	%al,-59(%ebp)
	leal	-56(%ebp),%eax
	movl	$4,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	movb	%al,-60(%ebp)
	leal	-56(%ebp),%eax
	movl	$4,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	movb	%al,-61(%ebp)
	leal	-56(%ebp),%eax
	movl	$4,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	movb	%al,-62(%ebp)
	leal	-56(%ebp),%eax
	movl	$3,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	movb	%al,-63(%ebp)
	leal	-56(%ebp),%eax
	movl	$1,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	leal	-56(%ebp),%eax
	movl	$8,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	andl	$128,%eax
	testl	%eax,%eax
	jne	Lj223
	jmp	Lj224
Lj223:
	movl	$0,-28(%ebp)
	movl	-24(%ebp),%eax
	andl	$224,%eax
	cmpl	$192,%eax
	je	Lj227
	jmp	Lj228
Lj227:
	movl	$1,-28(%ebp)
	jmp	Lj231
Lj228:
	movl	-24(%ebp),%eax
	andl	$240,%eax
	cmpl	$224,%eax
	je	Lj232
	jmp	Lj233
Lj232:
	movl	$2,-28(%ebp)
	jmp	Lj236
Lj233:
	movl	-24(%ebp),%eax
	andl	$248,%eax
	cmpl	$240,%eax
	je	Lj237
	jmp	Lj238
Lj237:
	movl	$3,-28(%ebp)
	jmp	Lj241
Lj238:
	movl	-24(%ebp),%eax
	andl	$252,%eax
	cmpl	$248,%eax
	je	Lj242
	jmp	Lj243
Lj242:
	movl	$4,-28(%ebp)
	jmp	Lj246
Lj243:
	movl	-24(%ebp),%eax
	andl	$254,%eax
	cmpl	$252,%eax
	je	Lj247
	jmp	Lj248
Lj247:
	movl	$5,-28(%ebp)
Lj248:
Lj246:
Lj241:
Lj236:
Lj231:
	movl	-28(%ebp),%ebx
	decl	%ebx
	movl	$0,-2359640(%ebp)
	cmpl	-2359640(%ebp),%ebx
	jl	Lj252
	decl	-2359640(%ebp)
	.balign 4,0x90
Lj253:
	incl	-2359640(%ebp)
	leal	-56(%ebp),%eax
	movl	$8,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	cmpl	-2359640(%ebp),%ebx
	jg	Lj253
Lj252:
Lj224:
	movb	-60(%ebp),%al
	cmpb	$1,%al
	jb	Lj259
	decb	%al
	je	Lj260
	decb	%al
	jb	Lj259
	subb	$3,%al
	jbe	Lj261
	decb	%al
	je	Lj262
	decb	%al
	je	Lj263
	decb	%al
	jb	Lj259
	subb	$7,%al
	jbe	Lj264
	jmp	Lj259
Lj260:
	movw	$192,-66(%ebp)
	jmp	Lj258
Lj261:
	movzbl	-60(%ebp),%ecx
	subl	$2,%ecx
	movl	$576,%eax
	shll	%cl,%eax
	movw	%ax,-66(%ebp)
	jmp	Lj258
Lj262:
	leal	-56(%ebp),%eax
	movl	$8,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	incl	%eax
	movw	%ax,-66(%ebp)
	jmp	Lj258
Lj263:
	leal	-56(%ebp),%eax
	movl	$16,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	incl	%eax
	movw	%ax,-66(%ebp)
	jmp	Lj258
Lj264:
	movzbl	-60(%ebp),%ecx
	subl	$8,%ecx
	movl	$256,%eax
	shll	%cl,%eax
	movw	%ax,-66(%ebp)
	jmp	Lj258
Lj259:
	movw	$4096,-66(%ebp)
Lj258:
	movzbl	-61(%ebp),%eax
	cmpl	$12,%eax
	je	Lj285
	jmp	Lj286
Lj285:
	leal	-56(%ebp),%eax
	movl	$8,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	jmp	Lj291
Lj286:
	movzbl	-61(%ebp),%eax
	subl	$13,%eax
	cmpl	$2,%eax
	jb	Lj294
Lj294:
	jc	Lj292
	jmp	Lj293
Lj292:
	leal	-56(%ebp),%eax
	movl	$16,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
Lj293:
Lj291:
	leal	-56(%ebp),%eax
	movl	$8,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	movzbl	-62(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj303
	jmp	Lj304
Lj303:
	movzbl	-62(%ebp),%eax
	incl	%eax
	movl	%eax,-2359636(%ebp)
	jmp	Lj307
Lj304:
	movl	$2,-2359636(%ebp)
Lj307:
	movl	-2359636(%ebp),%ebx
	decl	%ebx
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%ebx
	jl	Lj311
	decl	-32(%ebp)
	.balign 4,0x90
Lj312:
	incl	-32(%ebp)
	leal	-56(%ebp),%eax
	movl	$1,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	leal	-56(%ebp),%eax
	movl	$6,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	movb	%al,-75(%ebp)
	leal	-56(%ebp),%eax
	movl	$1,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	cmpl	$1,%eax
	je	Lj323
	jmp	Lj324
Lj323:
	leal	-56(%ebp),%eax
	call	FLACDEC_BRREADUNARY$TBITREADER$$LONGWORD
Lj324:
	movzbl	-75(%ebp),%eax
	testl	%eax,%eax
	je	Lj331
	jmp	Lj332
Lj331:
	movl	-12(%ebp),%eax
	movzbl	13(%eax),%edx
	leal	-56(%ebp),%eax
	call	FLACDEC_BRREADSIGNED$TBITREADER$LONGINT$$LONGINT
	movl	%eax,-2359624(%ebp)
	movzwl	-66(%ebp),%eax
	decl	%eax
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jl	Lj340
	decl	-24(%ebp)
	.balign 4,0x90
Lj341:
	incl	-24(%ebp)
	movl	-32(%ebp),%edx
	imull	$262140,%edx
	movl	-24(%ebp),%esi
	leal	-2359620(%ebp,%edx),%ecx
	movl	-2359624(%ebp),%edx
	movl	%edx,(%ecx,%esi,4)
	cmpl	-24(%ebp),%eax
	jg	Lj341
Lj340:
	jmp	Lj344
Lj332:
	movzbl	-75(%ebp),%eax
	cmpl	$1,%eax
	je	Lj345
	jmp	Lj346
Lj345:
	movzwl	-66(%ebp),%esi
	decl	%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj348
	decl	-24(%ebp)
	.balign 4,0x90
Lj349:
	incl	-24(%ebp)
	movl	-12(%ebp),%eax
	movzbl	13(%eax),%edx
	leal	-56(%ebp),%eax
	call	FLACDEC_BRREADSIGNED$TBITREADER$LONGINT$$LONGINT
	movl	-32(%ebp),%edx
	imull	$262140,%edx
	movl	-24(%ebp),%ecx
	leal	-2359620(%ebp,%edx),%edx
	movl	%eax,(%edx,%ecx,4)
	cmpl	-24(%ebp),%esi
	jg	Lj349
Lj348:
	jmp	Lj356
Lj346:
	movzbl	-75(%ebp),%eax
	cmpl	$8,%eax
	jge	Lj359
	jmp	Lj358
Lj359:
	movzbl	-75(%ebp),%eax
	cmpl	$12,%eax
	jle	Lj357
	jmp	Lj358
Lj357:
	movzbl	-75(%ebp),%eax
	subl	$8,%eax
	movl	%eax,-80(%ebp)
	movl	-80(%ebp),%esi
	decl	%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj363
	decl	-24(%ebp)
	.balign 4,0x90
Lj364:
	incl	-24(%ebp)
	movl	-12(%ebp),%eax
	movzbl	13(%eax),%edx
	leal	-56(%ebp),%eax
	call	FLACDEC_BRREADSIGNED$TBITREADER$LONGINT$$LONGINT
	movl	-32(%ebp),%edx
	imull	$262140,%edx
	movl	-24(%ebp),%ecx
	leal	-2359620(%ebp,%edx),%edx
	movl	%eax,(%edx,%ecx,4)
	cmpl	-24(%ebp),%esi
	jg	Lj364
Lj363:
	leal	-56(%ebp),%eax
	movl	$2,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	movl	%eax,-24(%ebp)
	leal	-56(%ebp),%eax
	movl	$4,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	movl	%eax,-348(%ebp)
	movl	$1,%eax
	movl	-348(%ebp),%ecx
	shll	%cl,%eax
	movl	%eax,-352(%ebp)
	movl	-80(%ebp),%eax
	movl	%eax,-2359640(%ebp)
	movl	-352(%ebp),%esi
	decl	%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj388
	decl	-24(%ebp)
	.balign 4,0x90
Lj389:
	incl	-24(%ebp)
	leal	-56(%ebp),%eax
	movl	$4,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	movl	%eax,-356(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj396
	jmp	Lj397
Lj396:
	movzwl	-66(%ebp),%eax
	cltd
	idivl	-352(%ebp)
	movl	-80(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-360(%ebp)
	jmp	Lj400
Lj397:
	movzwl	-66(%ebp),%eax
	cltd
	idivl	-352(%ebp)
	movl	%eax,-360(%ebp)
Lj400:
	movl	-360(%ebp),%edi
	decl	%edi
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%edi
	jl	Lj404
	decl	-28(%ebp)
	.balign 4,0x90
Lj405:
	incl	-28(%ebp)
	movzwl	-66(%ebp),%eax
	cmpl	-2359640(%ebp),%eax
	jg	Lj406
	jmp	Lj407
Lj406:
	movl	-356(%ebp),%edx
	leal	-56(%ebp),%eax
	call	FLACDEC_BRREADRICE$TBITREADER$LONGINT$$LONGINT
	movl	-32(%ebp),%edx
	imull	$262140,%edx
	movl	-2359640(%ebp),%ecx
	leal	-2359620(%ebp,%edx),%edx
	movl	%eax,(%edx,%ecx,4)
Lj407:
	incl	-2359640(%ebp)
	cmpl	-28(%ebp),%edi
	jg	Lj405
Lj404:
	cmpl	-24(%ebp),%esi
	jg	Lj389
Lj388:
	movzwl	-66(%ebp),%eax
	decl	%eax
	movl	-80(%ebp),%edx
	movl	%edx,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jl	Lj415
	decl	-24(%ebp)
	.balign 4,0x90
Lj416:
	incl	-24(%ebp)
	movl	-80(%ebp),%edx
	testl	%edx,%edx
	jl	Lj418
	testl	%edx,%edx
	je	Lj419
	decl	%edx
	je	Lj420
	decl	%edx
	je	Lj421
	decl	%edx
	je	Lj422
	decl	%edx
	je	Lj423
	jmp	Lj418
Lj419:
	jmp	Lj417
Lj420:
	movl	-32(%ebp),%edx
	imull	$262140,%edx
	movl	-24(%ebp),%ecx
	decl	%ecx
	leal	-2359620(%ebp,%edx),%esi
	movl	-32(%ebp),%edx
	imull	$262140,%edx
	movl	-24(%ebp),%edi
	leal	-2359620(%ebp,%edx),%edx
	movl	(%esi,%ecx,4),%ecx
	addl	%ecx,(%edx,%edi,4)
	jmp	Lj417
Lj421:
	movl	-32(%ebp),%edx
	imull	$262140,%edx
	movl	-24(%ebp),%ecx
	decl	%ecx
	leal	-2359620(%ebp,%edx),%edx
	movl	(%edx,%ecx,4),%edx
	shll	$1,%edx
	movl	-32(%ebp),%ecx
	imull	$262140,%ecx
	movl	-24(%ebp),%esi
	subl	$2,%esi
	leal	-2359620(%ebp,%ecx),%ecx
	movl	(%ecx,%esi,4),%ecx
	subl	%ecx,%edx
	movl	-32(%ebp),%ecx
	imull	$262140,%ecx
	movl	-24(%ebp),%esi
	leal	-2359620(%ebp,%ecx),%ecx
	addl	%edx,(%ecx,%esi,4)
	jmp	Lj417
Lj422:
	movl	-32(%ebp),%edx
	imull	$262140,%edx
	movl	-24(%ebp),%ecx
	decl	%ecx
	leal	-2359620(%ebp,%edx),%edx
	movl	(%edx,%ecx,4),%esi
	imull	$3,%esi
	movl	-32(%ebp),%edx
	imull	$262140,%edx
	movl	-24(%ebp),%ecx
	subl	$2,%ecx
	leal	-2359620(%ebp,%edx),%edx
	movl	(%edx,%ecx,4),%edx
	imull	$3,%edx
	subl	%edx,%esi
	movl	-32(%ebp),%edx
	imull	$262140,%edx
	movl	-24(%ebp),%ecx
	subl	$3,%ecx
	leal	-2359620(%ebp,%edx),%edx
	movl	(%edx,%ecx,4),%edx
	addl	%edx,%esi
	movl	-32(%ebp),%edx
	imull	$262140,%edx
	movl	-24(%ebp),%ecx
	leal	-2359620(%ebp,%edx),%edx
	addl	%esi,(%edx,%ecx,4)
	jmp	Lj417
Lj423:
	movl	-32(%ebp),%edx
	imull	$262140,%edx
	movl	-24(%ebp),%ecx
	subl	$2,%ecx
	leal	-2359620(%ebp,%edx),%edx
	movl	(%edx,%ecx,4),%esi
	imull	$6,%esi
	movl	-32(%ebp),%edx
	imull	$262140,%edx
	movl	-24(%ebp),%ecx
	decl	%ecx
	leal	-2359620(%ebp,%edx),%edx
	movl	(%edx,%ecx,4),%edx
	shll	$2,%edx
	subl	%esi,%edx
	movl	%edx,%esi
	movl	-32(%ebp),%edx
	imull	$262140,%edx
	movl	-24(%ebp),%ecx
	subl	$3,%ecx
	leal	-2359620(%ebp,%edx),%edx
	movl	(%edx,%ecx,4),%edx
	shll	$2,%edx
	addl	%edx,%esi
	movl	-32(%ebp),%edx
	imull	$262140,%edx
	movl	-24(%ebp),%ecx
	subl	$4,%ecx
	leal	-2359620(%ebp,%edx),%edx
	movl	(%edx,%ecx,4),%edx
	subl	%edx,%esi
	movl	-32(%ebp),%edx
	imull	$262140,%edx
	movl	-24(%ebp),%ecx
	leal	-2359620(%ebp,%edx),%edx
	addl	%esi,(%edx,%ecx,4)
	jmp	Lj417
Lj418:
Lj417:
	cmpl	-24(%ebp),%eax
	jg	Lj416
Lj415:
	jmp	Lj424
Lj358:
	movzbl	-75(%ebp),%eax
	cmpl	$32,%eax
	jge	Lj425
	jmp	Lj426
Lj425:
	movzbl	-75(%ebp),%eax
	subl	$31,%eax
	movl	%eax,-80(%ebp)
	movl	-80(%ebp),%eax
	cmpl	$32,%eax
	jg	Lj429
	jmp	Lj430
Lj429:
	movl	$32,-80(%ebp)
Lj430:
	movl	-80(%ebp),%esi
	decl	%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj434
	decl	-24(%ebp)
	.balign 4,0x90
Lj435:
	incl	-24(%ebp)
	movl	-12(%ebp),%eax
	movzbl	13(%eax),%edx
	leal	-56(%ebp),%eax
	call	FLACDEC_BRREADSIGNED$TBITREADER$LONGINT$$LONGINT
	movl	-32(%ebp),%edx
	imull	$262140,%edx
	movl	-24(%ebp),%ecx
	leal	-2359620(%ebp,%edx),%edx
	movl	%eax,(%edx,%ecx,4)
	cmpl	-24(%ebp),%esi
	jg	Lj435
Lj434:
	leal	-56(%ebp),%eax
	movl	$4,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	movl	%eax,-340(%ebp)
	leal	-56(%ebp),%eax
	movl	$5,%edx
	call	FLACDEC_BRREADSIGNED$TBITREADER$LONGINT$$LONGINT
	movl	%eax,-344(%ebp)
	movl	-80(%ebp),%esi
	decl	%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj455
	decl	-24(%ebp)
	.balign 4,0x90
Lj456:
	incl	-24(%ebp)
	movl	-340(%ebp),%edx
	incl	%edx
	leal	-56(%ebp),%eax
	call	FLACDEC_BRREADSIGNED$TBITREADER$LONGINT$$LONGINT
	movl	-24(%ebp),%edx
	movl	%eax,-336(%ebp,%edx,4)
	cmpl	-24(%ebp),%esi
	jg	Lj456
Lj455:
	leal	-56(%ebp),%eax
	movl	$2,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	movl	%eax,-24(%ebp)
	leal	-56(%ebp),%eax
	movl	$4,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	movl	%eax,-348(%ebp)
	movl	$1,%eax
	movl	-348(%ebp),%ecx
	shll	%cl,%eax
	movl	%eax,-352(%ebp)
	movl	-80(%ebp),%eax
	movl	%eax,-2359640(%ebp)
	movl	-352(%ebp),%esi
	decl	%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj480
	decl	-24(%ebp)
	.balign 4,0x90
Lj481:
	incl	-24(%ebp)
	leal	-56(%ebp),%eax
	movl	$4,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	movl	%eax,-356(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj488
	jmp	Lj489
Lj488:
	movzwl	-66(%ebp),%eax
	cltd
	idivl	-352(%ebp)
	movl	-80(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-360(%ebp)
	jmp	Lj492
Lj489:
	movzwl	-66(%ebp),%eax
	cltd
	idivl	-352(%ebp)
	movl	%eax,-360(%ebp)
Lj492:
	movl	-360(%ebp),%edi
	decl	%edi
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%edi
	jl	Lj496
	decl	-28(%ebp)
	.balign 4,0x90
Lj497:
	incl	-28(%ebp)
	movzwl	-66(%ebp),%eax
	cmpl	-2359640(%ebp),%eax
	jg	Lj498
	jmp	Lj499
Lj498:
	movl	-356(%ebp),%edx
	leal	-56(%ebp),%eax
	call	FLACDEC_BRREADRICE$TBITREADER$LONGINT$$LONGINT
	movl	-32(%ebp),%edx
	imull	$262140,%edx
	movl	-2359640(%ebp),%ecx
	leal	-2359620(%ebp,%edx),%edx
	movl	%eax,(%edx,%ecx,4)
Lj499:
	incl	-2359640(%ebp)
	cmpl	-28(%ebp),%edi
	jg	Lj497
Lj496:
	cmpl	-24(%ebp),%esi
	jg	Lj481
Lj480:
	movzwl	-66(%ebp),%eax
	decl	%eax
	movl	-80(%ebp),%edx
	movl	%edx,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jl	Lj507
	decl	-24(%ebp)
	.balign 4,0x90
Lj508:
	incl	-24(%ebp)
	movl	$0,-2359624(%ebp)
	movl	-80(%ebp),%edx
	decl	%edx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%edx
	jl	Lj512
	decl	-28(%ebp)
	.balign 4,0x90
Lj513:
	incl	-28(%ebp)
	movl	-32(%ebp),%ecx
	imull	$262140,%ecx
	movl	-24(%ebp),%esi
	decl	%esi
	movl	-28(%ebp),%edi
	subl	%edi,%esi
	leal	-2359620(%ebp,%ecx),%ecx
	movl	-28(%ebp),%edi
	movl	(%ecx,%esi,4),%ecx
	movl	-336(%ebp,%edi,4),%esi
	imull	%esi,%ecx
	addl	%ecx,-2359624(%ebp)
	cmpl	-28(%ebp),%edx
	jg	Lj513
Lj512:
	movl	-2359624(%ebp),%edx
	movl	-344(%ebp),%ecx
	shrl	%cl,%edx
	movl	-32(%ebp),%ecx
	imull	$262140,%ecx
	movl	-24(%ebp),%esi
	leal	-2359620(%ebp,%ecx),%ecx
	addl	%edx,(%ecx,%esi,4)
	cmpl	-24(%ebp),%eax
	jg	Lj508
Lj507:
Lj426:
Lj424:
Lj356:
Lj344:
	cmpl	-32(%ebp),%ebx
	jg	Lj312
Lj311:
	movzbl	-62(%ebp),%eax
	cmpl	$8,%eax
	je	Lj514
	jmp	Lj515
Lj514:
	movzwl	-66(%ebp),%eax
	decl	%eax
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jl	Lj517
	decl	-24(%ebp)
	.balign 4,0x90
Lj518:
	incl	-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	-2359620(%ebp,%edx,4),%ebx
	movl	-2097480(%ebp,%ecx,4),%edx
	subl	%edx,%ebx
	movl	-24(%ebp),%edx
	movl	%ebx,-2097480(%ebp,%edx,4)
	cmpl	-24(%ebp),%eax
	jg	Lj518
Lj517:
	jmp	Lj521
Lj515:
	movzbl	-62(%ebp),%eax
	cmpl	$9,%eax
	je	Lj522
	jmp	Lj523
Lj522:
	movzwl	-66(%ebp),%eax
	decl	%eax
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jl	Lj525
	decl	-24(%ebp)
	.balign 4,0x90
Lj526:
	incl	-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	-2359620(%ebp,%edx,4),%ebx
	movl	-2097480(%ebp,%ecx,4),%edx
	addl	%edx,%ebx
	movl	-24(%ebp),%edx
	movl	%ebx,-2359620(%ebp,%edx,4)
	cmpl	-24(%ebp),%eax
	jg	Lj526
Lj525:
	jmp	Lj529
Lj523:
	movzbl	-62(%ebp),%eax
	cmpl	$10,%eax
	je	Lj530
	jmp	Lj531
Lj530:
	movzwl	-66(%ebp),%eax
	decl	%eax
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jl	Lj533
	decl	-24(%ebp)
	.balign 4,0x90
Lj534:
	incl	-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-2359620(%ebp,%edx,4),%edx
	movl	%edx,-2359644(%ebp)
	movl	-24(%ebp),%edx
	movl	-2097480(%ebp,%edx,4),%edx
	movl	%edx,-2359648(%ebp)
	movl	-2359644(%ebp),%edx
	shll	$1,%edx
	movl	%edx,-2359644(%ebp)
	movl	-2359648(%ebp),%edx
	andl	$1,%edx
	addl	%edx,-2359644(%ebp)
	movl	-2359644(%ebp),%edx
	movl	-2359648(%ebp),%ecx
	addl	%ecx,%edx
	shrl	$1,%edx
	movl	-24(%ebp),%ecx
	movl	%edx,-2359620(%ebp,%ecx,4)
	movl	-2359644(%ebp),%edx
	movl	-2359648(%ebp),%ecx
	subl	%ecx,%edx
	shrl	$1,%edx
	movl	-24(%ebp),%ecx
	movl	%edx,-2097480(%ebp,%ecx,4)
	cmpl	-24(%ebp),%eax
	jg	Lj534
Lj533:
Lj531:
Lj529:
Lj521:
	movzwl	-66(%ebp),%eax
	decl	%eax
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jl	Lj546
	decl	-24(%ebp)
	.balign 4,0x90
Lj547:
	incl	-24(%ebp)
	movl	-2359628(%ebp),%edx
	cmpl	-2359632(%ebp),%edx
	jge	Lj548
	jmp	Lj549
Lj548:
	jmp	Lj546
Lj549:
	movl	-12(%ebp),%edx
	movzbl	12(%edx),%edx
	decl	%edx
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%edx
	jl	Lj551
	decl	-32(%ebp)
	.balign 4,0x90
Lj552:
	incl	-32(%ebp)
	movl	-32(%ebp),%ecx
	cmpl	-2359636(%ebp),%ecx
	jl	Lj553
	jmp	Lj554
Lj553:
	movl	-32(%ebp),%ecx
	imull	$262140,%ecx
	movl	-24(%ebp),%ebx
	leal	-2359620(%ebp,%ecx),%ecx
	movl	(%ecx,%ebx,4),%ecx
	movl	%ecx,-2359624(%ebp)
	movl	-12(%ebp),%ecx
	movzbl	13(%ecx),%ecx
	cmpl	$16,%ecx
	jg	Lj557
	jmp	Lj558
Lj557:
	movl	-12(%ebp),%ecx
	movzbl	13(%ecx),%ecx
	subl	$16,%ecx
	movl	-2359624(%ebp),%ebx
	shrl	%cl,%ebx
	movl	%ebx,-2359624(%ebp)
	jmp	Lj561
Lj558:
	movl	-12(%ebp),%ecx
	movzbl	13(%ecx),%ecx
	cmpl	$16,%ecx
	jl	Lj562
	jmp	Lj563
Lj562:
	movl	-12(%ebp),%ecx
	movzbl	13(%ecx),%ecx
	movl	$16,%ebx
	subl	%ecx,%ebx
	movl	%ebx,%ecx
	movl	-2359624(%ebp),%ebx
	shll	%cl,%ebx
	movl	%ebx,-2359624(%ebp)
Lj563:
Lj561:
	movl	-2359624(%ebp),%ecx
	cmpl	$32767,%ecx
	jg	Lj566
	jmp	Lj567
Lj566:
	movl	$32767,-2359624(%ebp)
Lj567:
	movl	-2359624(%ebp),%ecx
	cmpl	$-32768,%ecx
	jl	Lj570
	jmp	Lj571
Lj570:
	movl	$-32768,-2359624(%ebp)
Lj571:
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ebx
	movl	-12(%ebp),%ecx
	movzbl	12(%ecx),%esi
	movl	-2359628(%ebp),%ecx
	imull	%esi,%ecx
	movl	-32(%ebp),%esi
	addl	%esi,%ecx
	movw	-2359624(%ebp),%si
	movw	%si,(%ebx,%ecx,2)
Lj554:
	cmpl	-32(%ebp),%edx
	jg	Lj552
Lj551:
	incl	-2359628(%ebp)
	cmpl	-24(%ebp),%eax
	jg	Lj547
Lj546:
	leal	-56(%ebp),%eax
	call	FLACDEC_BRALIGNBYTE$TBITREADER
	leal	-56(%ebp),%eax
	movl	$16,%edx
	call	FLACDEC_BRREADBITS$TBITREADER$LONGINT$$LONGWORD
	movl	-20(%ebp),%edx
	movl	-48(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
Lj160:
	movl	-20(%ebp),%eax
	addl	$4,%eax
	cmpl	-8(%ebp),%eax
	jl	Lj159
	jmp	Lj161
Lj161:
	movl	-12(%ebp),%eax
	movl	-2359628(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-12(%ebp),%eax
	movzbl	12(%eax),%edx
	movl	-2359628(%ebp),%eax
	imull	%edx,%eax
	shll	$1,%eax
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-2359628(%ebp),%eax
	cmpl	$0,%eax
	setgb	-13(%ebp)
Lj89:
	movb	-13(%ebp),%al
	movl	-2359660(%ebp),%ebx
	movl	-2359656(%ebp),%esi
	movl	-2359652(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	FLACDEC_FLACLOADFILE$SHORTSTRING$TFLACINFO$$BOOLEAN
FLACDEC_FLACLOADFILE$SHORTSTRING$TFLACINFO$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$360,%esp
	movl	%ebx,-360(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$24,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-4(%ebp),%edx
	leal	-344(%ebp),%eax
	call	SYSTEM_ASSIGN$file$SHORTSTRING
	leal	-344(%ebp),%eax
	movl	$1,%edx
	call	SYSTEM_RESET$file$LONGINT
	call	SYSTEM_IORESULT$$WORD
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj608
	jmp	Lj609
Lj608:
	jmp	Lj590
Lj609:
	leal	-344(%ebp),%eax
	call	SYSTEM_FILESIZE$file$$INT64
	movl	%eax,%ebx
	call	FPC_IOCHECK
	movl	%ebx,-352(%ebp)
	movl	-352(%ebp),%eax
	cmpl	$42,%eax
	jl	Lj614
	jmp	Lj615
Lj614:
	leal	-344(%ebp),%eax
	call	SYSTEM_CLOSE$file
	call	FPC_IOCHECK
	jmp	Lj590
Lj615:
	movl	-352(%ebp),%edx
	leal	-348(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	leal	-356(%ebp),%eax
	pushl	%eax
	movl	-348(%ebp),%edx
	movl	-352(%ebp),%ecx
	leal	-344(%ebp),%eax
	call	SYSTEM_BLOCKREAD$file$formal$LONGINT$LONGINT
	call	FPC_IOCHECK
	leal	-344(%ebp),%eax
	call	SYSTEM_CLOSE$file
	call	FPC_IOCHECK
	movl	-356(%ebp),%eax
	cmpl	-352(%ebp),%eax
	jne	Lj632
	jmp	Lj633
Lj632:
	movl	-348(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	jmp	Lj590
Lj633:
	movl	-8(%ebp),%ecx
	movl	-352(%ebp),%edx
	movl	-348(%ebp),%eax
	call	FLACDEC_FLACLOADMEM$PBYTE$LONGINT$TFLACINFO$$BOOLEAN
	movb	%al,-9(%ebp)
	movl	-348(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj590:
	movb	-9(%ebp),%al
	movl	-360(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	FLACDEC_FLACFREE$TFLACINFO
FLACDEC_FLACFREE$TFLACINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj648
	jmp	Lj649
Lj648:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj649:
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	THREADVARLIST_FLACDEC
THREADVARLIST_FLACDEC:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
TC_FLACDEC_FLAC_MARKER:
	.byte	102,76,97,67
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.data
	.balign 4
.globl	INIT_FLACDEC_TFLACINFO
INIT_FLACDEC_TFLACINFO:
	.byte	13,9
	.ascii	"TFLACInfo"
	.long	24,0

.data
	.balign 4
.globl	RTTI_FLACDEC_TFLACINFO
RTTI_FLACDEC_TFLACINFO:
	.byte	13,9
	.ascii	"TFLACInfo"
	.long	24,8
	.long	RTTI_SYSTEM_PSMALLINT
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_SYSTEM_BYTE
	.long	12
	.long	RTTI_SYSTEM_BYTE
	.long	13
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_SYSTEM_WORD
	.long	20
	.long	RTTI_SYSTEM_WORD
	.long	22
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

