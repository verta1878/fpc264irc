	.file "xmdec.pas"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
XMDEC_READLE16$PBYTE$$WORD:
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
XMDEC_READLE32$PBYTE$$LONGWORD:
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
XMDEC_LINEARPERIOD$LONGINT$SHORTINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movsbl	-8(%ebp),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	-4(%ebp),%edx
	shll	$4,%edx
	shll	$2,%edx
	movl	$7680,%ecx
	subl	%edx,%ecx
	movl	%ecx,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
XMDEC_LINEARFREQ$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj17
	jmp	Lj18
Lj17:
	movl	$0,-8(%ebp)
	jmp	Lj21
Lj18:
	movl	-4(%ebp),%edx
	movl	$-1431655765,%eax
	mull	%edx
	shrl	$9,%edx
	movl	%edx,%ecx
	movl	$1,%ebx
	shll	%cl,%ebx
	imull	$133808,%ebx
	movl	-4(%ebp),%eax
	xorl	%edx,%edx
	movl	$768,%ecx
	divl	%ecx
	movl	%edx,%ecx
	shrl	$6,%ecx
	movl	$1,%esi
	shll	%cl,%esi
	movl	%ebx,%eax
	cltd
	idivl	%esi
	movl	%eax,-8(%ebp)
Lj21:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
XMDEC_PERIODTOINC$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj26
	jmp	Lj27
Lj26:
	movl	$0,-12(%ebp)
	jmp	Lj30
Lj27:
	movl	-8(%ebp),%eax
	mull	-4(%ebp)
	movl	%eax,%ecx
	movl	$57269824,%eax
	xorl	%edx,%edx
	divl	%ecx
	movl	%eax,-12(%ebp)
Lj30:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
XMDEC_CLAMPV$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj35
	jmp	Lj36
Lj35:
	movl	$0,-8(%ebp)
	jmp	Lj39
Lj36:
	movl	-4(%ebp),%eax
	cmpl	$64,%eax
	jg	Lj40
	jmp	Lj41
Lj40:
	movl	$64,-8(%ebp)
	jmp	Lj44
