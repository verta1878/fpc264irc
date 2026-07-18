# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPWRITEBMP_FPCOLORTORGB$TFPCOLOR$$TCOLORRGB
_FPWRITEBMP_FPCOLORTORGB$TFPCOLOR$$TCOLORRGB:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movl	-8(%ebp),%edx
	movb	%al,2(%edx)
	movl	-4(%ebp),%eax
	movw	2(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movl	-8(%ebp),%edx
	movb	%al,1(%edx)
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movl	-8(%ebp),%edx
	movb	%al,(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPWRITEBMP_FPCOLORTORGBA$TFPCOLOR$$TCOLORRGBA
_FPWRITEBMP_FPCOLORTORGBA$TFPCOLOR$$TCOLORRGBA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movb	%al,-6(%ebp)
	movl	-4(%ebp),%eax
	movw	2(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movb	%al,-7(%ebp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movb	%al,-8(%ebp)
	movl	-4(%ebp),%eax
	movw	6(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movb	%al,-5(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPWRITEBMP_TFPWRITERBMP_$__CREATE$$TFPWRITERBMP
_FPWRITEBMP_TFPWRITERBMP_$__CREATE$$TFPWRITERBMP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj23
	jmp	Lj24
Lj23:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj24:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj29
	jmp	Lj30
Lj29:
	jmp	Lj21
Lj30:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj33
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj37
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER$stub
	movl	-8(%ebp),%eax
	movb	$24,28(%eax)
	movl	-8(%ebp),%eax
	movb	$0,29(%eax)
Lj37:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj38
	call	LFPC_RERAISE$stub
Lj38:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj50
	jmp	Lj49
Lj50:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj48
	jmp	Lj49
Lj48:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj49:
Lj33:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj35
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj54
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj55
	jmp	Lj56
Lj55:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj56:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj54:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj53
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj53:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj35
Lj35:
Lj21:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPWRITEBMP_TFPWRITERBMP_$__SETCOLORSIZE$BYTE
_FPWRITEBMP_TFPWRITERBMP_$__SETCOLORSIZE$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movzbl	-4(%ebp),%edx
	shll	$3,%edx
	movl	-8(%ebp),%eax
	call	L_FPWRITEBMP_TFPWRITERBMP_$__SETBPP$BYTE$stub
	leave
	ret

.text
	.align 4
.globl	_FPWRITEBMP_TFPWRITERBMP_$__GETCOLORSIZE$$BYTE
_FPWRITEBMP_TFPWRITERBMP_$__GETCOLORSIZE$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	28(%eax),%eax
	cmpl	$15,%eax
	jne	Lj69
	jmp	Lj70
Lj69:
	movl	-4(%ebp),%eax
	movzbl	28(%eax),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$7,%edx
	addl	%edx,%eax
	sarl	$3,%eax
	movb	%al,-5(%ebp)
	jmp	Lj73
Lj70:
	movb	$2,-5(%ebp)
Lj73:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPWRITEBMP_TFPWRITERBMP_$__SETBPP$BYTE
_FPWRITEBMP_TFPWRITERBMP_$__SETBPP$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj77
Lj77:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movzbl	-4(%ebp),%edx
	cmpl	$32,%edx
	jbe	Lj80
	clc
	jmp	Lj81
Lj80:
	movl	L_$FPWRITEBMP$_Ld1$non_lazy_ptr-Lj77(%ebx),%eax
	btl	%edx,(%eax)
Lj81:
	jnc	Lj78
	jmp	Lj79
Lj78:
	movl	L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr-Lj77(%ebx),%edx
	movl	L_$FPWRITEBMP$_Ld2$non_lazy_ptr-Lj77(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj77(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj79:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,28(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEBMP_TFPWRITERBMP_$__FILLCOLORMAP$TFPCUSTOMIMAGE
_FPWRITEBMP_TFPWRITERBMP_$__FILLCOLORMAP$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	call	Lj91
Lj91:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-9(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN$stub
	testb	%al,%al
	je	Lj94
	jmp	Lj95
Lj94:
	movb	$1,-9(%ebp)
	jmp	Lj100
Lj95:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	movl	-8(%ebp),%edx
	movzbl	28(%edx),%ecx
	movl	$1,%edx
	shll	%cl,%edx
	cmpl	%edx,%eax
	jg	Lj101
	jmp	Lj102
Lj101:
	movb	$1,-9(%ebp)
Lj102:
Lj100:
	cmpb	$0,-9(%ebp)
	jne	Lj107
	jmp	Lj108
Lj107:
	movl	L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr-Lj91(%ebx),%edx
	movl	L_$FPWRITEBMP$_Ld4$non_lazy_ptr-Lj91(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj91(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj108:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_FPWRITEBMP_DEF1$non_lazy_ptr-Lj91(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	84(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,76(%edx)
	movl	-8(%ebp),%eax
	movl	76(%eax),%esi
	decl	%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj132
	decl	-16(%ebp)
	.align 2
Lj133:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	leal	-28(%ebp),%eax
	call	L_FPWRITEBMP_FPCOLORTORGBA$TFPCOLOR$$TCOLORRGBA$stub
	movl	-8(%ebp),%edx
	movl	84(%edx),%ecx
	movl	-16(%ebp),%edx
	movl	%eax,(%ecx,%edx,4)
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	movl	-16(%ebp),%edx
	movb	$0,3(%eax,%edx,4)
	cmpl	-16(%ebp),%esi
	jg	Lj133
Lj132:
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPWRITEBMP_TFPWRITERBMP_$__SETUP16BPP
_FPWRITEBMP_TFPWRITERBMP_$__SETUP16BPP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj145
Lj145:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$3,60(%eax)
	movl	$3,-12(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_FPWRITEBMP_DEF1$non_lazy_ptr-Lj145(%ebx),%edx
	movl	-4(%ebp),%eax
	leal	84(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movb	$0,-5(%ebp)
	movb	$0,-6(%ebp)
	movb	$248,-7(%ebp)
	movb	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
	movb	$7,-7(%ebp)
	movb	$224,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	-8(%ebp),%edx
	movl	%edx,4(%eax)
	movb	$0,-7(%ebp)
	movb	$31,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	-8(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEBMP_TFPWRITERBMP_$__PACKWORD555$TFPCOLOR$$WORD
_FPWRITEBMP_TFPWRITERBMP_$__PACKWORD555$TFPCOLOR$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-13(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPWRITEBMP_FPCOLORTORGB$TFPCOLOR$$TCOLORRGB$stub
	movzbl	-13(%ebp),%eax
	shrl	$3,%eax
	movw	%ax,-20(%ebp)
	movb	-12(%ebp),%al
	andb	$248,%al
	movzbw	%al,%ax
	movw	%ax,-18(%ebp)
	movzwl	-18(%ebp),%eax
	shll	$2,%eax
	movw	%ax,-18(%ebp)
	movb	-11(%ebp),%al
	andb	$248,%al
	movzbw	%al,%ax
	movw	%ax,-16(%ebp)
	movzwl	-16(%ebp),%eax
	shll	$7,%eax
	movw	%ax,-16(%ebp)
	movw	-16(%ebp),%dx
	movw	-18(%ebp),%ax
	orw	%ax,%dx
	movw	-20(%ebp),%ax
	orw	%ax,%dx
	movw	%dx,-20(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-10(%ebp)
	movw	-10(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_FPWRITEBMP_TFPWRITERBMP_$__PACKWORD565$TFPCOLOR$$WORD
_FPWRITEBMP_TFPWRITERBMP_$__PACKWORD565$TFPCOLOR$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-13(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPWRITEBMP_FPCOLORTORGB$TFPCOLOR$$TCOLORRGB$stub
	movzbl	-13(%ebp),%eax
	shrl	$3,%eax
	movw	%ax,-20(%ebp)
	movb	-12(%ebp),%al
	andb	$252,%al
	movzbw	%al,%ax
	movw	%ax,-18(%ebp)
	movzwl	-18(%ebp),%eax
	shll	$3,%eax
	movw	%ax,-18(%ebp)
	movb	-11(%ebp),%al
	andb	$248,%al
	movzbw	%al,%ax
	movw	%ax,-16(%ebp)
	movzwl	-16(%ebp),%eax
	shll	$8,%eax
	movw	%ax,-16(%ebp)
	movw	-16(%ebp),%dx
	movw	-18(%ebp),%ax
	orw	%ax,%dx
	movw	-20(%ebp),%ax
	orw	%ax,%dx
	movw	%dx,-20(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-10(%ebp)
	movw	-10(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_FPWRITEBMP_TFPWRITERBMP_$__PACK4BPP$TFPCUSTOMIMAGE$LONGINT$LONGINT$$BYTE
_FPWRITEBMP_TFPWRITERBMP_$__PACK4BPP$TFPCUSTOMIMAGE$LONGINT$LONGINT$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETPIXEL$LONGINT$LONGINT$$LONGINT$stub
	andl	$15,%eax
	shll	$4,%eax
	movb	%al,-14(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	decl	%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jg	Lj230
	jmp	Lj231
Lj230:
	movl	-8(%ebp),%eax
	incl	(%eax)
	movzbl	-14(%ebp),%ebx
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETPIXEL$LONGINT$LONGINT$$LONGINT$stub
	andl	$15,%eax
	addl	%eax,%ebx
	movb	%bl,%al
	movb	%al,-14(%ebp)
Lj231:
	movb	-14(%ebp),%al
	movb	%al,-13(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
	movb	-13(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEBMP_TFPWRITERBMP_$__PACK1BPP$TFPCUSTOMIMAGE$LONGINT$LONGINT$$BYTE
_FPWRITEBMP_TFPWRITERBMP_$__PACK1BPP$TFPCUSTOMIMAGE$LONGINT$LONGINT$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,-14(%ebp)
	movb	$7,-15(%ebp)
	jmp	Lj249
	.align 2
Lj248:
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETPIXEL$LONGINT$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj251
	jmp	Lj252
Lj251:
	movsbl	-15(%ebp),%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movzbl	-14(%ebp),%edx
	addl	%edx,%eax
	movb	%al,-14(%ebp)
Lj252:
	decb	-15(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
Lj249:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	32(%eax),%eax
	cmpl	(%edx),%eax
	jg	Lj261
	jmp	Lj250
Lj261:
	movb	-15(%ebp),%al
	cmpb	$0,%al
	jge	Lj248
	jmp	Lj250
Lj250:
	movb	-14(%ebp),%al
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPWRITEBMP_TFPWRITERBMP_$__SAVEHEADER$TSTREAM$TFPCUSTOMIMAGE$$BOOLEAN
_FPWRITEBMP_TFPWRITERBMP_$__SAVEHEADER$TSTREAM$TFPCUSTOMIMAGE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	leal	44(%eax),%eax
	movl	$40,(%eax)
	movl	-8(%ebp),%edx
	movl	32(%edx),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	28(%edx),%edx
	movl	%edx,8(%eax)
	movw	$1,12(%eax)
	movl	-12(%ebp),%edx
	movzbl	28(%edx),%edx
	cmpl	$15,%edx
	je	Lj278
	jmp	Lj279
Lj278:
	movw	$16,14(%eax)
	jmp	Lj282
Lj279:
	movl	-12(%ebp),%edx
	movzbw	28(%edx),%dx
	movw	%dx,14(%eax)
Lj282:
	movl	$100,24(%eax)
	movl	$100,28(%eax)
	movl	$0,36(%eax)
	movl	-12(%ebp),%eax
	leal	30(%eax),%ebx
	movw	$19778,(%ebx)
	movl	-12(%ebp),%eax
	movl	84(%eax),%eax
	call	Lfpc_dynarray_length$stub
	shll	$2,%eax
	addl	$54,%eax
	movl	%eax,10(%ebx)
	movl	$0,6(%ebx)
	movl	-12(%ebp),%eax
	movl	64(%eax),%edx
	movl	10(%ebx),%eax
	addl	%eax,%edx
	movl	%edx,2(%ebx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-12(%ebp),%ecx
	movl	%eax,20(%ecx)
	movl	%edx,24(%ecx)
	movl	-12(%ebp),%eax
	leal	30(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$14,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-12(%ebp),%eax
	leal	44(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$40,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movb	$1,-13(%ebp)
	movb	-13(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEBMP_TFPWRITERBMP_$__COMPRESSSCANLINERLE8$PBYTE$LONGINT$LONGINT$TSTREAM
_FPWRITEBMP_TFPWRITERBMP_$__COMPRESSSCANLINERLE8$PBYTE$LONGINT$LONGINT$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj326
	.align 2
Lj325:
	movl	$0,-28(%ebp)
	movl	$1,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,-33(%ebp)
	movl	-16(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj337
	.align 2
Lj336:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	-33(%ebp),%al
	je	Lj339
	jmp	Lj340
Lj339:
	decl	-32(%ebp)
	movl	-20(%ebp),%eax
	incl	%eax
	cmpl	12(%ebp),%eax
	jl	Lj343
	jmp	Lj342
Lj343:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movb	(%edx,%eax,1),%al
	cmpb	-33(%ebp),%al
	je	Lj341
	jmp	Lj342
Lj341:
	decl	-20(%ebp)
	jmp	Lj338
	jmp	Lj344
Lj342:
	incl	-28(%ebp)
Lj344:
	jmp	Lj345
Lj340:
	incl	-32(%ebp)
Lj345:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-33(%ebp)
	incl	-20(%ebp)
Lj337:
	movl	-20(%ebp),%eax
	cmpl	12(%ebp),%eax
	jl	Lj348
	jmp	Lj338
Lj348:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	cmpl	$255,%eax
	jl	Lj336
	jmp	Lj338
Lj338:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	testl	%eax,%eax
	jl	Lj350
	testl	%eax,%eax
	je	Lj351
	decl	%eax
	je	Lj352
	decl	%eax
	je	Lj353
	jmp	Lj350
Lj351:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,-33(%ebp)
	movl	-16(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj359
	.align 2
Lj358:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	(%edx,%eax,1),%al
	cmpb	-33(%ebp),%al
	jne	Lj361
	jmp	Lj362
Lj361:
	jmp	Lj360
Lj362:
	incl	-20(%ebp)
Lj359:
	movl	-20(%ebp),%eax
	cmpl	12(%ebp),%eax
	jl	Lj363
	jmp	Lj360
Lj363:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	cmpl	$255,%eax
	jl	Lj358
	jmp	Lj360
Lj360:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	movb	%al,-34(%ebp)
	leal	-34(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	leal	-33(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	jmp	Lj349
Lj352:
	movb	$1,-34(%ebp)
	leal	-34(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	leal	(%edx,%eax,1),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	jmp	Lj349
Lj353:
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	je	Lj392
	jmp	Lj393
Lj392:
	movb	$2,-34(%ebp)
	leal	-34(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	leal	(%eax,%edx,1),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	jmp	Lj408
Lj393:
	movb	$1,-34(%ebp)
	leal	-34(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	leal	(%edx,%eax,1),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	leal	-34(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	leal	(%edx,%eax,1),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj408:
	jmp	Lj349
Lj350:
	movl	-32(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj435
	jmp	Lj436
Lj435:
	movb	$0,-34(%ebp)
	leal	-34(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	movb	%al,-34(%ebp)
	leal	-34(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	leal	(%edx,%eax,1),%edx
	movl	8(%ebp),%eax
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movzbl	-34(%ebp),%eax
	cltd
	movl	$2,%ecx
	idivl	%ecx
	testl	%edx,%edx
	jne	Lj459
	jmp	Lj460
Lj459:
	movb	$0,-34(%ebp)
	leal	-34(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj460:
	jmp	Lj469
Lj436:
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj473
	.align 2
Lj472:
	movl	-24(%ebp),%eax
	incl	%eax
	cmpl	-20(%ebp),%eax
	jl	Lj477
	jmp	Lj476
Lj477:
	movl	-4(%ebp),%ebx
	movl	-24(%ebp),%eax
	incl	%eax
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%edx
	movb	(%ebx,%eax,1),%al
	cmpb	(%ecx,%edx,1),%al
	je	Lj475
	jmp	Lj476
Lj475:
	movb	$2,-34(%ebp)
	incl	-24(%ebp)
	jmp	Lj480
Lj476:
	movb	$1,-34(%ebp)
Lj480:
	leal	-34(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	leal	(%eax,%edx,1),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	incl	-24(%ebp)
Lj473:
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj472
	jmp	Lj474
Lj474:
Lj469:
Lj349:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj326:
	movl	-16(%ebp),%eax
	cmpl	12(%ebp),%eax
	jl	Lj325
	jmp	Lj327
Lj327:
	movb	$0,-34(%ebp)
	leal	-34(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj505
	jmp	Lj506
Lj505:
	movb	$1,-34(%ebp)
Lj506:
	leal	-34(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEBMP_TFPWRITERBMP_$__COMPRESSSCANLINERLE4$PBYTE$LONGINT$LONGINT$TSTREAM
_FPWRITEBMP_TFPWRITERBMP_$__COMPRESSSCANLINERLE4$PBYTE$LONGINT$LONGINT$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	12(%ebp),%edx
	leal	-48(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj521
	movl	12(%ebp),%ecx
	movl	%ecx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%ecx
	sarl	$1,%ecx
	movl	12(%ebp),%eax
	cltd
	movl	$2,%ebx
	idivl	%ebx
	addl	%edx,%ecx
	movl	%ecx,-24(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj530
	.align 2
Lj529:
	movl	-48(%ebp),%ecx
	movl	-16(%ebp),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ebx
	movzbl	(%edx,%ebx,1),%edx
	shrl	$4,%edx
	movb	%dl,(%ecx,%eax,1)
	movl	-48(%ebp),%ebx
	movl	-16(%ebp),%eax
	shll	$1,%eax
	incl	%eax
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movb	(%ecx,%edx,1),%dl
	andb	$15,%dl
	movb	%dl,(%ebx,%eax,1)
	incl	-16(%ebp)
Lj530:
	movl	-16(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jl	Lj529
	jmp	Lj531
Lj531:
	movl	$0,-16(%ebp)
	jmp	Lj539
	.align 2
Lj538:
	movl	$0,-28(%ebp)
	movl	$1,-32(%ebp)
	movl	$-10,-36(%ebp)
	movl	-48(%ebp),%eax
	movl	-16(%ebp),%edx
	movzbw	(%eax,%edx,1),%ax
	movw	%ax,-38(%ebp)
	movl	-48(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	movzbw	(%edx,%eax,1),%ax
	movw	%ax,-40(%ebp)
	movl	-16(%ebp),%eax
	addl	$2,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj554
	.align 2
Lj553:
	movl	-48(%ebp),%eax
	movl	-20(%ebp),%edx
	movzbw	(%eax,%edx,1),%ax
	cmpw	-38(%ebp),%ax
	je	Lj556
	jmp	Lj557
Lj556:
	decl	-32(%ebp)
	movl	-20(%ebp),%eax
	incl	%eax
	cmpl	12(%ebp),%eax
	jl	Lj560
	jmp	Lj559
Lj560:
	movl	-48(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movzbw	(%edx,%eax,1),%ax
	cmpw	-40(%ebp),%ax
	je	Lj558
	jmp	Lj559
Lj558:
	movl	-20(%ebp),%eax
	addl	$2,%eax
	cmpl	12(%ebp),%eax
	jl	Lj563
	jmp	Lj562
Lj563:
	movl	-48(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$2,%eax
	movzbw	(%edx,%eax,1),%ax
	cmpw	-38(%ebp),%ax
	je	Lj561
	jmp	Lj562
Lj561:
	subl	$2,-20(%ebp)
	jmp	Lj555
	jmp	Lj564
Lj562:
	incl	-28(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	cmpl	$254,%edx
	je	Lj565
	jmp	Lj566
Lj565:
	incl	-20(%ebp)
	jmp	Lj555
Lj566:
	movw	$256,-38(%ebp)
	movw	$256,-40(%ebp)
	addl	$2,-20(%ebp)
	jmp	Lj554
Lj564:
	jmp	Lj571
Lj559:
	incl	-28(%ebp)
	movw	$256,-42(%ebp)
Lj571:
	jmp	Lj574
Lj557:
	movl	-20(%ebp),%eax
	decl	%eax
	cmpl	-36(%ebp),%eax
	jne	Lj575
	jmp	Lj576
Lj575:
	incl	-32(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-36(%ebp)
Lj576:
	movl	-48(%ebp),%edx
	movl	-20(%ebp),%eax
	movzbw	(%edx,%eax,1),%ax
	movw	%ax,-42(%ebp)
Lj574:
	movw	-40(%ebp),%ax
	movw	%ax,-38(%ebp)
	movw	-42(%ebp),%ax
	movw	%ax,-40(%ebp)
	movb	-49(%ebp),%al
	testb	%al,%al
	seteb	-49(%ebp)
	incl	-20(%ebp)
Lj554:
	movl	-20(%ebp),%eax
	cmpl	12(%ebp),%eax
	jl	Lj587
	jmp	Lj555
Lj587:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	cmpl	$255,%eax
	jl	Lj553
	jmp	Lj555
Lj555:
	movl	-20(%ebp),%eax
	cmpl	12(%ebp),%eax
	jg	Lj588
	jmp	Lj589
Lj588:
	movl	12(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj589:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	testl	%eax,%eax
	jl	Lj593
	testl	%eax,%eax
	je	Lj594
	decl	%eax
	je	Lj595
	decl	%eax
	je	Lj596
	decl	%eax
	je	Lj597
	decl	%eax
	je	Lj598
	jmp	Lj593
Lj594:
	movb	$1,-49(%ebp)
	movl	-48(%ebp),%edx
	movl	-16(%ebp),%eax
	movzbw	(%edx,%eax,1),%ax
	movw	%ax,-38(%ebp)
	movl	-48(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	movzbw	(%edx,%eax,1),%ax
	movw	%ax,-40(%ebp)
	movl	-16(%ebp),%eax
	addl	$2,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj608
	.align 2
Lj607:
	cmpb	$0,-49(%ebp)
	jne	Lj610
	jmp	Lj611
Lj610:
	movl	-48(%ebp),%edx
	movl	-20(%ebp),%eax
	movzbw	(%edx,%eax,1),%ax
	cmpw	-38(%ebp),%ax
	jne	Lj612
	jmp	Lj613
Lj612:
	jmp	Lj609
Lj613:
Lj611:
	movb	-49(%ebp),%al
	testb	%al,%al
	je	Lj614
	jmp	Lj615
Lj614:
	movl	-48(%ebp),%edx
	movl	-20(%ebp),%eax
	movzbw	(%edx,%eax,1),%ax
	cmpw	-40(%ebp),%ax
	jne	Lj616
	jmp	Lj617
Lj616:
	jmp	Lj609
Lj617:
Lj615:
	movb	-49(%ebp),%al
	testb	%al,%al
	seteb	-49(%ebp)
	incl	-20(%ebp)
Lj608:
	movl	-20(%ebp),%eax
	cmpl	12(%ebp),%eax
	jl	Lj620
	jmp	Lj609
Lj620:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	cmpl	$255,%edx
	jl	Lj607
	jmp	Lj609
Lj609:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	movb	%al,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movzwl	-38(%ebp),%eax
	shll	$4,%eax
	movw	-40(%ebp),%dx
	andw	$15,%dx
	movzwl	%dx,%edx
	addl	%edx,%eax
	movw	%ax,-42(%ebp)
	movb	-42(%ebp),%al
	movb	%al,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	jmp	Lj592
Lj595:
	movb	$1,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-48(%ebp),%eax
	movl	-16(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	shll	$4,%eax
	movb	%al,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	jmp	Lj592
Lj596:
	movb	$2,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-48(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	movb	(%edx,%eax,1),%al
	andb	$15,%al
	movzbl	%al,%eax
	movl	-48(%ebp),%ecx
	movl	-16(%ebp),%edx
	movzbl	(%ecx,%edx,1),%edx
	shll	$4,%edx
	addl	%edx,%eax
	movb	%al,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	jmp	Lj592
Lj597:
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	je	Lj671
	jmp	Lj672
Lj671:
	movb	$3,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-48(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	movb	(%edx,%eax,1),%al
	andb	$15,%al
	movzbl	%al,%eax
	movl	-48(%ebp),%ecx
	movl	-16(%ebp),%edx
	movzbl	(%ecx,%edx,1),%edx
	shll	$4,%edx
	addl	%edx,%eax
	movb	%al,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	jmp	Lj689
Lj672:
	movb	$2,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-48(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	movb	(%edx,%eax,1),%al
	andb	$15,%al
	movzbl	%al,%eax
	movl	-48(%ebp),%edx
	movl	-16(%ebp),%ecx
	movzbl	(%edx,%ecx,1),%edx
	shll	$4,%edx
	addl	%edx,%eax
	movb	%al,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movb	$1,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-48(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	$2,%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$4,%eax
	movb	%al,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj689:
	jmp	Lj592
Lj598:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj722
	jmp	Lj723
Lj722:
	movb	$4,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-48(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	movb	(%edx,%eax,1),%al
	andb	$15,%al
	movzbl	%al,%eax
	movl	-48(%ebp),%ecx
	movl	-16(%ebp),%edx
	movzbl	(%ecx,%edx,1),%edx
	shll	$4,%edx
	addl	%edx,%eax
	movb	%al,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	jmp	Lj740
Lj723:
	movb	$2,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-48(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	movb	(%edx,%eax,1),%al
	andb	$15,%al
	movzbl	%al,%eax
	movl	-48(%ebp),%edx
	movl	-16(%ebp),%ecx
	movzbl	(%edx,%ecx,1),%edx
	shll	$4,%edx
	addl	%edx,%eax
	movb	%al,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movb	$2,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-48(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	$2,%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$4,%eax
	movl	-48(%ebp),%ecx
	movl	-16(%ebp),%edx
	addl	$3,%edx
	movb	(%ecx,%edx,1),%dl
	andb	$15,%dl
	movzbl	%dl,%edx
	addl	%edx,%eax
	movb	%al,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj740:
	jmp	Lj592
Lj593:
	movl	-32(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj773
	jmp	Lj774
Lj773:
	movb	$0,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	movb	%al,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj794
	.align 2
Lj793:
	movl	-48(%ebp),%edx
	movl	-24(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$4,%eax
	movb	%al,-43(%ebp)
	incl	-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj798
	jmp	Lj799
Lj798:
	movl	-48(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	(%eax,%edx,1),%al
	andb	$15,%al
	movzbl	%al,%eax
	movzbl	-43(%ebp),%edx
	addl	%edx,%eax
	movb	%al,-43(%ebp)
	incl	-24(%ebp)
Lj799:
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj794:
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj793
	jmp	Lj795
Lj795:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cltd
	movl	$2,%ecx
	idivl	%ecx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-24(%ebp),%eax
	cltd
	movl	$4,%ecx
	idivl	%ecx
	testl	%edx,%edx
	jne	Lj812
	jmp	Lj813
Lj812:
	movb	$0,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj813:
	jmp	Lj822
Lj774:
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj826
	.align 2
Lj825:
	movl	-24(%ebp),%eax
	addl	$2,%eax
	cmpl	-20(%ebp),%eax
	jl	Lj830
	jmp	Lj829
Lj830:
	movl	-48(%ebp),%ebx
	movl	-24(%ebp),%eax
	addl	$2,%eax
	movl	-48(%ebp),%edx
	movl	-24(%ebp),%ecx
	movb	(%ebx,%eax,1),%al
	cmpb	(%edx,%ecx,1),%al
	je	Lj828
	jmp	Lj829
Lj828:
	movl	-24(%ebp),%eax
	addl	$3,%eax
	cmpl	-20(%ebp),%eax
	jl	Lj833
	jmp	Lj832
Lj833:
	movl	-48(%ebp),%ecx
	movl	-24(%ebp),%eax
	incl	%eax
	movl	-48(%ebp),%ebx
	movl	-24(%ebp),%edx
	addl	$3,%edx
	movb	(%ecx,%eax,1),%al
	cmpb	(%ebx,%edx,1),%al
	je	Lj831
	jmp	Lj832
Lj831:
	movb	$4,-43(%ebp)
	jmp	Lj836
Lj832:
	movb	$3,-43(%ebp)
Lj836:
	jmp	Lj839
Lj829:
	movl	-24(%ebp),%eax
	incl	%eax
	cmpl	-20(%ebp),%eax
	jge	Lj840
	jmp	Lj841
Lj840:
	movb	$1,-43(%ebp)
	jmp	Lj844
Lj841:
	movl	-24(%ebp),%eax
	addl	$3,%eax
	cmpl	-20(%ebp),%eax
	jl	Lj847
	jmp	Lj846
Lj847:
	movl	-48(%ebp),%ecx
	movl	-24(%ebp),%eax
	incl	%eax
	movl	-48(%ebp),%ebx
	movl	-24(%ebp),%edx
	addl	$3,%edx
	movb	(%ecx,%eax,1),%al
	cmpb	(%ebx,%edx,1),%al
	je	Lj845
	jmp	Lj846
Lj845:
	movb	$1,-43(%ebp)
	jmp	Lj850
Lj846:
	movb	$2,-43(%ebp)
Lj850:
Lj844:
Lj839:
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movzbw	-43(%ebp),%ax
	movw	%ax,-42(%ebp)
	movl	-48(%ebp),%edx
	movl	-24(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$4,%eax
	movb	%al,-43(%ebp)
	movzbl	-43(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj863
	jmp	Lj864
Lj863:
	movl	-48(%ebp),%edx
	movl	-24(%ebp),%eax
	incl	%eax
	movb	(%edx,%eax,1),%al
	andb	$15,%al
	movzbl	%al,%eax
	movzbl	-43(%ebp),%edx
	addl	%edx,%eax
	movb	%al,-43(%ebp)
Lj864:
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movzwl	-42(%ebp),%eax
	addl	%eax,-24(%ebp)
Lj826:
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj825
	jmp	Lj827
Lj827:
Lj822:
Lj592:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj539:
	movl	-16(%ebp),%eax
	cmpl	12(%ebp),%eax
	jl	Lj538
	jmp	Lj540
Lj540:
	movb	$0,-43(%ebp)
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj883
	jmp	Lj884
Lj883:
	movb	$1,-43(%ebp)
Lj884:
	leal	-43(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj521:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj522
	decl	%eax
	testl	%eax,%eax
	je	Lj523
Lj523:
	call	LFPC_RERAISE$stub
Lj522:
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEBMP_TFPWRITERBMP_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE
_FPWRITEBMP_TFPWRITERBMP_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$248,%esp
	movl	%ebx,-228(%ebp)
	movl	%esi,-224(%ebp)
	movl	%edi,-220(%ebp)
	call	Lj896
Lj896:
	popl	%edi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-132(%ebp)
	movl	$0,-116(%ebp)
	leal	-84(%ebp),%ecx
	leal	-108(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-112(%ebp)
	testl	%eax,%eax
	jne	Lj897
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	movb	$1,-45(%ebp)
	movb	$0,-46(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%ecx
	shll	$2,%ecx
	movl	$1374389535,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-52(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj914
	jmp	Lj915
Lj914:
	movl	$-1,-52(%ebp)
Lj915:
	movl	$0,-56(%ebp)
	movl	$0,4(%esp)
	movb	$0,12(%esp)
	leal	-45(%ebp),%eax
	movl	%eax,(%esp)
	leal	-72(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$0,%edx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*100(%ebx)
	movb	-45(%ebp),%al
	testb	%al,%al
	je	Lj934
	jmp	Lj935
Lj934:
	jmp	Lj897
Lj935:
	movl	-12(%ebp),%eax
	cmpb	$0,29(%eax)
	jne	Lj938
	jmp	Lj937
Lj938:
	movl	-12(%ebp),%eax
	movzbl	28(%eax),%eax
	cmpl	$4,%eax
	je	Lj939
	cmpl	$8,%eax
	je	Lj939
Lj939:
	jne	Lj936
	jmp	Lj937
Lj936:
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	movl	L_$FPWRITEBMP$_Ld6$non_lazy_ptr-Lj896(%edi),%eax
	movl	%eax,-128(%ebp)
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	movl	-12(%ebp),%eax
	movzbl	28(%eax),%eax
	leal	-132(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-132(%ebp),%eax
	movl	%eax,-124(%ebp)
	movl	L_$FPWRITEBMP$_Ld8$non_lazy_ptr-Lj896(%edi),%eax
	movl	%eax,-120(%ebp)
	leal	-128(%ebp),%edx
	leal	-116(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-116(%ebp),%ecx
	movl	L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr-Lj896(%edi),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj896(%edi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj937:
	movl	-12(%ebp),%eax
	cmpb	$0,29(%eax)
	jne	Lj958
	jmp	Lj957
Lj958:
	movl	-12(%ebp),%eax
	movzbl	28(%eax),%eax
	cmpl	$4,%eax
	je	Lj956
	jmp	Lj957
Lj956:
	movl	-12(%ebp),%eax
	movl	$2,60(%eax)
	jmp	Lj961
Lj957:
	movl	-12(%ebp),%eax
	cmpb	$0,29(%eax)
	jne	Lj964
	jmp	Lj963
Lj964:
	movl	-12(%ebp),%eax
	movzbl	28(%eax),%eax
	cmpl	$8,%eax
	je	Lj962
	jmp	Lj963
Lj962:
	movl	-12(%ebp),%eax
	movl	$1,60(%eax)
	jmp	Lj967
Lj963:
	movl	-12(%ebp),%eax
	movl	$0,60(%eax)
Lj967:
Lj961:
	movl	-12(%ebp),%eax
	movl	$0,76(%eax)
	leal	-128(%ebp),%ecx
	leal	-156(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-160(%ebp)
	testl	%eax,%eax
	jne	Lj972
	movl	-12(%ebp),%eax
	movzbl	28(%eax),%eax
	cmpl	$8,%eax
	jle	Lj976
	jmp	Lj977
Lj976:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPWRITEBMP_TFPWRITERBMP_$__FILLCOLORMAP$TFPCUSTOMIMAGE$stub
Lj977:
	movl	-12(%ebp),%eax
	movzbl	28(%eax),%eax
	cmpl	$16,%eax
	je	Lj982
	jmp	Lj983
Lj982:
	movl	-12(%ebp),%eax
	call	L_FPWRITEBMP_TFPWRITERBMP_$__SETUP16BPP$stub
Lj983:
	movl	$0,-24(%ebp)
	movl	-12(%ebp),%eax
	movb	28(%eax),%al
	cmpb	$1,%al
	jb	Lj989
	decb	%al
	je	Lj990
	subb	$3,%al
	je	Lj991
	subb	$4,%al
	je	Lj992
	subb	$7,%al
	je	Lj993
	decb	%al
	je	Lj994
	subb	$8,%al
	je	Lj995
	subb	$8,%al
	je	Lj996
	jmp	Lj989
Lj990:
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$7,%eax
	addl	%eax,%edx
	sarl	$3,%edx
	movl	%edx,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	cltd
	movl	$8,%ecx
	idivl	%ecx
	testl	%edx,%edx
	jne	Lj999
	jmp	Lj1000
Lj999:
	incl	-24(%ebp)
Lj1000:
	jmp	Lj988
Lj991:
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	movl	%edx,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	cltd
	movl	$2,%ecx
	idivl	%ecx
	testl	%edx,%edx
	jne	Lj1003
	jmp	Lj1004
Lj1003:
	incl	-24(%ebp)
Lj1004:
	jmp	Lj988
Lj992:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj988
Lj993:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	shll	$1,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj988
Lj994:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	shll	$1,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj988
Lj995:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	imull	$3,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj988
Lj996:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	shll	$2,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj988
Lj989:
Lj988:
	movl	-24(%ebp),%eax
	cltd
	movl	$4,%ecx
	idivl	%ecx
	movl	%edx,%eax
	movl	$4,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	cltd
	movl	$4,%ecx
	idivl	%ecx
	movb	%dl,-25(%ebp)
	movzbl	-25(%ebp),%eax
	addl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%edx
	movl	-24(%ebp),%eax
	imull	%eax,%edx
	movl	-12(%ebp),%eax
	movl	%edx,64(%eax)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
	movl	-12(%ebp),%eax
	movl	84(%eax),%eax
	call	Lfpc_dynarray_length$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%ebx
	jl	Lj1026
	decl	-36(%ebp)
	.align 2
Lj1027:
	incl	-36(%ebp)
	movl	-12(%ebp),%eax
	movl	84(%eax),%eax
	movl	-36(%ebp),%edx
	leal	(%eax,%edx,4),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*132(%esi)
	cmpl	-36(%ebp),%ebx
	jg	Lj1027
Lj1026:
	movl	-24(%ebp),%edx
	leal	-32(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	leal	-172(%ebp),%ecx
	leal	-196(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-200(%ebp)
	testl	%eax,%eax
	jne	Lj1040
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jl	Lj1045
	incl	-16(%ebp)
	.align 2
Lj1046:
	decl	-16(%ebp)
	movl	$0,-36(%ebp)
	movl	$0,-20(%ebp)
	movl	-12(%ebp),%eax
	movb	28(%eax),%al
	cmpb	$1,%al
	jb	Lj1052
	decb	%al
	je	Lj1053
	subb	$3,%al
	je	Lj1054
	subb	$4,%al
	je	Lj1055
	subb	$7,%al
	je	Lj1056
	decb	%al
	je	Lj1057
	subb	$8,%al
	je	Lj1058
	subb	$8,%al
	je	Lj1059
	jmp	Lj1052
Lj1053:
	jmp	Lj1061
	.align 2
Lj1060:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPWRITEBMP_TFPWRITERBMP_$__PACK1BPP$TFPCUSTOMIMAGE$LONGINT$LONGINT$$BYTE$stub
	movl	-32(%ebp),%ecx
	movl	-36(%ebp),%edx
	movb	%al,(%ecx,%edx,1)
	incl	-36(%ebp)
Lj1061:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj1060
	jmp	Lj1062
Lj1062:
	jmp	Lj1051
Lj1054:
	jmp	Lj1074
	.align 2
Lj1073:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPWRITEBMP_TFPWRITERBMP_$__PACK4BPP$TFPCUSTOMIMAGE$LONGINT$LONGINT$$BYTE$stub
	movl	-32(%ebp),%edx
	movl	-36(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	incl	-36(%ebp)
Lj1074:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj1073
	jmp	Lj1075
Lj1075:
	jmp	Lj1051
Lj1055:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj1087
	decl	-20(%ebp)
	.align 2
Lj1088:
	incl	-20(%ebp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETPIXEL$LONGINT$LONGINT$$LONGINT$stub
	movl	-32(%ebp),%ecx
	movl	-20(%ebp),%edx
	movb	%al,(%ecx,%edx,1)
	cmpl	-20(%ebp),%ebx
	jg	Lj1088
Lj1087:
	jmp	Lj1051
Lj1056:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj1098
	decl	-20(%ebp)
	.align 2
Lj1099:
	incl	-20(%ebp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-208(%ebp)
	movl	%edx,-204(%ebp)
	leal	-208(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPWRITEBMP_TFPWRITERBMP_$__PACKWORD555$TFPCOLOR$$WORD$stub
	movl	-32(%ebp),%ecx
	movl	-20(%ebp),%edx
	movw	%ax,(%ecx,%edx,2)
	cmpl	-20(%ebp),%ebx
	jg	Lj1099
Lj1098:
	jmp	Lj1051
Lj1057:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj1113
	decl	-20(%ebp)
	.align 2
Lj1114:
	incl	-20(%ebp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-208(%ebp)
	movl	%edx,-204(%ebp)
	leal	-208(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPWRITEBMP_TFPWRITERBMP_$__PACKWORD565$TFPCOLOR$$WORD$stub
	movl	-32(%ebp),%ecx
	movl	-20(%ebp),%edx
	movw	%ax,(%ecx,%edx,2)
	cmpl	-20(%ebp),%ebx
	jg	Lj1114
Lj1113:
	jmp	Lj1051
Lj1058:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj1128
	decl	-20(%ebp)
	.align 2
Lj1129:
	incl	-20(%ebp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-216(%ebp)
	movl	%edx,-212(%ebp)
	leal	-216(%ebp),%eax
	leal	-208(%ebp),%edx
	call	L_FPWRITEBMP_FPCOLORTORGB$TFPCOLOR$$TCOLORRGB$stub
	movl	-32(%ebp),%ecx
	movl	-20(%ebp),%edx
	imull	$3,%edx
	movw	-208(%ebp),%ax
	movw	%ax,(%ecx,%edx)
	movb	-206(%ebp),%al
	movb	%al,2(%ecx,%edx)
	cmpl	-20(%ebp),%ebx
	jg	Lj1129
Lj1128:
	jmp	Lj1051
Lj1059:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj1143
	decl	-20(%ebp)
	.align 2
Lj1144:
	incl	-20(%ebp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-208(%ebp)
	movl	%edx,-204(%ebp)
	leal	-208(%ebp),%eax
	call	L_FPWRITEBMP_FPCOLORTORGBA$TFPCOLOR$$TCOLORRGBA$stub
	movl	-32(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	%eax,(%edx,%ecx,4)
	cmpl	-20(%ebp),%ebx
	jg	Lj1144
Lj1143:
	jmp	Lj1051
Lj1052:
Lj1051:
	movl	-24(%ebp),%eax
	decl	%eax
	movzbl	-25(%ebp),%edx
	movl	-24(%ebp),%ecx
	subl	%edx,%ecx
	movl	%ecx,-36(%ebp)
	cmpl	-36(%ebp),%eax
	jl	Lj1156
	decl	-36(%ebp)
	.align 2
Lj1157:
	incl	-36(%ebp)
	movl	-32(%ebp),%edx
	movl	-36(%ebp),%ecx
	movb	$0,(%edx,%ecx,1)
	cmpl	-36(%ebp),%eax
	jg	Lj1157
Lj1156:
	movl	-12(%ebp),%eax
	movl	60(%eax),%eax
	cmpl	$1,%eax
	je	Lj1160
	jmp	Lj1161
Lj1160:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPWRITEBMP_TFPWRITERBMP_$__COMPRESSSCANLINERLE8$PBYTE$LONGINT$LONGINT$TSTREAM$stub
	jmp	Lj1172
Lj1161:
	movl	-12(%ebp),%eax
	movl	60(%eax),%eax
	cmpl	$2,%eax
	je	Lj1173
	jmp	Lj1174
Lj1173:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPWRITEBMP_TFPWRITERBMP_$__COMPRESSSCANLINERLE4$PBYTE$LONGINT$LONGINT$TSTREAM$stub
	jmp	Lj1185
Lj1174:
	movl	-32(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj1185:
Lj1172:
	addl	$4,-56(%ebp)
	movl	-56(%ebp),%eax
	cmpl	-52(%ebp),%eax
	jae	Lj1192
	jmp	Lj1193
Lj1192:
	movl	-56(%ebp),%eax
	xorl	%edx,%edx
	divl	-52(%ebp)
	movzbl	-46(%ebp),%edx
	addl	%edx,%eax
	movb	%al,-46(%ebp)
	movl	-56(%ebp),%eax
	xorl	%edx,%edx
	divl	-52(%ebp)
	movl	%edx,-56(%ebp)
	movl	$0,4(%esp)
	movb	$0,12(%esp)
	leal	-45(%ebp),%eax
	movl	%eax,(%esp)
	leal	-72(%ebp),%eax
	movl	%eax,8(%esp)
	movb	-46(%ebp),%cl
	movl	-12(%ebp),%eax
	movl	$1,%edx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*100(%ebx)
	movb	-45(%ebp),%al
	testb	%al,%al
	je	Lj1212
	jmp	Lj1213
Lj1212:
	jmp	Lj1043
Lj1213:
Lj1193:
	cmpl	$0,-16(%ebp)
	jg	Lj1046
Lj1045:
	movl	-12(%ebp),%eax
	movl	60(%eax),%eax
	decl	%eax
	cmpl	$2,%eax
	jb	Lj1216
Lj1216:
	jc	Lj1214
	jmp	Lj1215
Lj1214:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-12(%ebp),%ecx
	subl	20(%ecx),%eax
	sbbl	24(%ecx),%edx
	movl	-12(%ebp),%ecx
	movl	40(%ecx),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	subl	%ebx,%eax
	sbbl	%ecx,%edx
	movl	%eax,-44(%ebp)
	movl	%edx,-40(%ebp)
	movl	-12(%ebp),%edx
	movl	-44(%ebp),%eax
	movl	%eax,64(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-44(%ebp)
	movl	%edx,-40(%ebp)
	movl	-12(%ebp),%edx
	movl	24(%edx),%eax
	movl	%eax,4(%esp)
	movl	20(%edx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
	movl	-40(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-44(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
Lj1215:
	movl	$0,4(%esp)
	movb	$0,12(%esp)
	leal	-45(%ebp),%eax
	movl	%eax,(%esp)
	leal	-72(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movb	$100,%cl
	movl	$2,%edx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*100(%ebx)
Lj1040:
	call	LFPC_POPADDRSTACK$stub
	movl	-32(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-200(%ebp),%eax
	testl	%eax,%eax
	je	Lj1041
	decl	%eax
	testl	%eax,%eax
	je	Lj1042
	decl	%eax
	testl	%eax,%eax
	je	Lj975
Lj1042:
	call	LFPC_RERAISE$stub
Lj1043:
	movl	-200(%ebp),%eax
	movl	$2,-200(%ebp)
	jmp	Lj1040
Lj1041:
Lj972:
	call	LFPC_POPADDRSTACK$stub
	movl	$0,-164(%ebp)
	leal	-164(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_FPWRITEBMP_DEF1$non_lazy_ptr-Lj896(%edi),%edx
	movl	-12(%ebp),%eax
	leal	84(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-160(%ebp),%eax
	testl	%eax,%eax
	je	Lj973
	decl	%eax
	testl	%eax,%eax
	je	Lj974
	decl	%eax
	testl	%eax,%eax
	je	Lj897
Lj974:
	call	LFPC_RERAISE$stub
Lj975:
	movl	-160(%ebp),%eax
	movl	$2,-160(%ebp)
	jmp	Lj972
Lj973:
Lj897:
	call	LFPC_POPADDRSTACK$stub
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	movl	-112(%ebp),%eax
	testl	%eax,%eax
	je	Lj898
	call	LFPC_RERAISE$stub
Lj898:
	movl	-228(%ebp),%ebx
	movl	-224(%ebp),%esi
	movl	-220(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPWRITEBMP
_INIT$_FPWRITEBMP:
.reference __FPWRITEBMP_init
.globl	__FPWRITEBMP_init
__FPWRITEBMP_init:
.reference _INIT$_FPWRITEBMP
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_FPWRITEBMP_TFPWRITERBMP$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_$FPWRITEBMP$_Ld10$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	L_$FPWRITEBMP$_Ld12$non_lazy_ptr-Lj2(%ebx),%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPWRITEBMP$_Ld14
_$FPWRITEBMP$_Ld14:
	.byte	12
	.ascii	"TFPWriterBMP"

.const_data
	.align 2
.globl	_VMT_FPWRITEBMP_TFPWRITERBMP
_VMT_FPWRITEBMP_TFPWRITERBMP:
	.long	88,-88
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEWRITER
	.long	_$FPWRITEBMP$_Ld14
	.long	0,0
	.long	_$FPWRITEBMP$_Ld15
	.long	_RTTI_FPWRITEBMP_TFPWRITERBMP
	.long	_INIT_FPWRITEBMP_TFPWRITERBMP
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
	.long	_FPWRITEBMP_TFPWRITERBMP_$__CREATE$$TFPWRITERBMP
	.long	_FPWRITEBMP_TFPWRITERBMP_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE
	.long	_FPWRITEBMP_TFPWRITERBMP_$__SAVEHEADER$TSTREAM$TFPCUSTOMIMAGE$$BOOLEAN
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPWRITEBMP
_THREADVARLIST_FPWRITEBMP:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 3
.globl	_$FPWRITEBMP$_Ld1
_$FPWRITEBMP$_Ld1:
	.byte	18,129,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$FPWRITEBMP$_Ld3
_$FPWRITEBMP$_Ld3:
	.short	0,1
	.long	0,-1,19
.reference _$FPWRITEBMP$_Ld2
.globl	_$FPWRITEBMP$_Ld2
_$FPWRITEBMP$_Ld2:
.reference _$FPWRITEBMP$_Ld3
	.ascii	"Invalid color depth\000"

.const_data
	.align 2
.globl	_$FPWRITEBMP$_Ld5
_$FPWRITEBMP$_Ld5:
	.short	0,1
	.long	0,-1,34
.reference _$FPWRITEBMP$_Ld4
.globl	_$FPWRITEBMP$_Ld4
_$FPWRITEBMP$_Ld4:
.reference _$FPWRITEBMP$_Ld5
	.ascii	"Image palette is too big or absent\000"

.const_data
	.align 2
.globl	_$FPWRITEBMP$_Ld7
_$FPWRITEBMP$_Ld7:
	.short	0,1
	.long	0,-1,31
.reference _$FPWRITEBMP$_Ld6
.globl	_$FPWRITEBMP$_Ld6
_$FPWRITEBMP$_Ld6:
.reference _$FPWRITEBMP$_Ld7
	.ascii	"Can't use RLE compression with \000"

.const_data
	.align 2
.globl	_$FPWRITEBMP$_Ld9
_$FPWRITEBMP$_Ld9:
	.short	0,1
	.long	0,-1,15
.reference _$FPWRITEBMP$_Ld8
.globl	_$FPWRITEBMP$_Ld8
_$FPWRITEBMP$_Ld8:
.reference _$FPWRITEBMP$_Ld9
	.ascii	" bits per pixel\000"

.const_data
	.align 2
.globl	_$FPWRITEBMP$_Ld11
_$FPWRITEBMP$_Ld11:
	.short	0,1
	.long	0,-1,3
.reference _$FPWRITEBMP$_Ld10
.globl	_$FPWRITEBMP$_Ld10
_$FPWRITEBMP$_Ld10:
.reference _$FPWRITEBMP$_Ld11
	.ascii	"bmp\000"

.const_data
	.align 2
.globl	_$FPWRITEBMP$_Ld13
_$FPWRITEBMP$_Ld13:
	.short	0,1
	.long	0,-1,10
.reference _$FPWRITEBMP$_Ld12
.globl	_$FPWRITEBMP$_Ld12
_$FPWRITEBMP$_Ld12:
.reference _$FPWRITEBMP$_Ld13
	.ascii	"BMP Format\000"
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

L_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER
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

L_FPWRITEBMP_TFPWRITERBMP_$__SETBPP$BYTE$stub:
.indirect_symbol _FPWRITEBMP_TFPWRITERBMP_$__SETBPP$BYTE
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

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT
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

L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEBMP_FPCOLORTORGBA$TFPCOLOR$$TCOLORRGBA$stub:
.indirect_symbol _FPWRITEBMP_FPCOLORTORGBA$TFPCOLOR$$TCOLORRGBA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEBMP_FPCOLORTORGB$TFPCOLOR$$TCOLORRGB$stub:
.indirect_symbol _FPWRITEBMP_FPCOLORTORGB$TFPCOLOR$$TCOLORRGB
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETPIXEL$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETPIXEL$LONGINT$LONGINT$$LONGINT
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

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_concat_multi$stub:
.indirect_symbol fpc_ansistr_concat_multi
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEBMP_TFPWRITERBMP_$__FILLCOLORMAP$TFPCUSTOMIMAGE$stub:
.indirect_symbol _FPWRITEBMP_TFPWRITERBMP_$__FILLCOLORMAP$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEBMP_TFPWRITERBMP_$__SETUP16BPP$stub:
.indirect_symbol _FPWRITEBMP_TFPWRITERBMP_$__SETUP16BPP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEBMP_TFPWRITERBMP_$__PACK1BPP$TFPCUSTOMIMAGE$LONGINT$LONGINT$$BYTE$stub:
.indirect_symbol _FPWRITEBMP_TFPWRITERBMP_$__PACK1BPP$TFPCUSTOMIMAGE$LONGINT$LONGINT$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEBMP_TFPWRITERBMP_$__PACK4BPP$TFPCUSTOMIMAGE$LONGINT$LONGINT$$BYTE$stub:
.indirect_symbol _FPWRITEBMP_TFPWRITERBMP_$__PACK4BPP$TFPCUSTOMIMAGE$LONGINT$LONGINT$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEBMP_TFPWRITERBMP_$__PACKWORD555$TFPCOLOR$$WORD$stub:
.indirect_symbol _FPWRITEBMP_TFPWRITERBMP_$__PACKWORD555$TFPCOLOR$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEBMP_TFPWRITERBMP_$__PACKWORD565$TFPCOLOR$$WORD$stub:
.indirect_symbol _FPWRITEBMP_TFPWRITERBMP_$__PACKWORD565$TFPCOLOR$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEBMP_TFPWRITERBMP_$__COMPRESSSCANLINERLE8$PBYTE$LONGINT$LONGINT$TSTREAM$stub:
.indirect_symbol _FPWRITEBMP_TFPWRITERBMP_$__COMPRESSSCANLINERLE8$PBYTE$LONGINT$LONGINT$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEBMP_TFPWRITERBMP_$__COMPRESSSCANLINERLE4$PBYTE$LONGINT$LONGINT$TSTREAM$stub:
.indirect_symbol _FPWRITEBMP_TFPWRITERBMP_$__COMPRESSSCANLINERLE4$PBYTE$LONGINT$LONGINT$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90$stub:
.indirect_symbol _FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90
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
.globl	_INIT_FPWRITEBMP_DEF1
_INIT_FPWRITEBMP_DEF1:
	.byte	21
	.ascii	"\000"
	.long	4
	.long	_INIT_BMPCOMN_TCOLORRGBA
	.long	-1,0
	.byte	10
	.ascii	"FPWriteBMP"

.const_data
	.align 2
.globl	_INIT_FPWRITEBMP_DEF119
_INIT_FPWRITEBMP_DEF119:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPWRITEBMP$_Ld15
_$FPWRITEBMP$_Ld15:
	.short	0
	.long	_$FPWRITEBMP$_Ld16
	.align 2
.globl	_$FPWRITEBMP$_Ld16
_$FPWRITEBMP$_Ld16:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPWRITEBMP_TFPWRITERBMP
_INIT_FPWRITEBMP_TFPWRITERBMP:
	.byte	15,12
	.ascii	"TFPWriterBMP"
	.long	4,1
	.long	_INIT_FPWRITEBMP_DEF1
	.long	84

.const_data
	.align 2
.globl	_RTTI_FPWRITEBMP_TFPWRITERBMP
_RTTI_FPWRITEBMP_TFPWRITERBMP:
	.byte	15,12
	.ascii	"TFPWriterBMP"
	.long	_VMT_FPWRITEBMP_TFPWRITERBMP
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEWRITER
	.short	0
	.byte	10
	.ascii	"FPWriteBMP"
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
L_$FPWRITEBMP$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPWRITEBMP$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_FPIMAGEEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEBMP$_Ld2$non_lazy_ptr:
.indirect_symbol _$FPWRITEBMP$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEBMP$_Ld4$non_lazy_ptr:
.indirect_symbol _$FPWRITEBMP$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_FPWRITEBMP_DEF1$non_lazy_ptr:
.indirect_symbol _INIT_FPWRITEBMP_DEF1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEBMP$_Ld6$non_lazy_ptr:
.indirect_symbol _$FPWRITEBMP$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEBMP$_Ld8$non_lazy_ptr:
.indirect_symbol _$FPWRITEBMP$_Ld8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPWRITEBMP_TFPWRITERBMP$non_lazy_ptr:
.indirect_symbol _VMT_FPWRITEBMP_TFPWRITERBMP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr:
.indirect_symbol _U_FPIMAGE_IMAGEHANDLERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEBMP$_Ld10$non_lazy_ptr:
.indirect_symbol _$FPWRITEBMP$_Ld10
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEBMP$_Ld12$non_lazy_ptr:
.indirect_symbol _$FPWRITEBMP$_Ld12
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

