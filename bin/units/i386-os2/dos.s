	.file "dos.pas"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
DOS_DODIRSEPARATORS$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	$1,-8(%ebp)
	cmpl	-8(%ebp),%eax
	jl	Lj6
	decl	-8(%ebp)
	.balign 4,0x90
Lj7:
	incl	-8(%ebp)
	movl	-4(%ebp),%ecx
	movzbl	-8(%ebp),%edx
	movzbl	(%ecx,%edx,1),%edx
	btl	%edx,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj8
	jmp	Lj9
Lj8:
	movl	-4(%ebp),%edx
	movzbl	-8(%ebp),%ecx
	movb	$92,(%edx,%ecx,1)
Lj9:
	cmpl	-8(%ebp),%eax
	jg	Lj7
Lj6:
	leave
	ret

.text
	.balign 4,0x90
DOS_DODIRSEPARATORS$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%eax
	jl	Lj15
	decl	-8(%ebp)
	.balign 4,0x90
Lj16:
	incl	-8(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movzbl	(%ecx,%edx,1),%edx
	btl	%edx,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj19
	jmp	Lj20
Lj19:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movb	$92,(%edx,%ecx,1)
Lj20:
	cmpl	-8(%ebp),%eax
	jg	Lj16
Lj15:
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_DOSEXITCODE$$WORD
DOS_DOSEXITCODE$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$2,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj27
	movl	U_DOS_LASTDOSEXITCODE,%eax
	call	*%edx
	jmp	Lj28
Lj27:
	movl	$U_DOS_LASTDOSEXITCODE+4,%eax
Lj28:
	movl	(%eax),%eax
	cmpl	$65535,%eax
	jg	Lj25
	jmp	Lj26
Lj25:
	movw	$65535,-2(%ebp)
	jmp	Lj31
Lj26:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj34
	movl	U_DOS_LASTDOSEXITCODE,%eax
	call	*%edx
	jmp	Lj35
Lj34:
	movl	$U_DOS_LASTDOSEXITCODE+4,%eax
Lj35:
	movl	(%eax),%eax
	andl	$65535,%eax
	movw	%ax,-2(%ebp)
Lj31:
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_GETMSCOUNT$$INT64
DOS_GETMSCOUNT$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	leal	-14(%ebp),%ecx
	leal	-12(%ebp),%edx
	leal	-10(%ebp),%eax
	call	DOS_GETDATE$WORD$WORD$WORD$WORD
	leal	-24(%ebp),%eax
	pushl	%eax
	leal	-22(%ebp),%ecx
	leal	-20(%ebp),%edx
	leal	-18(%ebp),%eax
	call	DOS_GETTIME$WORD$WORD$WORD$WORD
	movzwl	-24(%ebp),%edi
	imull	$10,%edi
	movzwl	-22(%ebp),%eax
	imull	$1000,%eax
	addl	%eax,%edi
	movl	%edi,%ebx
	sarl	$31,%ebx
	movzwl	-20(%ebp),%edx
	movl	$60,%eax
	mull	%edx
	movl	%eax,%edx
	movl	$1000,%eax
	mull	%edx
	movl	$0,%edx
	addl	%eax,%edi
	adcl	%edx,%ebx
	movzwl	-18(%ebp),%edx
	movl	$60,%eax
	mull	%edx
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$60
	movl	$0,%eax
	call	fpc_mul_int64
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$1000
	movl	$0,%eax
	call	fpc_mul_int64
	addl	%eax,%edi
	adcl	%edx,%ebx
	movzwl	-14(%ebp),%esi
	movl	%ebp,%eax
	call	DOS_GETMSCOUNT$$INT64_LEAP$$BOOLEAN
	movzbl	%al,%eax
	imull	$48,%eax
	movzwl	-12(%ebp),%edx
	movl	TC_DOS_GETMSCOUNT$$INT64_DAYTABLE-4(%eax,%edx,4),%eax
	addl	%eax,%esi
	movzwl	-10(%ebp),%ecx
	movl	$1374389535,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$7,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	imull	$97,%edx
	addl	%edx,%esi
	movzwl	-10(%ebp),%eax
	cltd
	movl	$400,%ecx
	idivl	%ecx
	movl	%edx,%ecx
	movl	$1374389535,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	imull	$24,%edx
	addl	%edx,%esi
	movzwl	-10(%ebp),%eax
	cltd
	movl	$100,%ecx
	idivl	%ecx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$3,%eax
	addl	%eax,%edx
	sarl	$2,%edx
	addl	%edx,%esi
	movl	$24,%eax
	imull	%esi
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$60
	movl	$0,%eax
	call	fpc_mul_int64
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$60
	movl	$0,%eax
	call	fpc_mul_int64
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$1000
	movl	$0,%eax
	call	fpc_mul_int64
	addl	%eax,%edi
	adcl	%edx,%ebx
	movzwl	-10(%ebp),%edx
	movl	$365,%eax
	mull	%edx
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$24
	movl	$0,%eax
	call	fpc_mul_int64
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$60
	movl	$0,%eax
	call	fpc_mul_int64
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$60
	movl	$0,%eax
	call	fpc_mul_int64
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$1000
	movl	$0,%eax
	call	fpc_mul_int64
	addl	%eax,%edi
	adcl	%edx,%ebx
	movl	%edi,-8(%ebp)
	movl	%ebx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
DOS_GETMSCOUNT$$INT64_LEAP$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	-10(%eax),%eax
	cltd
	movl	$400,%ecx
	idivl	%ecx
	testl	%edx,%edx
	je	Lj114
	jmp	Lj115
Lj114:
	movb	$1,-5(%ebp)
	jmp	Lj118
Lj115:
	movl	-4(%ebp),%eax
	movzwl	-10(%eax),%eax
	cltd
	movl	$100,%ecx
	idivl	%ecx
	testl	%edx,%edx
	je	Lj119
	jmp	Lj121
Lj121:
	movl	-4(%ebp),%eax
	movzwl	-10(%eax),%eax
	cltd
	movl	$4,%ecx
	idivl	%ecx
	testl	%edx,%edx
	jne	Lj119
	jmp	Lj120
Lj119:
	movb	$0,-5(%ebp)
	jmp	Lj124
Lj120:
	movb	$1,-5(%ebp)
Lj124:
Lj118:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_GETCBREAK$BOOLEAN
DOS_GETCBREAK$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_SETCBREAK$BOOLEAN
DOS_SETCBREAK$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movb	%al,-4(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_MSDOS$REGISTERS
DOS_MSDOS$REGISTERS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movb	$33,%al
	call	DOS_INTR$BYTE$REGISTERS
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_SWAPVECTORS
DOS_SWAPVECTORS:
	pushl	%ebp
	movl	%esp,%ebp
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_GETINTVEC$BYTE$POINTER
DOS_GETINTVEC$BYTE$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_SETINTVEC$BYTE$POINTER
DOS_SETINTVEC$BYTE$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_KEEP$WORD
DOS_KEEP$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movw	%ax,-4(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_GETSHORTNAME$SHORTSTRING$$BOOLEAN
DOS_GETSHORTNAME$SHORTSTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movb	$1,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_GETLONGNAME$SHORTSTRING$$BOOLEAN
DOS_GETLONGNAME$SHORTSTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movb	$1,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_PACKTIME$DATETIME$LONGINT
DOS_PACKTIME$DATETIME$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$-1980,(%eax)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$127,%ax
	movzwl	%ax,%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	shll	$4,%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movzwl	2(%eax),%eax
	movl	(%edx),%edx
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	shll	$5,%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movzwl	4(%eax),%eax
	movl	(%edx),%edx
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	shll	$16,%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movzwl	6(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	shll	$6,%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movzwl	8(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	shll	$5,%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movzwl	10(%eax),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	andl	$65535,%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_UNPACKTIME$LONGINT$DATETIME
DOS_UNPACKTIME$LONGINT$DATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	andl	$31,%eax
	shll	$1,%eax
	movl	-8(%ebp),%edx
	movw	%ax,10(%edx)
	movl	-4(%ebp),%eax
	shrl	$5,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$63,%eax
	movl	-8(%ebp),%edx
	movw	%ax,8(%edx)
	movl	-4(%ebp),%eax
	shrl	$6,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$31,%eax
	movl	-8(%ebp),%edx
	movw	%ax,6(%edx)
	movl	-4(%ebp),%eax
	shrl	$5,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$31,%eax
	movl	-8(%ebp),%edx
	movw	%ax,4(%edx)
	movl	-4(%ebp),%eax
	shrl	$5,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$15,%eax
	movl	-8(%ebp),%edx
	movw	%ax,2(%edx)
	movl	-4(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	addl	$1980,%eax
	movl	-8(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_FSPLIT$SHORTSTRING$SHORTSTRING$SHORTSTRING$SHORTSTRING
DOS_FSPLIT$SHORTSTRING$SHORTSTRING$SHORTSTRING$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$532,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	leal	-276(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	leal	-276(%ebp),%eax
	call	DOS_DODIRSEPARATORS$SHORTSTRING
	movzbl	-276(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj216
	.balign 4,0x90
Lj215:
	decl	-16(%ebp)
Lj216:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj219
	jmp	Lj217
Lj219:
	movzbl	-16(%ebp),%eax
	movb	-276(%ebp,%eax,1),%al
	cmpb	$92,%al
	jne	Lj218
	jmp	Lj217
Lj218:
	movzbl	-16(%ebp),%eax
	movb	-276(%ebp,%eax,1),%al
	cmpb	$58,%al
	jne	Lj215
	jmp	Lj217
Lj217:
	movzbl	-276(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj223
	.balign 4,0x90
Lj222:
	decl	-20(%ebp)
Lj223:
	movl	-20(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj225
	jmp	Lj224
Lj225:
	movzbl	-20(%ebp),%eax
	movb	-276(%ebp,%eax,1),%al
	cmpb	$46,%al
	jne	Lj222
	jmp	Lj224
Lj224:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj226
	jmp	Lj227
Lj226:
	movzbl	-276(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj230
Lj227:
	movzbl	-20(%ebp),%eax
	movb	-276(%ebp,%eax,1),%al
	cmpb	$46,%al
	jne	Lj231
	jmp	Lj232
Lj231:
	movzbl	-276(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
Lj232:
Lj230:
	leal	-532(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%ecx
	leal	-276(%ebp),%eax
	movl	$1,%edx
	call	fpc_shortstr_copy
	leal	-532(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	leal	-532(%ebp),%eax
	pushl	%eax
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	decl	%ecx
	movl	-16(%ebp),%edx
	incl	%edx
	leal	-276(%ebp),%eax
	call	fpc_shortstr_copy
	leal	-532(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	leal	-532(%ebp),%eax
	pushl	%eax
	movzbl	-276(%ebp),%ecx
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	incl	%ecx
	movl	-20(%ebp),%edx
	leal	-276(%ebp),%eax
	call	fpc_shortstr_copy
	leal	-532(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	leave
	ret	$4

.text
	.balign 4,0x90
DOS_GETDIRIO$BYTE$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$10,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj281
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj282
Lj281:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj282:
	movw	(%eax),%ax
	movw	%ax,-10(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj285
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj286
Lj285:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj286:
	movw	$0,(%eax)
	movl	-8(%ebp),%edx
	movb	-4(%ebp),%al
	movl	$255,%ecx
	call	SYSTEM_GETDIR$BYTE$OPENSTRING
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj295
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj296
Lj295:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj296:
	movw	-10(%ebp),%dx
	movw	%dx,(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_FEXPAND$SHORTSTRING$$SHORTSTRING
DOS_FEXPAND$SHORTSTRING$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1564,%esp
	movl	%ebx,-1564(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-13(%ebp)
	cmpb	$0,TC_SYSTEM_FILENAMECASESENSITIVE
	jne	Lj301
	jmp	Lj302
Lj301:
	movl	-4(%ebp),%ecx
	leal	-525(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	jmp	Lj309
Lj302:
	leal	-1048(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING
	leal	-1048(%ebp),%ecx
	leal	-525(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
Lj309:
	movzbl	-525(%ebp),%eax
	movl	$1,-788(%ebp)
	cmpl	-788(%ebp),%eax
	jl	Lj321
	decl	-788(%ebp)
	.balign 4,0x90
Lj322:
	incl	-788(%ebp)
	movzbl	-788(%ebp),%edx
	movzbl	-525(%ebp,%edx,1),%edx
	btl	%edx,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj323
	jmp	Lj324
Lj323:
	movzbl	-788(%ebp),%edx
	movb	$92,-525(%ebp,%edx,1)
Lj324:
	cmpl	-788(%ebp),%eax
	jg	Lj322
Lj321:
	movl	$3,-12(%ebp)
	movzbl	-525(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj333
	jmp	Lj330
Lj333:
	movzbl	-524(%ebp),%eax
	subl	$65,%eax
	cmpl	$26,%eax
	jb	Lj334
	subl	$32,%eax
	cmpl	$26,%eax
	jb	Lj334
Lj334:
	jc	Lj332
	jmp	Lj330
Lj332:
	movb	-523(%ebp),%al
	cmpb	$58,%al
	je	Lj331
	jmp	Lj330
Lj331:
	jmp	Lj329
Lj329:
	movzbl	-524(%ebp),%eax
	subl	$97,%eax
	cmpl	$26,%eax
	jb	Lj337
Lj337:
	jc	Lj335
	jmp	Lj336
Lj335:
	movzbl	-524(%ebp),%eax
	andl	$-33,%eax
	movb	%al,-524(%ebp)
Lj336:
	movzbl	-524(%ebp),%eax
	subl	$65,%eax
	incl	%eax
	leal	-269(%ebp),%edx
	call	DOS_GETDIRIO$BYTE$SHORTSTRING
	movzbl	-525(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	cmpl	%eax,%edx
	je	Lj344
	jmp	Lj345
Lj344:
	leal	-269(%ebp),%ecx
	leal	-525(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	jmp	Lj352
Lj345:
	movzbl	-12(%ebp),%eax
	movb	-525(%ebp,%eax,1),%al
	cmpb	$92,%al
	jne	Lj353
	jmp	Lj354
Lj353:
	movb	-524(%ebp),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	movb	%al,%bl
	movb	-268(%ebp),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	cmpb	%al,%bl
	je	Lj355
	jmp	Lj356
Lj355:
	movzbl	-269(%ebp),%eax
	movb	-269(%ebp,%eax,1),%al
	cmpb	$92,%al
	je	Lj361
	jmp	Lj362
Lj361:
	movzbl	-269(%ebp),%ecx
	decl	%ecx
	leal	-269(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
Lj362:
	pushl	$2
	leal	-269(%ebp),%eax
	movl	%eax,-804(%ebp)
	movl	$_$DOS$_Ld1,%eax
	movl	%eax,-800(%ebp)
	leal	-1304(%ebp),%eax
	pushl	%eax
	movzbl	-525(%ebp),%ecx
	movl	-12(%ebp),%eax
	subl	%eax,%ecx
	incl	%ecx
	movl	-12(%ebp),%edx
	leal	-525(%ebp),%eax
	call	fpc_shortstr_copy
	leal	-1304(%ebp),%eax
	movl	%eax,-796(%ebp)
	leal	-804(%ebp),%ecx
	leal	-525(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat_multi
	jmp	Lj385
Lj356:
	pushl	$3
	movzbl	-524(%ebp),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-1064(%ebp)
	leal	-1064(%ebp),%eax
	movl	%eax,-808(%ebp)
	movl	$_$DOS$_Ld2,%eax
	movl	%eax,-804(%ebp)
	movl	$_$DOS$_Ld1,%eax
	movl	%eax,-800(%ebp)
	leal	-1560(%ebp),%eax
	pushl	%eax
	movzbl	-525(%ebp),%ecx
	movl	-12(%ebp),%eax
	subl	%eax,%ecx
	incl	%ecx
	movl	-12(%ebp),%edx
	leal	-525(%ebp),%eax
	call	fpc_shortstr_copy
	leal	-1560(%ebp),%eax
	movl	%eax,-796(%ebp)
	leal	-808(%ebp),%ecx
	leal	-525(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat_multi
Lj385:
Lj354:
Lj352:
	jmp	Lj402
Lj330:
	leal	-269(%ebp),%edx
	movb	$0,%al
	call	DOS_GETDIRIO$BYTE$SHORTSTRING
	movzbl	-525(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj409
	jmp	Lj408
Lj409:
	movb	-524(%ebp),%al
	cmpb	$92,%al
	je	Lj407
	jmp	Lj408
Lj407:
	movzbl	-525(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj413
	jmp	Lj411
Lj413:
	movb	-523(%ebp),%al
	cmpb	$92,%al
	je	Lj412
	jmp	Lj411
Lj412:
	jmp	Lj410
Lj410:
	movl	$3,-12(%ebp)
	jmp	Lj417
	.balign 4,0x90
Lj416:
	incl	-12(%ebp)
Lj417:
	movzbl	-525(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jge	Lj419
	jmp	Lj418
Lj419:
	movzbl	-12(%ebp),%eax
	movb	-525(%ebp,%eax,1),%al
	cmpb	$92,%al
	jne	Lj416
	jmp	Lj418
Lj418:
	movzbl	-525(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj420
	jmp	Lj421
Lj420:
	movzbl	-525(%ebp),%eax
	cmpl	$2,%eax
	je	Lj422
	jmp	Lj423
Lj422:
	movl	$2,-12(%ebp)
	jmp	Lj426
Lj423:
	pushl	$_$DOS$_Ld1
	leal	-525(%ebp),%ecx
	leal	-525(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
Lj426:
	jmp	Lj435
Lj421:
	movzbl	-525(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj436
	jmp	Lj437
Lj436:
	movb	$1,-13(%ebp)
	.balign 4,0x90
Lj440:
	incl	-12(%ebp)
	movzbl	-525(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj442
	jmp	Lj443
Lj443:
	movzbl	-12(%ebp),%eax
	movb	-525(%ebp,%eax,1),%al
	cmpb	$92,%al
	je	Lj442
	jmp	Lj440
Lj442:
Lj437:
Lj435:
	jmp	Lj444
Lj411:
	pushl	$2
	movzbl	-268(%ebp),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-1060(%ebp)
	leal	-1060(%ebp),%eax
	movl	%eax,-804(%ebp)
	movl	$_$DOS$_Ld2,%eax
	movl	%eax,-800(%ebp)
	leal	-525(%ebp),%eax
	movl	%eax,-796(%ebp)
	leal	-804(%ebp),%ecx
	leal	-525(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat_multi
Lj444:
	jmp	Lj453
Lj408:
	movzbl	-269(%ebp),%eax
	cmpl	-12(%ebp),%eax
	je	Lj454
	jmp	Lj455
Lj454:
	leal	-525(%ebp),%eax
	pushl	%eax
	leal	-269(%ebp),%ecx
	leal	-525(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	jmp	Lj464
Lj455:
	movzbl	-525(%ebp),%eax
	testl	%eax,%eax
	je	Lj465
	jmp	Lj466
Lj465:
	pushl	$_$DOS$_Ld1
	leal	-269(%ebp),%ecx
	leal	-525(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	jmp	Lj475
Lj466:
	pushl	$2
	leal	-269(%ebp),%eax
	movl	%eax,-804(%ebp)
	movl	$_$DOS$_Ld1,%eax
	movl	%eax,-800(%ebp)
	leal	-525(%ebp),%eax
	movl	%eax,-796(%ebp)
	leal	-804(%ebp),%ecx
	leal	-525(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat_multi
Lj475:
Lj464:
Lj453:
Lj402:
	leal	-1048(%ebp),%eax
	pushl	%eax
	movzbl	-525(%ebp),%ecx
	movl	-12(%ebp),%eax
	subl	%eax,%ecx
	movl	-12(%ebp),%edx
	incl	%edx
	leal	-525(%ebp),%eax
	call	fpc_shortstr_copy
	leal	-1048(%ebp),%ecx
	leal	-781(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	leal	-781(%ebp),%edx
	movl	$_$DOS$_Ld3,%eax
	call	SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT
	movl	%eax,-788(%ebp)
	jmp	Lj505
	.balign 4,0x90
Lj504:
	pushl	$2
	movl	-788(%ebp),%ecx
	leal	-781(%ebp),%eax
	movl	$255,%edx
	call	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	leal	-781(%ebp),%edx
	movl	$_$DOS$_Ld3,%eax
	call	SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT
	movl	%eax,-788(%ebp)
Lj505:
	movl	-788(%ebp),%eax
	testl	%eax,%eax
	jne	Lj504
	jmp	Lj506
Lj506:
	leal	-781(%ebp),%edx
	movl	$_$DOS$_Ld4,%eax
	call	SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT
	movl	%eax,-788(%ebp)
	jmp	Lj528
	.balign 4,0x90
Lj527:
	movl	-788(%ebp),%eax
	decl	%eax
	movl	%eax,-792(%ebp)
	jmp	Lj533
	.balign 4,0x90
Lj532:
	decl	-792(%ebp)
Lj533:
	movl	-792(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj535
	jmp	Lj534
Lj535:
	movzbl	-792(%ebp),%eax
	movb	-781(%ebp,%eax,1),%al
	cmpb	$92,%al
	jne	Lj532
	jmp	Lj534
Lj534:
	movl	-788(%ebp),%edx
	movl	-792(%ebp),%eax
	subl	%eax,%edx
	addl	$3,%edx
	pushl	%edx
	movl	-792(%ebp),%ecx
	incl	%ecx
	leal	-781(%ebp),%eax
	movl	$255,%edx
	call	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	leal	-781(%ebp),%edx
	movl	$_$DOS$_Ld4,%eax
	call	SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT
	movl	%eax,-788(%ebp)
Lj528:
	movl	-788(%ebp),%eax
	testl	%eax,%eax
	jne	Lj527
	jmp	Lj529
Lj529:
	leal	-781(%ebp),%edx
	movl	$_$DOS$_Ld5,%eax
	call	SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT
	movl	%eax,-788(%ebp)
	movl	-788(%ebp),%eax
	testl	%eax,%eax
	jne	Lj558
	jmp	Lj557
Lj558:
	movzbl	-781(%ebp),%eax
	subl	$2,%eax
	cmpl	-788(%ebp),%eax
	je	Lj556
	jmp	Lj557
Lj556:
	movl	-788(%ebp),%eax
	decl	%eax
	movl	%eax,-792(%ebp)
	jmp	Lj562
	.balign 4,0x90
Lj561:
	decl	-792(%ebp)
Lj562:
	movl	-792(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj564
	jmp	Lj563
Lj564:
	movzbl	-792(%ebp),%eax
	movb	-781(%ebp,%eax,1),%al
	cmpb	$92,%al
	jne	Lj561
	jmp	Lj563
Lj563:
	movl	-792(%ebp),%eax
	testl	%eax,%eax
	je	Lj565
	jmp	Lj566
Lj565:
	movb	$0,-781(%ebp)
	jmp	Lj569
Lj566:
	movl	-788(%ebp),%edx
	movl	-792(%ebp),%eax
	subl	%eax,%edx
	addl	$2,%edx
	pushl	%edx
	movl	-792(%ebp),%ecx
	incl	%ecx
	leal	-781(%ebp),%eax
	movl	$255,%edx
	call	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
Lj569:
Lj557:
	movzbl	-781(%ebp),%eax
	cmpl	$1,%eax
	je	Lj578
	jmp	Lj579
Lj578:
	movb	-780(%ebp),%al
	cmpb	$46,%al
	je	Lj580
	jmp	Lj581
Lj580:
	movb	$0,-781(%ebp)
Lj581:
	jmp	Lj584
Lj579:
	movzbl	-781(%ebp),%eax
	testl	%eax,%eax
	jne	Lj588
	jmp	Lj586
Lj588:
	movzbl	-781(%ebp),%eax
	movb	-781(%ebp,%eax,1),%al
	cmpb	$46,%al
	je	Lj587
	jmp	Lj586
Lj587:
	movb	-781(%ebp),%al
	decb	%al
	movzbl	%al,%eax
	movb	-781(%ebp,%eax,1),%al
	cmpb	$92,%al
	je	Lj585
	jmp	Lj586
Lj585:
	pushl	$2
	movzbl	-781(%ebp),%ecx
	decl	%ecx
	leal	-781(%ebp),%eax
	movl	$255,%edx
	call	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
Lj586:
Lj584:
	jmp	Lj598
	.balign 4,0x90
Lj597:
	pushl	$2
	leal	-781(%ebp),%eax
	movl	$1,%ecx
	movl	$255,%edx
	call	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
Lj598:
	movzbl	-781(%ebp),%eax
	cmpl	$2,%eax
	jge	Lj609
	jmp	Lj599
Lj609:
	movb	-780(%ebp),%al
	cmpb	$46,%al
	je	Lj608
	jmp	Lj599
Lj608:
	movb	-779(%ebp),%al
	cmpb	$92,%al
	je	Lj597
	jmp	Lj599
Lj599:
	jmp	Lj611
	.balign 4,0x90
Lj610:
	pushl	$3
	leal	-781(%ebp),%eax
	movl	$1,%ecx
	movl	$255,%edx
	call	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
Lj611:
	movzbl	-781(%ebp),%eax
	cmpl	$3,%eax
	jge	Lj623
	jmp	Lj612
Lj623:
	movb	-780(%ebp),%al
	cmpb	$46,%al
	je	Lj622
	jmp	Lj612
Lj622:
	movb	-779(%ebp),%al
	cmpb	$46,%al
	je	Lj621
	jmp	Lj612
Lj621:
	movb	-778(%ebp),%al
	cmpb	$92,%al
	je	Lj610
	jmp	Lj612
Lj612:
	movzbl	-781(%ebp),%eax
	cmpl	$1,%eax
	je	Lj626
	jmp	Lj625
Lj626:
	movb	-780(%ebp),%al
	cmpb	$46,%al
	je	Lj624
	jmp	Lj625
Lj624:
	movb	$0,-781(%ebp)
Lj625:
	movzbl	-781(%ebp),%eax
	cmpl	$2,%eax
	je	Lj632
	jmp	Lj630
Lj632:
	movb	-780(%ebp),%al
	cmpb	$46,%al
	je	Lj631
	jmp	Lj630
Lj631:
	movb	-779(%ebp),%al
	cmpb	$46,%al
	je	Lj629
	jmp	Lj630
Lj629:
	movb	$0,-781(%ebp)
Lj630:
	movzbl	-781(%ebp),%eax
	testl	%eax,%eax
	je	Lj635
	jmp	Lj636
Lj635:
	leal	-1048(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	leal	-525(%ebp),%eax
	movl	$1,%edx
	call	fpc_shortstr_copy
	leal	-1048(%ebp),%ecx
	leal	-525(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movzbl	-12(%ebp),%eax
	movb	-525(%ebp,%eax,1),%al
	cmpb	$92,%al
	jne	Lj651
	jmp	Lj652
Lj651:
	pushl	$_$DOS$_Ld1
	leal	-525(%ebp),%ecx
	leal	-525(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
Lj652:
	jmp	Lj661
Lj636:
	leal	-781(%ebp),%eax
	pushl	%eax
	leal	-1048(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	leal	-525(%ebp),%eax
	movl	$1,%edx
	call	fpc_shortstr_copy
	leal	-1048(%ebp),%ecx
	leal	-525(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
Lj661:
	movzbl	-525(%ebp),%eax
	movb	-525(%ebp,%eax,1),%al
	cmpb	$92,%al
	je	Lj682
	jmp	Lj679
Lj682:
	movzbl	-525(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj681
	jmp	Lj683
Lj683:
	cmpb	$0,-13(%ebp)
	jne	Lj684
	jmp	Lj679
Lj684:
	movzbl	-525(%ebp),%eax
	cmpl	-12(%ebp),%eax
	je	Lj681
	jmp	Lj679
Lj681:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj680
	jmp	Lj679
Lj680:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$92,%al
	jne	Lj678
	jmp	Lj679
Lj678:
	pushl	$1
	movzbl	-525(%ebp),%ecx
	leal	-525(%ebp),%eax
	movl	$255,%edx
	call	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
Lj679:
	leal	-525(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	-1564(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_FSEARCH$SHORTSTRING$SHORTSTRING$$SHORTSTRING
DOS_FSEARCH$SHORTSTRING$SHORTSTRING$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1060,%esp
	movl	%ebx,-1060(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	leal	-532(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	movl	-8(%ebp),%edx
	leal	-788(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	pushl	$_$DOS$_Ld7
	leal	-532(%ebp),%ecx
	leal	-1044(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	leal	-1044(%ebp),%edx
	movl	%ebp,%eax
	call	DOS_FSEARCH$crc05A326C1_CHECKFILE$SHORTSTRING$$BOOLEAN
	testb	%al,%al
	jne	Lj704
	jmp	Lj705
Lj704:
	leal	-532(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	jmp	Lj724
Lj705:
	leal	-532(%ebp),%edx
	movb	$63,%al
	call	SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT
	testl	%eax,%eax
	jne	Lj725
	jmp	Lj727
Lj727:
	leal	-532(%ebp),%edx
	movb	$42,%al
	call	SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT
	testl	%eax,%eax
	jne	Lj725
	jmp	Lj726
Lj725:
	movl	-12(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj738
Lj726:
	leal	-788(%ebp),%eax
	call	DOS_DODIRSEPARATORS$SHORTSTRING
	.balign 4,0x90
Lj741:
	leal	-788(%ebp),%edx
	movb	$59,%al
	call	SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj750
	jmp	Lj751
Lj750:
	leal	-276(%ebp),%eax
	pushl	%eax
	movl	-20(%ebp),%ecx
	decl	%ecx
	leal	-788(%ebp),%eax
	movl	$1,%edx
	call	fpc_shortstr_copy
	pushl	-20(%ebp)
	leal	-788(%ebp),%eax
	movl	$1,%ecx
	movl	$255,%edx
	call	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	jmp	Lj768
Lj751:
	leal	-788(%ebp),%ecx
	leal	-276(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movb	$0,-788(%ebp)
Lj768:
	movzbl	-276(%ebp),%eax
	testl	%eax,%eax
	jne	Lj779
	jmp	Lj778
Lj779:
	movzbl	-276(%ebp),%ebx
	pushl	$32
	leal	-820(%ebp),%ecx
	movl	$TC_SYSTEM_ALLOWDRIVESEPARATORS,%edx
	movl	$TC_SYSTEM_ALLOWDIRECTORYSEPARATORS,%eax
	call	fpc_varset_add_sets
	movzbl	-276(%ebp,%ebx,1),%eax
	btl	%eax,-820(%ebp)
	jnc	Lj777
	jmp	Lj778
Lj777:
	pushl	$_$DOS$_Ld1
	leal	-276(%ebp),%ecx
	leal	-276(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
Lj778:
	pushl	$2
	leal	-276(%ebp),%eax
	movl	%eax,-1056(%ebp)
	leal	-532(%ebp),%eax
	movl	%eax,-1052(%ebp)
	movl	$_$DOS$_Ld7,%eax
	movl	%eax,-1048(%ebp)
	leal	-1056(%ebp),%ecx
	leal	-1044(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat_multi
	leal	-1044(%ebp),%edx
	movl	%ebp,%eax
	call	DOS_FSEARCH$crc05A326C1_CHECKFILE$SHORTSTRING$$BOOLEAN
	testb	%al,%al
	jne	Lj796
	jmp	Lj797
Lj796:
	leal	-532(%ebp),%eax
	pushl	%eax
	leal	-276(%ebp),%ecx
	leal	-276(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	jmp	Lj818
Lj797:
	movb	$0,-276(%ebp)
Lj818:
	movzbl	-788(%ebp),%eax
	testl	%eax,%eax
	je	Lj743
	jmp	Lj821
Lj821:
	movzbl	-276(%ebp),%eax
	testl	%eax,%eax
	jne	Lj743
	jmp	Lj741
Lj743:
	leal	-276(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
Lj738:
Lj724:
	movl	-1060(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
DOS_FSEARCH$crc05A326C1_CHECKFILE$SHORTSTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	movl	%eax,%edx
	incl	%edx
	movw	$17152,%ax
	call	___SYSCALL
	movw	$0,%ax
	jc	Lj703
	testw	$24,%cx
	jnz	Lj703
	incw	%ax
Lj703:
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_GETFTIME$formal$LONGINT
DOS_GETFTIME$formal$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	pushl	%ebx
	movl	%eax,%ebx
	pushl	%edx
	movl	(%ebx),%ebx
	movw	$22272,%ax
	call	___SYSCALL
	shll	$16,%edx
	movw	%cx,%dx
	popl	%ebx
	movl	%edx,(%ebx)
	movw	%ax,U_DOS_DOSERROR
	popl	%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_SETFTIME$formal$LONGINT
DOS_SETFTIME$formal$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj832
	jmp	Lj833
Lj832:
	pushl	$24
	leal	-32(%ebp),%eax
	pushl	%eax
	pushl	$1
	movl	-4(%ebp),%eax
	pushl	(%eax)
	call	DOSCALLS_DOSQUERYFILEINFO$LONGINT$LONGWORD$PFILESTATUS$LONGWORD$$LONGWORD
	addl	$16,%esp
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj844
	jmp	Lj845
Lj844:
	movl	-8(%ebp),%eax
	shrl	$16,%eax
	movw	%ax,-28(%ebp)
	movl	-8(%ebp),%eax
	shrl	$16,%eax
	movw	%ax,-24(%ebp)
	movw	-8(%ebp),%ax
	movw	%ax,-26(%ebp)
	movw	-8(%ebp),%ax
	movw	%ax,-22(%ebp)
	pushl	$24
	leal	-32(%ebp),%eax
	pushl	%eax
	pushl	$1
	movl	-4(%ebp),%eax
	pushl	(%eax)
	call	DOSCALLS_DOSSETFILEINFO$LONGINT$LONGWORD$PFILESTATUS$LONGWORD$$LONGWORD
	addl	$16,%esp
	movl	%eax,-36(%ebp)
Lj845:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj866
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj867
Lj866:
	movl	$U_DOS_DOSERROR+4,%eax
Lj867:
	movl	-36(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj868
Lj833:
	pushl	%ebx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	movl	-8(%ebp),%ecx
	shldl	$16,%ecx,%edx
	movw	$22273,%ax
	call	___SYSCALL
	movw	%ax,U_DOS_DOSERROR
	popl	%ebx
Lj868:
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_INTR$BYTE$REGISTERS
DOS_INTR$BYTE$REGISTERS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj875
	jmp	Lj876
Lj875:
	jmp	Lj869
Lj876:
	jmp	Lj871
Lj872:
	.byte	205
Lj873:
	.byte	3
	jmp	Lj874
Lj871:
	movb	-4(%ebp),%al
	movb	%al,Lj873
	movl	-8(%ebp),%eax
	movl	4(%eax),%ebx
	movl	8(%eax),%ecx
	movl	12(%eax),%edx
	movl	16(%eax),%ebp
	movl	20(%eax),%esi
	movl	24(%eax),%edi
	movl	(%eax),%eax
	jmp	Lj872
Lj874:
	pushf
	pushl	%ebp
	pushl	%eax
	movl	%esp,%ebp
	addl	$12,%ebp
	movl	-8(%ebp),%eax
	popl	(%eax)
	movl	%ebx,4(%eax)
	movl	%ecx,8(%eax)
	movl	%edx,12(%eax)
	popl	%edx
	movl	%edx,16(%eax)
	movl	%esi,20(%eax)
	movl	%edi,24(%eax)
	popl	%ebx
	movl	%ebx,32(%eax)
Lj869:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_EXEC$SHORTSTRING$SHORTSTRING
DOS_EXEC$SHORTSTRING$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$844,%esp
	movl	%ebx,-844(%ebp)
	movl	%esi,-840(%ebp)
	movl	%edi,-836(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-12(%ebp),%eax
	movl	$2048,%edx
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	_envc,%edx
	shll	$2,%edx
	addl	$16384,%edx
	leal	-16(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	leal	-20(%ebp),%eax
	movl	$260,%edx
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	leal	-824(%ebp),%eax
	pushl	%eax
	leal	-568(%ebp),%ecx
	leal	-312(%ebp),%edx
	movl	-4(%ebp),%eax
	call	DOS_FSPLIT$SHORTSTRING$SHORTSTRING$SHORTSTRING$SHORTSTRING
	movw	$1,-34(%ebp)
	movl	-12(%ebp),%eax
	movb	$128,(%eax)
	movw	$1,-24(%ebp)
	movzbw	-568(%ebp),%ax
	movw	$1,-22(%ebp)
	cmpw	-22(%ebp),%ax
	jb	Lj909
	decw	-22(%ebp)
	.balign 4,0x90
Lj910:
	incw	-22(%ebp)
	movl	-12(%ebp),%ecx
	movzwl	-24(%ebp),%ebx
	movzbl	-22(%ebp),%edx
	movb	-568(%ebp,%edx,1),%dl
	movb	%dl,(%ecx,%ebx,1)
	incw	-24(%ebp)
	cmpw	-22(%ebp),%ax
	ja	Lj910
Lj909:
	movl	-12(%ebp),%edx
	movzwl	-24(%ebp),%eax
	movb	$0,(%edx,%eax,1)
	incw	-24(%ebp)
	movw	$1,-22(%ebp)
	jmp	Lj918
	.balign 4,0x90
Lj917:
	movl	-8(%ebp),%edx
	movzbl	-22(%ebp),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$32,%al
	jne	Lj920
	jmp	Lj921
Lj920:
	incw	-34(%ebp)
	movl	-12(%ebp),%eax
	movzwl	-24(%ebp),%edx
	movb	$128,(%eax,%edx,1)
	incw	-24(%ebp)
	jmp	Lj925
	.balign 4,0x90
Lj924:
	movl	-12(%ebp),%ecx
	movzwl	-24(%ebp),%ebx
	movl	-8(%ebp),%eax
	movzbl	-22(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,(%ecx,%ebx,1)
	incw	-24(%ebp)
	incw	-22(%ebp)
Lj925:
	movl	-8(%ebp),%eax
	movzbw	(%eax),%ax
	cmpw	-22(%ebp),%ax
	jae	Lj929
	jmp	Lj926
Lj929:
	movl	-8(%ebp),%eax
	movzbl	-22(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$32,%al
	jne	Lj924
	jmp	Lj926
Lj926:
	movl	-12(%ebp),%eax
	movzwl	-24(%ebp),%edx
	movb	$0,(%eax,%edx,1)
	incw	-24(%ebp)
Lj921:
	incw	-22(%ebp)
Lj918:
	movl	-8(%ebp),%eax
	movzbw	(%eax),%ax
	cmpw	-22(%ebp),%ax
	jae	Lj917
	jmp	Lj919
Lj919:
	movl	-12(%ebp),%eax
	movzwl	-24(%ebp),%edx
	movb	$0,(%eax,%edx,1)
	incw	-24(%ebp)
	movl	-16(%ebp),%edi
	movl	_envc,%ecx
	movl	_environ,%esi
	xorl	%edx,%edx
Lj879:
	lodsl
	xchgl	%eax,%ebx
Lj880:
	movb	(%ebx),%al
	incl	%ebx
	stosb
	incl	%edx
	cmpb	$0,%al
	jne	Lj880
	loop	Lj879
	stosb
	incl	%edx
	movw	%dx,-28(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-48(%ebp)
	movw	_envc,%ax
	movw	%ax,-30(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movb	$0,(%edx,%eax,1)
	movl	-20(%ebp),%eax
	movl	%eax,-44(%ebp)
	movw	%ss,-40(%ebp)
	movw	%ss,-38(%ebp)
	movw	%ss,-36(%ebp)
	movw	-24(%ebp),%ax
	movw	%ax,-32(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj954
	movl	U_DOS_EXECFLAGS,%eax
	call	*%edx
	jmp	Lj955
Lj954:
	movl	$U_DOS_EXECFLAGS+4,%eax
Lj955:
	movw	(%eax),%ax
	movw	%ax,-26(%ebp)
	leal	-52(%ebp),%edx
	movw	$32518,%ax
	call	___SYSCALL
	movl	$0,%edi
	jnc	Lj881
	xchgl	%eax,%edi
	xorl	%eax,%eax
Lj881:
	movw	%di,U_DOS_DOSERROR
	movl	%eax,U_DOS_LASTDOSEXITCODE
	movl	-20(%ebp),%eax
	movl	$260,%edx
	call	SYSTEM_FREEMEM$POINTER$LONGWORD
	movl	_envc,%edx
	shll	$2,%edx
	addl	$16384,%edx
	movl	-16(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$LONGWORD
	movl	-12(%ebp),%eax
	movl	$2048,%edx
	call	SYSTEM_FREEMEM$POINTER$LONGWORD
	movl	-844(%ebp),%ebx
	movl	-840(%ebp),%esi
	movl	-836(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_DOSVERSION$$WORD
DOS_DOSVERSION$$WORD:
	subl	$2,%esp
	movb	$48,%ah
	call	___SYSCALL
	addl	$2,%esp
	ret

.text
	.balign 4,0x90
.globl	DOS_GETDATE$WORD$WORD$WORD$WORD
DOS_GETDATE$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$42,%ah
	call	___SYSCALL
	xorb	%ah,%ah
	movl	8(%ebp),%edi
	stosw
	movl	-12(%ebp),%edi
	movb	%dl,%al
	stosw
	movl	-8(%ebp),%edi
	movb	%dh,%al
	stosw
	movl	-4(%ebp),%edi
	xchgw	%ecx,%eax
	stosw
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DOS_SETDATE$WORD$WORD$WORD
DOS_SETDATE$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj974
	jmp	Lj975
Lj974:
	leal	-24(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSGETDATETIME$TDATETIME$$LONGWORD
	popl	%ebx
	movw	-4(%ebp),%ax
	movw	%ax,-18(%ebp)
	movb	-8(%ebp),%al
	movb	%al,-19(%ebp)
	movb	-12(%ebp),%al
	movb	%al,-20(%ebp)
	leal	-24(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSSETDATETIME$TDATETIME$$LONGWORD
	popl	%ebx
	jmp	Lj986
Lj975:
	movw	-4(%ebp),%cx
	movb	-8(%ebp),%dh
	movb	-12(%ebp),%dl
	movb	$43,%ah
	call	___SYSCALL
Lj986:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_GETTIME$WORD$WORD$WORD$WORD
DOS_GETTIME$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$44,%ah
	call	___SYSCALL
	xorb	%ah,%ah
	movl	8(%ebp),%edi
	movb	%dl,%al
	stosw
	movl	-12(%ebp),%edi
	movb	%dh,%al
	stosw
	movl	-8(%ebp),%edi
	movb	%cl,%al
	stosw
	movl	-4(%ebp),%edi
	movb	%ch,%al
	stosw
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DOS_SETTIME$WORD$WORD$WORD$WORD
DOS_SETTIME$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj991
	jmp	Lj992
Lj991:
	leal	-24(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSGETDATETIME$TDATETIME$$LONGWORD
	popl	%ebx
	movb	-4(%ebp),%al
	movb	%al,-24(%ebp)
	movb	-8(%ebp),%al
	movb	%al,-23(%ebp)
	movb	-12(%ebp),%al
	movb	%al,-22(%ebp)
	movb	8(%ebp),%al
	movb	%al,-21(%ebp)
	leal	-24(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSSETDATETIME$TDATETIME$$LONGWORD
	popl	%ebx
	jmp	Lj1005
Lj992:
	movb	-4(%ebp),%ch
	movb	-8(%ebp),%cl
	movb	-12(%ebp),%dh
	movb	8(%ebp),%dl
	movb	$45,%ah
	call	___SYSCALL
Lj1005:
	movl	-28(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DOS_GETVERIFY$BOOLEAN
DOS_GETVERIFY$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%edi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$0,%eax
	je	Lj1010
	cmpl	$2,%eax
	je	Lj1010
Lj1010:
	je	Lj1008
	jmp	Lj1009
Lj1008:
	movb	$84,%ah
	call	___SYSCALL
	movl	-4(%ebp),%edi
	stosb
	jmp	Lj1011
Lj1009:
	movl	-4(%ebp),%eax
	movb	$1,(%eax)
Lj1011:
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_SETVERIFY$BOOLEAN
DOS_SETVERIFY$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movb	%al,-4(%ebp)
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$0,%eax
	je	Lj1018
	cmpl	$2,%eax
	je	Lj1018
Lj1018:
	je	Lj1016
	jmp	Lj1017
Lj1016:
	movb	-4(%ebp),%al
	movb	$46,%ah
	call	___SYSCALL
Lj1017:
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_DISKFREE$BYTE$$INT64
DOS_DISKFREE$BYTE$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$276,%esp
	movb	%al,-4(%ebp)
	movl	U_SYSTEM_OS_MODE,%eax
	testl	%eax,%eax
	je	Lj1023
	jmp	Lj1025
Lj1025:
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$2,%eax
	je	Lj1023
	jmp	Lj1024
Lj1023:
	pushl	%ebx
	movb	-4(%ebp),%dl
	movb	$54,%ah
	call	___SYSCALL
	cmpw	$-1,%ax
	je	Lj1021
	mulw	%cx
	mulw	%bx
	shll	$16,%edx
	movw	%ax,%dx
	movl	$0,%eax
	xchgl	%edx,%eax
	jmp	Lj1022
Lj1021:
	cltd
Lj1022:
	popl	%ebx
	leave
	ret
	jmp	Lj1026
Lj1024:
	pushl	$260
	leal	-272(%ebp),%eax
	pushl	%eax
	pushl	$1
	movzbl	-4(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSQUERYFSINFO$LONGWORD$LONGWORD$TFSINFO$LONGWORD$$LONGWORD
	addl	$16,%esp
	movl	%eax,-276(%ebp)
	movl	-276(%ebp),%eax
	testl	%eax,%eax
	je	Lj1037
	jmp	Lj1038
Lj1037:
	movl	-268(%ebp),%eax
	mull	-260(%ebp)
	pushl	%edx
	pushl	%eax
	movzwl	-256(%ebp),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj1047
Lj1038:
	movl	$-1,-12(%ebp)
	movl	$-1,-8(%ebp)
Lj1047:
Lj1026:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_DISKSIZE$BYTE$$INT64
DOS_DISKSIZE$BYTE$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$276,%esp
	movb	%al,-4(%ebp)
	movl	U_SYSTEM_OS_MODE,%eax
	testl	%eax,%eax
	je	Lj1054
	jmp	Lj1056
Lj1056:
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$2,%eax
	je	Lj1054
	jmp	Lj1055
Lj1054:
	pushl	%ebx
	movb	-4(%ebp),%dl
	movb	$54,%ah
	call	___SYSCALL
	movw	%dx,%bx
	cmpw	$-1,%ax
	je	Lj1052
	mulw	%cx
	mulw	%bx
	shll	$16,%edx
	movw	%ax,%dx
	movl	$0,%eax
	xchgl	%edx,%eax
	jmp	Lj1053
Lj1052:
	cltd
Lj1053:
	popl	%ebx
	leave
	ret
	jmp	Lj1057
Lj1055:
	pushl	$260
	leal	-272(%ebp),%eax
	pushl	%eax
	pushl	$1
	movzbl	-4(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSQUERYFSINFO$LONGWORD$LONGWORD$TFSINFO$LONGWORD$$LONGWORD
	addl	$16,%esp
	movl	%eax,-276(%ebp)
	movl	-276(%ebp),%eax
	testl	%eax,%eax
	je	Lj1068
	jmp	Lj1069
Lj1068:
	movl	-268(%ebp),%eax
	mull	-264(%ebp)
	pushl	%edx
	pushl	%eax
	movzwl	-256(%ebp),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj1078
Lj1069:
	movl	$-1,-12(%ebp)
	movl	$-1,-8(%ebp)
Lj1078:
Lj1057:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
DOS_SEARCHREC2DOSSEARCHREC$SEARCHREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	jne	Lj1083
	jmp	Lj1084
Lj1083:
	movl	$1,-12(%ebp)
	jmp	Lj1088
	.balign 4,0x90
Lj1087:
	incl	-12(%ebp)
Lj1088:
	movl	-12(%ebp),%eax
	cmpl	$286,%eax
	jle	Lj1090
	jmp	Lj1089
Lj1090:
	movl	-4(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1091
	movl	U_DOS_LASTSR,%eax
	call	*%edx
	jmp	Lj1092
Lj1091:
	movl	$U_DOS_LASTSR+4,%eax
Lj1092:
	movl	-12(%ebp),%edx
	movb	-1(%ebx,%esi,1),%cl
	cmpb	-1(%eax,%edx,1),%cl
	je	Lj1087
	jmp	Lj1089
Lj1089:
	movl	-12(%ebp),%eax
	cmpl	$286,%eax
	jle	Lj1093
	jmp	Lj1094
Lj1093:
	movw	$6,%ax
	call	SYSTEM_RUNERROR$WORD
Lj1094:
	movl	-4(%ebp),%eax
	movzbl	30(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	$1,-12(%ebp)
	decl	-12(%ebp)
	.balign 4,0x90
Lj1101:
	incl	-12(%ebp)
	movl	-4(%ebp),%ebx
	movl	-12(%ebp),%eax
	decl	%eax
	movzbl	%al,%eax
	movl	-4(%ebp),%edx
	movzbl	-12(%ebp),%ecx
	movb	30(%edx,%ecx,1),%dl
	movb	%dl,30(%ebx,%eax,1)
	cmpl	$255,-12(%ebp)
	jl	Lj1101
	movl	-4(%ebp),%edx
	movzbl	-8(%ebp),%eax
	movb	$0,30(%edx,%eax,1)
Lj1084:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
DOS_DOSSEARCHREC2SEARCHREC$SEARCHREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj1108
	jmp	Lj1109
Lj1108:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	28(%eax),%ecx
	movl	-4(%ebp),%eax
	leal	30(%eax),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	movl	%eax,26(%edx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	24(%eax),%eax
	andl	$255,%eax
	movl	-4(%ebp),%edx
	movb	%al,21(%edx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movw	14(%eax),%ax
	movw	%ax,22(%edx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movw	12(%eax),%ax
	movw	%ax,24(%edx)
	jmp	Lj1124
Lj1109:
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.balign 4,0x90
Lj1127:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movzbl	-12(%ebp),%edx
	movb	30(%eax,%edx,1),%al
	testb	%al,%al
	je	Lj1128
	jmp	Lj1129
Lj1128:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1126
Lj1129:
	cmpl	$255,-12(%ebp)
	jl	Lj1127
Lj1126:
	movl	$254,-12(%ebp)
	incl	-12(%ebp)
	.balign 4,0x90
Lj1134:
	decl	-12(%ebp)
	movl	-4(%ebp),%ebx
	movl	-12(%ebp),%eax
	incl	%eax
	movzbl	%al,%eax
	movl	-4(%ebp),%edx
	movzbl	-12(%ebp),%ecx
	movb	30(%edx,%ecx,1),%dl
	movb	%dl,30(%ebx,%eax,1)
	cmpl	$0,-12(%ebp)
	jg	Lj1134
	movl	-4(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,30(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1141
	movl	U_DOS_LASTSR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj1142
Lj1141:
	movl	$U_DOS_LASTSR+4,%edx
Lj1142:
	movl	-4(%ebp),%eax
	movl	$286,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj1124:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
DOS__FINDFIRST$PCHAR$WORD$SEARCHREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	%esi
	movl	-4(%ebp),%edx
	movw	-8(%ebp),%cx
	movl	-12(%ebp),%esi
	movb	$78,%ah
	call	___SYSCALL
	jnc	Lj1149
	movw	%ax,U_DOS_DOSERROR
Lj1149:
	popl	%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_FINDFIRST$SHORTSTRING$WORD$SEARCHREC
DOS_FINDFIRST$SHORTSTRING$WORD$SEARCHREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$276,%esp
	movl	%ebx,-276(%ebp)
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1154
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj1155
Lj1154:
	movl	$U_DOS_DOSERROR+4,%eax
Lj1155:
	movl	$0,(%eax)
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj1156
	jmp	Lj1157
Lj1156:
	movl	$284,%eax
	call	fpc_getmem
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	$-1,(%eax)
	movl	$1,-272(%ebp)
	movl	-12(%ebp),%eax
	pushl	4(%eax)
	pushl	$284
	leal	-272(%ebp),%eax
	pushl	%eax
	pushl	$1
	movw	-8(%ebp),%cx
	andw	$14135,%cx
	movzwl	%cx,%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	DOSCALLS_DOSFINDFIRST$crcAED03932
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1184
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj1185
Lj1184:
	movl	$U_DOS_DOSERROR+4,%eax
Lj1185:
	movl	%ebx,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1189
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj1190
Lj1189:
	movl	$U_DOS_DOSERROR+4,%eax
Lj1190:
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1188
	jmp	Lj1187
Lj1188:
	movl	-272(%ebp),%eax
	testl	%eax,%eax
	je	Lj1186
	jmp	Lj1187
Lj1186:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1193
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj1194
Lj1193:
	movl	$U_DOS_DOSERROR+4,%eax
Lj1194:
	movl	$18,(%eax)
Lj1187:
	jmp	Lj1195
Lj1157:
	leal	-268(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	leal	-268(%ebp),%eax
	movl	-12(%ebp),%ecx
	movw	-8(%ebp),%dx
	call	DOS__FINDFIRST$PCHAR$WORD$SEARCHREC
Lj1195:
	movl	-12(%ebp),%eax
	call	DOS_DOSSEARCHREC2SEARCHREC$SEARCHREC
	movl	-276(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
DOS__FINDNEXT$SEARCHREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	pushl	%esi
	movl	-4(%ebp),%esi
	movb	$79,%ah
	call	___SYSCALL
	jnc	Lj1210
	movw	%ax,U_DOS_DOSERROR
Lj1210:
	popl	%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_FINDNEXT$SEARCHREC
DOS_FINDNEXT$SEARCHREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1215
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj1216
Lj1215:
	movl	$U_DOS_DOSERROR+4,%eax
Lj1216:
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	call	DOS_SEARCHREC2DOSSEARCHREC$SEARCHREC
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj1219
	jmp	Lj1220
Lj1219:
	movl	$1,-8(%ebp)
	leal	-8(%ebp),%eax
	pushl	%eax
	pushl	$284
	movl	-4(%ebp),%eax
	pushl	4(%eax)
	movl	-4(%ebp),%eax
	pushl	(%eax)
	call	DOSCALLS_DOSFINDNEXT$LONGINT$PFILESTATUS$LONGWORD$LONGWORD$$LONGWORD
	addl	$16,%esp
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1233
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj1234
Lj1233:
	movl	$U_DOS_DOSERROR+4,%eax
Lj1234:
	movl	%ebx,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1238
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj1239
Lj1238:
	movl	$U_DOS_DOSERROR+4,%eax
Lj1239:
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1237
	jmp	Lj1236
Lj1237:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1235
	jmp	Lj1236
Lj1235:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1242
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj1243
Lj1242:
	movl	$U_DOS_DOSERROR+4,%eax
Lj1243:
	movl	$18,(%eax)
Lj1236:
	jmp	Lj1244
Lj1220:
	movl	-4(%ebp),%eax
	call	DOS__FINDNEXT$SEARCHREC
Lj1244:
	movl	-4(%ebp),%eax
	call	DOS_DOSSEARCHREC2SEARCHREC$SEARCHREC
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_FINDCLOSE$SEARCHREC
DOS_FINDCLOSE$SEARCHREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj1251
	jmp	Lj1252
Lj1251:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj1253
	jmp	Lj1254
Lj1253:
	movl	-4(%ebp),%eax
	pushl	(%eax)
	call	DOSCALLS_DOSFINDCLOSE$LONGINT$$LONGWORD
	popl	%ebx
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1259
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj1260
Lj1259:
	movl	$U_DOS_DOSERROR+4,%eax
Lj1260:
	movl	%ebx,(%eax)
Lj1254:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	fpc_freemem
Lj1252:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_ENVCOUNT$$LONGINT
DOS_ENVCOUNT$$LONGINT:
	subl	$4,%esp
	movl	_envc,%eax
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	DOS_ENVSTR$LONGINT$$SHORTSTRING
DOS_ENVSTR$LONGINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj1267
	jmp	Lj1269
Lj1269:
	call	DOS_ENVCOUNT$$LONGINT
	cmpl	-4(%ebp),%eax
	jl	Lj1267
	jmp	Lj1268
Lj1267:
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj1265
Lj1268:
	movl	_environ,%edx
	movl	-4(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	STRINGS_STRPAS$PCHAR$$SHORTSTRING
Lj1265:
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_GETENVPCHAR$SHORTSTRING$$PCHAR
DOS_GETENVPCHAR$SHORTSTRING$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$532,%esp
	movl	%esi,-532(%ebp)
	movl	%edi,-528(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-268(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	leal	-524(%ebp),%edx
	leal	-268(%ebp),%eax
	call	SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING
	leal	-524(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	cld
	movl	U_SYSTEM_ENVIRONMENT,%edi
	leal	-268(%ebp),%esi
	xorl	%eax,%eax
	lodsb
Lj1280:
	cmpb	$0,(%edi)
	jz	Lj1281
	pushl	%eax
	pushl	%esi
	movl	$-1,%ecx
	movl	%edi,%edx
	movb	$61,%al
	repne
	scasb
	negl	%ecx
	decl	%ecx
	decl	%ecx
	popl	%esi
	popl	%eax
	pushl	%eax
	pushl	%esi
	cmpl	%eax,%ecx
	jnz	Lj1282
	xchgl	%edi,%edx
	repe
	cmpsb
	xchgl	%edi,%edx
	jz	Lj1283
Lj1282:
	xorl	%eax,%eax
	movl	$-1,%ecx
	repne
	scasb
	popl	%esi
	popl	%eax
	jmp	Lj1280
Lj1281:
	xorl	%eax,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1284
Lj1283:
	popl	%esi
	popl	%eax
	movl	%edi,-12(%ebp)
Lj1284:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-532(%ebp),%esi
	movl	-528(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_GETENV$SHORTSTRING$$SHORTSTRING
DOS_GETENV$SHORTSTRING$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	leal	-264(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	leal	-264(%ebp),%eax
	call	DOS_GETENVPCHAR$SHORTSTRING$$PCHAR
	movl	-8(%ebp),%edx
	call	STRINGS_STRPAS$PCHAR$$SHORTSTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_GETFATTR$formal$WORD
DOS_GETFATTR$formal$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$776,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1310
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj1311
Lj1310:
	movl	$U_DOS_DOSERROR+4,%eax
Lj1311:
	movl	$0,(%eax)
	movb	$0,-264(%ebp)
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	leal	-776(%ebp),%edx
	call	STRINGS_STRPAS$PCHAR$$SHORTSTRING
	leal	-776(%ebp),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	leal	-776(%ebp),%edx
	leal	-264(%ebp),%eax
	call	DOS_FEXPAND$SHORTSTRING$$SHORTSTRING
	leal	-776(%ebp),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movzbl	-264(%ebp),%ecx
	leal	-520(%ebp),%edx
	leal	-263(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movzbl	-264(%ebp),%eax
	movb	$0,-520(%ebp,%eax,1)
	pushl	%ebx
	movw	$17152,%ax
	leal	-520(%ebp),%edx
	call	___SYSCALL
	jnc	Lj1307
	movw	%ax,U_DOS_DOSERROR
Lj1307:
	movl	-8(%ebp),%ebx
	movw	%cx,(%ebx)
	popl	%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	DOS_SETFATTR$formal$WORD
DOS_SETFATTR$formal$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$776,%esp
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movb	$0,-264(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1349
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj1350
Lj1349:
	movl	$U_DOS_DOSERROR+4,%eax
Lj1350:
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	leal	-776(%ebp),%edx
	call	STRINGS_STRPAS$PCHAR$$SHORTSTRING
	leal	-776(%ebp),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	leal	-776(%ebp),%edx
	leal	-264(%ebp),%eax
	call	DOS_FEXPAND$SHORTSTRING$$SHORTSTRING
	leal	-776(%ebp),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movzbl	-264(%ebp),%ecx
	leal	-520(%ebp),%edx
	leal	-263(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movzbl	-264(%ebp),%eax
	movb	$0,-520(%ebp,%eax,1)
	movw	$17153,%ax
	leal	-520(%ebp),%edx
	movw	-8(%ebp),%cx
	call	___SYSCALL
	jnc	Lj1344
	movw	%ax,U_DOS_DOSERROR
Lj1344:
	leave
	ret

.text
	.balign 4,0x90
DOS_INITENVIRONMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$0,%eax
	je	Lj1383
	cmpl	$2,%eax
	je	Lj1383
Lj1383:
	je	Lj1381
	jmp	Lj1382
Lj1381:
	jmp	Lj1379
Lj1382:
	movl	$0,-4(%ebp)
	leal	-20(%ebp),%eax
	pushl	%eax
	leal	-24(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSGETINFOBLOCKS$PPTHREADINFOBLOCK$PPPROCESSINFOBLOCK
	addl	$8,%esp
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	$0,-16(%ebp)
	.balign 4,0x90
Lj1394:
	.balign 4,0x90
Lj1397:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	(%eax,%edx,1),%al
	testb	%al,%al
	je	Lj1399
	jmp	Lj1397
Lj1399:
	incl	-16(%ebp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	jne	Lj1400
	jmp	Lj1401
Lj1400:
	incl	-4(%ebp)
Lj1401:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	(%eax,%edx,1),%al
	testb	%al,%al
	je	Lj1396
	jmp	Lj1394
Lj1396:
	movl	-4(%ebp),%eax
	movl	%eax,_envc
	movl	-4(%ebp),%edx
	shll	$2,%edx
	addl	$16384,%edx
	movl	$_environ,%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	$0,-4(%ebp)
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	$0,-16(%ebp)
	.balign 4,0x90
Lj1414:
	movl	_environ,%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	%edx,(%eax,%ecx,4)
	incl	-4(%ebp)
	.balign 4,0x90
Lj1419:
	incl	-8(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj1421
	jmp	Lj1419
Lj1421:
	incl	-8(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj1416
	jmp	Lj1414
Lj1416:
	movl	_environ,%ecx
	movl	-4(%ebp),%eax
	movl	$_$DOS$_Ld7+1,%edx
	movl	%edx,(%ecx,%eax,4)
Lj1379:
	leave
	ret

.text
	.balign 4,0x90
DOS_DONEENVIRONMENT:
	pushl	%ebp
	movl	%esp,%ebp
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj1426
	jmp	Lj1427
Lj1426:
	movl	_envc,%edx
	shll	$2,%edx
	addl	$16384,%edx
	movl	_environ,%eax
	call	SYSTEM_FREEMEM$POINTER$LONGWORD
Lj1427:
	leave
	ret

.text
	.balign 4,0x90
.globl	INIT$_DOS
INIT$_DOS:
.globl	_DOS_init
_DOS_init:
	pushl	%ebp
	movl	%esp,%ebp
	movl	TC_SYSTEM_EXITPROC,%eax
	movl	%eax,U_DOS_OLDEXIT
	movl	$DOS_DONEENVIRONMENT,%eax
	movl	%eax,TC_SYSTEM_EXITPROC
	call	DOS_INITENVIRONMENT
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1438
	movl	U_DOS_LASTDOSEXITCODE,%eax
	call	*%edx
	jmp	Lj1439
Lj1438:
	movl	$U_DOS_LASTDOSEXITCODE+4,%eax
Lj1439:
	movl	$0,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1442
	movl	U_DOS_EXECFLAGS,%eax
	call	*%edx
	jmp	Lj1443
Lj1442:
	movl	$U_DOS_EXECFLAGS+4,%eax
Lj1443:
	movl	$0,(%eax)
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.bss
	.balign 4
	.globl U_DOS_DOSERROR
U_DOS_DOSERROR:
	.zero 8

.bss
	.balign 4
	.globl U_DOS_EXECFLAGS
U_DOS_EXECFLAGS:
	.zero 8

.bss
	.balign 4
U_DOS_LASTDOSEXITCODE:
	.zero 8

.bss
	.balign 4
U_DOS_LASTSR:
	.zero 290

.bss
	.balign 4
U_DOS_OLDEXIT:
	.zero 4

.data
	.balign 4
.globl	THREADVARLIST_DOS
THREADVARLIST_DOS:
	.long	U_DOS_DOSERROR
	.long	4
	.long	U_DOS_EXECFLAGS
	.long	4
	.long	U_DOS_LASTDOSEXITCODE
	.long	4
	.long	U_DOS_LASTSR
	.long	286,0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.balign 4
TC_DOS_GETMSCOUNT$$INT64_DAYTABLE:
	.long	0,31,59,90,120,151,181,212,243,273,304,334,0,31,60,91,121,152,182,213,244,274,305,335

.data
	.balign 4
.globl	_$DOS$_Ld1
_$DOS$_Ld1:
	.ascii	"\001\\\000"

.data
	.balign 4
.globl	_$DOS$_Ld2
_$DOS$_Ld2:
	.ascii	"\001:\000"

.data
	.balign 4
.globl	_$DOS$_Ld3
_$DOS$_Ld3:
	.ascii	"\003\\.\\\000"

.data
	.balign 4
.globl	_$DOS$_Ld4
_$DOS$_Ld4:
	.ascii	"\004\\..\\\000"

.data
	.balign 4
.globl	_$DOS$_Ld5
_$DOS$_Ld5:
	.ascii	"\003\\..\000"

.data
	.balign 4
.globl	_$DOS$_Ld6
_$DOS$_Ld6:
	.ascii	"\000\000"

.data
	.balign 4
.globl	_$DOS$_Ld7
_$DOS$_Ld7:
	.ascii	"\001\000\000"
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
.globl	INIT_DOS_SEARCHREC
INIT_DOS_SEARCHREC:
	.byte	13,9
	.ascii	"searchrec"
	.long	286,0

.data
	.balign 4
.globl	RTTI_DOS_DEF2
RTTI_DOS_DEF2:
	.byte	12
	.ascii	"\000"
	.long	1,13
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_DOS_DEF3
RTTI_DOS_DEF3:
	.byte	12
	.ascii	"\000"
	.long	1,21
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_DOS_SEARCHREC
RTTI_DOS_SEARCHREC:
	.byte	13,9
	.ascii	"searchrec"
	.long	286,12
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_DOSCALLS_PFILEFINDBUF3
	.long	4
	.long	RTTI_DOS_DEF2
	.long	8
	.long	RTTI_SYSTEM_BYTE
	.long	21
	.long	RTTI_SYSTEM_LONGINT
	.long	22
	.long	RTTI_SYSTEM_LONGINT
	.long	26
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	30
	.long	RTTI_DOS_DEF3
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	21
	.long	RTTI_SYSTEM_LONGINT
	.long	22
	.long	RTTI_SYSTEM_LONGINT
	.long	26
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	30

.data
	.balign 4
.globl	INIT_DOS_REGISTERS
INIT_DOS_REGISTERS:
	.byte	13,9
	.ascii	"Registers"
	.long	46,0

.data
	.balign 4
.globl	RTTI_DOS_REGISTERS
RTTI_DOS_REGISTERS:
	.byte	13,9
	.ascii	"Registers"
	.long	46,43
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_WORD
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	10
	.long	RTTI_SYSTEM_WORD
	.long	12
	.long	RTTI_SYSTEM_WORD
	.long	14
	.long	RTTI_SYSTEM_WORD
	.long	16
	.long	RTTI_SYSTEM_WORD
	.long	18
	.long	RTTI_SYSTEM_WORD
	.long	20
	.long	RTTI_SYSTEM_WORD
	.long	22
	.long	RTTI_SYSTEM_WORD
	.long	24
	.long	RTTI_SYSTEM_WORD
	.long	26
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
	.long	RTTI_SYSTEM_WORD
	.long	38
	.long	RTTI_SYSTEM_WORD
	.long	40
	.long	RTTI_SYSTEM_WORD
	.long	42
	.long	RTTI_SYSTEM_WORD
	.long	44
	.long	RTTI_SYSTEM_BYTE
	.long	4
	.long	RTTI_SYSTEM_BYTE
	.long	5
	.long	RTTI_SYSTEM_BYTE
	.long	6
	.long	RTTI_SYSTEM_BYTE
	.long	7
	.long	RTTI_SYSTEM_BYTE
	.long	8
	.long	RTTI_SYSTEM_BYTE
	.long	9
	.long	RTTI_SYSTEM_BYTE
	.long	10
	.long	RTTI_SYSTEM_BYTE
	.long	11
	.long	RTTI_SYSTEM_BYTE
	.long	12
	.long	RTTI_SYSTEM_BYTE
	.long	13
	.long	RTTI_SYSTEM_BYTE
	.long	14
	.long	RTTI_SYSTEM_BYTE
	.long	15
	.long	RTTI_SYSTEM_BYTE
	.long	16
	.long	RTTI_SYSTEM_BYTE
	.long	17
	.long	RTTI_SYSTEM_LONGINT
	.long	4
	.long	RTTI_SYSTEM_LONGINT
	.long	8
	.long	RTTI_SYSTEM_LONGINT
	.long	12
	.long	RTTI_SYSTEM_LONGINT
	.long	16
	.long	RTTI_SYSTEM_LONGINT
	.long	20
	.long	RTTI_SYSTEM_LONGINT
	.long	24
	.long	RTTI_SYSTEM_LONGINT
	.long	28

.data
	.balign 4
.globl	INIT_DOS_FILEREC
INIT_DOS_FILEREC:
	.byte	13,7
	.ascii	"FileRec"
	.long	332,0

.data
	.balign 4
.globl	RTTI_DOS_DEF7
RTTI_DOS_DEF7:
	.byte	12
	.ascii	"\000"
	.long	1,32
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_DOS_DEF8
RTTI_DOS_DEF8:
	.byte	12
	.ascii	"\000"
	.long	1,32
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_DOS_DEF9
RTTI_DOS_DEF9:
	.byte	12
	.ascii	"\000"
	.long	1,256
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOS_FILEREC
RTTI_DOS_FILEREC:
	.byte	13,7
	.ascii	"FileRec"
	.long	332,6
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4
	.long	RTTI_SYSTEM_LONGINT
	.long	8
	.long	RTTI_DOS_DEF7
	.long	12
	.long	RTTI_DOS_DEF8
	.long	44
	.long	RTTI_DOS_DEF9
	.long	76

.data
	.balign 4
.globl	INIT_DOS_TLINEENDSTR
INIT_DOS_TLINEENDSTR:
	.byte	7,11
	.ascii	"TLineEndStr"
	.byte	3

.data
	.balign 4
.globl	RTTI_DOS_TLINEENDSTR
RTTI_DOS_TLINEENDSTR:
	.byte	7,11
	.ascii	"TLineEndStr"
	.byte	3

.data
	.balign 4
.globl	INIT_DOS_TEXTBUF
INIT_DOS_TEXTBUF:
	.byte	12
	.ascii	"\007TextBuf"
	.long	1,256
	.long	INIT_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOS_TEXTBUF
RTTI_DOS_TEXTBUF:
	.byte	12
	.ascii	"\007TextBuf"
	.long	1,256
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	INIT_DOS_TEXTREC
INIT_DOS_TEXTREC:
	.byte	13,7
	.ascii	"TextRec"
	.long	592,0

.data
	.balign 4
.globl	RTTI_DOS_DEF13
RTTI_DOS_DEF13:
	.byte	0
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_DOS_DEF14
RTTI_DOS_DEF14:
	.byte	12
	.ascii	"\000"
	.long	1,32
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_DOS_DEF15
RTTI_DOS_DEF15:
	.byte	12
	.ascii	"\000"
	.long	1,256
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOS_TEXTREC
RTTI_DOS_TEXTREC:
	.byte	13,7
	.ascii	"TextRec"
	.long	592,15
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4
	.long	RTTI_SYSTEM_LONGINT
	.long	8
	.long	RTTI_SYSTEM_LONGINT
	.long	12
	.long	RTTI_SYSTEM_LONGINT
	.long	16
	.long	RTTI_SYSTEM_LONGINT
	.long	20
	.long	RTTI_DOS_DEF13
	.long	24
	.long	RTTI_SYSTEM_POINTER
	.long	28
	.long	RTTI_SYSTEM_POINTER
	.long	32
	.long	RTTI_SYSTEM_POINTER
	.long	36
	.long	RTTI_SYSTEM_POINTER
	.long	40
	.long	RTTI_DOS_DEF14
	.long	44
	.long	RTTI_DOS_DEF15
	.long	76
	.long	RTTI_DOS_TLINEENDSTR
	.long	332
	.long	RTTI_DOS_TEXTBUF
	.long	336

.data
	.balign 4
.globl	INIT_DOS_DATETIME
INIT_DOS_DATETIME:
	.byte	13,8
	.ascii	"DateTime"
	.long	12,0

.data
	.balign 4
.globl	RTTI_DOS_DATETIME
RTTI_DOS_DATETIME:
	.byte	13,8
	.ascii	"DateTime"
	.long	12,6
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_WORD
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	10
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

