# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPREADPCX_TFPREADERPCX_$__CREATEPALETTE16$TFPCUSTOMIMAGE
_FPREADPCX_TFPREADERPCX_$__CREATEPALETTE16$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	movl	24(%edx),%edx
	movl	(%edx),%edx
	call	*136(%edx)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj13:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	leal	26(%eax),%eax
	movl	-12(%ebp),%edx
	imull	$3,%edx
	movzbl	16(%eax,%edx),%edx
	shll	$8,%edx
	movw	%dx,-20(%ebp)
	movl	-12(%ebp),%edx
	imull	$3,%edx
	movzbl	17(%eax,%edx),%edx
	shll	$8,%edx
	movw	%dx,-18(%ebp)
	movl	-12(%ebp),%edx
	imull	$3,%edx
	movzbl	18(%eax,%edx),%edx
	shll	$8,%edx
	movw	%dx,-16(%ebp)
	movw	$65535,-14(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	cmpl	$15,-12(%ebp)
	jl	Lj13
	leave
	ret

.text
	.align 4
.globl	_FPREADPCX_TFPREADERPCX_$__CREATEGRAYPALETTE$TFPCUSTOMIMAGE
_FPREADPCX_TFPREADERPCX_$__CREATEGRAYPALETTE$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	movl	24(%edx),%edx
	movl	(%edx),%edx
	call	*136(%edx)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj38:
	incl	-12(%ebp)
	movl	-12(%ebp),%eax
	imull	$255,%eax
	movw	%ax,-20(%ebp)
	movl	-12(%ebp),%eax
	imull	$255,%eax
	movw	%ax,-18(%ebp)
	movl	-12(%ebp),%eax
	imull	$255,%eax
	movw	%ax,-16(%ebp)
	movw	$65535,-14(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	cmpl	$255,-12(%ebp)
	jl	Lj38
	leave
	ret

.text
	.align 4
.globl	_FPREADPCX_TFPREADERPCX_$__CREATEBWPALETTE$TFPCUSTOMIMAGE
_FPREADPCX_TFPREADERPCX_$__CREATEBWPALETTE$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj52
Lj52:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	movl	24(%edx),%edx
	movl	(%edx),%edx
	call	*136(%edx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	L_TC_FPIMAGE_COLBLACK$non_lazy_ptr-Lj52(%ebx),%edx
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	L_TC_FPIMAGE_COLWHITE$non_lazy_ptr-Lj52(%ebx),%edx
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADPCX_TFPREADERPCX_$__READPALETTE$TSTREAM$TFPCUSTOMIMAGE
_FPREADPCX_TFPREADERPCX_$__READPALETTE$TSTREAM$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movb	$1,%dl
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%edx
	movl	24(%edx),%edx
	movl	(%edx),%edx
	call	*136(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	subl	$768,%eax
	sbbl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	$0,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj87:
	incl	-20(%ebp)
	leal	-15(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movzbl	-15(%ebp),%eax
	shll	$8,%eax
	movw	%ax,-28(%ebp)
	movzbl	-14(%ebp),%eax
	shll	$8,%eax
	movw	%ax,-26(%ebp)
	movzbl	-13(%ebp),%eax
	shll	$8,%eax
	movw	%ax,-24(%ebp)
	movw	$65535,-22(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	leal	-28(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	24(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	cmpl	$255,-20(%ebp)
	jl	Lj87
	movl	-32(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADPCX_TFPREADERPCX_$__ANALYZEHEADER$TFPCUSTOMIMAGE
_FPREADPCX_TFPREADERPCX_$__ANALYZEHEADER$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj111
Lj111:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	leal	26(%eax),%eax
	movl	%eax,%ebx
	movzbl	(%ebx),%eax
	cmpl	$10,%eax
	je	Lj119
	cmpl	$12,%eax
	je	Lj119
Lj119:
	je	Lj118
	jmp	Lj114
Lj118:
	movzbl	65(%ebx),%eax
	cmpl	$1,%eax
	stc
	je	Lj120
	subl	$3,%eax
	cmpl	$2,%eax
	jb	Lj120
Lj120:
	jc	Lj117
	jmp	Lj114
Lj117:
	movzbl	1(%ebx),%eax
	cmpl	$0,%eax
	stc
	je	Lj121
	subl	$2,%eax
	cmpl	$2,%eax
	jb	Lj121
	cmpl	$3,%eax
	stc
	je	Lj121
	clc
Lj121:
	jc	Lj116
	jmp	Lj114
Lj116:
	movzwl	68(%ebx),%eax
	decl	%eax
	cmpl	$2,%eax
	jb	Lj122
Lj122:
	jc	Lj115
	jmp	Lj114
Lj114:
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj111(%esi),%edx
	movl	L_$FPREADPCX$_Ld1$non_lazy_ptr-Lj111(%esi),%eax
	movl	$0,%edi
	movl	%eax,%ecx
	movl	%edi,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj111(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj115:
	movl	-8(%ebp),%ecx
	movzbl	3(%ebx),%edx
	movzbl	65(%ebx),%eax
	mull	%edx
	movb	%al,154(%ecx)
	movl	-8(%ebp),%eax
	movzbl	2(%ebx),%edx
	cmpl	$1,%edx
	seteb	24(%eax)
	movzwl	8(%ebx),%edx
	movzwl	4(%ebx),%eax
	subl	%eax,%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETWIDTH$LONGINT$stub
	movzwl	10(%ebx),%edx
	movzwl	6(%ebx),%eax
	subl	%eax,%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETHEIGHT$LONGINT$stub
	movl	-8(%ebp),%ecx
	movzwl	66(%ebx),%edx
	movzbl	65(%ebx),%eax
	mull	%edx
	movl	%eax,160(%ecx)
	movl	-8(%ebp),%eax
	movl	160(%eax),%edx
	movl	-8(%ebp),%eax
	leal	156(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADPCX_TFPREADERPCX_$__READSCANLINE$LONGINT$TSTREAM
_FPREADPCX_TFPREADERPCX_$__READSCANLINE$LONGINT$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	156(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	160(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-28(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,24(%eax)
	jne	Lj155
	jmp	Lj156
Lj155:
	jmp	Lj158
	.align 2
Lj157:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj160
	jmp	Lj161
Lj160:
	leal	-17(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movb	-17(%ebp),%al
	cmpb	$192,%al
	jb	Lj168
	jmp	Lj169
Lj168:
	movl	$1,-28(%ebp)
	jmp	Lj172
Lj169:
	movzbl	-17(%ebp),%eax
	subl	$192,%eax
	movl	%eax,-28(%ebp)
	leal	-17(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
Lj172:
Lj161:
	decl	-28(%ebp)
	movl	-16(%ebp),%eax
	movb	-17(%ebp),%dl
	movb	%dl,(%eax)
	incl	-16(%ebp)
	decl	-24(%ebp)
Lj158:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj157
	jmp	Lj159
Lj159:
	jmp	Lj183
Lj156:
	movl	-12(%ebp),%eax
	movl	156(%eax),%edx
	movl	-12(%ebp),%eax
	movl	160(%eax),%ecx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
Lj183:
	leave
	ret

.text
	.align 4
.globl	_FPREADPCX_TFPREADERPCX_$__UPDATEPROGRESS$LONGINT
_FPREADPCX_TFPREADERPCX_$__UPDATEPROGRESS$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
	movb	$1,-9(%ebp)
	movl	$0,4(%esp)
	movb	$0,12(%esp)
	leal	-9(%ebp),%eax
	movl	%eax,(%esp)
	leal	-28(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$1,%edx
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*100(%ebx)
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADPCX_TFPREADERPCX_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
_FPREADPCX_TFPREADERPCX_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,164(%eax)
	movl	$0,-40(%ebp)
	movl	$0,-36(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-28(%ebp)
	movb	$1,-21(%ebp)
	movl	$0,4(%esp)
	movb	$0,12(%esp)
	leal	-21(%ebp),%eax
	movl	%eax,(%esp)
	leal	-40(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$0,%edx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*100(%ebx)
	movl	-12(%ebp),%eax
	leal	26(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$128,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADPCX_TFPREADERPCX_$__ANALYZEHEADER$TFPCUSTOMIMAGE$stub
	movl	-12(%ebp),%eax
	movb	154(%eax),%al
	cmpb	$1,%al
	jb	Lj255
	decb	%al
	je	Lj256
	subb	$3,%al
	je	Lj257
	subb	$4,%al
	je	Lj258
	jmp	Lj255
Lj256:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADPCX_TFPREADERPCX_$__CREATEBWPALETTE$TFPCUSTOMIMAGE$stub
	jmp	Lj254
Lj257:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADPCX_TFPREADERPCX_$__CREATEPALETTE16$TFPCUSTOMIMAGE$stub
	jmp	Lj254
Lj258:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADPCX_TFPREADERPCX_$__READPALETTE$TSTREAM$TFPCUSTOMIMAGE$stub
	jmp	Lj254
Lj255:
	movl	-12(%ebp),%eax
	movzwl	94(%eax),%eax
	cmpl	$2,%eax
	je	Lj273
	jmp	Lj274
Lj273:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADPCX_TFPREADERPCX_$__CREATEGRAYPALETTE$TFPCUSTOMIMAGE$stub
Lj274:
Lj254:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	28(%eax),%ecx
	movl	32(%edx),%eax
	imull	%eax,%ecx
	movl	-12(%ebp),%eax
	movl	%ecx,164(%eax)
	movl	-16(%ebp),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj284
	decl	-20(%ebp)
	.align 2
Lj285:
	incl	-20(%ebp)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*116(%esi)
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	cmpl	-20(%ebp),%ebx
	jg	Lj285
Lj284:
	movl	$0,4(%esp)
	movb	$0,12(%esp)
	leal	-21(%ebp),%eax
	movl	%eax,(%esp)
	leal	-40(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movb	$100,%cl
	movl	$2,%edx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*100(%ebx)
	movl	-12(%ebp),%eax
	movl	156(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADPCX_TFPREADERPCX_$__WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE
_FPREADPCX_TFPREADERPCX_$__WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	movl	%edi,-64(%ebp)
	call	Lj315
Lj315:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movw	$65535,-18(%ebp)
	movl	-12(%ebp),%eax
	movl	156(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%eax
	movw	92(%eax),%ax
	movw	%ax,-42(%ebp)
	movl	-12(%ebp),%eax
	movb	154(%eax),%al
	cmpb	$1,%al
	jb	Lj323
	decb	%al
	je	Lj324
	subb	$3,%al
	je	Lj325
	subb	$4,%al
	je	Lj326
	subb	$16,%al
	je	Lj327
	jmp	Lj323
Lj324:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj329
	decl	-16(%ebp)
	.align 2
Lj330:
	incl	-16(%ebp)
	movl	-28(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$7,%eax
	addl	%eax,%edx
	sarl	$3,%edx
	movzbl	(%ecx,%edx,1),%edi
	movl	-16(%ebp),%eax
	cltd
	movl	$8,%ecx
	idivl	%ecx
	movl	%edx,%ecx
	movl	$128,%eax
	shrl	%cl,%eax
	andl	%eax,%edi
	testl	%edi,%edi
	jne	Lj331
	jmp	Lj332
Lj331:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	$1,%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-52(%ebp)
	movl	%edx,-48(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	jmp	Lj345
Lj332:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-52(%ebp)
	movl	%edx,-48(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
Lj345:
	fnstcw	-50(%ebp)
	fnstcw	-52(%ebp)
	orw	$3840,-50(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,-48(%ebp)
	fildl	-48(%ebp)
	movl	-12(%ebp),%eax
	fildl	164(%eax)
	fdivrp	%st,%st(1)
	movl	L_$FPREADPCX$_Ld3$non_lazy_ptr-Lj315(%esi),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldcw	-50(%ebp)
	fistpq	-60(%ebp)
	fldcw	-52(%ebp)
	fwait
	movl	-60(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADPCX_TFPREADERPCX_$__UPDATEPROGRESS$LONGINT$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj330
Lj329:
	jmp	Lj322
Lj325:
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
	movzwl	-42(%ebp),%eax
	addl	%eax,-32(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-36(%ebp)
	movzwl	-42(%ebp),%eax
	shll	$1,%eax
	addl	%eax,-36(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-40(%ebp)
	movzwl	-42(%ebp),%eax
	imull	$3,%eax
	addl	%eax,-40(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj369
	decl	-16(%ebp)
	.align 2
Lj370:
	incl	-16(%ebp)
	movb	$0,-43(%ebp)
	movl	-28(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$7,%eax
	addl	%eax,%edx
	sarl	$3,%edx
	movzbl	(%ecx,%edx,1),%edi
	movl	-16(%ebp),%eax
	cltd
	movl	$8,%ecx
	idivl	%ecx
	movl	%edx,%ecx
	movl	$128,%eax
	shrl	%cl,%eax
	andl	%eax,%edi
	testl	%edi,%edi
	jne	Lj373
	jmp	Lj374
Lj373:
	incb	-43(%ebp)
Lj374:
	movl	-32(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$7,%eax
	addl	%eax,%edx
	sarl	$3,%edx
	movzbl	(%ecx,%edx,1),%edi
	movl	-16(%ebp),%eax
	cltd
	movl	$8,%ecx
	idivl	%ecx
	movl	%edx,%ecx
	movl	$128,%eax
	shrl	%cl,%eax
	andl	%eax,%edi
	testl	%edi,%edi
	jne	Lj375
	jmp	Lj376
Lj375:
	addb	$2,-43(%ebp)
Lj376:
	movl	-36(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$7,%eax
	addl	%eax,%edx
	sarl	$3,%edx
	movzbl	(%ecx,%edx,1),%edi
	movl	-16(%ebp),%eax
	cltd
	movl	$8,%ecx
	idivl	%ecx
	movl	%edx,%ecx
	movl	$128,%eax
	shrl	%cl,%eax
	andl	%eax,%edi
	testl	%edi,%edi
	jne	Lj377
	jmp	Lj378
Lj377:
	addb	$4,-43(%ebp)
Lj378:
	movl	-40(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$7,%eax
	addl	%eax,%edx
	sarl	$3,%edx
	movzbl	(%ecx,%edx,1),%edi
	movl	-16(%ebp),%eax
	cltd
	movl	$8,%ecx
	idivl	%ecx
	movl	%edx,%ecx
	movl	$128,%eax
	shrl	%cl,%eax
	andl	%eax,%edi
	testl	%edi,%edi
	jne	Lj379
	jmp	Lj380
Lj379:
	addb	$8,-43(%ebp)
Lj380:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movzbl	-43(%ebp),%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-52(%ebp)
	movl	%edx,-48(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	fnstcw	-58(%ebp)
	fnstcw	-60(%ebp)
	orw	$3840,-58(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,-48(%ebp)
	fildl	-48(%ebp)
	movl	-12(%ebp),%eax
	fildl	164(%eax)
	fdivrp	%st,%st(1)
	movl	L_$FPREADPCX$_Ld3$non_lazy_ptr-Lj315(%esi),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldcw	-58(%ebp)
	fistpq	-56(%ebp)
	fldcw	-60(%ebp)
	fwait
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADPCX_TFPREADERPCX_$__UPDATEPROGRESS$LONGINT$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj370
Lj369:
	jmp	Lj322
Lj326:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj398
	decl	-16(%ebp)
	.align 2
Lj399:
	incl	-16(%ebp)
	movl	-28(%ebp),%edx
	movl	-16(%ebp),%eax
	movzbl	(%edx,%eax,1),%edx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-52(%ebp)
	movl	%edx,-48(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	fnstcw	-58(%ebp)
	fnstcw	-60(%ebp)
	orw	$3840,-58(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,-48(%ebp)
	fildl	-48(%ebp)
	movl	-12(%ebp),%eax
	fildl	164(%eax)
	fdivrp	%st,%st(1)
	movl	L_$FPREADPCX$_Ld3$non_lazy_ptr-Lj315(%esi),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldcw	-58(%ebp)
	fistpq	-56(%ebp)
	fldcw	-60(%ebp)
	fwait
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADPCX_TFPREADERPCX_$__UPDATEPROGRESS$LONGINT$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj399
Lj398:
	jmp	Lj322
Lj327:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj417
	decl	-16(%ebp)
	.align 2
Lj418:
	incl	-16(%ebp)
	movl	-28(%ebp),%eax
	movl	-16(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	shll	$8,%eax
	movl	-28(%ebp),%edx
	movl	-16(%ebp),%ecx
	movzbl	(%edx,%ecx,1),%edx
	orl	%edx,%eax
	movw	%ax,-24(%ebp)
	movl	-28(%ebp),%edx
	movzwl	-42(%ebp),%eax
	shll	$1,%eax
	movl	-16(%ebp),%ecx
	addl	%ecx,%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$8,%eax
	movl	-28(%ebp),%ecx
	movzwl	-42(%ebp),%edx
	shll	$1,%edx
	movl	-16(%ebp),%edi
	addl	%edi,%edx
	movzbl	(%ecx,%edx,1),%edx
	orl	%edx,%eax
	movw	%ax,-20(%ebp)
	movl	-28(%ebp),%ecx
	movzwl	-42(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%edx,%eax
	movzbl	(%ecx,%eax,1),%eax
	shll	$8,%eax
	movl	-28(%ebp),%ecx
	movzwl	-42(%ebp),%edi
	movl	-16(%ebp),%edx
	addl	%edi,%edx
	movzbl	(%ecx,%edx,1),%edx
	orl	%edx,%eax
	movw	%ax,-22(%ebp)
	movw	$65535,-18(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	fnstcw	-58(%ebp)
	fnstcw	-60(%ebp)
	orw	$3840,-58(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	imull	%eax,%edx
	movl	%edx,-48(%ebp)
	fildl	-48(%ebp)
	movl	-12(%ebp),%eax
	fildl	164(%eax)
	fdivrp	%st,%st(1)
	movl	L_$FPREADPCX$_Ld3$non_lazy_ptr-Lj315(%esi),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldcw	-58(%ebp)
	fistpq	-56(%ebp)
	fldcw	-60(%ebp)
	fwait
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADPCX_TFPREADERPCX_$__UPDATEPROGRESS$LONGINT$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj418
Lj417:
	jmp	Lj322
Lj323:
Lj322:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	movl	-64(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADPCX_TFPREADERPCX_$__INTERNALCHECK$TSTREAM$$BOOLEAN
_FPREADPCX_TFPREADERPCX_$__INTERNALCHECK$TSTREAM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$1,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPREADPCX
_INIT$_FPREADPCX:
.reference __FPREADPCX_init
.globl	__FPREADPCX_init
__FPREADPCX_init:
.reference _INIT$_FPREADPCX
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_FPREADPCX_TFPREADERPCX$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_$FPREADPCX$_Ld4$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	L_$FPREADPCX$_Ld6$non_lazy_ptr-Lj2(%ebx),%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPREADPCX$_Ld8
_$FPREADPCX$_Ld8:
	.byte	12
	.ascii	"TFPReaderPCX"

.const_data
	.align 2
.globl	_VMT_FPREADPCX_TFPREADERPCX
_VMT_FPREADPCX_TFPREADERPCX:
	.long	168,-168
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEREADER
	.long	_$FPREADPCX$_Ld8
	.long	0,0
	.long	_$FPREADPCX$_Ld9
	.long	_RTTI_FPREADPCX_TFPREADERPCX
	.long	0,0
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
	.long	_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CREATE$$TFPCUSTOMIMAGEREADER
	.long	_FPREADPCX_TFPREADERPCX_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
	.long	_FPREADPCX_TFPREADERPCX_$__INTERNALCHECK$TSTREAM$$BOOLEAN
	.long	_FPREADPCX_TFPREADERPCX_$__READSCANLINE$LONGINT$TSTREAM
	.long	_FPREADPCX_TFPREADERPCX_$__WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPREADPCX
_THREADVARLIST_FPREADPCX:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$FPREADPCX$_Ld2
_$FPREADPCX$_Ld2:
	.short	0,1
	.long	0,-1,34
.reference _$FPREADPCX$_Ld1
.globl	_$FPREADPCX$_Ld1
_$FPREADPCX$_Ld1:
.reference _$FPREADPCX$_Ld2
	.ascii	"Unknown/Unsupported PCX image type\000"

.const
	.align 3
.globl	_$FPREADPCX$_Ld3
_$FPREADPCX$_Ld3:
	.byte	0,0,0,0,0,0,0,200,5,64

.const_data
	.align 2
.globl	_$FPREADPCX$_Ld5
_$FPREADPCX$_Ld5:
	.short	0,1
	.long	0,-1,3
.reference _$FPREADPCX$_Ld4
.globl	_$FPREADPCX$_Ld4
_$FPREADPCX$_Ld4:
.reference _$FPREADPCX$_Ld5
	.ascii	"pcx\000"

.const_data
	.align 2
.globl	_$FPREADPCX$_Ld7
_$FPREADPCX$_Ld7:
	.short	0,1
	.long	0,-1,10
.reference _$FPREADPCX$_Ld6
.globl	_$FPREADPCX$_Ld6
_$FPREADPCX$_Ld6:
.reference _$FPREADPCX$_Ld7
	.ascii	"PCX Format\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

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

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETWIDTH$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETWIDTH$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETHEIGHT$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETHEIGHT$LONGINT
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

L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub:
.indirect_symbol _CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPCX_TFPREADERPCX_$__ANALYZEHEADER$TFPCUSTOMIMAGE$stub:
.indirect_symbol _FPREADPCX_TFPREADERPCX_$__ANALYZEHEADER$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPCX_TFPREADERPCX_$__CREATEBWPALETTE$TFPCUSTOMIMAGE$stub:
.indirect_symbol _FPREADPCX_TFPREADERPCX_$__CREATEBWPALETTE$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPCX_TFPREADERPCX_$__CREATEPALETTE16$TFPCUSTOMIMAGE$stub:
.indirect_symbol _FPREADPCX_TFPREADERPCX_$__CREATEPALETTE16$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPCX_TFPREADERPCX_$__READPALETTE$TSTREAM$TFPCUSTOMIMAGE$stub:
.indirect_symbol _FPREADPCX_TFPREADERPCX_$__READPALETTE$TSTREAM$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPCX_TFPREADERPCX_$__CREATEGRAYPALETTE$TFPCUSTOMIMAGE$stub:
.indirect_symbol _FPREADPCX_TFPREADERPCX_$__CREATEGRAYPALETTE$TFPCUSTOMIMAGE
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

L_FPREADPCX_TFPREADERPCX_$__UPDATEPROGRESS$LONGINT$stub:
.indirect_symbol _FPREADPCX_TFPREADERPCX_$__UPDATEPROGRESS$LONGINT
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
.globl	_$FPREADPCX$_Ld9
_$FPREADPCX$_Ld9:
	.short	0
	.long	_$FPREADPCX$_Ld10
	.align 2
.globl	_$FPREADPCX$_Ld10
_$FPREADPCX$_Ld10:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPREADPCX_TFPREADERPCX
_INIT_FPREADPCX_TFPREADERPCX:
	.byte	15,12
	.ascii	"TFPReaderPCX"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPREADPCX_TFPREADERPCX
_RTTI_FPREADPCX_TFPREADERPCX:
	.byte	15,12
	.ascii	"TFPReaderPCX"
	.long	_VMT_FPREADPCX_TFPREADERPCX
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEREADER
	.short	0
	.byte	9
	.ascii	"FPReadPCX"
	.short	0
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
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPCX$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPREADPCX$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPCX$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPREADPCX$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPREADPCX_TFPREADERPCX$non_lazy_ptr:
.indirect_symbol _VMT_FPREADPCX_TFPREADERPCX
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr:
.indirect_symbol _U_FPIMAGE_IMAGEHANDLERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPCX$_Ld4$non_lazy_ptr:
.indirect_symbol _$FPREADPCX$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPCX$_Ld6$non_lazy_ptr:
.indirect_symbol _$FPREADPCX$_Ld6
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

