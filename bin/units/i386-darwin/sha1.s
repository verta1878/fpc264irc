# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_SHA1_INVERT$POINTER$POINTER$LONGWORD
_SHA1_INVERT$POINTER$POINTER$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	shrl	$2,%eax
	movl	$1,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jb	Lj10
	decl	-24(%ebp)
	.align 2
Lj11:
	incl	-24(%ebp)
	movl	-16(%ebp),%edx
	movzbl	2(%edx),%edx
	shll	$8,%edx
	movl	-16(%ebp),%ecx
	movzbl	3(%ecx),%ecx
	orl	%ecx,%edx
	movl	-16(%ebp),%ecx
	movzbl	1(%ecx),%ecx
	shll	$16,%ecx
	orl	%ecx,%edx
	movl	-16(%ebp),%ecx
	movzbl	(%ecx),%ecx
	shll	$24,%ecx
	orl	%ecx,%edx
	movl	-20(%ebp),%ecx
	movl	%edx,(%ecx)
	addl	$4,-16(%ebp)
	addl	$4,-20(%ebp)
	cmpl	-24(%ebp),%eax
	ja	Lj11
Lj10:
	leave
	ret

.text
	.align 4
.globl	_SHA1_SHA1INIT$TSHA1CONTEXT
_SHA1_SHA1INIT$TSHA1CONTEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$96,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	movl	$1732584193,(%eax)
	movl	-4(%ebp),%eax
	movl	$-271733879,4(%eax)
	movl	-4(%ebp),%eax
	movl	$-1732584194,8(%eax)
	movl	-4(%ebp),%eax
	movl	$271733878,12(%eax)
	movl	-4(%ebp),%eax
	movl	$-1009589776,16(%eax)
	leave
	ret

.text
	.align 4
