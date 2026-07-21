	.file "aiffdec.pas"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
AIFFDEC_READBE32$PBYTE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$24,%eax
	movl	-4(%ebp),%edx
	movzbl	1(%edx),%edx
	shll	$16,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movzbl	2(%edx),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movzbl	3(%edx),%edx
	orl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
AIFFDEC_READBE16$PBYTE$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbw	(%eax),%ax
	movzwl	%ax,%eax
	shll	$8,%eax
	movl	-4(%ebp),%edx
	movzbw	1(%edx),%dx
	movzwl	%dx,%edx
	orl	%edx,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
AIFFDEC_READBE16S$PBYTE$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	AIFFDEC_READBE16$PBYTE$$WORD
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
AIFFDEC_EXTENDED80TOLONGWORD$PBYTE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbw	(%eax),%ax
	andw	$127,%ax
	movzwl	%ax,%eax
	shll	$8,%eax
	movl	-4(%ebp),%edx
	movzbl	1(%edx),%edx
	orl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	subl	$16383,%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	leal	2(%eax),%eax
	call	AIFFDEC_READBE32$PBYTE$$LONGWORD
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$31,%eax
	jge	Lj27
	jmp	Lj28
Lj27:
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj31
Lj28:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj32
	jmp	Lj33
Lj32:
	movl	-12(%ebp),%ecx
	movl	$31,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	-16(%ebp),%eax
	shrl	%cl,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj36
Lj33:
	movl	$0,-8(%ebp)
Lj36:
Lj31:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
AIFFDEC_FOURCC$PBYTE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	AIFFDEC_READBE32$PBYTE$$LONGWORD
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
AIFFDEC_MULAWDEC$BYTE$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movb	%al,-4(%ebp)
	movb	-4(%ebp),%al
	notb	%al
	movb	%al,-4(%ebp)
	movb	-4(%ebp),%al
	andb	$128,%al
	movzbl	%al,%eax
	movl	%eax,-12(%ebp)
	movzbl	-4(%ebp),%eax
	shrl	$4,%eax
	andl	$7,%eax
	movl	%eax,-16(%ebp)
	movb	-4(%ebp),%al
	andb	$15,%al
	movzbl	%al,%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%ecx
	addl	$3,%ecx
	movl	-20(%ebp),%eax
	shll	%cl,%eax
	movl	-16(%ebp),%ecx
	addl	$3,%ecx
	movl	$1,%edx
	shll	%cl,%edx
	addl	%edx,%eax
	subl	$132,%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj57
	jmp	Lj58
Lj57:
	movl	-24(%ebp),%eax
	negl	%eax
	movw	%ax,-6(%ebp)
	jmp	Lj61
Lj58:
	movw	-24(%ebp),%ax
	movw	%ax,-6(%ebp)
Lj61:
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
AIFFDEC_ALAWDEC$BYTE$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movb	%al,-4(%ebp)
	movzbl	-4(%ebp),%eax
	xorl	$85,%eax
	movb	%al,-4(%ebp)
	movb	-4(%ebp),%al
	andb	$128,%al
	movzbl	%al,%eax
	movl	%eax,-12(%ebp)
	movzbl	-4(%ebp),%eax
	shrl	$4,%eax
	andl	$7,%eax
	movl	%eax,-16(%ebp)
	movb	-4(%ebp),%al
	andb	$15,%al
	movzbl	%al,%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj74
	jmp	Lj75
Lj74:
	movl	-20(%ebp),%eax
	shll	$4,%eax
	addl	$8,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj78
Lj75:
	movl	-20(%ebp),%eax
	shll	$4,%eax
	addl	$264,%eax
	movl	-16(%ebp),%ecx
	decl	%ecx
	shll	%cl,%eax
	movl	%eax,-24(%ebp)
Lj78:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj81
	jmp	Lj82
Lj81:
	movl	-24(%ebp),%eax
	negl	%eax
	movw	%ax,-6(%ebp)
	jmp	Lj85
Lj82:
	movw	-24(%ebp),%ax
	movw	%ax,-6(%ebp)
