# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__CREATE$$TFPREADERPNG
_FPREADPNG_TFPREADERPNG_$__CREATE$$TFPREADERPNG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj5
	jmp	Lj6
Lj5:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj6:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj11
	jmp	Lj12
Lj11:
	jmp	Lj3
Lj12:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj15
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj19
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CREATE$$TFPCUSTOMIMAGEREADER$stub
	movl	-8(%ebp),%eax
	movl	$0,212(%eax)
	movl	-8(%ebp),%eax
	movl	$0,228(%eax)
	movl	-8(%ebp),%eax
	movb	$0,236(%eax)
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	call	LFPC_RERAISE$stub
Lj20:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj34
	jmp	Lj33
Lj34:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj32
	jmp	Lj33
Lj32:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj33:
Lj15:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj17
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj38
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj39
	jmp	Lj40
Lj39:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj40:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj38:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj37
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj37:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj17
Lj17:
Lj3:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__DESTROY
_FPREADPNG_TFPREADERPNG_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj47
	jmp	Lj48
Lj47:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj48:
	movl	-8(%ebp),%eax
	leal	212(%eax),%ebx
	movl	(%ebx),%eax
	cmpl	$0,%eax
	ja	Lj53
	jmp	Lj54
Lj53:
	movl	16(%ebx),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj54:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj63
	jmp	Lj62
Lj63:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj61
	jmp	Lj62
Lj61:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj62:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__READCHUNK
_FPREADPNG_TFPREADERPNG_$__READCHUNK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$552,%esp
	movl	%ebx,-544(%ebp)
	movl	%esi,-540(%ebp)
	movl	%edi,-536(%ebp)
	call	Lj67
