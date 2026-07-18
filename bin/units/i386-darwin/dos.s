# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DOS_DODIRSEPARATORS$SHORTSTRING
_DOS_DODIRSEPARATORS$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj4
Lj4:
	popl	%ecx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	$1,-8(%ebp)
	cmpl	-8(%ebp),%eax
	jl	Lj6
	decl	-8(%ebp)
	.align 2
Lj7:
	incl	-8(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-8(%ebp),%ebx
	movzbl	(%edx,%ebx,1),%edx
	movl	L_TC_SYSTEM_ALLOWDIRECTORYSEPARATORS$non_lazy_ptr-Lj4(%ecx),%ebx
	btl	%edx,(%ebx)
	jc	Lj8
	jmp	Lj9
Lj8:
	movl	-4(%ebp),%edx
	movzbl	-8(%ebp),%ebx
	movb	$47,(%edx,%ebx,1)
Lj9:
	cmpl	-8(%ebp),%eax
	jg	Lj7
Lj6:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_DODIRSEPARATORS$PCHAR
_DOS_DODIRSEPARATORS$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj13
Lj13:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%eax
	jl	Lj15
	decl	-8(%ebp)
	.align 2
Lj16:
	incl	-8(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movzbl	(%ecx,%edx,1),%edx
	movl	L_TC_SYSTEM_ALLOWDIRECTORYSEPARATORS$non_lazy_ptr-Lj13(%ebx),%ecx
	btl	%edx,(%ecx)
	jc	Lj19
	jmp	Lj20
Lj19:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movb	$47,(%edx,%ecx,1)
Lj20:
	cmpl	-8(%ebp),%eax
	jg	Lj16
Lj15:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_DOSEXITCODE$$WORD
_DOS_DOSEXITCODE$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj24
Lj24:
	popl	%ebx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj24(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj27
	movl	L_U_DOS_LASTDOSEXITCODE$non_lazy_ptr-Lj24(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj28
Lj27:
	movl	L_U_DOS_LASTDOSEXITCODE$non_lazy_ptr-Lj24(%ebx),%edx
	leal	4(%edx),%eax
Lj28:
	movl	(%eax),%eax
	cmpl	$65535,%eax
	jg	Lj25
	jmp	Lj26
Lj25:
	movw	$65535,-2(%ebp)
	jmp	Lj31
Lj26:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj24(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj34
	movl	L_U_DOS_LASTDOSEXITCODE$non_lazy_ptr-Lj24(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj35
Lj34:
	movl	L_U_DOS_LASTDOSEXITCODE$non_lazy_ptr-Lj24(%ebx),%edx
	leal	4(%edx),%eax
Lj35:
	movl	(%eax),%eax
	andl	$65535,%eax
	movw	%ax,-2(%ebp)
Lj31:
	movw	-2(%ebp),%ax
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_GETCBREAK$BOOLEAN
_DOS_GETCBREAK$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,(%eax)
	leave
	ret

.text
	.align 4
.globl	_DOS_SETCBREAK$BOOLEAN
_DOS_SETCBREAK$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DOS_GETVERIFY$BOOLEAN
_DOS_GETVERIFY$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj43
Lj43:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	L_U_DOS_VERIFYVALUE$non_lazy_ptr-Lj43(%edx),%ecx
	movb	(%ecx),%cl
	movb	%cl,(%eax)
	leave
	ret

.text
	.align 4
.globl	_DOS_SETVERIFY$BOOLEAN
_DOS_SETVERIFY$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj47
Lj47:
	popl	%edx
	movb	%al,-4(%ebp)
	movb	-4(%ebp),%al
	movl	L_U_DOS_VERIFYVALUE$non_lazy_ptr-Lj47(%edx),%ecx
	movb	%al,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DOS_INTR$BYTE$REGISTERS
_DOS_INTR$BYTE$REGISTERS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DOS_MSDOS$REGISTERS
_DOS_MSDOS$REGISTERS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movb	$33,%al
	call	L_DOS_INTR$BYTE$REGISTERS$stub
	leave
	ret

.text
	.align 4
.globl	_DOS_SWAPVECTORS
_DOS_SWAPVECTORS:
	pushl	%ebp
	movl	%esp,%ebp
	leave
	ret

.text
	.align 4
.globl	_DOS_GETINTVEC$BYTE$POINTER
_DOS_GETINTVEC$BYTE$POINTER:
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
	.align 4
.globl	_DOS_SETINTVEC$BYTE$POINTER
_DOS_SETINTVEC$BYTE$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DOS_KEEP$WORD
_DOS_KEEP$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DOS_GETSHORTNAME$SHORTSTRING$$BOOLEAN
_DOS_GETSHORTNAME$SHORTSTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$1,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DOS_GETLONGNAME$SHORTSTRING$$BOOLEAN
_DOS_GETLONGNAME$SHORTSTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$1,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DOS_PACKTIME$DATETIME$LONGINT
_DOS_PACKTIME$DATETIME$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
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
	.align 4
.globl	_DOS_UNPACKTIME$LONGINT$DATETIME
_DOS_UNPACKTIME$LONGINT$DATETIME:
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
	.align 4
.globl	_DOS_FSPLIT$SHORTSTRING$SHORTSTRING$SHORTSTRING$SHORTSTRING
_DOS_FSPLIT$SHORTSTRING$SHORTSTRING$SHORTSTRING$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$536,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	leal	-276(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	leal	-276(%ebp),%eax
	call	L_DOS_DODIRSEPARATORS$SHORTSTRING$stub
	movzbl	-276(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj135
	.align 2
Lj134:
	decl	-16(%ebp)
Lj135:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj138
	jmp	Lj136
Lj138:
	movzbl	-16(%ebp),%eax
	movb	-276(%ebp,%eax,1),%al
	cmpb	$47,%al
	jne	Lj137
	jmp	Lj136
Lj137:
	movzbl	-16(%ebp),%eax
	movzbl	-276(%ebp,%eax,1),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-532(%ebp)
	movzbl	-532(%ebp),%eax
	testl	%eax,%eax
	jne	Lj134
	jmp	Lj136
Lj136:
	movzbl	-276(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj142
	.align 2
Lj141:
	decl	-20(%ebp)
Lj142:
	movl	-20(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj144
	jmp	Lj143
Lj144:
	movzbl	-20(%ebp),%eax
	movb	-276(%ebp,%eax,1),%al
	cmpb	$46,%al
	jne	Lj141
	jmp	Lj143
Lj143:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj145
	jmp	Lj146
Lj145:
	movzbl	-276(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj149
Lj146:
	movzbl	-20(%ebp),%eax
	movb	-276(%ebp,%eax,1),%al
	cmpb	$46,%al
	jne	Lj150
	jmp	Lj151
Lj150:
	movzbl	-276(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
Lj151:
Lj149:
	leal	-532(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	leal	-276(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_shortstr_copy$stub
	leal	-532(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leal	-532(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	decl	%ecx
	movl	-16(%ebp),%edx
	incl	%edx
	leal	-276(%ebp),%eax
	call	Lfpc_shortstr_copy$stub
	leal	-532(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leal	-532(%ebp),%eax
	movl	%eax,(%esp)
	movzbl	-276(%ebp),%ecx
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	incl	%ecx
	movl	-20(%ebp),%edx
	leal	-276(%ebp),%eax
	call	Lfpc_shortstr_copy$stub
	leal	-532(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leave
	ret

.text
	.align 4
.globl	_DOS_GETDIRIO$BYTE$SHORTSTRING
_DOS_GETDIRIO$BYTE$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj197
Lj197:
	popl	%ebx
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj197(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj200
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj197(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj201
Lj200:
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj197(%ebx),%edx
	leal	4(%edx),%eax
Lj201:
	movw	(%eax),%ax
	movw	%ax,-10(%ebp)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj197(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj204
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj197(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj205
Lj204:
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj197(%ebx),%edx
	leal	4(%edx),%eax
Lj205:
	movw	$0,(%eax)
	movl	-8(%ebp),%edx
	movb	-4(%ebp),%al
	movl	$255,%ecx
	call	L_SYSTEM_GETDIR$BYTE$OPENSTRING$stub
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj197(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj214
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj197(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj215
Lj214:
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj197(%ebx),%edx
	leal	4(%edx),%eax
Lj215:
	movw	-10(%ebp),%dx
	movw	%dx,(%eax)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_FEXPAND$SHORTSTRING$$SHORTSTRING
_DOS_FEXPAND$SHORTSTRING$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1048,%esp
	movl	%ebx,-1044(%ebp)
	call	Lj217
Lj217:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_TC_SYSTEM_FILENAMECASESENSITIVE$non_lazy_ptr-Lj217(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj218
	jmp	Lj219
Lj218:
	movl	-4(%ebp),%ecx
	leal	-520(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	jmp	Lj226
Lj219:
	leal	-1040(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING$stub
	leal	-1040(%ebp),%ecx
	leal	-520(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
Lj226:
	movzbl	-520(%ebp),%eax
	movl	$1,-780(%ebp)
	cmpl	-780(%ebp),%eax
	jl	Lj238
	decl	-780(%ebp)
	.align 2
Lj239:
	incl	-780(%ebp)
	movzbl	-780(%ebp),%edx
	movzbl	-520(%ebp,%edx,1),%edx
	movl	L_TC_SYSTEM_ALLOWDIRECTORYSEPARATORS$non_lazy_ptr-Lj217(%ebx),%ecx
	btl	%edx,(%ecx)
	jc	Lj240
	jmp	Lj241
Lj240:
	movzbl	-780(%ebp),%edx
	movb	$47,-520(%ebp,%edx,1)
Lj241:
	cmpl	-780(%ebp),%eax
	jg	Lj239
Lj238:
	movzbl	-520(%ebp),%eax
	cmpl	$1,%eax
	jge	Lj247
	jmp	Lj245
Lj247:
	movb	-519(%ebp),%al
	cmpb	$126,%al
	je	Lj246
	jmp	Lj245
Lj246:
	movb	-518(%ebp),%al
	cmpb	$47,%al
	je	Lj244
	jmp	Lj248
Lj248:
	movzbl	-520(%ebp),%eax
	cmpl	$1,%eax
	je	Lj244
	jmp	Lj245
Lj244:
	leal	-1040(%ebp),%edx
	movl	L_$DOS$_Ld1$non_lazy_ptr-Lj217(%ebx),%eax
	call	L_DOS_GETENV$SHORTSTRING$$SHORTSTRING$stub
	leal	-1040(%ebp),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movzbl	-264(%ebp),%eax
	testl	%eax,%eax
	je	Lj259
	jmp	Lj261
Lj261:
	movzbl	-264(%ebp),%eax
	cmpl	$1,%eax
	je	Lj263
	jmp	Lj260
Lj263:
	movzbl	-520(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj262
	jmp	Lj260
Lj262:
	movb	-263(%ebp),%al
	cmpb	$47,%al
	je	Lj259
	jmp	Lj260
Lj259:
	movl	$1,(%esp)
	leal	-520(%ebp),%eax
	movl	$1,%ecx
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
	jmp	Lj272
Lj260:
	movzbl	-264(%ebp),%eax
	movb	-264(%ebp,%eax,1),%al
	cmpb	$47,%al
	je	Lj273
	jmp	Lj274
Lj273:
	leal	-1040(%ebp),%eax
	movl	%eax,(%esp)
	movzbl	-520(%ebp),%ecx
	subl	$2,%ecx
	leal	-520(%ebp),%eax
	movl	$3,%edx
	call	Lfpc_shortstr_copy$stub
	leal	-1040(%ebp),%eax
	movl	%eax,(%esp)
	leal	-264(%ebp),%ecx
	leal	-520(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	jmp	Lj291
Lj274:
	leal	-1040(%ebp),%eax
	movl	%eax,(%esp)
	movb	-520(%ebp),%cl
	decb	%cl
	movzbl	%cl,%ecx
	leal	-520(%ebp),%eax
	movl	$2,%edx
	call	Lfpc_shortstr_copy$stub
	leal	-1040(%ebp),%eax
	movl	%eax,(%esp)
	leal	-264(%ebp),%ecx
	leal	-520(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
Lj291:
Lj272:
Lj245:
	movzbl	-520(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj312
	jmp	Lj309
Lj312:
	movzbl	-519(%ebp),%eax
	subl	$65,%eax
	cmpl	$26,%eax
	jb	Lj313
	subl	$32,%eax
	cmpl	$26,%eax
	jb	Lj313
Lj313:
	jc	Lj311
	jmp	Lj309
Lj311:
	movzbl	-518(%ebp),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-1040(%ebp)
	movzbl	-1040(%ebp),%eax
	testl	%eax,%eax
	je	Lj310
	jmp	Lj309
Lj310:
	jmp	Lj308
Lj308:
	movl	$2,(%esp)
	leal	-520(%ebp),%eax
	movl	$1,%ecx
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
Lj309:
	movzbl	-520(%ebp),%eax
	cmpl	$1,%eax
	jge	Lj325
	jmp	Lj324
Lj325:
	movb	-519(%ebp),%al
	cmpb	$47,%al
	jne	Lj322
	jmp	Lj324
Lj324:
	movzbl	-520(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj322
	jmp	Lj323
Lj322:
	leal	-264(%ebp),%edx
	movb	$0,%al
	call	L_DOS_GETDIRIO$BYTE$SHORTSTRING$stub
	movzbl	-264(%ebp),%eax
	cmpl	$1,%eax
	je	Lj330
	jmp	Lj331
Lj330:
	leal	-520(%ebp),%eax
	movl	%eax,(%esp)
	leal	-264(%ebp),%ecx
	leal	-520(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	jmp	Lj340
Lj331:
	movzbl	-520(%ebp),%eax
	testl	%eax,%eax
	je	Lj341
	jmp	Lj342
Lj341:
	movl	L_$DOS$_Ld2$non_lazy_ptr-Lj217(%ebx),%eax
	movl	%eax,(%esp)
	leal	-264(%ebp),%ecx
	leal	-520(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	jmp	Lj351
Lj342:
	movl	$2,(%esp)
	leal	-264(%ebp),%eax
	movl	%eax,-796(%ebp)
	movl	L_$DOS$_Ld2$non_lazy_ptr-Lj217(%ebx),%eax
	movl	%eax,-792(%ebp)
	leal	-520(%ebp),%eax
	movl	%eax,-788(%ebp)
	leal	-796(%ebp),%ecx
	leal	-520(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
Lj351:
Lj340:
Lj323:
	leal	-1040(%ebp),%eax
	movl	%eax,(%esp)
	movzbl	-520(%ebp),%ecx
	decl	%ecx
	leal	-520(%ebp),%eax
	movl	$2,%edx
	call	Lfpc_shortstr_copy$stub
	leal	-1040(%ebp),%ecx
	leal	-776(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leal	-776(%ebp),%edx
	movl	L_$DOS$_Ld3$non_lazy_ptr-Lj217(%ebx),%eax
	call	L_SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT$stub
	movl	%eax,-780(%ebp)
	jmp	Lj381
	.align 2
Lj380:
	movl	$2,(%esp)
	movl	-780(%ebp),%ecx
	leal	-776(%ebp),%eax
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
	leal	-776(%ebp),%edx
	movl	L_$DOS$_Ld3$non_lazy_ptr-Lj217(%ebx),%eax
	call	L_SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT$stub
	movl	%eax,-780(%ebp)
Lj381:
	movl	-780(%ebp),%eax
	testl	%eax,%eax
	jne	Lj380
	jmp	Lj382
Lj382:
	leal	-776(%ebp),%edx
	movl	L_$DOS$_Ld4$non_lazy_ptr-Lj217(%ebx),%eax
	call	L_SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT$stub
	movl	%eax,-780(%ebp)
	jmp	Lj404
	.align 2
Lj403:
	movl	-780(%ebp),%eax
	decl	%eax
	movl	%eax,-784(%ebp)
	jmp	Lj409
	.align 2
Lj408:
	decl	-784(%ebp)
Lj409:
	movl	-784(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj411
	jmp	Lj410
Lj411:
	movzbl	-784(%ebp),%eax
	movb	-776(%ebp,%eax,1),%al
	cmpb	$47,%al
	jne	Lj408
	jmp	Lj410
Lj410:
	movl	-780(%ebp),%eax
	movl	-784(%ebp),%edx
	subl	%edx,%eax
	addl	$3,%eax
	movl	%eax,(%esp)
	movl	-784(%ebp),%ecx
	incl	%ecx
	leal	-776(%ebp),%eax
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
	leal	-776(%ebp),%edx
	movl	L_$DOS$_Ld4$non_lazy_ptr-Lj217(%ebx),%eax
	call	L_SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT$stub
	movl	%eax,-780(%ebp)
Lj404:
	movl	-780(%ebp),%eax
	testl	%eax,%eax
	jne	Lj403
	jmp	Lj405
Lj405:
	leal	-776(%ebp),%edx
	movl	L_$DOS$_Ld5$non_lazy_ptr-Lj217(%ebx),%eax
	call	L_SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT$stub
	movl	%eax,-780(%ebp)
	movl	-780(%ebp),%eax
	testl	%eax,%eax
	jne	Lj434
	jmp	Lj433
Lj434:
	movzbl	-776(%ebp),%eax
	subl	$2,%eax
	cmpl	-780(%ebp),%eax
	je	Lj432
	jmp	Lj433
Lj432:
	movl	-780(%ebp),%eax
	decl	%eax
	movl	%eax,-784(%ebp)
	jmp	Lj438
	.align 2
Lj437:
	decl	-784(%ebp)
Lj438:
	movl	-784(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj440
	jmp	Lj439
Lj440:
	movzbl	-784(%ebp),%eax
	movb	-776(%ebp,%eax,1),%al
	cmpb	$47,%al
	jne	Lj437
	jmp	Lj439
Lj439:
	movl	-784(%ebp),%eax
	testl	%eax,%eax
	je	Lj441
	jmp	Lj442
Lj441:
	movb	$0,-776(%ebp)
	jmp	Lj445
Lj442:
	movl	-780(%ebp),%eax
	movl	-784(%ebp),%edx
	subl	%edx,%eax
	addl	$2,%eax
	movl	%eax,(%esp)
	movl	-784(%ebp),%ecx
	incl	%ecx
	leal	-776(%ebp),%eax
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
Lj445:
Lj433:
	movzbl	-776(%ebp),%eax
	cmpl	$1,%eax
	je	Lj454
	jmp	Lj455
Lj454:
	movb	-775(%ebp),%al
	cmpb	$46,%al
	je	Lj456
	jmp	Lj457
Lj456:
	movb	$0,-776(%ebp)
Lj457:
	jmp	Lj460
Lj455:
	movzbl	-776(%ebp),%eax
	testl	%eax,%eax
	jne	Lj464
	jmp	Lj462
Lj464:
	movzbl	-776(%ebp),%eax
	movb	-776(%ebp,%eax,1),%al
	cmpb	$46,%al
	je	Lj463
	jmp	Lj462
Lj463:
	movb	-776(%ebp),%al
	decb	%al
	movzbl	%al,%eax
	movb	-776(%ebp,%eax,1),%al
	cmpb	$47,%al
	je	Lj461
	jmp	Lj462
Lj461:
	movl	$2,(%esp)
	movzbl	-776(%ebp),%ecx
	decl	%ecx
	leal	-776(%ebp),%eax
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
Lj462:
Lj460:
	jmp	Lj474
	.align 2
Lj473:
	movl	$2,(%esp)
	leal	-776(%ebp),%eax
	movl	$1,%ecx
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
Lj474:
	movzbl	-776(%ebp),%eax
	cmpl	$2,%eax
	jge	Lj485
	jmp	Lj475
Lj485:
	movb	-775(%ebp),%al
	cmpb	$46,%al
	je	Lj484
	jmp	Lj475
Lj484:
	movb	-774(%ebp),%al
	cmpb	$47,%al
	je	Lj473
	jmp	Lj475
Lj475:
	jmp	Lj487
	.align 2
Lj486:
	movl	$3,(%esp)
	leal	-776(%ebp),%eax
	movl	$1,%ecx
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
Lj487:
	movzbl	-776(%ebp),%eax
	cmpl	$3,%eax
	jge	Lj499
	jmp	Lj488
Lj499:
	movb	-775(%ebp),%al
	cmpb	$46,%al
	je	Lj498
	jmp	Lj488
Lj498:
	movb	-774(%ebp),%al
	cmpb	$46,%al
	je	Lj497
	jmp	Lj488
Lj497:
	movb	-773(%ebp),%al
	cmpb	$47,%al
	je	Lj486
	jmp	Lj488
Lj488:
	movzbl	-776(%ebp),%eax
	cmpl	$1,%eax
	je	Lj502
	jmp	Lj501
Lj502:
	movb	-775(%ebp),%al
	cmpb	$46,%al
	je	Lj500
	jmp	Lj501
Lj500:
	movb	$0,-776(%ebp)
Lj501:
	movzbl	-776(%ebp),%eax
	cmpl	$2,%eax
	je	Lj508
	jmp	Lj506
Lj508:
	movb	-775(%ebp),%al
	cmpb	$46,%al
	je	Lj507
	jmp	Lj506
Lj507:
	movb	-774(%ebp),%al
	cmpb	$46,%al
	je	Lj505
	jmp	Lj506
Lj505:
	movb	$0,-776(%ebp)
Lj506:
	movzbl	-776(%ebp),%eax
	testl	%eax,%eax
	je	Lj511
	jmp	Lj512
Lj511:
	leal	-1040(%ebp),%eax
	movl	%eax,(%esp)
	leal	-520(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	Lfpc_shortstr_copy$stub
	leal	-1040(%ebp),%ecx
	leal	-520(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movb	-519(%ebp),%al
	cmpb	$47,%al
	jne	Lj527
	jmp	Lj528
Lj527:
	movl	L_$DOS$_Ld2$non_lazy_ptr-Lj217(%ebx),%eax
	movl	%eax,(%esp)
	leal	-520(%ebp),%ecx
	leal	-520(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
Lj528:
	jmp	Lj537
Lj512:
	leal	-1040(%ebp),%eax
	movl	%eax,(%esp)
	leal	-520(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	Lfpc_shortstr_copy$stub
	leal	-1040(%ebp),%ecx
	leal	-776(%ebp),%eax
	movl	%eax,(%esp)
	leal	-520(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
Lj537:
	movzbl	-520(%ebp),%eax
	movb	-520(%ebp,%eax,1),%al
	cmpb	$47,%al
	je	Lj558
	jmp	Lj555
Lj558:
	movzbl	-520(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj557
	jmp	Lj559
Lj559:
	jmp	Lj555
	movzbl	-520(%ebp),%eax
	cmpl	$1,%eax
	je	Lj557
	jmp	Lj555
Lj557:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj556
	jmp	Lj555
Lj556:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$47,%al
	jne	Lj554
	jmp	Lj555
Lj554:
	movl	$1,(%esp)
	movzbl	-520(%ebp),%ecx
	leal	-520(%ebp),%eax
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
Lj555:
	leal	-520(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-1044(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_GREGORIANTOJULIAN$LONGINT$LONGINT$LONGINT$$LONGINT
_DOS_GREGORIANTOJULIAN$LONGINT$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$2,%eax
	jle	Lj577
	jmp	Lj578
Lj577:
	decl	-4(%ebp)
	addl	$12,-8(%ebp)
Lj578:
	subl	$3,-8(%ebp)
	movl	-4(%ebp),%ecx
	movl	$1374389535,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	imull	$146097,%edx
	shrl	$2,%edx
	movl	%edx,-20(%ebp)
	movl	-4(%ebp),%eax
	cltd
	movl	$100,%ecx
	idivl	%ecx
	imull	$1461,%edx
	shrl	$2,%edx
	movl	%edx,-24(%ebp)
	movl	-8(%ebp),%ecx
	imull	$153,%ecx
	addl	$2,%ecx
	movl	$1717986919,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$1,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	addl	$1721119,%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOS_LOCALTOEPOCH$WORD$WORD$WORD$WORD$WORD$WORD$$LONGINT
_DOS_LOCALTOEPOCH$WORD$WORD$WORD$WORD$WORD$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj586
Lj586:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	-12(%ebp),%ecx
	movzwl	-8(%ebp),%edx
	movzwl	-4(%ebp),%eax
	call	L_DOS_GREGORIANTOJULIAN$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	subl	$2440588,%eax
	imull	$86400,%eax
	movzwl	16(%ebp),%edx
	imull	$3600,%edx
	addl	%edx,%eax
	movzwl	12(%ebp),%edx
	imull	$60,%edx
	addl	%edx,%eax
	movzwl	8(%ebp),%edx
	addl	%edx,%eax
	movl	L_U_UNIXUTIL_TZSECONDS$non_lazy_ptr-Lj586(%ebx),%edx
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_JULIANTOGREGORIAN$LONGINT$WORD$WORD$WORD
_DOS_JULIANTOGREGORIAN$LONGINT$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	subl	$1721119,%eax
	shll	$2,%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%ecx
	movl	$963315389,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$15,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-4(%ebp)
	movl	-24(%ebp),%eax
	cltd
	movl	$146097,%ecx
	idivl	%ecx
	orl	$3,%edx
	movl	%edx,-20(%ebp)
	movl	-20(%ebp),%ecx
	movl	$376287347,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$7,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-20(%ebp),%eax
	cltd
	movl	$1461,%ecx
	idivl	%ecx
	addl	$4,%edx
	shrl	$2,%edx
	imull	$5,%edx
	subl	$3,%edx
	movl	%edx,-24(%ebp)
	movl	-24(%ebp),%eax
	cltd
	movl	$153,%ecx
	idivl	%ecx
	movl	%edx,%ecx
	addl	$5,%ecx
	movl	$1717986919,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$1,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	8(%ebp),%eax
	movw	%dx,(%eax)
	movl	-24(%ebp),%ecx
	movl	$-701792041,%eax
	imull	%ecx
	movl	%ecx,%eax
	addl	%eax,%edx
	sarl	$7,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$10,%eax
	jge	Lj611
	jmp	Lj612
Lj611:
	incl	-16(%ebp)
	subl	$12,-28(%ebp)
Lj612:
	addl	$3,-28(%ebp)
	movl	-12(%ebp),%eax
	movw	-28(%ebp),%dx
	movw	%dx,(%eax)
	movl	-4(%ebp),%eax
	imull	$100,%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_DOS_EPOCHTOLOCAL$LONGINT$WORD$WORD$WORD$WORD$WORD$WORD
_DOS_EPOCHTOLOCAL$LONGINT$WORD$WORD$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj618
Lj618:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_U_UNIXUTIL_TZSECONDS$non_lazy_ptr-Lj618(%ebx),%eax
	movl	(%eax),%eax
	addl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	$-1037155065,%eax
	imull	%ecx
	movl	%ecx,%eax
	addl	%eax,%edx
	sarl	$16,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	addl	$2440588,%edx
	movl	%edx,-16(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DOS_JULIANTOGREGORIAN$LONGINT$WORD$WORD$WORD$stub
	movl	-4(%ebp),%eax
	cltd
	movl	$86400,%ecx
	idivl	%ecx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	$-1851608123,%eax
	imull	%ecx
	movl	%ecx,%eax
	addl	%eax,%edx
	sarl	$11,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	16(%ebp),%eax
	movw	%dx,(%eax)
	movl	-4(%ebp),%eax
	cltd
	movl	$3600,%ecx
	idivl	%ecx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	$-2004318071,%eax
	imull	%ecx
	movl	%ecx,%eax
	addl	%eax,%edx
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	12(%ebp),%eax
	movw	%dx,(%eax)
	movl	-4(%ebp),%eax
	cltd
	movl	$60,%ecx
	idivl	%ecx
	movl	8(%ebp),%eax
	movw	%dx,(%eax)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_DOSVERSION$$WORD
_DOS_DOSVERSION$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1896,%esp
	leal	-1632(%ebp),%eax
	call	L_BASEUNIX_FPUNAME$UTSNAME$$LONGINT$stub
	leal	-258(%ebp),%edx
	leal	-1120(%ebp),%eax
	movl	$40,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	leal	-258(%ebp),%eax
	leal	-1888(%ebp),%edx
	call	L_STRINGS_STRPAS$PCHAR$$SHORTSTRING$stub
	leal	-1888(%ebp),%ecx
	leal	-340(%ebp),%eax
	movl	$40,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	$0,-348(%ebp)
	leal	-340(%ebp),%edx
	movb	$46,%al
	call	L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub
	movl	%eax,-344(%ebp)
	movl	-344(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj667
	jmp	Lj668
Lj667:
	leal	-1888(%ebp),%eax
	movl	%eax,(%esp)
	movl	-344(%ebp),%edx
	incl	%edx
	leal	-340(%ebp),%eax
	movl	$40,%ecx
	call	Lfpc_shortstr_copy$stub
	leal	-1888(%ebp),%ecx
	leal	-299(%ebp),%eax
	movl	$40,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	$40,(%esp)
	movl	-344(%ebp),%ecx
	leal	-340(%ebp),%eax
	movl	$40,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
Lj668:
	leal	-299(%ebp),%edx
	movb	$46,%al
	call	L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub
	movl	%eax,-344(%ebp)
	movl	-344(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj697
	jmp	Lj698
Lj697:
	movl	$40,(%esp)
	movl	-344(%ebp),%ecx
	leal	-299(%ebp),%eax
	movl	$40,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
Lj698:
	leal	-1636(%ebp),%ecx
	leal	-340(%ebp),%edx
	movl	$4,%eax
	call	Lfpc_val_sint_shortstr$stub
	movl	%eax,-352(%ebp)
	leal	-1636(%ebp),%ecx
	leal	-299(%ebp),%edx
	movl	$4,%eax
	call	Lfpc_val_sint_shortstr$stub
	movl	%eax,-348(%ebp)
	movl	-348(%ebp),%eax
	shll	$8,%eax
	movl	-352(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DOS_WEEKDAY$LONGINT$LONGINT$LONGINT$$LONGINT
_DOS_WEEKDAY$LONGINT$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj727
	jmp	Lj734
Lj734:
	movl	-8(%ebp),%eax
	cmpl	$12,%eax
	jg	Lj727
	jmp	Lj733
Lj733:
	movl	-4(%ebp),%eax
	cmpl	$1600,%eax
	jl	Lj727
	jmp	Lj732
Lj732:
	movl	-4(%ebp),%eax
	cmpl	$4000,%eax
	jg	Lj727
	jmp	Lj731
Lj731:
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj727
	jmp	Lj730
Lj730:
	movl	-8(%ebp),%eax
	cmpl	$7,%eax
	setgb	%al
	movzbl	%al,%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	andl	$1,%eax
	addl	$30,%eax
	movl	-8(%ebp),%edx
	cmpl	$2,%edx
	seteb	%dl
	movzbl	%dl,%edx
	subl	%edx,%eax
	cmpl	-12(%ebp),%eax
	jl	Lj727
	jmp	Lj729
Lj729:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	imull	%edx,%eax
	cmpl	$58,%eax
	je	Lj739
	jmp	Lj728
Lj739:
	movl	-4(%ebp),%eax
	cltd
	movl	$4,%ecx
	idivl	%ecx
	cmpl	$0,%edx
	jg	Lj740
	jmp	Lj741
Lj741:
	movl	-4(%ebp),%eax
	cltd
	movl	$100,%ecx
	idivl	%ecx
	testl	%edx,%edx
	je	Lj740
	jmp	Lj728
Lj740:
	movl	-4(%ebp),%eax
	cltd
	movl	$400,%ecx
	idivl	%ecx
	cmpl	$0,%edx
	jg	Lj727
	jmp	Lj728
Lj727:
	movl	$-1,-16(%ebp)
	jmp	Lj744
Lj728:
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$3,%eax
	jl	Lj749
	jmp	Lj750
Lj749:
	addl	$12,-20(%ebp)
	decl	-24(%ebp)
Lj750:
	movl	-20(%ebp),%ecx
	incl	%ecx
	imull	$3,%ecx
	movl	$1717986919,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$1,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,%ecx
	movl	-20(%ebp),%eax
	shll	$1,%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	addl	%eax,%ecx
	movl	-24(%ebp),%eax
	addl	%eax,%ecx
	movl	-24(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$3,%eax
	addl	%eax,%edx
	sarl	$2,%edx
	addl	%edx,%ecx
	movl	-24(%ebp),%ebx
	movl	$1374389535,%eax
	imull	%ebx
	movl	%ebx,%eax
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	subl	%edx,%ecx
	movl	-24(%ebp),%ebx
	movl	$1374389535,%eax
	imull	%ebx
	movl	%ebx,%eax
	sarl	$7,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	addl	%edx,%ecx
	incl	%ecx
	movl	%ecx,%eax
	cltd
	movl	$7,%ecx
	idivl	%ecx
	movl	%edx,-16(%ebp)
Lj744:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_GETDATE$WORD$WORD$WORD$WORD
_DOS_GETDATE$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-20(%ebp),%eax
	movl	$0,%edx
	call	LFPC_SYSC_GETTIMEOFDAY$stub
	leal	-26(%ebp),%eax
	movl	%eax,(%esp)
	leal	-24(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-22(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_DOS_EPOCHTOLOCAL$LONGINT$WORD$WORD$WORD$WORD$WORD$WORD$stub
	movl	-12(%ebp),%eax
	movzwl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movzwl	(%eax),%edx
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	call	L_DOS_WEEKDAY$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	movl	8(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_DOS_SETTIME$WORD$WORD$WORD$WORD
_DOS_SETTIME$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	leal	-14(%ebp),%eax
	movl	%eax,(%esp)
	leal	-20(%ebp),%ecx
	leal	-18(%ebp),%edx
	leal	-16(%ebp),%eax
	call	L_DOS_GETDATE$WORD$WORD$WORD$WORD$stub
	movw	-12(%ebp),%ax
	movw	%ax,(%esp)
	movw	-8(%ebp),%ax
	movw	%ax,4(%esp)
	movw	-4(%ebp),%ax
	movw	%ax,8(%esp)
	movw	-20(%ebp),%cx
	movw	-18(%ebp),%dx
	movw	-16(%ebp),%ax
	call	L_DOS_LOCALTOEPOCH$WORD$WORD$WORD$WORD$WORD$WORD$$LONGINT$stub
	movl	%eax,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	$0,%edx
	call	L_BASEUNIX_FPSETTIMEOFDAY$PTIMEVAL$PTIMEZONE$$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_DOS_SETDATE$WORD$WORD$WORD
_DOS_SETDATE$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	leal	-18(%ebp),%ecx
	leal	-16(%ebp),%edx
	leal	-14(%ebp),%eax
	call	L_DOS_GETTIME$WORD$WORD$WORD$WORD$stub
	movw	-18(%ebp),%ax
	movw	%ax,(%esp)
	movw	-16(%ebp),%ax
	movw	%ax,4(%esp)
	movw	-14(%ebp),%ax
	movw	%ax,8(%esp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DOS_LOCALTOEPOCH$WORD$WORD$WORD$WORD$WORD$WORD$$LONGINT$stub
	movl	%eax,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	$0,%edx
	call	L_BASEUNIX_FPSETTIMEOFDAY$PTIMEVAL$PTIMEZONE$$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_DOS_SETDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$$BOOLEAN
_DOS_SETDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	8(%ebp),%ax
	movw	%ax,(%esp)
	movw	12(%ebp),%ax
	movw	%ax,4(%esp)
	movw	16(%ebp),%ax
	movw	%ax,8(%esp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DOS_LOCALTOEPOCH$WORD$WORD$WORD$WORD$WORD$WORD$$LONGINT$stub
	movl	%eax,-24(%ebp)
	leal	-24(%ebp),%eax
	movl	$0,%edx
	call	L_BASEUNIX_FPSETTIMEOFDAY$PTIMEVAL$PTIMEZONE$$LONGINT$stub
	testl	%eax,%eax
	seteb	-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DOS_GETTIME$WORD$WORD$WORD$WORD
_DOS_GETTIME$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-20(%ebp),%eax
	movl	$0,%edx
	call	LFPC_SYSC_GETTIMEOFDAY$stub
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-26(%ebp),%eax
	movl	%eax,12(%esp)
	leal	-24(%ebp),%ecx
	leal	-22(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_DOS_EPOCHTOLOCAL$LONGINT$WORD$WORD$WORD$WORD$WORD$WORD$stub
	movl	-16(%ebp),%ecx
	movl	$1759218605,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$12,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	8(%ebp),%eax
	movw	%dx,(%eax)
	leave
	ret

.text
	.align 4
.globl	_DOS_UNIXDATETODT$LONGINT$DATETIME
_DOS_UNIXDATETODT$LONGINT$DATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	leal	10(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	leal	8(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	leal	6(%eax),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	leal	2(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DOS_EPOCHTOLOCAL$LONGINT$WORD$WORD$WORD$WORD$WORD$WORD$stub
	leave
	ret

.text
	.align 4
.globl	_DOS_DTTOUNIXDATE$DATETIME$$LONGINT
_DOS_DTTOUNIXDATE$DATETIME$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	8(%edx),%eax
	movl	%eax,-12(%ebp)
	movw	-10(%ebp),%ax
	movw	%ax,(%esp)
	movw	-12(%ebp),%ax
	movw	%ax,4(%esp)
	movw	-14(%ebp),%ax
	movw	%ax,8(%esp)
	movw	-16(%ebp),%cx
	movw	-18(%ebp),%dx
	movw	-20(%ebp),%ax
	call	L_DOS_LOCALTOEPOCH$WORD$WORD$WORD$WORD$WORD$WORD$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOS_GETMSCOUNT$$INT64
_DOS_GETMSCOUNT$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	leal	-16(%ebp),%eax
	movl	$0,%edx
	call	LFPC_SYSC_GETTIMEOFDAY$stub
	movl	$1000,%eax
	imull	-16(%ebp)
	movl	%edx,%ecx
	movl	%eax,%ebx
	movl	-12(%ebp),%esi
	movl	$274877907,%eax
	imull	%esi
	movl	%esi,%eax
	sarl	$6,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	addl	%edx,%ebx
	adcl	%eax,%ecx
	movl	%ebx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOS_EXEC$SHORTSTRING$SHORTSTRING
_DOS_EXEC$SHORTSTRING$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	call	Lj922
Lj922:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj923
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj922(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj928
	movl	L_U_DOS_LASTDOSEXITCODE$non_lazy_ptr-Lj922(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj929
Lj928:
	movl	L_U_DOS_LASTDOSEXITCODE$non_lazy_ptr-Lj922(%ebx),%edx
	leal	4(%edx),%eax
Lj929:
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	je	Lj930
	jmp	Lj931
Lj930:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj922(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj934
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj922(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj935
Lj934:
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj922(%ebx),%edx
	leal	4(%edx),%eax
Lj935:
	movw	$2,(%eax)
	jmp	Lj923
Lj931:
	call	LFPC_SYSC_FORK$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj938
	jmp	Lj939
Lj938:
	movl	$0,-16(%ebp)
	leal	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj946
	jmp	Lj947
Lj946:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-20(%ebp)
	leal	-20(%ebp),%eax
	movw	$1,%dx
	call	L_UNIXUTIL_STRINGTOPPCHAR$ANSISTRING$SMALLINT$$PPCHAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%ecx
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj962
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj922(%ebx),%edx
	movl	%edx,%eax
Lj962:
	movl	%eax,(%ecx)
	jmp	Lj963
Lj947:
	leal	-16(%ebp),%eax
	movl	$8,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-16(%ebp),%ecx
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj970
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj922(%ebx),%edx
	movl	%edx,%eax
Lj970:
	movl	%eax,(%ecx)
	movl	-16(%ebp),%eax
	movl	$0,4(%eax)
Lj963:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj977
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj922(%ebx),%edx
	movl	%edx,%eax
Lj977:
	leal	-68(%ebp),%edx
	call	Lfpc_pchar_to_ansistr$stub
	movl	-68(%ebp),%eax
	movl	-16(%ebp),%edx
	call	L_UNIX_FPEXECV$ANSISTRING$PPCHAR$$LONGINT$stub
	movl	$127,%eax
	call	LFPC_SYSC_EXIT$stub
	jmp	Lj984
Lj939:
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj985
	jmp	Lj986
Lj985:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj922(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj989
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj922(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj990
Lj989:
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj922(%ebx),%edx
	leal	4(%edx),%eax
Lj990:
	movw	$8,(%eax)
	jmp	Lj923
Lj986:
Lj984:
	movl	-12(%ebp),%eax
	call	L_UNIX_WAITPROCESS$LONGINT$$LONGINT$stub
	movl	%eax,%esi
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj922(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj995
	movl	L_U_DOS_LASTDOSEXITCODE$non_lazy_ptr-Lj922(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj996
Lj995:
	movl	L_U_DOS_LASTDOSEXITCODE$non_lazy_ptr-Lj922(%ebx),%edx
	leal	4(%edx),%eax
Lj996:
	movl	%esi,(%eax)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj922(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1000
	movl	L_U_DOS_LASTDOSEXITCODE$non_lazy_ptr-Lj922(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj1001
Lj1000:
	movl	L_U_DOS_LASTDOSEXITCODE$non_lazy_ptr-Lj922(%ebx),%edx
	leal	4(%edx),%eax
Lj1001:
	movl	(%eax),%eax
	cmpl	$0,%eax
	jge	Lj999
	jmp	Lj998
Lj999:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj922(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj1002
	movl	L_U_DOS_LASTDOSEXITCODE$non_lazy_ptr-Lj922(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj1003
Lj1002:
	movl	L_U_DOS_LASTDOSEXITCODE$non_lazy_ptr-Lj922(%ebx),%edx
	leal	4(%edx),%eax
Lj1003:
	movl	(%eax),%eax
	cmpl	$127,%eax
	jne	Lj997
	jmp	Lj998
Lj997:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj922(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj1006
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj922(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj1007
Lj1006:
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj922(%ebx),%edx
	leal	4(%edx),%eax
Lj1007:
	movw	$0,(%eax)
	jmp	Lj1008
Lj998:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj922(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1011
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj922(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj1012
Lj1011:
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj922(%ebx),%edx
	leal	4(%edx),%eax
Lj1012:
	movw	$8,(%eax)
Lj1008:
Lj923:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj924
	call	LFPC_RERAISE$stub
Lj924:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOS_ADDDISK$SHORTSTRING$$BYTE
_DOS_ADDDISK$SHORTSTRING$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1026
Lj1026:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_TC_DOS_DRIVES$non_lazy_ptr-Lj1026(%ebx),%eax
	movzbl	(%eax),%eax
	movl	L_U_DOS_DRIVESTR$non_lazy_ptr-Lj1026(%ebx),%edx
	movl	-16(%edx,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj1027
	jmp	Lj1028
Lj1027:
	movl	L_TC_DOS_DRIVES$non_lazy_ptr-Lj1026(%ebx),%eax
	movzbl	(%eax),%edx
	movl	L_U_DOS_DRIVESTR$non_lazy_ptr-Lj1026(%ebx),%eax
	movl	-16(%eax,%edx,4),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj1028:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	incl	%edx
	movl	L_TC_DOS_DRIVES$non_lazy_ptr-Lj1026(%ebx),%eax
	movzbl	(%eax),%ecx
	movl	L_U_DOS_DRIVESTR$non_lazy_ptr-Lj1026(%ebx),%eax
	leal	-16(%eax,%ecx,4),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	L_TC_DOS_DRIVES$non_lazy_ptr-Lj1026(%ebx),%eax
	movzbl	(%eax),%eax
	movl	L_U_DOS_DRIVESTR$non_lazy_ptr-Lj1026(%ebx),%edx
	movl	-16(%edx,%eax,4),%eax
	movl	-4(%ebp),%edx
	call	L_STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR$stub
	movl	L_TC_DOS_DRIVES$non_lazy_ptr-Lj1026(%ebx),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	movl	L_TC_DOS_DRIVES$non_lazy_ptr-Lj1026(%ebx),%eax
	incb	(%eax)
	movl	L_TC_DOS_DRIVES$non_lazy_ptr-Lj1026(%ebx),%eax
	movzbl	(%eax),%eax
	cmpl	$26,%eax
	jg	Lj1041
	jmp	Lj1042
Lj1041:
	movl	L_TC_DOS_DRIVES$non_lazy_ptr-Lj1026(%ebx),%eax
	movb	$4,(%eax)
Lj1042:
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_DISKFREE$BYTE$$INT64
_DOS_DISKFREE$BYTE$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%ebx,-288(%ebp)
	call	Lj1046
Lj1046:
	popl	%ebx
	movb	%al,-4(%ebp)
	movzbl	-4(%ebp),%eax
	cmpl	$4,%eax
	jl	Lj1051
	jmp	Lj1049
Lj1051:
	movzbl	-4(%ebp),%eax
	movl	L_TC_DOS_FIXDRIVESTR$non_lazy_ptr-Lj1046(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj1050
	jmp	Lj1049
Lj1050:
	leal	-284(%ebp),%edx
	movzbl	-4(%ebp),%ecx
	movl	L_TC_DOS_FIXDRIVESTR$non_lazy_ptr-Lj1046(%ebx),%eax
	movl	(%eax,%ecx,4),%eax
	call	L_UNIX_FPSTATFS$PCHAR$PSTATFS$$LONGINT$stub
	cmpl	$-1,%eax
	jne	Lj1047
	jmp	Lj1049
Lj1049:
	movzbl	-4(%ebp),%edx
	movl	L_U_DOS_DRIVESTR$non_lazy_ptr-Lj1046(%ebx),%eax
	movl	-16(%eax,%edx,4),%eax
	testl	%eax,%eax
	jne	Lj1056
	jmp	Lj1048
Lj1056:
	leal	-284(%ebp),%edx
	movzbl	-4(%ebp),%eax
	movl	L_U_DOS_DRIVESTR$non_lazy_ptr-Lj1046(%ebx),%ecx
	movl	-16(%ecx,%eax,4),%eax
	call	L_UNIX_FPSTATFS$PCHAR$PSTATFS$$LONGINT$stub
	cmpl	$-1,%eax
	jne	Lj1047
	jmp	Lj1048
Lj1047:
	movl	-280(%ebp),%eax
	imull	-264(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj1063
Lj1048:
	movl	$-1,-12(%ebp)
	movl	$-1,-8(%ebp)
Lj1063:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-288(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_DISKSIZE$BYTE$$INT64
_DOS_DISKSIZE$BYTE$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%ebx,-288(%ebp)
	call	Lj1067
Lj1067:
	popl	%ebx
	movb	%al,-4(%ebp)
	movzbl	-4(%ebp),%eax
	cmpl	$4,%eax
	jl	Lj1072
	jmp	Lj1070
Lj1072:
	movzbl	-4(%ebp),%eax
	movl	L_TC_DOS_FIXDRIVESTR$non_lazy_ptr-Lj1067(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj1071
	jmp	Lj1070
Lj1071:
	leal	-284(%ebp),%edx
	movzbl	-4(%ebp),%ecx
	movl	L_TC_DOS_FIXDRIVESTR$non_lazy_ptr-Lj1067(%ebx),%eax
	movl	(%eax,%ecx,4),%eax
	call	L_UNIX_FPSTATFS$PCHAR$PSTATFS$$LONGINT$stub
	cmpl	$-1,%eax
	jne	Lj1068
	jmp	Lj1070
Lj1070:
	movzbl	-4(%ebp),%edx
	movl	L_U_DOS_DRIVESTR$non_lazy_ptr-Lj1067(%ebx),%eax
	movl	-16(%eax,%edx,4),%eax
	testl	%eax,%eax
	jne	Lj1077
	jmp	Lj1069
Lj1077:
	leal	-284(%ebp),%edx
	movzbl	-4(%ebp),%eax
	movl	L_U_DOS_DRIVESTR$non_lazy_ptr-Lj1067(%ebx),%ecx
	movl	-16(%ecx,%eax,4),%eax
	call	L_UNIX_FPSTATFS$PCHAR$PSTATFS$$LONGINT$stub
	cmpl	$-1,%eax
	jne	Lj1068
	jmp	Lj1069
Lj1068:
	movl	-280(%ebp),%eax
	imull	-272(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj1084
Lj1069:
	movl	$-1,-12(%ebp)
	movl	$-1,-8(%ebp)
Lj1084:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-288(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_FREEDRIVESTR
_DOS_FREEDRIVESTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj1088
Lj1088:
	popl	%ebx
	movl	$4,-4(%ebp)
	decl	-4(%ebp)
	.align 2
Lj1091:
	incl	-4(%ebp)
	movl	-4(%ebp),%edx
	movl	L_U_DOS_DRIVESTR$non_lazy_ptr-Lj1088(%ebx),%eax
	cmpl	$0,-16(%eax,%edx,4)
	jne	Lj1092
	jmp	Lj1093
Lj1092:
	movl	-4(%ebp),%eax
	movl	L_U_DOS_DRIVESTR$non_lazy_ptr-Lj1088(%ebx),%edx
	movl	-16(%edx,%eax,4),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	L_U_DOS_DRIVESTR$non_lazy_ptr-Lj1088(%ebx),%edx
	movl	$0,-16(%edx,%eax,4)
Lj1093:
	cmpl	$26,-4(%ebp)
	jl	Lj1091
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_FNMATCH$SHORTSTRING$SHORTSTRING$$BOOLEAN
_DOS_FNMATCH$SHORTSTRING$SHORTSTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	%ebp,%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	L_DOS_FNMATCH$crc05A326C1_DOFNMATCH$LONGINT$LONGINT$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DOS_FNMATCH$crc05A326C1_DOFNMATCH$LONGINT$LONGINT$$BOOLEAN
_DOS_FNMATCH$crc05A326C1_DOFNMATCH$LONGINT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$1,-14(%ebp)
	jmp	Lj1117
	.align 2
Lj1116:
	movl	-12(%ebp),%eax
	movl	-4(%eax),%eax
	movzbl	-4(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$42,%al
	jb	Lj1120
	subb	$42,%al
	je	Lj1122
	subb	$21,%al
	je	Lj1121
	jmp	Lj1120
Lj1121:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	cmpl	-8(%ebp),%eax
	setgeb	-14(%ebp)
	jmp	Lj1119
Lj1122:
	jmp	Lj1126
	.align 2
Lj1125:
	incl	-4(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj1128
	jmp	Lj1129
Lj1128:
	jmp	Lj1127
Lj1129:
	movl	-12(%ebp),%eax
	movl	-4(%eax),%eax
	movzbl	-4(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$42,%al
	jb	Lj1131
	subb	$42,%al
	je	Lj1132
	subb	$21,%al
	je	Lj1133
	jmp	Lj1131
Lj1132:
	jmp	Lj1130
Lj1133:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj1134
	jmp	Lj1135
Lj1134:
	movb	$0,-13(%ebp)
	jmp	Lj1100
Lj1135:
	incl	-8(%ebp)
	jmp	Lj1130
Lj1131:
	movb	$0,-14(%ebp)
Lj1130:
Lj1126:
	cmpb	$0,-14(%ebp)
	jne	Lj1125
	jmp	Lj1127
Lj1127:
	movb	$0,-14(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%eax),%eax
	cmpl	-4(%ebp),%eax
	jge	Lj1142
	jmp	Lj1143
Lj1142:
	.align 2
Lj1144:
	jmp	Lj1148
	.align 2
Lj1147:
	incl	-8(%ebp)
Lj1148:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj1150
	jmp	Lj1149
Lj1150:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%ecx
	movzbl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-4(%eax),%eax
	movzbl	-4(%ebp),%ebx
	movb	(%ecx,%edx,1),%dl
	cmpb	(%eax,%ebx,1),%dl
	jne	Lj1147
	jmp	Lj1149
Lj1149:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj1151
	jmp	Lj1152
Lj1151:
	movl	-8(%ebp),%ecx
	incl	%ecx
	movl	-4(%ebp),%edx
	incl	%edx
	movl	-12(%ebp),%eax
	call	L_DOS_FNMATCH$crc05A326C1_DOFNMATCH$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1153
	jmp	Lj1154
Lj1153:
	movl	-12(%ebp),%eax
	movl	-16(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	movl	%eax,-8(%ebp)
	movb	$1,-14(%ebp)
	jmp	Lj1146
	jmp	Lj1167
Lj1154:
	incl	-8(%ebp)
Lj1167:
	jmp	Lj1168
Lj1152:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj1169
	jmp	Lj1170
Lj1169:
	movb	$1,-14(%ebp)
	jmp	Lj1146
Lj1170:
Lj1168:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj1146
	jmp	Lj1144
Lj1146:
	jmp	Lj1173
Lj1143:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	movl	%eax,-8(%ebp)
	movb	$1,-14(%ebp)
Lj1173:
	jmp	Lj1119
Lj1120:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj1180
	jmp	Lj1179
Lj1180:
	movl	-12(%ebp),%eax
	movl	-4(%eax),%edx
	movzbl	-4(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movzbl	-8(%ebp),%ecx
	movb	(%edx,%ebx,1),%dl
	cmpb	(%eax,%ecx,1),%dl
	je	Lj1178
	jmp	Lj1179
Lj1178:
	movb	$1,-14(%ebp)
	jmp	Lj1181
Lj1179:
	movb	$0,-14(%ebp)
Lj1181:
Lj1119:
	incl	-4(%ebp)
	incl	-8(%ebp)
Lj1117:
	cmpb	$0,-14(%ebp)
	jne	Lj1182
	jmp	Lj1118
Lj1182:
	movl	-12(%ebp),%eax
	movl	-16(%eax),%eax
	cmpl	-4(%ebp),%eax
	jge	Lj1116
	jmp	Lj1118
Lj1118:
	cmpb	$0,-14(%ebp)
	jne	Lj1185
	jmp	Lj1184
Lj1185:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj1183
	jmp	Lj1184
Lj1183:
	movb	$1,-13(%ebp)
	jmp	Lj1186
Lj1184:
	movb	$0,-13(%ebp)
Lj1186:
Lj1100:
	movb	-13(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_FINDCLOSE$SEARCHREC
_DOS_FINDCLOSE$SEARCHREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1188
Lj1188:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj1189
	jmp	Lj1190
Lj1189:
	movl	$1,-8(%ebp)
	.align 2
Lj1193:
	movl	-8(%ebp),%eax
	imull	$12,%eax
	movl	-4(%ebp),%ecx
	movl	L_U_DOS_RTLFINDRECS$non_lazy_ptr-Lj1188(%ebx),%edx
	movl	-8(%edx,%eax),%eax
	cmpl	8(%ecx),%eax
	je	Lj1196
	jmp	Lj1197
Lj1196:
	jmp	Lj1195
Lj1197:
	incl	-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$15,%eax
	jg	Lj1195
	jmp	Lj1193
Lj1195:
	movl	-8(%ebp),%eax
	cmpl	$15,%eax
	jle	Lj1198
	jmp	Lj1199
Lj1198:
	movl	-8(%ebp),%eax
	imull	$12,%eax
	movl	L_U_DOS_RTLFINDRECS$non_lazy_ptr-Lj1188(%ebx),%edx
	movl	$0,-8(%edx,%eax)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj1202
	jmp	Lj1203
Lj1202:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	LFPC_SYSC_CLOSEDIR$stub
Lj1203:
Lj1199:
Lj1190:
	movl	-4(%ebp),%eax
	movl	$0,12(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_FINDGETFILEINFO$SHORTSTRING$SEARCHREC$$BOOLEAN
_DOS_FINDGETFILEINFO$SHORTSTRING$SEARCHREC$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$408,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-9(%ebp)
	leal	-144(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_BASEUNIX_FPSTAT$SHORTSTRING$STAT$$LONGINT$stub
	notl	%eax
	cmpl	$0,%eax
	jge	Lj1212
	jmp	Lj1213
Lj1212:
	jmp	Lj1208
Lj1213:
	movl	-96(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-112(%ebp),%eax
	movl	%eax,-28(%ebp)
	movw	-136(%ebp),%ax
	andw	$61440,%ax
	movzwl	%ax,%eax
	cmpl	$16384,%eax
	je	Lj1222
	jmp	Lj1223
Lj1222:
	movl	$16,-48(%ebp)
	jmp	Lj1226
Lj1223:
	movl	$0,-48(%ebp)
Lj1226:
	movw	-136(%ebp),%ax
	andw	$128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	je	Lj1229
	jmp	Lj1230
Lj1229:
	movl	-48(%ebp),%eax
	orl	$1,%eax
	movl	%eax,-48(%ebp)
Lj1230:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzwl	544(%eax),%eax
	incl	%eax
	movzbl	%al,%eax
	movb	(%edx,%eax,1),%al
	cmpb	$46,%al
	je	Lj1233
	jmp	Lj1234
Lj1233:
	movl	-48(%ebp),%eax
	orl	$2,%eax
	movl	%eax,-48(%ebp)
Lj1234:
	movl	-8(%ebp),%eax
	movb	17(%eax),%al
	notb	%al
	movzbl	%al,%eax
	movl	-48(%ebp),%edx
	andl	%edx,%eax
	testl	%eax,%eax
	je	Lj1237
	jmp	Lj1238
Lj1237:
	leal	-400(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movzwl	544(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	Lfpc_shortstr_copy$stub
	leal	-400(%ebp),%ecx
	movl	-8(%ebp),%eax
	leal	32(%eax),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-8(%ebp),%eax
	movb	-48(%ebp),%dl
	movb	%dl,21(%eax)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,26(%edx)
	movl	-8(%ebp),%edx
	movw	-136(%ebp),%ax
	movw	%ax,18(%edx)
	leal	-22(%ebp),%edx
	movl	-28(%ebp),%eax
	call	L_DOS_UNIXDATETODT$LONGINT$DATETIME$stub
	movl	-8(%ebp),%eax
	leal	22(%eax),%edx
	leal	-22(%ebp),%eax
	call	L_DOS_PACKTIME$DATETIME$LONGINT$stub
	movb	$1,-9(%ebp)
Lj1238:
Lj1208:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DOS_FINDLASTUSED$$LONGINT
_DOS_FINDLASTUSED$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj1270
Lj1270:
	popl	%ecx
	movl	$1,-8(%ebp)
	movl	$1,-12(%ebp)
	movb	$0,-13(%ebp)
	jmp	Lj1278
	.align 2
Lj1277:
	movl	-12(%ebp),%eax
	imull	$12,%eax
	movl	L_U_DOS_RTLFINDRECS$non_lazy_ptr-Lj1270(%ecx),%edx
	movl	-8(%edx,%eax),%eax
	testl	%eax,%eax
	je	Lj1280
	jmp	Lj1281
Lj1280:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movb	$1,-13(%ebp)
	jmp	Lj1286
Lj1281:
	movl	-12(%ebp),%eax
	imull	$12,%eax
	movl	-8(%ebp),%edx
	imull	$12,%edx
	movl	L_U_DOS_RTLFINDRECS$non_lazy_ptr-Lj1270(%ecx),%ebx
	movl	-4(%ebx,%eax),%eax
	movl	L_U_DOS_RTLFINDRECS$non_lazy_ptr-Lj1270(%ecx),%ebx
	cmpl	-4(%ebx,%edx),%eax
	jg	Lj1287
	jmp	Lj1288
Lj1287:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj1288:
Lj1286:
	incl	-12(%ebp)
Lj1278:
	movl	-12(%ebp),%eax
	cmpl	$15,%eax
	jle	Lj1291
	jmp	Lj1279
Lj1291:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj1277
	jmp	Lj1279
Lj1279:
	movl	-8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_FINDNEXT$SEARCHREC
_DOS_FINDNEXT$SEARCHREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1320,%esp
	movl	%ebx,-1308(%ebp)
	call	Lj1295
Lj1295:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj1296
	jmp	Lj1297
Lj1296:
	movl	$0,-272(%ebp)
	movl	$1,-268(%ebp)
	decl	-268(%ebp)
	.align 2
Lj1302:
	incl	-268(%ebp)
	movl	-268(%ebp),%eax
	imull	$12,%eax
	movl	-4(%ebp),%ecx
	movl	L_U_DOS_RTLFINDRECS$non_lazy_ptr-Lj1295(%ebx),%edx
	movl	-8(%edx,%eax),%eax
	cmpl	8(%ecx),%eax
	je	Lj1303
	jmp	Lj1304
Lj1303:
	movl	-268(%ebp),%eax
	movl	%eax,-272(%ebp)
Lj1304:
	movl	-268(%ebp),%eax
	imull	$12,%eax
	movl	L_U_DOS_RTLFINDRECS$non_lazy_ptr-Lj1295(%ebx),%edx
	incl	-4(%edx,%eax)
	cmpl	$15,-268(%ebp)
	jl	Lj1302
	movl	-272(%ebp),%eax
	testl	%eax,%eax
	je	Lj1307
	jmp	Lj1308
Lj1307:
	movl	-4(%ebp),%eax
	movzwl	544(%eax),%eax
	testl	%eax,%eax
	je	Lj1309
	jmp	Lj1310
Lj1309:
	movb	$46,-261(%ebp)
	movb	$47,-260(%ebp)
	movb	$0,-259(%ebp)
	jmp	Lj1317
Lj1310:
	movl	-4(%ebp),%eax
	movzwl	544(%eax),%ecx
	leal	-261(%ebp),%edx
	movl	-4(%ebp),%eax
	leal	289(%eax),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movzwl	544(%eax),%eax
	movb	$0,-261(%ebp,%eax,1)
Lj1317:
	leal	-261(%ebp),%eax
	call	LFPC_SYSC_OPENDIR$stub
	movl	-4(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj1330
	jmp	Lj1331
Lj1330:
	call	L_DOS_FINDLASTUSED$$LONGINT$stub
	movl	%eax,-272(%ebp)
	movl	-272(%ebp),%eax
	imull	$12,%eax
	movl	L_U_DOS_RTLFINDRECS$non_lazy_ptr-Lj1295(%ebx),%edx
	movl	-8(%edx,%eax),%eax
	cmpl	$0,%eax
	jg	Lj1334
	jmp	Lj1335
Lj1334:
	movl	-272(%ebp),%eax
	imull	$12,%eax
	movl	L_U_DOS_RTLFINDRECS$non_lazy_ptr-Lj1295(%ebx),%edx
	movl	-12(%edx,%eax),%eax
	call	LFPC_SYSC_CLOSEDIR$stub
Lj1335:
	movl	-272(%ebp),%eax
	imull	$12,%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%ecx
	movl	L_U_DOS_RTLFINDRECS$non_lazy_ptr-Lj1295(%ebx),%edx
	movl	%ecx,-8(%edx,%eax)
	movl	-272(%ebp),%eax
	imull	$12,%eax
	movl	-4(%ebp),%edx
	movl	12(%edx),%edx
	movl	L_U_DOS_RTLFINDRECS$non_lazy_ptr-Lj1295(%ebx),%ecx
	movl	%edx,-12(%ecx,%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jg	Lj1342
	jl	Lj1343
	cmpl	$0,%edx
	ja	Lj1342
	jmp	Lj1343
Lj1342:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_UNIX_SEEKDIR$PDIR$LONGINT$stub
Lj1343:
Lj1331:
Lj1308:
	movl	-272(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1348
	jmp	Lj1349
Lj1348:
	movl	-272(%ebp),%eax
	imull	$12,%eax
	movl	L_U_DOS_RTLFINDRECS$non_lazy_ptr-Lj1295(%ebx),%edx
	movl	$0,-4(%edx,%eax)
Lj1349:
Lj1297:
	leal	-1048(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movzwl	544(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	leal	288(%eax),%eax
	movl	$255,%ecx
	call	Lfpc_shortstr_copy$stub
	leal	-1048(%ebp),%ecx
	leal	-784(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movb	$0,-785(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	seteb	-786(%ebp)
	jmp	Lj1371
	.align 2
Lj1370:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	LFPC_SYSC_READDIR$stub
	movl	%eax,-792(%ebp)
	movl	-792(%ebp),%eax
	testl	%eax,%eax
	je	Lj1377
	jmp	Lj1378
Lj1377:
	movb	$0,-528(%ebp)
	jmp	Lj1381
Lj1378:
	movl	-792(%ebp),%eax
	leal	8(%eax),%eax
	leal	-1048(%ebp),%edx
	call	L_STRINGS_STRPAS$PCHAR$$SHORTSTRING$stub
	leal	-1048(%ebp),%ecx
	leal	-528(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
Lj1381:
	movzbl	-528(%ebp),%eax
	testl	%eax,%eax
	je	Lj1392
	jmp	Lj1393
Lj1392:
	movb	$1,-786(%ebp)
	jmp	Lj1396
Lj1393:
	leal	-528(%ebp),%edx
	leal	-784(%ebp),%eax
	call	L_DOS_FNMATCH$SHORTSTRING$SHORTSTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1397
	jmp	Lj1398
Lj1397:
	leal	-1304(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movzwl	544(%eax),%ecx
	movl	-4(%ebp),%eax
	leal	288(%eax),%eax
	movl	$1,%edx
	call	Lfpc_shortstr_copy$stub
	leal	-1304(%ebp),%ecx
	leal	-528(%ebp),%eax
	movl	%eax,(%esp)
	leal	-1048(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	leal	-1048(%ebp),%eax
	movl	-4(%ebp),%edx
	call	L_DOS_FINDGETFILEINFO$SHORTSTRING$SEARCHREC$$BOOLEAN$stub
	movb	%al,-785(%ebp)
	cmpb	$0,-785(%ebp)
	jne	Lj1425
	jmp	Lj1426
Lj1425:
	movb	$1,-786(%ebp)
Lj1426:
Lj1398:
Lj1396:
Lj1371:
	cmpb	$0,-786(%ebp)
	jne	Lj1372
	jmp	Lj1370
Lj1372:
	cmpb	$0,-785(%ebp)
	jne	Lj1429
	jmp	Lj1430
Lj1429:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_UNIX_TELLDIR$PDIR$$INT64$stub
	movl	-4(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1295(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1437
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1295(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj1438
Lj1437:
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1295(%ebx),%edx
	leal	4(%edx),%eax
Lj1438:
	movw	$0,(%eax)
	jmp	Lj1439
Lj1430:
	movl	-4(%ebp),%eax
	call	L_DOS_FINDCLOSE$SEARCHREC$stub
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1295(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1444
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1295(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj1445
Lj1444:
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1295(%ebx),%edx
	leal	4(%edx),%eax
Lj1445:
	movw	$18,(%eax)
Lj1439:
	movl	-1308(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_FINDFIRST$SHORTSTRING$WORD$SEARCHREC
_DOS_FINDFIRST$SHORTSTRING$WORD$SEARCHREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1447
Lj1447:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$546,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1454
	jmp	Lj1455
Lj1454:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1447(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1458
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1447(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj1459
Lj1458:
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1447(%ebx),%edx
	leal	4(%edx),%eax
Lj1459:
	movw	$3,(%eax)
	jmp	Lj1446
Lj1455:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	leal	288(%eax),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movzwl	-8(%ebp),%eax
	orl	$32,%eax
	orl	$1,%eax
	movl	-12(%ebp),%edx
	movb	%al,17(%edx)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,4(%eax)
	movl	-12(%ebp),%eax
	movzbw	288(%eax),%dx
	movl	-12(%ebp),%eax
	movw	%dx,544(%eax)
	jmp	Lj1473
	.align 2
Lj1472:
	movl	-12(%ebp),%eax
	decw	544(%eax)
Lj1473:
	movl	-12(%ebp),%eax
	movzwl	544(%eax),%eax
	cmpl	$0,%eax
	jg	Lj1475
	jmp	Lj1474
Lj1475:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	544(%eax),%eax
	movb	288(%edx,%eax,1),%al
	cmpb	$47,%al
	jne	Lj1472
	jmp	Lj1474
Lj1474:
	movl	-4(%ebp),%edx
	movb	$63,%al
	call	L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub
	testl	%eax,%eax
	je	Lj1478
	jmp	Lj1477
Lj1478:
	movl	-4(%ebp),%edx
	movb	$42,%al
	call	L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub
	testl	%eax,%eax
	je	Lj1476
	jmp	Lj1477
Lj1476:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DOS_FINDGETFILEINFO$SHORTSTRING$SEARCHREC$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1487
	jmp	Lj1488
Lj1487:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1447(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1495
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1447(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj1496
Lj1495:
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1447(%ebx),%edx
	leal	4(%edx),%eax
Lj1496:
	movw	$0,(%eax)
	jmp	Lj1497
Lj1488:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1447(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1500
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1447(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj1501
Lj1500:
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1447(%ebx),%edx
	leal	4(%edx),%eax
Lj1501:
	movw	$18,(%eax)
Lj1497:
	movl	-12(%ebp),%eax
	movl	$0,12(%eax)
	movl	-12(%ebp),%eax
	movb	$1,16(%eax)
	movl	-12(%ebp),%eax
	movl	$-1,8(%eax)
	jmp	Lj1508
Lj1477:
	movl	L_U_DOS_CURRSEARCHNUM$non_lazy_ptr-Lj1447(%ebx),%eax
	incl	(%eax)
	movl	-12(%ebp),%edx
	movl	L_U_DOS_CURRSEARCHNUM$non_lazy_ptr-Lj1447(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movb	$0,16(%eax)
	movl	-12(%ebp),%eax
	call	L_DOS_FINDNEXT$SEARCHREC$stub
Lj1508:
Lj1446:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_FSEARCH$SHORTSTRING$SHORTSTRING$$SHORTSTRING
_DOS_FSEARCH$SHORTSTRING$SHORTSTRING$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$680,%esp
	movl	%ebx,-672(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	leal	-364(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movl	-8(%ebp),%edx
	leal	-620(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movl	$0,-668(%ebp)
	movl	$0,-664(%ebp)
	movl	$0,-660(%ebp)
	leal	-632(%ebp),%ecx
	leal	-656(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-4(%ebp)
	testl	%eax,%eax
	jne	Lj1517
	movzbl	-364(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1524
	jmp	Lj1521
Lj1524:
	movb	-363(%ebp),%al
	cmpb	$47,%al
	je	Lj1523
	jmp	Lj1521
Lj1523:
	leal	-108(%ebp),%edx
	leal	-364(%ebp),%eax
	call	L_BASEUNIX_FPSTAT$SHORTSTRING$STAT$$LONGINT$stub
	cmpl	$0,%eax
	jge	Lj1522
	jmp	Lj1521
Lj1522:
	movw	-100(%ebp),%ax
	call	L_BASEUNIX_FPS_ISDIR$WORD$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1520
	jmp	Lj1521
Lj1520:
	leal	-364(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	jmp	Lj1537
Lj1521:
	leal	-660(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-660(%ebp)
	leal	-664(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-664(%ebp)
	leal	-664(%ebp),%edx
	leal	-620(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-664(%ebp),%ebx
	leal	-668(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-668(%ebp)
	leal	-668(%ebp),%edx
	leal	-364(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-668(%ebp),%eax
	leal	-660(%ebp),%ecx
	movl	%ebx,%edx
	call	L_UNIX_FSEARCH$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movl	-660(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
Lj1537:
Lj1517:
	call	LFPC_POPADDRSTACK$stub
	leal	-668(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-668(%ebp)
	leal	-664(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-664(%ebp)
	leal	-660(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-660(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1518
	call	LFPC_RERAISE$stub
Lj1518:
	movl	-672(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_GETFATTR$formal$WORD
_DOS_GETFATTR$formal$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-112(%ebp)
	call	Lj1559
Lj1559:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1559(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1562
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1559(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj1563
Lj1562:
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1559(%ebx),%edx
	leal	4(%edx),%eax
Lj1563:
	movw	$0,(%eax)
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	leal	-104(%ebp),%edx
	call	LFPC_SYSC_STAT$stub
	cmpl	$0,%eax
	jl	Lj1564
	jmp	Lj1565
Lj1564:
	movl	-8(%ebp),%eax
	movw	$0,(%eax)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1559(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj1574
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1559(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj1575
Lj1574:
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1559(%ebx),%edx
	leal	4(%edx),%eax
Lj1575:
	movw	$3,(%eax)
	jmp	Lj1558
	jmp	Lj1576
Lj1565:
	movzwl	-96(%ebp),%eax
	movl	%eax,-108(%ebp)
Lj1576:
	movw	-108(%ebp),%ax
	call	L_BASEUNIX_FPS_ISDIR$WORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1579
	jmp	Lj1580
Lj1579:
	movl	-8(%ebp),%eax
	movw	$16,(%eax)
	jmp	Lj1585
Lj1580:
	movl	-8(%ebp),%eax
	movw	$0,(%eax)
Lj1585:
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	movl	$2,%edx
	call	LFPC_SYSC_ACCESS$stub
	cmpl	$0,%eax
	jl	Lj1588
	jmp	Lj1589
Lj1588:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	orl	$1,%eax
	movl	-8(%ebp),%edx
	movw	%ax,(%edx)
Lj1589:
	movl	-4(%ebp),%eax
	movb	76(%eax),%al
	cmpb	$46,%al
	je	Lj1596
	jmp	Lj1597
Lj1596:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	orl	$2,%eax
	movl	-8(%ebp),%edx
	movw	%ax,(%edx)
Lj1597:
Lj1558:
	movl	-112(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_GETFTIME$formal$LONGINT
_DOS_GETFTIME$formal$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-120(%ebp)
	call	Lj1601
Lj1601:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1601(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj1604
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1601(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj1605
Lj1604:
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1601(%ebx),%edx
	leal	4(%edx),%eax
Lj1605:
	movw	$0,(%eax)
	leal	-104(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	LFPC_SYSC_FSTAT$stub
	cmpl	$0,%eax
	jl	Lj1606
	jmp	Lj1607
Lj1606:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1601(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1616
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1601(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj1617
Lj1616:
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1601(%ebx),%edx
	leal	4(%edx),%eax
Lj1617:
	movw	$6,(%eax)
	jmp	Lj1600
	jmp	Lj1618
Lj1607:
	leal	-116(%ebp),%edx
	movl	-72(%ebp),%eax
	call	L_DOS_UNIXDATETODT$LONGINT$DATETIME$stub
Lj1618:
	movl	-8(%ebp),%edx
	leal	-116(%ebp),%eax
	call	L_DOS_PACKTIME$DATETIME$LONGINT$stub
Lj1600:
	movl	-120(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_SETFTIME$formal$LONGINT
_DOS_SETFTIME$formal$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	call	Lj1628
Lj1628:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1628(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj1631
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1628(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj1632
Lj1631:
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1628(%ebx),%edx
	leal	4(%edx),%eax
Lj1632:
	movw	$0,(%eax)
	leal	-32(%ebp),%eax
	call	LFPC_SYSC_TIME$stub
	movl	%eax,-16(%ebp)
	leal	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DOS_UNPACKTIME$LONGINT$DATETIME$stub
	leal	-28(%ebp),%eax
	call	L_DOS_DTTOUNIXDATE$DATETIME$$LONGINT$stub
	movl	%eax,-12(%ebp)
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	call	L_BASEUNIX_FPUTIME$PCHAR$PUTIMBUF$$LONGINT$stub
	cmpl	$0,%eax
	jl	Lj1647
	jmp	Lj1648
Lj1647:
	movl	$0,-8(%ebp)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1628(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1657
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1628(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj1658
Lj1657:
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1628(%ebx),%edx
	leal	4(%edx),%eax
Lj1658:
	movw	$3,(%eax)
Lj1648:
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_ENVCOUNT$$LONGINT
_DOS_ENVCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj1660
Lj1660:
	popl	%edx
	movl	$0,-8(%ebp)
	movl	L_U_SYSTEM_ENVP$non_lazy_ptr-Lj1660(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1666
	.align 2
Lj1665:
	incl	-8(%ebp)
	addl	$4,-12(%ebp)
Lj1666:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj1665
	jmp	Lj1667
Lj1667:
	movl	-8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOS_ENVSTR$LONGINT$$SHORTSTRING
_DOS_ENVSTR$LONGINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj1671
Lj1671:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj1672
	jmp	Lj1673
Lj1672:
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj1676
Lj1673:
	movl	L_U_SYSTEM_ENVP$non_lazy_ptr-Lj1671(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	$1,-12(%ebp)
	jmp	Lj1682
	.align 2
Lj1681:
	incl	-12(%ebp)
	addl	$4,-16(%ebp)
Lj1682:
	movl	-12(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj1684
	jmp	Lj1683
Lj1684:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj1681
	jmp	Lj1683
Lj1683:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1685
	jmp	Lj1686
Lj1685:
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj1689
Lj1686:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_STRINGS_STRPAS$PCHAR$$SHORTSTRING$stub
Lj1689:
Lj1676:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOS_GETENV$SHORTSTRING$$SHORTSTRING
_DOS_GETENV$SHORTSTRING$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	leal	-268(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	leal	-268(%ebp),%eax
	call	L_BASEUNIX_FPGETENV$SHORTSTRING$$PCHAR$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1700
	jmp	Lj1701
Lj1700:
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj1704
Lj1701:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_STRINGS_STRPAS$PCHAR$$SHORTSTRING$stub
Lj1704:
	leave
	ret

.text
	.align 4
.globl	_DOS_SETFATTR$formal$WORD
_DOS_SETFATTR$formal$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1710
Lj1710:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	-8(%ebp),%ax
	andw	$8,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj1711
	jmp	Lj1712
Lj1711:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1710(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1715
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1710(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj1716
Lj1715:
	movl	L_U_DOS_DOSERROR$non_lazy_ptr-Lj1710(%ebx),%edx
	leal	4(%edx),%eax
Lj1716:
	movw	$5,(%eax)
Lj1712:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_DOS
_FINALIZE$_DOS:
.reference __DOS_finalize
.globl	__DOS_finalize
__DOS_finalize:
.reference _FINALIZE$_DOS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_DOS_FREEDRIVESTR$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_DOS_DOSERROR
.data
.zerofill __DATA, __common, _U_DOS_DOSERROR, 6,2




	.align 2
.globl _U_DOS_LASTDOSEXITCODE
.data
.zerofill __DATA, __common, _U_DOS_LASTDOSEXITCODE, 8,2




.globl _U_DOS_VERIFYVALUE
.data
.zerofill __DATA, __common, _U_DOS_VERIFYVALUE, 1,1




	.align 2
.globl _U_DOS_DRIVESTR
.data
.zerofill __DATA, __common, _U_DOS_DRIVESTR, 92,2




	.align 2
.globl _U_DOS_RTLFINDRECS
.data
.zerofill __DATA, __common, _U_DOS_RTLFINDRECS, 180,2




	.align 2
.globl _U_DOS_CURRSEARCHNUM
.data
.zerofill __DATA, __common, _U_DOS_CURRSEARCHNUM, 4,2



.data
	.align 2
.globl	_THREADVARLIST_DOS
_THREADVARLIST_DOS:
	.long	_U_DOS_DOSERROR
	.long	2
	.long	_U_DOS_LASTDOSEXITCODE
	.long	4,0
# End asmlist al_globals
# Begin asmlist al_const

.const_data
.globl	_$DOS$_Ld7
_$DOS$_Ld7:
	.ascii	".\000"

.const_data
	.align 3
.globl	_$DOS$_Ld8
_$DOS$_Ld8:
	.ascii	"/fd0/.\000"

.const_data
	.align 3
.globl	_$DOS$_Ld9
_$DOS$_Ld9:
	.ascii	"/fd1/.\000"

.const_data
	.align 1
.globl	_$DOS$_Ld10
_$DOS$_Ld10:
	.ascii	"/.\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 2
.globl	_$DOS$_Ld1
_$DOS$_Ld1:
	.ascii	"\004HOME\000"

.const
	.align 2
.globl	_$DOS$_Ld2
_$DOS$_Ld2:
	.ascii	"\001/\000"

.const
	.align 2
.globl	_$DOS$_Ld3
_$DOS$_Ld3:
	.ascii	"\003/./\000"

.const
	.align 2
.globl	_$DOS$_Ld4
_$DOS$_Ld4:
	.ascii	"\004/../\000"

.const
	.align 2
.globl	_$DOS$_Ld5
_$DOS$_Ld5:
	.ascii	"\003/..\000"

.const
	.align 2
.globl	_$DOS$_Ld6
_$DOS$_Ld6:
	.ascii	"\000\000"

.data
	.align 2
.globl	_TC_DOS_FIXDRIVESTR
_TC_DOS_FIXDRIVESTR:
	.long	_$DOS$_Ld7
	.long	_$DOS$_Ld8
	.long	_$DOS$_Ld9
	.long	_$DOS$_Ld10

.data
.globl	_TC_DOS_DRIVES
_TC_DOS_DRIVES:
	.byte	4
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_PCHAR_LENGTH$stub:
.indirect_symbol FPC_PCHAR_LENGTH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_INTR$BYTE$REGISTERS$stub:
.indirect_symbol _DOS_INTR$BYTE$REGISTERS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SHORTSTR_ASSIGN$stub:
.indirect_symbol FPC_SHORTSTR_ASSIGN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_DODIRSEPARATORS$SHORTSTRING$stub:
.indirect_symbol _DOS_DODIRSEPARATORS$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_copy$stub:
.indirect_symbol fpc_shortstr_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_shortstr$stub:
.indirect_symbol fpc_shortstr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETDIR$BYTE$OPENSTRING$stub:
.indirect_symbol _SYSTEM_GETDIR$BYTE$OPENSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_GETENV$SHORTSTRING$$SHORTSTRING$stub:
.indirect_symbol _DOS_GETENV$SHORTSTRING$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_concat$stub:
.indirect_symbol fpc_shortstr_concat
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_GETDIRIO$BYTE$SHORTSTRING$stub:
.indirect_symbol _DOS_GETDIRIO$BYTE$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_concat_multi$stub:
.indirect_symbol fpc_shortstr_concat_multi
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_GREGORIANTOJULIAN$LONGINT$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _DOS_GREGORIANTOJULIAN$LONGINT$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_JULIANTOGREGORIAN$LONGINT$WORD$WORD$WORD$stub:
.indirect_symbol _DOS_JULIANTOGREGORIAN$LONGINT$WORD$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPUNAME$UTSNAME$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPUNAME$UTSNAME$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_MOVE$formal$formal$LONGINT$stub:
.indirect_symbol _SYSTEM_MOVE$formal$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRINGS_STRPAS$PCHAR$$SHORTSTRING$stub:
.indirect_symbol _STRINGS_STRPAS$PCHAR$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_sint_shortstr$stub:
.indirect_symbol fpc_val_sint_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_GETTIMEOFDAY$stub:
.indirect_symbol FPC_SYSC_GETTIMEOFDAY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_EPOCHTOLOCAL$LONGINT$WORD$WORD$WORD$WORD$WORD$WORD$stub:
.indirect_symbol _DOS_EPOCHTOLOCAL$LONGINT$WORD$WORD$WORD$WORD$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_WEEKDAY$LONGINT$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _DOS_WEEKDAY$LONGINT$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_GETDATE$WORD$WORD$WORD$WORD$stub:
.indirect_symbol _DOS_GETDATE$WORD$WORD$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_LOCALTOEPOCH$WORD$WORD$WORD$WORD$WORD$WORD$$LONGINT$stub:
.indirect_symbol _DOS_LOCALTOEPOCH$WORD$WORD$WORD$WORD$WORD$WORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPSETTIMEOFDAY$PTIMEVAL$PTIMEZONE$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPSETTIMEOFDAY$PTIMEVAL$PTIMEZONE$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_GETTIME$WORD$WORD$WORD$WORD$stub:
.indirect_symbol _DOS_GETTIME$WORD$WORD$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_PUSHEXCEPTADDR$stub:
.indirect_symbol FPC_PUSHEXCEPTADDR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SETJMP$stub:
.indirect_symbol FPC_SETJMP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_FORK$stub:
.indirect_symbol FPC_SYSC_FORK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_ansistr$stub:
.indirect_symbol fpc_shortstr_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIXUTIL_STRINGTOPPCHAR$ANSISTRING$SMALLINT$$PPCHAR$stub:
.indirect_symbol _UNIXUTIL_STRINGTOPPCHAR$ANSISTRING$SMALLINT$$PPCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_pchar_to_ansistr$stub:
.indirect_symbol fpc_pchar_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_FPEXECV$ANSISTRING$PPCHAR$$LONGINT$stub:
.indirect_symbol _UNIX_FPEXECV$ANSISTRING$PPCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_EXIT$stub:
.indirect_symbol FPC_SYSC_EXIT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_WAITPROCESS$LONGINT$$LONGINT$stub:
.indirect_symbol _UNIX_WAITPROCESS$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_POPADDRSTACK$stub:
.indirect_symbol FPC_POPADDRSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_RERAISE$stub:
.indirect_symbol FPC_RERAISE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR$stub:
.indirect_symbol _STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_FPSTATFS$PCHAR$PSTATFS$$LONGINT$stub:
.indirect_symbol _UNIX_FPSTATFS$PCHAR$PSTATFS$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_FNMATCH$crc05A326C1_DOFNMATCH$LONGINT$LONGINT$$BOOLEAN$stub:
.indirect_symbol _DOS_FNMATCH$crc05A326C1_DOFNMATCH$LONGINT$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_CLOSEDIR$stub:
.indirect_symbol FPC_SYSC_CLOSEDIR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPSTAT$SHORTSTRING$STAT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPSTAT$SHORTSTRING$STAT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_UNIXDATETODT$LONGINT$DATETIME$stub:
.indirect_symbol _DOS_UNIXDATETODT$LONGINT$DATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_PACKTIME$DATETIME$LONGINT$stub:
.indirect_symbol _DOS_PACKTIME$DATETIME$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_OPENDIR$stub:
.indirect_symbol FPC_SYSC_OPENDIR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_FINDLASTUSED$$LONGINT$stub:
.indirect_symbol _DOS_FINDLASTUSED$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_SEEKDIR$PDIR$LONGINT$stub:
.indirect_symbol _UNIX_SEEKDIR$PDIR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_READDIR$stub:
.indirect_symbol FPC_SYSC_READDIR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_FNMATCH$SHORTSTRING$SHORTSTRING$$BOOLEAN$stub:
.indirect_symbol _DOS_FNMATCH$SHORTSTRING$SHORTSTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_FINDGETFILEINFO$SHORTSTRING$SEARCHREC$$BOOLEAN$stub:
.indirect_symbol _DOS_FINDGETFILEINFO$SHORTSTRING$SEARCHREC$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_TELLDIR$PDIR$$INT64$stub:
.indirect_symbol _UNIX_TELLDIR$PDIR$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_FINDCLOSE$SEARCHREC$stub:
.indirect_symbol _DOS_FINDCLOSE$SEARCHREC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_FINDNEXT$SEARCHREC$stub:
.indirect_symbol _DOS_FINDNEXT$SEARCHREC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPS_ISDIR$WORD$$BOOLEAN$stub:
.indirect_symbol _BASEUNIX_FPS_ISDIR$WORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_FSEARCH$ANSISTRING$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _UNIX_FSEARCH$ANSISTRING$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_to_shortstr$stub:
.indirect_symbol fpc_ansistr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_STAT$stub:
.indirect_symbol FPC_SYSC_STAT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_ACCESS$stub:
.indirect_symbol FPC_SYSC_ACCESS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_FSTAT$stub:
.indirect_symbol FPC_SYSC_FSTAT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_TIME$stub:
.indirect_symbol FPC_SYSC_TIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_UNPACKTIME$LONGINT$DATETIME$stub:
.indirect_symbol _DOS_UNPACKTIME$LONGINT$DATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_DTTOUNIXDATE$DATETIME$$LONGINT$stub:
.indirect_symbol _DOS_DTTOUNIXDATE$DATETIME$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPUTIME$PCHAR$PUTIMBUF$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPUTIME$PCHAR$PUTIMBUF$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPGETENV$SHORTSTRING$$PCHAR$stub:
.indirect_symbol _BASEUNIX_FPGETENV$SHORTSTRING$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOS_FREEDRIVESTR$stub:
.indirect_symbol _DOS_FREEDRIVESTR
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
.globl	_INIT_DOS_SEARCHREC
_INIT_DOS_SEARCHREC:
	.byte	13,9
	.ascii	"SearchRec"
	.long	546,0

.const_data
	.align 2
.globl	_RTTI_DOS_DEF1
_RTTI_DOS_DEF1:
	.byte	12
	.ascii	"\000"
	.long	1,1
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_DOS_SEARCHREC
_RTTI_DOS_SEARCHREC:
	.byte	13,9
	.ascii	"SearchRec"
	.long	546,14
	.long	_RTTI_SYSTEM_INT64
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_POINTER
	.long	12
	.long	_RTTI_SYSTEM_BYTE
	.long	16
	.long	_RTTI_SYSTEM_BYTE
	.long	17
	.long	_RTTI_SYSTEM_WORD
	.long	18
	.long	_RTTI_DOS_DEF1
	.long	20
	.long	_RTTI_SYSTEM_BYTE
	.long	21
	.long	_RTTI_SYSTEM_LONGINT
	.long	22
	.long	_RTTI_SYSTEM_LONGINT
	.long	26
	.long	_RTTI_SYSTEM_WORD
	.long	30
	.long	_RTTI_SYSTEM_SHORTSTRING
	.long	32
	.long	_RTTI_SYSTEM_SHORTSTRING
	.long	288
	.long	_RTTI_SYSTEM_WORD
	.long	544

.const_data
	.align 2
.globl	_INIT_DOS_REGISTERS
_INIT_DOS_REGISTERS:
	.byte	13,9
	.ascii	"Registers"
	.long	44,0

.const_data
	.align 2
.globl	_RTTI_DOS_REGISTERS
_RTTI_DOS_REGISTERS:
	.byte	13,9
	.ascii	"Registers"
	.long	44,43
	.long	_RTTI_SYSTEM_SMALLINT
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_SYSTEM_WORD
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	6
	.long	_RTTI_SYSTEM_WORD
	.long	8
	.long	_RTTI_SYSTEM_WORD
	.long	10
	.long	_RTTI_SYSTEM_WORD
	.long	12
	.long	_RTTI_SYSTEM_WORD
	.long	14
	.long	_RTTI_SYSTEM_WORD
	.long	16
	.long	_RTTI_SYSTEM_WORD
	.long	18
	.long	_RTTI_SYSTEM_WORD
	.long	20
	.long	_RTTI_SYSTEM_WORD
	.long	22
	.long	_RTTI_SYSTEM_WORD
	.long	24
	.long	_RTTI_SYSTEM_WORD
	.long	26
	.long	_RTTI_SYSTEM_WORD
	.long	28
	.long	_RTTI_SYSTEM_WORD
	.long	30
	.long	_RTTI_SYSTEM_WORD
	.long	32
	.long	_RTTI_SYSTEM_WORD
	.long	34
	.long	_RTTI_SYSTEM_WORD
	.long	36
	.long	_RTTI_SYSTEM_WORD
	.long	38
	.long	_RTTI_SYSTEM_WORD
	.long	40
	.long	_RTTI_SYSTEM_WORD
	.long	42
	.long	_RTTI_SYSTEM_BYTE
	.long	2
	.long	_RTTI_SYSTEM_BYTE
	.long	3
	.long	_RTTI_SYSTEM_BYTE
	.long	4
	.long	_RTTI_SYSTEM_BYTE
	.long	5
	.long	_RTTI_SYSTEM_BYTE
	.long	6
	.long	_RTTI_SYSTEM_BYTE
	.long	7
	.long	_RTTI_SYSTEM_BYTE
	.long	8
	.long	_RTTI_SYSTEM_BYTE
	.long	9
	.long	_RTTI_SYSTEM_BYTE
	.long	10
	.long	_RTTI_SYSTEM_BYTE
	.long	11
	.long	_RTTI_SYSTEM_BYTE
	.long	12
	.long	_RTTI_SYSTEM_BYTE
	.long	13
	.long	_RTTI_SYSTEM_BYTE
	.long	14
	.long	_RTTI_SYSTEM_BYTE
	.long	15
	.long	_RTTI_SYSTEM_LONGINT
	.long	2
	.long	_RTTI_SYSTEM_LONGINT
	.long	6
	.long	_RTTI_SYSTEM_LONGINT
	.long	10
	.long	_RTTI_SYSTEM_LONGINT
	.long	14
	.long	_RTTI_SYSTEM_LONGINT
	.long	18
	.long	_RTTI_SYSTEM_LONGINT
	.long	22
	.long	_RTTI_SYSTEM_LONGINT
	.long	26

.const_data
	.align 2
.globl	_INIT_DOS_FILEREC
_INIT_DOS_FILEREC:
	.byte	13,7
	.ascii	"FileRec"
	.long	332,0

.const_data
	.align 2
.globl	_RTTI_DOS_DEF5
_RTTI_DOS_DEF5:
	.byte	12
	.ascii	"\000"
	.long	1,32
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_DOS_DEF6
_RTTI_DOS_DEF6:
	.byte	12
	.ascii	"\000"
	.long	1,32
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_DOS_DEF7
_RTTI_DOS_DEF7:
	.byte	12
	.ascii	"\000"
	.long	1,256
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_DOS_FILEREC
_RTTI_DOS_FILEREC:
	.byte	13,7
	.ascii	"FileRec"
	.long	332,6
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_DOS_DEF5
	.long	12
	.long	_RTTI_DOS_DEF6
	.long	44
	.long	_RTTI_DOS_DEF7
	.long	76

.const_data
	.align 2
.globl	_INIT_DOS_TLINEENDSTR
_INIT_DOS_TLINEENDSTR:
	.byte	7,11
	.ascii	"TLineEndStr"
	.byte	3

.const_data
	.align 2
.globl	_RTTI_DOS_TLINEENDSTR
_RTTI_DOS_TLINEENDSTR:
	.byte	7,11
	.ascii	"TLineEndStr"
	.byte	3

.const_data
	.align 2
.globl	_INIT_DOS_TEXTBUF
_INIT_DOS_TEXTBUF:
	.byte	12
	.ascii	"\007TextBuf"
	.long	1,256
	.long	_INIT_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_DOS_TEXTBUF
_RTTI_DOS_TEXTBUF:
	.byte	12
	.ascii	"\007TextBuf"
	.long	1,256
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_INIT_DOS_TEXTREC
_INIT_DOS_TEXTREC:
	.byte	13,7
	.ascii	"TextRec"
	.long	592,0

.const_data
	.align 2
.globl	_RTTI_DOS_DEF11
_RTTI_DOS_DEF11:
	.byte	0
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_DOS_DEF12
_RTTI_DOS_DEF12:
	.byte	12
	.ascii	"\000"
	.long	1,32
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_DOS_DEF13
_RTTI_DOS_DEF13:
	.byte	12
	.ascii	"\000"
	.long	1,256
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_DOS_TEXTREC
_RTTI_DOS_TEXTREC:
	.byte	13,7
	.ascii	"TextRec"
	.long	592,15
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16
	.long	_RTTI_SYSTEM_LONGINT
	.long	20
	.long	_RTTI_DOS_DEF11
	.long	24
	.long	_RTTI_SYSTEM_POINTER
	.long	28
	.long	_RTTI_SYSTEM_POINTER
	.long	32
	.long	_RTTI_SYSTEM_POINTER
	.long	36
	.long	_RTTI_SYSTEM_POINTER
	.long	40
	.long	_RTTI_DOS_DEF12
	.long	44
	.long	_RTTI_DOS_DEF13
	.long	76
	.long	_RTTI_DOS_TLINEENDSTR
	.long	332
	.long	_RTTI_DOS_TEXTBUF
	.long	336

.const_data
	.align 2
.globl	_INIT_DOS_DATETIME
_INIT_DOS_DATETIME:
	.byte	13,8
	.ascii	"DateTime"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_DOS_DATETIME
_RTTI_DOS_DATETIME:
	.byte	13,8
	.ascii	"DateTime"
	.long	12,6
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_SYSTEM_WORD
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	6
	.long	_RTTI_SYSTEM_WORD
	.long	8
	.long	_RTTI_SYSTEM_WORD
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

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSTEM_ALLOWDIRECTORYSEPARATORS$non_lazy_ptr:
.indirect_symbol _TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_THREADVAR_RELOCATE$non_lazy_ptr:
.indirect_symbol FPC_THREADVAR_RELOCATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DOS_LASTDOSEXITCODE$non_lazy_ptr:
.indirect_symbol _U_DOS_LASTDOSEXITCODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DOS_VERIFYVALUE$non_lazy_ptr:
.indirect_symbol _U_DOS_VERIFYVALUE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_INOUTRES$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_INOUTRES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSTEM_FILENAMECASESENSITIVE$non_lazy_ptr:
.indirect_symbol _TC_SYSTEM_FILENAMECASESENSITIVE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOS$_Ld1$non_lazy_ptr:
.indirect_symbol _$DOS$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOS$_Ld2$non_lazy_ptr:
.indirect_symbol _$DOS$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOS$_Ld3$non_lazy_ptr:
.indirect_symbol _$DOS$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOS$_Ld4$non_lazy_ptr:
.indirect_symbol _$DOS$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOS$_Ld5$non_lazy_ptr:
.indirect_symbol _$DOS$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_UNIXUTIL_TZSECONDS$non_lazy_ptr:
.indirect_symbol _U_UNIXUTIL_TZSECONDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DOS_DOSERROR$non_lazy_ptr:
.indirect_symbol _U_DOS_DOSERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DOS_DRIVES$non_lazy_ptr:
.indirect_symbol _TC_DOS_DRIVES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DOS_DRIVESTR$non_lazy_ptr:
.indirect_symbol _U_DOS_DRIVESTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DOS_FIXDRIVESTR$non_lazy_ptr:
.indirect_symbol _TC_DOS_FIXDRIVESTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DOS_RTLFINDRECS$non_lazy_ptr:
.indirect_symbol _U_DOS_RTLFINDRECS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DOS_CURRSEARCHNUM$non_lazy_ptr:
.indirect_symbol _U_DOS_CURRSEARCHNUM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_ENVP$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_ENVP
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