Lj85:
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	AIFFDEC_AIFFLOADMEM$PBYTE$LONGINT$TAIFFINFO$$BOOLEAN
AIFFDEC_AIFFLOADMEM$PBYTE$LONGINT$TAIFFINFO$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$100,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$796,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movb	$0,-69(%ebp)
	movb	$0,-70(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-60(%ebp)
	movb	$0,-89(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$12,%eax
	jl	Lj108
	jmp	Lj109
Lj108:
	jmp	Lj88
Lj109:
	movl	-4(%ebp),%eax
	call	AIFFDEC_FOURCC$PBYTE$$LONGWORD
	cmpl	$1179603533,%eax
	jne	Lj110
	jmp	Lj111
Lj110:
	jmp	Lj88
Lj111:
	movl	-4(%ebp),%eax
	leal	4(%eax),%eax
	call	AIFFDEC_READBE32$PBYTE$$LONGWORD
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	leal	8(%eax),%eax
	call	AIFFDEC_FOURCC$PBYTE$$LONGWORD
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$1095321158,%eax
	jne	Lj124
	jmp	Lj123
Lj124:
	movl	-28(%ebp),%eax
	cmpl	$1095321155,%eax
	jne	Lj122
	jmp	Lj123
Lj122:
	jmp	Lj88
Lj123:
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%edx
	cmpl	$1095321155,%edx
	seteb	20(%eax)
	movl	$12,-20(%ebp)
	jmp	Lj130
	.balign 4,0x90
Lj129:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	leal	(%edx,%eax,1),%eax
	call	AIFFDEC_FOURCC$PBYTE$$LONGWORD
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$4,%eax
	leal	(%edx,%eax,1),%eax
	call	AIFFDEC_READBE32$PBYTE$$LONGWORD
	movl	%eax,-36(%ebp)
	movl	-20(%ebp),%eax
	addl	$8,%eax
	movl	-36(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-40(%ebp)
	addl	$8,-20(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$1095650895,%eax
	jb	Lj143
	subl	$1095650895,%eax
	je	Lj148
	subl	$460281,%eax
	je	Lj147
	subl	$33159429,%eax
	je	Lj144
	subl	$183631864,%eax
	je	Lj146
	subl	$85065983,%eax
	je	Lj145
	jmp	Lj143
Lj144:
	movl	-36(%ebp),%eax
	cmpl	$18,%eax
	jb	Lj149
	jmp	Lj150
Lj149:
	movl	-40(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj130
Lj150:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	call	AIFFDEC_READBE16$PBYTE$$WORD
	movw	%ax,-42(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$2,%eax
	leal	(%edx,%eax,1),%eax
	call	AIFFDEC_READBE32$PBYTE$$LONGWORD
	movl	%eax,-48(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$6,%eax
	leal	(%edx,%eax,1),%eax
	call	AIFFDEC_READBE16$PBYTE$$WORD
	movw	%ax,-50(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$8,%eax
	leal	(%edx,%eax,1),%eax
	call	AIFFDEC_EXTENDED80TOLONGWORD$PBYTE$$LONGWORD
	movl	-12(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-12(%ebp),%eax
	movw	-42(%ebp),%dx
	movw	%dx,16(%eax)
	movl	-12(%ebp),%eax
	movw	-50(%ebp),%dx
	movw	%dx,18(%eax)
	movl	-12(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-12(%ebp),%eax
	movl	$1313820229,24(%eax)
	movl	-12(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj179
	jmp	Lj178
Lj179:
	movl	-36(%ebp),%eax
	cmpl	$22,%eax
	jae	Lj177
	jmp	Lj178
Lj177:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$18,%eax
	leal	(%edx,%eax,1),%eax
	call	AIFFDEC_FOURCC$PBYTE$$LONGWORD
	movl	-12(%ebp),%edx
	movl	%eax,24(%edx)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	$1936684916,%eax
	je	Lj184
	jmp	Lj185
Lj184:
	movb	$1,-89(%ebp)
Lj185:
Lj178:
	movb	$1,-69(%ebp)
	jmp	Lj142
Lj145:
	movl	-36(%ebp),%eax
	cmpl	$8,%eax
	jb	Lj190
	jmp	Lj191
Lj190:
	movl	-40(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj130
Lj191:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	leal	(%edx,%eax,1),%eax
	call	AIFFDEC_READBE32$PBYTE$$LONGWORD
	movl	%eax,-64(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$4,%eax
	leal	(%edx,%eax,1),%eax
	call	AIFFDEC_READBE32$PBYTE$$LONGWORD
	movl	%eax,-68(%ebp)
	movl	-20(%ebp),%edx
	addl	$8,%edx
	movl	-64(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-56(%ebp)
	movl	-36(%ebp),%eax
	subl	$8,%eax
	movl	-64(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-60(%ebp)
	movb	$1,-70(%ebp)
	jmp	Lj142
Lj146:
	movl	-36(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	-88(%ebp),%eax
	cmpl	$255,%eax
	jg	Lj210
	jmp	Lj211
Lj210:
	movl	$255,-88(%ebp)
Lj211:
	movl	-88(%ebp),%ecx
	movl	-12(%ebp),%eax
	leal	28(%eax),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
	movl	-88(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj220
	jmp	Lj221
Lj220:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	movl	-88(%ebp),%ecx
	movl	-12(%ebp),%edx
	leal	29(%edx),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj221:
	jmp	Lj142
Lj147:
	movl	-36(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	-88(%ebp),%eax
	cmpl	$255,%eax
	jg	Lj230
	jmp	Lj231
Lj230:
	movl	$255,-88(%ebp)
Lj231:
	movl	-88(%ebp),%ecx
	movl	-12(%ebp),%eax
	leal	284(%eax),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
	movl	-88(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj240
	jmp	Lj241
Lj240:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	movl	-88(%ebp),%ecx
	movl	-12(%ebp),%edx
	leal	285(%edx),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj241:
	jmp	Lj142
Lj148:
	movl	-36(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	-88(%ebp),%eax
	cmpl	$255,%eax
	jg	Lj250
	jmp	Lj251
Lj250:
	movl	$255,-88(%ebp)
Lj251:
	movl	-88(%ebp),%ecx
	movl	-12(%ebp),%eax
	leal	540(%eax),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
	movl	-88(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj260
	jmp	Lj261
Lj260:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	leal	(%edx,%eax,1),%eax
	movl	-88(%ebp),%ecx
	movl	-12(%ebp),%edx
	leal	541(%edx),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj261:
	jmp	Lj142
Lj143:
Lj142:
	movl	-40(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-36(%ebp),%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj270
	jmp	Lj271
Lj270:
	incl	-20(%ebp)
Lj271:
Lj130:
	movl	-20(%ebp),%eax
	addl	$8,%eax
	cmpl	-8(%ebp),%eax
	jle	Lj129
	jmp	Lj131
Lj131:
	movb	-69(%ebp),%al
	testb	%al,%al
	je	Lj272
	jmp	Lj273
Lj272:
	jmp	Lj88
Lj273:
	movb	-70(%ebp),%al
	testb	%al,%al
	je	Lj274
	jmp	Lj275
Lj274:
	jmp	Lj88
Lj275:
	movl	-12(%ebp),%eax
	movzwl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj276
	jmp	Lj278
Lj278:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj276
	jmp	Lj277
Lj276:
	jmp	Lj88
Lj277:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj279
	jmp	Lj280
Lj279:
	jmp	Lj88
Lj280:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movzwl	16(%eax),%ecx
	movl	8(%edx),%eax
	imull	%ecx,%eax
	movl	%eax,-80(%ebp)
	movl	-80(%ebp),%eax
	shll	$1,%eax
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	$1313820229,%eax
	jb	Lj290
	subl	$1313820229,%eax
	je	Lj291
	subl	$320672562,%eax
	je	Lj294
	subl	$302192125,%eax
	je	Lj292
	subl	$17299455,%eax
	je	Lj291
	subl	$16052740,%eax
	je	Lj293
	jmp	Lj290
Lj291:
	movl	-12(%ebp),%eax
	movw	18(%eax),%ax
	cmpw	$8,%ax
	jb	Lj296
	subw	$8,%ax
	je	Lj297
	subw	$8,%ax
	je	Lj298
	subw	$8,%ax
	je	Lj299
	subw	$8,%ax
	je	Lj300
	jmp	Lj296
Lj297:
	movl	-80(%ebp),%eax
	decl	%eax
	movl	$0,-76(%ebp)
	cmpl	-76(%ebp),%eax
	jl	Lj302
	decl	-76(%ebp)
	.balign 4,0x90
Lj303:
	incl	-76(%ebp)
	movl	-4(%ebp),%ebx
	movl	-56(%ebp),%edx
	movl	-76(%ebp),%ecx
	addl	%ecx,%edx
	movsbw	(%ebx,%edx,1),%dx
	movswl	%dx,%edx
	shll	$8,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ebx
	movl	-76(%ebp),%ecx
	movw	%dx,(%ebx,%ecx,2)
	cmpl	-76(%ebp),%eax
	jg	Lj303
Lj302:
	jmp	Lj295
Lj298:
	movl	-80(%ebp),%ebx
	decl	%ebx
	movl	$0,-76(%ebp)
	cmpl	-76(%ebp),%ebx
	jl	Lj307
	decl	-76(%ebp)
	.balign 4,0x90
Lj308:
	incl	-76(%ebp)
	movl	-4(%ebp),%ecx
	movl	-76(%ebp),%eax
	shll	$1,%eax
	movl	-56(%ebp),%edx
	addl	%edx,%eax
	leal	(%ecx,%eax,1),%eax
	call	AIFFDEC_READBE16S$PBYTE$$SMALLINT
	movl	-12(%ebp),%edx
	movl	(%edx),%ecx
	movl	-76(%ebp),%edx
	movw	%ax,(%ecx,%edx,2)
	cmpl	-76(%ebp),%ebx
	jg	Lj308
Lj307:
	jmp	Lj295
Lj299:
	movl	-80(%ebp),%ebx
	decl	%ebx
	movl	$0,-76(%ebp)
	cmpl	-76(%ebp),%ebx
	jl	Lj314
	decl	-76(%ebp)
	.balign 4,0x90
Lj315:
	incl	-76(%ebp)
	movl	-4(%ebp),%ecx
	movl	-76(%ebp),%eax
	imull	$3,%eax
	movl	-56(%ebp),%edx
	addl	%edx,%eax
	leal	(%ecx,%eax,1),%eax
	call	AIFFDEC_READBE16$PBYTE$$WORD
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	movl	-76(%ebp),%ecx
	movw	%ax,(%edx,%ecx,2)
	cmpl	-76(%ebp),%ebx
	jg	Lj315
Lj314:
	jmp	Lj295
Lj300:
	movl	-80(%ebp),%ebx
	decl	%ebx
	movl	$0,-76(%ebp)
	cmpl	-76(%ebp),%ebx
	jl	Lj321
	decl	-76(%ebp)
	.balign 4,0x90
Lj322:
	incl	-76(%ebp)
	movl	-4(%ebp),%ecx
	movl	-76(%ebp),%eax
	shll	$2,%eax
	movl	-56(%ebp),%edx
	addl	%edx,%eax
	leal	(%ecx,%eax,1),%eax
	call	AIFFDEC_READBE32$PBYTE$$LONGWORD
	shrl	$16,%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	movl	-76(%ebp),%ecx
	movw	%ax,(%edx,%ecx,2)
	cmpl	-76(%ebp),%ebx
	jg	Lj322
Lj321:
	jmp	Lj295
Lj296:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj88
Lj295:
	jmp	Lj289
Lj292:
	movl	-12(%ebp),%eax
	movw	18(%eax),%ax
	cmpw	$8,%ax
	jb	Lj332
	subw	$8,%ax
	je	Lj333
	subw	$8,%ax
	je	Lj334
	subw	$8,%ax
	je	Lj335
	subw	$8,%ax
	je	Lj336
	jmp	Lj332
Lj333:
	movl	-80(%ebp),%eax
	decl	%eax
	movl	$0,-76(%ebp)
	cmpl	-76(%ebp),%eax
	jl	Lj338
	decl	-76(%ebp)
	.balign 4,0x90
Lj339:
	incl	-76(%ebp)
	movl	-4(%ebp),%ebx
	movl	-56(%ebp),%edx
	movl	-76(%ebp),%ecx
	addl	%ecx,%edx
	movsbw	(%ebx,%edx,1),%dx
	movswl	%dx,%edx
	shll	$8,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	-76(%ebp),%ebx
	movw	%dx,(%ecx,%ebx,2)
	cmpl	-76(%ebp),%eax
	jg	Lj339
Lj338:
	jmp	Lj331
Lj334:
	movl	-80(%ebp),%eax
	decl	%eax
	movl	$0,-76(%ebp)
	cmpl	-76(%ebp),%eax
	jl	Lj343
	decl	-76(%ebp)
	.balign 4,0x90
Lj344:
	incl	-76(%ebp)
	movl	-4(%ebp),%ebx
	movl	-76(%ebp),%edx
	shll	$1,%edx
	movl	-56(%ebp),%ecx
	addl	%ecx,%edx
	incl	%edx
	movzbw	(%ebx,%edx,1),%dx
	movzwl	%dx,%edx
	shll	$8,%edx
	movl	-4(%ebp),%ebx
	movl	-76(%ebp),%ecx
	shll	$1,%ecx
	movl	-56(%ebp),%esi
	addl	%esi,%ecx
	movzbw	(%ebx,%ecx,1),%cx
	movzwl	%cx,%ecx
	orl	%ecx,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	-76(%ebp),%ebx
	movw	%dx,(%ecx,%ebx,2)
	cmpl	-76(%ebp),%eax
	jg	Lj344
Lj343:
	jmp	Lj331
Lj335:
	movl	-80(%ebp),%eax
	decl	%eax
	movl	$0,-76(%ebp)
	cmpl	-76(%ebp),%eax
	jl	Lj348
	decl	-76(%ebp)
	.balign 4,0x90
Lj349:
	incl	-76(%ebp)
	movl	-4(%ebp),%ebx
	movl	-76(%ebp),%edx
	imull	$3,%edx
	movl	-56(%ebp),%ecx
	addl	%ecx,%edx
	incl	%edx
	movzbw	(%ebx,%edx,1),%dx
	movzwl	%dx,%edx
	movl	-4(%ebp),%esi
	movl	-76(%ebp),%ecx
	imull	$3,%ecx
	movl	-56(%ebp),%ebx
	addl	%ebx,%ecx
	addl	$2,%ecx
	movzbw	(%esi,%ecx,1),%cx
	movzwl	%cx,%ecx
	shll	$8,%ecx
	orl	%ecx,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ebx
	movl	-76(%ebp),%ecx
	movw	%dx,(%ebx,%ecx,2)
	cmpl	-76(%ebp),%eax
	jg	Lj349
Lj348:
	jmp	Lj331
Lj336:
	movl	-80(%ebp),%eax
	decl	%eax
	movl	$0,-76(%ebp)
	cmpl	-76(%ebp),%eax
	jl	Lj353
	decl	-76(%ebp)
	.balign 4,0x90
Lj354:
	incl	-76(%ebp)
	movl	-76(%ebp),%edx
	shll	$2,%edx
	movl	-56(%ebp),%ecx
	addl	%ecx,%edx
	movl	%edx,-84(%ebp)
	movl	-4(%ebp),%ecx
	movl	-84(%ebp),%edx
	addl	$3,%edx
	movzbw	(%ecx,%edx,1),%dx
	movzwl	%dx,%edx
	shll	$8,%edx
	movl	-4(%ebp),%ebx
	movl	-84(%ebp),%ecx
	addl	$2,%ecx
	movzbw	(%ebx,%ecx,1),%cx
	movzwl	%cx,%ecx
	orl	%ecx,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	-76(%ebp),%ebx
	movw	%dx,(%ecx,%ebx,2)
	cmpl	-76(%ebp),%eax
	jg	Lj354
Lj353:
	jmp	Lj331
Lj332:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj88
Lj331:
	jmp	Lj289
Lj293:
	movl	-80(%ebp),%ebx
	decl	%ebx
	movl	$0,-76(%ebp)
	cmpl	-76(%ebp),%ebx
	jl	Lj364
	decl	-76(%ebp)
	.balign 4,0x90
Lj365:
	incl	-76(%ebp)
	movl	-4(%ebp),%ecx
	movl	-56(%ebp),%eax
	movl	-76(%ebp),%edx
	addl	%edx,%eax
	movb	(%ecx,%eax,1),%al
	call	AIFFDEC_MULAWDEC$BYTE$$SMALLINT
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	movl	-76(%ebp),%ecx
	movw	%ax,(%edx,%ecx,2)
	cmpl	-76(%ebp),%ebx
	jg	Lj365
Lj364:
	jmp	Lj289
Lj294:
	movl	-80(%ebp),%ebx
	decl	%ebx
	movl	$0,-76(%ebp)
	cmpl	-76(%ebp),%ebx
	jl	Lj371
	decl	-76(%ebp)
	.balign 4,0x90
Lj372:
	incl	-76(%ebp)
	movl	-4(%ebp),%ecx
	movl	-56(%ebp),%eax
	movl	-76(%ebp),%edx
	addl	%edx,%eax
	movb	(%ecx,%eax,1),%al
	call	AIFFDEC_ALAWDEC$BYTE$$SMALLINT
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	movl	-76(%ebp),%ecx
	movw	%ax,(%edx,%ecx,2)
	cmpl	-76(%ebp),%ebx
	jg	Lj372
Lj371:
	jmp	Lj289
Lj290:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj88
Lj289:
	movl	-12(%ebp),%eax
	movw	$16,18(%eax)
	movb	$1,-13(%ebp)
Lj88:
	movb	-13(%ebp),%al
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	AIFFDEC_AIFFLOADFILE$SHORTSTRING$TAIFFINFO$$BOOLEAN
AIFFDEC_AIFFLOADFILE$SHORTSTRING$TAIFFINFO$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$360,%esp
	movl	%ebx,-360(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$796,%edx
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
	jne	Lj403
	jmp	Lj404
Lj403:
	jmp	Lj385
Lj404:
	leal	-344(%ebp),%eax
	call	SYSTEM_FILESIZE$file$$INT64
	movl	%eax,%ebx
	call	FPC_IOCHECK
	movl	%ebx,-352(%ebp)
	movl	-352(%ebp),%eax
	cmpl	$12,%eax
	jl	Lj409
	jmp	Lj410
Lj409:
	leal	-344(%ebp),%eax
	call	SYSTEM_CLOSE$file
	call	FPC_IOCHECK
	jmp	Lj385
Lj410:
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
	jne	Lj427
	jmp	Lj428
Lj427:
	movl	-348(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	jmp	Lj385
Lj428:
	movl	-8(%ebp),%ecx
	movl	-352(%ebp),%edx
	movl	-348(%ebp),%eax
	call	AIFFDEC_AIFFLOADMEM$PBYTE$LONGINT$TAIFFINFO$$BOOLEAN
	movb	%al,-9(%ebp)
	movl	-348(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj385:
	movb	-9(%ebp),%al
	movl	-360(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	AIFFDEC_AIFFFREE$TAIFFINFO
AIFFDEC_AIFFFREE$TAIFFINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj443
	jmp	Lj444
Lj443:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj444:
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	THREADVARLIST_AIFFDEC
THREADVARLIST_AIFFDEC:
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
.globl	INIT_AIFFDEC_TAIFFINFO
INIT_AIFFDEC_TAIFFINFO:
	.byte	13,9
	.ascii	"TAIFFInfo"
	.long	796,0

.data
	.balign 4
.globl	RTTI_AIFFDEC_TAIFFINFO
RTTI_AIFFDEC_TAIFFINFO:
	.byte	13,9
	.ascii	"TAIFFInfo"
	.long	796,11
	.long	RTTI_SYSTEM_PSMALLINT
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_SYSTEM_LONGWORD
	.long	12
	.long	RTTI_SYSTEM_WORD
	.long	16
	.long	RTTI_SYSTEM_WORD
	.long	18
	.long	RTTI_SYSTEM_BOOLEAN
	.long	20
	.long	RTTI_SYSTEM_LONGWORD
	.long	24
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	28
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	284
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	540
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