.globl	_SHA1_SHA1TRANSFORM$TSHA1CONTEXT$POINTER
_SHA1_SHA1TRANSFORM$TSHA1CONTEXT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-28(%ebp)
	leal	-96(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$64,%ecx
	call	L_SHA1_INVERT$POINTER$POINTER$LONGWORD$stub
	movl	$0,-100(%ebp)
	.align 2
Lj52:
	movl	-16(%ebp),%ecx
	notl	%ecx
	movl	-24(%ebp),%eax
	andl	%eax,%ecx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	andl	%edx,%eax
	orl	%eax,%ecx
	addl	$1518500249,%ecx
	movl	-28(%ebp),%eax
	addl	%eax,%ecx
	movl	%ecx,-32(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-16(%ebp),%eax
	rorl	$2,%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%edx
	roll	$5,%edx
	movl	-32(%ebp),%eax
	addl	%eax,%edx
	movl	-100(%ebp),%eax
	andl	$15,%eax
	movl	-96(%ebp,%eax,4),%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-100(%ebp),%eax
	addl	$2,%eax
	andl	$15,%eax
	movl	-100(%ebp),%edx
	andl	$15,%edx
	movl	-96(%ebp,%eax,4),%ecx
	movl	-96(%ebp,%edx,4),%eax
	xorl	%eax,%ecx
	movl	-100(%ebp),%eax
	addl	$8,%eax
	andl	$15,%eax
	movl	-96(%ebp,%eax,4),%eax
	xorl	%eax,%ecx
	movl	-100(%ebp),%eax
	addl	$13,%eax
	andl	$15,%eax
	movl	-96(%ebp,%eax,4),%eax
	xorl	%eax,%ecx
	roll	$1,%ecx
	movl	-100(%ebp),%eax
	andl	$15,%eax
	movl	%ecx,-96(%ebp,%eax,4)
	incl	-100(%ebp)
	movl	-100(%ebp),%eax
	cmpl	$19,%eax
	jg	Lj54
	jmp	Lj52
Lj54:
	.align 2
Lj69:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	xorl	%eax,%edx
	movl	-24(%ebp),%eax
	xorl	%eax,%edx
	addl	$1859775393,%edx
	movl	-28(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-32(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-16(%ebp),%eax
	rorl	$2,%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%edx
	roll	$5,%edx
	movl	-32(%ebp),%eax
	addl	%eax,%edx
	movl	-100(%ebp),%eax
	andl	$15,%eax
	movl	-96(%ebp,%eax,4),%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-100(%ebp),%eax
	addl	$2,%eax
	andl	$15,%eax
	movl	-100(%ebp),%edx
	andl	$15,%edx
	movl	-96(%ebp,%eax,4),%ecx
	movl	-96(%ebp,%edx,4),%eax
	xorl	%eax,%ecx
	movl	-100(%ebp),%eax
	addl	$8,%eax
	andl	$15,%eax
	movl	-96(%ebp,%eax,4),%eax
	xorl	%eax,%ecx
	movl	-100(%ebp),%eax
	addl	$13,%eax
	andl	$15,%eax
	movl	-96(%ebp,%eax,4),%eax
	xorl	%eax,%ecx
	roll	$1,%ecx
	movl	-100(%ebp),%eax
	andl	$15,%eax
	movl	%ecx,-96(%ebp,%eax,4)
	incl	-100(%ebp)
	movl	-100(%ebp),%eax
	cmpl	$39,%eax
	jg	Lj71
	jmp	Lj69
Lj71:
	.align 2
Lj86:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	andl	%eax,%edx
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ecx
	andl	%ecx,%eax
	orl	%eax,%edx
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%ecx
	andl	%ecx,%eax
	orl	%eax,%edx
	addl	$-1894007588,%edx
	movl	-28(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-32(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-16(%ebp),%eax
	rorl	$2,%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%edx
	roll	$5,%edx
	movl	-32(%ebp),%eax
	addl	%eax,%edx
	movl	-100(%ebp),%eax
	andl	$15,%eax
	movl	-96(%ebp,%eax,4),%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-100(%ebp),%eax
	addl	$2,%eax
	andl	$15,%eax
	movl	-100(%ebp),%edx
	andl	$15,%edx
	movl	-96(%ebp,%eax,4),%ecx
	movl	-96(%ebp,%edx,4),%eax
	xorl	%eax,%ecx
	movl	-100(%ebp),%eax
	addl	$8,%eax
	andl	$15,%eax
	movl	-96(%ebp,%eax,4),%eax
	xorl	%eax,%ecx
	movl	-100(%ebp),%eax
	addl	$13,%eax
	andl	$15,%eax
	movl	-96(%ebp,%eax,4),%eax
	xorl	%eax,%ecx
	roll	$1,%ecx
	movl	-100(%ebp),%eax
	andl	$15,%eax
	movl	%ecx,-96(%ebp,%eax,4)
	incl	-100(%ebp)
	movl	-100(%ebp),%eax
	cmpl	$59,%eax
	jg	Lj88
	jmp	Lj86
Lj88:
	.align 2
Lj103:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	xorl	%eax,%edx
	movl	-24(%ebp),%eax
	xorl	%eax,%edx
	addl	$-899497514,%edx
	movl	-28(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-32(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-16(%ebp),%eax
	rorl	$2,%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%edx
	roll	$5,%edx
	movl	-32(%ebp),%eax
	addl	%eax,%edx
	movl	-100(%ebp),%eax
	andl	$15,%eax
	movl	-96(%ebp,%eax,4),%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-100(%ebp),%eax
	addl	$2,%eax
	andl	$15,%eax
	movl	-100(%ebp),%edx
	andl	$15,%edx
	movl	-96(%ebp,%eax,4),%ecx
	movl	-96(%ebp,%edx,4),%eax
	xorl	%eax,%ecx
	movl	-100(%ebp),%eax
	addl	$8,%eax
	andl	$15,%eax
	movl	-96(%ebp,%eax,4),%eax
	xorl	%eax,%ecx
	movl	-100(%ebp),%eax
	addl	$13,%eax
	andl	$15,%eax
	movl	-96(%ebp,%eax,4),%eax
	xorl	%eax,%ecx
	roll	$1,%ecx
	movl	-100(%ebp),%eax
	andl	$15,%eax
	movl	%ecx,-96(%ebp,%eax,4)
	incl	-100(%ebp)
	movl	-100(%ebp),%eax
	cmpl	$79,%eax
	jg	Lj105
	jmp	Lj103
Lj105:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,(%edx)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,8(%eax)
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,12(%edx)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	addl	%eax,16(%edx)
	movl	-4(%ebp),%eax
	addl	$64,88(%eax)
	adcl	$0,92(%eax)
	leave
	ret

.text
	.align 4
.globl	_SHA1_SHA1UPDATE$TSHA1CONTEXT$formal$LONGWORD
_SHA1_SHA1UPDATE$TSHA1CONTEXT$formal$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj122
	jmp	Lj123
Lj122:
	jmp	Lj120
Lj123:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	cmpl	$0,%eax
	ja	Lj128
	jmp	Lj129
Lj128:
	movl	-4(%ebp),%eax
	movl	84(%eax),%edx
	movl	$64,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-12(%ebp),%eax
	ja	Lj132
	jmp	Lj133
Lj132:
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj133:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	leal	20(%edx,%eax,1),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,84(%edx)
	movl	-20(%ebp),%eax
	addl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	cmpl	$64,%eax
	je	Lj142
	jmp	Lj143
Lj142:
	movl	-4(%ebp),%eax
	leal	20(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_SHA1_SHA1TRANSFORM$TSHA1CONTEXT$POINTER$stub
	movl	-4(%ebp),%eax
	movl	$0,84(%eax)
Lj143:
Lj129:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj153
	.align 2
Lj152:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SHA1_SHA1TRANSFORM$TSHA1CONTEXT$POINTER$stub
	addl	$64,-16(%ebp)
	subl	$64,-20(%ebp)
Lj153:
	movl	-20(%ebp),%eax
	cmpl	$64,%eax
	jae	Lj152
	jmp	Lj154
Lj154:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj159
	jmp	Lj160
Lj159:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,84(%eax)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	20(%edx),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj160:
Lj120:
	leave
	ret

.text
	.align 4
.globl	_SHA1_SHA1FINAL$TSHA1CONTEXT$TSHA1DIGEST
_SHA1_SHA1FINAL$TSHA1CONTEXT$TSHA1DIGEST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj170
Lj170:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	$0,%edx
	addl	88(%ecx),%eax
	adcl	92(%ecx),%edx
	shldl	$3,%eax,%edx
	shll	$3,%eax
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	cmpl	$56,%eax
	jae	Lj173
	jmp	Lj174
Lj173:
	movl	-4(%ebp),%eax
	movl	84(%eax),%edx
	movl	$120,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-20(%ebp)
	jmp	Lj177
Lj174:
	movl	-4(%ebp),%eax
	movl	84(%eax),%edx
	movl	$56,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-20(%ebp)
Lj177:
	movl	-20(%ebp),%ecx
	movl	L_TC_SHA1_PADDING$non_lazy_ptr-Lj170(%ebx),%edx
	movl	-4(%ebp),%eax
	call	L_SHA1_SHA1UPDATE$TSHA1CONTEXT$formal$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	L_SYSTEM_SWAPENDIAN$QWORD$$QWORD$stub
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$8,%ecx
	call	L_SHA1_SHA1UPDATE$TSHA1CONTEXT$formal$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$20,%ecx
	call	L_SHA1_INVERT$POINTER$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$96,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SHA1_SHA1STRING$ANSISTRING$$TSHA1DIGEST
_SHA1_SHA1STRING$ANSISTRING$$TSHA1DIGEST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-108(%ebp)
	call	Lj209
Lj209:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-104(%ebp),%eax
	call	L_SHA1_SHA1INIT$TSHA1CONTEXT$stub
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	jne	Lj214
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj209(%ebx),%eax
	movl	%eax,%edx
Lj214:
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj217
	movl	-4(%ecx),%ecx
Lj217:
	leal	-104(%ebp),%eax
	call	L_SHA1_SHA1UPDATE$TSHA1CONTEXT$formal$LONGWORD$stub
	movl	-8(%ebp),%edx
	leal	-104(%ebp),%eax
	call	L_SHA1_SHA1FINAL$TSHA1CONTEXT$TSHA1DIGEST$stub
	movl	-108(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SHA1_SHA1BUFFER$formal$LONGWORD$$TSHA1DIGEST
_SHA1_SHA1BUFFER$formal$LONGWORD$$TSHA1DIGEST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-108(%ebp),%eax
	call	L_SHA1_SHA1INIT$TSHA1CONTEXT$stub
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	-108(%ebp),%eax
	call	L_SHA1_SHA1UPDATE$TSHA1CONTEXT$formal$LONGWORD$stub
	movl	-12(%ebp),%edx
	leal	-108(%ebp),%eax
	call	L_SHA1_SHA1FINAL$TSHA1CONTEXT$TSHA1DIGEST$stub
	leave
	ret

.text
	.align 4
.globl	_SHA1_SHA1FILE$ANSISTRING$LONGWORD$$TSHA1DIGEST
_SHA1_SHA1FILE$ANSISTRING$LONGWORD$$TSHA1DIGEST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$728,%esp
	movl	%ebx,-720(%ebp)
	call	Lj239
Lj239:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-452(%ebp),%eax
	call	L_SHA1_SHA1INIT$TSHA1CONTEXT$stub
	movl	-4(%ebp),%ecx
	leal	-716(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-716(%ebp),%edx
	leal	-352(%ebp),%eax
	call	L_SYSTEM_ASSIGN$file$SHORTSTRING$stub
	movl	L_TC_SYSTEM_FILEMODE$non_lazy_ptr-Lj239(%ebx),%eax
	movzbl	(%eax),%eax
	movl	%eax,-460(%ebp)
	movl	L_TC_SYSTEM_FILEMODE$non_lazy_ptr-Lj239(%ebx),%eax
	movb	$0,(%eax)
	leal	-352(%ebp),%eax
	movl	$1,%edx
	call	L_SYSTEM_RESET$file$LONGINT$stub
	call	L_SYSTEM_IORESULT$$WORD$stub
	movzwl	%ax,%eax
	testl	%eax,%eax
	je	Lj260
	jmp	Lj261
Lj260:
	movl	-8(%ebp),%edx
	leal	-356(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	.align 2
Lj266:
	leal	-456(%ebp),%eax
	movl	%eax,(%esp)
	movl	-356(%ebp),%edx
	movl	-8(%ebp),%ecx
	leal	-352(%ebp),%eax
	call	L_SYSTEM_BLOCKREAD$file$formal$LONGWORD$LONGWORD$stub
	call	LFPC_IOCHECK$stub
	movl	-456(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj277
	jmp	Lj278
Lj277:
	movl	-356(%ebp),%edx
	movl	-456(%ebp),%ecx
	leal	-452(%ebp),%eax
	call	L_SHA1_SHA1UPDATE$TSHA1CONTEXT$formal$LONGWORD$stub
Lj278:
	movl	-456(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jb	Lj268
	jmp	Lj266
Lj268:
	movl	-8(%ebp),%edx
	movl	-356(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
	leal	-352(%ebp),%eax
	call	L_SYSTEM_CLOSE$file$stub
	call	LFPC_IOCHECK$stub
Lj261:
	movl	-12(%ebp),%edx
	leal	-452(%ebp),%eax
	call	L_SHA1_SHA1FINAL$TSHA1CONTEXT$TSHA1DIGEST$stub
	movb	-460(%ebp),%dl
	movl	L_TC_SYSTEM_FILEMODE$non_lazy_ptr-Lj239(%ebx),%eax
	movb	%dl,(%eax)
	movl	-720(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SHA1_SHA1PRINT$TSHA1DIGEST$$ANSISTRING
_SHA1_SHA1PRINT$TSHA1DIGEST$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj298
Lj298:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$40,%edx
	call	Lfpc_ansistr_setlength$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj307:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	shrl	$4,%eax
	andl	$15,%eax
	movl	-16(%ebp),%ecx
	movl	L_TC_SHA1_HEXTBL$non_lazy_ptr-Lj298(%ebx),%edx
	movb	(%edx,%eax,1),%al
	movb	%al,(%ecx)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	(%edx,%eax,1),%al
	andb	$15,%al
	movzbl	%al,%eax
	movl	-16(%ebp),%ecx
	movl	L_TC_SHA1_HEXTBL$non_lazy_ptr-Lj298(%ebx),%edx
	movb	(%edx,%eax,1),%al
	movb	%al,1(%ecx)
	addl	$2,-16(%ebp)
	cmpl	$19,-12(%ebp)
	jl	Lj307
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SHA1_SHA1MATCH$TSHA1DIGEST$TSHA1DIGEST$$BOOLEAN
_SHA1_SHA1MATCH$TSHA1DIGEST$TSHA1DIGEST$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%eax),%eax
	cmpl	(%edx),%eax
	je	Lj319
	jmp	Lj315
Lj319:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	4(%eax),%eax
	cmpl	4(%edx),%eax
	je	Lj318
	jmp	Lj315
Lj318:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	8(%edx),%eax
	je	Lj317
	jmp	Lj315
Lj317:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	12(%eax),%eax
	cmpl	12(%edx),%eax
	je	Lj316
	jmp	Lj315
Lj316:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	16(%edx),%eax
	je	Lj314
	jmp	Lj315
Lj314:
	movb	$1,-9(%ebp)
	jmp	Lj320
Lj315:
	movb	$0,-9(%ebp)
Lj320:
	movb	-9(%ebp),%al
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_SHA1
_THREADVARLIST_SHA1:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
.globl	_TC_SHA1_PADDING
_TC_SHA1_PADDING:
	.byte	128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
.globl	_TC_SHA1_HEXTBL
_TC_SHA1_HEXTBL:
	.byte	48,49,50,51,52,53,54,55,56,57,97,98,99,100,101,102
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SHA1_INVERT$POINTER$POINTER$LONGWORD$stub:
.indirect_symbol _SHA1_INVERT$POINTER$POINTER$LONGWORD
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

L_SHA1_SHA1TRANSFORM$TSHA1CONTEXT$POINTER$stub:
.indirect_symbol _SHA1_SHA1TRANSFORM$TSHA1CONTEXT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SHA1_SHA1UPDATE$TSHA1CONTEXT$formal$LONGWORD$stub:
.indirect_symbol _SHA1_SHA1UPDATE$TSHA1CONTEXT$formal$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_SWAPENDIAN$QWORD$$QWORD$stub:
.indirect_symbol _SYSTEM_SWAPENDIAN$QWORD$$QWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SHA1_SHA1INIT$TSHA1CONTEXT$stub:
.indirect_symbol _SHA1_SHA1INIT$TSHA1CONTEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SHA1_SHA1FINAL$TSHA1CONTEXT$TSHA1DIGEST$stub:
.indirect_symbol _SHA1_SHA1FINAL$TSHA1CONTEXT$TSHA1DIGEST
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

L_SYSTEM_ASSIGN$file$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_ASSIGN$file$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_RESET$file$LONGINT$stub:
.indirect_symbol _SYSTEM_RESET$file$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_IORESULT$$WORD$stub:
.indirect_symbol _SYSTEM_IORESULT$$WORD
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

L_SYSTEM_BLOCKREAD$file$formal$LONGWORD$LONGWORD$stub:
.indirect_symbol _SYSTEM_BLOCKREAD$file$formal$LONGWORD$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_IOCHECK$stub:
.indirect_symbol FPC_IOCHECK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_CLOSE$file$stub:
.indirect_symbol _SYSTEM_CLOSE$file
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_setlength$stub:
.indirect_symbol fpc_ansistr_setlength
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
.globl	_INIT_SHA1_TSHA1DIGEST
_INIT_SHA1_TSHA1DIGEST:
	.byte	12
	.ascii	"\013TSHA1Digest"
	.long	1,20
	.long	_INIT_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_SHA1_TSHA1DIGEST
_RTTI_SHA1_TSHA1DIGEST:
	.byte	12
	.ascii	"\013TSHA1Digest"
	.long	1,20
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_INIT_SHA1_TSHA1CONTEXT
_INIT_SHA1_TSHA1CONTEXT:
	.byte	13,12
	.ascii	"TSHA1Context"
	.long	96,0

.const_data
	.align 2
.globl	_RTTI_SHA1_DEF2
_RTTI_SHA1_DEF2:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_RTTI_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_RTTI_SHA1_DEF3
_RTTI_SHA1_DEF3:
	.byte	12
	.ascii	"\000"
	.long	1,64
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_SHA1_TSHA1CONTEXT
_RTTI_SHA1_TSHA1CONTEXT:
	.byte	13,12
	.ascii	"TSHA1Context"
	.long	96,4
	.long	_RTTI_SHA1_DEF2
	.long	0
	.long	_RTTI_SHA1_DEF3
	.long	20
	.long	_RTTI_SYSTEM_LONGWORD
	.long	84
	.long	_RTTI_SYSTEM_QWORD
	.long	88
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
L_TC_SHA1_PADDING$non_lazy_ptr:
.indirect_symbol _TC_SHA1_PADDING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSTEM_FILEMODE$non_lazy_ptr:
.indirect_symbol _TC_SYSTEM_FILEMODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SHA1_HEXTBL$non_lazy_ptr:
.indirect_symbol _TC_SHA1_HEXTBL
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

