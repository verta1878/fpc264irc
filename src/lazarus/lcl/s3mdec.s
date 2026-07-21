	.file "s3mdec.pas"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
S3MDEC_READLE16$PBYTE$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbw	1(%eax),%ax
	movzwl	%ax,%eax
	shll	$8,%eax
	movl	-4(%ebp),%edx
	movzbw	(%edx),%dx
	movzwl	%dx,%edx
	orl	%edx,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
S3MDEC_READLE32$PBYTE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	1(%eax),%eax
	shll	$8,%eax
	movl	-4(%ebp),%edx
	movzbl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movzbl	2(%edx),%edx
	shll	$16,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movzbl	3(%edx),%edx
	shll	$24,%edx
	orl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
S3MDEC_NOTETOPERIOD$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$255,%eax
	je	Lj13
	jmp	Lj16
Lj16:
	movl	-4(%ebp),%eax
	cmpl	$254,%eax
	je	Lj13
	jmp	Lj15
Lj15:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj13
	jmp	Lj14
Lj13:
	movl	$0,-12(%ebp)
	jmp	Lj11
Lj14:
	movl	-4(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	andl	$15,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$11,%eax
	ja	Lj23
	jmp	Lj24
Lj23:
	movl	$11,-20(%ebp)
Lj24:
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	$0,%eax
	pushl	%eax
	pushl	%edx
	movl	$1,%eax
	movl	-16(%ebp),%ecx
	shll	%cl,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	pushl	%edx
	pushl	%eax
	movl	$0,%eax
	call	fpc_mul_int64
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$229079296
	call	fpc_div_int64
	movl	%eax,-12(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj41
	jmp	Lj42
Lj41:
	movl	-20(%ebp),%edx
	movl	$192,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	mull	%edx
	movl	%eax,%edx
	movl	$-1431655765,%eax
	mull	%edx
	shrl	$7,%edx
	movl	%edx,-12(%ebp)
Lj42:
Lj11:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
S3MDEC_PERIODTOINC$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj47
	jmp	Lj48
Lj47:
	movl	$0,-12(%ebp)
	jmp	Lj51
Lj48:
	movl	-8(%ebp),%eax
	mull	-4(%ebp)
	movl	%eax,%ecx
	movl	$57269824,%eax
	xorl	%edx,%edx
	divl	%ecx
	movl	%eax,-12(%ebp)
Lj51:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
S3MDEC_CLAMPVOL$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj56
	jmp	Lj57
Lj56:
	movl	$0,-8(%ebp)
	jmp	Lj60
Lj57:
	movl	-4(%ebp),%eax
	cmpl	$64,%eax
	jg	Lj61
	jmp	Lj62
Lj61:
	movl	$64,-8(%ebp)
	jmp	Lj65
Lj62:
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj65:
Lj60:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	S3MDEC_S3MLOADMEM$PBYTE$LONGINT$TS3MFILE$$BOOLEAN
S3MDEC_S3MLOADMEM$PBYTE$LONGINT$TS3MFILE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$80,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$7304,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-8(%ebp),%eax
	cmpl	$96,%eax
	jl	Lj78
	jmp	Lj79
Lj78:
	jmp	Lj68
Lj79:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	$28,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	movzbl	28(%eax),%eax
	cmpl	$26,%eax
	jne	Lj86
	jmp	Lj87
Lj86:
	jmp	Lj68
Lj87:
	movl	-4(%ebp),%eax
	movzbl	29(%eax),%eax
	cmpl	$16,%eax
	jne	Lj88
	jmp	Lj89
Lj88:
	jmp	Lj68
Lj89:
	movl	-4(%ebp),%eax
	leal	32(%eax),%eax
	call	S3MDEC_READLE16$PBYTE$$WORD
	movl	-12(%ebp),%edx
	movw	%ax,28(%edx)
	movl	-4(%ebp),%eax
	leal	34(%eax),%eax
	call	S3MDEC_READLE16$PBYTE$$WORD
	movl	-12(%ebp),%edx
	movw	%ax,30(%edx)
	movl	-4(%ebp),%eax
	leal	36(%eax),%eax
	call	S3MDEC_READLE16$PBYTE$$WORD
	movl	-12(%ebp),%edx
	movw	%ax,32(%edx)
	movl	-4(%ebp),%eax
	leal	38(%eax),%eax
	call	S3MDEC_READLE16$PBYTE$$WORD
	movl	-12(%ebp),%edx
	movw	%ax,34(%edx)
	movl	-4(%ebp),%eax
	leal	40(%eax),%eax
	call	S3MDEC_READLE16$PBYTE$$WORD
	movl	-12(%ebp),%edx
	movw	%ax,36(%edx)
	movl	-4(%ebp),%eax
	movb	44(%eax),%al
	cmpb	$83,%al
	jne	Lj110
	jmp	Lj114
Lj114:
	movl	-4(%ebp),%eax
	movb	45(%eax),%al
	cmpb	$67,%al
	jne	Lj110
	jmp	Lj113
Lj113:
	movl	-4(%ebp),%eax
	movb	46(%eax),%al
	cmpb	$82,%al
	jne	Lj110
	jmp	Lj112
Lj112:
	movl	-4(%ebp),%eax
	movb	47(%eax),%al
	cmpb	$77,%al
	jne	Lj110
	jmp	Lj111
Lj110:
	jmp	Lj68
Lj111:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	48(%eax),%al
	movb	%al,38(%edx)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	49(%eax),%al
	movb	%al,39(%edx)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	50(%eax),%al
	movb	%al,40(%edx)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	51(%eax),%al
	movb	%al,41(%edx)
	movl	-4(%ebp),%eax
	leal	64(%eax),%eax
	movl	-12(%ebp),%edx
	leal	42(%edx),%edx
	movl	$32,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	$0,-72(%ebp)
	movl	$0,-24(%ebp)
	decl	-24(%ebp)
	.balign 4,0x90
Lj133:
	incl	-24(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	42(%eax,%edx,1),%al
	cmpb	$128,%al
	jb	Lj134
	jmp	Lj135
Lj134:
	movl	-24(%ebp),%eax
	incl	%eax
	movl	%eax,-72(%ebp)
Lj135:
	cmpl	$31,-24(%ebp)
	jl	Lj133
	movl	-12(%ebp),%eax
	movl	-72(%ebp),%edx
	movl	%edx,7296(%eax)
	movl	$96,-20(%ebp)
	movl	-12(%ebp),%eax
	movzwl	28(%eax),%eax
	movl	-20(%ebp),%edx
	addl	%eax,%edx
	cmpl	-8(%ebp),%edx
	jg	Lj142
	jmp	Lj143
Lj142:
	jmp	Lj68
Lj143:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	movl	-12(%ebp),%edx
	movzwl	28(%edx),%ecx
	movl	-12(%ebp),%edx
	leal	74(%edx),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-12(%ebp),%eax
	movzwl	28(%eax),%eax
	addl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movzwl	30(%eax),%eax
	shll	$1,%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	cmpl	-8(%ebp),%eax
	jg	Lj150
	jmp	Lj151
Lj150:
	jmp	Lj68
Lj151:
	movl	-12(%ebp),%eax
	movzwl	30(%eax),%ebx
	movl	$1,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj153
	decl	-24(%ebp)
	.balign 4,0x90
Lj154:
	incl	-24(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	leal	(%edx,%eax,1),%eax
	call	S3MDEC_READLE16$PBYTE$$WORD
	movw	%ax,-34(%ebp)
	addl	$2,-20(%ebp)
	movzwl	-34(%ebp),%eax
	shll	$4,%eax
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	addl	$80,%eax
	cmpl	-8(%ebp),%eax
	ja	Lj161
	jmp	Lj162
Lj161:
	jmp	Lj152
Lj162:
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-46(%ebp)
	movzbl	-46(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj165
	jmp	Lj166
Lj165:
	jmp	Lj152
Lj166:
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	$16,%eax
	leal	(%edx,%eax,1),%eax
	call	S3MDEC_READLE32$PBYTE$$LONGWORD
	andl	$65535,%eax
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%edx
	imull	$60,%edx
	movl	%eax,300(%ecx,%edx)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	$20,%eax
	leal	(%edx,%eax,1),%eax
	call	S3MDEC_READLE32$PBYTE$$LONGWORD
	andl	$65535,%eax
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%edx
	imull	$60,%edx
	movl	%eax,304(%ecx,%edx)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	$24,%eax
	leal	(%edx,%eax,1),%eax
	call	S3MDEC_READLE32$PBYTE$$LONGWORD
	andl	$65535,%eax
	movl	%eax,-44(%ebp)
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$60,%eax
	movl	304(%edx,%eax),%eax
	cmpl	-44(%ebp),%eax
	jb	Lj179
	jmp	Lj180
Lj179:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$60,%eax
	movl	304(%edx,%eax),%edx
	movl	-44(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%eax
	imull	$60,%eax
	movl	%edx,308(%ecx,%eax)
	jmp	Lj183
Lj180:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$60,%eax
	movl	$0,308(%edx,%eax)
Lj183:
	movl	-4(%ebp),%esi
	movl	-40(%ebp),%eax
	addl	$28,%eax
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%ecx
	imull	$60,%ecx
	movb	(%esi,%eax,1),%al
	movb	%al,312(%edx,%ecx)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	$31,%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-45(%ebp)
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%eax
	imull	$60,%eax
	movb	-45(%ebp),%dl
	movb	%dl,313(%ecx,%eax)
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%eax
	imull	$60,%eax
	movb	-45(%ebp),%dl
	andb	$4,%dl
	movzbl	%dl,%edx
	testl	%edx,%edx
	setneb	324(%ecx,%eax)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	$32,%eax
	leal	(%edx,%eax,1),%eax
	call	S3MDEC_READLE32$PBYTE$$LONGWORD
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%edx
	imull	$60,%edx
	movl	%eax,316(%ecx,%edx)
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$60,%eax
	movl	316(%edx,%eax),%eax
	testl	%eax,%eax
	je	Lj198
	jmp	Lj199
Lj198:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$60,%eax
	movl	$8363,316(%edx,%eax)
Lj199:
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	$48,%eax
	leal	(%edx,%eax,1),%eax
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%edx
	imull	$60,%edx
	leal	272(%ecx,%edx),%edx
	movl	$28,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movb	-45(%ebp),%al
	andb	$1,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	je	Lj208
	jmp	Lj209
Lj208:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$60,%eax
	movl	$0,308(%edx,%eax)
Lj209:
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	$14,%eax
	movzbl	(%edx,%eax,1),%esi
	shll	$16,%esi
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	$15,%eax
	leal	(%edx,%eax,1),%eax
	call	S3MDEC_READLE16$PBYTE$$WORD
	movzwl	%ax,%eax
	orl	%eax,%esi
	shll	$4,%esi
	movl	%esi,-40(%ebp)
	movl	-4(%ebp),%edx
	movzwl	-34(%ebp),%eax
	shll	$4,%eax
	addl	$13,%eax
	movzbl	(%edx,%eax,1),%esi
	shll	$20,%esi
	movl	-4(%ebp),%edx
	movzwl	-34(%ebp),%eax
	shll	$4,%eax
	addl	$14,%eax
	leal	(%edx,%eax,1),%eax
	call	S3MDEC_READLE16$PBYTE$$WORD
	movzwl	%ax,%eax
	shll	$4,%eax
	orl	%eax,%esi
	movl	%esi,-40(%ebp)
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj222
	jmp	Lj221
Lj222:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$60,%eax
	movl	300(%edx,%eax),%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	cmpl	-8(%ebp),%eax
	jbe	Lj220
	jmp	Lj221
Lj220:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$60,%eax
	movb	324(%edx,%eax),%al
	testb	%al,%al
	je	Lj223
	jmp	Lj224
Lj223:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$60,%eax
	movl	300(%edx,%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%eax
	imull	$60,%eax
	leal	320(%ecx,%eax),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$60,%eax
	movl	300(%edx,%eax),%eax
	decl	%eax
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj230
	decl	-28(%ebp)
	.balign 4,0x90
Lj231:
	incl	-28(%ebp)
	movl	-4(%ebp),%esi
	movl	-40(%ebp),%edx
	movl	-28(%ebp),%ecx
	addl	%ecx,%edx
	movzbl	(%esi,%edx,1),%edx
	subl	$128,%edx
	movl	-12(%ebp),%esi
	movl	-24(%ebp),%ecx
	imull	$60,%ecx
	movl	320(%esi,%ecx),%ecx
	movl	-28(%ebp),%esi
	movb	%dl,(%ecx,%esi,1)
	cmpl	-28(%ebp),%eax
	jg	Lj231
Lj230:
Lj224:
Lj221:
Lj152:
	cmpl	-24(%ebp),%ebx
	jg	Lj154
Lj153:
	movl	-12(%ebp),%eax
	movzwl	32(%eax),%eax
	shll	$1,%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	cmpl	-8(%ebp),%eax
	jg	Lj234
	jmp	Lj235
Lj234:
	jmp	Lj68
Lj235:
	movl	-12(%ebp),%eax
	movzwl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj237
	decl	-24(%ebp)
	.balign 4,0x90
Lj238:
	incl	-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	call	S3MDEC_READLE16$PBYTE$$WORD
	movw	%ax,-36(%ebp)
	addl	$2,-20(%ebp)
	movzwl	-36(%ebp),%eax
	shll	$4,%eax
	movl	%eax,-52(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj245
	jmp	Lj247
Lj247:
	movl	-52(%ebp),%eax
	addl	$2,%eax
	cmpl	-8(%ebp),%eax
	ja	Lj245
	jmp	Lj246
Lj245:
	jmp	Lj236
Lj246:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	leal	6272(%edx,%eax,4),%eax
	movl	$12288,%edx
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	6272(%edx,%eax,4),%eax
	movb	$0,%cl
	movl	$12288,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movb	$0,-61(%ebp)
	decb	-61(%ebp)
	.balign 4,0x90
Lj260:
	incb	-61(%ebp)
	movl	$0,-32(%ebp)
	decl	-32(%ebp)
	.balign 4,0x90
Lj263:
	incl	-32(%ebp)
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	6272(%edx,%eax,4),%ecx
	movzbl	-61(%ebp),%eax
	imull	$192,%eax
	movl	-32(%ebp),%edx
	leal	(%ecx,%eax),%eax
	imull	$6,%edx
	movb	$255,1(%eax,%edx)
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	6272(%edx,%eax,4),%ecx
	movzbl	-61(%ebp),%eax
	imull	$192,%eax
	movl	-32(%ebp),%edx
	leal	(%ecx,%eax),%eax
	imull	$6,%edx
	movb	$255,3(%eax,%edx)
	cmpl	$31,-32(%ebp)
	jl	Lj263
	cmpb	$63,-61(%ebp)
	jb	Lj260
	movl	-4(%ebp),%edx
	movl	-52(%ebp),%eax
	leal	(%edx,%eax,1),%eax
	call	S3MDEC_READLE16$PBYTE$$WORD
	movw	%ax,-54(%ebp)
	movl	-52(%ebp),%eax
	addl	$2,%eax
	movl	%eax,-60(%ebp)
	movb	$0,-61(%ebp)
	jmp	Lj277
	.balign 4,0x90
Lj276:
	movl	-4(%ebp),%edx
	movl	-60(%ebp),%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-62(%ebp)
	incl	-60(%ebp)
	movzbl	-62(%ebp),%eax
	testl	%eax,%eax
	je	Lj281
	jmp	Lj282
Lj281:
	incb	-61(%ebp)
	jmp	Lj277
Lj282:
	movb	-62(%ebp),%al
	andb	$31,%al
	movzbl	%al,%eax
	movl	%eax,-32(%ebp)
	leal	-68(%ebp),%eax
	movb	$0,%cl
	movl	$6,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movb	-32(%ebp),%al
	movb	%al,-68(%ebp)
	movb	$255,-67(%ebp)
	movb	$255,-65(%ebp)
	movb	-62(%ebp),%al
	andb	$32,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj297
	jmp	Lj298
Lj297:
	movl	-60(%ebp),%eax
	addl	$2,%eax
	cmpl	-8(%ebp),%eax
	jle	Lj299
	jmp	Lj300
Lj299:
	movl	-4(%ebp),%eax
	movl	-60(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,-67(%ebp)
	movl	-4(%ebp),%edx
	movl	-60(%ebp),%eax
	incl	%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-66(%ebp)
	addl	$2,-60(%ebp)
Lj300:
Lj298:
	movb	-62(%ebp),%al
	andb	$64,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj305
	jmp	Lj306
Lj305:
	movl	-60(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj307
	jmp	Lj308
Lj307:
	movl	-4(%ebp),%edx
	movl	-60(%ebp),%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-65(%ebp)
	incl	-60(%ebp)
Lj308:
Lj306:
	movb	-62(%ebp),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj311
	jmp	Lj312
Lj311:
	movl	-60(%ebp),%eax
	addl	$2,%eax
	cmpl	-8(%ebp),%eax
	jle	Lj313
	jmp	Lj314
Lj313:
	movl	-4(%ebp),%eax
	movl	-60(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,-64(%ebp)
	movl	-4(%ebp),%edx
	movl	-60(%ebp),%eax
	incl	%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-63(%ebp)
	addl	$2,-60(%ebp)
Lj314:
Lj312:
	movl	-32(%ebp),%eax
	cmpl	$32,%eax
	jl	Lj319
	jmp	Lj320
Lj319:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	6272(%eax,%edx,4),%ecx
	movzbl	-61(%ebp),%eax
	imull	$192,%eax
	movl	-32(%ebp),%edx
	leal	(%ecx,%eax),%ecx
	imull	$6,%edx
	movl	-68(%ebp),%eax
	movl	%eax,(%ecx,%edx)
	movw	-64(%ebp),%ax
	movw	%ax,4(%ecx,%edx)
Lj320:
Lj277:
	movzbl	-61(%ebp),%eax
	cmpl	$64,%eax
	jl	Lj324
	jmp	Lj278
Lj324:
	movzwl	-54(%ebp),%eax
	movl	-52(%ebp),%edx
	addl	%eax,%edx
	addl	$2,%edx
	cmpl	-60(%ebp),%edx
	jg	Lj323
	jmp	Lj278
Lj323:
	movl	-60(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj276
	jmp	Lj278
Lj278:
Lj236:
	cmpl	-24(%ebp),%ebx
	jg	Lj238
Lj237:
	movl	-12(%ebp),%eax
	movb	$1,7300(%eax)
	movb	$1,-13(%ebp)
Lj68:
	movb	-13(%ebp),%al
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	S3MDEC_S3MLOADFILE$SHORTSTRING$TS3MFILE$$BOOLEAN
S3MDEC_S3MLOADFILE$SHORTSTRING$TS3MFILE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$360,%esp
	movl	%ebx,-360(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$7304,%edx
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
	jne	Lj347
	jmp	Lj348
Lj347:
	jmp	Lj329
Lj348:
	leal	-344(%ebp),%eax
	call	SYSTEM_FILESIZE$file$$INT64
	movl	%eax,%ebx
	call	FPC_IOCHECK
	movl	%ebx,-352(%ebp)
	movl	-352(%ebp),%eax
	cmpl	$96,%eax
	jl	Lj353
	jmp	Lj354
Lj353:
	leal	-344(%ebp),%eax
	call	SYSTEM_CLOSE$file
	call	FPC_IOCHECK
	jmp	Lj329
Lj354:
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
	jne	Lj371
	jmp	Lj372
Lj371:
	movl	-348(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	jmp	Lj329
Lj372:
	movl	-8(%ebp),%ecx
	movl	-352(%ebp),%edx
	movl	-348(%ebp),%eax
	call	S3MDEC_S3MLOADMEM$PBYTE$LONGINT$TS3MFILE$$BOOLEAN
	movb	%al,-9(%ebp)
	movl	-348(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj329:
	movb	-9(%ebp),%al
	movl	-360(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	S3MDEC_S3MFREE$TS3MFILE
S3MDEC_S3MFREE$TS3MFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.balign 4,0x90
Lj389:
	incl	-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	6272(%edx,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj390
	jmp	Lj391
Lj390:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	6272(%edx,%eax,4),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,6272(%edx,%eax,4)
Lj391:
	cmpl	$255,-8(%ebp)
	jl	Lj389
	movl	$1,-8(%ebp)
	decl	-8(%ebp)
	.balign 4,0x90
Lj398:
	incl	-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	imull	$60,%eax
	movl	320(%edx,%eax),%eax
	testl	%eax,%eax
	jne	Lj399
	jmp	Lj400
Lj399:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	imull	$60,%eax
	movl	320(%edx,%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	imull	$60,%eax
	movl	$0,320(%edx,%eax)
Lj400:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	imull	$60,%eax
	movl	328(%edx,%eax),%eax
	testl	%eax,%eax
	jne	Lj405
	jmp	Lj406
Lj405:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	imull	$60,%eax
	movl	328(%edx,%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	imull	$60,%eax
	movl	$0,328(%edx,%eax)
Lj406:
	cmpl	$99,-8(%ebp)
	jl	Lj398
	movl	-4(%ebp),%eax
	movb	$0,7300(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	S3MDEC_S3MDURATION$TS3MFILE$$LONGINT
S3MDEC_S3MDURATION$TS3MFILE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	movzwl	28(%eax),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj418
	decl	-16(%ebp)
	.balign 4,0x90
Lj419:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	movb	74(%edx,%ecx,1),%dl
	cmpb	$254,%dl
	jb	Lj420
	jmp	Lj421
Lj420:
	incl	-20(%ebp)
Lj421:
	cmpl	-16(%ebp),%eax
	jg	Lj419
Lj418:
	movl	-20(%ebp),%eax
	shll	$6,%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movzbl	40(%eax),%eax
	testl	%eax,%eax
	je	Lj424
	jmp	Lj425
Lj424:
	movl	-4(%ebp),%eax
	movb	$125,40(%eax)
Lj425:
	movl	-4(%ebp),%eax
	movzbl	39(%eax),%eax
	testl	%eax,%eax
	je	Lj428
	jmp	Lj429
Lj428:
	movl	-4(%ebp),%eax
	movb	$6,39(%eax)
Lj429:
	movl	-4(%ebp),%eax
	movzbl	39(%eax),%edx
	movl	-12(%ebp),%eax
	imull	%edx,%eax
	imull	$1000,%eax
	movl	-4(%ebp),%edx
	movzbl	40(%edx),%ecx
	imull	$400,%ecx
	cltd
	idivl	%ecx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	S3MDEC_S3MRENDER$TS3MFILE$LONGWORD$PSMALLINT$$LONGINT
S3MDEC_S3MRENDER$TS3MFILE$LONGWORD$PSMALLINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1272,%esp
	movl	%ebx,-1272(%ebp)
	movl	%esi,-1268(%ebp)
	movl	%edi,-1264(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$-1,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	movb	7300(%eax),%al
	testb	%al,%al
	je	Lj440
	jmp	Lj441
Lj440:
	jmp	Lj434
Lj441:
	movl	-4(%ebp),%eax
	call	S3MDEC_S3MDURATION$TS3MFILE$$LONGINT
	addl	$2,%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	shll	$2,%eax
	movl	%eax,-1228(%ebp)
	movl	-1228(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj446
	jmp	Lj447
Lj446:
	movl	$60,%eax
	mull	-8(%ebp)
	shll	$2,%eax
	movl	%eax,-1228(%ebp)
Lj447:
	movl	-1228(%ebp),%edx
	leal	-1220(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-1220(%ebp),%eax
	movl	-1228(%ebp),%edx
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leal	-1168(%ebp),%eax
	movb	$0,%cl
	movl	$1152,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-4(%ebp),%eax
	movl	7296(%eax),%ecx
	decl	%ecx
	movl	$0,-1208(%ebp)
	cmpl	-1208(%ebp),%ecx
	jl	Lj467
	decl	-1208(%ebp)
	.balign 4,0x90
Lj468:
	incl	-1208(%ebp)
	movl	-4(%ebp),%edx
	movl	-1208(%ebp),%eax
	movzbl	42(%edx,%eax,1),%eax
	cmpl	$8,%eax
	jl	Lj469
	jmp	Lj470
Lj469:
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movb	$3,-1156(%ebp,%eax)
	jmp	Lj473
Lj470:
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movb	$12,-1156(%ebp,%eax)
Lj473:
	cmpl	-1208(%ebp),%ecx
	jg	Lj468
Lj467:
	movl	-4(%ebp),%eax
	movzbl	40(%eax),%eax
	movl	%eax,-1172(%ebp)
	movl	-4(%ebp),%eax
	movzbl	39(%eax),%eax
	movl	%eax,-1176(%ebp)
	movl	-1172(%ebp),%eax
	testl	%eax,%eax
	je	Lj480
	jmp	Lj481
Lj480:
	movl	$125,-1172(%ebp)
Lj481:
	movl	-1176(%ebp),%eax
	testl	%eax,%eax
	je	Lj484
	jmp	Lj485
Lj484:
	movl	$6,-1176(%ebp)
Lj485:
	movl	$0,-1224(%ebp)
	movl	-4(%ebp),%eax
	movzwl	28(%eax),%eax
	decl	%eax
	movl	%eax,-1260(%ebp)
	movl	$0,-1192(%ebp)
	movl	-1260(%ebp),%eax
	cmpl	-1192(%ebp),%eax
	jl	Lj491
	decl	-1192(%ebp)
	.balign 4,0x90
Lj492:
	incl	-1192(%ebp)
	movl	-4(%ebp),%eax
	movl	-1192(%ebp),%edx
	movb	74(%eax,%edx,1),%al
	cmpb	$254,%al
	jae	Lj493
	jmp	Lj494
Lj493:
	jmp	Lj490
Lj494:
	movl	-4(%ebp),%eax
	movl	-1192(%ebp),%edx
	movzbw	74(%eax,%edx,1),%dx
	movl	-4(%ebp),%eax
	cmpw	32(%eax),%dx
	jae	Lj495
	jmp	Lj496
Lj495:
	jmp	Lj490
Lj496:
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-1192(%ebp),%eax
	movzbl	74(%edx,%eax,1),%eax
	movl	6272(%ecx,%eax,4),%eax
	movl	%eax,-1196(%ebp)
	movl	-1196(%ebp),%eax
	testl	%eax,%eax
	je	Lj499
	jmp	Lj500
Lj499:
	jmp	Lj490
Lj500:
	movl	$0,-1188(%ebp)
	decl	-1188(%ebp)
	.balign 4,0x90
Lj503:
	incl	-1188(%ebp)
	movl	-4(%ebp),%eax
	movl	7296(%eax),%ebx
	decl	%ebx
	movl	$0,-1208(%ebp)
	cmpl	-1208(%ebp),%ebx
	jl	Lj505
	decl	-1208(%ebp)
	.balign 4,0x90
Lj506:
	incl	-1208(%ebp)
	movl	-1196(%ebp),%ecx
	movl	-1188(%ebp),%eax
	imull	$192,%eax
	movl	-1208(%ebp),%edx
	leal	(%ecx,%eax),%ecx
	imull	$6,%edx
	movl	(%ecx,%edx),%eax
	movl	%eax,-1202(%ebp)
	movw	4(%ecx,%edx),%ax
	movw	%ax,-1198(%ebp)
	movzbl	-1200(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj511
	jmp	Lj510
Lj511:
	movzbw	-1200(%ebp),%ax
	movl	-4(%ebp),%edx
	cmpw	30(%edx),%ax
	jbe	Lj509
	jmp	Lj510
Lj509:
	movl	-1208(%ebp),%edx
	imull	$36,%edx
	movb	-1200(%ebp),%al
	movb	%al,-1167(%ebp,%edx)
	movl	-1208(%ebp),%edx
	imull	$36,%edx
	movl	-4(%ebp),%ecx
	movzbl	-1200(%ebp),%eax
	imull	$60,%eax
	movzbl	312(%ecx,%eax),%eax
	movl	%eax,-1160(%ebp,%edx)
Lj510:
	movb	-1201(%ebp),%al
	cmpb	$255,%al
	jne	Lj518
	jmp	Lj517
Lj518:
	movb	-1201(%ebp),%al
	cmpb	$254,%al
	jne	Lj516
	jmp	Lj517
Lj516:
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movzbl	-1167(%ebp,%eax),%eax
	cmpl	$0,%eax
	jg	Lj519
	jmp	Lj520
Lj519:
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movb	-1167(%ebp,%eax),%al
	movb	%al,-1213(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-1213(%ebp),%eax
	imull	$60,%eax
	movl	316(%edx,%eax),%edx
	movzbl	-1201(%ebp),%eax
	call	S3MDEC_NOTETOPERIOD$LONGWORD$LONGWORD$$LONGWORD
	movl	-1208(%ebp),%edx
	imull	$36,%edx
	movl	%eax,-1164(%ebp,%edx)
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movl	$0,-1152(%ebp,%eax)
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movb	$1,-1168(%ebp,%eax)
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movl	-1164(%ebp,%eax),%eax
	movl	-8(%ebp),%edx
	call	S3MDEC_PERIODTOINC$LONGWORD$LONGWORD$$LONGWORD
	movl	-1208(%ebp),%edx
	imull	$36,%edx
	movl	%eax,-1148(%ebp,%edx)
Lj520:
	jmp	Lj539
Lj517:
	movb	-1201(%ebp),%al
	cmpb	$254,%al
	je	Lj540
	jmp	Lj541
Lj540:
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movb	$0,-1168(%ebp,%eax)
Lj541:
Lj539:
	movb	-1199(%ebp),%al
	cmpb	$255,%al
	jne	Lj544
	jmp	Lj545
Lj544:
	movzbl	-1199(%ebp),%eax
	call	S3MDEC_CLAMPVOL$LONGINT$$LONGINT
	movl	-1208(%ebp),%edx
	imull	$36,%edx
	movl	%eax,-1160(%ebp,%edx)
Lj545:
	movb	-1198(%ebp),%al
	cmpb	$1,%al
	jb	Lj551
	decb	%al
	je	Lj552
	subb	$19,%al
	je	Lj553
	jmp	Lj551
Lj552:
	movzbl	-1197(%ebp),%eax
	movl	%eax,-1176(%ebp)
	jmp	Lj550
Lj553:
	movzbl	-1197(%ebp),%eax
	movl	%eax,-1172(%ebp)
	jmp	Lj550
Lj551:
Lj550:
	cmpl	-1208(%ebp),%ebx
	jg	Lj506
Lj505:
	movl	$5,%eax
	mull	-8(%ebp)
	movl	-1172(%ebp),%ecx
	shll	$1,%ecx
	xorl	%edx,%edx
	divl	%ecx
	movl	%eax,-1180(%ebp)
	movl	-1176(%ebp),%eax
	decl	%eax
	movl	%eax,-1256(%ebp)
	movl	$0,-1184(%ebp)
	movl	-1256(%ebp),%eax
	cmpl	-1184(%ebp),%eax
	jl	Lj561
	decl	-1184(%ebp)
	.balign 4,0x90
Lj562:
	incl	-1184(%ebp)
	movl	-1184(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj563
	jmp	Lj564
Lj563:
	movl	-4(%ebp),%eax
	movl	7296(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-1208(%ebp)
	cmpl	-1208(%ebp),%ebx
	jl	Lj566
	decl	-1208(%ebp)
	.balign 4,0x90
Lj567:
	incl	-1208(%ebp)
	movl	-1196(%ebp),%edx
	movl	-1188(%ebp),%eax
	imull	$192,%eax
	movl	-1208(%ebp),%ecx
	leal	(%edx,%eax),%edx
	imull	$6,%ecx
	movl	(%edx,%ecx),%eax
	movl	%eax,-1202(%ebp)
	movw	4(%edx,%ecx),%ax
	movw	%ax,-1198(%ebp)
	movzbl	-1197(%ebp),%eax
	shrl	$4,%eax
	movb	%al,-1245(%ebp)
	movb	-1197(%ebp),%al
	andb	$15,%al
	movb	%al,-1246(%ebp)
	movb	-1198(%ebp),%al
	cmpb	$4,%al
	jb	Lj575
	subb	$4,%al
	je	Lj576
	decb	%al
	je	Lj577
	decb	%al
	je	Lj578
	jmp	Lj575
Lj576:
	movzbl	-1245(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj579
	jmp	Lj580
Lj579:
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movzbl	-1245(%ebp),%edx
	movl	-1160(%ebp,%eax),%eax
	addl	%edx,%eax
	call	S3MDEC_CLAMPVOL$LONGINT$$LONGINT
	movl	-1208(%ebp),%edx
	imull	$36,%edx
	movl	%eax,-1160(%ebp,%edx)
	jmp	Lj585
Lj580:
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movzbl	-1246(%ebp),%edx
	movl	-1160(%ebp,%eax),%eax
	subl	%edx,%eax
	call	S3MDEC_CLAMPVOL$LONGINT$$LONGINT
	movl	-1208(%ebp),%edx
	imull	$36,%edx
	movl	%eax,-1160(%ebp,%edx)
Lj585:
	jmp	Lj574
Lj577:
	movzbl	-1197(%ebp),%edx
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	addl	%edx,-1164(%ebp,%eax)
	jmp	Lj574
Lj578:
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movzbl	-1197(%ebp),%edx
	cmpl	-1164(%ebp,%eax),%edx
	jb	Lj590
	jmp	Lj591
Lj590:
	movzbl	-1197(%ebp),%edx
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	subl	%edx,-1164(%ebp,%eax)
Lj591:
	jmp	Lj574
Lj575:
Lj574:
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movl	-1164(%ebp,%eax),%eax
	cmpl	$0,%eax
	ja	Lj592
	jmp	Lj593
Lj592:
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movl	-1164(%ebp,%eax),%eax
	movl	-8(%ebp),%edx
	call	S3MDEC_PERIODTOINC$LONGWORD$LONGWORD$$LONGWORD
	movl	-1208(%ebp),%edx
	imull	$36,%edx
	movl	%eax,-1148(%ebp,%edx)
Lj593:
	cmpl	-1208(%ebp),%ebx
	jg	Lj567
Lj566:
Lj564:
	movl	-1180(%ebp),%eax
	decl	%eax
	movl	%eax,%ecx
	movl	$0,-1212(%ebp)
	cmpl	-1212(%ebp),%ecx
	jl	Lj601
	decl	-1212(%ebp)
	.balign 4,0x90
Lj602:
	incl	-1212(%ebp)
	movl	-1224(%ebp),%eax
	incl	%eax
	shll	$1,%eax
	cmpl	-1228(%ebp),%eax
	jge	Lj603
	jmp	Lj604
Lj603:
	jmp	Lj601
Lj604:
	movl	$0,-1232(%ebp)
	movl	$0,-1236(%ebp)
	movl	-4(%ebp),%eax
	movl	7296(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-1208(%ebp)
	cmpl	-1208(%ebp),%ebx
	jl	Lj610
	decl	-1208(%ebp)
	.balign 4,0x90
Lj611:
	incl	-1208(%ebp)
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movb	-1168(%ebp,%eax),%al
	testb	%al,%al
	je	Lj612
	jmp	Lj613
Lj612:
	jmp	Lj609
Lj613:
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movb	-1167(%ebp,%eax),%al
	movb	%al,-1213(%ebp)
	movzbl	-1213(%ebp),%eax
	testl	%eax,%eax
	je	Lj616
	jmp	Lj618
Lj618:
	movzbw	-1213(%ebp),%ax
	movl	-4(%ebp),%edx
	cmpw	30(%edx),%ax
	ja	Lj616
	jmp	Lj617
Lj616:
	jmp	Lj609
Lj617:
	movl	-4(%ebp),%edx
	movzbl	-1213(%ebp),%eax
	imull	$60,%eax
	movl	320(%edx,%eax),%eax
	testl	%eax,%eax
	je	Lj619
	jmp	Lj620
Lj619:
	jmp	Lj609
Lj620:
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movl	-1152(%ebp,%eax),%eax
	shrl	$16,%eax
	movl	%eax,-1244(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-1213(%ebp),%eax
	imull	$60,%eax
	movl	308(%edx,%eax),%eax
	cmpl	$0,%eax
	ja	Lj623
	jmp	Lj624
Lj623:
	jmp	Lj626
	.balign 4,0x90
Lj625:
	movl	-4(%ebp),%edx
	movzbl	-1213(%ebp),%eax
	imull	$60,%eax
	movl	308(%edx,%eax),%eax
	subl	%eax,-1244(%ebp)
Lj626:
	movl	-4(%ebp),%edx
	movzbl	-1213(%ebp),%eax
	imull	$60,%eax
	movl	-4(%ebp),%esi
	movzbl	-1213(%ebp),%edi
	imull	$60,%edi
	movl	304(%edx,%eax),%edx
	movl	308(%esi,%edi),%eax
	addl	%eax,%edx
	cmpl	-1244(%ebp),%edx
	jbe	Lj625
	jmp	Lj627
Lj627:
	jmp	Lj628
Lj624:
	movl	-4(%ebp),%edx
	movzbl	-1213(%ebp),%eax
	imull	$60,%eax
	movl	300(%edx,%eax),%eax
	cmpl	-1244(%ebp),%eax
	jbe	Lj629
	jmp	Lj630
Lj629:
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movb	$0,-1168(%ebp,%eax)
	jmp	Lj609
Lj630:
Lj628:
	movl	-4(%ebp),%edx
	movzbl	-1213(%ebp),%eax
	imull	$60,%eax
	movl	320(%edx,%eax),%edx
	movl	-1244(%ebp),%eax
	movsbl	(%edx,%eax,1),%edx
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movl	-1160(%ebp,%eax),%eax
	imull	%eax,%edx
	movl	-4(%ebp),%eax
	movzbl	38(%eax),%eax
	imull	%eax,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$63,%eax
	addl	%eax,%edx
	sarl	$6,%edx
	movl	%edx,-1240(%ebp)
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movzbl	-1156(%ebp,%eax),%eax
	movl	%eax,-1252(%ebp)
	movl	-1252(%ebp),%edx
	movl	$15,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-1240(%ebp),%eax
	imull	%eax,%edx
	movl	%edx,%esi
	movl	$-2004318071,%eax
	imull	%esi
	movl	%esi,%eax
	addl	%eax,%edx
	sarl	$3,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	addl	%edx,-1232(%ebp)
	movl	-1240(%ebp),%edx
	movl	-1252(%ebp),%eax
	imull	%eax,%edx
	movl	%edx,%esi
	movl	$-2004318071,%eax
	imull	%esi
	movl	%esi,%eax
	addl	%eax,%edx
	sarl	$3,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	addl	%edx,-1236(%ebp)
	movl	-1208(%ebp),%eax
	imull	$36,%eax
	movl	-1208(%ebp),%edx
	imull	$36,%edx
	movl	-1148(%ebp,%eax),%eax
	addl	%eax,-1152(%ebp,%edx)
Lj609:
	cmpl	-1208(%ebp),%ebx
	jg	Lj611
Lj610:
	movl	-1232(%ebp),%eax
	cmpl	$32767,%eax
	jg	Lj637
	jmp	Lj638
Lj637:
	movl	$32767,-1232(%ebp)
Lj638:
	movl	-1232(%ebp),%eax
	cmpl	$-32768,%eax
	jl	Lj641
	jmp	Lj642
Lj641:
	movl	$-32768,-1232(%ebp)
Lj642:
	movl	-1236(%ebp),%eax
	cmpl	$32767,%eax
	jg	Lj645
	jmp	Lj646
Lj645:
	movl	$32767,-1236(%ebp)
Lj646:
	movl	-1236(%ebp),%eax
	cmpl	$-32768,%eax
	jl	Lj649
	jmp	Lj650
Lj649:
	movl	$-32768,-1236(%ebp)
Lj650:
	movl	-1220(%ebp),%edx
	movl	-1224(%ebp),%eax
	shll	$1,%eax
	movw	-1232(%ebp),%bx
	movw	%bx,(%edx,%eax,2)
	movl	-1220(%ebp),%edx
	movl	-1224(%ebp),%eax
	shll	$1,%eax
	incl	%eax
	movw	-1236(%ebp),%bx
	movw	%bx,(%edx,%eax,2)
	incl	-1224(%ebp)
	cmpl	-1212(%ebp),%ecx
	jg	Lj602
Lj601:
	movl	-1256(%ebp),%eax
	cmpl	-1184(%ebp),%eax
	jg	Lj562
Lj561:
	cmpl	$63,-1188(%ebp)
	jl	Lj503
Lj490:
	movl	-1260(%ebp),%eax
	cmpl	-1192(%ebp),%eax
	jg	Lj492
Lj491:
	movl	-1224(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-1224(%ebp),%eax
	shll	$2,%eax
	movl	%eax,-1228(%ebp)
	movl	-1228(%ebp),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-1220(%ebp),%eax
	movl	-1228(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-1220(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj434:
	movl	-16(%ebp),%eax
	movl	-1272(%ebp),%ebx
	movl	-1268(%ebp),%esi
	movl	-1264(%ebp),%edi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	THREADVARLIST_S3MDEC
THREADVARLIST_S3MDEC:
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
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.data
	.balign 4
.globl	INIT_S3MDEC_TS3MSAMPLE
INIT_S3MDEC_TS3MSAMPLE:
	.byte	13,10
	.ascii	"TS3MSample"
	.long	60,0

.data
	.balign 4
.globl	RTTI_S3MDEC_DEF1
RTTI_S3MDEC_DEF1:
	.byte	12
	.ascii	"\000"
	.long	1,28
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_S3MDEC_TS3MSAMPLE
RTTI_S3MDEC_TS3MSAMPLE:
	.byte	13,10
	.ascii	"TS3MSample"
	.long	60,10
	.long	RTTI_S3MDEC_DEF1
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	28
	.long	RTTI_SYSTEM_LONGWORD
	.long	32
	.long	RTTI_SYSTEM_LONGWORD
	.long	36
	.long	RTTI_SYSTEM_BYTE
	.long	40
	.long	RTTI_SYSTEM_BYTE
	.long	41
	.long	RTTI_SYSTEM_LONGWORD
	.long	44
	.long	RTTI_SYSTEM_PSHORTINT
	.long	48
	.long	RTTI_SYSTEM_BOOLEAN
	.long	52
	.long	RTTI_SYSTEM_PSMALLINT
	.long	56

.data
	.balign 4
.globl	INIT_S3MDEC_TS3MNOTE
INIT_S3MDEC_TS3MNOTE:
	.byte	13,8
	.ascii	"TS3MNote"
	.long	6,0

.data
	.balign 4
.globl	RTTI_S3MDEC_TS3MNOTE
RTTI_S3MDEC_TS3MNOTE:
	.byte	13,8
	.ascii	"TS3MNote"
	.long	6,6
	.long	RTTI_SYSTEM_BYTE
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	1
	.long	RTTI_SYSTEM_BYTE
	.long	2
	.long	RTTI_SYSTEM_BYTE
	.long	3
	.long	RTTI_SYSTEM_BYTE
	.long	4
	.long	RTTI_SYSTEM_BYTE
	.long	5

.data
	.balign 4
.globl	INIT_S3MDEC_TS3MROW
INIT_S3MDEC_TS3MROW:
	.byte	12
	.ascii	"\007TS3MRow"
	.long	6,32
	.long	INIT_S3MDEC_TS3MNOTE
	.long	-1

.data
	.balign 4
.globl	RTTI_S3MDEC_TS3MROW
RTTI_S3MDEC_TS3MROW:
	.byte	12
	.ascii	"\007TS3MRow"
	.long	6,32
	.long	RTTI_S3MDEC_TS3MNOTE
	.long	-1

.data
	.balign 4
.globl	INIT_S3MDEC_TS3MPATTERN
INIT_S3MDEC_TS3MPATTERN:
	.byte	12
	.ascii	"\013TS3MPattern"
	.long	192,64
	.long	INIT_S3MDEC_TS3MROW
	.long	-1

.data
	.balign 4
.globl	RTTI_S3MDEC_TS3MPATTERN
RTTI_S3MDEC_TS3MPATTERN:
	.byte	12
	.ascii	"\013TS3MPattern"
	.long	192,64
	.long	RTTI_S3MDEC_TS3MROW
	.long	-1

.data
	.balign 4
.globl	INIT_S3MDEC_PS3MPATTERN
INIT_S3MDEC_PS3MPATTERN:
	.byte	0
	.ascii	"\013PS3MPattern"

.data
	.balign 4
.globl	RTTI_S3MDEC_PS3MPATTERN
RTTI_S3MDEC_PS3MPATTERN:
	.byte	0
	.ascii	"\013PS3MPattern"

.data
	.balign 4
.globl	INIT_S3MDEC_TS3MCHANNEL
INIT_S3MDEC_TS3MCHANNEL:
	.byte	13,11
	.ascii	"TS3MChannel"
	.long	36,0

.data
	.balign 4
.globl	RTTI_S3MDEC_TS3MCHANNEL
RTTI_S3MDEC_TS3MCHANNEL:
	.byte	13,11
	.ascii	"TS3MChannel"
	.long	36,13
	.long	RTTI_SYSTEM_BOOLEAN
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	1
	.long	RTTI_SYSTEM_BYTE
	.long	2
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGINT
	.long	8
	.long	RTTI_SYSTEM_BYTE
	.long	12
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_SYSTEM_LONGWORD
	.long	20
	.long	RTTI_SYSTEM_WORD
	.long	24
	.long	RTTI_SYSTEM_LONGWORD
	.long	28
	.long	RTTI_SYSTEM_BYTE
	.long	32
	.long	RTTI_SYSTEM_BYTE
	.long	33
	.long	RTTI_SYSTEM_BYTE
	.long	34

.data
	.balign 4
.globl	INIT_S3MDEC_TS3MFILE
INIT_S3MDEC_TS3MFILE:
	.byte	13,8
	.ascii	"TS3MFile"
	.long	7304,0

.data
	.balign 4
.globl	RTTI_S3MDEC_DEF8
RTTI_S3MDEC_DEF8:
	.byte	12
	.ascii	"\000"
	.long	1,28
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_S3MDEC_DEF9
RTTI_S3MDEC_DEF9:
	.byte	12
	.ascii	"\000"
	.long	1,32
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_S3MDEC_DEF10
RTTI_S3MDEC_DEF10:
	.byte	12
	.ascii	"\000"
	.long	1,256
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_S3MDEC_DEF11
RTTI_S3MDEC_DEF11:
	.byte	12
	.ascii	"\000"
	.long	60,99
	.long	RTTI_S3MDEC_TS3MSAMPLE
	.long	-1

.data
	.balign 4
.globl	RTTI_S3MDEC_DEF12
RTTI_S3MDEC_DEF12:
	.byte	12
	.ascii	"\000"
	.long	4,256
	.long	RTTI_S3MDEC_PS3MPATTERN
	.long	-1

.data
	.balign 4
.globl	RTTI_S3MDEC_TS3MFILE
RTTI_S3MDEC_TS3MFILE:
	.byte	13,8
	.ascii	"TS3MFile"
	.long	7304,16
	.long	RTTI_S3MDEC_DEF8
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	28
	.long	RTTI_SYSTEM_WORD
	.long	30
	.long	RTTI_SYSTEM_WORD
	.long	32
	.long	RTTI_SYSTEM_WORD
	.long	34
	.long	RTTI_SYSTEM_WORD
	.long	36
	.long	RTTI_SYSTEM_BYTE
	.long	38
	.long	RTTI_SYSTEM_BYTE
	.long	39
	.long	RTTI_SYSTEM_BYTE
	.long	40
	.long	RTTI_SYSTEM_BYTE
	.long	41
	.long	RTTI_S3MDEC_DEF9
	.long	42
	.long	RTTI_S3MDEC_DEF10
	.long	74
	.long	RTTI_S3MDEC_DEF11
	.long	332
	.long	RTTI_S3MDEC_DEF12
	.long	6272
	.long	RTTI_SYSTEM_LONGINT
	.long	7296
	.long	RTTI_SYSTEM_BOOLEAN
	.long	7300
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

