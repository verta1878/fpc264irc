# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPDITHERER_TFPBASEDITHERER_$__DITHER$TFPCUSTOMIMAGE$TFPCUSTOMIMAGE
_FPDITHERER_TFPBASEDITHERER_$__DITHER$TFPCUSTOMIMAGE$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj5
	jmp	Lj6
Lj5:
	movl	L_VMT_FPDITHERER_FPDITHEREREXCEPTION$non_lazy_ptr-Lj4(%ebx),%edx
	movl	L_$FPDITHERER$_Ld1$non_lazy_ptr-Lj4(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj4(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj6:
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj15
	jmp	Lj16
Lj15:
	movl	L_VMT_FPDITHERER_FPDITHEREREXCEPTION$non_lazy_ptr-Lj4(%ebx),%edx
	movl	L_$FPDITHERER$_Ld3$non_lazy_ptr-Lj4(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj4(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj16:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*100(%esi)
	movl	-12(%ebp),%eax
	cmpb	$0,25(%eax)
	jne	Lj29
	jmp	Lj30
Lj29:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__CLEAR$stub
Lj30:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPBASEDITHERER_$__CREATE$TFPPALETTE$$TFPBASEDITHERER
_FPDITHERER_TFPBASEDITHERER_$__CREATE$TFPPALETTE$$TFPBASEDITHERER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj34
Lj34:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj35
	jmp	Lj36
Lj35:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj36:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj41
	jmp	Lj42
Lj41:
	jmp	Lj33
Lj42:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj45
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj49
	movl	-12(%ebp),%eax
	movb	$0,24(%eax)
	movl	-12(%ebp),%eax
	movb	$0,26(%eax)
	movl	-12(%ebp),%eax
	movl	$0,16(%eax)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movb	$1,25(%eax)
	movl	L_VMT_FPCOLHASH_TFPCOLORHASHTABLE$non_lazy_ptr-Lj34(%ebx),%edx
	movl	$0,%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__CREATE$$TFPCOLORHASHTABLE$stub
	movl	-12(%ebp),%edx
	movl	%eax,20(%edx)
Lj49:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj50
	call	LFPC_RERAISE$stub
Lj50:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj70
	jmp	Lj69
Lj70:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj68
	jmp	Lj69
Lj68:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj69:
Lj45:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj47
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj74
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj75
	jmp	Lj76
Lj75:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj76:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj74:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj73
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj73:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj47
Lj47:
Lj33:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPBASEDITHERER_$__DESTROY
_FPDITHERER_TFPBASEDITHERER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj83
	jmp	Lj84
Lj83:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj84:
	movl	-8(%ebp),%eax
	cmpl	$0,20(%eax)
	jne	Lj87
	jmp	Lj88
Lj87:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj88:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj93
	jmp	Lj92
Lj93:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj91
	jmp	Lj92
Lj91:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj92:
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPBASEDITHERER_$__SETUSEHASH$BOOLEAN
_FPDITHERER_TFPBASEDITHERER_$__SETUSEHASH$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj97
Lj97:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	25(%eax),%al
	cmpb	-4(%ebp),%al
	je	Lj98
	jmp	Lj99
Lj98:
	jmp	Lj96
Lj99:
	cmpb	$0,-4(%ebp)
	jne	Lj100
	jmp	Lj101
Lj100:
	movl	L_VMT_FPCOLHASH_TFPCOLORHASHTABLE$non_lazy_ptr-Lj97(%ebx),%edx
	movl	$0,%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__CREATE$$TFPCOLORHASHTABLE$stub
	movl	-8(%ebp),%edx
	movl	%eax,20(%edx)
	jmp	Lj108
Lj101:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,20(%eax)
Lj108:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,25(%eax)
Lj96:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPBASEDITHERER_$__SETSORTED$BOOLEAN
_FPDITHERER_TFPBASEDITHERER_$__SETSORTED$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,24(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPBASEDITHERER_$__PROGRESS$TOBJECT$TFPIMGPROGRESSSTAGE$BYTE$ANSISTRING$BOOLEAN
_FPDITHERER_TFPBASEDITHERER_$__PROGRESS$TOBJECT$TFPIMGPROGRESSSTAGE$BYTE$ANSISTRING$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj121
	jmp	Lj122
Lj121:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movb	16(%ebp),%al
	movb	%al,8(%esp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	8(%ebx),%ebx
	call	*%ebx
Lj122:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPBASEDITHERER_$__SUBTRACTCOLORINT$TFPCOLOR$TFPCOLOR$$INT64
_FPDITHERER_TFPBASEDITHERER_$__SUBTRACTCOLORINT$TFPCOLOR$TFPCOLOR$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shll	$8,%eax
	movl	-4(%ebp),%edx
	movw	2(%edx),%dx
	andw	$65280,%dx
	movzwl	%dx,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	4(%edx),%dx
	andw	$65280,%dx
	movzwl	%dx,%edx
	shrl	$8,%edx
	orl	%edx,%eax
	movl	$0,%edx
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shll	$8,%eax
	movl	-8(%ebp),%edx
	movw	2(%edx),%dx
	andw	$65280,%dx
	movzwl	%dx,%edx
	orl	%edx,%eax
	movl	-8(%ebp),%edx
	movw	4(%edx),%dx
	andw	$65280,%dx
	movzwl	%dx,%edx
	shrl	$8,%edx
	orl	%edx,%eax
	movl	$0,%edx
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,26(%eax)
	jne	Lj141
	jmp	Lj142
Lj141:
	movl	-4(%ebp),%eax
	movw	6(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shll	$16,%eax
	movl	$0,%edx
	orl	-28(%ebp),%eax
	orl	-24(%ebp),%edx
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	movl	-8(%ebp),%eax
	movw	6(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shll	$16,%eax
	movl	$0,%edx
	orl	-36(%ebp),%eax
	orl	-32(%ebp),%edx
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
Lj142:
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	-36(%ebp),%eax
	sbbl	-32(%ebp),%edx
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPBASEDITHERER_$__GETCOLORDINST$TFPCOLOR$TFPCOLOR$$LONGINT
_FPDITHERER_TFPBASEDITHERER_$__GETCOLORDINST$TFPCOLOR$TFPCOLOR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movl	$0,%ecx
	movl	-8(%ebp),%edx
	movw	(%edx),%dx
	andw	$65280,%dx
	movzwl	%dx,%edx
	shrl	$8,%edx
	movl	$0,%ebx
	subl	%edx,%eax
	sbbl	%ebx,%ecx
	movl	%eax,-28(%ebp)
	movl	%ecx,-24(%ebp)
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj155
	jg	Lj156
	cmpl	$0,%eax
	jb	Lj155
	jmp	Lj156
Lj155:
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	jmp	Lj159
Lj156:
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
Lj159:
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movw	2(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movl	$0,%ecx
	movl	-8(%ebp),%edx
	movw	2(%edx),%dx
	andw	$65280,%dx
	movzwl	%dx,%edx
	shrl	$8,%edx
	movl	$0,%ebx
	subl	%edx,%eax
	sbbl	%ebx,%ecx
	movl	%eax,-28(%ebp)
	movl	%ecx,-24(%ebp)
	movl	-28(%ebp),%edx
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj166
	jg	Lj167
	cmpl	$0,%edx
	jb	Lj166
	jmp	Lj167
Lj166:
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	jmp	Lj170
Lj167:
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
Lj170:
	movl	-20(%ebp),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	addl	%ebx,%eax
	adcl	%ecx,%edx
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movl	$0,%ecx
	movl	-8(%ebp),%edx
	movw	4(%edx),%dx
	andw	$65280,%dx
	movzwl	%dx,%edx
	shrl	$8,%edx
	movl	$0,%ebx
	subl	%edx,%eax
	sbbl	%ebx,%ecx
	movl	%eax,-28(%ebp)
	movl	%ecx,-24(%ebp)
	movl	-28(%ebp),%edx
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj177
	jg	Lj178
	cmpl	$0,%edx
	jb	Lj177
	jmp	Lj178
Lj177:
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	jmp	Lj181
Lj178:
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
Lj181:
	movl	-20(%ebp),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	addl	%ebx,%eax
	adcl	%ecx,%edx
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,26(%eax)
	jne	Lj184
	jmp	Lj185
Lj184:
	movl	-4(%ebp),%eax
	movw	6(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movl	$0,%ecx
	movl	-8(%ebp),%edx
	movw	6(%edx),%dx
	andw	$65280,%dx
	movzwl	%dx,%edx
	shrl	$8,%edx
	movl	$0,%ebx
	subl	%edx,%eax
	sbbl	%ebx,%ecx
	movl	%eax,-28(%ebp)
	movl	%ecx,-24(%ebp)
	movl	-28(%ebp),%edx
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj190
	jg	Lj191
	cmpl	$0,%edx
	jb	Lj190
	jmp	Lj191
Lj190:
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	jmp	Lj194
Lj191:
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
Lj194:
	movl	-20(%ebp),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	addl	%ebx,%eax
	adcl	%ecx,%edx
	movl	%eax,-20(%ebp)
Lj185:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPBASEDITHERER_$__SUBTRACTCOLOR$TFPCOLOR$TFPCOLOR$$TFPCOLOR
_FPDITHERER_TFPBASEDITHERER_$__SUBTRACTCOLOR$TFPCOLOR$TFPCOLOR$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPDITHERER_TFPBASEDITHERER_$__SUBTRACTCOLORINT$TFPCOLOR$TFPCOLOR$$INT64$stub
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
	movl	-36(%ebp),%edx
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj211
	jg	Lj212
	cmpl	$0,%edx
	jb	Lj211
	jmp	Lj212
Lj211:
	movl	-36(%ebp),%eax
	movl	-32(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	jmp	Lj215
Lj212:
	movl	-36(%ebp),%eax
	movl	-32(%ebp),%edx
Lj215:
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,26(%eax)
	jne	Lj218
	jmp	Lj219
Lj218:
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	andl	$-16777216,%eax
	movl	$0,%edx
	shrdl	$16,%edx,%eax
	shrl	$16,%edx
	movw	%ax,-14(%ebp)
	jmp	Lj222
Lj219:
	movw	$65535,-14(%ebp)
Lj222:
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	andl	$16711680,%eax
	movl	$0,%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movw	%ax,-20(%ebp)
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	andl	$65280,%eax
	movl	$0,%edx
	movw	%ax,-18(%ebp)
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	shldl	$8,%eax,%edx
	shll	$8,%eax
	movw	%ax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPBASEDITHERER_$__COLORCOMPARE$TFPCOLOR$TFPCOLOR$$SHORTINT
_FPDITHERER_TFPBASEDITHERER_$__COLORCOMPARE$TFPCOLOR$TFPCOLOR$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPDITHERER_TFPBASEDITHERER_$__SUBTRACTCOLORINT$TFPCOLOR$TFPCOLOR$$INT64$stub
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	$0,%edx
	jg	Lj241
	jl	Lj242
	cmpl	$0,%eax
	ja	Lj241
	jmp	Lj242
Lj241:
	movb	$1,-13(%ebp)
	jmp	Lj245
Lj242:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj246
	jg	Lj247
	cmpl	$0,%eax
	jb	Lj246
	jmp	Lj247
Lj246:
	movb	$-1,-13(%ebp)
	jmp	Lj250
Lj247:
	movb	$0,-13(%ebp)
Lj250:
Lj245:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPBASEDITHERER_$__QUICKSORT$LONGINT$LONGINT
_FPDITHERER_TFPBASEDITHERER_$__QUICKSORT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj255
	jmp	Lj256
Lj255:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-44(%ebp)
	movl	%edx,-40(%ebp)
	movl	-44(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-40(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	.align 2
Lj267:
	jmp	Lj271
	.align 2
Lj270:
	incl	-16(%ebp)
Lj271:
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jle	Lj273
	jmp	Lj272
Lj273:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-44(%ebp)
	movl	%edx,-40(%ebp)
	leal	-44(%ebp),%edx
	leal	-28(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_FPDITHERER_TFPBASEDITHERER_$__COLORCOMPARE$TFPCOLOR$TFPCOLOR$$SHORTINT$stub
	cmpb	$0,%al
	jle	Lj270
	jmp	Lj272
Lj272:
	jmp	Lj285
	.align 2
Lj284:
	decl	-20(%ebp)
Lj285:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-44(%ebp)
	movl	%edx,-40(%ebp)
	leal	-44(%ebp),%edx
	leal	-28(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_FPDITHERER_TFPBASEDITHERER_$__COLORCOMPARE$TFPCOLOR$TFPCOLOR$$SHORTINT$stub
	cmpb	$1,%al
	je	Lj284
	jmp	Lj286
Lj286:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj297
	jmp	Lj298
Lj297:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-44(%ebp)
	movl	%edx,-40(%ebp)
	movl	-44(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-40(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-44(%ebp)
	movl	%edx,-40(%ebp)
	leal	-44(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*104(%ebx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	leal	-36(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*104(%ebx)
Lj298:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj269
	jmp	Lj267
Lj269:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-44(%ebp)
	movl	%edx,-40(%ebp)
	leal	-44(%ebp),%edx
	leal	-28(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_FPDITHERER_TFPBASEDITHERER_$__COLORCOMPARE$TFPCOLOR$TFPCOLOR$$SHORTINT$stub
	testb	%al,%al
	jne	Lj321
	jmp	Lj322
Lj321:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-44(%ebp)
	movl	%edx,-40(%ebp)
	leal	-44(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*104(%ebx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	leal	-28(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*104(%ebx)
Lj322:
	movl	-20(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPDITHERER_TFPBASEDITHERER_$__QUICKSORT$LONGINT$LONGINT$stub
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPDITHERER_TFPBASEDITHERER_$__QUICKSORT$LONGINT$LONGINT$stub
Lj256:
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPBASEDITHERER_$__SORTPALETTE
_FPDITHERER_TFPBASEDITHERER_$__SORTPALETTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_FPDITHERER_TFPBASEDITHERER_$__QUICKSORT$LONGINT$LONGINT$stub
	movl	-4(%ebp),%eax
	movb	$1,24(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPBASEDITHERER_$__FINDBESTCOLOR$TFPCOLOR$LONGINT$$LONGINT
_FPDITHERER_TFPBASEDITHERER_$__FINDBESTCOLOR$TFPCOLOR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	call	Lj374
Lj374:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-52(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	$2147483647,-28(%ebp)
	movl	$0,-24(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,25(%eax)
	jne	Lj379
	jmp	Lj380
Lj379:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__GET$TFPCOLOR$$POINTER$stub
	movl	%eax,-44(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	jne	Lj387
	jmp	Lj388
Lj387:
	movl	-44(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-44(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj373
Lj388:
Lj380:
	movl	-12(%ebp),%eax
	cmpb	$0,24(%eax)
	jne	Lj393
	jmp	Lj394
Lj393:
	movl	$0,-36(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-40(%ebp)
	jmp	Lj402
	.align 2
Lj401:
	movl	-40(%ebp),%eax
	movl	-36(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-60(%ebp)
	movl	%edx,-56(%ebp)
	leal	-60(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPDITHERER_TFPBASEDITHERER_$__COLORCOMPARE$TFPCOLOR$TFPCOLOR$$SHORTINT$stub
	movsbl	%al,%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj418
	jmp	Lj419
Lj418:
	movl	-20(%ebp),%eax
	decl	%eax
	movl	%eax,-40(%ebp)
	jmp	Lj422
Lj419:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj423
	jmp	Lj424
Lj423:
	movl	-20(%ebp),%eax
	incl	%eax
	movl	%eax,-36(%ebp)
	jmp	Lj427
Lj424:
	jmp	Lj403
Lj427:
Lj422:
Lj402:
	movl	-36(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jle	Lj401
	jmp	Lj403
Lj403:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-60(%ebp)
	movl	%edx,-56(%ebp)
	leal	-60(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPDITHERER_TFPBASEDITHERER_$__GETCOLORDINST$TFPCOLOR$TFPCOLOR$$LONGINT$stub
	movl	%eax,-28(%ebp)
	jmp	Lj442
Lj394:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%esi
	decl	%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj444
	decl	-20(%ebp)
	.align 2
Lj445:
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-60(%ebp)
	movl	%edx,-56(%ebp)
	leal	-60(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPDITHERER_TFPBASEDITHERER_$__GETCOLORDINST$TFPCOLOR$TFPCOLOR$$LONGINT$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj460
	jmp	Lj461
Lj460:
	movl	-32(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj461:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj466
	jmp	Lj467
Lj466:
	jmp	Lj444
Lj467:
	cmpl	-20(%ebp),%esi
	jg	Lj445
Lj444:
Lj442:
	movl	-12(%ebp),%eax
	cmpb	$0,25(%eax)
	jne	Lj468
	jmp	Lj469
Lj468:
	movl	$8,%eax
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
	movl	%eax,-44(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj474
	jmp	Lj475
Lj474:
	movl	L_VMT_FPDITHERER_FPDITHEREREXCEPTION$non_lazy_ptr-Lj374(%ebx),%edx
	movl	L_$FPDITHERER$_Ld5$non_lazy_ptr-Lj374(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj374(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj475:
	movl	-44(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,(%edx)
	movl	-44(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	-44(%ebp),%ecx
	leal	-52(%ebp),%edx
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__INSERT$TFPCOLOR$POINTER$stub
Lj469:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,(%eax)
	movl	-28(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj373:
	movl	-16(%ebp),%eax
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPBASEDITHERER_$__INTERNALDITHER$TFPCUSTOMIMAGE$TFPCUSTOMIMAGE
_FPDITHERER_TFPBASEDITHERER_$__INTERNALDITHER$TFPCUSTOMIMAGE$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,16(%eax)
	movb	$0,-25(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	32(%edx),%ecx
	movl	28(%eax),%eax
	imull	%eax,%ecx
	shll	$2,%ecx
	movl	$1374389535,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj504
	jmp	Lj505
Lj504:
	movl	$-1,-32(%ebp)
Lj505:
	movl	$0,-36(%ebp)
	movb	$1,-37(%ebp)
	movl	$0,4(%esp)
	movb	$0,8(%esp)
	leal	-37(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	movl	$0,%edx
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*148(%ebx)
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
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	24(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	28(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	32(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*148(%ebx)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj547
	decl	-20(%ebp)
	.align 2
Lj548:
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	32(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj550
	decl	-16(%ebp)
	.align 2
Lj551:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-48(%ebp)
	movl	%edx,-44(%ebp)
	leal	-48(%ebp),%edx
	leal	-24(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edi
	movl	(%edi),%edi
	call	*104(%edi)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub
	addl	$4,-36(%ebp)
	movl	-36(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jae	Lj572
	jmp	Lj573
Lj572:
	movl	-36(%ebp),%eax
	xorl	%edx,%edx
	divl	-32(%ebp)
	movzbl	-25(%ebp),%edx
	addl	%edx,%eax
	movb	%al,-25(%ebp)
	movl	-36(%ebp),%eax
	xorl	%edx,%edx
	divl	-32(%ebp)
	movl	%edx,-36(%ebp)
	movl	$0,4(%esp)
	leal	-37(%ebp),%eax
	movl	%eax,(%esp)
	movb	-25(%ebp),%al
	movb	%al,8(%esp)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$1,%ecx
	movl	-12(%ebp),%edi
	movl	(%edi),%edi
	call	*108(%edi)
	movb	-37(%ebp),%al
	testb	%al,%al
	je	Lj590
	jmp	Lj591
Lj590:
	jmp	Lj496
Lj591:
Lj573:
	cmpl	-16(%ebp),%ebx
	jg	Lj551
Lj550:
	cmpl	-20(%ebp),%esi
	jg	Lj548
Lj547:
	movl	$0,4(%esp)
	movb	$100,8(%esp)
	leal	-37(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
Lj496:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__CREATE$TFPPALETTE$$TFPFLOYDSTEINBERGDITHERER
_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__CREATE$TFPPALETTE$$TFPFLOYDSTEINBERGDITHERER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj606
	jmp	Lj607
Lj606:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj607:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj612
	jmp	Lj613
Lj612:
	jmp	Lj604
Lj613:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj616
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj620
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPDITHERER_TFPBASEDITHERER_$__CREATE$TFPPALETTE$$TFPBASEDITHERER$stub
	movl	-12(%ebp),%eax
	movl	$0,28(%eax)
Lj620:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj621
	call	LFPC_RERAISE$stub
Lj621:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj633
	jmp	Lj632
Lj633:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj631
	jmp	Lj632
Lj631:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj632:
Lj616:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj618
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj637
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj638
	jmp	Lj639
Lj638:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj639:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj637:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj636
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj636:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj618
Lj618:
Lj604:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__GETERROR$TFPCOLOR$TFPCOLOR$$TFPPIXELREAL
_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__GETERROR$TFPCOLOR$TFPCOLOR$$TFPPIXELREAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,26(%eax)
	jne	Lj646
	jmp	Lj647
Lj646:
	movl	-4(%ebp),%eax
	movw	6(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movl	$0,%ecx
	movl	-8(%ebp),%edx
	movw	6(%edx),%dx
	andw	$65280,%dx
	movzwl	%dx,%edx
	shrl	$8,%edx
	movl	$0,%ebx
	subl	%edx,%eax
	sbbl	%ebx,%ecx
	movl	%eax,-56(%ebp)
	movl	%ecx,-52(%ebp)
	fildq	-56(%ebp)
	fstpl	-44(%ebp)
Lj647:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movl	$0,%ecx
	movl	-8(%ebp),%edx
	movw	(%edx),%dx
	andw	$65280,%dx
	movzwl	%dx,%edx
	shrl	$8,%edx
	movl	$0,%ebx
	subl	%edx,%eax
	sbbl	%ebx,%ecx
	movl	%eax,-56(%ebp)
	movl	%ecx,-52(%ebp)
	fildq	-56(%ebp)
	fstpl	-36(%ebp)
	movl	-4(%ebp),%eax
	movw	2(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movl	$0,%ecx
	movl	-8(%ebp),%edx
	movw	2(%edx),%dx
	andw	$65280,%dx
	movzwl	%dx,%edx
	shrl	$8,%edx
	movl	$0,%ebx
	subl	%edx,%eax
	sbbl	%ebx,%ecx
	movl	%eax,-56(%ebp)
	movl	%ecx,-52(%ebp)
	fildq	-56(%ebp)
	fstpl	-28(%ebp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movl	$0,%ecx
	movl	-8(%ebp),%edx
	movw	4(%edx),%dx
	andw	$65280,%dx
	movzwl	%dx,%edx
	shrl	$8,%edx
	movl	$0,%ebx
	subl	%edx,%eax
	sbbl	%ebx,%ecx
	movl	%eax,-56(%ebp)
	movl	%ecx,-52(%ebp)
	fildq	-56(%ebp)
	fstpl	-20(%ebp)
	movl	8(%ebp),%edi
	leal	-44(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__COLOR2REAL$TFPCOLOR$$TFPPIXELREAL
_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__COLOR2REAL$TFPCOLOR$$TFPPIXELREAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%esi,-88(%ebp)
	movl	%edi,-84(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,26(%eax)
	jne	Lj660
	jmp	Lj661
Lj660:
	movl	-4(%ebp),%eax
	movw	6(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$0,-52(%ebp)
	fildq	-56(%ebp)
	fstpl	-44(%ebp)
Lj661:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$0,-60(%ebp)
	fildq	-64(%ebp)
	fstpl	-36(%ebp)
	movl	-4(%ebp),%eax
	movw	2(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	$0,-68(%ebp)
	fildq	-72(%ebp)
	fstpl	-28(%ebp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	$0,-76(%ebp)
	fildq	-80(%ebp)
	fstpl	-20(%ebp)
	movl	-12(%ebp),%edi
	leal	-44(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	-88(%ebp),%esi
	movl	-84(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__REAL2COLOR$TFPPIXELREAL$$TFPCOLOR
_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__REAL2COLOR$TFPPIXELREAL$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	call	Lj673
Lj673:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-56(%ebp),%edi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	L_$FPDITHERER$_Ld7$non_lazy_ptr-Lj673(%ebx),%eax
	fldl	(%eax)
	fldl	-48(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj674
	jmp	Lj675
Lj674:
	movl	L_$FPDITHERER$_Ld7$non_lazy_ptr-Lj673(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	L_$FPDITHERER$_Ld7$non_lazy_ptr-Lj673(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
Lj675:
	fldz
	fldl	-48(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj678
	jmp	Lj679
Lj678:
	fldz
	fstpl	-48(%ebp)
Lj679:
	movl	L_$FPDITHERER$_Ld7$non_lazy_ptr-Lj673(%ebx),%eax
	fldl	(%eax)
	fldl	-40(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj682
	jmp	Lj683
Lj682:
	movl	L_$FPDITHERER$_Ld7$non_lazy_ptr-Lj673(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	L_$FPDITHERER$_Ld7$non_lazy_ptr-Lj673(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-36(%ebp)
Lj683:
	fldz
	fldl	-40(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj686
	jmp	Lj687
Lj686:
	fldz
	fstpl	-40(%ebp)
Lj687:
	movl	L_$FPDITHERER$_Ld7$non_lazy_ptr-Lj673(%ebx),%eax
	fldl	(%eax)
	fldl	-32(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj690
	jmp	Lj691
Lj690:
	movl	L_$FPDITHERER$_Ld7$non_lazy_ptr-Lj673(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	L_$FPDITHERER$_Ld7$non_lazy_ptr-Lj673(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-28(%ebp)
Lj691:
	fldz
	fldl	-32(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj694
	jmp	Lj695
Lj694:
	fldz
	fstpl	-32(%ebp)
Lj695:
	movl	-8(%ebp),%eax
	cmpb	$0,26(%eax)
	jne	Lj698
	jmp	Lj699
Lj698:
	movl	L_$FPDITHERER$_Ld7$non_lazy_ptr-Lj673(%ebx),%eax
	fldl	(%eax)
	fldl	-56(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj700
	jmp	Lj701
Lj700:
	movl	L_$FPDITHERER$_Ld7$non_lazy_ptr-Lj673(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	L_$FPDITHERER$_Ld7$non_lazy_ptr-Lj673(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-52(%ebp)
Lj701:
	fldz
	fldl	-56(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj704
	jmp	Lj705
Lj704:
	fldz
	fstpl	-56(%ebp)
Lj705:
Lj699:
	fldl	-48(%ebp)
	fistpq	-64(%ebp)
	fwait
	movw	-64(%ebp),%ax
	movw	%ax,-24(%ebp)
	movzwl	-24(%ebp),%eax
	shll	$8,%eax
	movzwl	-24(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-24(%ebp)
	fldl	-40(%ebp)
	fistpq	-64(%ebp)
	fwait
	movw	-64(%ebp),%ax
	movw	%ax,-22(%ebp)
	movzwl	-22(%ebp),%eax
	shll	$8,%eax
	movzwl	-22(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-22(%ebp)
	fldl	-32(%ebp)
	fistpq	-64(%ebp)
	fwait
	movw	-64(%ebp),%ax
	movw	%ax,-20(%ebp)
	movzwl	-20(%ebp),%eax
	shll	$8,%eax
	movzwl	-20(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-20(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,26(%eax)
	jne	Lj720
	jmp	Lj721
Lj720:
	fldl	-56(%ebp)
	fistpq	-64(%ebp)
	fwait
	movw	-64(%ebp),%ax
	movw	%ax,-18(%ebp)
	movzwl	-18(%ebp),%eax
	shll	$8,%eax
	movzwl	-18(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-18(%ebp)
	jmp	Lj726
Lj721:
	movw	$65535,-18(%ebp)
Lj726:
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__CREATEPIXELLINE$PFSPIXELLINE$LONGINT
_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__CREATEPIXELLINE$PFSPIXELLINE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	movl	%edi,-64(%ebp)
	call	Lj732
Lj732:
	popl	-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$8,%eax
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj737
	jmp	Lj738
Lj737:
	movl	-60(%ebp),%eax
	movl	L_VMT_FPDITHERER_FPDITHEREREXCEPTION$non_lazy_ptr-Lj732(%eax),%edx
	movl	-60(%ebp),%eax
	movl	L_$FPDITHERER$_Ld5$non_lazy_ptr-Lj732(%eax),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	movl	-60(%ebp),%ebx
	leal	La4-Lj732(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj738:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	$0,4(%eax)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	32(%eax),%edx
	addl	$2,%edx
	shll	$5,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj751
	jmp	Lj752
Lj751:
	movl	-60(%ebp),%eax
	movl	L_VMT_FPDITHERER_FPDITHEREREXCEPTION$non_lazy_ptr-Lj732(%eax),%edx
	movl	-60(%ebp),%eax
	movl	L_$FPDITHERER$_Ld5$non_lazy_ptr-Lj732(%eax),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La5:
	movl	%ebp,%ecx
	movl	-60(%ebp),%ebx
	leal	La5-Lj732(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj752:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	28(%eax),%eax
	decl	%eax
	cmpl	-8(%ebp),%eax
	jg	Lj759
	jmp	Lj760
Lj759:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%edi
	movl	-60(%ebp),%edx
	movl	L_TC_FPDITHERER_FSNULLPIXEL$non_lazy_ptr-Lj732(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	32(%eax),%eax
	incl	%eax
	shll	$5,%eax
	leal	(%edx,%eax),%edi
	movl	-60(%ebp),%edx
	movl	L_TC_FPDITHERER_FSNULLPIXEL$non_lazy_ptr-Lj732(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	32(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj766
	decl	-16(%ebp)
	.align 2
Lj767:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-56(%ebp)
	movl	%edx,-52(%ebp)
	leal	-56(%ebp),%edx
	leal	-48(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__COLOR2REAL$TFPCOLOR$$TFPPIXELREAL$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	shll	$5,%eax
	leal	(%edx,%eax),%edi
	leal	-48(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	cmpl	-16(%ebp),%ebx
	jg	Lj767
Lj766:
	jmp	Lj782
Lj760:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	32(%eax),%edx
	incl	%edx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%edx
	jl	Lj784
	decl	-16(%ebp)
	.align 2
Lj785:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%ecx
	movl	-16(%ebp),%eax
	shll	$5,%eax
	leal	(%ecx,%eax),%edi
	movl	-60(%ebp),%eax
	movl	L_TC_FPDITHERER_FSNULLPIXEL$non_lazy_ptr-Lj732(%eax),%ecx
	movl	%ecx,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	cmpl	-16(%ebp),%edx
	jg	Lj785
Lj784:
Lj782:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	movl	-64(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__DISTRIBUTEERRORS$PFSPIXELLINE$LONGINT$TFPCUSTOMIMAGE
_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__DISTRIBUTEERRORS$PFSPIXELLINE$LONGINT$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$232,%esp
	movl	%ebx,-224(%ebp)
	movl	%esi,-220(%ebp)
	movl	%edi,-216(%ebp)
	call	Lj789
Lj789:
	popl	-148(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	32(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	cltd
	movl	$2,%ecx
	idivl	%ecx
	testl	%edx,%edx
	je	Lj792
	jmp	Lj793
Lj792:
	movb	$1,-33(%ebp)
	movl	$1,-16(%ebp)
	jmp	Lj798
Lj793:
	movb	$-1,-33(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj798:
	movl	-20(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj803
	jmp	Lj804
Lj803:
	jmp	Lj788
Lj804:
	.align 2
Lj805:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%eax
	shll	$5,%eax
	leal	(%edx,%eax),%edx
	movl	-12(%ebp),%eax
	call	L_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__REAL2COLOR$TFPPIXELREAL$$TFPCOLOR$stub
	movl	%eax,-48(%ebp)
	movl	%edx,-44(%ebp)
	movl	-48(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-44(%ebp),%eax
	movl	%eax,-28(%ebp)
	leal	-24(%ebp),%ecx
	leal	-32(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*104(%ebx)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	decl	%edx
	movl	-8(%ebp),%ecx
	movl	8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub
	leal	-80(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-24(%ebp),%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-48(%ebp)
	movl	%edx,-44(%ebp)
	leal	-48(%ebp),%ecx
	leal	-32(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__GETERROR$TFPCOLOR$TFPCOLOR$$TFPPIXELREAL$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%eax
	shll	$5,%eax
	leal	(%edx,%eax),%edi
	leal	-80(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,-140(%ebp)
	movsbl	-33(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-208(%ebp)
	shll	$5,-208(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%ecx
	movsbl	-33(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%eax,%edx
	shll	$5,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%esi
	movl	-16(%ebp),%eax
	shll	$5,%eax
	movl	-148(%ebp),%edi
	movl	L_$FPDITHERER$_Ld8$non_lazy_ptr-Lj789(%edi),%ebx
	fldl	(%ebx)
	fldl	8(%esi,%eax)
	fmulp	%st,%st(1)
	fldl	8(%ecx,%edx)
	faddp	%st,%st(1)
	movl	-140(%ebp),%edx
	movl	-208(%ebp),%eax
	fstpl	8(%edx,%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,-136(%ebp)
	movsbl	-33(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%edx,%eax
	movl	%eax,-204(%ebp)
	shll	$5,-204(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%ecx
	movsbl	-33(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%edx,%eax
	movl	%eax,%edx
	shll	$5,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%esi
	movl	-16(%ebp),%eax
	movl	%eax,%edi
	shll	$5,%edi
	movl	-148(%ebp),%ebx
	movl	L_$FPDITHERER$_Ld8$non_lazy_ptr-Lj789(%ebx),%eax
	fldl	(%eax)
	fldl	16(%esi,%edi)
	fmulp	%st,%st(1)
	fldl	16(%ecx,%edx)
	faddp	%st,%st(1)
	movl	-136(%ebp),%eax
	movl	-204(%ebp),%edx
	fstpl	16(%eax,%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,-132(%ebp)
	movsbl	-33(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%edx,%eax
	movl	%eax,-200(%ebp)
	shll	$5,-200(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%ecx
	movsbl	-33(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%edx,%eax
	movl	%eax,%edx
	shll	$5,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%ebx
	movl	-16(%ebp),%eax
	movl	%eax,%esi
	shll	$5,%esi
	movl	-148(%ebp),%eax
	movl	L_$FPDITHERER$_Ld8$non_lazy_ptr-Lj789(%eax),%edi
	fldl	(%edi)
	fldl	24(%ebx,%esi)
	fmulp	%st,%st(1)
	fldl	24(%ecx,%edx)
	faddp	%st,%st(1)
	movl	-132(%ebp),%eax
	movl	-200(%ebp),%edx
	fstpl	24(%eax,%edx)
	movl	-12(%ebp),%eax
	cmpb	$0,26(%eax)
	jne	Lj848
	jmp	Lj849
Lj848:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,-144(%ebp)
	movsbl	-33(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-212(%ebp)
	shll	$5,-212(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%ecx
	movsbl	-33(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%eax,%edx
	shll	$5,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%esi
	movl	-16(%ebp),%eax
	shll	$5,%eax
	movl	-148(%ebp),%ebx
	movl	L_$FPDITHERER$_Ld8$non_lazy_ptr-Lj789(%ebx),%edi
	fldl	(%edi)
	fldl	(%esi,%eax)
	fmulp	%st,%st(1)
	fldl	(%ecx,%edx)
	faddp	%st,%st(1)
	movl	-144(%ebp),%eax
	movl	-212(%ebp),%edx
	fstpl	(%eax,%edx)
Lj849:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-88(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-152(%ebp)
	shll	$5,-152(%ebp)
	movl	-40(%ebp),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%eax
	movl	%eax,%ecx
	shll	$5,%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%esi
	movl	-16(%ebp),%eax
	shll	$5,%eax
	movl	-148(%ebp),%ebx
	movl	L_$FPDITHERER$_Ld9$non_lazy_ptr-Lj789(%ebx),%edi
	fldl	(%edi)
	fldl	8(%esi,%eax)
	fmulp	%st,%st(1)
	fldl	8(%edx,%ecx)
	faddp	%st,%st(1)
	movl	-88(%ebp),%eax
	movl	-152(%ebp),%edx
	fstpl	8(%eax,%edx)
	movl	-40(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-92(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-160(%ebp)
	shll	$5,-160(%ebp)
	movl	-40(%ebp),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%eax
	movl	%eax,%ecx
	shll	$5,%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%esi
	movl	-16(%ebp),%eax
	movl	%eax,%ebx
	shll	$5,%ebx
	movl	-148(%ebp),%edi
	movl	L_$FPDITHERER$_Ld9$non_lazy_ptr-Lj789(%edi),%eax
	fldl	(%eax)
	fldl	16(%esi,%ebx)
	fmulp	%st,%st(1)
	fldl	16(%edx,%ecx)
	faddp	%st,%st(1)
	movl	-92(%ebp),%edx
	movl	-160(%ebp),%eax
	fstpl	16(%edx,%eax)
	movl	-40(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-84(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-156(%ebp)
	shll	$5,-156(%ebp)
	movl	-40(%ebp),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%eax
	movl	%eax,%ecx
	shll	$5,%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%esi
	movl	-16(%ebp),%eax
	movl	%eax,%ebx
	shll	$5,%ebx
	movl	-148(%ebp),%eax
	movl	L_$FPDITHERER$_Ld9$non_lazy_ptr-Lj789(%eax),%edi
	fldl	(%edi)
	fldl	24(%esi,%ebx)
	fmulp	%st,%st(1)
	fldl	24(%edx,%ecx)
	faddp	%st,%st(1)
	movl	-84(%ebp),%edx
	movl	-156(%ebp),%eax
	fstpl	24(%edx,%eax)
	movl	-12(%ebp),%eax
	cmpb	$0,26(%eax)
	jne	Lj860
	jmp	Lj861
Lj860:
	movl	-40(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-96(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-164(%ebp)
	shll	$5,-164(%ebp)
	movl	-40(%ebp),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%eax
	movl	%eax,%ecx
	shll	$5,%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%esi
	movl	-16(%ebp),%eax
	movl	%eax,%ebx
	shll	$5,%ebx
	movl	-148(%ebp),%edi
	movl	L_$FPDITHERER$_Ld9$non_lazy_ptr-Lj789(%edi),%eax
	fldl	(%eax)
	fldl	(%esi,%ebx)
	fmulp	%st,%st(1)
	fldl	(%edx,%ecx)
	faddp	%st,%st(1)
	movl	-96(%ebp),%edx
	movl	-164(%ebp),%eax
	fstpl	(%edx,%eax)
Lj861:
	movl	-40(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-116(%ebp)
	movsbl	-33(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-172(%ebp)
	shll	$5,-172(%ebp)
	movl	-40(%ebp),%eax
	movl	(%eax),%ecx
	movsbl	-33(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%edx,%eax
	movl	%eax,%edx
	shll	$5,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%esi
	movl	-16(%ebp),%eax
	movl	%eax,%ebx
	shll	$5,%ebx
	movl	-148(%ebp),%edi
	movl	L_$FPDITHERER$_Ld10$non_lazy_ptr-Lj789(%edi),%eax
	fldl	(%eax)
	fldl	8(%esi,%ebx)
	fmulp	%st,%st(1)
	fldl	8(%ecx,%edx)
	faddp	%st,%st(1)
	movl	-116(%ebp),%edx
	movl	-172(%ebp),%eax
	fstpl	8(%edx,%eax)
	movl	-40(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-100(%ebp)
	movsbl	-33(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-176(%ebp)
	shll	$5,-176(%ebp)
	movl	-40(%ebp),%eax
	movl	(%eax),%ecx
	movsbl	-33(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%edx,%eax
	movl	%eax,%edx
	shll	$5,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%esi
	movl	-16(%ebp),%eax
	movl	%eax,%ebx
	shll	$5,%ebx
	movl	-148(%ebp),%edi
	movl	L_$FPDITHERER$_Ld10$non_lazy_ptr-Lj789(%edi),%eax
	fldl	(%eax)
	fldl	16(%esi,%ebx)
	fmulp	%st,%st(1)
	fldl	16(%ecx,%edx)
	faddp	%st,%st(1)
	movl	-100(%ebp),%eax
	movl	-176(%ebp),%edx
	fstpl	16(%eax,%edx)
	movl	-40(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-108(%ebp)
	movsbl	-33(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-168(%ebp)
	shll	$5,-168(%ebp)
	movl	-40(%ebp),%eax
	movl	(%eax),%ecx
	movsbl	-33(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%eax,%edx
	shll	$5,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%esi
	movl	-16(%ebp),%eax
	shll	$5,%eax
	movl	-148(%ebp),%edi
	movl	L_$FPDITHERER$_Ld10$non_lazy_ptr-Lj789(%edi),%ebx
	fldl	(%ebx)
	fldl	24(%esi,%eax)
	fmulp	%st,%st(1)
	fldl	24(%ecx,%edx)
	faddp	%st,%st(1)
	movl	-108(%ebp),%edx
	movl	-168(%ebp),%eax
	fstpl	24(%edx,%eax)
	movl	-12(%ebp),%eax
	cmpb	$0,26(%eax)
	jne	Lj870
	jmp	Lj871
Lj870:
	movl	-40(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-128(%ebp)
	movsbl	-33(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%edx,%eax
	movl	%eax,-192(%ebp)
	shll	$5,-192(%ebp)
	movl	-40(%ebp),%eax
	movl	(%eax),%ecx
	movsbl	-33(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%edx,%eax
	movl	%eax,%edx
	shll	$5,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%esi
	movl	-16(%ebp),%eax
	movl	%eax,%edi
	shll	$5,%edi
	movl	-148(%ebp),%ebx
	movl	L_$FPDITHERER$_Ld10$non_lazy_ptr-Lj789(%ebx),%eax
	fldl	(%eax)
	fldl	(%esi,%edi)
	fmulp	%st,%st(1)
	fldl	(%ecx,%edx)
	faddp	%st,%st(1)
	movl	-128(%ebp),%edx
	movl	-192(%ebp),%eax
	fstpl	(%edx,%eax)
Lj871:
	movl	-40(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-120(%ebp)
	movsbl	-33(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,-184(%ebp)
	shll	$5,-184(%ebp)
	movl	-40(%ebp),%eax
	movl	(%eax),%ecx
	movsbl	-33(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	shll	$5,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%esi
	movl	-16(%ebp),%eax
	movl	%eax,%edi
	shll	$5,%edi
	movl	-148(%ebp),%ebx
	movl	L_$FPDITHERER$_Ld11$non_lazy_ptr-Lj789(%ebx),%eax
	fldl	(%eax)
	fldl	8(%esi,%edi)
	fmulp	%st,%st(1)
	fldl	8(%ecx,%edx)
	faddp	%st,%st(1)
	movl	-120(%ebp),%edx
	movl	-184(%ebp),%eax
	fstpl	8(%edx,%eax)
	movl	-40(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-104(%ebp)
	movsbl	-33(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,-188(%ebp)
	shll	$5,-188(%ebp)
	movl	-40(%ebp),%eax
	movl	(%eax),%ecx
	movsbl	-33(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%eax,%edx
	shll	$5,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%esi
	movl	-16(%ebp),%eax
	movl	%eax,%ebx
	shll	$5,%ebx
	movl	-148(%ebp),%edi
	movl	L_$FPDITHERER$_Ld11$non_lazy_ptr-Lj789(%edi),%eax
	fldl	(%eax)
	fldl	16(%esi,%ebx)
	fmulp	%st,%st(1)
	fldl	16(%ecx,%edx)
	faddp	%st,%st(1)
	movl	-104(%ebp),%edx
	movl	-188(%ebp),%eax
	fstpl	16(%edx,%eax)
	movl	-40(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-112(%ebp)
	movsbl	-33(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,-180(%ebp)
	shll	$5,-180(%ebp)
	movl	-40(%ebp),%eax
	movl	(%eax),%ecx
	movsbl	-33(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	shll	$5,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%ebx
	movl	-16(%ebp),%eax
	movl	%eax,%esi
	shll	$5,%esi
	movl	-148(%ebp),%edi
	movl	L_$FPDITHERER$_Ld11$non_lazy_ptr-Lj789(%edi),%eax
	fldl	(%eax)
	fldl	24(%ebx,%esi)
	fmulp	%st,%st(1)
	fldl	24(%ecx,%edx)
	faddp	%st,%st(1)
	movl	-112(%ebp),%edx
	movl	-180(%ebp),%eax
	fstpl	24(%edx,%eax)
	movl	-12(%ebp),%eax
	cmpb	$0,26(%eax)
	jne	Lj880
	jmp	Lj881
Lj880:
	movl	-40(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-124(%ebp)
	movsbl	-33(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,-196(%ebp)
	shll	$5,-196(%ebp)
	movl	-40(%ebp),%eax
	movl	(%eax),%ecx
	movsbl	-33(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	shll	$5,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%esi
	movl	-16(%ebp),%eax
	movl	%eax,%ebx
	shll	$5,%ebx
	movl	-148(%ebp),%eax
	movl	L_$FPDITHERER$_Ld11$non_lazy_ptr-Lj789(%eax),%edi
	fldl	(%edi)
	fldl	(%esi,%ebx)
	fmulp	%st,%st(1)
	fldl	(%ecx,%edx)
	faddp	%st,%st(1)
	movl	-124(%ebp),%edx
	movl	-196(%ebp),%eax
	fstpl	(%edx,%eax)
Lj881:
	movsbl	-33(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj807
	jmp	Lj886
Lj886:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj807
	jmp	Lj805
Lj807:
Lj788:
	movl	-224(%ebp),%ebx
	movl	-220(%ebp),%esi
	movl	-216(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__DELETEALLPIXELLINES$PFSPIXELLINE
_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__DELETEALLPIXELLINES$PFSPIXELLINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	jmp	Lj890
	.align 2
Lj889:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,(%eax)
Lj890:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj889
	jmp	Lj891
Lj891:
	leave
	ret

.text
	.align 4
.globl	_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__INTERNALDITHER$TFPCUSTOMIMAGE$TFPCUSTOMIMAGE
_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__INTERNALDITHER$TFPCUSTOMIMAGE$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-84(%ebp)
	movl	%esi,-80(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,16(%edx)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj904
	jmp	Lj905
Lj904:
	jmp	Lj900
Lj905:
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	movl	$0,%edx
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*148(%ebx)
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-76(%ebp)
	testl	%eax,%eax
	jne	Lj912
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
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	24(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	28(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	32(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*148(%ebx)
	movb	$0,-21(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	28(%eax),%ecx
	shll	$2,%ecx
	movl	$1374389535,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj936
	jmp	Lj937
Lj936:
	movl	$-1,-28(%ebp)
Lj937:
	movl	$0,-32(%ebp)
	movb	$1,-33(%ebp)
	movl	$0,4(%esp)
	movb	$0,8(%esp)
	leal	-33(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movb	-33(%ebp),%al
	testb	%al,%al
	je	Lj956
	jmp	Lj957
Lj956:
	jmp	Lj915
Lj957:
	movl	-12(%ebp),%eax
	leal	28(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	L_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__CREATEPIXELLINE$PFSPIXELLINE$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	leal	4(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$1,%ecx
	call	L_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__CREATEPIXELLINE$PFSPIXELLINE$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	28(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj971
	decl	-16(%ebp)
	.align 2
Lj972:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	leal	28(%eax),%edx
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__DISTRIBUTEERRORS$PFSPIXELLINE$LONGINT$TFPCUSTOMIMAGE$stub
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	-12(%ebp),%edx
	movl	4(%eax),%eax
	movl	%eax,28(%edx)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-20(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	leal	4(%eax),%edx
	movl	-16(%ebp),%ecx
	addl	$2,%ecx
	movl	-12(%ebp),%eax
	call	L_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__CREATEPIXELLINE$PFSPIXELLINE$LONGINT$stub
	addl	$4,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jae	Lj995
	jmp	Lj996
Lj995:
	movl	-32(%ebp),%eax
	xorl	%edx,%edx
	divl	-28(%ebp)
	movzbl	-21(%ebp),%edx
	addl	%edx,%eax
	movb	%al,-21(%ebp)
	movl	-32(%ebp),%eax
	xorl	%edx,%edx
	divl	-28(%ebp)
	movl	%edx,-32(%ebp)
	movl	$0,4(%esp)
	leal	-33(%ebp),%eax
	movl	%eax,(%esp)
	movb	-21(%ebp),%al
	movb	%al,8(%esp)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$1,%ecx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*108(%esi)
	movb	-33(%ebp),%al
	testb	%al,%al
	je	Lj1013
	jmp	Lj1014
Lj1013:
	jmp	Lj915
Lj1014:
Lj996:
	cmpl	-16(%ebp),%ebx
	jg	Lj972
Lj971:
	movl	$0,4(%esp)
	movb	$100,8(%esp)
	leal	-33(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
Lj912:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	leal	28(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__DELETEALLPIXELLINES$PFSPIXELLINE$stub
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj913
	decl	%eax
	testl	%eax,%eax
	je	Lj914
	decl	%eax
	testl	%eax,%eax
	je	Lj900
Lj914:
	call	LFPC_RERAISE$stub
Lj915:
	movl	-76(%ebp),%eax
	movl	$2,-76(%ebp)
	jmp	Lj912
Lj913:
Lj900:
	movl	-84(%ebp),%ebx
	movl	-80(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPDITHERER$_Ld12
_$FPDITHERER$_Ld12:
	.byte	19
	.ascii	"FPDithererException"

.const_data
	.align 2
.globl	_VMT_FPDITHERER_FPDITHEREREXCEPTION
_VMT_FPDITHERER_FPDITHEREREXCEPTION:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$FPDITHERER$_Ld12
	.long	0,0
	.long	_$FPDITHERER$_Ld13
	.long	_RTTI_FPDITHERER_FPDITHEREREXCEPTION
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
	.long	0

.const_data
	.align 2
.globl	_$FPDITHERER$_Ld15
_$FPDITHERER$_Ld15:
	.byte	15
	.ascii	"TFPBaseDitherer"

.const_data
	.align 2
.globl	_VMT_FPDITHERER_TFPBASEDITHERER
_VMT_FPDITHERER_TFPBASEDITHERER:
	.long	28,-28
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPDITHERER$_Ld15
	.long	0,0
	.long	_$FPDITHERER$_Ld16
	.long	_RTTI_FPDITHERER_TFPBASEDITHERER
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPDITHERER_TFPBASEDITHERER_$__DESTROY
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
	.long	_FPDITHERER_TFPBASEDITHERER_$__INTERNALDITHER$TFPCUSTOMIMAGE$TFPCUSTOMIMAGE
	.long	_FPDITHERER_TFPBASEDITHERER_$__FINDBESTCOLOR$TFPCOLOR$LONGINT$$LONGINT
	.long	_FPDITHERER_TFPBASEDITHERER_$__PROGRESS$TOBJECT$TFPIMGPROGRESSSTAGE$BYTE$ANSISTRING$BOOLEAN
	.long	_FPDITHERER_TFPBASEDITHERER_$__SETUSEHASH$BOOLEAN
	.long	_FPDITHERER_TFPBASEDITHERER_$__SETSORTED$BOOLEAN
	.long	_FPDITHERER_TFPBASEDITHERER_$__SORTPALETTE
	.long	_FPDITHERER_TFPBASEDITHERER_$__CREATE$TFPPALETTE$$TFPBASEDITHERER
	.long	0

.const_data
	.align 2
.globl	_$FPDITHERER$_Ld18
_$FPDITHERER$_Ld18:
	.byte	25
	.ascii	"TFPFloydSteinbergDitherer"

.const_data
	.align 2
.globl	_VMT_FPDITHERER_TFPFLOYDSTEINBERGDITHERER
_VMT_FPDITHERER_TFPFLOYDSTEINBERGDITHERER:
	.long	32,-32
	.long	_VMT_FPDITHERER_TFPBASEDITHERER
	.long	_$FPDITHERER$_Ld18
	.long	0,0
	.long	_$FPDITHERER$_Ld19
	.long	_RTTI_FPDITHERER_TFPFLOYDSTEINBERGDITHERER
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPDITHERER_TFPBASEDITHERER_$__DESTROY
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
	.long	_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__INTERNALDITHER$TFPCUSTOMIMAGE$TFPCUSTOMIMAGE
	.long	_FPDITHERER_TFPBASEDITHERER_$__FINDBESTCOLOR$TFPCOLOR$LONGINT$$LONGINT
	.long	_FPDITHERER_TFPBASEDITHERER_$__PROGRESS$TOBJECT$TFPIMGPROGRESSSTAGE$BYTE$ANSISTRING$BOOLEAN
	.long	_FPDITHERER_TFPBASEDITHERER_$__SETUSEHASH$BOOLEAN
	.long	_FPDITHERER_TFPBASEDITHERER_$__SETSORTED$BOOLEAN
	.long	_FPDITHERER_TFPBASEDITHERER_$__SORTPALETTE
	.long	_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__CREATE$TFPPALETTE$$TFPFLOYDSTEINBERGDITHERER
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPDITHERER
_THREADVARLIST_FPDITHERER:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$FPDITHERER$_Ld2
_$FPDITHERER$_Ld2:
	.short	0,1
	.long	0,-1,16
.reference _$FPDITHERER$_Ld1
.globl	_$FPDITHERER$_Ld1
_$FPDITHERER$_Ld1:
.reference _$FPDITHERER$_Ld2
	.ascii	"Palette is empty\000"

.const_data
	.align 2
.globl	_$FPDITHERER$_Ld4
_$FPDITHERER$_Ld4:
	.short	0,1
	.long	0,-1,47
.reference _$FPDITHERER$_Ld3
.globl	_$FPDITHERER$_Ld3
_$FPDITHERER$_Ld3:
.reference _$FPDITHERER$_Ld4
	.ascii	"Source and Destination images must be different\000"

.const_data
	.align 2
.globl	_$FPDITHERER$_Ld6
_$FPDITHERER$_Ld6:
	.short	0,1
	.long	0,-1,13
.reference _$FPDITHERER$_Ld5
.globl	_$FPDITHERER$_Ld5
_$FPDITHERER$_Ld5:
.reference _$FPDITHERER$_Ld6
	.ascii	"Out of memory\000"

.data
	.align 2
.globl	_TC_FPDITHERER_FSNULLPIXEL
_TC_FPDITHERER_FSNULLPIXEL:
	.byte	0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0,0,0,0

.const
	.align 2
.globl	_$FPDITHERER$_Ld7
_$FPDITHERER$_Ld7:
	.byte	0,0,0,0,0,224,111,64

.const
	.align 2
.globl	_$FPDITHERER$_Ld8
_$FPDITHERER$_Ld8:
	.byte	0,0,0,0,0,0,220,63

.const
	.align 2
.globl	_$FPDITHERER$_Ld9
_$FPDITHERER$_Ld9:
	.byte	0,0,0,0,0,0,212,63

.const
	.align 2
.globl	_$FPDITHERER$_Ld10
_$FPDITHERER$_Ld10:
	.byte	0,0,0,0,0,0,176,63

.const
	.align 2
.globl	_$FPDITHERER$_Ld11
_$FPDITHERER$_Ld11:
	.byte	0,0,0,0,0,0,200,63
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT
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

L_FPCOLHASH_TFPCOLORHASHTABLE_$__CLEAR$stub:
.indirect_symbol _FPCOLHASH_TFPCOLORHASHTABLE_$__CLEAR
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

L_FPCOLHASH_TFPCOLORHASHTABLE_$__CREATE$$TFPCOLORHASHTABLE$stub:
.indirect_symbol _FPCOLHASH_TFPCOLORHASHTABLE_$__CREATE$$TFPCOLORHASHTABLE
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

L_SYSTEM_TOBJECT_$__FREE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPDITHERER_TFPBASEDITHERER_$__SUBTRACTCOLORINT$TFPCOLOR$TFPCOLOR$$INT64$stub:
.indirect_symbol _FPDITHERER_TFPBASEDITHERER_$__SUBTRACTCOLORINT$TFPCOLOR$TFPCOLOR$$INT64
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

L_FPDITHERER_TFPBASEDITHERER_$__COLORCOMPARE$TFPCOLOR$TFPCOLOR$$SHORTINT$stub:
.indirect_symbol _FPDITHERER_TFPBASEDITHERER_$__COLORCOMPARE$TFPCOLOR$TFPCOLOR$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPDITHERER_TFPBASEDITHERER_$__QUICKSORT$LONGINT$LONGINT$stub:
.indirect_symbol _FPDITHERER_TFPBASEDITHERER_$__QUICKSORT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCOLHASH_TFPCOLORHASHTABLE_$__GET$TFPCOLOR$$POINTER$stub:
.indirect_symbol _FPCOLHASH_TFPCOLORHASHTABLE_$__GET$TFPCOLOR$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPDITHERER_TFPBASEDITHERER_$__GETCOLORDINST$TFPCOLOR$TFPCOLOR$$LONGINT$stub:
.indirect_symbol _FPDITHERER_TFPBASEDITHERER_$__GETCOLORDINST$TFPCOLOR$TFPCOLOR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_GETMEM$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCOLHASH_TFPCOLORHASHTABLE_$__INSERT$TFPCOLOR$POINTER$stub:
.indirect_symbol _FPCOLHASH_TFPCOLORHASHTABLE_$__INSERT$TFPCOLOR$POINTER
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

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPDITHERER_TFPBASEDITHERER_$__CREATE$TFPPALETTE$$TFPBASEDITHERER$stub:
.indirect_symbol _FPDITHERER_TFPBASEDITHERER_$__CREATE$TFPPALETTE$$TFPBASEDITHERER
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

L_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__COLOR2REAL$TFPCOLOR$$TFPPIXELREAL$stub:
.indirect_symbol _FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__COLOR2REAL$TFPCOLOR$$TFPPIXELREAL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__REAL2COLOR$TFPPIXELREAL$$TFPCOLOR$stub:
.indirect_symbol _FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__REAL2COLOR$TFPPIXELREAL$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__GETERROR$TFPCOLOR$TFPCOLOR$$TFPPIXELREAL$stub:
.indirect_symbol _FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__GETERROR$TFPCOLOR$TFPCOLOR$$TFPPIXELREAL
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

L_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__CREATEPIXELLINE$PFSPIXELLINE$LONGINT$stub:
.indirect_symbol _FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__CREATEPIXELLINE$PFSPIXELLINE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__DISTRIBUTEERRORS$PFSPIXELLINE$LONGINT$TFPCUSTOMIMAGE$stub:
.indirect_symbol _FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__DISTRIBUTEERRORS$PFSPIXELLINE$LONGINT$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__DELETEALLPIXELLINES$PFSPIXELLINE$stub:
.indirect_symbol _FPDITHERER_TFPFLOYDSTEINBERGDITHERER_$__DELETEALLPIXELLINES$PFSPIXELLINE
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
.globl	_$FPDITHERER$_Ld13
_$FPDITHERER$_Ld13:
	.short	0
	.long	_$FPDITHERER$_Ld14
	.align 2
.globl	_$FPDITHERER$_Ld14
_$FPDITHERER$_Ld14:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPDITHERER_FPDITHEREREXCEPTION
_INIT_FPDITHERER_FPDITHEREREXCEPTION:
	.byte	15,19
	.ascii	"FPDithererException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPDITHERER_FPDITHEREREXCEPTION
_RTTI_FPDITHERER_FPDITHEREREXCEPTION:
	.byte	15,19
	.ascii	"FPDithererException"
	.long	_VMT_FPDITHERER_FPDITHEREREXCEPTION
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	10
	.ascii	"FPDitherer"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPDITHERER_TFPDITHERERPROGRESSEVENT
_INIT_FPDITHERER_TFPDITHERERPROGRESSEVENT:
	.byte	6,24
	.ascii	"TFPDithererProgressEvent"
	.byte	0,5,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	0,5
	.ascii	"Stage"
	.ascii	"\023TFPImgProgressStage"
	.byte	0,11
	.ascii	"PercentDone"
	.ascii	"\004Byte"
	.byte	2,3
	.ascii	"Msg"
	.ascii	"\012AnsiString"
	.byte	1,8
	.ascii	"Continue"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_FPIMAGE_TFPIMGPROGRESSSTAGE
	.long	_RTTI_SYSTEM_BYTE
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_RTTI_FPDITHERER_TFPDITHERERPROGRESSEVENT
_RTTI_FPDITHERER_TFPDITHERERPROGRESSEVENT:
	.byte	6,24
	.ascii	"TFPDithererProgressEvent"
	.byte	0,5,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	0,5
	.ascii	"Stage"
	.ascii	"\023TFPImgProgressStage"
	.byte	0,11
	.ascii	"PercentDone"
	.ascii	"\004Byte"
	.byte	2,3
	.ascii	"Msg"
	.ascii	"\012AnsiString"
	.byte	1,8
	.ascii	"Continue"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_FPIMAGE_TFPIMGPROGRESSSTAGE
	.long	_RTTI_SYSTEM_BYTE
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_$FPDITHERER$_Ld16
_$FPDITHERER$_Ld16:
	.short	0
	.long	_$FPDITHERER$_Ld17
	.align 2
.globl	_$FPDITHERER$_Ld17
_$FPDITHERER$_Ld17:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPDITHERER_TFPBASEDITHERER
_INIT_FPDITHERER_TFPBASEDITHERER:
	.byte	15,15
	.ascii	"TFPBaseDitherer"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPDITHERER_TFPBASEDITHERER
_RTTI_FPDITHERER_TFPBASEDITHERER:
	.byte	15,15
	.ascii	"TFPBaseDitherer"
	.long	_VMT_FPDITHERER_TFPBASEDITHERER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	10
	.ascii	"FPDitherer"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPDITHERER_PFPPIXELREAL
_INIT_FPDITHERER_PFPPIXELREAL:
	.byte	0
	.ascii	"\014PFPPixelReal"

.const_data
	.align 2
.globl	_RTTI_FPDITHERER_PFPPIXELREAL
_RTTI_FPDITHERER_PFPPIXELREAL:
	.byte	0
	.ascii	"\014PFPPixelReal"

.const_data
	.align 2
.globl	_INIT_FPDITHERER_TFPPIXELREAL
_INIT_FPDITHERER_TFPPIXELREAL:
	.byte	13,12
	.ascii	"TFPPixelReal"
	.long	32,0

.const_data
	.align 2
.globl	_RTTI_FPDITHERER_TFPPIXELREAL
_RTTI_FPDITHERER_TFPPIXELREAL:
	.byte	13,12
	.ascii	"TFPPixelReal"
	.long	32,4
	.long	_RTTI_SYSTEM_REAL
	.long	0
	.long	_RTTI_SYSTEM_REAL
	.long	8
	.long	_RTTI_SYSTEM_REAL
	.long	16
	.long	_RTTI_SYSTEM_REAL
	.long	24

.const_data
	.align 2
.globl	_INIT_FPDITHERER_PFSPIXELLINE
_INIT_FPDITHERER_PFSPIXELLINE:
	.byte	0
	.ascii	"\014PFSPixelLine"

.const_data
	.align 2
.globl	_RTTI_FPDITHERER_PFSPIXELLINE
_RTTI_FPDITHERER_PFSPIXELLINE:
	.byte	0
	.ascii	"\014PFSPixelLine"

.const_data
	.align 2
.globl	_INIT_FPDITHERER_TFSPIXELLINE
_INIT_FPDITHERER_TFSPIXELLINE:
	.byte	13,12
	.ascii	"TFSPixelLine"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_FPDITHERER_TFSPIXELLINE
_RTTI_FPDITHERER_TFSPIXELLINE:
	.byte	13,12
	.ascii	"TFSPixelLine"
	.long	8,2
	.long	_RTTI_FPDITHERER_PFPPIXELREAL
	.long	0
	.long	_RTTI_FPDITHERER_PFSPIXELLINE
	.long	4

.const_data
	.align 2
.globl	_$FPDITHERER$_Ld19
_$FPDITHERER$_Ld19:
	.short	0
	.long	_$FPDITHERER$_Ld20
	.align 2
.globl	_$FPDITHERER$_Ld20
_$FPDITHERER$_Ld20:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPDITHERER_TFPFLOYDSTEINBERGDITHERER
_INIT_FPDITHERER_TFPFLOYDSTEINBERGDITHERER:
	.byte	15,25
	.ascii	"TFPFloydSteinbergDitherer"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPDITHERER_TFPFLOYDSTEINBERGDITHERER
_RTTI_FPDITHERER_TFPFLOYDSTEINBERGDITHERER:
	.byte	15,25
	.ascii	"TFPFloydSteinbergDitherer"
	.long	_VMT_FPDITHERER_TFPFLOYDSTEINBERGDITHERER
	.long	_RTTI_FPDITHERER_TFPBASEDITHERER
	.short	0
	.byte	10
	.ascii	"FPDitherer"
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
L_VMT_FPDITHERER_FPDITHEREREXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_FPDITHERER_FPDITHEREREXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPDITHERER$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPDITHERER$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPDITHERER$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPDITHERER$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCOLHASH_TFPCOLORHASHTABLE$non_lazy_ptr:
.indirect_symbol _VMT_FPCOLHASH_TFPCOLORHASHTABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPDITHERER$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPDITHERER$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPDITHERER$_Ld7$non_lazy_ptr:
.indirect_symbol _$FPDITHERER$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPDITHERER_FSNULLPIXEL$non_lazy_ptr:
.indirect_symbol _TC_FPDITHERER_FSNULLPIXEL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPDITHERER$_Ld8$non_lazy_ptr:
.indirect_symbol _$FPDITHERER$_Ld8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPDITHERER$_Ld9$non_lazy_ptr:
.indirect_symbol _$FPDITHERER$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPDITHERER$_Ld10$non_lazy_ptr:
.indirect_symbol _$FPDITHERER$_Ld10
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPDITHERER$_Ld11$non_lazy_ptr:
.indirect_symbol _$FPDITHERER$_Ld11
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