Lj67:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	leal	-12(%ebp),%edx
	movl	$8,%ecx
	movl	-4(%ebp),%ebx
	movl	12(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-4(%ebp),%eax
	leal	212(%eax),%ebx
	movl	-12(%ebp),%eax
	call	L_FPIMGCMN_SWAP$LONGWORD$$LONGWORD$stub
	movl	%eax,4(%ebx)
	movl	-8(%ebp),%eax
	movl	%eax,12(%ebx)
	movl	$0,20(%ebx)
	jmp	Lj85
	.align 2
Lj84:
	incl	20(%ebx)
Lj85:
	movl	20(%ebx),%eax
	cmpl	$20,%eax
	jb	Lj87
	jmp	Lj86
Lj87:
	movb	$1,(%esp)
	movl	$3,4(%esp)
	movl	20(%ebx),%edx
	movl	L_TC_PNGCOMN_CHUNKTYPES$non_lazy_ptr-Lj67(%edi),%eax
	leal	(%eax,%edx,4),%ecx
	leal	-276(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_chararray_to_shortstr$stub
	leal	-276(%ebp),%esi
	movb	$1,(%esp)
	movl	$3,4(%esp)
	leal	12(%ebx),%ecx
	leal	-532(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_chararray_to_shortstr$stub
	leal	-532(%ebp),%edx
	movl	%esi,%eax
	call	Lfpc_shortstr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj84
	jmp	Lj86
Lj86:
	movl	4(%ebx),%eax
	cmpl	$2147483647,%eax
	ja	Lj112
	jmp	Lj113
Lj112:
	movl	L_VMT_PNGCOMN_PNGIMAGEEXCEPTION$non_lazy_ptr-Lj67(%edi),%edx
	movl	L_$FPREADPNG$_Ld1$non_lazy_ptr-Lj67(%edi),%eax
	movl	$0,%esi
	movl	%eax,%ecx
	movl	%esi,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj67(%edi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj113:
	movl	4(%ebx),%eax
	cmpl	(%ebx),%eax
	ja	Lj120
	jmp	Lj121
Lj120:
	movl	(%ebx),%eax
	cmpl	$0,%eax
	ja	Lj122
	jmp	Lj123
Lj122:
	movl	16(%ebx),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj123:
	movl	4(%ebx),%edx
	leal	16(%ebx),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	4(%ebx),%eax
	movl	%eax,(%ebx)
Lj121:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%ebx,%edx
	movl	4(%edx),%ecx
	movl	%edx,%ebx
	movl	16(%ebx),%edx
	movl	-4(%ebp),%esi
	movl	12(%esi),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	4(%ebx),%eax
	jne	Lj140
	jmp	Lj141
Lj140:
	movl	L_VMT_PNGCOMN_PNGIMAGEEXCEPTION$non_lazy_ptr-Lj67(%edi),%edx
	movl	L_$FPREADPNG$_Ld3$non_lazy_ptr-Lj67(%edi),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj67(%edi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj141:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	leal	-16(%ebp),%edx
	movl	$4,%ecx
	movl	-4(%ebp),%esi
	movl	12(%esi),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	leal	12(%ebx),%edx
	movl	L_TC_PNGCOMN_ALL1BITS$non_lazy_ptr-Lj67(%edi),%eax
	movl	(%eax),%eax
	movl	$4,%ecx
	call	L_FPIMGCMN_CALCULATECRC$LONGWORD$formal$LONGINT$$LONGWORD$stub
	movl	%eax,-20(%ebp)
	movl	%ebx,%eax
	movl	4(%eax),%ecx
	movl	%eax,%ebx
	movl	16(%ebx),%eax
	movl	-20(%ebp),%esi
	movl	%eax,%edx
	movl	%esi,%eax
	call	L_FPIMGCMN_CALCULATECRC$LONGWORD$formal$LONGINT$$LONGWORD$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	L_TC_PNGCOMN_ALL1BITS$non_lazy_ptr-Lj67(%edi),%edx
	movl	(%edx),%edx
	xorl	%edx,%eax
	call	L_FPIMGCMN_SWAP$LONGWORD$$LONGWORD$stub
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jne	Lj174
	jmp	Lj175
Lj174:
	movl	L_VMT_PNGCOMN_PNGIMAGEEXCEPTION$non_lazy_ptr-Lj67(%edi),%edx
	movl	L_$FPREADPNG$_Ld5$non_lazy_ptr-Lj67(%edi),%eax
	movl	$0,%esi
	movl	%eax,%ecx
	movl	%esi,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj67(%edi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj175:
	movl	-544(%ebp),%ebx
	movl	-540(%ebp),%esi
	movl	-536(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__HANDLEDATA
_FPREADPNG_TFPREADERPNG_$__HANDLEDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	-4(%ebp),%edx
	movl	40(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	216(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	-4(%ebp),%edx
	movl	40(%edx),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	-4(%ebp),%eax
	movl	228(%eax),%edx
	movl	-4(%ebp),%eax
	movl	216(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	-4(%ebp),%ebx
	movl	40(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__HANDLEALPHA
_FPREADPNG_TFPREADERPNG_$__HANDLEALPHA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	33(%eax),%al
	testb	%al,%al
	je	Lj209
	subb	$2,%al
	je	Lj210
	decb	%al
	je	Lj208
	jmp	Lj207
Lj208:
	movl	%ebp,%eax
	call	L_FPREADPNG_TFPREADERPNG_$_HANDLEALPHA_PALETTEALPHA$stub
	jmp	Lj206
Lj209:
	movl	%ebp,%eax
	call	L_FPREADPNG_TFPREADERPNG_$_HANDLEALPHA_TRANSPARENTGRAY$stub
	jmp	Lj206
Lj210:
	movl	%ebp,%eax
	call	L_FPREADPNG_TFPREADERPNG_$_HANDLEALPHA_TRANSPARENTCOLOR$stub
	jmp	Lj206
Lj207:
Lj206:
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$_HANDLEALPHA_TRANSPARENTCOLOR
_FPREADPNG_TFPREADERPNG_$_HANDLEALPHA_TRANSPARENTCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	leal	212(%eax),%ebx
	leal	-8(%ebp),%edx
	movl	16(%ebx),%eax
	movl	$2,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	leal	-10(%ebp),%edx
	movl	16(%ebx),%eax
	leal	2(%eax),%eax
	movl	$2,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	leal	-12(%ebp),%edx
	movl	16(%ebx),%eax
	leal	4(%eax),%eax
	movl	$2,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movw	-8(%ebp),%ax
	call	L_FPIMGCMN_SWAP$WORD$$WORD$stub
	movw	%ax,-8(%ebp)
	movw	-10(%ebp),%ax
	call	L_FPIMGCMN_SWAP$WORD$$WORD$stub
	movw	%ax,-10(%ebp)
	movw	-12(%ebp),%ax
	call	L_FPIMGCMN_SWAP$WORD$$WORD$stub
	movw	%ax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	32(%eax),%al
	movb	%al,-5(%ebp)
	movzwl	-12(%ebp),%eax
	movl	$0,%edx
	movzbl	-5(%ebp),%ecx
	cmpl	$64,%ecx
	jl	Lj253
	xorl	%eax,%eax
	xorl	%edx,%edx
	jmp	Lj255
Lj253:
	cmpl	$32,%ecx
	jl	Lj254
	subl	$32,%ecx
	shll	%cl,%eax
	movl	%eax,%edx
	xorl	%eax,%eax
	jmp	Lj255
Lj254:
	shldl	%cl,%eax,%edx
	shll	%cl,%eax
Lj255:
	movzbl	-5(%ebp),%ecx
	cmpl	$64,%ecx
	jl	Lj256
	xorl	%eax,%eax
	xorl	%edx,%edx
	jmp	Lj258
Lj256:
	cmpl	$32,%ecx
	jl	Lj257
	subl	$32,%ecx
	shll	%cl,%eax
	movl	%eax,%edx
	xorl	%eax,%eax
	jmp	Lj258
Lj257:
	shldl	%cl,%eax,%edx
	shll	%cl,%eax
Lj258:
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	movzwl	-10(%ebp),%eax
	movl	$0,%edx
	movzbl	-5(%ebp),%ecx
	cmpl	$64,%ecx
	jl	Lj261
	xorl	%eax,%eax
	xorl	%edx,%edx
	jmp	Lj263
Lj261:
	cmpl	$32,%ecx
	jl	Lj262
	subl	$32,%ecx
	shll	%cl,%eax
	movl	%eax,%edx
	xorl	%eax,%eax
	jmp	Lj263
Lj262:
	shldl	%cl,%eax,%edx
	shll	%cl,%eax
Lj263:
	addl	-20(%ebp),%eax
	adcl	-16(%ebp),%edx
	movzwl	-8(%ebp),%ebx
	movl	$0,%ecx
	addl	%ebx,%eax
	adcl	%ecx,%edx
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-20(%ebp),%eax
	movl	%eax,240(%edx)
	movl	-16(%ebp),%eax
	movl	%eax,244(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$1,236(%eax)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$_HANDLEALPHA_TRANSPARENTGRAY
_FPREADPNG_TFPREADERPNG_$_HANDLEALPHA_TRANSPARENTGRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	228(%eax),%eax
	leal	-6(%ebp),%edx
	movl	$2,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movw	-6(%ebp),%ax
	call	L_FPIMGCMN_SWAP$WORD$$WORD$stub
	movw	%ax,-6(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%ecx
	movzwl	-6(%ebp),%edx
	movl	$0,%eax
	movl	%edx,240(%ecx)
	movl	%eax,244(%ecx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$1,236(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$_HANDLEALPHA_PALETTEALPHA
_FPREADPNG_TFPREADERPNG_$_HANDLEALPHA_PALETTEALPHA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	call	Lj201
Lj201:
	popl	-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	leal	212(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	192(%eax),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	cmpl	4(%ebx),%eax
	jb	Lj284
	jmp	Lj285
Lj284:
	movl	-32(%ebp),%eax
	movl	L_VMT_PNGCOMN_PNGIMAGEEXCEPTION$non_lazy_ptr-Lj201(%eax),%edx
	movl	-32(%ebp),%eax
	movl	L_$FPREADPNG$_Ld7$non_lazy_ptr-Lj201(%eax),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	movl	-32(%ebp),%esi
	leal	La4-Lj201(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj285:
	movl	%ebx,%edi
	movl	4(%edi),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%esi
	jl	Lj295
	decl	-8(%ebp)
	.align 2
Lj296:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	192(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-18(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-14(%ebp)
	movl	16(%edi),%edx
	movl	-8(%ebp),%eax
	movzbw	(%edx,%eax,1),%ax
	movw	%ax,-10(%ebp)
	movzwl	-10(%ebp),%eax
	shll	$8,%eax
	movzwl	-10(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	192(%eax),%eax
	leal	-18(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	-4(%ebx),%ebx
	movl	192(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*104(%ebx)
	cmpl	-8(%ebp),%esi
	jg	Lj296
Lj295:
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__HANDLEPALETTE
_FPREADPNG_TFPREADERPNG_$__HANDLEPALETTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj314
Lj314:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	33(%eax),%eax
	cmpl	$3,%eax
	je	Lj315
	jmp	Lj316
Lj315:
	movl	-4(%ebp),%eax
	leal	212(%eax),%eax
	movl	%eax,%ebx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj319
	jmp	Lj320
Lj319:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	movl	24(%eax),%eax
	movl	%eax,192(%edx)
	jmp	Lj325
Lj320:
	movl	L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr-Lj314(%esi),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE$stub
	movl	-4(%ebp),%edx
	movl	%eax,192(%edx)
Lj325:
	movw	$65535,-10(%ebp)
	movl	4(%ebx),%eax
	xorl	%edx,%edx
	movl	$3,%ecx
	divl	%ecx
	cmpl	$0,%edx
	ja	Lj336
	jmp	Lj337
Lj336:
	movl	L_VMT_PNGCOMN_PNGIMAGEEXCEPTION$non_lazy_ptr-Lj314(%esi),%edx
	movl	L_$FPREADPNG$_Ld9$non_lazy_ptr-Lj314(%esi),%eax
	movl	$0,%edi
	movl	%eax,%ecx
	movl	%edi,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La5:
	movl	%ebp,%ecx
	leal	La5-Lj314(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj337:
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	192(%eax),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	192(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj351
	.align 2
Lj350:
	movl	16(%ebx),%edx
	movl	-8(%ebp),%eax
	movzbw	(%edx,%eax,1),%ax
	movw	%ax,-18(%ebp)
	movzwl	-18(%ebp),%eax
	shll	$8,%eax
	movzwl	-18(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-16(%ebp)
	incl	-8(%ebp)
	movl	16(%ebx),%eax
	movl	-8(%ebp),%edx
	movzbw	(%eax,%edx,1),%ax
	movw	%ax,-18(%ebp)
	movzwl	-18(%ebp),%eax
	shll	$8,%eax
	movzwl	-18(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-14(%ebp)
	incl	-8(%ebp)
	movl	16(%ebx),%edx
	movl	-8(%ebp),%eax
	movzbw	(%edx,%eax,1),%ax
	movw	%ax,-18(%ebp)
	movzwl	-18(%ebp),%eax
	shll	$8,%eax
	movzwl	-18(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-12(%ebp)
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	192(%eax),%eax
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	192(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
Lj351:
	movl	-8(%ebp),%eax
	cmpl	4(%ebx),%eax
	jb	Lj350
	jmp	Lj352
Lj352:
Lj316:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__SETPALETTEPIXEL$LONGINT$LONGINT$QWORD
_FPREADPNG_TFPREADERPNG_$__SETPALETTEPIXEL$LONGINT$LONGINT$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__SETPALCOLPIXEL$LONGINT$LONGINT$QWORD
_FPREADPNG_TFPREADERPNG_$__SETPALCOLPIXEL$LONGINT$LONGINT$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	192(%eax),%eax
	movl	8(%ebp),%edx
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__SETCOLORPIXEL$LONGINT$LONGINT$QWORD
_FPREADPNG_TFPREADERPNG_$__SETCOLORPIXEL$LONGINT$LONGINT$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	208(%eax),%eax
	movl	-12(%ebp),%edx
	movl	204(%edx),%edx
	call	*%edx
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__SETCOLORTRPIXEL$LONGINT$LONGINT$QWORD
_FPREADPNG_TFPREADERPNG_$__SETCOLORTRPIXEL$LONGINT$LONGINT$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	208(%eax),%eax
	movl	-12(%ebp),%edx
	movl	204(%edx),%edx
	call	*%edx
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	240(%eax),%edx
	movl	244(%eax),%eax
	cmpl	12(%ebp),%eax
	jne	Lj418
	cmpl	8(%ebp),%edx
	jne	Lj418
	jmp	Lj417
	jmp	Lj418
Lj417:
	movw	$0,-14(%ebp)
Lj418:
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__CURRENTLINE$LONGWORD$$BYTE
_FPREADPNG_TFPREADERPNG_$__CURRENTLINE$LONGWORD$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	184(%eax),%eax
	movl	-4(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__PREVSAMPLE$LONGWORD$$BYTE
_FPREADPNG_TFPREADERPNG_$__PREVSAMPLE$LONGWORD$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movzbl	117(%eax),%eax
	cmpl	-4(%ebp),%eax
	ja	Lj435
	jmp	Lj436
Lj435:
	movb	$0,-9(%ebp)
	jmp	Lj439
Lj436:
	movl	-8(%ebp),%eax
	movl	184(%eax),%ecx
	movl	-8(%ebp),%eax
	movzbl	117(%eax),%edx
	movl	-4(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movb	(%ecx,%edx,1),%al
	movb	%al,-9(%ebp)
Lj439:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__PREVIOUSLINE$LONGWORD$$BYTE
_FPREADPNG_TFPREADERPNG_$__PREVIOUSLINE$LONGWORD$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	188(%eax),%eax
	movl	-4(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__PREVLINEPREVSAMPLE$LONGWORD$$BYTE
_FPREADPNG_TFPREADERPNG_$__PREVLINEPREVSAMPLE$LONGWORD$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movzbl	117(%eax),%eax
	cmpl	-4(%ebp),%eax
	ja	Lj448
	jmp	Lj449
Lj448:
	movb	$0,-9(%ebp)
	jmp	Lj452
Lj449:
	movl	-8(%ebp),%eax
	movl	188(%eax),%ecx
	movl	-8(%ebp),%eax
	movzbl	117(%eax),%edx
	movl	-4(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movb	(%ecx,%edx,1),%al
	movb	%al,-9(%ebp)
Lj452:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__DOFILTER$BYTE$LONGWORD$BYTE$$BYTE
_FPREADPNG_TFPREADERPNG_$__DOFILTER$BYTE$LONGWORD$BYTE$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj467
	decb	%al
	je	Lj468
	decb	%al
	je	Lj469
	decb	%al
	je	Lj470
	decb	%al
	je	Lj471
	jmp	Lj466
Lj467:
	movb	$0,-14(%ebp)
	jmp	Lj465
Lj468:
	movl	%ebp,%eax
	call	L_FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERSUB$stub
	jmp	Lj465
Lj469:
	movl	%ebp,%eax
	call	L_FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERUP$stub
	jmp	Lj465
Lj470:
	movl	%ebp,%eax
	call	L_FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERAVERAGE$stub
	jmp	Lj465
Lj471:
	movl	%ebp,%eax
	call	L_FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERPAETH$stub
	jmp	Lj465
Lj466:
Lj465:
	movzbl	8(%ebp),%eax
	movzbl	-14(%ebp),%edx
	addl	%edx,%eax
	xorl	%edx,%edx
	movl	$256,%ecx
	divl	%ecx
	movb	%dl,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERPAETH
_FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERPAETH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_FPREADPNG_TFPREADERPNG_$__PREVSAMPLE$LONGWORD$$BYTE$stub
	movb	%al,-11(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_FPREADPNG_TFPREADERPNG_$__PREVLINEPREVSAMPLE$LONGWORD$$BYTE$stub
	movb	%al,-13(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_FPREADPNG_TFPREADERPNG_$__PREVIOUSLINE$LONGWORD$$BYTE$stub
	movb	%al,-12(%ebp)
	movzbl	-11(%ebp),%edx
	movzbl	-12(%ebp),%eax
	addl	%eax,%edx
	movzbl	-13(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-20(%ebp)
	movzbl	-11(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%eax
	xorl	%eax,%edx
	subl	%eax,%edx
	movw	%dx,-6(%ebp)
	movzbl	-13(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%eax
	xorl	%eax,%edx
	subl	%eax,%edx
	movw	%dx,-10(%ebp)
	movzbl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%eax
	xorl	%eax,%edx
	subl	%eax,%edx
	movw	%dx,-8(%ebp)
	movw	-6(%ebp),%ax
	cmpw	-8(%ebp),%ax
	jbe	Lj512
	jmp	Lj511
Lj512:
	movw	-6(%ebp),%ax
	cmpw	-10(%ebp),%ax
	jbe	Lj510
	jmp	Lj511
Lj510:
	movl	-4(%ebp),%eax
	movb	-11(%ebp),%dl
	movb	%dl,-14(%eax)
	jmp	Lj515
Lj511:
	movw	-8(%ebp),%ax
	cmpw	-10(%ebp),%ax
	jbe	Lj516
	jmp	Lj517
Lj516:
	movl	-4(%ebp),%eax
	movb	-12(%ebp),%dl
	movb	%dl,-14(%eax)
	jmp	Lj520
Lj517:
	movl	-4(%ebp),%eax
	movb	-13(%ebp),%dl
	movb	%dl,-14(%eax)
Lj520:
Lj515:
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERAVERAGE
_FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERAVERAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_FPREADPNG_TFPREADERPNG_$__PREVSAMPLE$LONGWORD$$BYTE$stub
	movzbw	%al,%ax
	movw	%ax,-6(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_FPREADPNG_TFPREADERPNG_$__PREVIOUSLINE$LONGWORD$$BYTE$stub
	movzbw	%al,%ax
	movw	%ax,-8(%ebp)
	movzwl	-6(%ebp),%eax
	movzwl	-8(%ebp),%edx
	addl	%edx,%eax
	shrl	$1,%eax
	movl	-4(%ebp),%edx
	movb	%al,-14(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERUP
_FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERUP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_FPREADPNG_TFPREADERPNG_$__PREVIOUSLINE$LONGWORD$$BYTE$stub
	movl	-4(%ebp),%edx
	movb	%al,-14(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERSUB
_FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERSUB:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_FPREADPNG_TFPREADERPNG_$__PREVSAMPLE$LONGWORD$$BYTE$stub
	movl	-4(%ebp),%edx
	movb	%al,-14(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__DECIDESETPIXEL$$TSETPIXELPROC
_FPREADPNG_TFPREADERPNG_$__DECIDESETPIXEL$$TSETPIXELPROC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj550
Lj550:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,48(%eax)
	jne	Lj551
	jmp	Lj552
Lj551:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj553
	jmp	Lj554
Lj553:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	L_FPREADPNG_TFPREADERPNG_$__SETPALETTEPIXEL$LONGINT$LONGINT$QWORD$non_lazy_ptr-Lj550(%ebx),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj559
Lj554:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	L_FPREADPNG_TFPREADERPNG_$__SETPALCOLPIXEL$LONGINT$LONGINT$QWORD$non_lazy_ptr-Lj550(%ebx),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj559:
	jmp	Lj562
Lj552:
	movl	-4(%ebp),%eax
	cmpb	$0,236(%eax)
	jne	Lj563
	jmp	Lj564
Lj563:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	L_FPREADPNG_TFPREADERPNG_$__SETCOLORTRPIXEL$LONGINT$LONGINT$QWORD$non_lazy_ptr-Lj550(%ebx),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj567
Lj564:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	L_FPREADPNG_TFPREADERPNG_$__SETCOLORPIXEL$LONGINT$LONGINT$QWORD$non_lazy_ptr-Lj550(%ebx),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj567:
Lj562:
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__CALCX$LONGINT$$LONGINT
_FPREADPNG_TFPREADERPNG_$__CALCX$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	164(%eax),%edx
	movl	-4(%ebp),%eax
	imull	%eax,%edx
	movl	-8(%ebp),%eax
	movl	156(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__CALCY$LONGINT$$LONGINT
_FPREADPNG_TFPREADERPNG_$__CALCY$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	168(%eax),%edx
	movl	-4(%ebp),%eax
	imull	%eax,%edx
	movl	-8(%ebp),%eax
	movl	160(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__CALCCOLOR$$QWORD
_FPREADPNG_TFPREADERPNG_$__CALCCOLOR$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	248(%eax),%eax
	testl	%eax,%eax
	je	Lj580
	jmp	Lj581
Lj580:
	movl	-4(%ebp),%eax
	movl	$0,256(%eax)
	movl	$0,260(%eax)
	movl	-4(%ebp),%eax
	movzbl	32(%eax),%eax
	cmpl	$16,%eax
	je	Lj584
	jmp	Lj585
Lj584:
	movl	-4(%ebp),%eax
	movzbl	117(%eax),%edx
	leal	-24(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movzbl	117(%eax),%edx
	movl	-24(%ebp),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	movzbl	117(%eax),%eax
	subl	$2,%eax
	movw	$0,-18(%ebp)
	cmpw	-18(%ebp),%ax
	jb	Lj597
	decw	-18(%ebp)
	.align 2
Lj598:
	incw	-18(%ebp)
	movl	-4(%ebp),%edx
	movl	184(%edx),%esi
	movl	-4(%ebp),%edx
	movzwl	-18(%ebp),%ecx
	movl	252(%edx),%edx
	addl	%ecx,%edx
	movl	-24(%ebp),%ecx
	movzwl	-18(%ebp),%ebx
	incl	%ebx
	movb	(%esi,%edx,1),%dl
	movb	%dl,(%ecx,%ebx,1)
	cmpw	-18(%ebp),%ax
	ja	Lj598
Lj597:
	movl	-4(%ebp),%eax
	movzbl	117(%eax),%ecx
	movl	-4(%ebp),%eax
	leal	256(%eax),%edx
	movl	-24(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-24(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	jmp	Lj609
Lj585:
	movl	-4(%ebp),%eax
	movl	184(%eax),%edx
	movl	-4(%ebp),%eax
	movl	252(%eax),%eax
	leal	(%edx,%eax,1),%eax
	movl	-4(%ebp),%edx
	movzbl	117(%edx),%ecx
	movl	-4(%ebp),%edx
	leal	256(%edx),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj609:
	movl	-4(%ebp),%eax
	movzbl	117(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%eax,252(%edx)
Lj581:
	movl	-4(%ebp),%eax
	movzbl	117(%eax),%eax
	cmpl	$1,%eax
	je	Lj616
	jmp	Lj617
Lj616:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movzbl	248(%eax),%eax
	movl	120(%edx,%eax,4),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	andl	256(%ecx),%eax
	andl	260(%ecx),%edx
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movzbl	153(%eax),%ecx
	movl	-4(%ebp),%eax
	movzbl	248(%eax),%eax
	subl	%eax,%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movzbl	152(%eax),%eax
	imull	%eax,%ecx
	movl	-16(%ebp),%eax
	shrl	%cl,%eax
	movl	$0,%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	incb	248(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movb	248(%eax),%al
	cmpb	153(%edx),%al
	jae	Lj622
	jmp	Lj623
Lj622:
	movl	-4(%ebp),%eax
	movb	$0,248(%eax)
Lj623:
	jmp	Lj626
Lj617:
	movl	-4(%ebp),%edx
	movl	256(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	260(%edx),%eax
	movl	%eax,-8(%ebp)
Lj626:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__HANDLESCANLINE$LONGINT$PBYTEARRAY
_FPREADPNG_TFPREADERPNG_$__HANDLESCANLINE$LONGINT$PBYTEARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,248(%eax)
	movl	-12(%ebp),%eax
	movl	$0,252(%eax)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	116(%eax),%eax
	movl	84(%edx,%eax,4),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj636
	decl	-20(%ebp)
	.align 2
Lj637:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADPNG_TFPREADERPNG_$__CALCX$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	call	L_FPREADPNG_TFPREADERPNG_$__CALCCOLOR$$QWORD$stub
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	200(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%esi
	movl	196(%esi),%esi
	call	*%esi
	cmpl	-20(%ebp),%ebx
	jg	Lj637
Lj636:
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__COLORGRAY1$QWORD$$TFPCOLOR
_FPREADPNG_TFPREADERPNG_$__COLORGRAY1$QWORD$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj657
Lj657:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%ecx
	cmpl	$0,%ecx
	jne	Lj659
	cmpl	$0,%eax
	jne	Lj659
	jmp	Lj658
Lj658:
	movl	L_TC_FPIMAGE_COLBLACK$non_lazy_ptr-Lj657(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	L_TC_FPIMAGE_COLBLACK$non_lazy_ptr-Lj657(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj662
Lj659:
	movl	L_TC_FPIMAGE_COLWHITE$non_lazy_ptr-Lj657(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	L_TC_FPIMAGE_COLWHITE$non_lazy_ptr-Lj657(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
Lj662:
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__COLORGRAY2$QWORD$$TFPCOLOR
_FPREADPNG_TFPREADERPNG_$__COLORGRAY2$QWORD$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$3,%eax
	movl	$0,%edx
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	shll	$2,%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	shll	$4,%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	shll	$8,%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-14(%ebp)
	movw	-14(%ebp),%ax
	movw	%ax,-12(%ebp)
	movw	-14(%ebp),%ax
	movw	%ax,-10(%ebp)
	movw	-14(%ebp),%ax
	movw	%ax,-8(%ebp)
	movw	$65535,-6(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__COLORGRAY4$QWORD$$TFPCOLOR
_FPREADPNG_TFPREADERPNG_$__COLORGRAY4$QWORD$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$15,%eax
	movl	$0,%edx
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	shll	$4,%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	shll	$8,%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-14(%ebp)
	movw	-14(%ebp),%ax
	movw	%ax,-12(%ebp)
	movw	-14(%ebp),%ax
	movw	%ax,-10(%ebp)
	movw	-14(%ebp),%ax
	movw	%ax,-8(%ebp)
	movw	$65535,-6(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__COLORGRAY8$QWORD$$TFPCOLOR
_FPREADPNG_TFPREADERPNG_$__COLORGRAY8$QWORD$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	shll	$8,%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-14(%ebp)
	movw	-14(%ebp),%ax
	movw	%ax,-12(%ebp)
	movw	-14(%ebp),%ax
	movw	%ax,-10(%ebp)
	movw	-14(%ebp),%ax
	movw	%ax,-8(%ebp)
	movw	$65535,-6(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__COLORGRAY16$QWORD$$TFPCOLOR
_FPREADPNG_TFPREADERPNG_$__COLORGRAY16$QWORD$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$65535,%eax
	movl	$0,%edx
	movw	%ax,-14(%ebp)
	movw	-14(%ebp),%ax
	movw	%ax,-12(%ebp)
	movw	-14(%ebp),%ax
	movw	%ax,-10(%ebp)
	movw	-14(%ebp),%ax
	movw	%ax,-8(%ebp)
	movw	$65535,-6(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__COLORGRAYALPHA8$QWORD$$TFPCOLOR
_FPREADPNG_TFPREADERPNG_$__COLORGRAYALPHA8$QWORD$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	shll	$8,%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-14(%ebp)
	movw	-14(%ebp),%ax
	movw	%ax,-12(%ebp)
	movw	-14(%ebp),%ax
	movw	%ax,-10(%ebp)
	movw	-14(%ebp),%ax
	movw	%ax,-8(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$65280,%eax
	movl	$0,%edx
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	shrl	$8,%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-6(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__COLORGRAYALPHA16$QWORD$$TFPCOLOR
_FPREADPNG_TFPREADERPNG_$__COLORGRAYALPHA16$QWORD$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	shrdl	$16,%edx,%eax
	shrl	$16,%edx
	andl	$65535,%eax
	movl	$0,%edx
	movw	%ax,-14(%ebp)
	movw	-14(%ebp),%ax
	movw	%ax,-12(%ebp)
	movw	-14(%ebp),%ax
	movw	%ax,-10(%ebp)
	movw	-14(%ebp),%ax
	movw	%ax,-8(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$65535,%eax
	movl	$0,%edx
	movw	%ax,-6(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__COLORCOLOR8$QWORD$$TFPCOLOR
_FPREADPNG_TFPREADERPNG_$__COLORCOLOR8$QWORD$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	shll	$8,%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movl	%eax,8(%ebp)
	movl	%edx,12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	shll	$8,%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-10(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movl	%eax,8(%ebp)
	movl	%edx,12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	shll	$8,%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-8(%ebp)
	movw	$65535,-6(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__COLORCOLOR16$QWORD$$TFPCOLOR
_FPREADPNG_TFPREADERPNG_$__COLORCOLOR16$QWORD$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$65535,%eax
	movl	$0,%edx
	movw	%ax,-12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	shrdl	$16,%edx,%eax
	shrl	$16,%edx
	movl	%eax,8(%ebp)
	movl	%edx,12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$65535,%eax
	movl	$0,%edx
	movw	%ax,-10(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	shrdl	$16,%edx,%eax
	shrl	$16,%edx
	movl	%eax,8(%ebp)
	movl	%edx,12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$65535,%eax
	movl	$0,%edx
	movw	%ax,-8(%ebp)
	movw	$65535,-6(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__COLORCOLORALPHA8$QWORD$$TFPCOLOR
_FPREADPNG_TFPREADERPNG_$__COLORCOLORALPHA8$QWORD$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	shll	$8,%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movl	%eax,8(%ebp)
	movl	%edx,12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	shll	$8,%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-10(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movl	%eax,8(%ebp)
	movl	%edx,12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	shll	$8,%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-8(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movl	%eax,8(%ebp)
	movl	%edx,12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	shll	$8,%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-6(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__COLORCOLORALPHA16$QWORD$$TFPCOLOR
_FPREADPNG_TFPREADERPNG_$__COLORCOLORALPHA16$QWORD$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$65535,%eax
	movl	$0,%edx
	movw	%ax,-12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	shrdl	$16,%edx,%eax
	shrl	$16,%edx
	movl	%eax,8(%ebp)
	movl	%edx,12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$65535,%eax
	movl	$0,%edx
	movw	%ax,-10(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	shrdl	$16,%edx,%eax
	shrl	$16,%edx
	movl	%eax,8(%ebp)
	movl	%edx,12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$65535,%eax
	movl	$0,%edx
	movw	%ax,-8(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	shrdl	$16,%edx,%eax
	shrl	$16,%edx
	movl	%eax,8(%ebp)
	movl	%edx,12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$65535,%eax
	movl	$0,%edx
	movw	%ax,-6(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__DODECOMPRESS
_FPREADPNG_TFPREADERPNG_$__DODECOMPRESS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%ebp,%eax
	call	L_FPREADPNG_TFPREADERPNG_$_DODECOMPRESS_INITVARS$stub
	movl	%ebp,%eax
	call	L_FPREADPNG_TFPREADERPNG_$_DODECOMPRESS_DECODE$stub
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$_DODECOMPRESS_DECODE
_FPREADPNG_TFPREADERPNG_$_DODECOMPRESS_DECODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	movl	%edi,-84(%ebp)
	call	Lj832
Lj832:
	popl	-80(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	(%edx),%edx
	call	*140(%edx)
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-36(%ebp),%eax
	movl	%eax,196(%edx)
	movl	-32(%ebp),%eax
	movl	%eax,200(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	176(%eax),%edx
	movl	%edx,-76(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	172(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-76(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj842
	decl	-12(%ebp)
	.align 2
Lj843:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	-12(%ebp),%dl
	movb	%dl,116(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%ebx
	movl	-12(%ebp),%edx
	movl	-80(%ebp),%ecx
	movl	L_TC_FPREADPNG_STARTPOINTS$non_lazy_ptr-Lj832(%ecx),%eax
	movzwl	(%eax,%edx,4),%eax
	movl	%eax,156(%ebx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%ebx
	movl	-12(%ebp),%edx
	movl	-80(%ebp),%eax
	movl	L_TC_FPREADPNG_STARTPOINTS$non_lazy_ptr-Lj832(%eax),%ecx
	movzwl	2(%ecx,%edx,4),%eax
	movl	%eax,160(%ebx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%ebx
	movl	-12(%ebp),%eax
	movl	-80(%ebp),%ecx
	movl	L_TC_FPREADPNG_DELTA$non_lazy_ptr-Lj832(%ecx),%edx
	movzwl	(%edx,%eax,4),%eax
	movl	%eax,164(%ebx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%ebx
	movl	-12(%ebp),%eax
	movl	-80(%ebp),%edx
	movl	L_TC_FPREADPNG_DELTA$non_lazy_ptr-Lj832(%edx),%ecx
	movzwl	2(%ecx,%eax,4),%eax
	movl	%eax,168(%ebx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movzbl	117(%eax),%eax
	cmpl	$1,%eax
	je	Lj854
	jmp	Lj855
Lj854:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movzbl	153(%eax),%ebx
	movl	84(%edx,%ecx,4),%eax
	xorl	%edx,%edx
	divl	%ebx
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movzbl	153(%eax),%ebx
	movl	84(%edx,%ecx,4),%eax
	xorl	%edx,%edx
	divl	%ebx
	cmpl	$0,%edx
	ja	Lj858
	jmp	Lj859
Lj858:
	incl	-24(%ebp)
Lj859:
	jmp	Lj860
Lj855:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movzbl	117(%eax),%eax
	mull	84(%edx,%ecx,4)
	movl	%eax,-24(%ebp)
Lj860:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj863
	jmp	Lj864
Lj863:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	leal	188(%eax),%eax
	movl	-24(%ebp),%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	leal	184(%eax),%eax
	movl	-24(%ebp),%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	184(%eax),%eax
	movl	-24(%ebp),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-32(%ebp)
	testl	%eax,%eax
	jne	Lj879
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	52(%eax,%edx,4),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%edi
	jl	Lj886
	decl	-16(%ebp)
	.align 2
Lj887:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	184(%eax),%eax
	movl	%eax,180(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	188(%eax),%eax
	movl	%eax,184(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	180(%eax),%eax
	movl	%eax,188(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_FPREADPNG_TFPREADERPNG_$__CALCY$LONGINT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	44(%eax),%eax
	leal	-25(%ebp),%edx
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	-4(%ebx),%ebx
	movl	44(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	184(%eax),%eax
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	44(%eax),%eax
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%ebx
	movl	-4(%ebx),%ebx
	movl	44(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movzbl	-25(%ebp),%eax
	testl	%eax,%eax
	jne	Lj912
	jmp	Lj913
Lj912:
	movl	-24(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj915
	decl	-20(%ebp)
	.align 2
Lj916:
	incl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	184(%eax),%eax
	movl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-20(%ebp),%ecx
	movb	-25(%ebp),%dl
	movl	-4(%ebp),%ebx
	movl	-4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*136(%ebx)
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	184(%edx),%edx
	movl	-20(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	cmpl	-20(%ebp),%esi
	jg	Lj916
Lj915:
Lj913:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	184(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	-4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	cmpl	-16(%ebp),%edi
	jg	Lj887
Lj886:
Lj879:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	188(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	184(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj880
	decl	%eax
	testl	%eax,%eax
	je	Lj881
Lj881:
	call	LFPC_RERAISE$stub
Lj880:
Lj864:
	movl	-76(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj843
Lj842:
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	movl	-84(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$_DODECOMPRESS_INITVARS
_FPREADPNG_TFPREADERPNG_$_DODECOMPRESS_INITVARS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	call	Lj830
Lj830:
	popl	-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	leal	24(%eax),%eax
	movl	%eax,%ebx
	movzbl	12(%ebx),%eax
	testl	%eax,%eax
	je	Lj939
	jmp	Lj940
Lj939:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	$0,172(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	$0,176(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	4(%ebx),%eax
	movl	%eax,52(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	(%ebx),%edx
	movl	%edx,84(%eax)
	jmp	Lj949
Lj940:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	$1,172(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	$7,176(%eax)
	movl	$1,-8(%ebp)
	decl	-8(%ebp)
	.align 2
Lj956:
	incl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	L_TC_FPREADPNG_DELTA$non_lazy_ptr-Lj830(%ecx),%eax
	movzwl	2(%eax,%edx,4),%ecx
	movl	4(%ebx),%eax
	xorl	%edx,%edx
	divl	%ecx
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	L_TC_FPREADPNG_DELTA$non_lazy_ptr-Lj830(%ecx),%eax
	movzwl	2(%eax,%edx,4),%ecx
	movl	4(%ebx),%eax
	xorl	%edx,%edx
	divl	%ecx
	movl	-8(%ebp),%ecx
	movl	-24(%ebp),%eax
	movl	L_TC_FPREADPNG_STARTPOINTS$non_lazy_ptr-Lj830(%eax),%esi
	movzwl	2(%esi,%ecx,4),%eax
	cmpl	%eax,%edx
	ja	Lj959
	jmp	Lj960
Lj959:
	incl	-12(%ebp)
Lj960:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,52(%ecx,%eax,4)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	L_TC_FPREADPNG_DELTA$non_lazy_ptr-Lj830(%edx),%ecx
	movzwl	(%ecx,%eax,4),%ecx
	movl	(%ebx),%eax
	xorl	%edx,%edx
	divl	%ecx
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	L_TC_FPREADPNG_DELTA$non_lazy_ptr-Lj830(%eax),%ecx
	movzwl	(%ecx,%edx,4),%ecx
	movl	(%ebx),%eax
	xorl	%edx,%edx
	divl	%ecx
	movl	-8(%ebp),%ecx
	movl	-24(%ebp),%eax
	movl	L_TC_FPREADPNG_STARTPOINTS$non_lazy_ptr-Lj830(%eax),%esi
	movzwl	(%esi,%ecx,4),%eax
	cmpl	%eax,%edx
	ja	Lj965
	jmp	Lj966
Lj965:
	incl	-12(%ebp)
Lj966:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,84(%ecx,%edx,4)
	cmpl	$7,-8(%ebp)
	jl	Lj956
Lj949:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movzbl	9(%ebx),%eax
	cmpl	$3,%eax
	seteb	48(%edx)
	movb	9(%ebx),%al
	testb	%al,%al
	je	Lj973
	subb	$2,%al
	je	Lj974
	decb	%al
	je	Lj975
	decb	%al
	je	Lj976
	subb	$2,%al
	je	Lj977
	jmp	Lj972
Lj973:
	movb	8(%ebx),%al
	cmpb	$1,%al
	jb	Lj979
	decb	%al
	je	Lj980
	decb	%al
	je	Lj981
	subb	$2,%al
	je	Lj982
	subb	$4,%al
	je	Lj983
	subb	$8,%al
	je	Lj984
	jmp	Lj979
Lj980:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%ecx
	movl	L_FPREADPNG_TFPREADERPNG_$__COLORGRAY1$QWORD$$TFPCOLOR$non_lazy_ptr-Lj830(%ecx),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,204(%edx)
	movl	-16(%ebp),%eax
	movl	%eax,208(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$1,117(%eax)
	jmp	Lj978
Lj981:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%ecx
	movl	L_FPREADPNG_TFPREADERPNG_$__COLORGRAY2$QWORD$$TFPCOLOR$non_lazy_ptr-Lj830(%ecx),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,204(%edx)
	movl	-16(%ebp),%eax
	movl	%eax,208(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$1,117(%eax)
	jmp	Lj978
Lj982:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%ecx
	movl	L_FPREADPNG_TFPREADERPNG_$__COLORGRAY4$QWORD$$TFPCOLOR$non_lazy_ptr-Lj830(%ecx),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,204(%edx)
	movl	-16(%ebp),%eax
	movl	%eax,208(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$1,117(%eax)
	jmp	Lj978
Lj983:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%ecx
	movl	L_FPREADPNG_TFPREADERPNG_$__COLORGRAY8$QWORD$$TFPCOLOR$non_lazy_ptr-Lj830(%ecx),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,204(%edx)
	movl	-16(%ebp),%eax
	movl	%eax,208(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$1,117(%eax)
	jmp	Lj978
Lj984:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%ecx
	movl	L_FPREADPNG_TFPREADERPNG_$__COLORGRAY16$QWORD$$TFPCOLOR$non_lazy_ptr-Lj830(%ecx),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,204(%edx)
	movl	-16(%ebp),%eax
	movl	%eax,208(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$2,117(%eax)
	jmp	Lj978
Lj979:
Lj978:
	jmp	Lj971
Lj974:
	movzbl	8(%ebx),%eax
	cmpl	$8,%eax
	je	Lj1005
	jmp	Lj1006
Lj1005:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%ecx
	movl	L_FPREADPNG_TFPREADERPNG_$__COLORCOLOR8$QWORD$$TFPCOLOR$non_lazy_ptr-Lj830(%ecx),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,204(%edx)
	movl	-16(%ebp),%eax
	movl	%eax,208(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$3,117(%eax)
	jmp	Lj1011
Lj1006:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%ecx
	movl	L_FPREADPNG_TFPREADERPNG_$__COLORCOLOR16$QWORD$$TFPCOLOR$non_lazy_ptr-Lj830(%ecx),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,204(%edx)
	movl	-16(%ebp),%eax
	movl	%eax,208(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$6,117(%eax)
Lj1011:
	jmp	Lj971
Lj975:
	movzbl	8(%ebx),%eax
	cmpl	$16,%eax
	je	Lj1016
	jmp	Lj1017
Lj1016:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$2,117(%eax)
	jmp	Lj1020
Lj1017:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$1,117(%eax)
Lj1020:
	jmp	Lj971
Lj976:
	movzbl	8(%ebx),%eax
	cmpl	$8,%eax
	je	Lj1023
	jmp	Lj1024
Lj1023:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%ecx
	movl	L_FPREADPNG_TFPREADERPNG_$__COLORGRAYALPHA8$QWORD$$TFPCOLOR$non_lazy_ptr-Lj830(%ecx),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,204(%edx)
	movl	-16(%ebp),%eax
	movl	%eax,208(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$2,117(%eax)
	jmp	Lj1029
Lj1024:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%ecx
	movl	L_FPREADPNG_TFPREADERPNG_$__COLORGRAYALPHA16$QWORD$$TFPCOLOR$non_lazy_ptr-Lj830(%ecx),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,204(%edx)
	movl	-16(%ebp),%eax
	movl	%eax,208(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$4,117(%eax)
Lj1029:
	jmp	Lj971
Lj977:
	movzbl	8(%ebx),%eax
	cmpl	$8,%eax
	je	Lj1034
	jmp	Lj1035
Lj1034:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%eax
	movl	L_FPREADPNG_TFPREADERPNG_$__COLORCOLORALPHA8$QWORD$$TFPCOLOR$non_lazy_ptr-Lj830(%eax),%ecx
	movl	%ecx,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,204(%edx)
	movl	-16(%ebp),%eax
	movl	%eax,208(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$4,117(%eax)
	jmp	Lj1040
Lj1035:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%eax
	movl	L_FPREADPNG_TFPREADERPNG_$__COLORCOLORALPHA16$QWORD$$TFPCOLOR$non_lazy_ptr-Lj830(%eax),%ecx
	movl	%ecx,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,204(%edx)
	movl	-16(%ebp),%eax
	movl	%eax,208(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$8,117(%eax)
Lj1040:
	jmp	Lj971
Lj972:
Lj971:
	movb	8(%ebx),%al
	cmpb	$1,%al
	jb	Lj1046
	decb	%al
	je	Lj1047
	decb	%al
	je	Lj1048
	subb	$2,%al
	je	Lj1049
	subb	$4,%al
	je	Lj1050
	jmp	Lj1046
Lj1047:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$8,153(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$1,152(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	leal	120(%eax),%edi
	movl	-24(%ebp),%edx
	movl	L_TC_FPREADPNG_BITSUSED1DEPTH$non_lazy_ptr-Lj830(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	jmp	Lj1045
Lj1048:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$4,153(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$2,152(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	leal	120(%eax),%edi
	movl	-24(%ebp),%edx
	movl	L_TC_FPREADPNG_BITSUSED2DEPTH$non_lazy_ptr-Lj830(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	jmp	Lj1045
Lj1049:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$2,153(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$4,152(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	leal	120(%eax),%edi
	movl	-24(%ebp),%edx
	movl	L_TC_FPREADPNG_BITSUSED4DEPTH$non_lazy_ptr-Lj830(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	jmp	Lj1045
Lj1050:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$1,153(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$0,152(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	$255,120(%eax)
	jmp	Lj1045
Lj1046:
Lj1045:
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__HANDLECHUNK
_FPREADPNG_TFPREADERPNG_$__HANDLECHUNK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj1076
Lj1076:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	232(%eax),%eax
	testl	%eax,%eax
	je	Lj1079
	subl	$4,%eax
	je	Lj1080
	subl	$3,%eax
	je	Lj1083
	subl	$3,%eax
	je	Lj1081
	subl	$5,%eax
	je	Lj1082
	jmp	Lj1078
Lj1079:
	movl	L_VMT_PNGCOMN_PNGIMAGEEXCEPTION$non_lazy_ptr-Lj1076(%ebx),%edx
	movl	L_$FPREADPNG$_Ld11$non_lazy_ptr-Lj1076(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La6:
	movl	%ebp,%ecx
	leal	La6-Lj1076(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	jmp	Lj1077
Lj1080:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	jmp	Lj1077
Lj1081:
	movl	-4(%ebp),%eax
	call	L_FPREADPNG_TFPREADERPNG_$__HANDLEDATA$stub
	jmp	Lj1077
Lj1082:
	movl	-4(%ebp),%eax
	movb	$1,237(%eax)
	jmp	Lj1077
Lj1083:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	jmp	Lj1077
Lj1078:
	movl	-4(%ebp),%eax
	call	L_FPREADPNG_TFPREADERPNG_$__HANDLEUNKNOWN$stub
Lj1077:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__HANDLEUNKNOWN
_FPREADPNG_TFPREADERPNG_$__HANDLEUNKNOWN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj1101
Lj1101:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj1102
	movl	-4(%ebp),%eax
	movzbl	224(%eax),%eax
	subl	$65,%eax
	cmpl	$26,%eax
	jb	Lj1107
Lj1107:
	jc	Lj1105
	jmp	Lj1106
Lj1105:
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	L_$FPREADPNG$_Ld13$non_lazy_ptr-Lj1101(%ebx),%eax
	movl	%eax,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	leal	224(%eax),%eax
	movb	$1,%cl
	movl	$3,%edx
	call	Lfpc_chararray_to_ansistr$stub
	movl	-64(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	L_$FPREADPNG$_Ld15$non_lazy_ptr-Lj1101(%ebx),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	leal	-48(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-48(%ebp),%ecx
	movl	L_VMT_PNGCOMN_PNGIMAGEEXCEPTION$non_lazy_ptr-Lj1101(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La7:
	movl	%ebp,%ecx
	leal	La7-Lj1101(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1106:
Lj1102:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj1103
	call	LFPC_RERAISE$stub
Lj1103:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
_FPREADPNG_TFPREADERPNG_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	movl	%edi,-96(%ebp)
	call	Lj1129
Lj1129:
	popl	%edi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	leal	24(%eax),%eax
	movl	4(%eax),%ecx
	movl	%eax,%ebx
	movl	(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*148(%esi)
	movl	L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr-Lj1129(%edi),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,40(%edx)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1144
	movl	-12(%ebp),%eax
	movb	$0,237(%eax)
	jmp	Lj1151
	.align 2
Lj1150:
	movl	-12(%ebp),%eax
	call	L_FPREADPNG_TFPREADERPNG_$__READCHUNK$stub
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
Lj1151:
	movl	-12(%ebp),%eax
	cmpb	$0,237(%eax)
	jne	Lj1152
	jmp	Lj1150
Lj1152:
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movl	-12(%ebp),%edx
	movl	40(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movb	$0,(%esp)
	movl	-12(%ebp),%eax
	movl	40(%eax),%ecx
	movl	L_VMT_ZSTREAM_TDECOMPRESSIONSTREAM$non_lazy_ptr-Lj1129(%edi),%edx
	movl	$0,%eax
	call	L_ZSTREAM_TDECOMPRESSIONSTREAM_$__CREATE$TSTREAM$BOOLEAN$$TDECOMPRESSIONSTREAM$stub
	movl	-12(%ebp),%edx
	movl	%eax,44(%edx)
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1171
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*132(%edx)
Lj1171:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	movl	44(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1172
	decl	%eax
	testl	%eax,%eax
	je	Lj1173
Lj1173:
	call	LFPC_RERAISE$stub
Lj1172:
Lj1144:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1183
	jmp	Lj1182
Lj1183:
	movl	-12(%ebp),%eax
	cmpl	$0,192(%eax)
	jne	Lj1181
	jmp	Lj1182
Lj1181:
	movl	-12(%ebp),%eax
	movl	192(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj1182:
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1145
	decl	%eax
	testl	%eax,%eax
	je	Lj1146
Lj1146:
	call	LFPC_RERAISE$stub
Lj1145:
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	movl	-96(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADPNG_TFPREADERPNG_$__INTERNALCHECK$TSTREAM$$BOOLEAN
_FPREADPNG_TFPREADERPNG_$__INTERNALCHECK$TSTREAM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-112(%ebp)
	movl	%esi,-108(%ebp)
	call	Lj1189
Lj1189:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1192
	leal	-17(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$8,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	$0,-24(%ebp)
	decl	-24(%ebp)
	.align 2
Lj1204:
	incl	-24(%ebp)
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%ecx
	movb	-17(%ebp,%eax,1),%al
	movl	L_TC_PNGCOMN_SIGNATURE$non_lazy_ptr-Lj1189(%esi),%edx
	cmpb	(%edx,%ecx,1),%al
	jne	Lj1205
	jmp	Lj1206
Lj1205:
	movl	L_VMT_PNGCOMN_PNGIMAGEEXCEPTION$non_lazy_ptr-Lj1189(%esi),%edx
	movl	L_$FPREADPNG$_Ld17$non_lazy_ptr-Lj1189(%esi),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La8:
	movl	%ebp,%ecx
	leal	La8-Lj1189(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1206:
	cmpl	$7,-24(%ebp)
	jl	Lj1204
	movl	-8(%ebp),%eax
	call	L_FPREADPNG_TFPREADERPNG_$__READCHUNK$stub
	movl	-8(%ebp),%eax
	movl	228(%eax),%eax
	movl	-8(%ebp),%edx
	leal	24(%edx),%edx
	movl	$16,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	leal	24(%eax),%ebx
	movl	(%ebx),%eax
	call	L_FPIMGCMN_SWAP$LONGWORD$$LONGWORD$stub
	movl	%eax,(%ebx)
	movl	4(%ebx),%eax
	call	L_FPIMGCMN_SWAP$LONGWORD$$LONGWORD$stub
	movl	%eax,4(%ebx)
	movl	(%ebx),%eax
	cmpl	$0,%eax
	ja	Lj1236
	jmp	Lj1232
Lj1236:
	movl	4(%ebx),%eax
	cmpl	$0,%eax
	ja	Lj1235
	jmp	Lj1232
Lj1235:
	movzbl	10(%ebx),%eax
	testl	%eax,%eax
	je	Lj1234
	jmp	Lj1232
Lj1234:
	movzbl	11(%ebx),%eax
	testl	%eax,%eax
	je	Lj1233
	jmp	Lj1232
Lj1233:
	movzbl	12(%ebx),%eax
	cmpl	$2,%eax
	jb	Lj1237
Lj1237:
	jc	Lj1231
	jmp	Lj1232
Lj1231:
	movb	$1,-9(%ebp)
	jmp	Lj1238
Lj1232:
	movb	$0,-9(%ebp)
Lj1238:
Lj1192:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1194
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj1240
	movb	$0,-9(%ebp)
Lj1240:
	call	LFPC_POPADDRSTACK$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj1239
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1239:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1194
Lj1194:
	movb	-9(%ebp),%al
	movl	-112(%ebp),%ebx
	movl	-108(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPREADPNG
_INIT$_FPREADPNG:
.reference __FPREADPNG_init
.globl	__FPREADPNG_init
__FPREADPNG_init:
.reference _INIT$_FPREADPNG
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_FPREADPNG_TFPREADERPNG$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_$FPREADPNG$_Ld19$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	L_$FPREADPNG$_Ld21$non_lazy_ptr-Lj2(%ebx),%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPREADPNG$_Ld23
_$FPREADPNG$_Ld23:
	.byte	12
	.ascii	"TFPReaderPNG"

.const_data
	.align 2
.globl	_VMT_FPREADPNG_TFPREADERPNG
_VMT_FPREADPNG_TFPREADERPNG:
	.long	264,-264
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEREADER
	.long	_$FPREADPNG$_Ld23
	.long	0,0
	.long	_$FPREADPNG$_Ld24
	.long	_RTTI_FPREADPNG_TFPREADERPNG
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPREADPNG_TFPREADERPNG_$__DESTROY
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
	.long	_FPREADPNG_TFPREADERPNG_$__CREATE$$TFPREADERPNG
	.long	_FPREADPNG_TFPREADERPNG_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
	.long	_FPREADPNG_TFPREADERPNG_$__INTERNALCHECK$TSTREAM$$BOOLEAN
	.long	_FPREADPNG_TFPREADERPNG_$__HANDLECHUNK
	.long	_FPREADPNG_TFPREADERPNG_$__HANDLEPALETTE
	.long	_FPREADPNG_TFPREADERPNG_$__HANDLEALPHA
	.long	_FPREADPNG_TFPREADERPNG_$__HANDLESCANLINE$LONGINT$PBYTEARRAY
	.long	_FPREADPNG_TFPREADERPNG_$__DODECOMPRESS
	.long	_FPREADPNG_TFPREADERPNG_$__DOFILTER$BYTE$LONGWORD$BYTE$$BYTE
	.long	_FPREADPNG_TFPREADERPNG_$__DECIDESETPIXEL$$TSETPIXELPROC
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPREADPNG
_THREADVARLIST_FPREADPNG:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 1
.globl	_TC_FPREADPNG_STARTPOINTS
_TC_FPREADPNG_STARTPOINTS:
	.short	0,0,0,0,4,0,0,4,2,0,0,2,1,0,0,1

.data
	.align 1
.globl	_TC_FPREADPNG_DELTA
_TC_FPREADPNG_DELTA:
	.short	1,1,8,8,8,8,4,8,4,4,2,4,2,2,1,2

.data
	.align 2
.globl	_TC_FPREADPNG_BITSUSED1DEPTH
_TC_FPREADPNG_BITSUSED1DEPTH:
	.long	128,64,32,16,8,4,2,1

.data
	.align 2
.globl	_TC_FPREADPNG_BITSUSED2DEPTH
_TC_FPREADPNG_BITSUSED2DEPTH:
	.long	192,48,12,3,0,0,0,0

.data
	.align 2
.globl	_TC_FPREADPNG_BITSUSED4DEPTH
_TC_FPREADPNG_BITSUSED4DEPTH:
	.long	240,15,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$FPREADPNG$_Ld2
_$FPREADPNG$_Ld2:
	.short	0,1
	.long	0,-1,19
.reference _$FPREADPNG$_Ld1
.globl	_$FPREADPNG$_Ld1
_$FPREADPNG$_Ld1:
.reference _$FPREADPNG$_Ld2
	.ascii	"Invalid chunklength\000"

.const_data
	.align 2
.globl	_$FPREADPNG$_Ld4
_$FPREADPNG$_Ld4:
	.short	0,1
	.long	0,-1,34
.reference _$FPREADPNG$_Ld3
.globl	_$FPREADPNG$_Ld3
_$FPREADPNG$_Ld3:
.reference _$FPREADPNG$_Ld4
	.ascii	"Chunk length exceeds stream length\000"

.const_data
	.align 2
.globl	_$FPREADPNG$_Ld6
_$FPREADPNG$_Ld6:
	.short	0,1
	.long	0,-1,16
.reference _$FPREADPNG$_Ld5
.globl	_$FPREADPNG$_Ld5
_$FPREADPNG$_Ld5:
.reference _$FPREADPNG$_Ld6
	.ascii	"CRC check failed\000"

.const_data
	.align 2
.globl	_$FPREADPNG$_Ld8
_$FPREADPNG$_Ld8:
	.short	0,1
	.long	0,-1,32
.reference _$FPREADPNG$_Ld7
.globl	_$FPREADPNG$_Ld7
_$FPREADPNG$_Ld7:
.reference _$FPREADPNG$_Ld8
	.ascii	"To much alpha values for palette\000"

.const_data
	.align 2
.globl	_$FPREADPNG$_Ld10
_$FPREADPNG$_Ld10:
	.short	0,1
	.long	0,-1,32
.reference _$FPREADPNG$_Ld9
.globl	_$FPREADPNG$_Ld9
_$FPREADPNG$_Ld9:
.reference _$FPREADPNG$_Ld10
	.ascii	"Impossible length for PLTE-chunk\000"

.const_data
	.align 2
.globl	_$FPREADPNG$_Ld12
_$FPREADPNG$_Ld12:
	.short	0,1
	.long	0,-1,23
.reference _$FPREADPNG$_Ld11
.globl	_$FPREADPNG$_Ld11
_$FPREADPNG$_Ld11:
.reference _$FPREADPNG$_Ld12
	.ascii	"Second IHDR chunk found\000"

.const_data
	.align 2
.globl	_$FPREADPNG$_Ld14
_$FPREADPNG$_Ld14:
	.short	0,1
	.long	0,-1,15
.reference _$FPREADPNG$_Ld13
.globl	_$FPREADPNG$_Ld13
_$FPREADPNG$_Ld13:
.reference _$FPREADPNG$_Ld14
	.ascii	"Critical chunk \000"

.const_data
	.align 2
.globl	_$FPREADPNG$_Ld16
_$FPREADPNG$_Ld16:
	.short	0,1
	.long	0,-1,15
.reference _$FPREADPNG$_Ld15
.globl	_$FPREADPNG$_Ld15
_$FPREADPNG$_Ld15:
.reference _$FPREADPNG$_Ld16
	.ascii	" not recognized\000"

.const_data
	.align 2
.globl	_$FPREADPNG$_Ld18
_$FPREADPNG$_Ld18:
	.short	0,1
	.long	0,-1,20
.reference _$FPREADPNG$_Ld17
.globl	_$FPREADPNG$_Ld17
_$FPREADPNG$_Ld17:
.reference _$FPREADPNG$_Ld18
	.ascii	"This is not PNG-data\000"

.const_data
	.align 2
.globl	_$FPREADPNG$_Ld20
_$FPREADPNG$_Ld20:
	.short	0,1
	.long	0,-1,3
.reference _$FPREADPNG$_Ld19
.globl	_$FPREADPNG$_Ld19
_$FPREADPNG$_Ld19:
.reference _$FPREADPNG$_Ld20
	.ascii	"png\000"

.const_data
	.align 2
.globl	_$FPREADPNG$_Ld22
_$FPREADPNG$_Ld22:
	.short	0,1
	.long	0,-1,25
.reference _$FPREADPNG$_Ld21
.globl	_$FPREADPNG$_Ld21
_$FPREADPNG$_Ld21:
.reference _$FPREADPNG$_Ld22
	.ascii	"Portable Network Graphics\000"
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

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
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

L_FPIMGCMN_SWAP$LONGWORD$$LONGWORD$stub:
.indirect_symbol _FPIMGCMN_SWAP$LONGWORD$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_chararray_to_shortstr$stub:
.indirect_symbol fpc_chararray_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_compare_equal$stub:
.indirect_symbol fpc_shortstr_compare_equal
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

L_FPIMGCMN_CALCULATECRC$LONGWORD$formal$LONGINT$$LONGWORD$stub:
.indirect_symbol _FPIMGCMN_CALCULATECRC$LONGWORD$formal$LONGINT$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNG_TFPREADERPNG_$_HANDLEALPHA_PALETTEALPHA$stub:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$_HANDLEALPHA_PALETTEALPHA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNG_TFPREADERPNG_$_HANDLEALPHA_TRANSPARENTGRAY$stub:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$_HANDLEALPHA_TRANSPARENTGRAY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNG_TFPREADERPNG_$_HANDLEALPHA_TRANSPARENTCOLOR$stub:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$_HANDLEALPHA_TRANSPARENTCOLOR
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

L_FPIMGCMN_SWAP$WORD$$WORD$stub:
.indirect_symbol _FPIMGCMN_SWAP$WORD$$WORD
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

L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR
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

L_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE$stub:
.indirect_symbol _FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE
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

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERSUB$stub:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERSUB
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERUP$stub:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERUP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERAVERAGE$stub:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERAVERAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERPAETH$stub:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERPAETH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNG_TFPREADERPNG_$__PREVSAMPLE$LONGWORD$$BYTE$stub:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__PREVSAMPLE$LONGWORD$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNG_TFPREADERPNG_$__PREVLINEPREVSAMPLE$LONGWORD$$BYTE$stub:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__PREVLINEPREVSAMPLE$LONGWORD$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNG_TFPREADERPNG_$__PREVIOUSLINE$LONGWORD$$BYTE$stub:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__PREVIOUSLINE$LONGWORD$$BYTE
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

L_FPREADPNG_TFPREADERPNG_$__CALCX$LONGINT$$LONGINT$stub:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__CALCX$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNG_TFPREADERPNG_$__CALCCOLOR$$QWORD$stub:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__CALCCOLOR$$QWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNG_TFPREADERPNG_$_DODECOMPRESS_INITVARS$stub:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$_DODECOMPRESS_INITVARS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNG_TFPREADERPNG_$_DODECOMPRESS_DECODE$stub:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$_DODECOMPRESS_DECODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNG_TFPREADERPNG_$__CALCY$LONGINT$$LONGINT$stub:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__CALCY$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNG_TFPREADERPNG_$__HANDLEDATA$stub:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__HANDLEDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNG_TFPREADERPNG_$__HANDLEUNKNOWN$stub:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__HANDLEUNKNOWN
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

Lfpc_ansistr_concat_multi$stub:
.indirect_symbol fpc_ansistr_concat_multi
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNG_TFPREADERPNG_$__READCHUNK$stub:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__READCHUNK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZSTREAM_TDECOMPRESSIONSTREAM_$__CREATE$TSTREAM$BOOLEAN$$TDECOMPRESSIONSTREAM$stub:
.indirect_symbol _ZSTREAM_TDECOMPRESSIONSTREAM_$__CREATE$TSTREAM$BOOLEAN$$TDECOMPRESSIONSTREAM
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
.globl	_INIT_FPREADPNG_TSETPIXELPROC
_INIT_FPREADPNG_TSETPIXELPROC:
	.byte	6,13
	.ascii	"TSetPixelProc"
	.byte	0,3,0,1
	.ascii	"x"
	.ascii	"\007LongInt"
	.byte	0,1
	.ascii	"y"
	.ascii	"\007LongInt"
	.byte	0,2
	.ascii	"CD"
	.ascii	"\005QWord"
	.byte	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	_RTTI_SYSTEM_LONGINT
	.long	_RTTI_SYSTEM_QWORD

.const_data
	.align 2
.globl	_RTTI_FPREADPNG_TSETPIXELPROC
_RTTI_FPREADPNG_TSETPIXELPROC:
	.byte	6,13
	.ascii	"TSetPixelProc"
	.byte	0,3,0,1
	.ascii	"x"
	.ascii	"\007LongInt"
	.byte	0,1
	.ascii	"y"
	.ascii	"\007LongInt"
	.byte	0,2
	.ascii	"CD"
	.ascii	"\005QWord"
	.byte	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	_RTTI_SYSTEM_LONGINT
	.long	_RTTI_SYSTEM_QWORD

.const_data
	.align 2
.globl	_INIT_FPREADPNG_TCONVERTCOLORPROC
_INIT_FPREADPNG_TCONVERTCOLORPROC:
	.byte	6,17
	.ascii	"TConvertColorProc"
	.byte	1,1,0,2
	.ascii	"CD"
	.ascii	"\005QWord"
	.ascii	"\010TFPColor"
	.long	_RTTI_FPIMAGE_TFPCOLOR
	.byte	0
	.long	_RTTI_SYSTEM_QWORD

.const_data
	.align 2
.globl	_RTTI_FPREADPNG_TCONVERTCOLORPROC
_RTTI_FPREADPNG_TCONVERTCOLORPROC:
	.byte	6,17
	.ascii	"TConvertColorProc"
	.byte	1,1,0,2
	.ascii	"CD"
	.ascii	"\005QWord"
	.ascii	"\010TFPColor"
	.long	_RTTI_FPIMAGE_TFPCOLOR
	.byte	0
	.long	_RTTI_SYSTEM_QWORD

.const_data
	.align 2
.globl	_INIT_FPREADPNG_DEF195
_INIT_FPREADPNG_DEF195:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPREADPNG$_Ld24
_$FPREADPNG$_Ld24:
	.short	0
	.long	_$FPREADPNG$_Ld25
	.align 2
.globl	_$FPREADPNG$_Ld25
_$FPREADPNG$_Ld25:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPREADPNG_TFPREADERPNG
_INIT_FPREADPNG_TFPREADERPNG:
	.byte	15,12
	.ascii	"TFPReaderPNG"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPREADPNG_TFPREADERPNG
_RTTI_FPREADPNG_TFPREADERPNG:
	.byte	15,12
	.ascii	"TFPReaderPNG"
	.long	_VMT_FPREADPNG_TFPREADERPNG
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEREADER
	.short	0
	.byte	9
	.ascii	"FPReadPNG"
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
L_TC_PNGCOMN_CHUNKTYPES$non_lazy_ptr:
.indirect_symbol _TC_PNGCOMN_CHUNKTYPES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_PNGCOMN_PNGIMAGEEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_PNGCOMN_PNGIMAGEEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPNG$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPREADPNG$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPNG$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPREADPNG$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_PNGCOMN_ALL1BITS$non_lazy_ptr:
.indirect_symbol _TC_PNGCOMN_ALL1BITS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPNG$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPREADPNG$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPNG$_Ld7$non_lazy_ptr:
.indirect_symbol _$FPREADPNG$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TFPPALETTE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPNG$_Ld9$non_lazy_ptr:
.indirect_symbol _$FPREADPNG$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPREADPNG_TFPREADERPNG_$__SETPALETTEPIXEL$LONGINT$LONGINT$QWORD$non_lazy_ptr:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__SETPALETTEPIXEL$LONGINT$LONGINT$QWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPREADPNG_TFPREADERPNG_$__SETPALCOLPIXEL$LONGINT$LONGINT$QWORD$non_lazy_ptr:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__SETPALCOLPIXEL$LONGINT$LONGINT$QWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPREADPNG_TFPREADERPNG_$__SETCOLORTRPIXEL$LONGINT$LONGINT$QWORD$non_lazy_ptr:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__SETCOLORTRPIXEL$LONGINT$LONGINT$QWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPREADPNG_TFPREADERPNG_$__SETCOLORPIXEL$LONGINT$LONGINT$QWORD$non_lazy_ptr:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__SETCOLORPIXEL$LONGINT$LONGINT$QWORD
	.long	0

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
L_TC_FPREADPNG_STARTPOINTS$non_lazy_ptr:
.indirect_symbol _TC_FPREADPNG_STARTPOINTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPREADPNG_DELTA$non_lazy_ptr:
.indirect_symbol _TC_FPREADPNG_DELTA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPREADPNG_TFPREADERPNG_$__COLORGRAY1$QWORD$$TFPCOLOR$non_lazy_ptr:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__COLORGRAY1$QWORD$$TFPCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPREADPNG_TFPREADERPNG_$__COLORGRAY2$QWORD$$TFPCOLOR$non_lazy_ptr:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__COLORGRAY2$QWORD$$TFPCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPREADPNG_TFPREADERPNG_$__COLORGRAY4$QWORD$$TFPCOLOR$non_lazy_ptr:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__COLORGRAY4$QWORD$$TFPCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPREADPNG_TFPREADERPNG_$__COLORGRAY8$QWORD$$TFPCOLOR$non_lazy_ptr:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__COLORGRAY8$QWORD$$TFPCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPREADPNG_TFPREADERPNG_$__COLORGRAY16$QWORD$$TFPCOLOR$non_lazy_ptr:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__COLORGRAY16$QWORD$$TFPCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPREADPNG_TFPREADERPNG_$__COLORCOLOR8$QWORD$$TFPCOLOR$non_lazy_ptr:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__COLORCOLOR8$QWORD$$TFPCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPREADPNG_TFPREADERPNG_$__COLORCOLOR16$QWORD$$TFPCOLOR$non_lazy_ptr:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__COLORCOLOR16$QWORD$$TFPCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPREADPNG_TFPREADERPNG_$__COLORGRAYALPHA8$QWORD$$TFPCOLOR$non_lazy_ptr:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__COLORGRAYALPHA8$QWORD$$TFPCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPREADPNG_TFPREADERPNG_$__COLORGRAYALPHA16$QWORD$$TFPCOLOR$non_lazy_ptr:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__COLORGRAYALPHA16$QWORD$$TFPCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPREADPNG_TFPREADERPNG_$__COLORCOLORALPHA8$QWORD$$TFPCOLOR$non_lazy_ptr:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__COLORCOLORALPHA8$QWORD$$TFPCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPREADPNG_TFPREADERPNG_$__COLORCOLORALPHA16$QWORD$$TFPCOLOR$non_lazy_ptr:
.indirect_symbol _FPREADPNG_TFPREADERPNG_$__COLORCOLORALPHA16$QWORD$$TFPCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPREADPNG_BITSUSED1DEPTH$non_lazy_ptr:
.indirect_symbol _TC_FPREADPNG_BITSUSED1DEPTH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPREADPNG_BITSUSED2DEPTH$non_lazy_ptr:
.indirect_symbol _TC_FPREADPNG_BITSUSED2DEPTH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPREADPNG_BITSUSED4DEPTH$non_lazy_ptr:
.indirect_symbol _TC_FPREADPNG_BITSUSED4DEPTH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPNG$_Ld11$non_lazy_ptr:
.indirect_symbol _$FPREADPNG$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPNG$_Ld13$non_lazy_ptr:
.indirect_symbol _$FPREADPNG$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPNG$_Ld15$non_lazy_ptr:
.indirect_symbol _$FPREADPNG$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TMEMORYSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_ZSTREAM_TDECOMPRESSIONSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_ZSTREAM_TDECOMPRESSIONSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_PNGCOMN_SIGNATURE$non_lazy_ptr:
.indirect_symbol _TC_PNGCOMN_SIGNATURE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPNG$_Ld17$non_lazy_ptr:
.indirect_symbol _$FPREADPNG$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPREADPNG_TFPREADERPNG$non_lazy_ptr:
.indirect_symbol _VMT_FPREADPNG_TFPREADERPNG
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr:
.indirect_symbol _U_FPIMAGE_IMAGEHANDLERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPNG$_Ld19$non_lazy_ptr:
.indirect_symbol _$FPREADPNG$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPNG$_Ld21$non_lazy_ptr:
.indirect_symbol _$FPREADPNG$_Ld21
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