Lj41:
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj44:
Lj39:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	XMDEC_XMLOADMEM$PBYTE$LONGINT$TXMFILE$$BOOLEAN
XMDEC_XMLOADMEM$PBYTE$LONGINT$TXMFILE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$100,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%edi,-92(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$141120,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-8(%ebp),%eax
	cmpl	$80,%eax
	jl	Lj57
	jmp	Lj58
Lj57:
	jmp	Lj47
Lj58:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$69,%al
	jne	Lj59
	jmp	Lj62
Lj62:
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$120,%al
	jne	Lj59
	jmp	Lj61
Lj61:
	movl	-4(%ebp),%eax
	movb	17(%eax),%al
	cmpb	$58,%al
	jne	Lj59
	jmp	Lj60
Lj59:
	jmp	Lj47
Lj60:
	movl	-4(%ebp),%eax
	leal	20(%eax),%eax
	movl	-12(%ebp),%edx
	movl	$20,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	movzbl	37(%eax),%eax
	cmpl	$26,%eax
	jne	Lj69
	jmp	Lj70
Lj69:
	jmp	Lj47
Lj70:
	movl	-4(%ebp),%eax
	leal	38(%eax),%eax
	movl	-12(%ebp),%edx
	leal	20(%edx),%edx
	movl	$20,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	leal	58(%eax),%eax
	call	XMDEC_READLE16$PBYTE$$WORD
	movl	-12(%ebp),%edx
	movw	%ax,40(%edx)
	movl	-4(%ebp),%eax
	leal	60(%eax),%eax
	call	XMDEC_READLE32$PBYTE$$LONGWORD
	movl	%eax,-24(%ebp)
	movl	$60,-20(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$4,%eax
	leal	(%edx,%eax,1),%eax
	call	XMDEC_READLE16$PBYTE$$WORD
	movl	-12(%ebp),%edx
	movw	%ax,54(%edx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$6,%eax
	leal	(%edx,%eax,1),%eax
	call	XMDEC_READLE16$PBYTE$$WORD
	movl	-12(%ebp),%edx
	movw	%ax,56(%edx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$8,%eax
	leal	(%edx,%eax,1),%eax
	call	XMDEC_READLE16$PBYTE$$WORD
	movl	-12(%ebp),%edx
	movw	%ax,42(%edx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$10,%eax
	leal	(%edx,%eax,1),%eax
	call	XMDEC_READLE16$PBYTE$$WORD
	movl	-12(%ebp),%edx
	movw	%ax,44(%edx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$12,%eax
	leal	(%edx,%eax,1),%eax
	call	XMDEC_READLE16$PBYTE$$WORD
	movl	-12(%ebp),%edx
	movw	%ax,46(%edx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$14,%eax
	leal	(%edx,%eax,1),%eax
	call	XMDEC_READLE16$PBYTE$$WORD
	movl	-12(%ebp),%edx
	movw	%ax,48(%edx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$16,%eax
	leal	(%edx,%eax,1),%eax
	call	XMDEC_READLE16$PBYTE$$WORD
	movl	-12(%ebp),%edx
	movw	%ax,50(%edx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$18,%eax
	leal	(%edx,%eax,1),%eax
	call	XMDEC_READLE16$PBYTE$$WORD
	movl	-12(%ebp),%edx
	movw	%ax,52(%edx)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movw	48(%eax),%ax
	andw	$1,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	setneb	141116(%edx)
	movl	-12(%ebp),%eax
	movzwl	42(%eax),%eax
	cmpl	$32,%eax
	jg	Lj121
	jmp	Lj122
Lj121:
	movl	-12(%ebp),%eax
	movw	$32,42(%eax)
Lj122:
	movl	-12(%ebp),%eax
	movzwl	54(%eax),%eax
	cmpl	$256,%eax
	jg	Lj125
	jmp	Lj126
Lj125:
	movl	-12(%ebp),%eax
	movw	$256,54(%eax)
Lj126:
	movl	-12(%ebp),%eax
	movzwl	54(%eax),%esi
	decl	%esi
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%esi
	jl	Lj130
	decl	-28(%ebp)
	.balign 4,0x90
Lj131:
	incl	-28(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	$20,%edx
	movl	-28(%ebp),%ecx
	addl	%ecx,%edx
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%ebx
	movb	(%eax,%edx,1),%al
	movb	%al,58(%ecx,%ebx,1)
	cmpl	-28(%ebp),%esi
	jg	Lj131
Lj130:
	movl	-24(%ebp),%eax
	addl	$60,%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movzwl	44(%eax),%eax
	decl	%eax
	movl	%eax,-84(%ebp)
	movl	$0,-28(%ebp)
	movl	-84(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj137
	decl	-28(%ebp)
	.balign 4,0x90
Lj138:
	incl	-28(%ebp)
	movl	-20(%ebp),%eax
	addl	$9,%eax
	cmpl	-8(%ebp),%eax
	jg	Lj139
	jmp	Lj140
Lj139:
	jmp	Lj137
Lj140:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	leal	(%edx,%eax,1),%eax
	call	XMDEC_READLE32$PBYTE$$LONGWORD
	movl	%eax,-40(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$4,%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-41(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$5,%eax
	leal	(%edx,%eax,1),%eax
	call	XMDEC_READLE16$PBYTE$$WORD
	movw	%ax,-46(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$7,%eax
	leal	(%edx,%eax,1),%eax
	call	XMDEC_READLE16$PBYTE$$WORD
	movw	%ax,-44(%ebp)
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%eax
	shll	$4,%eax
	movw	-46(%ebp),%dx
	movw	%dx,316(%ecx,%eax)
	movzwl	-46(%ebp),%eax
	testl	%eax,%eax
	je	Lj157
	jmp	Lj158
Lj157:
	movw	$64,-46(%ebp)
Lj158:
	movzwl	-46(%ebp),%edx
	movl	-12(%ebp),%eax
	movzwl	42(%eax),%eax
	mull	%edx
	movl	%eax,%edx
	movl	$5,%eax
	mull	%edx
	movl	%eax,%edx
	leal	-52(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movzwl	-46(%ebp),%edx
	movl	-12(%ebp),%eax
	movzwl	42(%eax),%eax
	mull	%edx
	movl	%eax,%edx
	movl	$5,%eax
	mull	%edx
	movl	%eax,%edx
	movl	-52(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-12(%ebp),%edx
	movl	-28(%ebp),%eax
	shll	$4,%eax
	movl	-52(%ebp),%ecx
	movl	%ecx,324(%edx,%eax)
	movl	-40(%ebp),%eax
	addl	%eax,-20(%ebp)
	movl	$0,-56(%ebp)
	movzwl	-46(%ebp),%eax
	decl	%eax
	movl	%eax,%edx
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%edx
	jl	Lj176
	decl	-32(%ebp)
	.balign 4,0x90
Lj177:
	incl	-32(%ebp)
	movl	-12(%ebp),%eax
	movzwl	42(%eax),%eax
	decl	%eax
	movl	%eax,%ecx
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%ecx
	jl	Lj179
	decl	-36(%ebp)
	.balign 4,0x90
Lj180:
	incl	-36(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj181
	jmp	Lj182
Lj181:
	jmp	Lj179
Lj182:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%ebx
	movb	(%eax,%ebx,1),%al
	movb	%al,-57(%ebp)
	incl	-20(%ebp)
	movb	-57(%ebp),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj185
	jmp	Lj186
Lj185:
	movb	-57(%ebp),%al
	andb	$1,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj187
	jmp	Lj188
Lj187:
	movl	-52(%ebp),%ebx
	movl	-56(%ebp),%eax
	movl	%eax,%esi
	imull	$5,%esi
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edi
	movb	(%eax,%edi,1),%al
	movb	%al,(%ebx,%esi)
	incl	-20(%ebp)
Lj188:
	movb	-57(%ebp),%al
	andb	$2,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj191
	jmp	Lj192
Lj191:
	movl	-52(%ebp),%ebx
	movl	-56(%ebp),%eax
	movl	%eax,%esi
	imull	$5,%esi
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edi
	movb	(%eax,%edi,1),%al
	movb	%al,1(%ebx,%esi)
	incl	-20(%ebp)
Lj192:
	movb	-57(%ebp),%al
	andb	$4,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj195
	jmp	Lj196
Lj195:
	movl	-52(%ebp),%ebx
	movl	-56(%ebp),%eax
	movl	%eax,%esi
	imull	$5,%esi
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edi
	movb	(%eax,%edi,1),%al
	movb	%al,2(%ebx,%esi)
	incl	-20(%ebp)
Lj196:
	movb	-57(%ebp),%al
	andb	$8,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj199
	jmp	Lj200
Lj199:
	movl	-52(%ebp),%ebx
	movl	-56(%ebp),%eax
	movl	%eax,%esi
	imull	$5,%esi
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edi
	movb	(%eax,%edi,1),%al
	movb	%al,3(%ebx,%esi)
	incl	-20(%ebp)
Lj200:
	movb	-57(%ebp),%al
	andb	$16,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj203
	jmp	Lj204
Lj203:
	movl	-52(%ebp),%ebx
	movl	-56(%ebp),%eax
	movl	%eax,%esi
	imull	$5,%esi
	movl	-4(%ebp),%edi
	movl	-20(%ebp),%eax
	movb	(%edi,%eax,1),%al
	movb	%al,4(%ebx,%esi)
	incl	-20(%ebp)
Lj204:
	jmp	Lj207
Lj186:
	movl	-52(%ebp),%esi
	movl	-56(%ebp),%ebx
	imull	$5,%ebx
	movb	-57(%ebp),%al
	movb	%al,(%esi,%ebx)
	movl	-20(%ebp),%eax
	addl	$4,%eax
	cmpl	-8(%ebp),%eax
	jle	Lj210
	jmp	Lj211
Lj210:
	movl	-52(%ebp),%ebx
	movl	-56(%ebp),%eax
	movl	%eax,%esi
	imull	$5,%esi
	movl	-4(%ebp),%edi
	movl	-20(%ebp),%eax
	movb	(%edi,%eax,1),%al
	movb	%al,1(%ebx,%esi)
	incl	-20(%ebp)
	movl	-52(%ebp),%ebx
	movl	-56(%ebp),%eax
	movl	%eax,%esi
	imull	$5,%esi
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edi
	movb	(%eax,%edi,1),%al
	movb	%al,2(%ebx,%esi)
	incl	-20(%ebp)
	movl	-52(%ebp),%ebx
	movl	-56(%ebp),%eax
	movl	%eax,%esi
	imull	$5,%esi
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edi
	movb	(%eax,%edi,1),%al
	movb	%al,3(%ebx,%esi)
	incl	-20(%ebp)
	movl	-52(%ebp),%ebx
	movl	-56(%ebp),%eax
	movl	%eax,%esi
	imull	$5,%esi
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edi
	movb	(%eax,%edi,1),%al
	movb	%al,4(%ebx,%esi)
	incl	-20(%ebp)
Lj211:
Lj207:
	incl	-56(%ebp)
	cmpl	-36(%ebp),%ecx
	jg	Lj180
Lj179:
	cmpl	-32(%ebp),%edx
	jg	Lj177
Lj176:
	movl	-84(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jg	Lj138
Lj137:
	movl	-12(%ebp),%eax
	movzwl	46(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	$1,-28(%ebp)
	movl	-88(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj221
	decl	-28(%ebp)
	.balign 4,0x90
Lj222:
	incl	-28(%ebp)
	movl	-20(%ebp),%eax
	addl	$4,%eax
	cmpl	-8(%ebp),%eax
	jg	Lj223
	jmp	Lj224
Lj223:
	jmp	Lj221
Lj224:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	call	XMDEC_READLE32$PBYTE$$LONGWORD
	movl	%eax,-64(%ebp)
	movl	-20(%ebp),%eax
	movl	-64(%ebp),%edx
	addl	%edx,%eax
	cmpl	-8(%ebp),%eax
	jg	Lj229
	jmp	Lj230
Lj229:
	jmp	Lj221
Lj230:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$4,%eax
	leal	(%edx,%eax,1),%eax
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%edx
	imull	$1068,%edx
	leal	3344(%ecx,%edx),%edx
	movl	$22,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movw	$0,-70(%ebp)
	movl	-64(%ebp),%eax
	cmpl	$29,%eax
	ja	Lj239
	jmp	Lj240
Lj239:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$27,%eax
	leal	(%edx,%eax,1),%eax
	call	XMDEC_READLE16$PBYTE$$WORD
	movw	%ax,-70(%ebp)
Lj240:
	movl	-12(%ebp),%edx
	movl	-28(%ebp),%eax
	imull	$1068,%eax
	movw	-70(%ebp),%cx
	movw	%cx,3366(%edx,%eax)
	movzwl	-70(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj249
	jmp	Lj248
Lj249:
	movl	-64(%ebp),%eax
	cmpl	$33,%eax
	ja	Lj247
	jmp	Lj248
Lj247:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$29,%eax
	leal	(%edx,%eax,1),%eax
	call	XMDEC_READLE32$PBYTE$$LONGWORD
	movl	%eax,-68(%ebp)
	movl	-20(%ebp),%eax
	addl	$33,%eax
	addl	$96,%eax
	cmpl	-8(%ebp),%eax
	jle	Lj254
	jmp	Lj255
Lj254:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$33,%eax
	leal	(%edx,%eax,1),%eax
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%edx
	imull	$1068,%edx
	leal	3368(%ecx,%edx),%edx
	movl	$96,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj255:
	movl	-20(%ebp),%eax
	addl	$129,%eax
	addl	$48,%eax
	cmpl	-8(%ebp),%eax
	jle	Lj262
	jmp	Lj263
Lj262:
	movl	$0,-32(%ebp)
	decl	-32(%ebp)
	.balign 4,0x90
Lj266:
	incl	-32(%ebp)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	addl	$129,%edx
	movl	-32(%ebp),%eax
	shll	$2,%eax
	addl	%eax,%edx
	leal	(%ecx,%edx,1),%eax
	call	XMDEC_READLE16$PBYTE$$WORD
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%edx
	imull	$1068,%edx
	movl	-32(%ebp),%ebx
	leal	3464(%ecx,%edx),%edx
	movw	%ax,(%edx,%ebx,4)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	addl	$131,%edx
	movl	-32(%ebp),%eax
	shll	$2,%eax
	addl	%eax,%edx
	leal	(%ecx,%edx,1),%eax
	call	XMDEC_READLE16$PBYTE$$WORD
	movl	-12(%ebp),%ebx
	movl	-28(%ebp),%edx
	imull	$1068,%edx
	movl	-32(%ebp),%ecx
	leal	3464(%ebx,%edx),%edx
	movw	%ax,2(%edx,%ecx,4)
	cmpl	$11,-32(%ebp)
	jl	Lj266
Lj263:
	movl	-20(%ebp),%eax
	addl	$177,%eax
	addl	$48,%eax
	cmpl	-8(%ebp),%eax
	jle	Lj275
	jmp	Lj276
Lj275:
	movl	$0,-32(%ebp)
	decl	-32(%ebp)
	.balign 4,0x90
Lj279:
	incl	-32(%ebp)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	addl	$177,%edx
	movl	-32(%ebp),%eax
	shll	$2,%eax
	addl	%eax,%edx
	leal	(%ecx,%edx,1),%eax
	call	XMDEC_READLE16$PBYTE$$WORD
	movl	-12(%ebp),%ebx
	movl	-28(%ebp),%edx
	imull	$1068,%edx
	movl	-32(%ebp),%ecx
	leal	3518(%ebx,%edx),%edx
	movw	%ax,(%edx,%ecx,4)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	addl	$179,%edx
	movl	-32(%ebp),%eax
	shll	$2,%eax
	addl	%eax,%edx
	leal	(%ecx,%edx,1),%eax
	call	XMDEC_READLE16$PBYTE$$WORD
	movl	-12(%ebp),%ebx
	movl	-28(%ebp),%edx
	imull	$1068,%edx
	movl	-32(%ebp),%ecx
	leal	3518(%ebx,%edx),%edx
	movw	%ax,2(%edx,%ecx,4)
	cmpl	$11,-32(%ebp)
	jl	Lj279
Lj276:
	movl	-20(%ebp),%eax
	addl	$225,%eax
	cmpl	-8(%ebp),%eax
	jl	Lj288
	jmp	Lj289
Lj288:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$225,%eax
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%ebx
	imull	$1068,%ebx
	movb	(%edx,%eax,1),%al
	movb	%al,3512(%ecx,%ebx)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%eax
	addl	$226,%eax
	movl	-12(%ebp),%edx
	movl	-28(%ebp),%ebx
	imull	$1068,%ebx
	movb	(%ecx,%eax,1),%al
	movb	%al,3566(%edx,%ebx)
	movl	-4(%ebp),%ebx
	movl	-20(%ebp),%eax
	addl	$227,%eax
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%edx
	imull	$1068,%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,3513(%ecx,%edx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$228,%eax
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%ebx
	imull	$1068,%ebx
	movb	(%edx,%eax,1),%al
	movb	%al,3514(%ecx,%ebx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$229,%eax
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%ebx
	imull	$1068,%ebx
	movb	(%edx,%eax,1),%al
	movb	%al,3515(%ecx,%ebx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$230,%eax
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%ebx
	imull	$1068,%ebx
	movb	(%edx,%eax,1),%al
	movb	%al,3567(%ecx,%ebx)
	movl	-4(%ebp),%ebx
	movl	-20(%ebp),%eax
	addl	$231,%eax
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%edx
	imull	$1068,%edx
	movb	(%ebx,%eax,1),%al
	movb	%al,3568(%ecx,%edx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$232,%eax
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%ebx
	imull	$1068,%ebx
	movb	(%edx,%eax,1),%al
	movb	%al,3569(%ecx,%ebx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$233,%eax
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%ebx
	imull	$1068,%ebx
	movb	(%edx,%eax,1),%al
	movb	%al,3516(%ecx,%ebx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$234,%eax
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%ebx
	imull	$1068,%ebx
	movb	(%edx,%eax,1),%al
	movb	%al,3570(%ecx,%ebx)
Lj289:
	movl	-20(%ebp),%eax
	addl	$239,%eax
	cmpl	-8(%ebp),%eax
	jl	Lj310
	jmp	Lj311
Lj310:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$239,%eax
	leal	(%edx,%eax,1),%eax
	call	XMDEC_READLE16$PBYTE$$WORD
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%edx
	imull	$1068,%edx
	movw	%ax,3576(%ecx,%edx)
Lj311:
Lj248:
	movl	-64(%ebp),%eax
	addl	%eax,-20(%ebp)
	movzwl	-70(%ebp),%eax
	cmpl	$16,%eax
	jg	Lj316
	jmp	Lj317
Lj316:
	movw	$16,-70(%ebp)
Lj317:
	movzwl	-70(%ebp),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%ebx
	jl	Lj321
	decl	-32(%ebp)
	.balign 4,0x90
Lj322:
	incl	-32(%ebp)
	movl	-20(%ebp),%eax
	addl	$40,%eax
	cmpl	-8(%ebp),%eax
	jg	Lj323
	jmp	Lj324
Lj323:
	jmp	Lj321
Lj324:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	call	XMDEC_READLE32$PBYTE$$LONGWORD
	movl	-12(%ebp),%edx
	movl	-28(%ebp),%esi
	imull	$1068,%esi
	movl	-32(%ebp),%ecx
	leal	3580(%edx,%esi),%edx
	imull	$52,%ecx
	movl	%eax,(%edx,%ecx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$4,%eax
	leal	(%edx,%eax,1),%eax
	call	XMDEC_READLE32$PBYTE$$LONGWORD
	movl	-12(%ebp),%edx
	movl	-28(%ebp),%esi
	imull	$1068,%esi
	movl	-32(%ebp),%ecx
	leal	3580(%edx,%esi),%edx
	imull	$52,%ecx
	movl	%eax,4(%edx,%ecx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$8,%eax
	leal	(%edx,%eax,1),%eax
	call	XMDEC_READLE32$PBYTE$$LONGWORD
	movl	-12(%ebp),%edx
	movl	-28(%ebp),%esi
	imull	$1068,%esi
	movl	-32(%ebp),%ecx
	leal	3580(%edx,%esi),%edx
	imull	$52,%ecx
	movl	%eax,8(%edx,%ecx)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%eax
	addl	$12,%eax
	movl	%eax,%edx
	movl	-12(%ebp),%edi
	movl	-28(%ebp),%eax
	imull	$1068,%eax
	movl	-32(%ebp),%esi
	leal	3580(%edi,%eax),%edi
	imull	$52,%esi
	movb	(%ecx,%edx,1),%al
	movb	%al,12(%edi,%esi)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$13,%eax
	movl	%eax,%ecx
	movl	-12(%ebp),%esi
	movl	-28(%ebp),%eax
	movl	%eax,%edi
	imull	$1068,%edi
	movl	-32(%ebp),%eax
	leal	3580(%esi,%edi),%esi
	imull	$52,%eax
	movb	(%edx,%ecx,1),%dl
	movb	%dl,13(%esi,%eax)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$14,%eax
	movb	(%edx,%eax,1),%al
	andb	$3,%al
	movl	-12(%ebp),%esi
	movl	-28(%ebp),%edx
	imull	$1068,%edx
	movl	-32(%ebp),%ecx
	leal	3580(%esi,%edx),%edx
	imull	$52,%ecx
	movb	%al,14(%edx,%ecx)
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%eax
	imull	$1068,%eax
	movl	-32(%ebp),%edx
	leal	3580(%ecx,%eax),%ecx
	imull	$52,%edx
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%esi
	addl	$14,%esi
	movb	(%eax,%esi,1),%al
	andb	$16,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	48(%ecx,%edx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$15,%eax
	movl	%eax,%ecx
	movl	-12(%ebp),%esi
	movl	-28(%ebp),%eax
	movl	%eax,%edi
	imull	$1068,%edi
	movl	-32(%ebp),%eax
	leal	3580(%esi,%edi),%esi
	imull	$52,%eax
	movb	(%edx,%ecx,1),%dl
	movb	%dl,15(%esi,%eax)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$16,%eax
	movl	%eax,%ecx
	movl	-12(%ebp),%esi
	movl	-28(%ebp),%eax
	movl	%eax,%edi
	imull	$1068,%edi
	movl	-32(%ebp),%eax
	leal	3580(%esi,%edi),%esi
	imull	$52,%eax
	movb	(%edx,%ecx,1),%dl
	movb	%dl,16(%esi,%eax)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$18,%eax
	leal	(%edx,%eax,1),%eax
	movl	-12(%ebp),%edx
	movl	-28(%ebp),%esi
	imull	$1068,%esi
	movl	-32(%ebp),%ecx
	leal	3580(%edx,%esi),%edx
	imull	$52,%ecx
	leal	17(%edx,%ecx),%edx
	movl	$22,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	addl	$40,-20(%ebp)
	cmpl	-32(%ebp),%ebx
	jg	Lj322
Lj321:
	movzwl	-70(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%esi
	jl	Lj356
	decl	-32(%ebp)
	.balign 4,0x90
Lj357:
	incl	-32(%ebp)
	movl	-12(%ebp),%edx
	movl	-28(%ebp),%eax
	imull	$1068,%eax
	movl	-32(%ebp),%ecx
	leal	3580(%edx,%eax),%eax
	imull	$52,%ecx
	movl	(%eax,%ecx),%eax
	movl	%eax,-76(%ebp)
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj360
	jmp	Lj361
Lj360:
	jmp	Lj355
Lj361:
	movl	-20(%ebp),%edx
	movl	-76(%ebp),%eax
	addl	%eax,%edx
	cmpl	-8(%ebp),%edx
	jg	Lj362
	jmp	Lj363
Lj362:
	jmp	Lj356
Lj363:
	movl	-12(%ebp),%edx
	movl	-28(%ebp),%eax
	imull	$1068,%eax
	movl	-32(%ebp),%ecx
	leal	3580(%edx,%eax),%eax
	imull	$52,%ecx
	cmpb	$0,48(%eax,%ecx)
	jne	Lj364
	jmp	Lj365
Lj364:
	movl	-76(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-76(%ebp)
	movl	-12(%ebp),%edx
	movl	-28(%ebp),%eax
	imull	$1068,%eax
	movl	-32(%ebp),%ecx
	leal	3580(%edx,%eax),%eax
	imull	$52,%ecx
	movl	-76(%ebp),%edx
	movl	%edx,(%eax,%ecx)
	movl	-12(%ebp),%edx
	movl	-28(%ebp),%eax
	imull	$1068,%eax
	movl	-32(%ebp),%ecx
	leal	3580(%edx,%eax),%eax
	imull	$52,%ecx
	movl	4(%eax,%ecx),%edx
	shrl	$1,%edx
	movl	-12(%ebp),%ebx
	movl	-28(%ebp),%eax
	imull	$1068,%eax
	movl	-32(%ebp),%ecx
	leal	3580(%ebx,%eax),%eax
	imull	$52,%ecx
	movl	%edx,4(%eax,%ecx)
	movl	-12(%ebp),%edx
	movl	-28(%ebp),%eax
	imull	$1068,%eax
	movl	-32(%ebp),%ecx
	leal	3580(%edx,%eax),%eax
	imull	$52,%ecx
	movl	8(%eax,%ecx),%edx
	shrl	$1,%edx
	movl	-12(%ebp),%ebx
	movl	-28(%ebp),%eax
	imull	$1068,%eax
	movl	-32(%ebp),%ecx
	leal	3580(%ebx,%eax),%eax
	imull	$52,%ecx
	movl	%edx,8(%eax,%ecx)
	movl	-76(%ebp),%edx
	shll	$1,%edx
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%eax
	imull	$1068,%eax
	movl	-32(%ebp),%ebx
	leal	3580(%ecx,%eax),%eax
	imull	$52,%ebx
	leal	44(%eax,%ebx),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movw	$0,-80(%ebp)
	movl	-76(%ebp),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%ebx
	jl	Lj381
	decl	-36(%ebp)
	.balign 4,0x90
Lj382:
	incl	-36(%ebp)
	movswl	-80(%ebp),%edi
	movl	-4(%ebp),%edx
	movl	-36(%ebp),%eax
	shll	$1,%eax
	movl	-20(%ebp),%ecx
	addl	%ecx,%eax
	leal	(%edx,%eax,1),%eax
	call	XMDEC_READLE16$PBYTE$$WORD
	movswl	%ax,%eax
	addl	%eax,%edi
	movw	%di,%ax
	movw	%ax,-80(%ebp)
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%eax
	imull	$1068,%eax
	movl	-32(%ebp),%edx
	leal	3580(%ecx,%eax),%eax
	imull	$52,%edx
	movl	44(%eax,%edx),%ecx
	movl	-36(%ebp),%eax
	movw	-80(%ebp),%dx
	movw	%dx,(%ecx,%eax,2)
	cmpl	-36(%ebp),%ebx
	jg	Lj382
Lj381:
	movl	-76(%ebp),%eax
	shll	$1,%eax
	addl	%eax,-20(%ebp)
	jmp	Lj389
Lj365:
	movl	-12(%ebp),%edx
	movl	-28(%ebp),%eax
	imull	$1068,%eax
	movl	-32(%ebp),%ecx
	leal	3580(%edx,%eax),%eax
	imull	$52,%ecx
	leal	40(%eax,%ecx),%eax
	movl	-76(%ebp),%edx
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movb	$0,-77(%ebp)
	movl	-76(%ebp),%ecx
	decl	%ecx
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%ecx
	jl	Lj397
	decl	-36(%ebp)
	.balign 4,0x90
Lj398:
	incl	-36(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	-36(%ebp),%ebx
	addl	%ebx,%edx
	movsbl	(%eax,%edx,1),%eax
	movsbl	-77(%ebp),%edx
	addl	%edx,%eax
	movb	%al,-77(%ebp)
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	imull	$1068,%ebx
	movl	-32(%ebp),%edx
	leal	3580(%eax,%ebx),%eax
	imull	$52,%edx
	movl	40(%eax,%edx),%edx
	movl	-36(%ebp),%ebx
	movb	-77(%ebp),%al
	movb	%al,(%edx,%ebx,1)
	cmpl	-36(%ebp),%ecx
	jg	Lj398
Lj397:
	movl	-76(%ebp),%eax
	addl	%eax,-20(%ebp)
Lj389:
Lj355:
	cmpl	-32(%ebp),%esi
	jg	Lj357
Lj356:
	movl	-88(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jg	Lj222
Lj221:
	movl	-12(%ebp),%eax
	movb	$1,141117(%eax)
	movb	$1,-13(%ebp)
Lj47:
	movb	-13(%ebp),%al
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	movl	-92(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	XMDEC_XMLOADFILE$SHORTSTRING$TXMFILE$$BOOLEAN
XMDEC_XMLOADFILE$SHORTSTRING$TXMFILE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$360,%esp
	movl	%ebx,-360(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$141120,%edx
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
	jne	Lj425
	jmp	Lj426
Lj425:
	jmp	Lj407
Lj426:
	leal	-344(%ebp),%eax
	call	SYSTEM_FILESIZE$file$$INT64
	movl	%eax,%ebx
	call	FPC_IOCHECK
	movl	%ebx,-352(%ebp)
	movl	-352(%ebp),%eax
	cmpl	$80,%eax
	jl	Lj431
	jmp	Lj432
Lj431:
	leal	-344(%ebp),%eax
	call	SYSTEM_CLOSE$file
	call	FPC_IOCHECK
	jmp	Lj407
Lj432:
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
	jne	Lj449
	jmp	Lj450
Lj449:
	movl	-348(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	jmp	Lj407
Lj450:
	movl	-8(%ebp),%ecx
	movl	-352(%ebp),%edx
	movl	-348(%ebp),%eax
	call	XMDEC_XMLOADMEM$PBYTE$LONGINT$TXMFILE$$BOOLEAN
	movb	%al,-9(%ebp)
	movl	-348(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj407:
	movb	-9(%ebp),%al
	movl	-360(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	XMDEC_XMFREE$TXMFILE
XMDEC_XMFREE$TXMFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.balign 4,0x90
Lj467:
	incl	-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	shll	$4,%eax
	movl	324(%edx,%eax),%eax
	testl	%eax,%eax
	jne	Lj468
	jmp	Lj469
Lj468:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	shll	$4,%eax
	movl	324(%edx,%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	shll	$4,%eax
	movl	$0,324(%edx,%eax)
Lj469:
	cmpl	$255,-8(%ebp)
	jl	Lj467
	movl	$1,-8(%ebp)
	decl	-8(%ebp)
	.balign 4,0x90
Lj476:
	incl	-8(%ebp)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.balign 4,0x90
Lj479:
	incl	-12(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	imull	$1068,%eax
	movl	-12(%ebp),%edx
	leal	3580(%ecx,%eax),%eax
	imull	$52,%edx
	movl	40(%eax,%edx),%eax
	testl	%eax,%eax
	jne	Lj480
	jmp	Lj481
Lj480:
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	imull	$1068,%eax
	movl	-12(%ebp),%edx
	leal	3580(%ecx,%eax),%eax
	imull	$52,%edx
	movl	40(%eax,%edx),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	imull	$1068,%eax
	movl	-12(%ebp),%edx
	leal	3580(%ecx,%eax),%eax
	imull	$52,%edx
	movl	$0,40(%eax,%edx)
Lj481:
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	imull	$1068,%eax
	movl	-12(%ebp),%edx
	leal	3580(%ecx,%eax),%eax
	imull	$52,%edx
	movl	44(%eax,%edx),%eax
	testl	%eax,%eax
	jne	Lj486
	jmp	Lj487
Lj486:
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	imull	$1068,%eax
	movl	-12(%ebp),%edx
	leal	3580(%ecx,%eax),%eax
	imull	$52,%edx
	movl	44(%eax,%edx),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	imull	$1068,%eax
	movl	-12(%ebp),%edx
	leal	3580(%ecx,%eax),%eax
	imull	$52,%edx
	movl	$0,44(%eax,%edx)
Lj487:
	cmpl	$15,-12(%ebp)
	jl	Lj479
	cmpl	$128,-8(%ebp)
	jl	Lj476
	movl	-4(%ebp),%eax
	movb	$0,141117(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	XMDEC_XMDURATION$TXMFILE$$LONGINT
XMDEC_XMDURATION$TXMFILE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movzwl	54(%eax),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj499
	decl	-16(%ebp)
	.balign 4,0x90
Lj500:
	incl	-16(%ebp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movzbw	58(%ecx,%edx,1),%dx
	movl	-4(%ebp),%ecx
	cmpw	44(%ecx),%dx
	jb	Lj501
	jmp	Lj502
Lj501:
	incl	-12(%ebp)
Lj502:
	cmpl	-16(%ebp),%eax
	jg	Lj500
Lj499:
	movl	-4(%ebp),%eax
	movzwl	52(%eax),%eax
	testl	%eax,%eax
	je	Lj503
	jmp	Lj504
Lj503:
	movl	-4(%ebp),%eax
	movw	$125,52(%eax)
Lj504:
	movl	-4(%ebp),%eax
	movzwl	50(%eax),%eax
	testl	%eax,%eax
	je	Lj507
	jmp	Lj508
Lj507:
	movl	-4(%ebp),%eax
	movw	$6,50(%eax)
Lj508:
	movl	-12(%ebp),%eax
	shll	$6,%eax
	movl	-4(%ebp),%edx
	movzwl	50(%edx),%edx
	imull	%edx,%eax
	imull	$1000,%eax
	movl	-4(%ebp),%edx
	movzwl	52(%edx),%ecx
	imull	$400,%ecx
	cltd
	idivl	%ecx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	XMDEC_XMRENDER$TXMFILE$LONGWORD$PSMALLINT$$LONGINT
XMDEC_XMRENDER$TXMFILE$LONGWORD$PSMALLINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1404,%esp
	movl	%ebx,-1404(%ebp)
	movl	%esi,-1400(%ebp)
	movl	%edi,-1396(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$-1,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	movb	141117(%eax),%al
	testb	%al,%al
	je	Lj519
	jmp	Lj520
Lj519:
	jmp	Lj513
Lj520:
	movl	-4(%ebp),%eax
	call	XMDEC_XMDURATION$TXMFILE$$LONGINT
	addl	$2,%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	shll	$2,%eax
	movl	%eax,-1356(%ebp)
	movl	-1356(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj525
	jmp	Lj526
Lj525:
	movl	$60,%eax
	mull	-8(%ebp)
	shll	$2,%eax
	movl	%eax,-1356(%ebp)
Lj526:
	movl	-1356(%ebp),%edx
	leal	-1348(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-1348(%ebp),%eax
	movl	-1356(%ebp),%edx
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leal	-1296(%ebp),%eax
	movb	$0,%cl
	movl	$1280,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-4(%ebp),%eax
	movzwl	52(%eax),%eax
	movl	%eax,-1300(%ebp)
	movl	-4(%ebp),%eax
	movzwl	50(%eax),%eax
	movl	%eax,-1304(%ebp)
	movl	-1300(%ebp),%eax
	testl	%eax,%eax
	je	Lj549
	jmp	Lj550
Lj549:
	movl	$125,-1300(%ebp)
Lj550:
	movl	-1304(%ebp),%eax
	testl	%eax,%eax
	je	Lj553
	jmp	Lj554
Lj553:
	movl	$6,-1304(%ebp)
Lj554:
	movl	$0,-1352(%ebp)
	movl	-4(%ebp),%eax
	movzwl	54(%eax),%eax
	decl	%eax
	movl	%eax,-1392(%ebp)
	movl	$0,-1320(%ebp)
	movl	-1392(%ebp),%eax
	cmpl	-1320(%ebp),%eax
	jl	Lj560
	decl	-1320(%ebp)
	.balign 4,0x90
Lj561:
	incl	-1320(%ebp)
	movl	-4(%ebp),%edx
	movl	-1320(%ebp),%eax
	movzbw	58(%edx,%eax,1),%dx
	movl	-4(%ebp),%eax
	cmpw	44(%eax),%dx
	jae	Lj562
	jmp	Lj563
Lj562:
	jmp	Lj559
Lj563:
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-1320(%ebp),%edx
	movzbl	58(%eax,%edx,1),%eax
	shll	$4,%eax
	movl	324(%ecx,%eax),%eax
	movl	%eax,-1324(%ebp)
	movl	-1324(%ebp),%eax
	testl	%eax,%eax
	je	Lj566
	jmp	Lj567
Lj566:
	jmp	Lj559
Lj567:
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-1320(%ebp),%edx
	movzbl	58(%eax,%edx,1),%eax
	shll	$4,%eax
	movw	316(%ecx,%eax),%ax
	movw	%ax,-1374(%ebp)
	movzwl	-1374(%ebp),%eax
	testl	%eax,%eax
	je	Lj570
	jmp	Lj571
Lj570:
	movw	$64,-1374(%ebp)
Lj571:
	movzwl	-1374(%ebp),%eax
	decl	%eax
	movl	%eax,-1388(%ebp)
	movl	$0,-1316(%ebp)
	movl	-1388(%ebp),%eax
	cmpl	-1316(%ebp),%eax
	jl	Lj575
	decl	-1316(%ebp)
	.balign 4,0x90
Lj576:
	incl	-1316(%ebp)
	movl	-4(%ebp),%eax
	movzwl	42(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-1336(%ebp)
	cmpl	-1336(%ebp),%ebx
	jl	Lj578
	decl	-1336(%ebp)
	.balign 4,0x90
Lj579:
	incl	-1336(%ebp)
	movl	-1324(%ebp),%edx
	movl	-4(%ebp),%eax
	movzwl	42(%eax),%eax
	movl	-1316(%ebp),%ecx
	imull	%eax,%ecx
	movl	-1336(%ebp),%eax
	addl	%eax,%ecx
	imull	$5,%ecx
	movl	(%edx,%ecx),%eax
	movl	%eax,-1329(%ebp)
	movb	4(%edx,%ecx),%al
	movb	%al,-1325(%ebp)
	movzbl	-1328(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj584
	jmp	Lj583
Lj584:
	movzbw	-1328(%ebp),%dx
	movl	-4(%ebp),%eax
	cmpw	46(%eax),%dx
	jbe	Lj582
	jmp	Lj583
Lj582:
	movl	-1336(%ebp),%eax
	imull	$40,%eax
	movb	-1328(%ebp),%dl
	movb	%dl,-1295(%ebp,%eax)
Lj583:
	movzbl	-1329(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj590
	jmp	Lj588
Lj590:
	movzbl	-1329(%ebp),%eax
	cmpl	$97,%eax
	jl	Lj589
	jmp	Lj588
Lj589:
	movl	-1336(%ebp),%eax
	imull	$40,%eax
	movzbl	-1295(%ebp,%eax),%eax
	cmpl	$0,%eax
	jg	Lj587
	jmp	Lj588
Lj587:
	movl	-1336(%ebp),%eax
	imull	$40,%eax
	movb	-1295(%ebp,%eax),%al
	movb	%al,-1341(%ebp)
	movl	-4(%ebp),%ecx
	movzbl	-1341(%ebp),%eax
	imull	$1068,%eax
	movzbl	-1329(%ebp),%edx
	decl	%edx
	leal	3368(%ecx,%eax),%eax
	movb	(%eax,%edx,1),%al
	movb	%al,-1342(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-1341(%ebp),%eax
	imull	$1068,%eax
	movzbw	-1342(%ebp),%cx
	cmpw	3366(%edx,%eax),%cx
	jb	Lj595
	jmp	Lj596
Lj595:
	movl	-1336(%ebp),%edx
	imull	$40,%edx
	movb	-1342(%ebp),%al
	movb	%al,-1294(%ebp,%edx)
	movl	-1336(%ebp),%edx
	imull	$40,%edx
	movb	-1329(%ebp),%al
	movb	%al,-1293(%ebp,%edx)
	movl	-4(%ebp),%edx
	movzbl	-1341(%ebp),%eax
	imull	$1068,%eax
	movzbl	-1342(%ebp),%ecx
	leal	3580(%edx,%eax),%eax
	imull	$52,%ecx
	leal	(%eax,%ecx),%eax
	movl	%eax,-1380(%ebp)
	movl	-1336(%ebp),%eax
	imull	$40,%eax
	movl	-1380(%ebp),%edx
	movzbl	12(%edx),%edx
	movl	%edx,-1288(%ebp,%eax)
	movl	-1336(%ebp),%edx
	imull	$40,%edx
	movl	-1380(%ebp),%eax
	movb	15(%eax),%al
	movb	%al,-1284(%ebp,%edx)
	movzbl	-1329(%ebp),%eax
	decl	%eax
	movl	-1380(%ebp),%edx
	movsbl	16(%edx),%edx
	addl	%edx,%eax
	movl	-1380(%ebp),%edx
	movb	13(%edx),%dl
	call	XMDEC_LINEARPERIOD$LONGINT$SHORTINT$$LONGWORD
	movl	-1336(%ebp),%edx
	imull	$40,%edx
	movl	%eax,-1292(%ebp,%edx)
	movl	-1336(%ebp),%eax
	imull	$40,%eax
	movl	$0,-1280(%ebp,%eax)
	movl	-1336(%ebp),%eax
	imull	$40,%eax
	movl	-1292(%ebp,%eax),%eax
	movl	-8(%ebp),%edx
	call	XMDEC_PERIODTOINC$LONGWORD$LONGWORD$$LONGWORD
	movl	-1336(%ebp),%edx
	imull	$40,%edx
	movl	%eax,-1276(%ebp,%edx)
	movl	-1336(%ebp),%eax
	imull	$40,%eax
	movb	$1,-1296(%ebp,%eax)
	movl	-1336(%ebp),%eax
	imull	$40,%eax
	movb	$1,-1266(%ebp,%eax)
	movl	-1336(%ebp),%eax
	imull	$40,%eax
	movw	$65535,-1268(%ebp,%eax)
Lj596:
	jmp	Lj627
Lj588:
	movzbl	-1329(%ebp),%eax
	cmpl	$97,%eax
	je	Lj628
	jmp	Lj629
Lj628:
	movl	-1336(%ebp),%eax
	imull	$40,%eax
	movb	$0,-1266(%ebp,%eax)
Lj629:
Lj627:
	movzbl	-1327(%ebp),%eax
	cmpl	$16,%eax
	jge	Lj634
	jmp	Lj633
Lj634:
	movzbl	-1327(%ebp),%eax
	cmpl	$80,%eax
	jle	Lj632
	jmp	Lj633
Lj632:
	movzbl	-1327(%ebp),%eax
	subl	$16,%eax
	call	XMDEC_CLAMPV$LONGINT$$LONGINT
	movl	-1336(%ebp),%edx
	imull	$40,%edx
	movl	%eax,-1288(%ebp,%edx)
Lj633:
	movb	-1326(%ebp),%al
	cmpb	$12,%al
	jb	Lj640
	subb	$12,%al
	je	Lj642
	subb	$3,%al
	je	Lj641
	jmp	Lj640
Lj641:
	movzbl	-1325(%ebp),%eax
	cmpl	$32,%eax
	jl	Lj643
	jmp	Lj644
Lj643:
	movzbl	-1325(%ebp),%eax
	movl	%eax,-1304(%ebp)
	jmp	Lj647
Lj644:
	movzbl	-1325(%ebp),%eax
	movl	%eax,-1300(%ebp)
Lj647:
	jmp	Lj639
Lj642:
	movzbl	-1325(%ebp),%eax
	call	XMDEC_CLAMPV$LONGINT$$LONGINT
	movl	-1336(%ebp),%edx
	imull	$40,%edx
	movl	%eax,-1288(%ebp,%edx)
	jmp	Lj639
Lj640:
Lj639:
	cmpl	-1336(%ebp),%ebx
	jg	Lj579
Lj578:
	movl	$5,%eax
	mull	-8(%ebp)
	movl	-1300(%ebp),%ecx
	shll	$1,%ecx
	xorl	%edx,%edx
	divl	%ecx
	movl	%eax,-1308(%ebp)
	movl	-1304(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-1312(%ebp)
	cmpl	-1312(%ebp),%esi
	jl	Lj657
	decl	-1312(%ebp)
	.balign 4,0x90
Lj658:
	incl	-1312(%ebp)
	movl	-1308(%ebp),%eax
	decl	%eax
	movl	%eax,%ecx
	movl	$0,-1340(%ebp)
	cmpl	-1340(%ebp),%ecx
	jl	Lj660
	decl	-1340(%ebp)
	.balign 4,0x90
Lj661:
	incl	-1340(%ebp)
	movl	-1352(%ebp),%eax
	incl	%eax
	shll	$1,%eax
	cmpl	-1356(%ebp),%eax
	jge	Lj662
	jmp	Lj663
Lj662:
	jmp	Lj660
Lj663:
	movl	$0,-1360(%ebp)
	movl	$0,-1364(%ebp)
	movl	-4(%ebp),%eax
	movzwl	42(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-1336(%ebp)
	cmpl	-1336(%ebp),%ebx
	jl	Lj669
	decl	-1336(%ebp)
	.balign 4,0x90
Lj670:
	incl	-1336(%ebp)
	movl	-1336(%ebp),%eax
	imull	$40,%eax
	movb	-1296(%ebp,%eax),%al
	testb	%al,%al
	je	Lj671
	jmp	Lj672
Lj671:
	jmp	Lj668
Lj672:
	movl	-1336(%ebp),%eax
	imull	$40,%eax
	movb	-1295(%ebp,%eax),%al
	movb	%al,-1341(%ebp)
	movzbl	-1341(%ebp),%eax
	testl	%eax,%eax
	je	Lj675
	jmp	Lj677
Lj677:
	movzbw	-1341(%ebp),%dx
	movl	-4(%ebp),%eax
	cmpw	46(%eax),%dx
	ja	Lj675
	jmp	Lj676
Lj675:
	jmp	Lj668
Lj676:
	movl	-1336(%ebp),%eax
	imull	$40,%eax
	movb	-1294(%ebp,%eax),%al
	movb	%al,-1342(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-1341(%ebp),%eax
	imull	$1068,%eax
	movzbl	-1342(%ebp),%edi
	leal	3580(%edx,%eax),%edx
	movl	%edi,%eax
	imull	$52,%eax
	leal	(%edx,%eax),%eax
	movl	%eax,-1380(%ebp)
	movl	-1380(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	je	Lj684
	jmp	Lj683
Lj684:
	movl	-1380(%ebp),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	je	Lj682
	jmp	Lj683
Lj682:
	jmp	Lj668
Lj683:
	movl	-1336(%ebp),%eax
	imull	$40,%eax
	movl	-1280(%ebp,%eax),%eax
	shrl	$16,%eax
	movl	%eax,-1372(%ebp)
	movl	-1380(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$0,%eax
	ja	Lj687
	jmp	Lj688
Lj687:
	jmp	Lj690
	.balign 4,0x90
Lj689:
	movl	-1380(%ebp),%eax
	movl	8(%eax),%eax
	subl	%eax,-1372(%ebp)
Lj690:
	movl	-1380(%ebp),%eax
	movl	-1380(%ebp),%edi
	movl	4(%eax),%edx
	movl	8(%edi),%eax
	addl	%eax,%edx
	cmpl	-1372(%ebp),%edx
	jbe	Lj689
	jmp	Lj691
Lj691:
	jmp	Lj692
Lj688:
	movl	-1380(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-1372(%ebp),%eax
	jbe	Lj693
	jmp	Lj694
Lj693:
	movl	-1336(%ebp),%eax
	imull	$40,%eax
	movb	$0,-1296(%ebp,%eax)
	jmp	Lj668
Lj694:
Lj692:
	movl	-1380(%ebp),%eax
	cmpb	$0,48(%eax)
	jne	Lj697
	jmp	Lj698
Lj697:
	movl	-1380(%ebp),%eax
	movl	44(%eax),%edx
	movl	-1372(%ebp),%eax
	movswl	(%edx,%eax,2),%edx
	movl	-1336(%ebp),%eax
	imull	$40,%eax
	movl	-1288(%ebp,%eax),%eax
	imull	%eax,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$63,%eax
	addl	%eax,%edx
	sarl	$6,%edx
	movl	%edx,-1368(%ebp)
	jmp	Lj701
Lj698:
	movl	-1380(%ebp),%eax
	movl	40(%eax),%eax
	movl	-1372(%ebp),%edx
	movsbl	(%eax,%edx,1),%edx
	movl	-1336(%ebp),%eax
	imull	$40,%eax
	movl	-1288(%ebp,%eax),%eax
	imull	%eax,%edx
	movl	%edx,-1368(%ebp)
Lj701:
	movl	-1336(%ebp),%eax
	imull	$40,%eax
	movzbl	-1284(%ebp,%eax),%eax
	movl	%eax,-1384(%ebp)
	movl	-1384(%ebp),%edx
	movl	$255,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-1368(%ebp),%eax
	imull	%eax,%edx
	movl	%edx,%edi
	movl	$-2139062143,%eax
	imull	%edi
	movl	%edi,%eax
	addl	%eax,%edx
	sarl	$7,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	addl	%edx,-1360(%ebp)
	movl	-1368(%ebp),%eax
	movl	-1384(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,%edi
	movl	$-2139062143,%eax
	imull	%edi
	movl	%edi,%eax
	addl	%eax,%edx
	sarl	$7,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	addl	%edx,-1364(%ebp)
	movl	-1336(%ebp),%eax
	movl	%eax,%edi
	imull	$40,%edi
	movl	-1336(%ebp),%eax
	movl	%eax,%edx
	imull	$40,%edx
	movl	-1276(%ebp,%edi),%eax
	addl	%eax,-1280(%ebp,%edx)
Lj668:
	cmpl	-1336(%ebp),%ebx
	jg	Lj670
Lj669:
	movl	-1360(%ebp),%eax
	cmpl	$32767,%eax
	jg	Lj706
	jmp	Lj707
Lj706:
	movl	$32767,-1360(%ebp)
Lj707:
	movl	-1360(%ebp),%eax
	cmpl	$-32768,%eax
	jl	Lj710
	jmp	Lj711
Lj710:
	movl	$-32768,-1360(%ebp)
Lj711:
	movl	-1364(%ebp),%eax
	cmpl	$32767,%eax
	jg	Lj714
	jmp	Lj715
Lj714:
	movl	$32767,-1364(%ebp)
Lj715:
	movl	-1364(%ebp),%eax
	cmpl	$-32768,%eax
	jl	Lj718
	jmp	Lj719
Lj718:
	movl	$-32768,-1364(%ebp)
Lj719:
	movl	-1348(%ebp),%edx
	movl	-1352(%ebp),%eax
	shll	$1,%eax
	movl	%eax,%ebx
	movw	-1360(%ebp),%ax
	movw	%ax,(%edx,%ebx,2)
	movl	-1348(%ebp),%edx
	movl	-1352(%ebp),%eax
	shll	$1,%eax
	incl	%eax
	movw	-1364(%ebp),%bx
	movw	%bx,(%edx,%eax,2)
	incl	-1352(%ebp)
	cmpl	-1340(%ebp),%ecx
	jg	Lj661
Lj660:
	cmpl	-1312(%ebp),%esi
	jg	Lj658
Lj657:
	movl	-1388(%ebp),%eax
	cmpl	-1316(%ebp),%eax
	jg	Lj576
Lj575:
Lj559:
	movl	-1392(%ebp),%eax
	cmpl	-1320(%ebp),%eax
	jg	Lj561
Lj560:
	movl	-1352(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-1352(%ebp),%eax
	shll	$2,%eax
	movl	%eax,-1356(%ebp)
	movl	-1356(%ebp),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-1348(%ebp),%eax
	movl	-1356(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-1348(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj513:
	movl	-16(%ebp),%eax
	movl	-1404(%ebp),%ebx
	movl	-1400(%ebp),%esi
	movl	-1396(%ebp),%edi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	THREADVARLIST_XMDEC
THREADVARLIST_XMDEC:
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
.globl	INIT_XMDEC_TXMENVPOINT
INIT_XMDEC_TXMENVPOINT:
	.byte	13,11
	.ascii	"TXMEnvPoint"
	.long	4,0

.data
	.balign 4
.globl	RTTI_XMDEC_TXMENVPOINT
RTTI_XMDEC_TXMENVPOINT:
	.byte	13,11
	.ascii	"TXMEnvPoint"
	.long	4,2
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2

.data
	.balign 4
.globl	INIT_XMDEC_TXMENVELOPE
INIT_XMDEC_TXMENVELOPE:
	.byte	13,11
	.ascii	"TXMEnvelope"
	.long	54,0

.data
	.balign 4
.globl	RTTI_XMDEC_DEF2
RTTI_XMDEC_DEF2:
	.byte	12
	.ascii	"\000"
	.long	4,12
	.long	RTTI_XMDEC_TXMENVPOINT
	.long	-1

.data
	.balign 4
.globl	RTTI_XMDEC_TXMENVELOPE
RTTI_XMDEC_TXMENVELOPE:
	.byte	13,11
	.ascii	"TXMEnvelope"
	.long	54,6
	.long	RTTI_XMDEC_DEF2
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	48
	.long	RTTI_SYSTEM_BYTE
	.long	49
	.long	RTTI_SYSTEM_BYTE
	.long	50
	.long	RTTI_SYSTEM_BYTE
	.long	51
	.long	RTTI_SYSTEM_BYTE
	.long	52

.data
	.balign 4
.globl	INIT_XMDEC_TXMSAMPLE
INIT_XMDEC_TXMSAMPLE:
	.byte	13,9
	.ascii	"TXMSample"
	.long	52,0

.data
	.balign 4
.globl	RTTI_XMDEC_DEF4
RTTI_XMDEC_DEF4:
	.byte	12
	.ascii	"\000"
	.long	1,22
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_XMDEC_TXMSAMPLE
RTTI_XMDEC_TXMSAMPLE:
	.byte	13,9
	.ascii	"TXMSample"
	.long	52,12
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_SYSTEM_BYTE
	.long	12
	.long	RTTI_SYSTEM_SHORTINT
	.long	13
	.long	RTTI_SYSTEM_BYTE
	.long	14
	.long	RTTI_SYSTEM_BYTE
	.long	15
	.long	RTTI_SYSTEM_SHORTINT
	.long	16
	.long	RTTI_XMDEC_DEF4
	.long	17
	.long	RTTI_SYSTEM_PSHORTINT
	.long	40
	.long	RTTI_SYSTEM_PSMALLINT
	.long	44
	.long	RTTI_SYSTEM_BOOLEAN
	.long	48

.data
	.balign 4
.globl	INIT_XMDEC_TXMINSTRUMENT
INIT_XMDEC_TXMINSTRUMENT:
	.byte	13,13
	.ascii	"TXMInstrument"
	.long	1068,0

.data
	.balign 4
.globl	RTTI_XMDEC_DEF6
RTTI_XMDEC_DEF6:
	.byte	12
	.ascii	"\000"
	.long	1,22
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_XMDEC_DEF7
RTTI_XMDEC_DEF7:
	.byte	12
	.ascii	"\000"
	.long	1,96
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_XMDEC_DEF8
RTTI_XMDEC_DEF8:
	.byte	12
	.ascii	"\000"
	.long	52,16
	.long	RTTI_XMDEC_TXMSAMPLE
	.long	-1

.data
	.balign 4
.globl	RTTI_XMDEC_TXMINSTRUMENT
RTTI_XMDEC_TXMINSTRUMENT:
	.byte	13,13
	.ascii	"TXMInstrument"
	.long	1068,11
	.long	RTTI_XMDEC_DEF6
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	22
	.long	RTTI_XMDEC_DEF7
	.long	24
	.long	RTTI_XMDEC_TXMENVELOPE
	.long	120
	.long	RTTI_XMDEC_TXMENVELOPE
	.long	174
	.long	RTTI_SYSTEM_BYTE
	.long	228
	.long	RTTI_SYSTEM_BYTE
	.long	229
	.long	RTTI_SYSTEM_BYTE
	.long	230
	.long	RTTI_SYSTEM_BYTE
	.long	231
	.long	RTTI_SYSTEM_WORD
	.long	232
	.long	RTTI_XMDEC_DEF8
	.long	236

.data
	.balign 4
.globl	INIT_XMDEC_TXMNOTE
INIT_XMDEC_TXMNOTE:
	.byte	13,7
	.ascii	"TXMNote"
	.long	5,0

.data
	.balign 4
.globl	RTTI_XMDEC_TXMNOTE
RTTI_XMDEC_TXMNOTE:
	.byte	13,7
	.ascii	"TXMNote"
	.long	5,5
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

.data
	.balign 4
.globl	INIT_XMDEC_TXMPATTERN
INIT_XMDEC_TXMPATTERN:
	.byte	13,10
	.ascii	"TXMPattern"
	.long	16,0

.data
	.balign 4
.globl	RTTI_XMDEC_TXMPATTERN
RTTI_XMDEC_TXMPATTERN:
	.byte	13,10
	.ascii	"TXMPattern"
	.long	16,4
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_PBYTE
	.long	4
	.long	RTTI_SYSTEM_POINTER
	.long	8
	.long	RTTI_SYSTEM_LONGWORD
	.long	12

.data
	.balign 4
.globl	INIT_XMDEC_TXMCHANNEL
INIT_XMDEC_TXMCHANNEL:
	.byte	13,10
	.ascii	"TXMChannel"
	.long	40,0

.data
	.balign 4
.globl	RTTI_XMDEC_TXMCHANNEL
RTTI_XMDEC_TXMCHANNEL:
	.byte	13,10
	.ascii	"TXMChannel"
	.long	40,15
	.long	RTTI_SYSTEM_BOOLEAN
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	1
	.long	RTTI_SYSTEM_BYTE
	.long	2
	.long	RTTI_SYSTEM_BYTE
	.long	3
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
	.long	RTTI_SYSTEM_WORD
	.long	26
	.long	RTTI_SYSTEM_WORD
	.long	28
	.long	RTTI_SYSTEM_BOOLEAN
	.long	30
	.long	RTTI_SYSTEM_WORD
	.long	32
	.long	RTTI_SYSTEM_LONGWORD
	.long	36

.data
	.balign 4
.globl	INIT_XMDEC_TXMFILE
INIT_XMDEC_TXMFILE:
	.byte	13,7
	.ascii	"TXMFile"
	.long	141120,0

.data
	.balign 4
.globl	RTTI_XMDEC_DEF13
RTTI_XMDEC_DEF13:
	.byte	12
	.ascii	"\000"
	.long	1,20
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_XMDEC_DEF14
RTTI_XMDEC_DEF14:
	.byte	12
	.ascii	"\000"
	.long	1,20
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_XMDEC_DEF15
RTTI_XMDEC_DEF15:
	.byte	12
	.ascii	"\000"
	.long	1,256
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_XMDEC_DEF16
RTTI_XMDEC_DEF16:
	.byte	12
	.ascii	"\000"
	.long	16,256
	.long	RTTI_XMDEC_TXMPATTERN
	.long	-1

.data
	.balign 4
.globl	RTTI_XMDEC_DEF17
RTTI_XMDEC_DEF17:
	.byte	12
	.ascii	"\000"
	.long	1068,128
	.long	RTTI_XMDEC_TXMINSTRUMENT
	.long	-1

.data
	.balign 4
.globl	RTTI_XMDEC_TXMFILE
RTTI_XMDEC_TXMFILE:
	.byte	13,7
	.ascii	"TXMFile"
	.long	141120,16
	.long	RTTI_XMDEC_DEF13
	.long	0
	.long	RTTI_XMDEC_DEF14
	.long	20
	.long	RTTI_SYSTEM_WORD
	.long	40
	.long	RTTI_SYSTEM_WORD
	.long	42
	.long	RTTI_SYSTEM_WORD
	.long	44
	.long	RTTI_SYSTEM_WORD
	.long	46
	.long	RTTI_SYSTEM_WORD
	.long	48
	.long	RTTI_SYSTEM_WORD
	.long	50
	.long	RTTI_SYSTEM_WORD
	.long	52
	.long	RTTI_SYSTEM_WORD
	.long	54
	.long	RTTI_SYSTEM_WORD
	.long	56
	.long	RTTI_XMDEC_DEF15
	.long	58
	.long	RTTI_XMDEC_DEF16
	.long	316
	.long	RTTI_XMDEC_DEF17
	.long	4412
	.long	RTTI_SYSTEM_BOOLEAN
	.long	141116
	.long	RTTI_SYSTEM_BOOLEAN
	.long	141117
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

