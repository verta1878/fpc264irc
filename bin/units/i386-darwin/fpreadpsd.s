# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPREADPSD_CORRECTCMYK$TFPCOLOR$$TFPCOLOR
_FPREADPSD_CORRECTCMYK$TFPCOLOR$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movw	(%eax),%ax
	cmpw	2(%edx),%ax
	jb	Lj5
	jmp	Lj6
Lj5:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-14(%ebp)
	jmp	Lj9
Lj6:
	movl	-4(%ebp),%eax
	movw	2(%eax),%ax
	movw	%ax,-14(%ebp)
Lj9:
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	cmpw	-14(%ebp),%ax
	jb	Lj12
	jmp	Lj13
Lj12:
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	movw	%ax,-14(%ebp)
Lj13:
	movzwl	-14(%ebp),%edx
	movl	-4(%ebp),%eax
	movzwl	6(%eax),%eax
	addl	%eax,%edx
	cmpl	$65535,%edx
	ja	Lj16
	jmp	Lj17
Lj16:
	movl	-4(%ebp),%eax
	movzwl	6(%eax),%edx
	movl	$65535,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movw	%dx,-14(%ebp)
Lj17:
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	movzwl	-14(%ebp),%edx
	subl	%edx,%eax
	movw	%ax,-12(%ebp)
	movl	-4(%ebp),%eax
	movzwl	2(%eax),%eax
	movzwl	-14(%ebp),%edx
	subl	%edx,%eax
	movw	%ax,-10(%ebp)
	movl	-4(%ebp),%eax
	movzwl	4(%eax),%eax
	movzwl	-14(%ebp),%edx
	subl	%edx,%eax
	movw	%ax,-8(%ebp)
	movl	-4(%ebp),%eax
	movzwl	6(%eax),%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-6(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPREADPSD_CMYKTORGB$TFPCOLOR$$TFPCOLOR
_FPREADPSD_CMYKTORGB$TFPCOLOR$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-16(%ebp)
	leal	-20(%ebp),%eax
	call	L_FPREADPSD_CORRECTCMYK$TFPCOLOR$$TFPCOLOR$stub
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movzwl	-20(%ebp),%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	cmpl	$65535,%eax
	jb	Lj34
	jmp	Lj35
Lj34:
	movzwl	-20(%ebp),%edx
	movzwl	-14(%ebp),%eax
	addl	%eax,%edx
	movl	$65535,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movw	%dx,-12(%ebp)
	jmp	Lj38
Lj35:
	movw	$0,-12(%ebp)
Lj38:
	movzwl	-18(%ebp),%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	cmpl	$65535,%eax
	jb	Lj41
	jmp	Lj42
Lj41:
	movzwl	-18(%ebp),%edx
	movzwl	-14(%ebp),%eax
	addl	%eax,%edx
	movl	$65535,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movw	%dx,-10(%ebp)
	jmp	Lj45
Lj42:
	movw	$0,-10(%ebp)
Lj45:
	movzwl	-16(%ebp),%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	cmpl	$65535,%eax
	jb	Lj48
	jmp	Lj49
Lj48:
	movzwl	-16(%ebp),%edx
	movzwl	-14(%ebp),%eax
	addl	%eax,%edx
	movl	$65535,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movw	%dx,-8(%ebp)
	jmp	Lj52
Lj49:
	movw	$0,-8(%ebp)
Lj52:
	movw	$65535,-6(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPREADPSD_XYZTORGB$DOUBLE$DOUBLE$DOUBLE$$TFPCOLOR
_FPREADPSD_XYZTORGB$DOUBLE$DOUBLE$DOUBLE$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj58
Lj58:
	popl	%edx
	movl	L_TC_FPIMAGE_COLBLACK$non_lazy_ptr-Lj58(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	L_TC_FPIMAGE_COLBLACK$non_lazy_ptr-Lj58(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPREADPSD_LABTORGB$TLAB$$TFPCOLOR
_FPREADPSD_LABTORGB$TLAB$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj62
Lj62:
	popl	%edx
	movl	L_TC_FPIMAGE_COLBLACK$non_lazy_ptr-Lj62(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	L_TC_FPIMAGE_COLBLACK$non_lazy_ptr-Lj62(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPREADPSD_TFPREADERPSD_$__CREATEGRAYPALETTE
_FPREADPSD_TFPREADERPSD_$__CREATEGRAYPALETTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	84(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.align 2
Lj73:
	incl	-8(%ebp)
	movl	-8(%ebp),%eax
	imull	$255,%eax
	movw	%ax,-16(%ebp)
	movl	-8(%ebp),%eax
	imull	$255,%eax
	movw	%ax,-14(%ebp)
	movl	-8(%ebp),%eax
	imull	$255,%eax
	movw	%ax,-12(%ebp)
	movw	$65535,-10(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	84(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	cmpl	$255,-8(%ebp)
	jl	Lj73
	leave
	ret

.text
	.align 4
.globl	_FPREADPSD_TFPREADERPSD_$__CREATEBWPALETTE
_FPREADPSD_TFPREADERPSD_$__CREATEBWPALETTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj87
Lj87:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	84(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	L_TC_FPIMAGE_COLBLACK$non_lazy_ptr-Lj87(%ebx),%edx
	movl	-4(%ebp),%ecx
	movl	84(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	L_TC_FPIMAGE_COLWHITE$non_lazy_ptr-Lj87(%ebx),%edx
	movl	-4(%ebp),%ecx
	movl	84(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADPSD_TFPREADERPSD_$__READPALETTE$TSTREAM$$BOOLEAN
_FPREADPSD_TFPREADERPSD_$__READPALETTE$TSTREAM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$888,%esp
	movl	%ebx,-860(%ebp)
	movl	%esi,-856(%ebp)
	movl	%edi,-852(%ebp)
	call	Lj101
Lj101:
	popl	%edi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	84(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-28(%ebp)
	movl	$0,-32(%ebp)
	leal	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-32(%ebp),%eax
	call	L_SYSTEM_SWAPENDIAN$LONGINT$$LONGINT$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%ecx
	leal	-800(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movb	$1,-801(%ebp)
	movb	$0,%bl
	movl	$0,4(%esp)
	leal	-820(%ebp),%eax
	movl	%eax,(%esp)
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-820(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	leal	-801(%ebp),%eax
	movl	%eax,(%esp)
	fnstcw	-824(%ebp)
	fnstcw	-822(%ebp)
	orw	$3840,-824(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-832(%ebp)
	movl	%edx,-828(%ebp)
	fildq	-832(%ebp)
	fstpt	-848(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-832(%ebp)
	movl	%edx,-828(%ebp)
	fildq	-832(%ebp)
	fldt	-848(%ebp)
	fdivp	%st,%st(1)
	movl	L_$FPREADPSD$_Ld1$non_lazy_ptr-Lj101(%edi),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldcw	-824(%ebp)
	fistpq	-832(%ebp)
	fldcw	-822(%ebp)
	fwait
	movb	-832(%ebp),%cl
	movl	-8(%ebp),%eax
	movl	$1,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	movb	%bl,12(%esp)
	call	*100(%esi)
	movb	-801(%ebp),%al
	testb	%al,%al
	je	Lj160
	jmp	Lj161
Lj160:
	jmp	Lj100
Lj161:
	movl	-32(%ebp),%ecx
	movl	$1431655766,%eax
	imull	%ecx
	movl	%ecx,%eax
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj163
	decl	-16(%ebp)
	.align 2
Lj164:
	incl	-16(%ebp)
	movl	-16(%ebp),%eax
	movzbl	-800(%ebp,%eax,1),%eax
	shll	$8,%eax
	movw	%ax,-24(%ebp)
	movl	-32(%ebp),%ecx
	movl	$1431655766,%eax
	imull	%ecx
	movl	%ecx,%eax
	shrl	$31,%eax
	addl	%eax,%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movzbl	-800(%ebp,%edx,1),%eax
	shll	$8,%eax
	movw	%ax,-22(%ebp)
	movl	-32(%ebp),%ecx
	movl	$1431655766,%eax
	imull	%ecx
	movl	%ecx,%eax
	shrl	$31,%eax
	addl	%eax,%edx
	shll	$1,%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movzbl	-800(%ebp,%edx,1),%eax
	shll	$8,%eax
	movw	%ax,-20(%ebp)
	movw	$65535,-18(%ebp)
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	84(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	cmpl	-16(%ebp),%ebx
	jg	Lj164
Lj163:
	movl	-28(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movb	$1,-9(%ebp)
Lj100:
	movb	-9(%ebp),%al
	movl	-860(%ebp),%ebx
	movl	-856(%ebp),%esi
	movl	-852(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADPSD_TFPREADERPSD_$__ANALYZEHEADER
_FPREADPSD_TFPREADERPSD_$__ANALYZEHEADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj184
Lj184:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj185
	movl	-4(%ebp),%eax
	leal	36(%eax),%eax
	movl	%eax,%ebx
	movw	22(%ebx),%ax
	movw	%ax,-46(%ebp)
	movzwl	-46(%ebp),%eax
	shrl	$8,%eax
	movzwl	-46(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,22(%ebx)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,(%esp)
	movl	%ebx,%eax
	movb	$1,%cl
	movl	$3,%edx
	call	Lfpc_chararray_to_ansistr$stub
	movl	-52(%ebp),%eax
	movl	L_$FPREADPSD$_Ld2$non_lazy_ptr-Lj184(%esi),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj198
	jmp	Lj199
Lj198:
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj184(%esi),%edx
	movl	L_$FPREADPSD$_Ld4$non_lazy_ptr-Lj184(%esi),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj184(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj199:
	movw	12(%ebx),%ax
	movw	%ax,-46(%ebp)
	movzwl	-46(%ebp),%eax
	shrl	$8,%eax
	movzwl	-46(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,12(%ebx)
	movzwl	12(%ebx),%eax
	cmpl	$4,%eax
	jg	Lj226
	jmp	Lj227
Lj226:
	movl	-4(%ebp),%edx
	movzwl	22(%ebx),%eax
	shll	$2,%eax
	movb	%al,74(%edx)
	jmp	Lj230
Lj227:
	movl	-4(%ebp),%ecx
	movzwl	22(%ebx),%edx
	movzwl	12(%ebx),%eax
	mull	%edx
	movb	%al,74(%ecx)
Lj230:
	movw	24(%ebx),%ax
	movw	%ax,-46(%ebp)
	movzwl	-46(%ebp),%eax
	shrl	$8,%eax
	movzwl	-46(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,24(%ebx)
	movl	18(%ebx),%eax
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%eax
	call	L_SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,88(%edx)
	movl	14(%ebx),%eax
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%eax
	call	L_SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,92(%edx)
	movl	-4(%ebp),%eax
	movw	12(%ebx),%dx
	movw	%dx,98(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	92(%eax),%eax
	movl	88(%edx),%edx
	imull	%edx,%eax
	movzwl	22(%ebx),%edx
	imull	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$7,%edx
	addl	%edx,%eax
	sarl	$3,%eax
	movl	-4(%ebp),%edx
	movl	%eax,80(%edx)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movzwl	12(%ebx),%edx
	movl	80(%eax),%eax
	imull	%edx,%eax
	movl	%eax,80(%ecx)
	movl	-4(%ebp),%eax
	movl	80(%eax),%edx
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
Lj185:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj186
	call	LFPC_RERAISE$stub
Lj186:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADPSD_TFPREADERPSD_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
_FPREADPSD_TFPREADERPSD_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-124(%ebp)
	movl	%esi,-120(%ebp)
	movl	%edi,-116(%ebp)
	call	Lj268
Lj268:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,76(%eax)
	movl	-12(%ebp),%eax
	movl	$0,84(%eax)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj273
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movb	$1,-23(%ebp)
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
	leal	-23(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$0,%edx
	movl	-12(%ebp),%edi
	movl	(%edi),%edi
	movb	%bl,12(%esp)
	call	*100(%edi)
	movb	-23(%ebp),%al
	testb	%al,%al
	je	Lj307
	jmp	Lj308
Lj307:
	jmp	Lj276
Lj308:
	movl	-12(%ebp),%eax
	leal	36(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$26,%ecx
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
	leal	-23(%ebp),%eax
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
	movl	L_$FPREADPSD$_Ld1$non_lazy_ptr-Lj268(%esi),%eax
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
	movb	-23(%ebp),%al
	testb	%al,%al
	je	Lj343
	jmp	Lj344
Lj343:
	jmp	Lj276
Lj344:
	movl	-12(%ebp),%eax
	call	L_FPREADPSD_TFPREADERPSD_$__ANALYZEHEADER$stub
	movl	-12(%ebp),%eax
	movw	60(%eax),%ax
	testw	%ax,%ax
	je	Lj349
	decw	%ax
	je	Lj350
	decw	%ax
	je	Lj351
	subw	$6,%ax
	je	Lj350
	jmp	Lj348
Lj349:
	movl	L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr-Lj268(%esi),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE$stub
	movl	-12(%ebp),%edx
	movl	%eax,84(%edx)
	movl	-12(%ebp),%eax
	call	L_FPREADPSD_TFPREADERPSD_$__CREATEBWPALETTE$stub
	jmp	Lj347
Lj350:
	movl	L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr-Lj268(%esi),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE$stub
	movl	-12(%ebp),%edx
	movl	%eax,84(%edx)
	movl	-12(%ebp),%eax
	call	L_FPREADPSD_TFPREADERPSD_$__CREATEGRAYPALETTE$stub
	jmp	Lj347
Lj351:
	movl	L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr-Lj268(%esi),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE$stub
	movl	-12(%ebp),%edx
	movl	%eax,84(%edx)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADPSD_TFPREADERPSD_$__READPALETTE$TSTREAM$$BOOLEAN$stub
	testb	%al,%al
	je	Lj380
	jmp	Lj381
Lj380:
	jmp	Lj276
Lj381:
	jmp	Lj347
Lj348:
Lj347:
	movl	-12(%ebp),%eax
	cmpl	$0,28(%eax)
	jne	Lj386
	jmp	Lj387
Lj386:
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	leal	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	28(%ebx),%ebx
	call	*%ebx
Lj387:
	movl	-12(%ebp),%eax
	movl	92(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	88(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*148(%ebx)
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-20(%ebp),%eax
	call	L_SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-20(%ebp),%eax
	call	L_SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	leal	62(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$12,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-20(%ebp),%eax
	movl	$0,%edx
	subl	$12,%eax
	sbbl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-20(%ebp),%eax
	call	L_SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movw	$0,-22(%ebp)
	leal	-22(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-12(%ebp),%ecx
	movzwl	-22(%ebp),%eax
	shrl	$8,%eax
	movzwl	-22(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movzwl	%ax,%eax
	cmpl	$1,%eax
	seteb	24(%ecx)
	movzwl	-22(%ebp),%eax
	shrl	$8,%eax
	movzwl	-22(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movzwl	%ax,%eax
	cmpl	$1,%eax
	jg	Lj470
	jmp	Lj471
Lj470:
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj268(%esi),%edx
	movl	L_$FPREADPSD$_Ld6$non_lazy_ptr-Lj268(%esi),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj268(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj471:
	movl	-12(%ebp),%eax
	cmpb	$0,24(%eax)
	jne	Lj482
	jmp	Lj483
Lj482:
	movl	-12(%ebp),%ecx
	movl	-12(%ebp),%eax
	movzwl	98(%eax),%edx
	movl	92(%ecx),%eax
	imull	%edx,%eax
	movl	%eax,-72(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_FPREADPSD_DEF12$non_lazy_ptr-Lj268(%esi),%edx
	movl	-12(%ebp),%eax
	leal	100(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-12(%ebp),%eax
	movl	100(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,%ecx
	shll	$1,%ecx
	movl	-12(%ebp),%eax
	movl	100(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	$0,104(%eax)
	movb	$0,%bl
	movl	$0,4(%esp)
	leal	-112(%ebp),%eax
	movl	%eax,(%esp)
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-112(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	leal	-23(%ebp),%eax
	movl	%eax,(%esp)
	fnstcw	-72(%ebp)
	fnstcw	-70(%ebp)
	orw	$3840,-72(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-80(%ebp)
	movl	%edx,-76(%ebp)
	fildq	-80(%ebp)
	fstpt	-88(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-96(%ebp)
	movl	%edx,-92(%ebp)
	fildq	-96(%ebp)
	fldt	-88(%ebp)
	fdivp	%st,%st(1)
	movl	L_$FPREADPSD$_Ld1$non_lazy_ptr-Lj268(%esi),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldcw	-72(%ebp)
	fistpq	-80(%ebp)
	fldcw	-70(%ebp)
	fwait
	movb	-80(%ebp),%cl
	movl	-12(%ebp),%eax
	movl	$1,%edx
	movl	-12(%ebp),%edi
	movl	(%edi),%edi
	movb	%bl,12(%esp)
	call	*100(%edi)
	movb	-23(%ebp),%al
	testb	%al,%al
	je	Lj532
	jmp	Lj533
Lj532:
	jmp	Lj276
Lj533:
	movl	-12(%ebp),%eax
	movl	100(%eax),%eax
	call	Lfpc_dynarray_high$stub
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj535
	decl	-16(%ebp)
	.align 2
Lj536:
	incl	-16(%ebp)
	movl	-12(%ebp),%edx
	movl	100(%edx),%ecx
	movl	-16(%ebp),%edx
	movw	(%ecx,%edx,2),%dx
	movw	%dx,-70(%ebp)
	movzwl	-70(%ebp),%edx
	shrl	$8,%edx
	movzwl	-70(%ebp),%ecx
	shll	$8,%ecx
	orl	%ecx,%edx
	movzwl	%dx,%edx
	movl	-12(%ebp),%ecx
	addl	%edx,104(%ecx)
	cmpl	-16(%ebp),%eax
	jg	Lj536
Lj535:
	movl	-12(%ebp),%eax
	movw	60(%eax),%ax
	notw	%ax
	movzwl	%ax,%eax
	cmpl	$0,%eax
	je	Lj547
	cmpl	$2,%eax
	je	Lj547
Lj547:
	je	Lj545
	jmp	Lj546
Lj545:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movzwl	58(%eax),%ecx
	movl	104(%edx),%eax
	imull	%ecx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$7,%edx
	addl	%edx,%eax
	sarl	$3,%eax
	movl	-12(%ebp),%edx
	movl	%eax,104(%edx)
Lj546:
	jmp	Lj550
Lj483:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,104(%edx)
Lj550:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
	movb	$0,%bl
	movl	$0,4(%esp)
	leal	-112(%ebp),%eax
	movl	%eax,(%esp)
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-112(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	leal	-23(%ebp),%eax
	movl	%eax,(%esp)
	fnstcw	-72(%ebp)
	fnstcw	-70(%ebp)
	orw	$3840,-72(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-80(%ebp)
	movl	%edx,-76(%ebp)
	fildq	-80(%ebp)
	fstpt	-88(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-96(%ebp)
	movl	%edx,-92(%ebp)
	fildq	-96(%ebp)
	fldt	-88(%ebp)
	fdivp	%st,%st(1)
	movl	L_$FPREADPSD$_Ld1$non_lazy_ptr-Lj268(%esi),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldcw	-72(%ebp)
	fistpq	-80(%ebp)
	fldcw	-70(%ebp)
	fwait
	movb	-80(%ebp),%cl
	movl	-12(%ebp),%eax
	movl	$1,%edx
	movl	-12(%ebp),%edi
	movl	(%edi),%edi
	movb	%bl,12(%esp)
	call	*100(%edi)
	movb	-23(%ebp),%al
	testb	%al,%al
	je	Lj585
	jmp	Lj586
Lj585:
	jmp	Lj276
Lj586:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*120(%ecx)
Lj273:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	leal	84(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-12(%ebp),%eax
	leal	76(%eax),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj274
	decl	%eax
	testl	%eax,%eax
	je	Lj275
	decl	%eax
	testl	%eax,%eax
	je	Lj267
Lj275:
	call	LFPC_RERAISE$stub
Lj276:
	movl	-64(%ebp),%eax
	movl	$2,-64(%ebp)
	jmp	Lj273
Lj274:
	movb	$0,%bl
	leal	-112(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	92(%eax),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	88(%eax),%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-112(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	leal	-23(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movb	$100,%cl
	movl	$2,%edx
	movl	-12(%ebp),%edi
	movl	(%edi),%edi
	movb	%bl,12(%esp)
	call	*100(%edi)
Lj267:
	movl	-124(%ebp),%ebx
	movl	-120(%ebp),%esi
	movl	-116(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADPSD_TFPREADERPSD_$__READSCANLINE$TSTREAM$$BOOLEAN
_FPREADPSD_TFPREADERPSD_$__READSCANLINE$TSTREAM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%edi,-92(%ebp)
	call	Lj622
Lj622:
	popl	%edi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-9(%ebp)
	movb	$1,-37(%ebp)
	movl	-8(%ebp),%eax
	movb	24(%eax),%al
	testb	%al,%al
	je	Lj627
	jmp	Lj628
Lj627:
	movl	-8(%ebp),%eax
	movl	76(%eax),%edx
	movl	-8(%ebp),%eax
	movl	80(%eax),%ecx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	jmp	Lj635
Lj628:
	movl	-8(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	104(%eax),%eax
	movl	%eax,-24(%ebp)
	.align 2
Lj640:
	movl	$0,-36(%ebp)
	movb	$0,-29(%ebp)
	leal	-29(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movb	$0,%bl
	movl	$0,4(%esp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-56(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	leal	-37(%ebp),%eax
	movl	%eax,(%esp)
	fnstcw	-60(%ebp)
	fnstcw	-58(%ebp)
	orw	$3840,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-72(%ebp)
	movl	%edx,-68(%ebp)
	fildq	-72(%ebp)
	fstpt	-88(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-72(%ebp)
	movl	%edx,-68(%ebp)
	fildq	-72(%ebp)
	fldt	-88(%ebp)
	fdivp	%st,%st(1)
	movl	L_$FPREADPSD$_Ld1$non_lazy_ptr-Lj622(%edi),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldcw	-60(%ebp)
	fistpq	-72(%ebp)
	fldcw	-58(%ebp)
	fwait
	movb	-72(%ebp),%cl
	movl	-8(%ebp),%eax
	movl	$1,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	movb	%bl,12(%esp)
	call	*100(%esi)
	movb	-37(%ebp),%al
	testb	%al,%al
	je	Lj681
	jmp	Lj682
Lj681:
	jmp	Lj621
Lj682:
	decl	-24(%ebp)
	movb	-29(%ebp),%al
	cmpb	$-128,%al
	je	Lj683
	jmp	Lj684
Lj684:
	movb	-29(%ebp),%al
	cmpb	$0,%al
	jl	Lj685
	jmp	Lj686
Lj685:
	movsbl	-29(%ebp),%eax
	negl	%eax
	incl	%eax
	movl	%eax,-36(%ebp)
	movb	$0,-17(%ebp)
	leal	-17(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	decl	-24(%ebp)
	movl	-36(%ebp),%eax
	decl	%eax
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj698
	decl	-28(%ebp)
	.align 2
Lj699:
	incl	-28(%ebp)
	movl	-16(%ebp),%ecx
	movb	-17(%ebp),%dl
	movb	%dl,(%ecx)
	incl	-16(%ebp)
	cmpl	-28(%ebp),%eax
	jg	Lj699
Lj698:
	jmp	Lj702
Lj686:
	movsbl	-29(%ebp),%eax
	incl	%eax
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%ebx
	decl	%ebx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj706
	decl	-28(%ebp)
	.align 2
Lj707:
	incl	-28(%ebp)
	leal	-17(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-16(%ebp),%edx
	movb	-17(%ebp),%al
	movb	%al,(%edx)
	incl	-16(%ebp)
	decl	-24(%ebp)
	cmpl	-28(%ebp),%ebx
	jg	Lj707
Lj706:
Lj702:
Lj683:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj642
	jmp	Lj640
Lj642:
Lj635:
	movb	$1,-9(%ebp)
Lj621:
	movb	-9(%ebp),%al
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	movl	-92(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADPSD_TFPREADERPSD_$__WRITESCANLINE$TFPCUSTOMIMAGE
_FPREADPSD_TFPREADERPSD_$__WRITESCANLINE$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movw	$65535,-14(%ebp)
	movl	-8(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movzwl	58(%eax),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$7,%edx
	addl	%edx,%eax
	sarl	$3,%eax
	movl	%eax,-40(%ebp)
	movl	-8(%ebp),%eax
	movl	92(%eax),%edx
	movl	-40(%ebp),%eax
	imull	%eax,%edx
	movl	-8(%ebp),%eax
	movl	88(%eax),%eax
	imull	%eax,%edx
	movl	%edx,-40(%ebp)
	movl	-8(%ebp),%eax
	movb	74(%eax),%al
	cmpb	$1,%al
	jb	Lj729
	decb	%al
	je	Lj730
	subb	$7,%al
	je	Lj731
	subb	$8,%al
	je	Lj732
	subb	$8,%al
	je	Lj733
	subb	$8,%al
	je	Lj734
	subb	$16,%al
	je	Lj735
	subb	$16,%al
	je	Lj736
	jmp	Lj729
Lj730:
	movl	-4(%ebp),%eax
	movl	28(%eax),%ebx
	decl	%ebx
	movl	$0,-44(%ebp)
	cmpl	-44(%ebp),%ebx
	jl	Lj738
	decl	-44(%ebp)
	.align 2
Lj739:
	incl	-44(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%esi
	decl	%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj741
	decl	-12(%ebp)
	.align 2
Lj742:
	incl	-12(%ebp)
	movl	-24(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$7,%eax
	addl	%eax,%edx
	sarl	$3,%edx
	movzbl	(%ecx,%edx,1),%edi
	movl	-12(%ebp),%eax
	cltd
	movl	$8,%ecx
	idivl	%ecx
	movl	%edx,%ecx
	movl	$128,%eax
	shrl	%cl,%eax
	andl	%eax,%edi
	testl	%edi,%edi
	jne	Lj743
	jmp	Lj744
Lj743:
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-56(%ebp)
	movl	%edx,-52(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	-44(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	jmp	Lj757
Lj744:
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	movl	$1,%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-56(%ebp)
	movl	%edx,-52(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	-44(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
Lj757:
	cmpl	-12(%ebp),%esi
	jg	Lj742
Lj741:
	movl	-4(%ebp),%eax
	movl	32(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$7,%eax
	addl	%eax,%edx
	sarl	$3,%edx
	addl	%edx,-24(%ebp)
	cmpl	-44(%ebp),%ebx
	jg	Lj739
Lj738:
	jmp	Lj728
Lj731:
	movl	-4(%ebp),%eax
	movl	28(%eax),%ebx
	decl	%ebx
	movl	$0,-44(%ebp)
	cmpl	-44(%ebp),%ebx
	jl	Lj771
	decl	-44(%ebp)
	.align 2
Lj772:
	incl	-44(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%esi
	decl	%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj774
	decl	-12(%ebp)
	.align 2
Lj775:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	movl	-24(%ebp),%edx
	movzbl	(%edx),%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-56(%ebp)
	movl	%edx,-52(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	-44(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	incl	-24(%ebp)
	cmpl	-12(%ebp),%esi
	jg	Lj775
Lj774:
	cmpl	-44(%ebp),%ebx
	jg	Lj772
Lj771:
	jmp	Lj728
Lj732:
	movl	-4(%ebp),%eax
	movl	28(%eax),%ebx
	decl	%ebx
	movl	$0,-44(%ebp)
	cmpl	-44(%ebp),%ebx
	jl	Lj789
	decl	-44(%ebp)
	.align 2
Lj790:
	incl	-44(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%esi
	decl	%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj792
	decl	-12(%ebp)
	.align 2
Lj793:
	incl	-12(%ebp)
	movl	-24(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-50(%ebp)
	movzwl	-50(%ebp),%edx
	shrl	$8,%edx
	movzwl	-50(%ebp),%eax
	shll	$8,%eax
	orl	%eax,%edx
	movzwl	%dx,%edx
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-56(%ebp)
	movl	%edx,-52(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	-44(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	addl	$2,-24(%ebp)
	cmpl	-12(%ebp),%esi
	jg	Lj793
Lj792:
	cmpl	-44(%ebp),%ebx
	jg	Lj790
Lj789:
	jmp	Lj728
Lj733:
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-40(%ebp),%eax
	addl	%eax,-28(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-40(%ebp),%eax
	shll	$1,%eax
	addl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%ebx
	decl	%ebx
	movl	$0,-44(%ebp)
	cmpl	-44(%ebp),%ebx
	jl	Lj817
	decl	-44(%ebp)
	.align 2
Lj818:
	incl	-44(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%esi
	decl	%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj820
	decl	-12(%ebp)
	.align 2
Lj821:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movzwl	60(%eax),%eax
	cmpl	$9,%eax
	je	Lj822
	jmp	Lj823
Lj822:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-47(%ebp)
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-46(%ebp)
	movl	-32(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-45(%ebp)
	movw	-47(%ebp),%ax
	movw	%ax,(%esp)
	movb	-45(%ebp),%al
	movb	%al,2(%esp)
	call	L_FPREADPSD_LABTORGB$TLAB$$TFPCOLOR$stub
	movl	%eax,-56(%ebp)
	movl	%edx,-52(%ebp)
	movl	-56(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-52(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj834
Lj823:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	-24(%ebp),%edx
	movzbl	(%edx),%edx
	orl	%edx,%eax
	movw	%ax,-20(%ebp)
	movl	-28(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	-28(%ebp),%edx
	movzbl	(%edx),%edx
	orl	%edx,%eax
	movw	%ax,-18(%ebp)
	movl	-32(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	-32(%ebp),%edx
	movzbl	(%edx),%edx
	orl	%edx,%eax
	movw	%ax,-16(%ebp)
	movw	$65535,-14(%ebp)
Lj834:
	incl	-24(%ebp)
	incl	-28(%ebp)
	incl	-32(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-44(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	cmpl	-12(%ebp),%esi
	jg	Lj821
Lj820:
	cmpl	-44(%ebp),%ebx
	jg	Lj818
Lj817:
	jmp	Lj728
Lj734:
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-40(%ebp),%eax
	addl	%eax,-28(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-40(%ebp),%eax
	shll	$1,%eax
	addl	%eax,-32(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-40(%ebp),%eax
	imull	$3,%eax
	addl	%eax,-36(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%ebx
	decl	%ebx
	movl	$0,-44(%ebp)
	cmpl	-44(%ebp),%ebx
	jl	Lj858
	decl	-44(%ebp)
	.align 2
Lj859:
	incl	-44(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%esi
	decl	%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj861
	decl	-12(%ebp)
	.align 2
Lj862:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movzwl	60(%eax),%eax
	cmpl	$4,%eax
	je	Lj863
	jmp	Lj864
Lj863:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	movl	$255,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	-24(%ebp),%edx
	movb	%al,(%edx)
	movl	-28(%ebp),%eax
	movzbl	(%eax),%eax
	movl	$255,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	-28(%ebp),%edx
	movb	%al,(%edx)
	movl	-32(%ebp),%eax
	movzbl	(%eax),%eax
	movl	$255,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	-32(%ebp),%edx
	movb	%al,(%edx)
	movl	-36(%ebp),%eax
	movzbl	(%eax),%eax
	movl	$255,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	-36(%ebp),%edx
	movb	%al,(%edx)
Lj864:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	-24(%ebp),%edx
	movzbl	(%edx),%edx
	orl	%edx,%eax
	movw	%ax,-20(%ebp)
	movl	-28(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	-28(%ebp),%edx
	movzbl	(%edx),%edx
	orl	%edx,%eax
	movw	%ax,-18(%ebp)
	movl	-32(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	-32(%ebp),%edx
	movzbl	(%edx),%edx
	orl	%edx,%eax
	movw	%ax,-16(%ebp)
	movl	-36(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	-36(%ebp),%edx
	movzbl	(%edx),%edx
	orl	%edx,%eax
	movw	%ax,-14(%ebp)
	movl	-8(%ebp),%eax
	movzwl	60(%eax),%eax
	cmpl	$4,%eax
	je	Lj881
	jmp	Lj882
Lj881:
	leal	-20(%ebp),%eax
	call	L_FPREADPSD_CMYKTORGB$TFPCOLOR$$TFPCOLOR$stub
	movl	%eax,-56(%ebp)
	movl	%edx,-52(%ebp)
	movl	-56(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-52(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj882:
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-44(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	incl	-24(%ebp)
	incl	-28(%ebp)
	incl	-32(%ebp)
	incl	-36(%ebp)
	cmpl	-12(%ebp),%esi
	jg	Lj862
Lj861:
	cmpl	-44(%ebp),%ebx
	jg	Lj859
Lj858:
	jmp	Lj728
Lj735:
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-40(%ebp),%eax
	addl	%eax,-28(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-40(%ebp),%eax
	shll	$1,%eax
	addl	%eax,-32(%ebp)
	movw	$65535,-14(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%ebx
	decl	%ebx
	movl	$0,-44(%ebp)
	cmpl	-44(%ebp),%ebx
	jl	Lj902
	decl	-44(%ebp)
	.align 2
Lj903:
	incl	-44(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%esi
	decl	%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj905
	decl	-12(%ebp)
	.align 2
Lj906:
	incl	-12(%ebp)
	movl	-24(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-50(%ebp)
	movzwl	-50(%ebp),%eax
	shrl	$8,%eax
	movzwl	-50(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-20(%ebp)
	movl	-28(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-50(%ebp)
	movzwl	-50(%ebp),%eax
	shrl	$8,%eax
	movzwl	-50(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-18(%ebp)
	movl	-32(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-50(%ebp)
	movzwl	-50(%ebp),%eax
	shrl	$8,%eax
	movzwl	-50(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-16(%ebp)
	addl	$2,-24(%ebp)
	addl	$2,-28(%ebp)
	addl	$2,-32(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-44(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	cmpl	-12(%ebp),%esi
	jg	Lj906
Lj905:
	cmpl	-44(%ebp),%ebx
	jg	Lj903
Lj902:
	jmp	Lj728
Lj736:
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-40(%ebp),%eax
	addl	%eax,-28(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-40(%ebp),%eax
	shll	$1,%eax
	addl	%eax,-32(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-40(%ebp),%eax
	imull	$3,%eax
	addl	%eax,-36(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%ebx
	decl	%ebx
	movl	$0,-44(%ebp)
	cmpl	-44(%ebp),%ebx
	jl	Lj946
	decl	-44(%ebp)
	.align 2
Lj947:
	incl	-44(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%esi
	decl	%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj949
	decl	-12(%ebp)
	.align 2
Lj950:
	incl	-12(%ebp)
	movl	-24(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-50(%ebp)
	movzwl	-50(%ebp),%eax
	shrl	$8,%eax
	movzwl	-50(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-20(%ebp)
	movl	-28(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-50(%ebp)
	movzwl	-50(%ebp),%eax
	shrl	$8,%eax
	movzwl	-50(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-18(%ebp)
	movl	-32(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-50(%ebp)
	movzwl	-50(%ebp),%eax
	shrl	$8,%eax
	movzwl	-50(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-16(%ebp)
	movl	-36(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-50(%ebp)
	movzwl	-50(%ebp),%eax
	shrl	$8,%eax
	movzwl	-50(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-14(%ebp)
	movl	-8(%ebp),%eax
	movzwl	60(%eax),%eax
	cmpl	$4,%eax
	je	Lj983
	jmp	Lj984
Lj983:
	movzwl	-20(%ebp),%edx
	movl	$65535,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movw	%dx,-20(%ebp)
	movzwl	-18(%ebp),%edx
	movl	$65535,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movw	%dx,-18(%ebp)
	movzwl	-16(%ebp),%edx
	movl	$65535,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movw	%dx,-16(%ebp)
	movzwl	-14(%ebp),%edx
	movl	$65535,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movw	%dx,-14(%ebp)
Lj984:
	movl	-8(%ebp),%eax
	movzwl	60(%eax),%eax
	cmpl	$4,%eax
	je	Lj993
	jmp	Lj994
Lj993:
	leal	-20(%ebp),%eax
	call	L_FPREADPSD_CMYKTORGB$TFPCOLOR$$TFPCOLOR$stub
	movl	%eax,-56(%ebp)
	movl	%edx,-52(%ebp)
	movl	-56(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-52(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj994:
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-44(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	addl	$2,-24(%ebp)
	addl	$2,-28(%ebp)
	addl	$2,-32(%ebp)
	addl	$2,-36(%ebp)
	cmpl	-12(%ebp),%esi
	jg	Lj950
Lj949:
	cmpl	-44(%ebp),%ebx
	jg	Lj947
Lj946:
	jmp	Lj728
Lj729:
Lj728:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADPSD_TFPREADERPSD_$__INTERNALCHECK$TSTREAM$$BOOLEAN
_FPREADPSD_TFPREADERPSD_$__INTERNALCHECK$TSTREAM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%ebx,-152(%ebp)
	movl	%esi,-148(%ebp)
	call	Lj1008
Lj1008:
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
	jne	Lj1009
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj1014
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	movl	-8(%ebp),%eax
	leal	36(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$26,%ecx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	leal	36(%eax),%eax
	movb	$1,%cl
	movl	$3,%edx
	call	Lfpc_chararray_to_ansistr$stub
	movl	-104(%ebp),%eax
	movl	L_$FPREADPSD$_Ld2$non_lazy_ptr-Lj1008(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	seteb	-9(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
Lj1014:
	call	LFPC_POPADDRSTACK$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj1016
	leal	-116(%ebp),%ecx
	leal	-140(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-144(%ebp)
	testl	%eax,%eax
	jne	Lj1047
	movb	$0,-9(%ebp)
Lj1047:
	call	LFPC_POPADDRSTACK$stub
	movl	-144(%ebp),%eax
	testl	%eax,%eax
	je	Lj1046
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1046:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1016
Lj1016:
Lj1009:
	call	LFPC_POPADDRSTACK$stub
	leal	-104(%ebp),%edx
	movl	%edx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1010
	call	LFPC_RERAISE$stub
Lj1010:
	movb	-9(%ebp),%al
	movl	-152(%ebp),%ebx
	movl	-148(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADPSD_TFPREADERPSD_$__CREATE$$TFPREADERPSD
_FPREADPSD_TFPREADERPSD_$__CREATE$$TFPREADERPSD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1052
	jmp	Lj1053
Lj1052:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj1053:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1058
	jmp	Lj1059
Lj1058:
	jmp	Lj1050
Lj1059:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1062
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1066
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CREATE$$TFPCUSTOMIMAGEREADER$stub
Lj1066:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1067
	call	LFPC_RERAISE$stub
Lj1067:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1075
	jmp	Lj1074
Lj1075:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1073
	jmp	Lj1074
Lj1073:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1074:
Lj1062:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1064
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1079
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1080
	jmp	Lj1081
Lj1080:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1081:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1079:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1078
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1078:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1064
Lj1064:
Lj1050:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPREADPSD
_INIT$_FPREADPSD:
.reference __FPREADPSD_init
.globl	__FPREADPSD_init
__FPREADPSD_init:
.reference _INIT$_FPREADPSD
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_FPREADPSD_TFPREADERPSD$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_$FPREADPSD$_Ld8$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$FPREADPSD$_Ld10$non_lazy_ptr-Lj2(%ebx),%esi
	movl	%edx,%ecx
	movl	%esi,%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1$stub
	movl	L_VMT_FPREADPSD_TFPREADERPSD$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_$FPREADPSD$_Ld12$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	L_$FPREADPSD$_Ld14$non_lazy_ptr-Lj2(%ebx),%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1$stub
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPREADPSD$_Ld16
_$FPREADPSD$_Ld16:
	.byte	12
	.ascii	"TFPReaderPSD"

.const_data
	.align 2
.globl	_VMT_FPREADPSD_TFPREADERPSD
_VMT_FPREADPSD_TFPREADERPSD:
	.long	108,-108
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEREADER
	.long	_$FPREADPSD$_Ld16
	.long	0,0
	.long	_$FPREADPSD$_Ld17
	.long	_RTTI_FPREADPSD_TFPREADERPSD
	.long	_INIT_FPREADPSD_TFPREADERPSD
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_SYSTEM_TOBJECT_$__DESTROY
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
	.long	_FPREADPSD_TFPREADERPSD_$__CREATE$$TFPREADERPSD
	.long	_FPREADPSD_TFPREADERPSD_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
	.long	_FPREADPSD_TFPREADERPSD_$__INTERNALCHECK$TSTREAM$$BOOLEAN
	.long	_FPREADPSD_TFPREADERPSD_$__READSCANLINE$TSTREAM$$BOOLEAN
	.long	_FPREADPSD_TFPREADERPSD_$__WRITESCANLINE$TFPCUSTOMIMAGE
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPREADPSD
_THREADVARLIST_FPREADPSD:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 3
.globl	_$FPREADPSD$_Ld1
_$FPREADPSD$_Ld1:
	.byte	0,0,0,0,0,0,0,200,5,64

.const_data
	.align 2
.globl	_$FPREADPSD$_Ld3
_$FPREADPSD$_Ld3:
	.short	0,1
	.long	0,-1,4
.reference _$FPREADPSD$_Ld2
.globl	_$FPREADPSD$_Ld2
_$FPREADPSD$_Ld2:
.reference _$FPREADPSD$_Ld3
	.ascii	"8BPS\000"

.const_data
	.align 2
.globl	_$FPREADPSD$_Ld5
_$FPREADPSD$_Ld5:
	.short	0,1
	.long	0,-1,34
.reference _$FPREADPSD$_Ld4
.globl	_$FPREADPSD$_Ld4
_$FPREADPSD$_Ld4:
.reference _$FPREADPSD$_Ld5
	.ascii	"Unknown/Unsupported PSD image type\000"

.const_data
	.align 2
.globl	_$FPREADPSD$_Ld7
_$FPREADPSD$_Ld7:
	.short	0,1
	.long	0,-1,24
.reference _$FPREADPSD$_Ld6
.globl	_$FPREADPSD$_Ld6
_$FPREADPSD$_Ld6:
.reference _$FPREADPSD$_Ld7
	.ascii	"Unknown compression type\000"

.const_data
	.align 2
.globl	_$FPREADPSD$_Ld9
_$FPREADPSD$_Ld9:
	.short	0,1
	.long	0,-1,3
.reference _$FPREADPSD$_Ld8
.globl	_$FPREADPSD$_Ld8
_$FPREADPSD$_Ld8:
.reference _$FPREADPSD$_Ld9
	.ascii	"PSD\000"

.const_data
	.align 2
.globl	_$FPREADPSD$_Ld11
_$FPREADPSD$_Ld11:
	.short	0,1
	.long	0,-1,10
.reference _$FPREADPSD$_Ld10
.globl	_$FPREADPSD$_Ld10
_$FPREADPSD$_Ld10:
.reference _$FPREADPSD$_Ld11
	.ascii	"PSD Format\000"

.const_data
	.align 2
.globl	_$FPREADPSD$_Ld13
_$FPREADPSD$_Ld13:
	.short	0,1
	.long	0,-1,3
.reference _$FPREADPSD$_Ld12
.globl	_$FPREADPSD$_Ld12
_$FPREADPSD$_Ld12:
.reference _$FPREADPSD$_Ld13
	.ascii	"PDD\000"

.const_data
	.align 2
.globl	_$FPREADPSD$_Ld15
_$FPREADPSD$_Ld15:
	.short	0,1
	.long	0,-1,10
.reference _$FPREADPSD$_Ld14
.globl	_$FPREADPSD$_Ld14
_$FPREADPSD$_Ld14:
.reference _$FPREADPSD$_Ld15
	.ascii	"PDD Format\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPSD_CORRECTCMYK$TFPCOLOR$$TFPCOLOR$stub:
.indirect_symbol _FPREADPSD_CORRECTCMYK$TFPCOLOR$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_SWAPENDIAN$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSTEM_SWAPENDIAN$LONGINT$$LONGINT
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

L_SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD$stub:
.indirect_symbol _SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD
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

L_FPREADPSD_TFPREADERPSD_$__ANALYZEHEADER$stub:
.indirect_symbol _FPREADPSD_TFPREADERPSD_$__ANALYZEHEADER
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

L_FPREADPSD_TFPREADERPSD_$__CREATEBWPALETTE$stub:
.indirect_symbol _FPREADPSD_TFPREADERPSD_$__CREATEBWPALETTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPSD_TFPREADERPSD_$__CREATEGRAYPALETTE$stub:
.indirect_symbol _FPREADPSD_TFPREADERPSD_$__CREATEGRAYPALETTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPSD_TFPREADERPSD_$__READPALETTE$TSTREAM$$BOOLEAN$stub:
.indirect_symbol _FPREADPSD_TFPREADERPSD_$__READPALETTE$TSTREAM$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_dynarray_setlength$stub:
.indirect_symbol fpc_dynarray_setlength
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_dynarray_length$stub:
.indirect_symbol fpc_dynarray_length
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

Lfpc_dynarray_high$stub:
.indirect_symbol fpc_dynarray_high
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

L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR
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

L_FPREADPSD_LABTORGB$TLAB$$TFPCOLOR$stub:
.indirect_symbol _FPREADPSD_LABTORGB$TLAB$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPSD_CMYKTORGB$TFPCOLOR$$TFPCOLOR$stub:
.indirect_symbol _FPREADPSD_CMYKTORGB$TFPCOLOR$$TFPCOLOR
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
.globl	_INIT_FPREADPSD_TRGB
_INIT_FPREADPSD_TRGB:
	.byte	13,4
	.ascii	"TRGB"
	.long	3,0

.const_data
	.align 2
.globl	_RTTI_FPREADPSD_TRGB
_RTTI_FPREADPSD_TRGB:
	.byte	13,4
	.ascii	"TRGB"
	.long	3,3
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_BYTE
	.long	2

.const_data
	.align 2
.globl	_INIT_FPREADPSD_TLAB
_INIT_FPREADPSD_TLAB:
	.byte	13,4
	.ascii	"TLab"
	.long	3,0

.const_data
	.align 2
.globl	_RTTI_FPREADPSD_TLAB
_RTTI_FPREADPSD_TLAB:
	.byte	13,4
	.ascii	"TLab"
	.long	3,3
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_BYTE
	.long	2

.const_data
	.align 2
.globl	_INIT_FPREADPSD_TPSDHEADER
_INIT_FPREADPSD_TPSDHEADER:
	.byte	13,10
	.ascii	"TPSDHeader"
	.long	26,0

.const_data
	.align 2
.globl	_RTTI_FPREADPSD_DEF3
_RTTI_FPREADPSD_DEF3:
	.byte	12
	.ascii	"\000"
	.long	1,4
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_FPREADPSD_DEF4
_RTTI_FPREADPSD_DEF4:
	.byte	12
	.ascii	"\000"
	.long	1,6
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_FPREADPSD_TPSDHEADER
_RTTI_FPREADPSD_TPSDHEADER:
	.byte	13,10
	.ascii	"TPSDHeader"
	.long	26,8
	.long	_RTTI_FPREADPSD_DEF3
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	4
	.long	_RTTI_FPREADPSD_DEF4
	.long	6
	.long	_RTTI_SYSTEM_WORD
	.long	12
	.long	_RTTI_SYSTEM_LONGWORD
	.long	14
	.long	_RTTI_SYSTEM_LONGWORD
	.long	18
	.long	_RTTI_SYSTEM_WORD
	.long	22
	.long	_RTTI_SYSTEM_WORD
	.long	24

.const_data
	.align 2
.globl	_INIT_FPREADPSD_TCOLORMODEDATABLOCK
_INIT_FPREADPSD_TCOLORMODEDATABLOCK:
	.byte	13,19
	.ascii	"TColorModeDataBlock"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_FPREADPSD_DEF6
_RTTI_FPREADPSD_DEF6:
	.byte	12
	.ascii	"\000"
	.long	1,4
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_FPREADPSD_TCOLORMODEDATABLOCK
_RTTI_FPREADPSD_TCOLORMODEDATABLOCK:
	.byte	13,19
	.ascii	"TColorModeDataBlock"
	.long	12,5
	.long	_RTTI_FPREADPSD_DEF6
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	4
	.long	_RTTI_SYSTEM_BYTE
	.long	6
	.long	_RTTI_SYSTEM_LONGWORD
	.long	7
	.long	_RTTI_SYSTEM_BYTE
	.long	11

.const_data
	.align 2
.globl	_INIT_FPREADPSD_TRESOLUTIONINFO
_INIT_FPREADPSD_TRESOLUTIONINFO:
	.byte	13,15
	.ascii	"TResolutionInfo"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_FPREADPSD_TRESOLUTIONINFO
_RTTI_FPREADPSD_TRESOLUTIONINFO:
	.byte	13,15
	.ascii	"TResolutionInfo"
	.long	16,6
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	6
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8
	.long	_RTTI_SYSTEM_WORD
	.long	12
	.long	_RTTI_SYSTEM_WORD
	.long	14

.const_data
	.align 2
.globl	_INIT_FPREADPSD_TDISPLAYINFO
_INIT_FPREADPSD_TDISPLAYINFO:
	.byte	13,12
	.ascii	"TDisplayInfo"
	.long	14,0

.const_data
	.align 2
.globl	_RTTI_FPREADPSD_DEF9
_RTTI_FPREADPSD_DEF9:
	.byte	12
	.ascii	"\000"
	.long	2,4
	.long	_RTTI_SYSTEM_WORD
	.long	18

.const_data
	.align 2
.globl	_RTTI_FPREADPSD_TDISPLAYINFO
_RTTI_FPREADPSD_TDISPLAYINFO:
	.byte	13,12
	.ascii	"TDisplayInfo"
	.long	14,5
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_FPREADPSD_DEF9
	.long	2
	.long	_RTTI_SYSTEM_WORD
	.long	10
	.long	_RTTI_SYSTEM_BYTE
	.long	12
	.long	_RTTI_SYSTEM_BYTE
	.long	13

.const_data
	.align 2
.globl	_INIT_FPREADPSD_DEF12
_INIT_FPREADPSD_DEF12:
	.byte	21
	.ascii	"\000"
	.long	2
	.long	_INIT_SYSTEM_WORD
	.long	18,0
	.byte	9
	.ascii	"FPReadPSD"

.const_data
	.align 2
.globl	_$FPREADPSD$_Ld17
_$FPREADPSD$_Ld17:
	.short	0
	.long	_$FPREADPSD$_Ld18
	.align 2
.globl	_$FPREADPSD$_Ld18
_$FPREADPSD$_Ld18:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPREADPSD_TFPREADERPSD
_INIT_FPREADPSD_TFPREADERPSD:
	.byte	15,12
	.ascii	"TFPReaderPSD"
	.long	4,1
	.long	_INIT_FPREADPSD_DEF12
	.long	100

.const_data
	.align 2
.globl	_RTTI_FPREADPSD_TFPREADERPSD
_RTTI_FPREADPSD_TFPREADERPSD:
	.byte	15,12
	.ascii	"TFPReaderPSD"
	.long	_VMT_FPREADPSD_TFPREADERPSD
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEREADER
	.short	0
	.byte	9
	.ascii	"FPReadPSD"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPREADPSD_TPSDCREATECOMPATIBLEIMGEVENT
_INIT_FPREADPSD_TPSDCREATECOMPATIBLEIMGEVENT:
	.byte	6,28
	.ascii	"TPSDCreateCompatibleImgEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\014TFPReaderPSD"
	.byte	9,8
	.ascii	"NewImage"
	.ascii	"\016TFPCustomImage"
	.byte	0
	.long	_RTTI_FPREADPSD_TFPREADERPSD
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGE

.const_data
	.align 2
.globl	_RTTI_FPREADPSD_TPSDCREATECOMPATIBLEIMGEVENT
_RTTI_FPREADPSD_TPSDCREATECOMPATIBLEIMGEVENT:
	.byte	6,28
	.ascii	"TPSDCreateCompatibleImgEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\014TFPReaderPSD"
	.byte	9,8
	.ascii	"NewImage"
	.ascii	"\016TFPCustomImage"
	.byte	0
	.long	_RTTI_FPREADPSD_TFPREADERPSD
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
L_TC_FPIMAGE_COLBLACK$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLBLACK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLWHITE$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLWHITE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPSD$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPREADPSD$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPSD$_Ld2$non_lazy_ptr:
.indirect_symbol _$FPREADPSD$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPSD$_Ld4$non_lazy_ptr:
.indirect_symbol _$FPREADPSD$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TFPPALETTE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPSD$_Ld6$non_lazy_ptr:
.indirect_symbol _$FPREADPSD$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_FPREADPSD_DEF12$non_lazy_ptr:
.indirect_symbol _INIT_FPREADPSD_DEF12
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPREADPSD_TFPREADERPSD$non_lazy_ptr:
.indirect_symbol _VMT_FPREADPSD_TFPREADERPSD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr:
.indirect_symbol _U_FPIMAGE_IMAGEHANDLERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPSD$_Ld8$non_lazy_ptr:
.indirect_symbol _$FPREADPSD$_Ld8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPSD$_Ld10$non_lazy_ptr:
.indirect_symbol _$FPREADPSD$_Ld10
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPSD$_Ld12$non_lazy_ptr:
.indirect_symbol _$FPREADPSD$_Ld12
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPSD$_Ld14$non_lazy_ptr:
.indirect_symbol _$FPREADPSD$_Ld14
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

