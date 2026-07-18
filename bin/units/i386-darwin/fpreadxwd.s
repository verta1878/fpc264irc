# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPREADXWD_BETON$LONGWORD$$LONGWORD
_FPREADXWD_BETON$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$65280,%eax
	shll	$8,%eax
	movl	-4(%ebp),%edx
	shll	$24,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	andl	$16711680,%edx
	shrl	$8,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	shrl	$24,%edx
	orl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPREADXWD_TFPREADERXWD_$__CREATE$$TFPREADERXWD
_FPREADXWD_TFPREADERXWD_$__CREATE$$TFPREADERXWD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj9
	jmp	Lj10
Lj9:
	movl	-4(%ebp),%esi
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%esi,%eax
	call	*52(%ebx)
	movl	%eax,-8(%ebp)
Lj10:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj15
	jmp	Lj16
Lj15:
	jmp	Lj7
Lj16:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj19
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj23
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CREATE$$TFPCUSTOMIMAGEREADER$stub
Lj23:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj24
	call	LFPC_RERAISE$stub
Lj24:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj32
	jmp	Lj31
Lj32:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj30
	jmp	Lj31
Lj30:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj31:
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj21
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj36
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj37
	jmp	Lj38
Lj37:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj38:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj36:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj35
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj35:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj21
Lj21:
Lj7:
	movl	-8(%ebp),%eax
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADXWD_TFPREADERXWD_$__DESTROY
_FPREADXWD_TFPREADERXWD_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj44
Lj44:
	popl	%edi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj45
	jmp	Lj46
Lj45:
	movl	-8(%ebp),%esi
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj49
	movl	$210,%eax
	call	LFPC_HANDLEERROR$stub
Lj49:
	movl	(%edx),%ebx
	movl	%ebx,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%ebx,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%esi,%eax
	call	*72(%ebx)
Lj46:
	movl	-8(%ebp),%eax
	movl	160(%eax),%eax
	testl	%eax,%eax
	jne	Lj50
	jmp	Lj51
