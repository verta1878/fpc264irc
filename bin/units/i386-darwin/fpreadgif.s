# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPREADGIF_TFPREADERGIF_$__READPALETTE$TSTREAM$LONGINT
_FPREADGIF_TFPREADERGIF_$__READPALETTE$TSTREAM$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	movl	$0,%edx
	movl	-12(%ebp),%ecx
	movl	64(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-8(%ebp),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj10
	decl	-20(%ebp)
	.align 2
Lj11:
	incl	-20(%ebp)
	leal	-15(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	movzbl	-15(%ebp),%eax
	shll	$8,%eax
	movzbl	-15(%ebp),%edx
	orl	%edx,%eax
	movw	%ax,-28(%ebp)
	movzbl	-14(%ebp),%eax
	shll	$8,%eax
	movzbl	-14(%ebp),%edx
	orl	%edx,%eax
	movw	%ax,-26(%ebp)
	movzbl	-13(%ebp),%eax
	shll	$8,%eax
	movzbl	-13(%ebp),%edx
	orl	%edx,%eax
	movw	%ax,-24(%ebp)
	movw	$65535,-22(%ebp)
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	leal	-28(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	64(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	cmpl	-20(%ebp),%ebx
	jg	Lj11
Lj10:
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADGIF_TFPREADERGIF_$__ANALYZEHEADER$$BOOLEAN
_FPREADGIF_TFPREADERGIF_$__ANALYZEHEADER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	call	Lj31
Lj31:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj32
	movb	$0,-5(%ebp)
	movl	-4(%ebp),%eax
	leal	24(%eax),%eax
	movl	%eax,%ebx
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	%ebx,%eax
	movb	$1,%cl
	movl	$2,%edx
	call	Lfpc_chararray_to_ansistr$stub
	movl	-60(%ebp),%eax
	movl	L_$FPREADGIF$_Ld1$non_lazy_ptr-Lj31(%edi),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj41
	jmp	Lj40
Lj41:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	leal	3(%ebx),%eax
	movb	$1,%cl
	movl	$2,%edx
	call	Lfpc_chararray_to_ansistr$stub
	movl	-60(%ebp),%eax
	movl	L_$FPREADGIF$_Ld3$non_lazy_ptr-Lj31(%edi),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj39
	jmp	Lj54
Lj54:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	leal	3(%ebx),%eax
	movb	$1,%cl
	movl	$2,%edx
	call	Lfpc_chararray_to_ansistr$stub
	movl	-60(%ebp),%eax
	movl	L_$FPREADGIF$_Ld5$non_lazy_ptr-Lj31(%edi),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj39
	jmp	Lj40
Lj40:
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj31(%edi),%edx
	movl	L_$FPREADGIF$_Ld7$non_lazy_ptr-Lj31(%edi),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj31(%edi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj39:
	movb	10(%ebx),%al
	andb	$112,%al
	movzbl	%al,%eax
	shrl	$5,%eax
	incl	%eax
	movl	-4(%ebp),%edx
	movb	%al,79(%edx)
	movb	10(%ebx),%al
	andb	$7,%al
	movzbl	%al,%eax
	incl	%eax
	movl	-4(%ebp),%edx
	movb	%al,77(%edx)
	movl	-4(%ebp),%edx
	movb	11(%ebx),%al
	movb	%al,78(%edx)
	movl	-4(%ebp),%eax
	leal	38(%eax),%edx
	movl	-4(%ebp),%ecx
	movzwl	4(%edx),%eax
	movl	%eax,68(%ecx)
	movl	-4(%ebp),%ecx
	movzwl	6(%edx),%eax
	movl	%eax,72(%ecx)
	movl	-4(%ebp),%ecx
	movb	8(%edx),%al
	andb	$64,%al
	movzbl	%al,%eax
	cmpl	$64,%eax
	seteb	76(%ecx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movzbl	78(%eax),%eax
	testl	%eax,%eax
	setneb	54(%edx)
	movl	-4(%ebp),%eax
	cmpb	$0,55(%eax)
	jne	Lj101
	jmp	Lj102
Lj101:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	49(%eax),%al
	andb	$1,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	54(%edx)
	movl	-4(%ebp),%eax
	cmpb	$0,54(%eax)
	jne	Lj105
	jmp	Lj106
Lj105:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	52(%eax),%al
	movb	%al,78(%edx)
Lj106:
Lj102:
	movl	-4(%ebp),%eax
	movl	72(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	imull	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,60(%eax)
	movl	-4(%ebp),%eax
	movl	60(%eax),%edx
	movl	-4(%ebp),%eax
	leal	56(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	cmpb	$0,54(%eax)
	jne	Lj115
	jmp	Lj116
Lj115:
	movl	-4(%ebp),%eax
	movzbl	78(%eax),%edx
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-68(%ebp)
	movl	%edx,-64(%ebp)
	movl	-68(%ebp),%eax
	movl	%eax,-14(%ebp)
	movl	-64(%ebp),%eax
	movl	%eax,-10(%ebp)
	movw	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	movzbl	78(%eax),%edx
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	leal	-14(%ebp),%ecx
	movl	-4(%ebp),%esi
	movl	64(%esi),%esi
	movl	(%esi),%esi
	call	*104(%esi)
Lj116:
	movb	$1,-5(%ebp)
Lj32:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj33
	call	LFPC_RERAISE$stub
Lj33:
	movb	-5(%ebp),%al
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADGIF_TFPREADERGIF_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
_FPREADGIF_TFPREADERGIF_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-124(%ebp)
	movl	%esi,-120(%ebp)
	movl	%edi,-116(%ebp)
	call	Lj134
Lj134:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,64(%eax)
	movl	-12(%ebp),%eax
	movl	$0,56(%eax)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj139
	movb	$1,-21(%ebp)
	movb	$0,%bl
	movl	$0,4(%esp)
	leal	-80(%ebp),%eax
	movl	%eax,(%esp)
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-80(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	leal	-21(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$0,%edx
	movl	-12(%ebp),%edi
	movl	(%edi),%edi
	movb	%bl,12(%esp)
	call	*100(%edi)
	movb	-21(%ebp),%al
	testb	%al,%al
	je	Lj169
	jmp	Lj170
Lj169:
	jmp	Lj142
Lj170:
	movl	L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr-Lj134(%esi),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE$stub
	movl	-12(%ebp),%edx
	movl	%eax,64(%edx)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-12(%ebp),%eax
	leal	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$13,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movb	$0,%bl
	movl	$0,4(%esp)
	leal	-80(%ebp),%eax
	movl	%eax,(%esp)
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-80(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	leal	-21(%ebp),%eax
	movl	%eax,(%esp)
	fnstcw	-84(%ebp)
	fnstcw	-82(%ebp)
	orw	$3840,-84(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-96(%ebp)
	movl	%edx,-92(%ebp)
	fildq	-96(%ebp)
	fstpt	-112(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-96(%ebp)
	movl	%edx,-92(%ebp)
	fildq	-96(%ebp)
	fldt	-112(%ebp)
	fdivp	%st,%st(1)
	movl	L_$FPREADGIF$_Ld9$non_lazy_ptr-Lj134(%esi),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldcw	-84(%ebp)
	fistpq	-96(%ebp)
	fldcw	-82(%ebp)
	fwait
	movb	-96(%ebp),%cl
	movl	-12(%ebp),%eax
	movl	$1,%edx
	movl	-12(%ebp),%edi
	movl	(%edi),%edi
	movb	%bl,12(%esp)
	call	*100(%edi)
	movb	-21(%ebp),%al
	testb	%al,%al
	je	Lj217
	jmp	Lj218
Lj217:
	jmp	Lj142
Lj218:
	movl	-12(%ebp),%eax
	movb	34(%eax),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj219
	jmp	Lj220
Lj219:
	movl	-12(%ebp),%eax
	movb	34(%eax),%al
	andb	$7,%al
	movzbl	%al,%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	movl	$1,%eax
	movl	-20(%ebp),%ecx
	shll	%cl,%eax
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADGIF_TFPREADERGIF_$__READPALETTE$TSTREAM$LONGINT$stub
Lj220:
	.align 2
Lj229:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADGIF_TFPREADERGIF_$__SKIPBLOCK$TSTREAM$$BYTE$stub
	movb	%al,-13(%ebp)
	movzbl	-13(%ebp),%eax
	cmpl	$44,%eax
	je	Lj231
	jmp	Lj238
Lj238:
	movzbl	-13(%ebp),%eax
	cmpl	$59,%eax
	je	Lj231
	jmp	Lj229
Lj231:
	movl	-12(%ebp),%eax
	leal	38(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$9,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-12(%ebp),%eax
	movb	46(%eax),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj245
	jmp	Lj246
Lj245:
	movl	-12(%ebp),%eax
	movb	46(%eax),%al
	andb	$7,%al
	movzbl	%al,%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	movl	$1,%eax
	movl	-20(%ebp),%ecx
	shll	%cl,%eax
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADGIF_TFPREADERGIF_$__READPALETTE$TSTREAM$LONGINT$stub
Lj246:
	movl	-12(%ebp),%eax
	call	L_FPREADGIF_TFPREADERGIF_$__ANALYZEHEADER$$BOOLEAN$stub
	testb	%al,%al
	je	Lj255
	jmp	Lj256
Lj255:
	jmp	Lj142
Lj256:
	movl	-12(%ebp),%eax
	cmpl	$0,80(%eax)
	jne	Lj259
	jmp	Lj260
Lj259:
	movl	-12(%ebp),%eax
	movl	84(%eax),%eax
	leal	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	80(%ebx),%ebx
	call	*%ebx
Lj260:
	movl	-12(%ebp),%eax
	movl	72(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	68(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*148(%ebx)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
	testb	%al,%al
	je	Lj273
	jmp	Lj274
Lj273:
	jmp	Lj142
Lj274:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*120(%ecx)
	testb	%al,%al
	je	Lj279
	jmp	Lj280
Lj279:
	jmp	Lj142
Lj280:
Lj139:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	leal	64(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-12(%ebp),%eax
	leal	56(%eax),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj140
	decl	%eax
	testl	%eax,%eax
	je	Lj141
	decl	%eax
	testl	%eax,%eax
	je	Lj133
Lj141:
	call	LFPC_RERAISE$stub
Lj142:
	movl	-64(%ebp),%eax
	movl	$2,-64(%ebp)
	jmp	Lj139
Lj140:
	movb	$0,%bl
	leal	-112(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	72(%eax),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	68(%eax),%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-112(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	leal	-21(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movb	$100,%cl
	movl	$2,%edx
	movl	-12(%ebp),%edi
	movl	(%edi),%edi
	movb	%bl,12(%esp)
	call	*100(%edi)
Lj133:
	movl	-124(%ebp),%ebx
	movl	-120(%ebp),%esi
	movl	-116(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADGIF_TFPREADERGIF_$__READSCANLINE$TSTREAM$$BOOLEAN
_FPREADGIF_TFPREADERGIF_$__READSCANLINE$TSTREAM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24792,%esp
	movl	%ebx,-24764(%ebp)
	movl	%esi,-24760(%ebp)
	movl	%edi,-24756(%ebp)
	call	Lj316
Lj316:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-24648(%ebp)
	movb	$1,-24661(%ebp)
	leal	-24676(%ebp),%ecx
	leal	-24700(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-24704(%ebp)
	testl	%eax,%eax
	jne	Lj321
	leal	-24654(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-16(%ebp)
	movl	$0,-24(%ebp)
	.align 2
Lj337:
	leal	-24653(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movzbl	-24653(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj346
	jmp	Lj347
Lj346:
	movzbl	-24653(%ebp),%eax
	addl	%eax,-24(%ebp)
	movzbl	-24653(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	$1,%cx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*136(%ebx)
	movl	$1,%eax
	movl	-52(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	%eax,-56(%ebp)
Lj347:
	movzbl	-24653(%ebp),%eax
	testl	%eax,%eax
	je	Lj339
	jmp	Lj337
Lj339:
	movb	$0,%bl
	movl	$0,4(%esp)
	leal	-24720(%ebp),%eax
	movl	%eax,(%esp)
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-24720(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	leal	-24661(%ebp),%eax
	movl	%eax,(%esp)
	fnstcw	-24724(%ebp)
	fnstcw	-24722(%ebp)
	orw	$3840,-24724(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-24736(%ebp)
	movl	%edx,-24732(%ebp)
	fildq	-24736(%ebp)
	fstpt	-24752(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-24736(%ebp)
	movl	%edx,-24732(%ebp)
	fildq	-24736(%ebp)
	fldt	-24752(%ebp)
	fdivp	%st,%st(1)
	movl	L_$FPREADGIF$_Ld9$non_lazy_ptr-Lj316(%esi),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldcw	-24724(%ebp)
	fistpq	-24736(%ebp)
	fldcw	-24722(%ebp)
	fwait
	movb	-24736(%ebp),%cl
	movl	-8(%ebp),%eax
	movl	$1,%edx
	movl	-8(%ebp),%edi
	movl	(%edi),%edi
	movb	%bl,12(%esp)
	call	*100(%edi)
	movb	-24661(%ebp),%al
	testb	%al,%al
	je	Lj384
	jmp	Lj385
Lj384:
	movb	$0,-9(%ebp)
	jmp	Lj324
Lj385:
	movl	-24(%ebp),%edx
	leal	-24648(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-24648(%ebp),%eax
	movl	%eax,-44(%ebp)
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	.align 2
Lj398:
	leal	-24653(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movzbl	-24653(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj407
	jmp	Lj408
Lj407:
	movl	-44(%ebp),%edx
	movzbl	-24653(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movzbl	-24653(%ebp),%eax
	addl	%eax,-44(%ebp)
Lj408:
	movzbl	-24653(%ebp),%eax
	testl	%eax,%eax
	je	Lj400
	jmp	Lj398
Lj400:
	movb	$0,%bl
	movl	$0,4(%esp)
	leal	-24752(%ebp),%eax
	movl	%eax,(%esp)
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-24752(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	leal	-24661(%ebp),%eax
	movl	%eax,(%esp)
	fnstcw	-24712(%ebp)
	fnstcw	-24710(%ebp)
	orw	$3840,-24712(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-24720(%ebp)
	movl	%edx,-24716(%ebp)
	fildq	-24720(%ebp)
	fstpt	-24728(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-24736(%ebp)
	movl	%edx,-24732(%ebp)
	fildq	-24736(%ebp)
	fldt	-24728(%ebp)
	fdivp	%st,%st(1)
	movl	L_$FPREADGIF$_Ld9$non_lazy_ptr-Lj316(%esi),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldcw	-24712(%ebp)
	fistpq	-24720(%ebp)
	fldcw	-24710(%ebp)
	fwait
	movb	-24720(%ebp),%cl
	movl	-8(%ebp),%eax
	movl	$1,%edx
	movl	-8(%ebp),%edi
	movl	(%edi),%edi
	movb	%bl,12(%esp)
	call	*100(%edi)
	movb	-24661(%ebp),%al
	testb	%al,%al
	je	Lj443
	jmp	Lj444
Lj443:
	movb	$0,-9(%ebp)
	jmp	Lj324
Lj444:
	movl	-24648(%ebp),%eax
	movl	%eax,-44(%ebp)
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,-24652(%ebp)
	movzbl	-24654(%ebp),%eax
	incl	%eax
	movl	%eax,-52(%ebp)
	movzbl	-24654(%ebp),%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movw	%ax,-24658(%ebp)
	movzwl	-24658(%ebp),%eax
	incl	%eax
	movw	%ax,-24660(%ebp)
	movzwl	-24658(%ebp),%eax
	addl	$2,%eax
	movl	%eax,-60(%ebp)
	movl	$4096,-64(%ebp)
	movl	$1,%eax
	movl	-52(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	%eax,-56(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	68(%eax),%edx
	movl	72(%ecx),%eax
	imull	%eax,%edx
	movl	%edx,-20(%ebp)
	movzwl	-24658(%ebp),%eax
	decl	%eax
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj466
	decl	-28(%ebp)
	.align 2
Lj467:
	incl	-28(%ebp)
	movl	-28(%ebp),%edx
	movl	$4096,-16448(%ebp,%edx,4)
	movl	-28(%ebp),%ecx
	movb	-28(%ebp),%dl
	movb	%dl,-20544(%ebp,%ecx,1)
	cmpl	-28(%ebp),%eax
	jg	Lj467
Lj466:
	leal	-24640(%ebp),%eax
	movl	%eax,-24644(%ebp)
	movb	$0,-24655(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-36(%ebp)
	jmp	Lj481
	.align 2
Lj480:
	movl	-44(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-36(%ebp),%ecx
	shll	%cl,%eax
	addl	%eax,-32(%ebp)
	addl	$8,-36(%ebp)
	jmp	Lj484
	.align 2
Lj483:
	movl	-32(%ebp),%edx
	movl	-56(%ebp),%eax
	andl	%eax,%edx
	movl	%edx,-40(%ebp)
	movl	-32(%ebp),%eax
	movl	-52(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-32(%ebp)
	movl	-52(%ebp),%eax
	subl	%eax,-36(%ebp)
	movzwl	-24660(%ebp),%eax
	cmpl	-40(%ebp),%eax
	je	Lj490
	jmp	Lj491
Lj490:
	jmp	Lj485
Lj491:
	movzwl	-24658(%ebp),%eax
	cmpl	-40(%ebp),%eax
	je	Lj492
	jmp	Lj493
Lj492:
	movzbl	-24654(%ebp),%eax
	incl	%eax
	movl	%eax,-52(%ebp)
	movl	$1,%eax
	movl	-52(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	%eax,-56(%ebp)
	movzwl	-24658(%ebp),%eax
	addl	$2,%eax
	movl	%eax,-60(%ebp)
	movl	$4096,-64(%ebp)
	jmp	Lj484
Lj493:
	movl	-40(%ebp),%eax
	cmpl	-60(%ebp),%eax
	ja	Lj502
	jmp	Lj503
Lj502:
	jmp	Lj485
Lj503:
	movl	-64(%ebp),%eax
	cmpl	$4096,%eax
	je	Lj504
	jmp	Lj505
Lj504:
	movl	-40(%ebp),%eax
	movb	-20544(%ebp,%eax,1),%al
	movb	%al,-24655(%ebp)
	movl	-24652(%ebp),%eax
	movb	-24655(%ebp),%dl
	movb	%dl,(%eax)
	incl	-24652(%ebp)
	decl	-20(%ebp)
	movl	-40(%ebp),%eax
	movl	%eax,-64(%ebp)
	jmp	Lj484
Lj505:
	movl	-40(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-40(%ebp),%eax
	cmpl	-60(%ebp),%eax
	je	Lj514
	jmp	Lj515
Lj514:
	movl	-24644(%ebp),%eax
	movb	-24655(%ebp),%dl
	movb	%dl,(%eax)
	incl	-24644(%ebp)
	movl	-64(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj515:
	jmp	Lj521
	.align 2
Lj520:
	movl	-24644(%ebp),%edx
	movl	-40(%ebp),%eax
	movb	-20544(%ebp,%eax,1),%al
	movb	%al,(%edx)
	incl	-24644(%ebp)
	movl	-40(%ebp),%eax
	movl	-16448(%ebp,%eax,4),%eax
	movl	%eax,-40(%ebp)
Lj521:
	movzwl	-24658(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jb	Lj520
	jmp	Lj522
Lj522:
	movl	-40(%ebp),%eax
	movb	-20544(%ebp,%eax,1),%al
	movb	%al,-24655(%ebp)
	movl	-24644(%ebp),%eax
	movb	-24655(%ebp),%dl
	movb	%dl,(%eax)
	incl	-24644(%ebp)
	movl	-60(%ebp),%eax
	movl	-64(%ebp),%edx
	movl	%edx,-16448(%ebp,%eax,4)
	movl	-60(%ebp),%eax
	movb	-24655(%ebp),%dl
	movb	%dl,-20544(%ebp,%eax,1)
	movl	-60(%ebp),%eax
	cmpl	-56(%ebp),%eax
	je	Lj537
	jmp	Lj536
Lj537:
	movl	-52(%ebp),%eax
	cmpl	$12,%eax
	jb	Lj535
	jmp	Lj536
Lj535:
	incl	-52(%ebp)
	movl	$1,%eax
	movl	-52(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	%eax,-56(%ebp)
Lj536:
	movl	-60(%ebp),%eax
	cmpl	$4095,%eax
	jb	Lj540
	jmp	Lj541
Lj540:
	incl	-60(%ebp)
Lj541:
	movl	-48(%ebp),%eax
	movl	%eax,-64(%ebp)
	.align 2
Lj544:
	decl	-24644(%ebp)
	movl	-24652(%ebp),%edx
	movl	-24644(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-24652(%ebp)
	decl	-20(%ebp)
	leal	-24640(%ebp),%eax
	cmpl	-24644(%ebp),%eax
	je	Lj546
	jmp	Lj544
Lj546:
Lj484:
	movl	-36(%ebp),%eax
	cmpl	-52(%ebp),%eax
	jae	Lj483
	jmp	Lj485
Lj485:
	incl	-44(%ebp)
	decl	-24(%ebp)
Lj481:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj549
	jmp	Lj482
Lj549:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj480
	jmp	Lj482
Lj482:
	movb	$0,%bl
	movl	$0,4(%esp)
	leal	-24752(%ebp),%eax
	movl	%eax,(%esp)
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-24752(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	leal	-24661(%ebp),%eax
	movl	%eax,(%esp)
	fnstcw	-24712(%ebp)
	fnstcw	-24710(%ebp)
	orw	$3840,-24712(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-24720(%ebp)
	movl	%edx,-24716(%ebp)
	fildq	-24720(%ebp)
	fstpt	-24728(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-24736(%ebp)
	movl	%edx,-24732(%ebp)
	fildq	-24736(%ebp)
	fldt	-24728(%ebp)
	fdivp	%st,%st(1)
	movl	L_$FPREADGIF$_Ld9$non_lazy_ptr-Lj316(%esi),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldcw	-24712(%ebp)
	fistpq	-24720(%ebp)
	fldcw	-24710(%ebp)
	fwait
	movb	-24720(%ebp),%cl
	movl	-8(%ebp),%eax
	movl	$1,%edx
	movl	-8(%ebp),%edi
	movl	(%edi),%edi
	movb	%bl,12(%esp)
	call	*100(%edi)
	movb	-24661(%ebp),%al
	testb	%al,%al
	je	Lj578
	jmp	Lj579
Lj578:
	movb	$0,-9(%ebp)
	jmp	Lj324
Lj579:
Lj321:
	call	LFPC_POPADDRSTACK$stub
	movl	-24648(%ebp),%eax
	testl	%eax,%eax
	jne	Lj582
	jmp	Lj583
Lj582:
	movl	-24648(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj583:
	movl	-24704(%ebp),%eax
	testl	%eax,%eax
	je	Lj322
	decl	%eax
	testl	%eax,%eax
	je	Lj323
	decl	%eax
	testl	%eax,%eax
	je	Lj315
Lj323:
	call	LFPC_RERAISE$stub
Lj324:
	movl	-24704(%ebp),%eax
	movl	$2,-24704(%ebp)
	jmp	Lj321
Lj322:
	movb	$1,-9(%ebp)
Lj315:
	movb	-9(%ebp),%al
	movl	-24764(%ebp),%ebx
	movl	-24760(%ebp),%esi
	movl	-24756(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADGIF_TFPREADERGIF_$__WRITESCANLINE$TFPCUSTOMIMAGE$$BOOLEAN
_FPREADGIF_TFPREADERGIF_$__WRITESCANLINE$TFPCUSTOMIMAGE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,76(%eax)
	jne	Lj596
	jmp	Lj597
Lj596:
	movb	$1,-21(%ebp)
	decb	-21(%ebp)
	.align 2
Lj600:
	incb	-21(%ebp)
	movb	-21(%ebp),%al
	cmpb	$1,%al
	jb	Lj602
	decb	%al
	je	Lj603
	decb	%al
	je	Lj604
	decb	%al
	je	Lj605
	decb	%al
	je	Lj606
	jmp	Lj602
Lj603:
	movl	$0,-16(%ebp)
	movb	$8,-22(%ebp)
	jmp	Lj601
Lj604:
	movl	$4,-16(%ebp)
	movb	$8,-22(%ebp)
	jmp	Lj601
Lj605:
	movl	$2,-16(%ebp)
	movb	$4,-22(%ebp)
	jmp	Lj601
Lj606:
	movl	$1,-16(%ebp)
	movb	$2,-22(%ebp)
	jmp	Lj601
Lj602:
Lj601:
	.align 2
Lj623:
	movl	-4(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj627
	decl	-20(%ebp)
	.align 2
Lj628:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	-28(%ebp),%edx
	movzbl	(%edx),%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	incl	-28(%ebp)
	cmpl	-20(%ebp),%ebx
	jg	Lj628
Lj627:
	movzbl	-22(%ebp),%eax
	addl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj625
	jmp	Lj623
Lj625:
	cmpb	$4,-21(%ebp)
	jb	Lj600
	jmp	Lj641
Lj597:
	movl	-4(%ebp),%eax
	movl	28(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj643
	decl	-16(%ebp)
	.align 2
Lj644:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%esi
	decl	%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj646
	decl	-20(%ebp)
	.align 2
Lj647:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	-28(%ebp),%edx
	movzbl	(%edx),%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	incl	-28(%ebp)
	cmpl	-20(%ebp),%esi
	jg	Lj647
Lj646:
	cmpl	-16(%ebp),%ebx
	jg	Lj644
Lj643:
Lj641:
	movb	$1,-9(%ebp)
	movb	-9(%ebp),%al
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADGIF_TFPREADERGIF_$_WRITESCANLINE$TFPCUSTOMIMAGE$$BOOLEAN_ISMULTIPLE$LONGINT$LONGINT$$BOOLEAN
_FPREADGIF_TFPREADERGIF_$_WRITESCANLINE$TFPCUSTOMIMAGE$$BOOLEAN_ISMULTIPLE$LONGINT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj665
	jmp	Lj663
Lj665:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj664
	jmp	Lj663
Lj664:
	movl	-4(%ebp),%eax
	cltd
	idivl	-8(%ebp)
	testl	%edx,%edx
	je	Lj662
	jmp	Lj663
Lj662:
	movb	$1,-13(%ebp)
	jmp	Lj666
Lj663:
	movb	$0,-13(%ebp)
Lj666:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPREADGIF_TFPREADERGIF_$__INTERNALCHECK$TSTREAM$$BOOLEAN
_FPREADGIF_TFPREADERGIF_$__INTERNALCHECK$TSTREAM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%ebx,-152(%ebp)
	movl	%esi,-148(%ebp)
	call	Lj668
Lj668:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-104(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj669
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj674
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	movl	-8(%ebp),%eax
	leal	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$13,%ecx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	leal	24(%eax),%eax
	movb	$1,%cl
	movl	$2,%edx
	call	Lfpc_chararray_to_ansistr$stub
	movl	-104(%ebp),%eax
	movl	L_$FPREADGIF$_Ld1$non_lazy_ptr-Lj668(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj690
	jmp	Lj689
Lj690:
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	leal	27(%eax),%eax
	movb	$1,%cl
	movl	$2,%edx
	call	Lfpc_chararray_to_ansistr$stub
	movl	-104(%ebp),%eax
	movl	L_$FPREADGIF$_Ld3$non_lazy_ptr-Lj668(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj688
	jmp	Lj703
Lj703:
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	leal	27(%eax),%eax
	movb	$1,%cl
	movl	$2,%edx
	call	Lfpc_chararray_to_ansistr$stub
	movl	-104(%ebp),%eax
	movl	L_$FPREADGIF$_Ld5$non_lazy_ptr-Lj668(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj688
	jmp	Lj689
Lj688:
	movb	$1,-9(%ebp)
	jmp	Lj728
Lj689:
	movb	$0,-9(%ebp)
Lj728:
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
Lj674:
	call	LFPC_POPADDRSTACK$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj676
	leal	-116(%ebp),%ecx
	leal	-140(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-144(%ebp)
	testl	%eax,%eax
	jne	Lj734
	movb	$0,-9(%ebp)
Lj734:
	call	LFPC_POPADDRSTACK$stub
	movl	-144(%ebp),%eax
	testl	%eax,%eax
	je	Lj733
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj733:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj676
Lj676:
Lj669:
	call	LFPC_POPADDRSTACK$stub
	leal	-104(%ebp),%edx
	movl	%edx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj670
	call	LFPC_RERAISE$stub
Lj670:
	movb	-9(%ebp),%al
	movl	-152(%ebp),%ebx
	movl	-148(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADGIF_TFPREADERGIF_$__SKIPBLOCK$TSTREAM$$BYTE
_FPREADGIF_TFPREADERGIF_$__SKIPBLOCK$TSTREAM$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-10(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movzbl	-10(%ebp),%eax
	cmpl	$33,%eax
	je	Lj745
	jmp	Lj746
Lj745:
	leal	-11(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movb	-11(%ebp),%al
	cmpb	$1,%al
	jb	Lj754
	decb	%al
	je	Lj757
	subb	$248,%al
	je	Lj756
	subb	$5,%al
	jb	Lj754
	subb	$1,%al
	jbe	Lj755
	jmp	Lj754
Lj755:
	jmp	Lj759
	.align 2
Lj758:
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movzbl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj767
	jmp	Lj768
Lj767:
	jmp	Lj760
Lj768:
	movzbl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	$1,%cx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*136(%ebx)
Lj759:
	jmp	Lj758
Lj760:
	jmp	Lj753
Lj756:
	movl	-8(%ebp),%eax
	leal	48(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$6,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-8(%ebp),%eax
	movb	$1,55(%eax)
	jmp	Lj753
Lj757:
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movzbl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	$1,%cx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*136(%ebx)
	jmp	Lj796
	.align 2
Lj795:
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movzbl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj804
	jmp	Lj805
Lj804:
	jmp	Lj797
Lj805:
	movzbl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	$1,%cx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*136(%ebx)
Lj796:
	jmp	Lj795
Lj797:
	jmp	Lj753
Lj754:
Lj753:
Lj746:
	movb	-10(%ebp),%al
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADGIF_TFPREADERGIF_$__CREATE$$TFPREADERGIF
_FPREADGIF_TFPREADERGIF_$__CREATE$$TFPREADERGIF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj816
	jmp	Lj817
Lj816:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj817:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj822
	jmp	Lj823
Lj822:
	jmp	Lj814
Lj823:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj826
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj830
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CREATE$$TFPCUSTOMIMAGEREADER$stub
Lj830:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj831
	call	LFPC_RERAISE$stub
Lj831:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj839
	jmp	Lj838
Lj839:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj837
	jmp	Lj838
Lj837:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj838:
Lj826:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj828
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj843
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj844
	jmp	Lj845
Lj844:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj845:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj843:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj842
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj842:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj828
Lj828:
Lj814:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPREADGIF_TFPREADERGIF_$__DESTROY
_FPREADGIF_TFPREADERGIF_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj852
	jmp	Lj853
Lj852:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj853:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj862
	jmp	Lj861
Lj862:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj860
	jmp	Lj861
Lj860:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj861:
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPREADGIF
_INIT$_FPREADGIF:
.reference __FPREADGIF_init
.globl	__FPREADGIF_init
__FPREADGIF_init:
.reference _INIT$_FPREADGIF
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_FPREADGIF_TFPREADERGIF$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_$FPREADGIF$_Ld10$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	L_$FPREADGIF$_Ld12$non_lazy_ptr-Lj2(%ebx),%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPREADGIF$_Ld14
_$FPREADGIF$_Ld14:
	.byte	12
	.ascii	"TFPReaderGif"

.const_data
	.align 2
.globl	_VMT_FPREADGIF_TFPREADERGIF
_VMT_FPREADGIF_TFPREADERGIF:
	.long	88,-88
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEREADER
	.long	_$FPREADGIF$_Ld14
	.long	0,0
	.long	_$FPREADGIF$_Ld15
	.long	_RTTI_FPREADGIF_TFPREADERGIF
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPREADGIF_TFPREADERGIF_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	_SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__PROGRESS$TFPIMGPROGRESSSTAGE$BYTE$BOOLEAN$TRECT$ANSISTRING$BOOLEAN
	.long	_FPREADGIF_TFPREADERGIF_$__CREATE$$TFPREADERGIF
	.long	_FPREADGIF_TFPREADERGIF_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
	.long	_FPREADGIF_TFPREADERGIF_$__INTERNALCHECK$TSTREAM$$BOOLEAN
	.long	_FPREADGIF_TFPREADERGIF_$__READSCANLINE$TSTREAM$$BOOLEAN
	.long	_FPREADGIF_TFPREADERGIF_$__WRITESCANLINE$TFPCUSTOMIMAGE$$BOOLEAN
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPREADGIF
_THREADVARLIST_FPREADGIF:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$FPREADGIF$_Ld2
_$FPREADGIF$_Ld2:
	.short	0,1
	.long	0,-1,3
.reference _$FPREADGIF$_Ld1
.globl	_$FPREADGIF$_Ld1
_$FPREADGIF$_Ld1:
.reference _$FPREADGIF$_Ld2
	.ascii	"GIF\000"

.const_data
	.align 2
.globl	_$FPREADGIF$_Ld4
_$FPREADGIF$_Ld4:
	.short	0,1
	.long	0,-1,3
.reference _$FPREADGIF$_Ld3
.globl	_$FPREADGIF$_Ld3
_$FPREADGIF$_Ld3:
.reference _$FPREADGIF$_Ld4
	.ascii	"87a\000"

.const_data
	.align 2
.globl	_$FPREADGIF$_Ld6
_$FPREADGIF$_Ld6:
	.short	0,1
	.long	0,-1,3
.reference _$FPREADGIF$_Ld5
.globl	_$FPREADGIF$_Ld5
_$FPREADGIF$_Ld5:
.reference _$FPREADGIF$_Ld6
	.ascii	"89a\000"

.const_data
	.align 2
.globl	_$FPREADGIF$_Ld8
_$FPREADGIF$_Ld8:
	.short	0,1
	.long	0,-1,34
.reference _$FPREADGIF$_Ld7
.globl	_$FPREADGIF$_Ld7
_$FPREADGIF$_Ld7:
.reference _$FPREADGIF$_Ld8
	.ascii	"Unknown/Unsupported GIF image type\000"

.const
	.align 3
.globl	_$FPREADGIF$_Ld9
_$FPREADGIF$_Ld9:
	.byte	0,0,0,0,0,0,0,200,5,64

.const_data
	.align 2
.globl	_$FPREADGIF$_Ld11
_$FPREADGIF$_Ld11:
	.short	0,1
	.long	0,-1,3
.reference _$FPREADGIF$_Ld10
.globl	_$FPREADGIF$_Ld10
_$FPREADGIF$_Ld10:
.reference _$FPREADGIF$_Ld11
	.ascii	"gif\000"

.const_data
	.align 2
.globl	_$FPREADGIF$_Ld13
_$FPREADGIF$_Ld13:
	.short	0,1
	.long	0,-1,12
.reference _$FPREADGIF$_Ld12
.globl	_$FPREADGIF$_Ld12
_$FPREADGIF$_Ld12:
.reference _$FPREADGIF$_Ld13
	.ascii	"GIF Graphics\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_chararray_to_ansistr$stub:
.indirect_symbol fpc_chararray_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_compare_equal$stub:
.indirect_symbol fpc_ansistr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_RAISEEXCEPTION$stub:
.indirect_symbol FPC_RAISEEXCEPTION
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

L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR
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

L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub:
.indirect_symbol _CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE$stub:
.indirect_symbol _FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADGIF_TFPREADERGIF_$__READPALETTE$TSTREAM$LONGINT$stub:
.indirect_symbol _FPREADGIF_TFPREADERGIF_$__READPALETTE$TSTREAM$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADGIF_TFPREADERGIF_$__SKIPBLOCK$TSTREAM$$BYTE$stub:
.indirect_symbol _FPREADGIF_TFPREADERGIF_$__SKIPBLOCK$TSTREAM$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADGIF_TFPREADERGIF_$__ANALYZEHEADER$$BOOLEAN$stub:
.indirect_symbol _FPREADGIF_TFPREADERGIF_$__ANALYZEHEADER$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FREEANDNIL$formal$stub:
.indirect_symbol _SYSUTILS_FREEANDNIL$formal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub:
.indirect_symbol _CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
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

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_POPSECONDOBJECTSTACK$stub:
.indirect_symbol FPC_POPSECONDOBJECTSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DESTROYEXCEPTION$stub:
.indirect_symbol FPC_DESTROYEXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_POPOBJECTSTACK$stub:
.indirect_symbol FPC_POPOBJECTSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CREATE$$TFPCUSTOMIMAGEREADER$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGEREADER_$__CREATE$$TFPCUSTOMIMAGEREADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__DESTROY$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1$stub:
.indirect_symbol _FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1
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
.globl	_INIT_FPREADGIF_TGIFRGB
_INIT_FPREADGIF_TGIFRGB:
	.byte	13,7
	.ascii	"TGifRGB"
	.long	3,0

.const_data
	.align 2
.globl	_RTTI_FPREADGIF_TGIFRGB
_RTTI_FPREADGIF_TGIFRGB:
	.byte	13,7
	.ascii	"TGifRGB"
	.long	3,3
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_BYTE
	.long	2

.const_data
	.align 2
.globl	_INIT_FPREADGIF_TGIFHEADER
_INIT_FPREADGIF_TGIFHEADER:
	.byte	13,10
	.ascii	"TGIFHeader"
	.long	13,0

.const_data
	.align 2
.globl	_RTTI_FPREADGIF_DEF2
_RTTI_FPREADGIF_DEF2:
	.byte	12
	.ascii	"\000"
	.long	1,3
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_FPREADGIF_DEF3
_RTTI_FPREADGIF_DEF3:
	.byte	12
	.ascii	"\000"
	.long	1,3
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_FPREADGIF_TGIFHEADER
_RTTI_FPREADGIF_TGIFHEADER:
	.byte	13,10
	.ascii	"TGIFHeader"
	.long	13,7
	.long	_RTTI_FPREADGIF_DEF2
	.long	0
	.long	_RTTI_FPREADGIF_DEF3
	.long	3
	.long	_RTTI_SYSTEM_WORD
	.long	6
	.long	_RTTI_SYSTEM_WORD
	.long	8
	.long	_RTTI_SYSTEM_BYTE
	.long	10
	.long	_RTTI_SYSTEM_BYTE
	.long	11
	.long	_RTTI_SYSTEM_BYTE
	.long	12

.const_data
	.align 2
.globl	_INIT_FPREADGIF_TGIFIMAGEDESCRIPTOR
_INIT_FPREADGIF_TGIFIMAGEDESCRIPTOR:
	.byte	13,19
	.ascii	"TGifImageDescriptor"
	.long	9,0

.const_data
	.align 2
.globl	_RTTI_FPREADGIF_TGIFIMAGEDESCRIPTOR
_RTTI_FPREADGIF_TGIFIMAGEDESCRIPTOR:
	.byte	13,19
	.ascii	"TGifImageDescriptor"
	.long	9,5
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_SYSTEM_WORD
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	6
	.long	_RTTI_SYSTEM_BYTE
	.long	8

.const_data
	.align 2
.globl	_INIT_FPREADGIF_TGIFGRAPHICSCONTROLEXTENSION
_INIT_FPREADGIF_TGIFGRAPHICSCONTROLEXTENSION:
	.byte	13,28
	.ascii	"TGifGraphicsControlExtension"
	.long	6,0

.const_data
	.align 2
.globl	_RTTI_FPREADGIF_TGIFGRAPHICSCONTROLEXTENSION
_RTTI_FPREADGIF_TGIFGRAPHICSCONTROLEXTENSION:
	.byte	13,28
	.ascii	"TGifGraphicsControlExtension"
	.long	6,5
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_SYSTEM_BYTE
	.long	4
	.long	_RTTI_SYSTEM_BYTE
	.long	5

.const_data
	.align 2
.globl	_$FPREADGIF$_Ld15
_$FPREADGIF$_Ld15:
	.short	0
	.long	_$FPREADGIF$_Ld16
	.align 2
.globl	_$FPREADGIF$_Ld16
_$FPREADGIF$_Ld16:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPREADGIF_TFPREADERGIF
_INIT_FPREADGIF_TFPREADERGIF:
	.byte	15,12
	.ascii	"TFPReaderGif"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPREADGIF_TFPREADERGIF
_RTTI_FPREADGIF_TFPREADERGIF:
	.byte	15,12
	.ascii	"TFPReaderGif"
	.long	_VMT_FPREADGIF_TFPREADERGIF
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEREADER
	.short	0
	.byte	9
	.ascii	"FPReadGif"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPREADGIF_TGIFCREATECOMPATIBLEIMGEVENT
_INIT_FPREADGIF_TGIFCREATECOMPATIBLEIMGEVENT:
	.byte	6,28
	.ascii	"TGifCreateCompatibleImgEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\014TFPReaderGif"
	.byte	9,8
	.ascii	"NewImage"
	.ascii	"\016TFPCustomImage"
	.byte	0
	.long	_RTTI_FPREADGIF_TFPREADERGIF
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGE

.const_data
	.align 2
.globl	_RTTI_FPREADGIF_TGIFCREATECOMPATIBLEIMGEVENT
_RTTI_FPREADGIF_TGIFCREATECOMPATIBLEIMGEVENT:
	.byte	6,28
	.ascii	"TGifCreateCompatibleImgEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\014TFPReaderGif"
	.byte	9,8
	.ascii	"NewImage"
	.ascii	"\016TFPCustomImage"
	.byte	0
	.long	_RTTI_FPREADGIF_TFPREADERGIF
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGE
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
L_$FPREADGIF$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPREADGIF$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADGIF$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPREADGIF$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADGIF$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPREADGIF$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADGIF$_Ld7$non_lazy_ptr:
.indirect_symbol _$FPREADGIF$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TFPPALETTE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADGIF$_Ld9$non_lazy_ptr:
.indirect_symbol _$FPREADGIF$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPREADGIF_TFPREADERGIF$non_lazy_ptr:
.indirect_symbol _VMT_FPREADGIF_TFPREADERGIF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr:
.indirect_symbol _U_FPIMAGE_IMAGEHANDLERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADGIF$_Ld10$non_lazy_ptr:
.indirect_symbol _$FPREADGIF$_Ld10
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADGIF$_Ld12$non_lazy_ptr:
.indirect_symbol _$FPREADGIF$_Ld12
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

