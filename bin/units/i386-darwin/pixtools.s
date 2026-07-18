# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_PIXTOOLS_FILLRECTANGLECOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT
_PIXTOOLS_FILLRECTANGLECOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLRECTANGLECOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLRECTANGLECOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR
_PIXTOOLS_FILLRECTANGLECOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	12(%ebp),%eax
	movl	%eax,(%esp)
	leal	16(%ebp),%ecx
	leal	-12(%ebp),%edx
	leal	-8(%ebp),%eax
	call	L_CLIPPING_SORTRECT$LONGINT$LONGINT$LONGINT$LONGINT$stub
	movl	16(%ebp),%edi
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%edi
	jl	Lj30
	decl	-16(%ebp)
	.align 2
Lj31:
	incl	-16(%ebp)
	movl	12(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj33
	decl	-20(%ebp)
	.align 2
Lj34:
	incl	-20(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*156(%esi)
	cmpl	-20(%ebp),%ebx
	jg	Lj34
Lj33:
	cmpl	-16(%ebp),%edi
	jg	Lj31
Lj30:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_PUTPIXELCOPY$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR
_PIXTOOLS_PUTPIXELCOPY$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-20(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_PUTPIXELXOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR
_PIXTOOLS_PUTPIXELXOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*160(%ebx)
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	leal	-28(%ebp),%eax
	leal	-20(%ebp),%edx
	call	L_FPIMAGE_xor$TFPCOLOR$TFPCOLOR$$TFPCOLOR$stub
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_PUTPIXELOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR
_PIXTOOLS_PUTPIXELOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*160(%ebx)
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	leal	-28(%ebp),%eax
	leal	-20(%ebp),%edx
	call	L_FPIMAGE_or$TFPCOLOR$TFPCOLOR$$TFPCOLOR$stub
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_PUTPIXELAND$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR
_PIXTOOLS_PUTPIXELAND$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*160(%ebx)
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	leal	-28(%ebp),%eax
	leal	-20(%ebp),%edx
	call	L_FPIMAGE_and$TFPCOLOR$TFPCOLOR$$TFPCOLOR$stub
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT
_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR
_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj130
Lj130:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	%eax,%edx
	movl	56(%edx),%ecx
	cmpl	$10,%ecx
	jb	Lj146
	subl	$10,%ecx
	je	Lj147
	subl	$2,%ecx
	je	Lj148
	subl	$2,%ecx
	je	Lj149
	jmp	Lj146
Lj147:
	movl	L_PIXTOOLS_PUTPIXELAND$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj130(%ebx),%ecx
	movl	%ecx,-16(%ebp)
	jmp	Lj145
Lj148:
	movl	L_PIXTOOLS_PUTPIXELOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj130(%ebx),%ecx
	movl	%ecx,-16(%ebp)
	jmp	Lj145
Lj149:
	movl	L_PIXTOOLS_PUTPIXELXOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj130(%ebx),%ecx
	movl	%ecx,-16(%ebp)
	jmp	Lj145
Lj146:
	movl	L_PIXTOOLS_PUTPIXELCOPY$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj130(%ebx),%ecx
	movl	%ecx,-16(%ebp)
Lj145:
	movl	-8(%ebp),%eax
	cmpl	16(%ebp),%eax
	je	Lj158
	jmp	Lj159
Lj158:
	movl	-12(%ebp),%eax
	cmpl	12(%ebp),%eax
	jl	Lj160
	jmp	Lj161
Lj160:
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_VERTICALLINE$LONGINT$LONGINT$LONGINT$stub
	jmp	Lj170
Lj161:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_VERTICALLINE$LONGINT$LONGINT$LONGINT$stub
Lj170:
	jmp	Lj179
Lj159:
	movl	-12(%ebp),%eax
	cmpl	12(%ebp),%eax
	je	Lj180
	jmp	Lj181
Lj180:
	movl	-8(%ebp),%eax
	cmpl	16(%ebp),%eax
	jl	Lj182
	jmp	Lj183
Lj182:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_HORIZONTALLINE$LONGINT$LONGINT$LONGINT$stub
	jmp	Lj192
Lj183:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	16(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_HORIZONTALLINE$LONGINT$LONGINT$LONGINT$stub
Lj192:
	jmp	Lj201
Lj181:
	movl	%ebp,%eax
	call	L_PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_SLOPEDLINE$stub
Lj201:
Lj179:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_SLOPEDLINE
_PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_SLOPEDLINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%ebp,%eax
	call	L_PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_SLOPEDLINE_INITIALIZE$stub
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	-8(%ebp),%esi
	movl	$1,-48(%ebp)
	cmpl	-48(%ebp),%esi
	jl	Lj211
	decl	-48(%ebp)
	.align 2
Lj212:
	incl	-48(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-56(%ebp),%ecx
	movl	-52(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	-16(%ebx),%ebx
	call	*%ebx
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj221
	jmp	Lj222
Lj221:
	movl	-36(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-36(%ebp)
	movl	-52(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-52(%ebp)
	movl	-56(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-56(%ebp)
	jmp	Lj229
Lj222:
	movl	-36(%ebp),%eax
	movl	-44(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-36(%ebp)
	movl	-52(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-52(%ebp)
	movl	-56(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-56(%ebp)
Lj229:
	cmpl	-48(%ebp),%esi
	jg	Lj212
Lj211:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_SLOPEDLINE_INITIALIZE
_PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_SLOPEDLINE_INITIALIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	16(%eax),%eax
	movl	-8(%edx),%edx
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%eax
	xorl	%eax,%edx
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,-28(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	12(%eax),%eax
	movl	-12(%edx),%edx
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%eax
	xorl	%eax,%edx
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,-32(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-32(%edx),%eax
	jg	Lj240
	jmp	Lj241
Lj240:
	movl	-4(%ebp),%eax
	movl	-28(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	%edx,-8(%eax)
	movl	-4(%ebp),%eax
	movl	-32(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	-28(%edx),%edx
	subl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,-36(%edx)
	movl	-4(%ebp),%eax
	movl	-32(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	%eax,-40(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-32(%eax),%eax
	movl	-28(%edx),%edx
	subl	%edx,%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	%eax,-44(%edx)
	movl	-4(%ebp),%eax
	movl	$1,-12(%eax)
	movl	-4(%ebp),%eax
	movl	$1,-20(%eax)
	movl	-4(%ebp),%eax
	movl	$0,-16(%eax)
	movl	-4(%ebp),%eax
	movl	$1,-24(%eax)
	jmp	Lj258
Lj241:
	movl	-4(%ebp),%eax
	movl	-32(%eax),%eax
	incl	%eax
	movl	-4(%ebp),%edx
	movl	%eax,-8(%edx)
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	-32(%edx),%edx
	subl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,-36(%edx)
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	%eax,-40(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-28(%eax),%eax
	movl	-32(%edx),%edx
	subl	%edx,%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	%eax,-44(%edx)
	movl	-4(%ebp),%eax
	movl	$0,-12(%eax)
	movl	-4(%ebp),%eax
	movl	$1,-20(%eax)
	movl	-4(%ebp),%eax
	movl	$1,-16(%eax)
	movl	-4(%ebp),%eax
	movl	$1,-24(%eax)
Lj258:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-8(%eax),%eax
	cmpl	16(%edx),%eax
	jg	Lj275
	jmp	Lj276
Lj275:
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	negl	%eax
	movl	-4(%ebp),%edx
	movl	%eax,-12(%edx)
	movl	-4(%ebp),%eax
	movl	-20(%eax),%edx
	negl	%edx
	movl	-4(%ebp),%eax
	movl	%edx,-20(%eax)
Lj276:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-12(%eax),%eax
	cmpl	12(%edx),%eax
	jg	Lj281
	jmp	Lj282
Lj281:
	movl	-4(%ebp),%eax
	movl	-16(%eax),%edx
	negl	%edx
	movl	-4(%ebp),%eax
	movl	%edx,-16(%eax)
	movl	-4(%ebp),%eax
	movl	-24(%eax),%eax
	negl	%eax
	movl	-4(%ebp),%edx
	movl	%eax,-24(%edx)
Lj282:
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_VERTICALLINE$LONGINT$LONGINT$LONGINT
_PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_VERTICALLINE$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%esi
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj288
	decl	-16(%ebp)
	.align 2
Lj289:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	-16(%ebx),%ebx
	call	*%ebx
	cmpl	-16(%ebp),%esi
	jg	Lj289
Lj288:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_HORIZONTALLINE$LONGINT$LONGINT$LONGINT
_PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_HORIZONTALLINE$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj299
	decl	-16(%ebp)
	.align 2
Lj300:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	-4(%eax),%eax
	movl	8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	-16(%ebx),%ebx
	call	*%ebx
	cmpl	-16(%ebp),%esi
	jg	Lj300
Lj299:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_PATTERNTOPOINTS$LONGWORD$PLINEPOINTS
_PIXTOOLS_PATTERNTOPOINTS$LONGWORD$PLINEPOINTS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$1,-16(%ebp)
	movl	$31,-12(%ebp)
	incl	-12(%ebp)
	.align 2
Lj315:
	decl	-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%ebx
	movl	-16(%ebp),%eax
	andl	%eax,%ebx
	testl	%ebx,%ebx
	setneb	(%edx,%ecx,1)
	movl	-16(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-16(%ebp)
	cmpl	$1,-12(%ebp)
	jg	Lj315
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	andl	%ecx,%edx
	testl	%edx,%edx
	setneb	(%eax)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_DRAWPATTERNLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$LONGWORD
_PIXTOOLS_DRAWPATTERNLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	16(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8$stub
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8
_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	call	Lj341
Lj341:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-44(%ebp),%edx
	movl	12(%ebp),%eax
	call	L_PIXTOOLS_PATTERNTOPOINTS$LONGWORD$PLINEPOINTS$stub
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	%eax,%edx
	movl	56(%edx),%ecx
	cmpl	$10,%ecx
	jb	Lj361
	subl	$10,%ecx
	je	Lj363
	subl	$2,%ecx
	je	Lj362
	subl	$2,%ecx
	je	Lj364
	jmp	Lj361
Lj362:
	movl	L_PIXTOOLS_PUTPIXELAND$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj341(%ebx),%ecx
	movl	%ecx,-48(%ebp)
	jmp	Lj360
Lj363:
	movl	L_PIXTOOLS_PUTPIXELOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj341(%ebx),%ecx
	movl	%ecx,-48(%ebp)
	jmp	Lj360
Lj364:
	movl	L_PIXTOOLS_PUTPIXELXOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj341(%ebx),%ecx
	movl	%ecx,-48(%ebp)
	jmp	Lj360
Lj361:
	movl	L_PIXTOOLS_PUTPIXELCOPY$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr-Lj341(%ebx),%ecx
	movl	%ecx,-48(%ebp)
Lj360:
	movl	-8(%ebp),%eax
	cmpl	20(%ebp),%eax
	je	Lj373
	jmp	Lj374
Lj373:
	movl	-12(%ebp),%eax
	cmpl	16(%ebp),%eax
	jl	Lj375
	jmp	Lj376
Lj375:
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_VERTICALLINE$LONGINT$LONGINT$LONGINT$stub
	jmp	Lj385
Lj376:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_VERTICALLINE$LONGINT$LONGINT$LONGINT$stub
Lj385:
	jmp	Lj394
Lj374:
	movl	-12(%ebp),%eax
	cmpl	16(%ebp),%eax
	je	Lj395
	jmp	Lj396
Lj395:
	movl	-8(%ebp),%eax
	cmpl	20(%ebp),%eax
	jl	Lj397
	jmp	Lj398
Lj397:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_HORIZONTALLINE$LONGINT$LONGINT$LONGINT$stub
	jmp	Lj407
Lj398:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	20(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_HORIZONTALLINE$LONGINT$LONGINT$LONGINT$stub
Lj407:
	jmp	Lj416
Lj396:
	movl	%ebp,%eax
	call	L_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_SLOPEDLINE$stub
Lj416:
Lj394:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_SLOPEDLINE
_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_SLOPEDLINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%ebp,%eax
	call	L_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_SLOPEDLINE_INITIALIZE$stub
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	-8(%ebp),%ebx
	movl	$1,-48(%ebp)
	cmpl	-48(%ebp),%ebx
	jl	Lj426
	decl	-48(%ebp)
	.align 2
Lj427:
	incl	-48(%ebp)
	movl	-4(%ebp),%ecx
	movl	-48(%ebp),%eax
	cltd
	movl	$32,%esi
	idivl	%esi
	cmpb	$0,-44(%ecx,%edx,1)
	jne	Lj428
	jmp	Lj429
Lj428:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-56(%ebp),%ecx
	movl	-52(%ebp),%edx
	movl	-4(%ebp),%esi
	movl	-48(%esi),%esi
	call	*%esi
Lj429:
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj438
	jmp	Lj439
Lj438:
	movl	-36(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-36(%ebp)
	movl	-52(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-52(%ebp)
	movl	-56(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-56(%ebp)
	jmp	Lj446
Lj439:
	movl	-36(%ebp),%eax
	movl	-44(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-36(%ebp)
	movl	-52(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-52(%ebp)
	movl	-56(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-56(%ebp)
Lj446:
	cmpl	-48(%ebp),%ebx
	jg	Lj427
Lj426:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_SLOPEDLINE_INITIALIZE
_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_SLOPEDLINE_INITIALIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	20(%eax),%eax
	movl	-8(%edx),%edx
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%eax
	xorl	%eax,%edx
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,-28(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	16(%eax),%eax
	movl	-12(%edx),%edx
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%eax
	xorl	%eax,%edx
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,-32(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-32(%edx),%eax
	jg	Lj457
	jmp	Lj458
Lj457:
	movl	-4(%ebp),%eax
	movl	-28(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	%edx,-8(%eax)
	movl	-4(%ebp),%eax
	movl	-32(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	-28(%edx),%edx
	subl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,-36(%edx)
	movl	-4(%ebp),%eax
	movl	-32(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	%eax,-40(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-32(%eax),%eax
	movl	-28(%edx),%edx
	subl	%edx,%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	%eax,-44(%edx)
	movl	-4(%ebp),%eax
	movl	$1,-12(%eax)
	movl	-4(%ebp),%eax
	movl	$1,-20(%eax)
	movl	-4(%ebp),%eax
	movl	$0,-16(%eax)
	movl	-4(%ebp),%eax
	movl	$1,-24(%eax)
	jmp	Lj475
Lj458:
	movl	-4(%ebp),%eax
	movl	-32(%eax),%eax
	incl	%eax
	movl	-4(%ebp),%edx
	movl	%eax,-8(%edx)
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	-32(%edx),%edx
	subl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,-36(%edx)
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	%eax,-40(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-28(%eax),%eax
	movl	-32(%edx),%edx
	subl	%edx,%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	%eax,-44(%edx)
	movl	-4(%ebp),%eax
	movl	$0,-12(%eax)
	movl	-4(%ebp),%eax
	movl	$1,-20(%eax)
	movl	-4(%ebp),%eax
	movl	$1,-16(%eax)
	movl	-4(%ebp),%eax
	movl	$1,-24(%eax)
Lj475:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-8(%eax),%eax
	cmpl	20(%edx),%eax
	jg	Lj492
	jmp	Lj493
Lj492:
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	negl	%eax
	movl	-4(%ebp),%edx
	movl	%eax,-12(%edx)
	movl	-4(%ebp),%eax
	movl	-20(%eax),%edx
	negl	%edx
	movl	-4(%ebp),%eax
	movl	%edx,-20(%eax)
Lj493:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-12(%eax),%eax
	cmpl	16(%edx),%eax
	jg	Lj498
	jmp	Lj499
Lj498:
	movl	-4(%ebp),%eax
	movl	-16(%eax),%edx
	negl	%edx
	movl	-4(%ebp),%eax
	movl	%edx,-16(%eax)
	movl	-4(%ebp),%eax
	movl	-24(%eax),%eax
	negl	%eax
	movl	-4(%ebp),%edx
	movl	%eax,-24(%edx)
Lj499:
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_VERTICALLINE$LONGINT$LONGINT$LONGINT
_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_VERTICALLINE$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj505
	decl	-16(%ebp)
	.align 2
Lj506:
	incl	-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	cltd
	movl	$32,%esi
	idivl	%esi
	cmpb	$0,-44(%ecx,%edx,1)
	jne	Lj507
	jmp	Lj508
Lj507:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%esi
	movl	-48(%esi),%esi
	call	*%esi
Lj508:
	cmpl	-16(%ebp),%ebx
	jg	Lj506
Lj505:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_HORIZONTALLINE$LONGINT$LONGINT$LONGINT
_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_HORIZONTALLINE$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj518
	decl	-16(%ebp)
	.align 2
Lj519:
	incl	-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	cltd
	movl	$32,%esi
	idivl	%esi
	cmpb	$0,-44(%ecx,%edx,1)
	jne	Lj520
	jmp	Lj521
Lj520:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	-4(%eax),%eax
	movl	8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%esi
	movl	-48(%esi),%esi
	call	*%esi
Lj521:
	cmpl	-16(%ebp),%ebx
	jg	Lj519
Lj518:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLRECTANGLEHASHHORIZONTAL$TFPCUSTOMCANVAS$TRECT$LONGINT
_PIXTOOLS_FILLRECTANGLEHASHHORIZONTAL$TFPCUSTOMCANVAS$TRECT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHHORIZONTAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLRECTANGLEHASHHORIZONTAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
_PIXTOOLS_FILLRECTANGLEHASHHORIZONTAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	4(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	jmp	Lj547
	.align 2
Lj546:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%esp)
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	movl	-12(%ebp),%eax
	addl	%eax,-16(%ebp)
Lj547:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	cmpl	12(%eax),%edx
	jle	Lj546
	jmp	Lj548
Lj548:
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLRECTANGLEHASHVERTICAL$TFPCUSTOMCANVAS$TRECT$LONGINT
_PIXTOOLS_FILLRECTANGLEHASHVERTICAL$TFPCUSTOMCANVAS$TRECT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHVERTICAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLRECTANGLEHASHVERTICAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
_PIXTOOLS_FILLRECTANGLEHASHVERTICAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	jmp	Lj578
	.align 2
Lj577:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	movl	-12(%ebp),%eax
	addl	%eax,-16(%ebp)
Lj578:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	cmpl	8(%eax),%edx
	jle	Lj577
	jmp	Lj579
Lj579:
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT
_PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
_PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	jmp	Lj613
	.align 2
Lj612:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-24(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	movl	-12(%ebp),%eax
	addl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	addl	%eax,-24(%ebp)
Lj613:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	8(%eax),%edx
	jl	Lj627
	jmp	Lj614
Lj627:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	cmpl	12(%eax),%edx
	jl	Lj612
	jmp	Lj614
Lj614:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	cmpl	8(%edx),%eax
	jge	Lj628
	jmp	Lj629
Lj628:
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	cmpl	12(%edx),%eax
	jge	Lj630
	jmp	Lj631
Lj630:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$crc58B203B1_CHECKCORNER$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-24(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$crc58B203B1_CHECKCORNER$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj654
Lj631:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$crc58B203B1_CHECKCORNER$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj666
	.align 2
Lj665:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%esp)
	movl	-24(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	movl	-12(%ebp),%eax
	addl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	addl	%eax,-24(%ebp)
Lj666:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	cmpl	12(%eax),%edx
	jl	Lj665
	jmp	Lj667
Lj667:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-24(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$crc58B203B1_CHECKCORNER$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj654:
	jmp	Lj692
Lj629:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	cmpl	12(%eax),%edx
	jge	Lj693
	jmp	Lj694
Lj693:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-24(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$crc58B203B1_CHECKCORNER$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj706
	.align 2
Lj705:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	movl	-12(%ebp),%eax
	addl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	addl	%eax,-20(%ebp)
Lj706:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	8(%eax),%edx
	jle	Lj705
	jmp	Lj707
Lj707:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$crc58B203B1_CHECKCORNER$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj694:
Lj692:
	jmp	Lj733
	.align 2
Lj732:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	movl	-12(%ebp),%eax
	addl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	addl	%eax,-24(%ebp)
Lj733:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	8(%eax),%edx
	jl	Lj732
	jmp	Lj734
Lj734:
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$crc58B203B1_CHECKCORNER$LONGINT$LONGINT$LONGINT$$LONGINT
_PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$crc58B203B1_CHECKCORNER$LONGINT$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj747
	jmp	Lj748
Lj747:
	movl	8(%ebp),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-16(%ebp)
	jmp	Lj751
Lj748:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj751:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT
_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-12(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	jmp	Lj777
	.align 2
Lj776:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-24(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	movl	-12(%ebp),%eax
	addl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	subl	%eax,-24(%ebp)
Lj777:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	8(%eax),%edx
	jl	Lj791
	jmp	Lj778
Lj791:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	cmpl	4(%eax),%edx
	jg	Lj776
	jmp	Lj778
Lj778:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	cmpl	8(%edx),%eax
	jge	Lj792
	jmp	Lj793
Lj792:
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	cmpl	4(%edx),%eax
	jle	Lj794
	jmp	Lj795
Lj794:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$crc58B203B1_CHECKCORNER$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-24(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$crc58B203B1_CHECKINVERSCORNER$crc8025C53F$stub
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj818
Lj795:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$crc58B203B1_CHECKCORNER$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj830
	.align 2
Lj829:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%esp)
	movl	-24(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	movl	-12(%ebp),%eax
	subl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	subl	%eax,-24(%ebp)
Lj830:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	cmpl	4(%eax),%edx
	jg	Lj829
	jmp	Lj831
Lj831:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-24(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$crc58B203B1_CHECKINVERSCORNER$crc8025C53F$stub
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj818:
	jmp	Lj856
Lj793:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	cmpl	4(%eax),%edx
	jle	Lj857
	jmp	Lj858
Lj857:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-24(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$crc58B203B1_CHECKINVERSCORNER$crc8025C53F$stub
	movl	%eax,-16(%ebp)
	jmp	Lj870
	.align 2
Lj869:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	movl	-12(%ebp),%eax
	addl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	addl	%eax,-20(%ebp)
Lj870:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	8(%eax),%edx
	jl	Lj869
	jmp	Lj871
Lj871:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$crc58B203B1_CHECKCORNER$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj858:
Lj856:
	jmp	Lj897
	.align 2
Lj896:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	movl	-12(%ebp),%eax
	addl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	subl	%eax,-24(%ebp)
Lj897:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	8(%eax),%edx
	jl	Lj896
	jmp	Lj898
Lj898:
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$crc58B203B1_CHECKCORNER$LONGINT$LONGINT$LONGINT$$LONGINT
_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$crc58B203B1_CHECKCORNER$LONGINT$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj911
	jmp	Lj912
Lj911:
	movl	8(%ebp),%edx
	movl	-4(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	jmp	Lj915
Lj912:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj915:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$crc58B203B1_CHECKINVERSCORNER$crc8025C53F
_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$crc58B203B1_CHECKINVERSCORNER$crc8025C53F:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj918
	jmp	Lj919
Lj918:
	movl	8(%ebp),%edx
	movl	-4(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	jmp	Lj922
Lj919:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj922:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLRECTANGLEPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TBRUSHPATTERN
_PIXTOOLS_FILLRECTANGLEPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TBRUSHPATTERN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	16(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLRECTANGLEPATTERN$crcF01563D1$stub
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLRECTANGLEPATTERN$crcF01563D1
_PIXTOOLS_FILLRECTANGLEPATTERN$crcF01563D1:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	16(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj946
	decl	-16(%ebp)
	.align 2
Lj947:
	incl	-16(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	12(%ebp),%ecx
	movl	-16(%ebp),%eax
	cltd
	movl	$32,%esi
	idivl	%esi
	movl	(%ecx,%edx,4),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj947
Lj946:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLRECTANGLEIMAGE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCUSTOMIMAGE
_PIXTOOLS_FILLRECTANGLEIMAGE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	16(%ebp),%edi
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%edi
	jl	Lj965
	decl	-16(%ebp)
	.align 2
Lj966:
	incl	-16(%ebp)
	movl	12(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj968
	decl	-20(%ebp)
	.align 2
Lj969:
	incl	-20(%ebp)
	movl	8(%ebp),%ecx
	movl	-20(%ebp),%eax
	cltd
	idivl	28(%ecx)
	movl	%edx,%ecx
	movl	8(%ebp),%esi
	movl	-16(%ebp),%eax
	cltd
	idivl	32(%esi)
	movl	8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*156(%esi)
	cmpl	-20(%ebp),%ebx
	jg	Lj969
Lj968:
	cmpl	-16(%ebp),%edi
	jg	Lj966
Lj965:
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLRECTANGLEIMAGEREL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCUSTOMIMAGE
_PIXTOOLS_FILLRECTANGLEIMAGEREL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	16(%ebp),%edi
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%edi
	jl	Lj987
	decl	-16(%ebp)
	.align 2
Lj988:
	incl	-16(%ebp)
	movl	12(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj990
	decl	-20(%ebp)
	.align 2
Lj991:
	incl	-20(%ebp)
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	subl	%edx,%eax
	movl	8(%ebp),%ecx
	cltd
	idivl	28(%ecx)
	movl	%edx,%ecx
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	movl	8(%ebp),%esi
	cltd
	idivl	32(%esi)
	movl	8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*156(%esi)
	cmpl	-20(%ebp),%ebx
	jg	Lj991
Lj990:
	cmpl	-16(%ebp),%edi
	jg	Lj988
Lj987:
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FINDDONEINDEX$PFLOODFILLDATA$LONGINT$LONGINT$$BOOLEAN
_PIXTOOLS_FINDDONEINDEX$PFLOODFILLDATA$LONGINT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%ebx
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj1013
	.align 2
Lj1012:
	movl	-12(%ebp),%eax
	incl	(%eax)
Lj1013:
	movl	-12(%ebp),%esi
	movl	%ebx,%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	(%esi),%eax
	jg	Lj1015
	jmp	Lj1014
Lj1015:
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	%ebx,%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	jne	Lj1012
	jmp	Lj1014
Lj1014:
	movl	-12(%ebp),%esi
	movl	%ebx,%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	(%esi),%eax
	jg	Lj1024
	jmp	Lj1023
Lj1024:
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	%ebx,%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj1022
	jmp	Lj1023
Lj1022:
	movb	$1,-13(%ebp)
	jmp	Lj1031
Lj1023:
	movb	$0,-13(%ebp)
Lj1031:
	movb	-13(%ebp),%al
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FREEDONELIST$TFLOODFILLDATA
_PIXTOOLS_FREEDONELIST$TFLOODFILLDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj1037
	decl	-8(%ebp)
	.align 2
Lj1038:
	incl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_FREEDONELIST$TFLOODFILLDATA_FREELIST$PDONEREC$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj1038
Lj1037:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FREEDONELIST$TFLOODFILLDATA_FREELIST$PDONEREC
_PIXTOOLS_FREEDONELIST$TFLOODFILLDATA_FREELIST$PDONEREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	jmp	Lj1050
	.align 2
Lj1049:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	call	Lfpc_freemem$stub
	movl	-12(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj1050:
	cmpl	$0,-4(%ebp)
	jne	Lj1049
	jmp	Lj1051
Lj1051:
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_CHECKFLOODFILLCOLOR$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA
_PIXTOOLS_CHECKFLOODFILLCOLOR$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%ebx
	movl	(%ebx),%eax
	movl	(%ebx),%edx
	movl	(%edx),%edx
	call	*176(%edx)
	cmpl	-4(%ebp),%eax
	jle	Lj1068
	jmp	Lj1070
Lj1070:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1068
	jmp	Lj1069
Lj1068:
	jmp	Lj1058
Lj1069:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1073
	jmp	Lj1074
Lj1073:
	movl	$0,-8(%ebp)
Lj1074:
	movl	(%ebx),%eax
	movl	(%ebx),%edx
	movl	(%edx),%edx
	call	*168(%edx)
	cmpl	-12(%ebp),%eax
	jle	Lj1077
	jmp	Lj1078
Lj1077:
	movl	(%ebx),%eax
	movl	(%ebx),%edx
	movl	(%edx),%edx
	call	*168(%edx)
	decl	%eax
	movl	%eax,-12(%ebp)
Lj1078:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%ebx),%eax
	movl	(%ebx),%esi
	movl	(%esi),%esi
	call	*160(%esi)
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	leal	-24(%ebp),%eax
	leal	4(%ebx),%edx
	call	L_FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%ebx),%eax
	movl	%ebx,%esi
	movl	(%esi),%ebx
	movl	(%ebx),%ebx
	call	*160(%ebx)
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	leal	-24(%ebp),%eax
	movl	%esi,%ebx
	leal	4(%ebx),%edx
	call	L_FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN$stub
	movb	%al,-14(%ebp)
	movl	%ebp,%eax
	call	L_PIXTOOLS_CHECKFLOODFILLCOLOR$crc4CF70EA3_CHECKRANGE$stub
	cmpb	$0,-13(%ebp)
	jne	Lj1111
	jmp	Lj1112
Lj1111:
	movl	%ebp,%eax
	call	L_PIXTOOLS_CHECKFLOODFILLCOLOR$crc4CF70EA3_CHECKABOVERANGE$stub
Lj1112:
	cmpb	$0,-14(%ebp)
	jne	Lj1115
	jmp	Lj1116
Lj1115:
	movl	%ebp,%eax
	call	L_PIXTOOLS_CHECKFLOODFILLCOLOR$crc4CF70EA3_CHECKBELOWRANGE$stub
Lj1116:
Lj1058:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_CHECKFLOODFILLCOLOR$crc4CF70EA3_CHECKBELOWRANGE
_PIXTOOLS_CHECKFLOODFILLCOLOR$crc4CF70EA3_CHECKBELOWRANGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ebx
	movl	(%ebx),%eax
	movl	(%ebx),%edx
	movl	(%edx),%edx
	call	*168(%edx)
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1130
	.align 2
Lj1129:
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-16(%ebp),%ecx
	movl	(%ebx),%eax
	movl	12(%ebx),%esi
	call	*%esi
	incl	-16(%ebp)
Lj1130:
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj1140
	jmp	Lj1131
Lj1140:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-16(%ebp),%ecx
	movl	(%ebx),%eax
	movl	(%ebx),%esi
	movl	(%esi),%esi
	call	*160(%esi)
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	leal	-24(%ebp),%eax
	leal	4(%ebx),%edx
	call	L_FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1129
	jmp	Lj1131
Lj1131:
	movl	-16(%ebp),%eax
	decl	%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj1153
	jmp	Lj1154
Lj1153:
	movl	$-1,4(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	decl	%eax
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	call	L_PIXTOOLS_CHECKFLOODFILLCOLOR$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub
	movl	$1,4(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	%eax
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	call	L_PIXTOOLS_CHECKFLOODFILLCOLOR$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub
Lj1154:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_CHECKFLOODFILLCOLOR$crc4CF70EA3_CHECKABOVERANGE
_PIXTOOLS_CHECKFLOODFILLCOLOR$crc4CF70EA3_CHECKABOVERANGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	decl	%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1180
	.align 2
Lj1179:
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-8(%ebp),%ecx
	movl	(%ebx),%eax
	movl	12(%ebx),%esi
	call	*%esi
	decl	-8(%ebp)
Lj1180:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1190
	jmp	Lj1181
Lj1190:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-8(%ebp),%ecx
	movl	(%ebx),%eax
	movl	(%ebx),%esi
	movl	(%esi),%esi
	call	*160(%esi)
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	leal	-20(%ebp),%eax
	leal	4(%ebx),%edx
	call	L_FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1179
	jmp	Lj1181
Lj1181:
	movl	-8(%ebp),%eax
	incl	%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	decl	%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jle	Lj1205
	jmp	Lj1206
Lj1205:
	movl	$-1,4(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	decl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_PIXTOOLS_CHECKFLOODFILLCOLOR$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub
	movl	$1,4(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_PIXTOOLS_CHECKFLOODFILLCOLOR$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub
Lj1206:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_CHECKFLOODFILLCOLOR$crc4CF70EA3_CHECKRANGE
_PIXTOOLS_CHECKFLOODFILLCOLOR$crc4CF70EA3_CHECKRANGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	decl	%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%edi
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	%eax,-8(%ebp)
	cmpl	-8(%ebp),%edi
	jl	Lj1232
	decl	-8(%ebp)
	.align 2
Lj1233:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,%ebx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-8(%ebp),%ecx
	movl	(%ebx),%eax
	movl	(%ebx),%esi
	movl	(%esi),%esi
	call	*160(%esi)
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	leal	-24(%ebp),%eax
	leal	4(%ebx),%edx
	call	L_FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1236
	jmp	Lj1237
Lj1236:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-8(%ebp),%ecx
	movl	(%ebx),%eax
	movl	12(%ebx),%esi
	call	*%esi
	jmp	Lj1258
Lj1237:
	movl	-12(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj1259
	jmp	Lj1260
Lj1259:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-4(%eax),%eax
	movl	12(%edx),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%ecx
	decl	%ecx
	movl	-12(%ebp),%edx
	call	L_PIXTOOLS_CHECKFLOODFILLCOLOR$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub
Lj1260:
	movl	-8(%ebp),%eax
	incl	%eax
	movl	%eax,-12(%ebp)
Lj1258:
	cmpl	-8(%ebp),%edi
	jg	Lj1233
Lj1232:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj1273
	jmp	Lj1274
Lj1273:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-4(%eax),%eax
	movl	12(%edx),%edx
	addl	%edx,%eax
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	call	L_PIXTOOLS_CHECKFLOODFILLCOLOR$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub
Lj1274:
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_CHECKFLOODFILL$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA
_PIXTOOLS_CHECKFLOODFILL$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%ebx
	movl	(%ebx),%eax
	movl	(%ebx),%edx
	movl	(%edx),%edx
	call	*176(%edx)
	cmpl	-4(%ebp),%eax
	jle	Lj1295
	jmp	Lj1297
Lj1297:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1295
	jmp	Lj1296
Lj1295:
	jmp	Lj1285
Lj1296:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1300
	jmp	Lj1301
Lj1300:
	movl	$0,-8(%ebp)
Lj1301:
	movl	(%ebx),%eax
	movl	(%ebx),%edx
	movl	(%edx),%edx
	call	*168(%edx)
	cmpl	-12(%ebp),%eax
	jle	Lj1304
	jmp	Lj1305
Lj1304:
	movl	(%ebx),%eax
	movl	(%ebx),%edx
	movl	(%edx),%edx
	call	*168(%edx)
	decl	%eax
	movl	%eax,-12(%ebp)
Lj1305:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%ebx),%eax
	movl	(%ebx),%esi
	movl	(%esi),%esi
	call	*160(%esi)
	movl	%eax,-48(%ebp)
	movl	%edx,-44(%ebp)
	leal	-48(%ebp),%eax
	leal	4(%ebx),%edx
	call	L_FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN$stub
	movb	%al,-33(%ebp)
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%ebx),%eax
	movl	%ebx,%esi
	movl	(%esi),%ebx
	movl	(%ebx),%ebx
	call	*160(%ebx)
	movl	%eax,-48(%ebp)
	movl	%edx,-44(%ebp)
	leal	-48(%ebp),%eax
	movl	%esi,%ebx
	leal	4(%ebx),%edx
	call	L_FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN$stub
	movb	%al,-34(%ebp)
	leal	-32(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_PIXTOOLS_FINDDONEINDEX$PFLOODFILLDATA$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1336
	jmp	Lj1337
Lj1336:
	movl	8(%ebp),%eax
	movl	20(%eax),%eax
	movl	-32(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj1353
	.align 2
Lj1352:
	movl	-28(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,-28(%ebp)
Lj1353:
	cmpl	$0,-28(%ebp)
	jne	Lj1352
	jmp	Lj1354
Lj1354:
	jmp	Lj1359
Lj1337:
	movl	$0,-24(%ebp)
Lj1359:
	movl	%ebp,%eax
	call	L_PIXTOOLS_CHECKFLOODFILL$crc4CF70EA3_CHECKRANGE$stub
	cmpb	$0,-33(%ebp)
	jne	Lj1366
	jmp	Lj1365
Lj1366:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj1364
	jmp	Lj1365
Lj1364:
	cmpl	$0,-16(%ebp)
	jne	Lj1367
	jmp	Lj1368
Lj1367:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	incl	%eax
	movl	%eax,-40(%ebp)
	jmp	Lj1371
Lj1368:
	movl	$0,-40(%ebp)
Lj1371:
	movl	-40(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_CHECKFLOODFILL$crc4CF70EA3_CHECKABOVERANGE$LONGINT$stub
Lj1365:
	cmpb	$0,-34(%ebp)
	jne	Lj1380
	jmp	Lj1379
Lj1380:
	movl	-28(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj1378
	jmp	Lj1379
Lj1378:
	movl	-28(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj1381
	jmp	Lj1382
Lj1381:
	movl	-28(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	decl	%eax
	movl	%eax,-40(%ebp)
	jmp	Lj1385
Lj1382:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%ebp),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*168(%edx)
	decl	%eax
	movl	%eax,-40(%ebp)
Lj1385:
	movl	-40(%ebp),%edx
	movl	%ebp,%eax
	call	L_PIXTOOLS_CHECKFLOODFILL$crc4CF70EA3_CHECKBELOWRANGE$LONGINT$stub
Lj1379:
Lj1285:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_CHECKFLOODFILL$crc4CF70EA3_CHECKBELOWRANGE$LONGINT
_PIXTOOLS_CHECKFLOODFILL$crc4CF70EA3_CHECKBELOWRANGE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%ebx
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1401
	.align 2
Lj1400:
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-16(%ebp),%ecx
	movl	(%ebx),%eax
	movl	12(%ebx),%esi
	call	*%esi
	incl	-16(%ebp)
Lj1401:
	movl	-16(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj1411
	jmp	Lj1402
Lj1411:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-16(%ebp),%ecx
	movl	(%ebx),%eax
	movl	(%ebx),%esi
	movl	(%esi),%esi
	call	*160(%esi)
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	leal	-24(%ebp),%eax
	leal	4(%ebx),%edx
	call	L_FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1400
	jmp	Lj1402
Lj1402:
	movl	-16(%ebp),%eax
	decl	%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj1424
	jmp	Lj1425
Lj1424:
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movl	-16(%ebp),%edx
	incl	%edx
	movl	%edx,8(%eax)
	movl	$-1,4(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	decl	%eax
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	call	L_PIXTOOLS_CHECKFLOODFILL$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub
	movl	$1,4(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	incl	%eax
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	call	L_PIXTOOLS_CHECKFLOODFILL$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub
Lj1425:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_CHECKFLOODFILL$crc4CF70EA3_CHECKABOVERANGE$LONGINT
_PIXTOOLS_CHECKFLOODFILL$crc4CF70EA3_CHECKABOVERANGE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%ebx
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	decl	%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1453
	.align 2
Lj1452:
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	(%ebx),%eax
	movl	12(%ebx),%esi
	call	*%esi
	decl	-12(%ebp)
Lj1453:
	movl	-12(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jge	Lj1463
	jmp	Lj1454
Lj1463:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	(%ebx),%eax
	movl	(%ebx),%esi
	movl	(%esi),%esi
	call	*160(%esi)
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	leal	-24(%ebp),%eax
	leal	4(%ebx),%edx
	call	L_FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1452
	jmp	Lj1454
Lj1454:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	decl	%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj1478
	jmp	Lj1479
Lj1478:
	movl	-8(%ebp),%eax
	movl	-20(%eax),%eax
	movl	-12(%ebp),%edx
	decl	%edx
	movl	%edx,4(%eax)
	movl	$-1,4(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	decl	%eax
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	call	L_PIXTOOLS_CHECKFLOODFILL$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub
	movl	$1,4(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	incl	%eax
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	call	L_PIXTOOLS_CHECKFLOODFILL$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub
Lj1479:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_CHECKFLOODFILL$crc4CF70EA3_CHECKRANGE
_PIXTOOLS_CHECKFLOODFILL$crc4CF70EA3_CHECKRANGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,-20(%eax)
	movl	-4(%ebp),%eax
	movl	$0,-16(%eax)
	movl	-4(%ebp),%eax
	movl	-24(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1509
	.align 2
Lj1508:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	movl	%eax,-16(%edx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,-20(%edx)
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
Lj1509:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1517
	jmp	Lj1510
Lj1517:
	movl	-20(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%eax),%eax
	cmpl	-8(%edx),%eax
	jle	Lj1508
	jmp	Lj1510
Lj1510:
	movl	-4(%ebp),%eax
	cmpl	$0,-20(%eax)
	jne	Lj1520
	jmp	Lj1519
Lj1520:
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	-8(%edx),%eax
	jl	Lj1518
	jmp	Lj1519
Lj1518:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	movl	%eax,-16(%edx)
	movl	-4(%ebp),%eax
	movl	$0,-20(%eax)
Lj1519:
	movl	-4(%ebp),%eax
	cmpl	$0,-20(%eax)
	jne	Lj1525
	jmp	Lj1526
Lj1525:
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	movl	8(%eax),%eax
	incl	%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	movl	%eax,-28(%edx)
	jmp	Lj1531
Lj1526:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	$16,%eax
	call	Lfpc_getmem$stub
	movl	-4(%ebp),%edx
	movl	%eax,-28(%edx)
	movl	-4(%ebp),%eax
	movl	-28(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	-28(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	-28(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	movl	-20(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-4(%ebp),%eax
	cmpl	$0,-16(%eax)
	jne	Lj1548
	jmp	Lj1549
Lj1548:
	movl	-4(%ebp),%eax
	movl	-16(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	movl	%eax,12(%edx)
	jmp	Lj1552
Lj1549:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	20(%eax),%ebx
	movl	-4(%ebp),%esi
	movl	%ebx,%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-32(%esi),%eax
	jg	Lj1555
	jmp	Lj1556
Lj1555:
	movl	-4(%ebp),%eax
	movl	-28(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-32(%eax),%edx
	movl	%ebx,%eax
	call	L_CLASSES_TLIST_$__PUT$LONGINT$POINTER$stub
	jmp	Lj1565
Lj1556:
	movl	-4(%ebp),%eax
	movl	-28(%eax),%edx
	movl	%ebx,%eax
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
Lj1565:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	movl	%eax,-24(%edx)
Lj1552:
Lj1531:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	movl	%eax,-20(%edx)
	movl	-12(%ebp),%eax
	decl	%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1579
	.align 2
Lj1578:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-8(%ebp),%ecx
	movl	(%ebx),%eax
	movl	(%ebx),%esi
	movl	(%esi),%esi
	call	*160(%esi)
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	leal	-28(%ebp),%eax
	leal	4(%ebx),%edx
	call	L_FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1583
	jmp	Lj1584
Lj1583:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-8(%ebp),%ecx
	movl	(%ebx),%eax
	movl	12(%ebx),%esi
	call	*%esi
	jmp	Lj1605
Lj1584:
	movl	-12(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj1606
	jmp	Lj1607
Lj1606:
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	movl	-8(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-4(%eax),%eax
	movl	12(%edx),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%ecx
	decl	%ecx
	movl	-12(%ebp),%edx
	call	L_PIXTOOLS_CHECKFLOODFILL$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub
Lj1607:
	movl	-8(%ebp),%eax
	incl	%eax
	movl	%eax,-12(%ebp)
Lj1605:
	incl	-8(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj1624
	jmp	Lj1623
Lj1624:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-8(%ebp),%eax
	jle	Lj1622
	jmp	Lj1623
Lj1622:
	movl	-12(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj1625
	jmp	Lj1626
Lj1625:
	movl	-20(%ebp),%eax
	movl	4(%eax),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	movl	%edx,8(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-4(%eax),%eax
	movl	12(%edx),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%ecx
	decl	%ecx
	movl	-12(%ebp),%edx
	call	L_PIXTOOLS_CHECKFLOODFILL$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub
Lj1626:
	jmp	Lj1640
	.align 2
Lj1639:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,-28(%eax)
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	movl	8(%eax),%eax
	incl	%eax
	movl	%eax,-8(%ebp)
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
Lj1640:
	cmpl	$0,-20(%ebp)
	jne	Lj1648
	jmp	Lj1641
Lj1648:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-8(%ebp),%eax
	jle	Lj1639
	jmp	Lj1641
Lj1641:
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj1623:
Lj1579:
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj1578
	jmp	Lj1580
Lj1580:
	movl	-4(%ebp),%eax
	movl	-28(%eax),%edx
	movl	-8(%ebp),%eax
	decl	%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj1653
	jmp	Lj1654
Lj1653:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-4(%eax),%eax
	movl	12(%edx),%edx
	addl	%edx,%eax
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	call	L_PIXTOOLS_CHECKFLOODFILL$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub
Lj1654:
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_SETFLOODCOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
_PIXTOOLS_SETFLOODCOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODCOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR
_PIXTOOLS_FILLFLOODCOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-52(%ebp)
	movl	%esi,-48(%ebp)
	call	Lj1676
Lj1676:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*160(%ebx)
	movl	%eax,-44(%ebp)
	movl	%edx,-40(%ebp)
	movl	-44(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-40(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	L_PIXTOOLS_SETFLOODCOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr-Lj1676(%esi),%eax
	movl	%eax,-24(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$1,4(%esp)
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_PIXTOOLS_CHECKFLOODFILLCOLOR$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub
	movl	-52(%ebp),%ebx
	movl	-48(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODCOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT
_PIXTOOLS_FILLFLOODCOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODCOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$stub
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_SETFLOODPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
_PIXTOOLS_SETFLOODPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%ebx
	movl	-8(%ebp),%eax
	cltd
	movl	$32,%ecx
	idivl	%ecx
	movl	%edx,%ecx
	shll	$5,%ecx
	movl	-12(%ebp),%eax
	cltd
	movl	$32,%esi
	idivl	%esi
	leal	(%ebx,%ecx),%eax
	cmpb	$0,(%eax,%edx,1)
	jne	Lj1717
	jmp	Lj1718
Lj1717:
	movl	-16(%ebp),%eax
	leal	1024(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
Lj1718:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$TBRUSHPATTERN$TFPCOLOR
_PIXTOOLS_FILLFLOODPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$TBRUSHPATTERN$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1128,%esp
	movl	%ebx,-1120(%ebp)
	movl	%esi,-1116(%ebp)
	call	Lj1728
Lj1728:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-1068(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*160(%ebx)
	movl	%eax,-1076(%ebp)
	movl	%edx,-1072(%ebp)
	movl	-1076(%ebp),%eax
	movl	%eax,-1064(%ebp)
	movl	-1072(%ebp),%eax
	movl	%eax,-1060(%ebp)
	movl	L_PIXTOOLS_SETFLOODPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr-Lj1728(%esi),%eax
	movl	%eax,-1056(%ebp)
	leal	-1044(%ebp),%eax
	movl	%eax,-1052(%ebp)
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj1728(%esi),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	%eax,-1048(%ebp)
	leal	-1088(%ebp),%ecx
	leal	-1112(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-1072(%ebp)
	testl	%eax,%eax
	jne	Lj1751
	movl	%ebp,%eax
	call	L_PIXTOOLS_FILLFLOODPATTERN$crc1200E2B2_FILLPATTERN$stub
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-20(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	$1,4(%esp)
	leal	-1068(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_PIXTOOLS_CHECKFLOODFILL$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub
Lj1751:
	call	LFPC_POPADDRSTACK$stub
	leal	-1068(%ebp),%eax
	call	L_PIXTOOLS_FREEDONELIST$TFLOODFILLDATA$stub
	movl	-1072(%ebp),%eax
	testl	%eax,%eax
	je	Lj1752
	decl	%eax
	testl	%eax,%eax
	je	Lj1753
Lj1753:
	call	LFPC_RERAISE$stub
Lj1752:
	movl	-1120(%ebp),%ebx
	movl	-1116(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODPATTERN$crc1200E2B2_FILLPATTERN
_PIXTOOLS_FILLFLOODPATTERN$crc1200E2B2_FILLPATTERN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.align 2
Lj1773:
	incl	-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	shll	$5,%eax
	leal	-1044(%edx,%eax),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	(%eax,%ecx,4),%eax
	call	L_PIXTOOLS_PATTERNTOPOINTS$LONGWORD$PLINEPOINTS$stub
	cmpl	$31,-8(%ebp)
	jl	Lj1773
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$TBRUSHPATTERN
_PIXTOOLS_FILLFLOODPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$TBRUSHPATTERN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$TBRUSHPATTERN$TFPCOLOR$stub
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_SETFLOODHASHHOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
_PIXTOOLS_SETFLOODHASHHOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%eax
	cltd
	idivl	8(%ecx)
	testl	%edx,%edx
	je	Lj1796
	jmp	Lj1797
Lj1796:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
Lj1797:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_SETFLOODHASHVER$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
_PIXTOOLS_SETFLOODHASHVER$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	cltd
	idivl	8(%ecx)
	testl	%edx,%edx
	je	Lj1810
	jmp	Lj1811
Lj1810:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
Lj1811:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_SETFLOODHASHDIAG$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
_PIXTOOLS_SETFLOODHASHDIAG$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	cltd
	idivl	-20(%ebp)
	movl	%edx,%ecx
	movl	-12(%ebp),%eax
	cltd
	idivl	-20(%ebp)
	addl	%edx,%ecx
	movl	-20(%ebp),%eax
	decl	%eax
	cmpl	%eax,%ecx
	je	Lj1826
	jmp	Lj1827
Lj1826:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
Lj1827:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_SETFLOODHASHBDIAG$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
_PIXTOOLS_SETFLOODHASHBDIAG$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-17(%ebp)
	movzbl	-17(%ebp),%ecx
	movl	-8(%ebp),%eax
	cltd
	idivl	%ecx
	movl	%edx,%ecx
	movzbl	-17(%ebp),%ebx
	movl	-12(%ebp),%eax
	cltd
	idivl	%ebx
	cmpl	%edx,%ecx
	je	Lj1842
	jmp	Lj1843
Lj1842:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
Lj1843:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_SETFLOODHASHCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
_PIXTOOLS_SETFLOODHASHCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-17(%ebp)
	movzbl	-17(%ebp),%ecx
	movl	-8(%ebp),%eax
	cltd
	idivl	%ecx
	testl	%edx,%edx
	je	Lj1858
	jmp	Lj1860
Lj1860:
	movzbl	-17(%ebp),%ecx
	movl	-12(%ebp),%eax
	cltd
	idivl	%ecx
	testl	%edx,%edx
	je	Lj1858
	jmp	Lj1859
Lj1858:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
Lj1859:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_SETFLOODHASHDIAGCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
_PIXTOOLS_SETFLOODHASHDIAGCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-17(%ebp)
	movzbl	-17(%ebp),%ecx
	movl	-8(%ebp),%eax
	cltd
	idivl	%ecx
	movl	%edx,%ecx
	movzbl	-17(%ebp),%ebx
	movl	-12(%ebp),%eax
	cltd
	idivl	%ebx
	cmpl	%edx,%ecx
	je	Lj1875
	jmp	Lj1877
Lj1877:
	movzbl	-17(%ebp),%ecx
	movl	-8(%ebp),%eax
	cltd
	idivl	%ecx
	movl	%edx,%ecx
	movzbl	-17(%ebp),%ebx
	movl	-12(%ebp),%eax
	cltd
	idivl	%ebx
	addl	%edx,%ecx
	movzbl	-17(%ebp),%eax
	decl	%eax
	cmpl	%eax,%ecx
	je	Lj1875
	jmp	Lj1876
Lj1875:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
Lj1876:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODHASH$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFUNCSETCOLOR$TFPCOLOR
_PIXTOOLS_FILLFLOODHASH$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFUNCSETCOLOR$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	call	Lj1887
Lj1887:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*160(%ebx)
	movl	%eax,-56(%ebp)
	movl	%edx,-52(%ebp)
	movl	-56(%ebp),%eax
	movl	%eax,-44(%ebp)
	movl	-52(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-36(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj1887(%esi),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	%eax,-28(%ebp)
	movl	8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-20(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-16(%ebp)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1912
	movl	$1,4(%esp)
	leal	-48(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_PIXTOOLS_CHECKFLOODFILL$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub
Lj1912:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	L_PIXTOOLS_FREEDONELIST$TFLOODFILLDATA$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1913
	decl	%eax
	testl	%eax,%eax
	je	Lj1914
Lj1914:
	call	LFPC_RERAISE$stub
Lj1913:
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODHASHHORIZONTAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR
_PIXTOOLS_FILLFLOODHASHHORIZONTAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1929
Lj1929:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	L_PIXTOOLS_SETFLOODHASHHOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr-Lj1929(%ebx),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODHASH$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFUNCSETCOLOR$TFPCOLOR$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODHASHHORIZONTAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT
_PIXTOOLS_FILLFLOODHASHHORIZONTAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODHASHHORIZONTAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODHASHVERTICAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR
_PIXTOOLS_FILLFLOODHASHVERTICAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1957
Lj1957:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	L_PIXTOOLS_SETFLOODHASHVER$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr-Lj1957(%ebx),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODHASH$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFUNCSETCOLOR$TFPCOLOR$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODHASHVERTICAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT
_PIXTOOLS_FILLFLOODHASHVERTICAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODHASHVERTICAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODHASHDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR
_PIXTOOLS_FILLFLOODHASHDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1985
Lj1985:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	L_PIXTOOLS_SETFLOODHASHDIAG$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr-Lj1985(%ebx),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODHASH$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFUNCSETCOLOR$TFPCOLOR$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODHASHDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT
_PIXTOOLS_FILLFLOODHASHDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODHASHDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODHASHBACKDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR
_PIXTOOLS_FILLFLOODHASHBACKDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	call	Lj2013
Lj2013:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	L_PIXTOOLS_SETFLOODHASHBDIAG$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr-Lj2013(%ebx),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODHASH$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFUNCSETCOLOR$TFPCOLOR$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODHASHBACKDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT
_PIXTOOLS_FILLFLOODHASHBACKDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODHASHBACKDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODHASHDIAGCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR
_PIXTOOLS_FILLFLOODHASHDIAGCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	call	Lj2041
Lj2041:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	L_PIXTOOLS_SETFLOODHASHDIAGCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr-Lj2041(%ebx),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODHASH$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFUNCSETCOLOR$TFPCOLOR$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODHASHDIAGCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT
_PIXTOOLS_FILLFLOODHASHDIAGCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODHASHDIAGCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODHASHCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR
_PIXTOOLS_FILLFLOODHASHCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	call	Lj2069
Lj2069:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	L_PIXTOOLS_SETFLOODHASHCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr-Lj2069(%ebx),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODHASH$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFUNCSETCOLOR$TFPCOLOR$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODHASHCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT
_PIXTOOLS_FILLFLOODHASHCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODHASHCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_SETFLOODIMAGE$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
_PIXTOOLS_SETFLOODIMAGE$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%ebx
	movl	-12(%ebp),%eax
	cltd
	idivl	28(%ebx)
	movl	%edx,%ecx
	movl	-8(%ebp),%eax
	cltd
	idivl	32(%ebx)
	movl	%ebx,%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*156(%esi)
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODIMAGE$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCUSTOMIMAGE
_PIXTOOLS_FILLFLOODIMAGE$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	call	Lj2117
Lj2117:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*160(%ebx)
	movl	%eax,-56(%ebp)
	movl	%edx,-52(%ebp)
	movl	-56(%ebp),%eax
	movl	%eax,-44(%ebp)
	movl	-52(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	L_PIXTOOLS_SETFLOODIMAGE$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr-Lj2117(%esi),%eax
	movl	%eax,-36(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj2117(%esi),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	%eax,-28(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2140
	movl	$1,4(%esp)
	leal	-48(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_PIXTOOLS_CHECKFLOODFILL$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub
Lj2140:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	L_PIXTOOLS_FREEDONELIST$TFLOODFILLDATA$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2141
	decl	%eax
	testl	%eax,%eax
	je	Lj2142
Lj2142:
	call	LFPC_RERAISE$stub
Lj2141:
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_SETFLOODIMAGEREL$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
_PIXTOOLS_SETFLOODIMAGEREL$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,%ebx
	movl	8(%ebx),%ecx
	movl	-8(%ebp),%eax
	movl	(%ebx),%edx
	subl	%edx,%eax
	cltd
	idivl	32(%ecx)
	movl	%edx,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj2166
	jmp	Lj2167
Lj2166:
	movl	32(%ecx),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-20(%ebp)
Lj2167:
	movl	-12(%ebp),%eax
	movl	4(%ebx),%edx
	subl	%edx,%eax
	cltd
	idivl	28(%ecx)
	movl	%edx,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj2172
	jmp	Lj2173
Lj2172:
	movl	28(%ecx),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-24(%ebp)
Lj2173:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%ecx,%esi
	movl	%esi,%edi
	movl	%eax,%ecx
	movl	%edi,%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-32(%ebp)
	movl	%edx,-28(%ebp)
	leal	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edi
	movl	(%edi),%edi
	call	*156(%edi)
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_PIXTOOLS_FILLFLOODIMAGEREL$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCUSTOMIMAGE
_PIXTOOLS_FILLFLOODIMAGEREL$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	call	Lj2191
Lj2191:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*160(%ebx)
	movl	%eax,-56(%ebp)
	movl	%edx,-52(%ebp)
	movl	-56(%ebp),%eax
	movl	%eax,-44(%ebp)
	movl	-52(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	L_PIXTOOLS_SETFLOODIMAGEREL$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr-Lj2191(%esi),%eax
	movl	%eax,-36(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj2191(%esi),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	%eax,-28(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2218
	movl	$1,4(%esp)
	leal	-48(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_PIXTOOLS_CHECKFLOODFILL$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub
Lj2218:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	L_PIXTOOLS_FREEDONELIST$TFLOODFILLDATA$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2219
	decl	%eax
	testl	%eax,%eax
	je	Lj2220
Lj2220:
	call	LFPC_RERAISE$stub
Lj2219:
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_PIXTOOLS
_THREADVARLIST_PIXTOOLS:
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

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLRECTANGLECOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _PIXTOOLS_FILLRECTANGLECOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLIPPING_SORTRECT$LONGINT$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _CLIPPING_SORTRECT$LONGINT$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_xor$TFPCOLOR$TFPCOLOR$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_xor$TFPCOLOR$TFPCOLOR$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_or$TFPCOLOR$TFPCOLOR$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_or$TFPCOLOR$TFPCOLOR$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_and$TFPCOLOR$TFPCOLOR$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_and$TFPCOLOR$TFPCOLOR$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_VERTICALLINE$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_VERTICALLINE$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_HORIZONTALLINE$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_HORIZONTALLINE$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_SLOPEDLINE$stub:
.indirect_symbol _PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_SLOPEDLINE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_SLOPEDLINE_INITIALIZE$stub:
.indirect_symbol _PIXTOOLS_DRAWSOLIDLINE$crcCD9C83B5_SLOPEDLINE_INITIALIZE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8$stub:
.indirect_symbol _PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_PATTERNTOPOINTS$LONGWORD$PLINEPOINTS$stub:
.indirect_symbol _PIXTOOLS_PATTERNTOPOINTS$LONGWORD$PLINEPOINTS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_VERTICALLINE$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_VERTICALLINE$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_HORIZONTALLINE$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_HORIZONTALLINE$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_SLOPEDLINE$stub:
.indirect_symbol _PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_SLOPEDLINE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_SLOPEDLINE_INITIALIZE$stub:
.indirect_symbol _PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8_SLOPEDLINE_INITIALIZE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLRECTANGLEHASHHORIZONTAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _PIXTOOLS_FILLRECTANGLEHASHHORIZONTAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLRECTANGLEHASHVERTICAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _PIXTOOLS_FILLRECTANGLEHASHVERTICAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$crc58B203B1_CHECKCORNER$LONGINT$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$crc58B203B1_CHECKCORNER$LONGINT$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$crc58B203B1_CHECKCORNER$LONGINT$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$crc58B203B1_CHECKCORNER$LONGINT$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$crc58B203B1_CHECKINVERSCORNER$crc8025C53F$stub:
.indirect_symbol _PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$crc58B203B1_CHECKINVERSCORNER$crc8025C53F
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLRECTANGLEPATTERN$crcF01563D1$stub:
.indirect_symbol _PIXTOOLS_FILLRECTANGLEPATTERN$crcF01563D1
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

L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CLASSES_TLIST_$__GET$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FREEDONELIST$TFLOODFILLDATA_FREELIST$PDONEREC$stub:
.indirect_symbol _PIXTOOLS_FREEDONELIST$TFLOODFILLDATA_FREELIST$PDONEREC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_freemem$stub:
.indirect_symbol fpc_freemem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN$stub:
.indirect_symbol _FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_CHECKFLOODFILLCOLOR$crc4CF70EA3_CHECKRANGE$stub:
.indirect_symbol _PIXTOOLS_CHECKFLOODFILLCOLOR$crc4CF70EA3_CHECKRANGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_CHECKFLOODFILLCOLOR$crc4CF70EA3_CHECKABOVERANGE$stub:
.indirect_symbol _PIXTOOLS_CHECKFLOODFILLCOLOR$crc4CF70EA3_CHECKABOVERANGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_CHECKFLOODFILLCOLOR$crc4CF70EA3_CHECKBELOWRANGE$stub:
.indirect_symbol _PIXTOOLS_CHECKFLOODFILLCOLOR$crc4CF70EA3_CHECKBELOWRANGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_CHECKFLOODFILLCOLOR$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub:
.indirect_symbol _PIXTOOLS_CHECKFLOODFILLCOLOR$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FINDDONEINDEX$PFLOODFILLDATA$LONGINT$LONGINT$$BOOLEAN$stub:
.indirect_symbol _PIXTOOLS_FINDDONEINDEX$PFLOODFILLDATA$LONGINT$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_CHECKFLOODFILL$crc4CF70EA3_CHECKRANGE$stub:
.indirect_symbol _PIXTOOLS_CHECKFLOODFILL$crc4CF70EA3_CHECKRANGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_CHECKFLOODFILL$crc4CF70EA3_CHECKABOVERANGE$LONGINT$stub:
.indirect_symbol _PIXTOOLS_CHECKFLOODFILL$crc4CF70EA3_CHECKABOVERANGE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_CHECKFLOODFILL$crc4CF70EA3_CHECKBELOWRANGE$LONGINT$stub:
.indirect_symbol _PIXTOOLS_CHECKFLOODFILL$crc4CF70EA3_CHECKBELOWRANGE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_CHECKFLOODFILL$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA$stub:
.indirect_symbol _PIXTOOLS_CHECKFLOODFILL$LONGINT$LONGINT$LONGINT$LONGINT$PFLOODFILLDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_getmem$stub:
.indirect_symbol fpc_getmem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__PUT$LONGINT$POINTER$stub:
.indirect_symbol _CLASSES_TLIST_$__PUT$LONGINT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__ADD$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLFLOODCOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODCOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__CREATE$$TLIST$stub:
.indirect_symbol _CLASSES_TLIST_$__CREATE$$TLIST
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

L_PIXTOOLS_FILLFLOODPATTERN$crc1200E2B2_FILLPATTERN$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODPATTERN$crc1200E2B2_FILLPATTERN
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

L_PIXTOOLS_FREEDONELIST$TFLOODFILLDATA$stub:
.indirect_symbol _PIXTOOLS_FREEDONELIST$TFLOODFILLDATA
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

L_PIXTOOLS_FILLFLOODPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$TBRUSHPATTERN$TFPCOLOR$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$TBRUSHPATTERN$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLFLOODHASH$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFUNCSETCOLOR$TFPCOLOR$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODHASH$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFUNCSETCOLOR$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLFLOODHASHHORIZONTAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODHASHHORIZONTAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLFLOODHASHVERTICAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODHASHVERTICAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLFLOODHASHDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODHASHDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLFLOODHASHBACKDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODHASHBACKDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLFLOODHASHDIAGCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODHASHDIAGCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLFLOODHASHCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODHASHCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$TFPCOLOR
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
L_PIXTOOLS_PUTPIXELAND$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr:
.indirect_symbol _PIXTOOLS_PUTPIXELAND$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_PIXTOOLS_PUTPIXELOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr:
.indirect_symbol _PIXTOOLS_PUTPIXELOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_PIXTOOLS_PUTPIXELXOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr:
.indirect_symbol _PIXTOOLS_PUTPIXELXOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_PIXTOOLS_PUTPIXELCOPY$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR$non_lazy_ptr:
.indirect_symbol _PIXTOOLS_PUTPIXELCOPY$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_PIXTOOLS_SETFLOODCOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr:
.indirect_symbol _PIXTOOLS_SETFLOODCOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_PIXTOOLS_SETFLOODPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr:
.indirect_symbol _PIXTOOLS_SETFLOODPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_PIXTOOLS_SETFLOODHASHHOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr:
.indirect_symbol _PIXTOOLS_SETFLOODHASHHOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_PIXTOOLS_SETFLOODHASHVER$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr:
.indirect_symbol _PIXTOOLS_SETFLOODHASHVER$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_PIXTOOLS_SETFLOODHASHDIAG$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr:
.indirect_symbol _PIXTOOLS_SETFLOODHASHDIAG$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_PIXTOOLS_SETFLOODHASHBDIAG$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr:
.indirect_symbol _PIXTOOLS_SETFLOODHASHBDIAG$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_PIXTOOLS_SETFLOODHASHDIAGCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr:
.indirect_symbol _PIXTOOLS_SETFLOODHASHDIAGCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_PIXTOOLS_SETFLOODHASHCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr:
.indirect_symbol _PIXTOOLS_SETFLOODHASHCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_PIXTOOLS_SETFLOODIMAGE$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr:
.indirect_symbol _PIXTOOLS_SETFLOODIMAGE$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_PIXTOOLS_SETFLOODIMAGEREL$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER$non_lazy_ptr:
.indirect_symbol _PIXTOOLS_SETFLOODIMAGEREL$TFPCUSTOMCANVAS$LONGINT$LONGINT$POINTER
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