Lj50:
	movl	-8(%ebp),%eax
	movl	160(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	$0,160(%eax)
Lj51:
	movl	$0,-12(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_FPREADXWD_DEF5$non_lazy_ptr-Lj44(%edi),%edx
	movl	-8(%ebp),%eax
	leal	152(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	$0,-12(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_FPREADXWD_TXWDCOLORS$non_lazy_ptr-Lj44(%edi),%edx
	movl	-8(%ebp),%eax
	leal	156(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj82
	jmp	Lj81
Lj82:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj80
	jmp	Lj81
Lj80:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj81:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADXWD_TFPREADERXWD_$__SWAPXWDCOLOR$TXWDCOLOR
_FPREADXWD_TFPREADERXWD_$__SWAPXWDCOLOR$TXWDCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movzwl	4(%eax),%eax
	shrl	$8,%eax
	movl	-4(%ebp),%edx
	movzwl	4(%edx),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,4(%edx)
	movl	-4(%ebp),%eax
	movzwl	6(%eax),%eax
	shrl	$8,%eax
	movl	-4(%ebp),%edx
	movzwl	6(%edx),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,6(%edx)
	movl	-4(%ebp),%eax
	movzwl	8(%eax),%eax
	shrl	$8,%eax
	movl	-4(%ebp),%edx
	movzwl	8(%edx),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,8(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPREADXWD_TFPREADERXWD_$__SWAPXWDFILEHEADER$TXWDFILEHEADER
_FPREADXWD_TFPREADERXWD_$__SWAPXWDFILEHEADER$TXWDFILEHEADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,24(%edx)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,28(%edx)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,32(%edx)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,32(%edx)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,40(%edx)
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,44(%edx)
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,48(%edx)
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,52(%edx)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,56(%edx)
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,60(%edx)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,64(%edx)
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,68(%edx)
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,72(%edx)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,76(%edx)
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,80(%edx)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,84(%edx)
	movl	-4(%ebp),%eax
	movl	88(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,88(%edx)
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,92(%edx)
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	call	L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,96(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPREADXWD_TFPREADERXWD_$__WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE
_FPREADXWD_TFPREADERXWD_$__WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movw	$0,-22(%ebp)
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	cmpl	$1,%eax
	jb	Lj216
	decl	%eax
	je	Lj217
	subl	$3,%eax
	je	Lj218
	subl	$4,%eax
	je	Lj219
	subl	$8,%eax
	je	Lj220
	subl	$8,%eax
	je	Lj221
	subl	$8,%eax
	je	Lj222
	jmp	Lj216
Lj217:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj224
	decl	-16(%ebp)
	.align 2
Lj225:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	160(%eax),%ecx
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$7,%eax
	addl	%eax,%edx
	sarl	$3,%edx
	movzbl	(%ecx,%edx,1),%edx
	movl	-16(%ebp),%ecx
	andl	$7,%ecx
	movl	$7,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	shrl	%cl,%edx
	andl	$1,%edx
	testl	%edx,%edx
	jne	Lj226
	jmp	Lj227
Lj226:
	movl	$1,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub
	jmp	Lj236
Lj227:
	movl	$0,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub
Lj236:
	cmpl	-16(%ebp),%ebx
	jg	Lj225
Lj224:
	jmp	Lj215
Lj218:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj246
	decl	-16(%ebp)
	.align 2
Lj247:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	160(%eax),%ecx
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	movzbl	(%ecx,%edx,1),%eax
	movl	-16(%ebp),%ecx
	incl	%ecx
	andl	$1,%ecx
	shll	$2,%ecx
	shrl	%cl,%eax
	andl	$15,%eax
	movl	%eax,%edx
	cmpl	$2147483647,%edx
	jbe	Lj250
	call	LFPC_RANGEERROR$stub
Lj250:
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj247
Lj246:
	jmp	Lj215
Lj219:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj258
	decl	-16(%ebp)
	.align 2
Lj259:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	160(%eax),%edx
	movl	-16(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj259
Lj258:
	jmp	Lj215
Lj220:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj269
	decl	-16(%ebp)
	.align 2
Lj270:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	160(%eax),%eax
	movl	-16(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj270
Lj269:
	jmp	Lj215
Lj221:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj280
	decl	-16(%ebp)
	.align 2
Lj281:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	160(%eax),%eax
	movl	-16(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj281
Lj280:
	jmp	Lj215
Lj222:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj291
	decl	-16(%ebp)
	.align 2
Lj292:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	160(%eax),%edx
	movl	-16(%ebp),%eax
	shll	$2,%eax
	leal	(%edx,%eax,1),%eax
	leal	-20(%ebp),%edx
	movl	$4,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-20(%ebp),%eax
	xorl	%edx,%edx
	movl	$16777216,%ecx
	divl	%ecx
	movl	%edx,-20(%ebp)
	movl	-20(%ebp),%eax
	shrl	$8,%eax
	shll	$8,%eax
	shll	$8,%eax
	movw	%ax,-24(%ebp)
	movl	-20(%ebp),%eax
	xorl	%edx,%edx
	movl	$65536,%ecx
	divl	%ecx
	movl	%edx,-20(%ebp)
	movl	-20(%ebp),%eax
	shrl	$8,%eax
	shll	$8,%eax
	movw	%ax,-26(%ebp)
	movl	-20(%ebp),%eax
	xorl	%edx,%edx
	movl	$256,%ecx
	divl	%ecx
	movl	%edx,-20(%ebp)
	movl	-20(%ebp),%eax
	shll	$8,%eax
	movw	%ax,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj292
Lj291:
	jmp	Lj215
Lj216:
Lj215:
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADXWD_TFPREADERXWD_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
_FPREADXWD_TFPREADERXWD_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	movl	%edi,-88(%ebp)
	call	Lj320
Lj320:
	popl	-84(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,36(%eax)
	movl	-12(%ebp),%eax
	movl	$0,40(%eax)
	movl	-12(%ebp),%eax
	movl	$0,44(%eax)
	movl	-12(%ebp),%eax
	movl	$0,48(%eax)
	movl	-12(%ebp),%eax
	movb	$1,24(%eax)
	movl	$0,4(%esp)
	movb	$0,12(%esp)
	movl	-12(%ebp),%eax
	leal	24(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	leal	36(%eax),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%ebx
	movb	$0,-72(%ebp)
	movl	$0,%esi
	movl	-12(%ebp),%edx
	testl	%edx,%edx
	jne	Lj345
	movl	$210,%eax
	call	LFPC_HANDLEERROR$stub
Lj345:
	movl	(%edx),%edi
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%ebx,%eax
	movb	-72(%ebp),%cl
	movl	%esi,%edx
	call	*100(%edi)
	movl	-12(%ebp),%eax
	movb	24(%eax),%al
	testb	%al,%al
	je	Lj346
	jmp	Lj347
Lj346:
	jmp	Lj319
Lj347:
	movl	-8(%ebp),%esi
	movb	$1,%bl
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj352
	movl	$210,%eax
	call	LFPC_HANDLEERROR$stub
Lj352:
	movl	(%edx),%edi
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%esi,%eax
	movb	%bl,%dl
	call	*136(%edi)
	movw	$0,-14(%ebp)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-4(%ebp),%esi
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	jne	Lj359
	movl	$210,%eax
	call	LFPC_HANDLEERROR$stub
Lj359:
	movl	(%edx),%ebx
	movl	%ebx,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%ebx,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%esi,%eax
	call	*108(%ebx)
	movl	-12(%ebp),%eax
	leal	52(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	%eax,-44(%ebp)
	movl	$100,%esi
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	jne	Lj366
	movl	$210,%eax
	call	LFPC_HANDLEERROR$stub
Lj366:
	movl	(%edx),%edi
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%ebx,%edx
	movl	-44(%ebp),%eax
	movl	%esi,%ecx
	call	*128(%edi)
	movl	-12(%ebp),%eax
	leal	52(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADXWD_TFPREADERXWD_$__SWAPXWDFILEHEADER$TXWDFILEHEADER$stub
	movl	-12(%ebp),%eax
	movl	52(%eax),%edx
	movl	$0,%eax
	subl	$100,%edx
	sbbl	$0,%eax
	testl	%eax,%eax
	je	Lj373
	cmpl	$-1,%eax
	je	Lj374
	call	LFPC_RANGEERROR$stub
Lj373:
	movl	%edx,%eax
	cmpl	$2147483647,%eax
	jbe	Lj375
	call	LFPC_RANGEERROR$stub
Lj375:
	jmp	Lj376
Lj374:
	testl	%edx,%edx
	jl	Lj377
	call	LFPC_RANGEERROR$stub
Lj377:
Lj376:
	movl	%edx,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$256,%eax
	jg	Lj378
	jmp	Lj379
Lj378:
	movl	-84(%ebp),%eax
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj320(%eax),%edx
	movl	-84(%ebp),%eax
	movl	L_$FPREADXWD$_Ld1$non_lazy_ptr-Lj320(%eax),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	movl	-84(%ebp),%ebx
	leal	La1-Lj320(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj379:
	movl	-24(%ebp),%eax
	movl	%eax,-40(%ebp)
	leal	-40(%ebp),%eax
	movl	%eax,(%esp)
	movl	-84(%ebp),%eax
	movl	L_INIT_FPREADXWD_DEF5$non_lazy_ptr-Lj320(%eax),%edx
	movl	-12(%ebp),%eax
	leal	152(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-12(%ebp),%eax
	movl	152(%eax),%ebx
	movl	$0,%edx
	movl	152(%eax),%eax
	call	LFPC_DYNARRAY_RANGECHECK$stub
	movl	-24(%ebp),%esi
	movl	-4(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	jne	Lj402
	movl	$210,%eax
	call	LFPC_HANDLEERROR$stub
Lj402:
	movl	(%edx),%edi
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%ebx,%edx
	movl	%esi,%ecx
	movl	-48(%ebp),%eax
	call	*128(%edi)
	movl	-12(%ebp),%edx
	movl	128(%edx),%eax
	cmpl	$2147483647,%eax
	jbe	Lj405
	call	LFPC_RANGEERROR$stub
Lj405:
	movl	128(%edx),%eax
	movl	%eax,-40(%ebp)
	leal	-40(%ebp),%eax
	movl	%eax,(%esp)
	movl	-84(%ebp),%eax
	movl	L_INIT_FPREADXWD_TXWDCOLORS$non_lazy_ptr-Lj320(%eax),%edx
	movl	-12(%ebp),%eax
	leal	156(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-8(%ebp),%eax
	movl	24(%eax),%ebx
	movl	$256,%esi
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	testl	%edx,%edx
	jne	Lj418
	movl	$210,%eax
	call	LFPC_HANDLEERROR$stub
Lj418:
	movl	(%edx),%edi
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%ebx,%eax
	movl	%esi,%edx
	call	*100(%edi)
	movl	-12(%ebp),%edx
	movl	128(%edx),%eax
	cmpl	$2147483647,%eax
	jbe	Lj422
	call	LFPC_RANGEERROR$stub
Lj422:
	movl	128(%edx),%eax
	movl	%eax,-80(%ebp)
	movl	$1,-32(%ebp)
	movl	-80(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jl	Lj420
	decl	-32(%ebp)
	.align 2
Lj421:
	incl	-32(%ebp)
	movl	-12(%ebp),%ecx
	movl	156(%ecx),%ebx
	movl	-32(%ebp),%edx
	decl	%edx
	movl	%edx,%eax
	cmpl	$2147483647,%eax
	jbe	Lj425
	call	LFPC_RANGEERROR$stub
Lj425:
	movl	%edx,%esi
	movl	%esi,%edx
	movl	156(%ecx),%eax
	call	LFPC_DYNARRAY_RANGECHECK$stub
	movl	%esi,%eax
	imull	$12,%eax
	leal	(%ebx,%eax),%ebx
	movl	-4(%ebp),%esi
	movl	$12,-52(%ebp)
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	jne	Lj430
	movl	$210,%eax
	call	LFPC_HANDLEERROR$stub
Lj430:
	movl	(%edx),%edi
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%ebx,%edx
	movl	%esi,%eax
	movl	-52(%ebp),%ecx
	call	*128(%edi)
	movl	-12(%ebp),%ecx
	movl	156(%ecx),%ebx
	movl	-32(%ebp),%edx
	decl	%edx
	movl	%edx,%eax
	cmpl	$2147483647,%eax
	jbe	Lj433
	call	LFPC_RANGEERROR$stub
Lj433:
	movl	%edx,%esi
	movl	%esi,%edx
	movl	156(%ecx),%eax
	call	LFPC_DYNARRAY_RANGECHECK$stub
	movl	%esi,%eax
	imull	$12,%eax
	leal	(%ebx,%eax),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADXWD_TFPREADERXWD_$__SWAPXWDCOLOR$TXWDCOLOR$stub
	movl	-12(%ebp),%ecx
	movl	156(%ecx),%ebx
	movl	-32(%ebp),%eax
	decl	%eax
	movl	%eax,%edx
	cmpl	$2147483647,%edx
	jbe	Lj438
	call	LFPC_RANGEERROR$stub
Lj438:
	movl	%eax,%esi
	movl	%esi,%edx
	movl	156(%ecx),%eax
	call	LFPC_DYNARRAY_RANGECHECK$stub
	movl	%esi,%eax
	imull	$12,%eax
	movw	4(%ebx,%eax),%ax
	movw	%ax,-20(%ebp)
	movl	-12(%ebp),%ecx
	movl	156(%ecx),%ebx
	movl	-32(%ebp),%edx
	decl	%edx
	movl	%edx,%eax
	cmpl	$2147483647,%eax
	jbe	Lj441
	call	LFPC_RANGEERROR$stub
Lj441:
	movl	%edx,%esi
	movl	%esi,%edx
	movl	156(%ecx),%eax
	call	LFPC_DYNARRAY_RANGECHECK$stub
	movl	%esi,%eax
	imull	$12,%eax
	movw	6(%ebx,%eax),%ax
	movw	%ax,-18(%ebp)
	movl	-12(%ebp),%ecx
	movl	156(%ecx),%ebx
	movl	-32(%ebp),%edx
	decl	%edx
	movl	%edx,%eax
	cmpl	$2147483647,%eax
	jbe	Lj444
	call	LFPC_RANGEERROR$stub
Lj444:
	movl	%edx,%esi
	movl	%esi,%edx
	movl	156(%ecx),%eax
	call	LFPC_DYNARRAY_RANGECHECK$stub
	movl	%esi,%eax
	imull	$12,%eax
	movw	8(%ebx,%eax),%ax
	movw	%ax,-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	156(%ecx),%ebx
	movl	-32(%ebp),%eax
	decl	%eax
	movl	%eax,%edx
	cmpl	$2147483647,%edx
	jbe	Lj447
	call	LFPC_RANGEERROR$stub
Lj447:
	movl	%eax,%esi
	movl	%esi,%edx
	movl	156(%ecx),%eax
	call	LFPC_DYNARRAY_RANGECHECK$stub
	movl	%esi,%eax
	imull	$12,%eax
	movl	(%ebx,%eax),%eax
	xorl	%edx,%edx
	movl	$256,%ecx
	divl	%ecx
	movl	%edx,%eax
	cmpl	$2147483647,%eax
	jbe	Lj448
	call	LFPC_RANGEERROR$stub
Lj448:
	movl	%edx,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%ebx
	leal	-20(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-36(%ebp),%esi
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	testl	%edx,%edx
	jne	Lj455
	movl	$210,%eax
	call	LFPC_HANDLEERROR$stub
Lj455:
	movl	(%edx),%edi
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%ebx,%eax
	movl	-56(%ebp),%ecx
	movl	%esi,%edx
	call	*104(%edi)
	movl	-80(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jg	Lj421
Lj420:
	movl	-12(%ebp),%edx
	movl	72(%edx),%eax
	cmpl	$2147483647,%eax
	jbe	Lj458
	call	LFPC_RANGEERROR$stub
Lj458:
	movl	72(%edx),%eax
	movl	%eax,-60(%ebp)
	movl	-12(%ebp),%edx
	movl	68(%edx),%eax
	cmpl	$2147483647,%eax
	jbe	Lj461
	call	LFPC_RANGEERROR$stub
Lj461:
	movl	68(%edx),%ebx
	movl	-8(%ebp),%esi
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj464
	movl	$210,%eax
	call	LFPC_HANDLEERROR$stub
Lj464:
	movl	(%edx),%edi
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	-60(%ebp),%ecx
	movl	%ebx,%edx
	movl	%esi,%eax
	call	*148(%edi)
	movl	-12(%ebp),%eax
	movl	100(%eax),%edx
	movl	-12(%ebp),%eax
	leal	160(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,-76(%ebp)
	movl	$0,-28(%ebp)
	movl	-76(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj470
	decl	-28(%ebp)
	.align 2
Lj471:
	incl	-28(%ebp)
	movl	-12(%ebp),%eax
	movl	160(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	-12(%ebp),%edx
	movl	100(%edx),%eax
	cmpl	$2147483647,%eax
	jbe	Lj476
	call	LFPC_RANGEERROR$stub
Lj476:
	movl	100(%edx),%ebx
	movl	-4(%ebp),%esi
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	jne	Lj479
	movl	$210,%eax
	call	LFPC_HANDLEERROR$stub
Lj479:
	movl	(%edx),%edi
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	-64(%ebp),%edx
	movl	%ebx,%ecx
	movl	%esi,%eax
	call	*128(%edi)
	movl	-8(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADXWD_TFPREADERXWD_$__WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE$stub
	movl	-12(%ebp),%eax
	movb	24(%eax),%al
	testb	%al,%al
	je	Lj486
	jmp	Lj487
Lj486:
	jmp	Lj319
Lj487:
	movl	-76(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jg	Lj471
Lj470:
	movl	$0,4(%esp)
	movb	$0,12(%esp)
	movl	-12(%ebp),%eax
	leal	24(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	leal	36(%eax),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%ebx
	movb	$100,-68(%ebp)
	movl	$2,%esi
	movl	-12(%ebp),%edx
	testl	%edx,%edx
	jne	Lj502
	movl	$210,%eax
	call	LFPC_HANDLEERROR$stub
Lj502:
	movl	(%edx),%edi
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%ebx,%eax
	movb	-68(%ebp),%cl
	movl	%esi,%edx
	call	*100(%edi)
Lj319:
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	movl	-88(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADXWD_TFPREADERXWD_$__INTERNALCHECK$TSTREAM$$BOOLEAN
_FPREADXWD_TFPREADERXWD_$__INTERNALCHECK$TSTREAM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-128(%ebp)
	movl	%esi,-124(%ebp)
	movl	%edi,-120(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-112(%ebp),%eax
	movl	%eax,-116(%ebp)
	movl	-4(%ebp),%ebx
	movl	$100,%esi
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	jne	Lj511
	movl	$210,%eax
	call	LFPC_HANDLEERROR$stub
Lj511:
	movl	(%edx),%edi
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%edi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	-116(%ebp),%edx
	movl	%ebx,%eax
	movl	%esi,%ecx
	call	*128(%edi)
	leal	-112(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADXWD_TFPREADERXWD_$__SWAPXWDFILEHEADER$TXWDFILEHEADER$stub
	movl	-108(%ebp),%eax
	cmpl	$7,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	movl	-128(%ebp),%ebx
	movl	-124(%ebp),%esi
	movl	-120(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPREADXWD
_INIT$_FPREADXWD:
.reference __FPREADXWD_init
.globl	__FPREADXWD_init
__FPREADXWD_init:
.reference _INIT$_FPREADXWD
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_FPREADXWD_TFPREADERXWD$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_$FPREADXWD$_Ld3$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	L_$FPREADXWD$_Ld5$non_lazy_ptr-Lj2(%ebx),%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPREADXWD$_Ld7
_$FPREADXWD$_Ld7:
	.byte	12
	.ascii	"TFPReaderXWD"

.const_data
	.align 2
.globl	_VMT_FPREADXWD_TFPREADERXWD
_VMT_FPREADXWD_TFPREADERXWD:
	.long	164,-164
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEREADER
	.long	_$FPREADXWD$_Ld7
	.long	0,0
	.long	_$FPREADXWD$_Ld8
	.long	_RTTI_FPREADXWD_TFPREADERXWD
	.long	_INIT_FPREADXWD_TFPREADERXWD
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPREADXWD_TFPREADERXWD_$__DESTROY
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
	.long	_FPREADXWD_TFPREADERXWD_$__CREATE$$TFPREADERXWD
	.long	_FPREADXWD_TFPREADERXWD_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
	.long	_FPREADXWD_TFPREADERXWD_$__INTERNALCHECK$TSTREAM$$BOOLEAN
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPREADXWD
_THREADVARLIST_FPREADXWD:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$FPREADXWD$_Ld2
_$FPREADXWD$_Ld2:
	.short	0,1
	.long	0,-1,56
.reference _$FPREADXWD$_Ld1
.globl	_$FPREADXWD$_Ld1
_$FPREADXWD$_Ld1:
.reference _$FPREADXWD$_Ld2
	.ascii	"Window name string too big. The file might be corru"
	.ascii	"pted.\000"

.const_data
	.align 2
.globl	_$FPREADXWD$_Ld4
_$FPREADXWD$_Ld4:
	.short	0,1
	.long	0,-1,3
.reference _$FPREADXWD$_Ld3
.globl	_$FPREADXWD$_Ld3
_$FPREADXWD$_Ld3:
.reference _$FPREADXWD$_Ld4
	.ascii	"xwd\000"

.const_data
	.align 2
.globl	_$FPREADXWD$_Ld6
_$FPREADXWD$_Ld6:
	.short	0,1
	.long	0,-1,10
.reference _$FPREADXWD$_Ld5
.globl	_$FPREADXWD$_Ld5
_$FPREADXWD$_Ld5:
.reference _$FPREADXWD$_Ld6
	.ascii	"XWD Format\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_CHECK_OBJECT$stub:
.indirect_symbol FPC_CHECK_OBJECT
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

L_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CREATE$$TFPCUSTOMIMAGEREADER$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGEREADER_$__CREATE$$TFPCUSTOMIMAGEREADER
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

LFPC_HANDLEERROR$stub:
.indirect_symbol FPC_HANDLEERROR
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

Lfpc_dynarray_setlength$stub:
.indirect_symbol fpc_dynarray_setlength
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

L_FPREADXWD_BETON$LONGWORD$$LONGWORD$stub:
.indirect_symbol _FPREADXWD_BETON$LONGWORD$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_RANGEERROR$stub:
.indirect_symbol FPC_RANGEERROR
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

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADXWD_TFPREADERXWD_$__SWAPXWDFILEHEADER$TXWDFILEHEADER$stub:
.indirect_symbol _FPREADXWD_TFPREADERXWD_$__SWAPXWDFILEHEADER$TXWDFILEHEADER
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

LFPC_DYNARRAY_RANGECHECK$stub:
.indirect_symbol FPC_DYNARRAY_RANGECHECK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADXWD_TFPREADERXWD_$__SWAPXWDCOLOR$TXWDCOLOR$stub:
.indirect_symbol _FPREADXWD_TFPREADERXWD_$__SWAPXWDCOLOR$TXWDCOLOR
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

L_FPREADXWD_TFPREADERXWD_$__WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE$stub:
.indirect_symbol _FPREADXWD_TFPREADERXWD_$__WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE
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
.globl	_INIT_FPREADXWD_TXWDCOLORS
_INIT_FPREADXWD_TXWDCOLORS:
	.byte	21
	.ascii	"\012TXWDColors"
	.long	12
	.long	_INIT_XWDFILE_TXWDCOLOR
	.long	-1,0
	.byte	9
	.ascii	"FPReadXWD"

.const_data
	.align 2
.globl	_RTTI_FPREADXWD_TXWDCOLORS
_RTTI_FPREADXWD_TXWDCOLORS:
	.byte	21
	.ascii	"\012TXWDColors"
	.long	12
	.long	_RTTI_XWDFILE_TXWDCOLOR
	.long	-1,0
	.byte	9
	.ascii	"FPReadXWD"

.const_data
	.align 2
.globl	_INIT_FPREADXWD_DEF5
_INIT_FPREADXWD_DEF5:
	.byte	21
	.ascii	"\000"
	.long	1
	.long	_INIT_SYSTEM_CHAR
	.long	-1,0
	.byte	9
	.ascii	"FPReadXWD"

.const_data
	.align 2
.globl	_$FPREADXWD$_Ld8
_$FPREADXWD$_Ld8:
	.short	0
	.long	_$FPREADXWD$_Ld9
	.align 2
.globl	_$FPREADXWD$_Ld9
_$FPREADXWD$_Ld9:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPREADXWD_TFPREADERXWD
_INIT_FPREADXWD_TFPREADERXWD:
	.byte	15,12
	.ascii	"TFPReaderXWD"
	.long	4,2
	.long	_INIT_FPREADXWD_DEF5
	.long	152
	.long	_INIT_FPREADXWD_TXWDCOLORS
	.long	156

.const_data
	.align 2
.globl	_RTTI_FPREADXWD_TFPREADERXWD
_RTTI_FPREADXWD_TFPREADERXWD:
	.byte	15,12
	.ascii	"TFPReaderXWD"
	.long	_VMT_FPREADXWD_TFPREADERXWD
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEREADER
	.short	0
	.byte	9
	.ascii	"FPReadXWD"
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
L_INIT_FPREADXWD_DEF5$non_lazy_ptr:
.indirect_symbol _INIT_FPREADXWD_DEF5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_FPREADXWD_TXWDCOLORS$non_lazy_ptr:
.indirect_symbol _INIT_FPREADXWD_TXWDCOLORS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXWD$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPREADXWD$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPREADXWD_TFPREADERXWD$non_lazy_ptr:
.indirect_symbol _VMT_FPREADXWD_TFPREADERXWD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr:
.indirect_symbol _U_FPIMAGE_IMAGEHANDLERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXWD$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPREADXWD$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXWD$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPREADXWD$_Ld5
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

