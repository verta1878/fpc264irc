# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPQUANTIZER_RGB2FPCOLOR$LONGWORD$LONGWORD$LONGWORD$$TFPCOLOR
_FPQUANTIZER_RGB2FPCOLOR$LONGWORD$LONGWORD$LONGWORD$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	shll	$8,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-20(%ebp)
	movl	-8(%ebp),%eax
	shll	$8,%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-18(%ebp)
	movl	-12(%ebp),%eax
	shll	$8,%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-16(%ebp)
	movw	$65535,-14(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPCOLORQUANTIZER_$__QUANTIZE$$TFPPALETTE
_FPQUANTIZER_TFPCOLORQUANTIZER_$__QUANTIZE$$TFPPALETTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPCOLORQUANTIZER_$__CREATE$$TFPCOLORQUANTIZER
_FPQUANTIZER_TFPCOLORQUANTIZER_$__CREATE$$TFPCOLORQUANTIZER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj20
Lj20:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj21
	jmp	Lj22
Lj21:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj22:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj27
	jmp	Lj28
Lj27:
	jmp	Lj19
Lj28:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj31
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj35
	movl	-8(%ebp),%eax
	movb	$0,16(%eax)
	movl	-8(%ebp),%eax
	movl	$256,12(%eax)
	movl	-8(%ebp),%eax
	movl	$0,24(%eax)
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_FPQUANTIZER_DEF3$non_lazy_ptr-Lj20(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
Lj35:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj36
	call	LFPC_RERAISE$stub
Lj36:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj56
	jmp	Lj55
Lj56:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj54
	jmp	Lj55
Lj54:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj55:
Lj31:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj33
	leal	-92(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-76(%ebp)
	testl	%eax,%eax
	jne	Lj60
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj61
	jmp	Lj62
Lj61:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj62:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj60:
	call	LFPC_POPADDRSTACK$stub
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj59
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj59:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj33
Lj33:
Lj19:
	movl	-8(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPCOLORQUANTIZER_$__DESTROY
_FPQUANTIZER_TFPCOLORQUANTIZER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj68
Lj68:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj69
	jmp	Lj70
Lj69:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj70:
	movl	$0,-12(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_FPQUANTIZER_DEF3$non_lazy_ptr-Lj68(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj89
	jmp	Lj88
Lj89:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj87
	jmp	Lj88
Lj87:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj88:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPCOLORQUANTIZER_$__SETCOLNUM$LONGWORD
_FPQUANTIZER_TFPCOLORQUANTIZER_$__SETCOLNUM$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj93
Lj93:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj94
	movl	-4(%ebp),%eax
	cmpl	$2,%eax
	jb	Lj97
	jmp	Lj98
Lj97:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-56(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	leal	-52(%ebp),%eax
	movl	L_$FPQUANTIZER$_Ld1$non_lazy_ptr-Lj93(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-52(%ebp),%ecx
	movl	L_VMT_FPQUANTIZER_FPQUANTIZEREXCEPTION$non_lazy_ptr-Lj93(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj93(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj98:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
Lj94:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj95
	call	LFPC_RERAISE$stub
Lj95:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPCOLORQUANTIZER_$__PROGRESS$TOBJECT$TFPIMGPROGRESSSTAGE$BYTE$ANSISTRING$BOOLEAN
_FPQUANTIZER_TFPCOLORQUANTIZER_$__PROGRESS$TOBJECT$TFPIMGPROGRESSSTAGE$BYTE$ANSISTRING$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj119
	jmp	Lj120
Lj119:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movb	16(%ebp),%al
	movb	%al,8(%esp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
Lj120:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPCOLORQUANTIZER_$__GETIMAGE$LONGINT$$TFPCUSTOMIMAGE
_FPQUANTIZER_TFPCOLORQUANTIZER_$__GETIMAGE$LONGINT$$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	call	Lj134
Lj134:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj135
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj138
	jmp	Lj139
Lj138:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	leal	-56(%ebp),%eax
	movl	L_$FPQUANTIZER$_Ld3$non_lazy_ptr-Lj134(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-56(%ebp),%ecx
	movl	L_VMT_FPQUANTIZER_FPQUANTIZEREXCEPTION$non_lazy_ptr-Lj134(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj134(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj139:
	movl	-8(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-12(%ebp)
Lj135:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj136
	call	LFPC_RERAISE$stub
Lj136:
	movl	-12(%ebp),%eax
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPCOLORQUANTIZER_$__SETIMAGE$LONGINT$TFPCUSTOMIMAGE
_FPQUANTIZER_TFPCOLORQUANTIZER_$__SETIMAGE$LONGINT$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	call	Lj159
Lj159:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj160
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj163
	jmp	Lj164
Lj163:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	leal	-56(%ebp),%eax
	movl	L_$FPQUANTIZER$_Ld3$non_lazy_ptr-Lj159(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-56(%ebp),%ecx
	movl	L_VMT_FPQUANTIZER_FPQUANTIZEREXCEPTION$non_lazy_ptr-Lj159(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj159(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj164:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	%ecx,(%eax,%edx,4)
Lj160:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj161
	call	LFPC_RERAISE$stub
Lj161:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPCOLORQUANTIZER_$__SETCOUNT$LONGINT
_FPQUANTIZER_TFPCOLORQUANTIZER_$__SETCOUNT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj184
Lj184:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_FPQUANTIZER_DEF3$non_lazy_ptr-Lj184(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	decl	%eax
	movl	-12(%ebp),%edx
	movl	%edx,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj198
	decl	-16(%ebp)
	.align 2
Lj199:
	incl	-16(%ebp)
	movl	-8(%ebp),%edx
	movl	20(%edx),%edx
	movl	-16(%ebp),%ecx
	movl	$0,(%edx,%ecx,4)
	cmpl	-16(%ebp),%eax
	jg	Lj199
Lj198:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPCOLORQUANTIZER_$__CLEAR
_FPQUANTIZER_TFPCOLORQUANTIZER_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj205
Lj205:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_FPQUANTIZER_DEF3$non_lazy_ptr-Lj205(%ebx),%edx
	movl	-4(%ebp),%eax
	leal	20(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	movl	$0,24(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPCOLORQUANTIZER_$__ADD$TFPCUSTOMIMAGE
_FPQUANTIZER_TFPCOLORQUANTIZER_$__ADD$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	decl	%eax
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jl	Lj221
	decl	-12(%ebp)
	.align 2
Lj222:
	incl	-12(%ebp)
	movl	-8(%ebp),%edx
	movl	20(%edx),%ecx
	movl	-12(%ebp),%edx
	movl	(%ecx,%edx,4),%edx
	testl	%edx,%edx
	je	Lj223
	jmp	Lj224
Lj223:
	movl	-8(%ebp),%edx
	movl	20(%edx),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%ebx
	movl	%ebx,(%edx,%ecx,4)
	jmp	Lj218
Lj224:
	cmpl	-12(%ebp),%eax
	jg	Lj222
Lj221:
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	incl	%edx
	movl	-8(%ebp),%eax
	call	L_FPQUANTIZER_TFPCOLORQUANTIZER_$__SETCOUNT$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	decl	%eax
	movl	-4(%ebp),%edx
	movl	%edx,(%ecx,%eax,4)
Lj218:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPOCTREEQUANTIZER_$__ADDCOLOR$POCTREEQNODE$BYTE$BYTE$BYTE$BYTE
_FPQUANTIZER_TFPOCTREEQUANTIZER_$__ADDCOLOR$POCTREEQNODE$BYTE$BYTE$BYTE$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj234
Lj234:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj235
	jmp	Lj236
Lj235:
	movl	$56,%eax
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj241
	jmp	Lj242
Lj241:
	movl	L_VMT_FPQUANTIZER_FPQUANTIZEREXCEPTION$non_lazy_ptr-Lj234(%ebx),%edx
	movl	L_$FPQUANTIZER$_Ld5$non_lazy_ptr-Lj234(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj234(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj242:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,%cl
	movl	$56,%edx
	call	L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub
	movzbl	8(%ebp),%eax
	cmpl	$7,%eax
	je	Lj255
	jmp	Lj256
Lj255:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	$1,(%eax)
	movl	-12(%ebp),%eax
	incl	64(%eax)
	jmp	Lj259
Lj256:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,(%eax)
	movl	-12(%ebp),%edx
	movzbl	8(%ebp),%esi
	movl	-4(%ebp),%eax
	movl	(%eax),%ecx
	movl	32(%edx,%esi,4),%eax
	movl	%eax,20(%ecx)
	movl	-12(%ebp),%edx
	movzbl	8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,32(%edx,%ecx,4)
Lj259:
Lj236:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpb	$0,(%eax)
	jne	Lj266
	jmp	Lj267
Lj266:
	movzbl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	addl	%eax,8(%edx)
	movzbl	16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	addl	%eax,12(%edx)
	movzbl	12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	addl	%eax,16(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	incl	4(%eax)
	jmp	Lj268
Lj267:
	movzbl	8(%ebp),%edx
	movl	$7,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movb	%dl,-14(%ebp)
	movzbl	8(%ebp),%eax
	movl	L_TC_FPQUANTIZER_MASK$non_lazy_ptr-Lj234(%ebx),%edx
	movb	(%edx,%eax,1),%al
	movb	-8(%ebp),%dl
	andb	%dl,%al
	movzbl	%al,%eax
	movzbl	-14(%ebp),%ecx
	shrl	%cl,%eax
	shll	$2,%eax
	movb	%al,-13(%ebp)
	movzbl	8(%ebp),%edx
	movl	L_TC_FPQUANTIZER_MASK$non_lazy_ptr-Lj234(%ebx),%eax
	movb	(%eax,%edx,1),%al
	movb	16(%ebp),%dl
	andb	%dl,%al
	movzbl	%al,%eax
	movzbl	-14(%ebp),%ecx
	shrl	%cl,%eax
	shll	$1,%eax
	movzbl	-13(%ebp),%edx
	addl	%edx,%eax
	movb	%al,-13(%ebp)
	movzbl	8(%ebp),%eax
	movl	L_TC_FPQUANTIZER_MASK$non_lazy_ptr-Lj234(%ebx),%edx
	movb	(%edx,%eax,1),%al
	movb	12(%ebp),%dl
	andb	%dl,%al
	movzbl	%al,%eax
	movzbl	-14(%ebp),%ecx
	shrl	%cl,%eax
	movzbl	-13(%ebp),%edx
	addl	%edx,%eax
	movb	%al,-13(%ebp)
	movb	12(%ebp),%al
	movb	%al,4(%esp)
	movb	16(%ebp),%al
	movb	%al,8(%esp)
	movzbl	8(%ebp),%eax
	incl	%eax
	movb	%al,(%esp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movzbl	-13(%ebp),%eax
	leal	24(%edx,%eax,4),%edx
	movb	-8(%ebp),%cl
	movl	-12(%ebp),%eax
	call	L_FPQUANTIZER_TFPOCTREEQUANTIZER_$__ADDCOLOR$POCTREEQNODE$BYTE$BYTE$BYTE$BYTE$stub
Lj268:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPOCTREEQUANTIZER_$__DISPOSENODE$POCTREEQNODE
_FPQUANTIZER_TFPOCTREEQUANTIZER_$__DISPOSENODE$POCTREEQNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj291
	jmp	Lj292
Lj291:
	jmp	Lj289
Lj292:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj293
	jmp	Lj294
Lj293:
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj297:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	24(%edx,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj298
	jmp	Lj299
Lj298:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	leal	24(%eax,%edx,4),%edx
	movl	-8(%ebp),%eax
	call	L_FPQUANTIZER_TFPOCTREEQUANTIZER_$__DISPOSENODE$POCTREEQNODE$stub
Lj299:
	cmpl	$7,-12(%ebp)
	jl	Lj297
Lj294:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj289:
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPOCTREEQUANTIZER_$__REDUCE
_FPQUANTIZER_TFPOCTREEQUANTIZER_$__REDUCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$6,-8(%ebp)
	jmp	Lj313
	.align 2
Lj312:
	decl	-8(%ebp)
Lj313:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj315
	jmp	Lj314
Lj315:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	32(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj312
	jmp	Lj314
Lj314:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	32(%eax,%edx,4),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,32(%edx,%ecx,4)
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.align 2
Lj322:
	incl	-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	24(%eax,%edx,4),%eax
	testl	%eax,%eax
	jne	Lj323
	jmp	Lj324
Lj323:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	24(%edx,%eax,4),%eax
	movl	-12(%ebp),%edx
	movl	4(%eax),%eax
	addl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	24(%eax,%edx,4),%eax
	movl	-12(%ebp),%edx
	movl	8(%eax),%eax
	addl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	24(%eax,%edx,4),%eax
	movl	-12(%ebp),%edx
	movl	12(%eax),%eax
	addl	%eax,12(%edx)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	24(%eax,%edx,4),%eax
	movl	-12(%ebp),%edx
	movl	16(%eax),%eax
	addl	%eax,16(%edx)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	leal	24(%eax,%edx,4),%edx
	movl	-4(%ebp),%eax
	call	L_FPQUANTIZER_TFPOCTREEQUANTIZER_$__DISPOSENODE$POCTREEQNODE$stub
	movl	-4(%ebp),%eax
	decl	64(%eax)
Lj324:
	cmpl	$7,-8(%ebp)
	jl	Lj322
	movl	-12(%ebp),%eax
	movb	$1,(%eax)
	movl	-4(%ebp),%eax
	incl	64(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPOCTREEQUANTIZER_$__ADDTOPALETTE$POCTREEQNODE$TFPPALETTE$LONGINT
_FPQUANTIZER_TFPOCTREEQUANTIZER_$__ADDTOPALETTE$POCTREEQNODE$TFPPALETTE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj332
Lj332:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movb	84(%eax),%al
	testb	%al,%al
	je	Lj333
	jmp	Lj334
Lj333:
	jmp	Lj331
Lj334:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpb	$0,(%eax)
	jne	Lj335
	jmp	Lj336
Lj335:
	movl	-12(%ebp),%eax
	movl	64(%eax),%ecx
	movl	$0,%esi
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	cmpl	%eax,%esi
	jl	Lj337
	jg	Lj338
	cmpl	%edx,%ecx
	jbe	Lj337
	jmp	Lj338
Lj337:
	movl	L_VMT_FPQUANTIZER_FPQUANTIZEREXCEPTION$non_lazy_ptr-Lj332(%ebx),%edx
	movl	L_$FPQUANTIZER$_Ld7$non_lazy_ptr-Lj332(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La5:
	movl	%ebp,%ecx
	leal	La5-Lj332(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj338:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%ecx
	movl	8(%edx),%eax
	xorl	%edx,%edx
	divl	4(%ecx)
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%ecx
	movl	12(%edx),%eax
	xorl	%edx,%edx
	divl	4(%ecx)
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	%eax,12(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%ecx
	movl	16(%edx),%eax
	xorl	%edx,%edx
	divl	4(%ecx)
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	%eax,16(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	16(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	call	L_FPQUANTIZER_RGB2FPCOLOR$LONGWORD$LONGWORD$LONGWORD$$TFPCOLOR$stub
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	leal	-24(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	8(%ebp),%eax
	incl	(%eax)
	movl	-12(%ebp),%eax
	incl	80(%eax)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	80(%eax),%eax
	cmpl	76(%edx),%eax
	jae	Lj363
	jmp	Lj364
Lj363:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	76(%eax),%eax
	subl	%eax,80(%edx)
	movl	-12(%ebp),%eax
	incb	72(%eax)
	movl	$0,4(%esp)
	movl	-12(%ebp),%eax
	leal	84(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movb	72(%eax),%al
	movb	%al,8(%esp)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$1,%ecx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*108(%esi)
Lj364:
	jmp	Lj377
Lj336:
	movb	$0,-13(%ebp)
	decb	-13(%ebp)
	.align 2
Lj380:
	incb	-13(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	-13(%ebp),%edx
	movl	24(%eax,%edx,4),%eax
	testl	%eax,%eax
	jne	Lj381
	jmp	Lj382
Lj381:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movzbl	-13(%ebp),%eax
	leal	24(%edx,%eax,4),%edx
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_FPQUANTIZER_TFPOCTREEQUANTIZER_$__ADDTOPALETTE$POCTREEQNODE$TFPPALETTE$LONGINT$stub
Lj382:
	cmpb	$7,-13(%ebp)
	jb	Lj380
Lj377:
Lj331:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPOCTREEQUANTIZER_$__BUILDPALETTE$$TFPPALETTE
_FPQUANTIZER_TFPOCTREEQUANTIZER_$__BUILDPALETTE$$TFPPALETTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	call	Lj392
Lj392:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj393
	jmp	Lj394
Lj393:
	jmp	Lj391
Lj394:
	movl	-4(%ebp),%eax
	movl	64(%eax),%ecx
	movl	L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr-Lj392(%ebx),%edx
	movl	$0,%eax
	call	L_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE$stub
	movl	%eax,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj407
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	leal	28(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FPQUANTIZER_TFPOCTREEQUANTIZER_$__ADDTOPALETTE$POCTREEQNODE$TFPPALETTE$LONGINT$stub
Lj407:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj409
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj420
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	$0,-12(%ebp)
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj420:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj419
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj419:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj409
Lj409:
	movl	-4(%ebp),%edx
	movb	84(%edx),%dl
	testb	%dl,%dl
	je	Lj425
	jmp	Lj426
Lj425:
	movl	-12(%ebp),%edx
	movl	%edx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	$0,-12(%ebp)
Lj426:
	movl	-12(%ebp),%edx
	movl	%edx,-8(%ebp)
Lj391:
	movl	-8(%ebp),%eax
	movl	-100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPOCTREEQUANTIZER_$__INTERNALQUANTIZE$$TFPPALETTE
_FPQUANTIZER_TFPOCTREEQUANTIZER_$__INTERNALQUANTIZE$$TFPPALETTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	movl	%edi,-84(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj439:
	incl	-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,32(%edx,%eax,4)
	cmpl	$7,-12(%ebp)
	jl	Lj439
	movl	-4(%ebp),%eax
	movl	$0,64(%eax)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,68(%edx)
	movl	-4(%ebp),%eax
	movl	$0,76(%eax)
	movl	-4(%ebp),%eax
	movl	$0,80(%eax)
	movl	-4(%ebp),%eax
	movl	24(%eax),%esi
	decl	%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj451
	decl	-12(%ebp)
	.align 2
Lj452:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	jne	Lj453
	jmp	Lj454
Lj453:
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	(%ecx,%eax,4),%eax
	movl	32(%edx),%edx
	movl	28(%eax),%eax
	imull	%eax,%edx
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,76(%eax)
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj457
	jmp	Lj458
Lj457:
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	24(%eax),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	movl	80(%ebx),%edx
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,80(%eax)
	jmp	Lj465
Lj458:
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	(%ecx,%eax,4),%eax
	movl	32(%edx),%edx
	movl	28(%eax),%eax
	imull	%eax,%edx
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,80(%eax)
Lj465:
Lj454:
	cmpl	-12(%ebp),%esi
	jg	Lj452
Lj451:
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	cmpl	$16777216,%eax
	ja	Lj468
	jmp	Lj469
Lj468:
	movl	-4(%ebp),%eax
	movl	$16777216,80(%eax)
Lj469:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	80(%eax),%ecx
	movl	76(%edx),%eax
	addl	%eax,%ecx
	movl	$1374389535,%eax
	mull	%ecx
	shrl	$5,%edx
	movl	-4(%ebp),%eax
	movl	%edx,76(%eax)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	testl	%eax,%eax
	je	Lj474
	jmp	Lj475
Lj474:
	movl	-4(%ebp),%eax
	movl	$-1,76(%eax)
Lj475:
	movl	-4(%ebp),%eax
	movb	$0,72(%eax)
	movl	-4(%ebp),%eax
	movl	$0,80(%eax)
	movl	-4(%ebp),%eax
	movb	$1,84(%eax)
	movl	$0,4(%esp)
	movb	$0,8(%esp)
	movl	-4(%ebp),%eax
	leal	84(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	84(%eax),%al
	testb	%al,%al
	je	Lj498
	jmp	Lj499
Lj498:
	jmp	Lj433
Lj499:
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj500
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	decl	%eax
	movl	%eax,-80(%ebp)
	movl	$0,-20(%ebp)
	movl	-80(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj505
	decl	-20(%ebp)
	.align 2
Lj506:
	incl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj507
	jmp	Lj508
Lj507:
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%edi
	jl	Lj510
	decl	-16(%ebp)
	.align 2
Lj511:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	32(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj513
	decl	-12(%ebp)
	.align 2
Lj514:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-76(%ebp)
	movl	%edx,-72(%ebp)
	movl	-76(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-72(%ebp),%eax
	movl	%eax,-24(%ebp)
	movb	$0,(%esp)
	movw	-24(%ebp),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movb	%al,4(%esp)
	movw	-26(%ebp),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movb	%al,8(%esp)
	movw	-28(%ebp),%cx
	andw	$65280,%cx
	movzwl	%cx,%ecx
	shrl	$8,%ecx
	movl	-4(%ebp),%eax
	leal	28(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPQUANTIZER_TFPOCTREEQUANTIZER_$__ADDCOLOR$POCTREEQNODE$BYTE$BYTE$BYTE$BYTE$stub
	movl	-4(%ebp),%eax
	incl	80(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	80(%eax),%eax
	cmpl	76(%edx),%eax
	jae	Lj535
	jmp	Lj536
Lj535:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	76(%eax),%eax
	subl	%eax,80(%edx)
	movl	-4(%ebp),%eax
	incb	72(%eax)
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	leal	84(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movb	72(%eax),%al
	movb	%al,8(%esp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movl	-4(%ebp),%eax
	movb	84(%eax),%al
	testb	%al,%al
	je	Lj549
	jmp	Lj550
Lj549:
	jmp	Lj503
Lj550:
Lj536:
	cmpl	-12(%ebp),%esi
	jg	Lj514
Lj513:
	cmpl	-16(%ebp),%edi
	jg	Lj511
Lj510:
Lj508:
	movl	-80(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj506
Lj505:
	jmp	Lj552
	.align 2
Lj551:
	movl	-4(%ebp),%eax
	call	L_FPQUANTIZER_TFPOCTREEQUANTIZER_$__REDUCE$stub
	movl	-4(%ebp),%eax
	incl	80(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	80(%eax),%eax
	cmpl	76(%edx),%eax
	jae	Lj556
	jmp	Lj557
Lj556:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	76(%eax),%eax
	subl	%eax,80(%edx)
	movl	-4(%ebp),%eax
	incb	72(%eax)
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	leal	84(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movb	72(%eax),%al
	movb	%al,8(%esp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movl	-4(%ebp),%eax
	movb	84(%eax),%al
	testb	%al,%al
	je	Lj570
	jmp	Lj571
Lj570:
	jmp	Lj503
Lj571:
Lj557:
Lj552:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	64(%eax),%eax
	cmpl	68(%edx),%eax
	ja	Lj551
	jmp	Lj553
Lj553:
	movl	-4(%ebp),%eax
	call	L_FPQUANTIZER_TFPOCTREEQUANTIZER_$__BUILDPALETTE$$TFPPALETTE$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,84(%eax)
	jne	Lj576
	jmp	Lj577
Lj576:
	movl	$0,4(%esp)
	movb	$100,8(%esp)
	movl	-4(%ebp),%eax
	leal	84(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
Lj577:
Lj500:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	leal	28(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPQUANTIZER_TFPOCTREEQUANTIZER_$__DISPOSENODE$POCTREEQNODE$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj501
	decl	%eax
	testl	%eax,%eax
	je	Lj502
	decl	%eax
	testl	%eax,%eax
	je	Lj433
Lj502:
	call	LFPC_RERAISE$stub
Lj503:
	movl	-68(%ebp),%eax
	movl	$2,-68(%ebp)
	jmp	Lj500
Lj501:
Lj433:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	movl	-84(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__CREATE$$TFPMEDIANCUTQUANTIZER
_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__CREATE$$TFPMEDIANCUTQUANTIZER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj596
	jmp	Lj597
Lj596:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj597:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj602
	jmp	Lj603
Lj602:
	jmp	Lj594
Lj603:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj606
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj610
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPQUANTIZER_TFPCOLORQUANTIZER_$__CREATE$$TFPCOLORQUANTIZER$stub
	movl	-8(%ebp),%eax
	movb	$1,16(%eax)
	movl	-8(%ebp),%eax
	movb	$1,61(%eax)
Lj610:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj611
	call	LFPC_RERAISE$stub
Lj611:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj623
	jmp	Lj622
Lj623:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj621
	jmp	Lj622
Lj621:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj622:
Lj606:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj608
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj627
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj628
	jmp	Lj629
Lj628:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj629:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj627:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj626
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj626:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj608
Lj608:
Lj594:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__SETMODE$BYTE
_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__SETMODE$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj635
Lj635:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj636
	movzbl	-4(%ebp),%eax
	cmpl	$3,%eax
	jb	Lj641
Lj641:
	jnc	Lj639
	jmp	Lj640
Lj639:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movzbl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	leal	-52(%ebp),%eax
	movl	L_$FPQUANTIZER$_Ld9$non_lazy_ptr-Lj635(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-52(%ebp),%ecx
	movl	L_VMT_FPQUANTIZER_FPQUANTIZEREXCEPTION$non_lazy_ptr-Lj635(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La6:
	movl	%ebp,%ecx
	leal	La6-Lj635(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj640:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,61(%eax)
Lj636:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj637
	call	LFPC_RERAISE$stub
Lj637:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__FINDLARGESTDIMENSION$TMCBOX$$BYTE
_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__FINDLARGESTDIMENSION$TMCBOX$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-21(%ebp)
	movb	$0,-23(%ebp)
	movb	$0,-25(%ebp)
	movb	$0,-27(%ebp)
	movb	$255,-22(%ebp)
	movb	$255,-24(%ebp)
	movb	$255,-26(%ebp)
	movb	$255,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%edx
	jb	Lj679
	decl	-16(%ebp)
	.align 2
Lj680:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	-16(%ebp),%ecx
	movl	(%eax,%ecx,4),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movb	-17(%ebp),%al
	cmpb	-22(%ebp),%al
	jb	Lj683
	jmp	Lj684
Lj683:
	movb	-17(%ebp),%al
	movb	%al,-22(%ebp)
Lj684:
	movb	-17(%ebp),%al
	cmpb	-21(%ebp),%al
	ja	Lj687
	jmp	Lj688
Lj687:
	movb	-17(%ebp),%al
	movb	%al,-21(%ebp)
Lj688:
	movb	-20(%ebp),%al
	cmpb	-24(%ebp),%al
	jb	Lj691
	jmp	Lj692
Lj691:
	movb	-20(%ebp),%al
	movb	%al,-24(%ebp)
Lj692:
	movb	-20(%ebp),%al
	cmpb	-23(%ebp),%al
	ja	Lj695
	jmp	Lj696
Lj695:
	movb	-20(%ebp),%al
	movb	%al,-23(%ebp)
Lj696:
	movb	-19(%ebp),%al
	cmpb	-26(%ebp),%al
	jb	Lj699
	jmp	Lj700
Lj699:
	movb	-19(%ebp),%al
	movb	%al,-26(%ebp)
Lj700:
	movb	-19(%ebp),%al
	cmpb	-25(%ebp),%al
	ja	Lj703
	jmp	Lj704
Lj703:
	movb	-19(%ebp),%al
	movb	%al,-25(%ebp)
Lj704:
	movb	-18(%ebp),%al
	cmpb	-28(%ebp),%al
	jb	Lj707
	jmp	Lj708
Lj707:
	movb	-18(%ebp),%al
	movb	%al,-28(%ebp)
Lj708:
	movb	-18(%ebp),%al
	cmpb	-27(%ebp),%al
	ja	Lj711
	jmp	Lj712
Lj711:
	movb	-18(%ebp),%al
	movb	%al,-27(%ebp)
Lj712:
	cmpl	-16(%ebp),%edx
	ja	Lj680
Lj679:
	movzbl	-21(%ebp),%eax
	movzbl	-22(%ebp),%edx
	subl	%edx,%eax
	movb	%al,-21(%ebp)
	movzbl	-23(%ebp),%eax
	movzbl	-24(%ebp),%edx
	subl	%edx,%eax
	movb	%al,-23(%ebp)
	movzbl	-25(%ebp),%eax
	movzbl	-26(%ebp),%edx
	subl	%edx,%eax
	movb	%al,-25(%ebp)
	movzbl	-27(%ebp),%eax
	movzbl	-28(%ebp),%edx
	subl	%edx,%eax
	movb	%al,-27(%ebp)
	movb	-21(%ebp),%al
	cmpb	-23(%ebp),%al
	ja	Lj726
	jmp	Lj724
Lj726:
	movb	-21(%ebp),%al
	cmpb	-25(%ebp),%al
	ja	Lj725
	jmp	Lj724
Lj725:
	movb	-21(%ebp),%al
	cmpb	-27(%ebp),%al
	ja	Lj723
	jmp	Lj724
Lj723:
	movb	$0,-9(%ebp)
	jmp	Lj729
Lj724:
	movb	-23(%ebp),%al
	cmpb	-21(%ebp),%al
	ja	Lj733
	jmp	Lj731
Lj733:
	movb	-23(%ebp),%al
	cmpb	-25(%ebp),%al
	ja	Lj732
	jmp	Lj731
Lj732:
	movb	-23(%ebp),%al
	cmpb	-27(%ebp),%al
	ja	Lj730
	jmp	Lj731
Lj730:
	movb	$1,-9(%ebp)
	jmp	Lj736
Lj731:
	movb	-25(%ebp),%al
	cmpb	-21(%ebp),%al
	ja	Lj740
	jmp	Lj738
Lj740:
	movb	-25(%ebp),%al
	cmpb	-23(%ebp),%al
	ja	Lj739
	jmp	Lj738
Lj739:
	movb	-25(%ebp),%al
	cmpb	-27(%ebp),%al
	ja	Lj737
	jmp	Lj738
Lj737:
	movb	$2,-9(%ebp)
	jmp	Lj743
Lj738:
	movb	$3,-9(%ebp)
Lj743:
Lj736:
Lj729:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__COLORCOMPARE$TFPPACKEDCOLOR$TFPPACKEDCOLOR$BYTE$$SHORTINT
_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__COLORCOMPARE$TFPPACKEDCOLOR$TFPPACKEDCOLOR$BYTE$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj747
Lj747:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj748
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj753
	decb	%al
	je	Lj754
	decb	%al
	je	Lj755
	decb	%al
	je	Lj756
	jmp	Lj752
Lj753:
	movzbl	15(%ebp),%edx
	movzbl	11(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-16(%ebp)
	jmp	Lj751
Lj754:
	movzbl	12(%ebp),%eax
	movzbl	8(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj751
Lj755:
	movzbl	13(%ebp),%eax
	movzbl	9(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj751
Lj756:
	movzbl	14(%ebp),%edx
	movzbl	10(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-16(%ebp)
	jmp	Lj751
Lj752:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movzbl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-64(%ebp),%ecx
	leal	-60(%ebp),%eax
	movl	L_$FPQUANTIZER$_Ld11$non_lazy_ptr-Lj747(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-60(%ebp),%ecx
	movl	L_VMT_FPQUANTIZER_FPQUANTIZEREXCEPTION$non_lazy_ptr-Lj747(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La7:
	movl	%ebp,%ecx
	leal	La7-Lj747(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj751:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj781
	jmp	Lj782
Lj781:
	movb	$1,-9(%ebp)
	jmp	Lj785
Lj782:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj786
	jmp	Lj787
Lj786:
	movb	$-1,-9(%ebp)
	jmp	Lj790
Lj787:
	movb	$0,-9(%ebp)
Lj790:
Lj785:
Lj748:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj749
	call	LFPC_RERAISE$stub
Lj749:
	movb	-9(%ebp),%al
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__QUICKSORT$LONGINT$LONGINT$BYTE
_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__QUICKSORT$LONGINT$LONGINT$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj795
	jmp	Lj796
Lj795:
	movl	-12(%ebp),%eax
	movl	36(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	.align 2
Lj803:
	jmp	Lj807
	.align 2
Lj806:
	incl	-16(%ebp)
Lj807:
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jle	Lj809
	jmp	Lj808
Lj809:
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	36(%eax),%edx
	movl	-16(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	(%eax),%eax
	movl	%eax,4(%esp)
	movb	8(%ebp),%dl
	movl	-12(%ebp),%eax
	call	L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__COLORCOMPARE$TFPPACKEDCOLOR$TFPPACKEDCOLOR$BYTE$$SHORTINT$stub
	cmpb	$0,%al
	jle	Lj806
	jmp	Lj808
Lj808:
	jmp	Lj819
	.align 2
Lj818:
	decl	-20(%ebp)
Lj819:
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	36(%eax),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	(%eax),%eax
	movl	%eax,4(%esp)
	movb	8(%ebp),%dl
	movl	-12(%ebp),%eax
	call	L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__COLORCOMPARE$TFPPACKEDCOLOR$TFPPACKEDCOLOR$BYTE$$SHORTINT$stub
	cmpb	$1,%al
	je	Lj818
	jmp	Lj820
Lj820:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj829
	jmp	Lj830
Lj829:
	movl	-12(%ebp),%eax
	movl	36(%eax),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%eax
	movl	36(%eax),%ecx
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	36(%eax),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,(%ecx,%ebx,4)
	movl	-12(%ebp),%eax
	movl	36(%eax),%edx
	movl	-20(%ebp),%eax
	movl	-28(%ebp),%ecx
	movl	%ecx,(%edx,%eax,4)
Lj830:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj805
	jmp	Lj803
Lj805:
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	36(%eax),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	(%eax),%eax
	movl	%eax,4(%esp)
	movb	8(%ebp),%dl
	movl	-12(%ebp),%eax
	call	L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__COLORCOMPARE$TFPPACKEDCOLOR$TFPPACKEDCOLOR$BYTE$$SHORTINT$stub
	testb	%al,%al
	jne	Lj837
	jmp	Lj838
Lj837:
	movl	-12(%ebp),%eax
	movl	36(%eax),%ecx
	movl	-4(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	36(%eax),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,(%ecx,%ebx,4)
	movl	-12(%ebp),%eax
	movl	36(%eax),%ecx
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,(%ecx,%eax,4)
Lj838:
	movb	8(%ebp),%al
	movb	%al,(%esp)
	movl	-20(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__QUICKSORT$LONGINT$LONGINT$BYTE$stub
	movb	8(%ebp),%al
	movb	%al,(%esp)
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__QUICKSORT$LONGINT$LONGINT$BYTE$stub
Lj796:
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__QUICKSORTBOXES$LONGINT$LONGINT
_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__QUICKSORTBOXES$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%esi,-48(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj869
	jmp	Lj870
Lj869:
	movl	-12(%ebp),%eax
	movl	40(%eax),%ecx
	movl	-4(%ebp),%eax
	imull	$12,%eax
	movl	(%ecx,%eax),%edx
	movl	%edx,-32(%ebp)
	movl	4(%ecx,%eax),%edx
	movl	%edx,-28(%ebp)
	movl	8(%ecx,%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	.align 2
Lj877:
	jmp	Lj881
	.align 2
Lj880:
	incl	-16(%ebp)
Lj881:
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jle	Lj883
	jmp	Lj882
Lj883:
	movl	-12(%ebp),%eax
	movl	40(%eax),%edx
	movl	-16(%ebp),%eax
	imull	$12,%eax
	movl	(%edx,%eax),%eax
	cmpl	-32(%ebp),%eax
	jae	Lj880
	jmp	Lj882
Lj882:
	jmp	Lj885
	.align 2
Lj884:
	decl	-20(%ebp)
Lj885:
	movl	-12(%ebp),%eax
	movl	40(%eax),%edx
	movl	-20(%ebp),%eax
	imull	$12,%eax
	movl	(%edx,%eax),%eax
	cmpl	-32(%ebp),%eax
	jb	Lj884
	jmp	Lj886
Lj886:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj887
	jmp	Lj888
Lj887:
	movl	-12(%ebp),%eax
	movl	40(%eax),%ecx
	movl	-16(%ebp),%eax
	imull	$12,%eax
	movl	(%ecx,%eax),%edx
	movl	%edx,-44(%ebp)
	movl	4(%ecx,%eax),%edx
	movl	%edx,-40(%ebp)
	movl	8(%ecx,%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-12(%ebp),%eax
	movl	40(%eax),%ecx
	movl	-16(%ebp),%eax
	imull	$12,%eax
	movl	-12(%ebp),%edx
	movl	40(%edx),%esi
	movl	-20(%ebp),%edx
	imull	$12,%edx
	movl	(%esi,%edx),%ebx
	movl	%ebx,(%ecx,%eax)
	movl	4(%esi,%edx),%ebx
	movl	%ebx,4(%ecx,%eax)
	movl	8(%esi,%edx),%edx
	movl	%edx,8(%ecx,%eax)
	movl	-12(%ebp),%eax
	movl	40(%eax),%ecx
	movl	-20(%ebp),%eax
	imull	$12,%eax
	movl	-44(%ebp),%edx
	movl	%edx,(%ecx,%eax)
	movl	-40(%ebp),%edx
	movl	%edx,4(%ecx,%eax)
	movl	-36(%ebp),%edx
	movl	%edx,8(%ecx,%eax)
Lj888:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj879
	jmp	Lj877
Lj879:
	movl	-12(%ebp),%eax
	movl	40(%eax),%edx
	movl	-20(%ebp),%eax
	imull	$12,%eax
	movl	(%edx,%eax),%eax
	cmpl	-32(%ebp),%eax
	jne	Lj895
	jmp	Lj896
Lj895:
	movl	-12(%ebp),%eax
	movl	40(%eax),%ecx
	movl	-4(%ebp),%eax
	imull	$12,%eax
	movl	-12(%ebp),%edx
	movl	40(%edx),%esi
	movl	-20(%ebp),%edx
	imull	$12,%edx
	movl	(%esi,%edx),%ebx
	movl	%ebx,(%ecx,%eax)
	movl	4(%esi,%edx),%ebx
	movl	%ebx,4(%ecx,%eax)
	movl	8(%esi,%edx),%edx
	movl	%edx,8(%ecx,%eax)
	movl	-12(%ebp),%eax
	movl	40(%eax),%ecx
	movl	-20(%ebp),%eax
	imull	$12,%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%ecx,%eax)
	movl	-28(%ebp),%edx
	movl	%edx,4(%ecx,%eax)
	movl	-24(%ebp),%edx
	movl	%edx,8(%ecx,%eax)
Lj896:
	movl	-20(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__QUICKSORTBOXES$LONGINT$LONGINT$stub
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__QUICKSORTBOXES$LONGINT$LONGINT$stub
Lj870:
	movl	-52(%ebp),%ebx
	movl	-48(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__MEANBOX$TMCBOX$$TFPCOLOR
_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__MEANBOX$TMCBOX$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-132(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-36(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-40(%ebp)
	cmpl	-40(%ebp),%edx
	jl	Lj926
	decl	-40(%ebp)
	.align 2
Lj927:
	incl	-40(%ebp)
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	-40(%ebp),%ecx
	movl	(%eax,%ecx,4),%eax
	movzbl	3(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	-40(%ebp),%ebx
	movl	(%eax,%ebx,4),%eax
	movl	4(%eax),%eax
	imull	%eax,%ecx
	movl	-20(%ebp),%eax
	addl	%eax,%ecx
	movl	%ecx,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	36(%eax),%ecx
	movl	-40(%ebp),%eax
	movl	(%ecx,%eax,4),%eax
	movzbl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	-40(%ebp),%ebx
	movl	(%eax,%ebx,4),%eax
	movl	4(%eax),%eax
	imull	%eax,%ecx
	movl	-24(%ebp),%eax
	addl	%eax,%ecx
	movl	%ecx,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	-40(%ebp),%ecx
	movl	(%eax,%ecx,4),%eax
	movzbl	1(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	36(%eax),%ebx
	movl	-40(%ebp),%eax
	movl	(%ebx,%eax,4),%eax
	movl	4(%eax),%eax
	imull	%eax,%ecx
	movl	-28(%ebp),%eax
	addl	%eax,%ecx
	movl	%ecx,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	-40(%ebp),%ecx
	movl	(%eax,%ecx,4),%eax
	movzbl	2(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	36(%eax),%ebx
	movl	-40(%ebp),%eax
	movl	(%ebx,%eax,4),%eax
	movl	4(%eax),%eax
	imull	%eax,%ecx
	movl	-32(%ebp),%eax
	addl	%eax,%ecx
	movl	%ecx,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	36(%eax),%ecx
	movl	-40(%ebp),%eax
	movl	(%ecx,%eax,4),%eax
	movl	4(%eax),%eax
	addl	%eax,-36(%ebp)
	cmpl	-40(%ebp),%edx
	jg	Lj927
Lj926:
	movl	-20(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$0,-60(%ebp)
	fildq	-64(%ebp)
	movl	-36(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	$0,-68(%ebp)
	fildq	-72(%ebp)
	fdivrp	%st,%st(1)
	fistpq	-80(%ebp)
	fwait
	movl	-80(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	$0,-76(%ebp)
	fildq	-80(%ebp)
	movl	-36(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	$0,-84(%ebp)
	fildq	-88(%ebp)
	fdivrp	%st,%st(1)
	fistpq	-96(%ebp)
	fwait
	movl	-96(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-96(%ebp)
	movl	$0,-92(%ebp)
	fildq	-96(%ebp)
	movl	-36(%ebp),%eax
	movl	%eax,-104(%ebp)
	movl	$0,-100(%ebp)
	fildq	-104(%ebp)
	fdivrp	%st,%st(1)
	fistpq	-112(%ebp)
	fwait
	movl	-112(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-112(%ebp)
	movl	$0,-108(%ebp)
	fildq	-112(%ebp)
	movl	-36(%ebp),%eax
	movl	%eax,-120(%ebp)
	movl	$0,-116(%ebp)
	fildq	-120(%ebp)
	fdivrp	%st,%st(1)
	fistpq	-128(%ebp)
	fwait
	movl	-128(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$255,%eax
	ja	Lj944
	jmp	Lj945
Lj944:
	movl	$255,-20(%ebp)
Lj945:
	movl	-24(%ebp),%eax
	cmpl	$255,%eax
	ja	Lj948
	jmp	Lj949
Lj948:
	movl	$255,-24(%ebp)
Lj949:
	movl	-28(%ebp),%eax
	cmpl	$255,%eax
	ja	Lj952
	jmp	Lj953
Lj952:
	movl	$255,-28(%ebp)
Lj953:
	movl	-32(%ebp),%eax
	cmpl	$255,%eax
	ja	Lj956
	jmp	Lj957
Lj956:
	movl	$255,-32(%ebp)
Lj957:
	movb	-20(%ebp),%al
	movb	%al,-41(%ebp)
	movb	-24(%ebp),%al
	movb	%al,-44(%ebp)
	movb	-28(%ebp),%al
	movb	%al,-43(%ebp)
	movb	-32(%ebp),%al
	movb	%al,-42(%ebp)
	movl	-44(%ebp),%eax
	movl	%eax,(%esp)
	call	L_FPCOLHASH_PACKED2FPCOLOR$TFPPACKEDCOLOR$$TFPCOLOR$stub
	movl	%eax,-128(%ebp)
	movl	%edx,-124(%ebp)
	movl	-128(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	-124(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__GET$TFPCOLOR$$POINTER$stub
	testl	%eax,%eax
	jne	Lj972
	jmp	Lj973
Lj972:
	movl	-8(%ebp),%eax
	movl	36(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%eax),%eax
	movl	8(%edx),%edx
	addl	%edx,%eax
	shrl	$1,%eax
	movl	(%ecx,%eax,4),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	call	L_FPCOLHASH_PACKED2FPCOLOR$TFPPACKEDCOLOR$$TFPCOLOR$stub
	movl	%eax,-128(%ebp)
	movl	%edx,-124(%ebp)
	movl	-128(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	-124(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__GET$TFPCOLOR$$POINTER$stub
	testl	%eax,%eax
	jne	Lj982
	jmp	Lj983
Lj982:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-40(%ebp)
	cmpl	-40(%ebp),%ebx
	jl	Lj989
	decl	-40(%ebp)
	.align 2
Lj990:
	incl	-40(%ebp)
	movl	-8(%ebp),%eax
	movl	36(%eax),%edx
	movl	-40(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movb	3(%eax),%al
	movb	%al,-41(%ebp)
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	-40(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movb	(%eax),%al
	movb	%al,-44(%ebp)
	movl	-8(%ebp),%eax
	movl	36(%eax),%edx
	movl	-40(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movb	1(%eax),%al
	movb	%al,-43(%ebp)
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	-40(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movb	2(%eax),%al
	movb	%al,-42(%ebp)
	movl	-44(%ebp),%eax
	movl	%eax,(%esp)
	call	L_FPCOLHASH_PACKED2FPCOLOR$TFPPACKEDCOLOR$$TFPCOLOR$stub
	movl	%eax,-128(%ebp)
	movl	%edx,-124(%ebp)
	movl	-128(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	-124(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__GET$TFPCOLOR$$POINTER$stub
	testl	%eax,%eax
	je	Lj1003
	jmp	Lj1004
Lj1003:
	jmp	Lj989
Lj1004:
	cmpl	-40(%ebp),%ebx
	jg	Lj990
Lj989:
Lj983:
Lj973:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	leal	-52(%ebp),%edx
	movl	$0,%ecx
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__INSERT$TFPCOLOR$POINTER$stub
	movl	-52(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-48(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-132(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__BUILDPALETTE$$TFPPALETTE
_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__BUILDPALETTE$$TFPPALETTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-116(%ebp)
	movl	%esi,-112(%ebp)
	movl	%edi,-108(%ebp)
	call	Lj1018
Lj1018:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%ecx
	movl	L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr-Lj1018(%edi),%edx
	movl	$0,%eax
	call	L_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE$stub
	movl	%eax,-12(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1029
	movl	L_VMT_FPCOLHASH_TFPCOLORHASHTABLE$non_lazy_ptr-Lj1018(%edi),%edx
	movl	$0,%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__CREATE$$TFPCOLORHASHTABLE$stub
	movl	-4(%ebp),%edx
	movl	%eax,32(%edx)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj1039
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj1044
	decl	-16(%ebp)
	.align 2
Lj1045:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%edx
	movl	-16(%ebp),%eax
	imull	$12,%eax
	leal	(%edx,%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__MEANBOX$TMCBOX$$TFPCOLOR$stub
	movl	%eax,-104(%ebp)
	movl	%edx,-100(%ebp)
	leal	-104(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	-4(%ebp),%eax
	incl	56(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	56(%eax),%eax
	cmpl	52(%edx),%eax
	jae	Lj1056
	jmp	Lj1057
Lj1056:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	56(%eax),%eax
	xorl	%edx,%edx
	divl	52(%ecx)
	movl	-4(%ebp),%eax
	movl	%edx,56(%eax)
	movl	-4(%ebp),%eax
	incb	48(%eax)
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	leal	60(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movb	48(%eax),%al
	movb	%al,8(%esp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*108(%esi)
	movl	-4(%ebp),%eax
	movb	60(%eax),%al
	testb	%al,%al
	je	Lj1072
	jmp	Lj1073
Lj1072:
	jmp	Lj1042
Lj1073:
Lj1057:
	cmpl	-16(%ebp),%ebx
	jg	Lj1045
Lj1044:
Lj1039:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj1040
	decl	%eax
	testl	%eax,%eax
	je	Lj1041
	decl	%eax
	testl	%eax,%eax
	je	Lj1027
Lj1041:
	call	LFPC_RERAISE$stub
Lj1042:
	movl	-96(%ebp),%eax
	movl	$2,-96(%ebp)
	jmp	Lj1039
Lj1040:
Lj1029:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1031
	leal	-68(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj1077
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1077:
	call	LFPC_POPADDRSTACK$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj1076
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1076:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1031
Lj1027:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	jmp	Lj1017
Lj1031:
	movl	-12(%ebp),%edx
	movl	%edx,-8(%ebp)
Lj1017:
	movl	-8(%ebp),%eax
	movl	-116(%ebp),%ebx
	movl	-112(%ebp),%esi
	movl	-108(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__MASKCOLOR$TFPCOLOR$$TFPCOLOR
_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__MASKCOLOR$TFPCOLOR$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	61(%eax),%al
	cmpb	$1,%al
	jb	Lj1085
	decb	%al
	je	Lj1086
	decb	%al
	je	Lj1087
	jmp	Lj1085
Lj1086:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$65535,%ax
	movw	%ax,-16(%ebp)
	movl	-4(%ebp),%eax
	movw	2(%eax),%ax
	andw	$64764,%ax
	movw	%ax,-14(%ebp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	andw	$64764,%ax
	movw	%ax,-12(%ebp)
	jmp	Lj1084
Lj1087:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$63736,%ax
	movw	%ax,-16(%ebp)
	movl	-4(%ebp),%eax
	movw	2(%eax),%ax
	andw	$63736,%ax
	movw	%ax,-14(%ebp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	andw	$63736,%ax
	movw	%ax,-12(%ebp)
	jmp	Lj1084
Lj1085:
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-12(%ebp)
Lj1084:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__INTERNALQUANTIZE$$TFPPALETTE
_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__INTERNALQUANTIZE$$TFPPALETTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$200,%esp
	movl	%ebx,-180(%ebp)
	movl	%esi,-176(%ebp)
	movl	%edi,-172(%ebp)
	call	Lj1103
Lj1103:
	popl	-168(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-132(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj1104
	movl	-168(%ebp),%eax
	movl	L_VMT_FPCOLHASH_TFPCOLORHASHTABLE$non_lazy_ptr-Lj1103(%eax),%edx
	movl	$0,%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__CREATE$$TFPCOLORHASHTABLE$stub
	movl	-4(%ebp),%edx
	movl	%eax,28(%edx)
	leal	-84(%ebp),%ecx
	leal	-108(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-112(%ebp)
	testl	%eax,%eax
	jne	Lj1113
	movl	-4(%ebp),%eax
	movl	$0,52(%eax)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	decl	%edx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%edx
	jl	Lj1120
	decl	-24(%ebp)
	.align 2
Lj1121:
	incl	-24(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	-24(%ebp),%ecx
	movl	(%eax,%ecx,4),%eax
	testl	%eax,%eax
	jne	Lj1122
	jmp	Lj1123
Lj1122:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-24(%ebp),%eax
	movl	(%ecx,%eax,4),%ecx
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	-24(%ebp),%ebx
	movl	(%eax,%ebx,4),%eax
	movl	28(%ecx),%ecx
	movl	32(%eax),%eax
	imull	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	addl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	%ecx,52(%eax)
Lj1123:
	cmpl	-24(%ebp),%edx
	jg	Lj1121
Lj1120:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	52(%eax),%eax
	xorl	%edx,%edx
	divl	12(%ecx)
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	shll	$1,%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,52(%eax)
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	$1374389535,%eax
	mull	%edx
	shrl	$5,%edx
	movl	-4(%ebp),%eax
	movl	%edx,52(%eax)
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	testl	%eax,%eax
	je	Lj1132
	jmp	Lj1133
Lj1132:
	movl	-4(%ebp),%eax
	movl	$-1,52(%eax)
Lj1133:
	movl	-4(%ebp),%eax
	movb	$0,48(%eax)
	movl	-4(%ebp),%eax
	movl	$0,56(%eax)
	movl	-4(%ebp),%eax
	movb	$1,60(%eax)
	movl	$0,4(%esp)
	movb	$0,8(%esp)
	movl	-4(%ebp),%eax
	leal	60(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movl	-4(%ebp),%eax
	movb	60(%eax),%al
	testb	%al,%al
	je	Lj1154
	jmp	Lj1155
Lj1154:
	jmp	Lj1116
Lj1155:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	decl	%eax
	movl	%eax,-164(%ebp)
	movl	$0,-24(%ebp)
	movl	-164(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jl	Lj1157
	decl	-24(%ebp)
	.align 2
Lj1158:
	incl	-24(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-24(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj1159
	jmp	Lj1160
Lj1159:
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-24(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%edi
	jl	Lj1162
	decl	-20(%ebp)
	.align 2
Lj1163:
	incl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	32(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj1165
	decl	-16(%ebp)
	.align 2
Lj1166:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-120(%ebp)
	movl	%edx,-116(%ebp)
	leal	-120(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__MASKCOLOR$TFPCOLOR$$TFPCOLOR$stub
	movl	%eax,-128(%ebp)
	movl	%edx,-124(%ebp)
	leal	-128(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	$1,%ecx
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__ADD$TFPCOLOR$LONGINT$stub
	movl	-4(%ebp),%eax
	incl	56(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	56(%eax),%eax
	cmpl	52(%edx),%eax
	jae	Lj1183
	jmp	Lj1184
Lj1183:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	56(%eax),%eax
	xorl	%edx,%edx
	divl	52(%ecx)
	movl	-4(%ebp),%eax
	movl	%edx,56(%eax)
	movl	-4(%ebp),%eax
	incb	48(%eax)
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	leal	60(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movb	48(%eax),%al
	movb	%al,8(%esp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movl	-4(%ebp),%eax
	movb	60(%eax),%al
	testb	%al,%al
	je	Lj1199
	jmp	Lj1200
Lj1199:
	jmp	Lj1116
Lj1200:
Lj1184:
	cmpl	-16(%ebp),%esi
	jg	Lj1166
Lj1165:
	cmpl	-20(%ebp),%edi
	jg	Lj1163
Lj1162:
Lj1160:
	movl	-164(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jg	Lj1158
Lj1157:
	movl	$0,-116(%ebp)
	leal	-116(%ebp),%eax
	movl	%eax,(%esp)
	movl	-168(%ebp),%eax
	movl	L_INIT_FPCOLHASH_TFPCOLORWEIGHTARRAY$non_lazy_ptr-Lj1103(%eax),%edx
	movl	-4(%ebp),%eax
	leal	36(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-168(%ebp),%ecx
	movl	L_INIT_FPCOLHASH_TFPCOLORWEIGHTARRAY$non_lazy_ptr-Lj1103(%ecx),%eax
	movl	%eax,%edx
	leal	-132(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__GETARRAY$$TFPCOLORWEIGHTARRAY$stub
	movl	%eax,-132(%ebp)
	movl	-132(%ebp),%eax
	call	LFPC_DYNARRAY_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	-168(%ebp),%eax
	movl	L_INIT_FPCOLHASH_TFPCOLORWEIGHTARRAY$non_lazy_ptr-Lj1103(%eax),%edx
	leal	36(%ebx),%eax
	call	LFPC_DYNARRAY_DECR_REF$stub
	movl	-132(%ebp),%eax
	movl	%eax,36(%ebx)
	leal	-124(%ebp),%ecx
	leal	-156(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-128(%ebp)
	testl	%eax,%eax
	jne	Lj1215
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__CLEAR$stub
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-160(%ebp)
	leal	-160(%ebp),%eax
	movl	%eax,(%esp)
	movl	-168(%ebp),%eax
	movl	L_INIT_FPQUANTIZER_DEF37$non_lazy_ptr-Lj1103(%eax),%edx
	movl	-4(%ebp),%eax
	leal	40(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	$0,4(%eax)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	call	Lfpc_dynarray_length$stub
	decl	%eax
	movl	-4(%ebp),%edx
	movl	40(%edx),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	8(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	$1,44(%eax)
	jmp	Lj1242
	.align 2
Lj1241:
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%edx
	decl	%edx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%edx
	jl	Lj1247
	decl	-16(%ebp)
	.align 2
Lj1248:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%ecx
	movl	-16(%ebp),%eax
	imull	$12,%eax
	movl	(%ecx,%eax),%eax
	cmpl	$2,%eax
	jae	Lj1249
	jmp	Lj1250
Lj1249:
	movl	-4(%ebp),%eax
	movl	40(%eax),%ecx
	movl	-16(%ebp),%eax
	imull	$12,%eax
	leal	(%ecx,%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1247
Lj1250:
	cmpl	-16(%ebp),%edx
	jg	Lj1248
Lj1247:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1253
	jmp	Lj1254
Lj1253:
	jmp	Lj1243
Lj1254:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__FINDLARGESTDIMENSION$TMCBOX$$BYTE$stub
	movb	%al,-25(%ebp)
	movb	-25(%ebp),%al
	movb	%al,(%esp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__QUICKSORT$LONGINT$LONGINT$BYTE$stub
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	4(%eax),%edx
	movl	8(%ecx),%eax
	addl	%eax,%edx
	shrl	$1,%edx
	movl	%edx,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	imull	$12,%eax
	movl	-20(%ebp),%edx
	incl	%edx
	movl	%edx,4(%ecx,%eax)
	movl	-4(%ebp),%eax
	movl	40(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	imull	$12,%eax
	movl	-12(%ebp),%edx
	movl	8(%edx),%edx
	movl	%edx,8(%ecx,%eax)
	movl	-4(%ebp),%eax
	movl	40(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	44(%eax),%edx
	imull	$12,%edx
	movl	-12(%ebp),%eax
	movl	8(%eax),%ebx
	movl	-20(%ebp),%eax
	subl	%eax,%ebx
	movl	%ebx,(%ecx,%edx)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	8(%eax),%ecx
	movl	4(%edx),%eax
	subl	%eax,%ecx
	incl	%ecx
	movl	-12(%ebp),%eax
	movl	%ecx,(%eax)
	movl	-4(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__QUICKSORTBOXES$LONGINT$LONGINT$stub
	movl	-4(%ebp),%eax
	incl	44(%eax)
	movl	-4(%ebp),%edx
	movl	-32(%ebp),%eax
	addl	%eax,56(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	56(%eax),%eax
	cmpl	52(%edx),%eax
	jae	Lj1287
	jmp	Lj1288
Lj1287:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	56(%eax),%eax
	xorl	%edx,%edx
	divl	52(%ecx)
	movl	-4(%ebp),%edx
	addb	%al,48(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	56(%eax),%eax
	xorl	%edx,%edx
	divl	52(%ecx)
	movl	-4(%ebp),%eax
	movl	%edx,56(%eax)
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	leal	60(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movb	48(%eax),%al
	movb	%al,8(%esp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movl	-4(%ebp),%eax
	movb	60(%eax),%al
	testb	%al,%al
	je	Lj1303
	jmp	Lj1304
Lj1303:
	jmp	Lj1218
Lj1304:
Lj1288:
Lj1242:
	movl	-4(%ebp),%eax
	movl	44(%eax),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	$0,%edx
	cmpl	%edx,%ecx
	jl	Lj1241
	jg	Lj1243
	cmpl	%eax,%ebx
	jb	Lj1241
	jmp	Lj1243
Lj1243:
	movl	-4(%ebp),%eax
	call	L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__BUILDPALETTE$$TFPPALETTE$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,60(%eax)
	jne	Lj1309
	jmp	Lj1310
Lj1309:
	movl	$0,4(%esp)
	movb	$100,8(%esp)
	movl	-4(%ebp),%eax
	leal	60(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
Lj1310:
Lj1215:
	call	LFPC_POPADDRSTACK$stub
	movl	$0,-160(%ebp)
	leal	-160(%ebp),%eax
	movl	%eax,(%esp)
	movl	-168(%ebp),%eax
	movl	L_INIT_FPQUANTIZER_DEF37$non_lazy_ptr-Lj1103(%eax),%edx
	movl	-4(%ebp),%eax
	leal	40(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj1334
	decl	-16(%ebp)
	.align 2
Lj1335:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%edx
	movl	-16(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj1335
Lj1334:
	movl	$0,-160(%ebp)
	leal	-160(%ebp),%eax
	movl	%eax,(%esp)
	movl	-168(%ebp),%eax
	movl	L_INIT_FPCOLHASH_TFPCOLORWEIGHTARRAY$non_lazy_ptr-Lj1103(%eax),%edx
	movl	-4(%ebp),%eax
	leal	36(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-128(%ebp),%eax
	testl	%eax,%eax
	je	Lj1216
	decl	%eax
	testl	%eax,%eax
	je	Lj1217
	decl	%eax
	testl	%eax,%eax
	je	Lj1116
Lj1217:
	call	LFPC_RERAISE$stub
Lj1218:
	movl	-128(%ebp),%eax
	movl	$2,-128(%ebp)
	jmp	Lj1215
Lj1216:
Lj1113:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-112(%ebp),%eax
	testl	%eax,%eax
	je	Lj1114
	decl	%eax
	testl	%eax,%eax
	je	Lj1115
	decl	%eax
	testl	%eax,%eax
	je	Lj1104
Lj1115:
	call	LFPC_RERAISE$stub
Lj1116:
	movl	-112(%ebp),%eax
	movl	$2,-112(%ebp)
	jmp	Lj1113
Lj1114:
Lj1104:
	call	LFPC_POPADDRSTACK$stub
	movl	-168(%ebp),%ecx
	movl	L_INIT_FPCOLHASH_TFPCOLORWEIGHTARRAY$non_lazy_ptr-Lj1103(%ecx),%eax
	movl	%eax,%edx
	leal	-132(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj1105
	call	LFPC_RERAISE$stub
Lj1105:
	movl	-8(%ebp),%eax
	movl	-180(%ebp),%ebx
	movl	-176(%ebp),%esi
	movl	-172(%ebp),%edi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPQUANTIZER$_Ld13
_$FPQUANTIZER$_Ld13:
	.byte	20
	.ascii	"FPQuantizerException"

.const_data
	.align 2
.globl	_VMT_FPQUANTIZER_FPQUANTIZEREXCEPTION
_VMT_FPQUANTIZER_FPQUANTIZEREXCEPTION:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$FPQUANTIZER$_Ld13
	.long	0,0
	.long	_$FPQUANTIZER$_Ld14
	.long	_RTTI_FPQUANTIZER_FPQUANTIZEREXCEPTION
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
.globl	_$FPQUANTIZER$_Ld16
_$FPQUANTIZER$_Ld16:
	.byte	17
	.ascii	"TFPColorQuantizer"

.const_data
	.align 2
.globl	_VMT_FPQUANTIZER_TFPCOLORQUANTIZER
_VMT_FPQUANTIZER_TFPCOLORQUANTIZER:
	.long	28,-28
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPQUANTIZER$_Ld16
	.long	0,0
	.long	_$FPQUANTIZER$_Ld17
	.long	_RTTI_FPQUANTIZER_TFPCOLORQUANTIZER
	.long	_INIT_FPQUANTIZER_TFPCOLORQUANTIZER
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPQUANTIZER_TFPCOLORQUANTIZER_$__DESTROY
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
	.long	FPC_ABSTRACTERROR
	.long	_FPQUANTIZER_TFPCOLORQUANTIZER_$__SETCOLNUM$LONGWORD
	.long	_FPQUANTIZER_TFPCOLORQUANTIZER_$__PROGRESS$TOBJECT$TFPIMGPROGRESSSTAGE$BYTE$ANSISTRING$BOOLEAN
	.long	_FPQUANTIZER_TFPCOLORQUANTIZER_$__CREATE$$TFPCOLORQUANTIZER
	.long	0

.const_data
	.align 2
.globl	_$FPQUANTIZER$_Ld19
_$FPQUANTIZER$_Ld19:
	.byte	18
	.ascii	"TFPOctreeQuantizer"

.const_data
	.align 2
.globl	_VMT_FPQUANTIZER_TFPOCTREEQUANTIZER
_VMT_FPQUANTIZER_TFPOCTREEQUANTIZER:
	.long	88,-88
	.long	_VMT_FPQUANTIZER_TFPCOLORQUANTIZER
	.long	_$FPQUANTIZER$_Ld19
	.long	0,0
	.long	_$FPQUANTIZER$_Ld20
	.long	_RTTI_FPQUANTIZER_TFPOCTREEQUANTIZER
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPQUANTIZER_TFPCOLORQUANTIZER_$__DESTROY
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
	.long	_FPQUANTIZER_TFPOCTREEQUANTIZER_$__INTERNALQUANTIZE$$TFPPALETTE
	.long	_FPQUANTIZER_TFPCOLORQUANTIZER_$__SETCOLNUM$LONGWORD
	.long	_FPQUANTIZER_TFPCOLORQUANTIZER_$__PROGRESS$TOBJECT$TFPIMGPROGRESSSTAGE$BYTE$ANSISTRING$BOOLEAN
	.long	_FPQUANTIZER_TFPCOLORQUANTIZER_$__CREATE$$TFPCOLORQUANTIZER
	.long	0

.const_data
	.align 2
.globl	_$FPQUANTIZER$_Ld22
_$FPQUANTIZER$_Ld22:
	.byte	21
	.ascii	"TFPMedianCutQuantizer"

.const_data
	.align 2
.globl	_VMT_FPQUANTIZER_TFPMEDIANCUTQUANTIZER
_VMT_FPQUANTIZER_TFPMEDIANCUTQUANTIZER:
	.long	64,-64
	.long	_VMT_FPQUANTIZER_TFPCOLORQUANTIZER
	.long	_$FPQUANTIZER$_Ld22
	.long	0,0
	.long	_$FPQUANTIZER$_Ld23
	.long	_RTTI_FPQUANTIZER_TFPMEDIANCUTQUANTIZER
	.long	_INIT_FPQUANTIZER_TFPMEDIANCUTQUANTIZER
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPQUANTIZER_TFPCOLORQUANTIZER_$__DESTROY
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
	.long	_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__INTERNALQUANTIZE$$TFPPALETTE
	.long	_FPQUANTIZER_TFPCOLORQUANTIZER_$__SETCOLNUM$LONGWORD
	.long	_FPQUANTIZER_TFPCOLORQUANTIZER_$__PROGRESS$TOBJECT$TFPIMGPROGRESSSTAGE$BYTE$ANSISTRING$BOOLEAN
	.long	_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__CREATE$$TFPMEDIANCUTQUANTIZER
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPQUANTIZER
_THREADVARLIST_FPQUANTIZER:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$FPQUANTIZER$_Ld2
_$FPQUANTIZER$_Ld2:
	.short	0,1
	.long	0,-1,21
.reference _$FPQUANTIZER$_Ld1
.globl	_$FPQUANTIZER$_Ld1
_$FPQUANTIZER$_Ld1:
.reference _$FPQUANTIZER$_Ld2
	.ascii	"Invalid color depth: \000"

.const_data
	.align 2
.globl	_$FPQUANTIZER$_Ld4
_$FPQUANTIZER$_Ld4:
	.short	0,1
	.long	0,-1,21
.reference _$FPQUANTIZER$_Ld3
.globl	_$FPQUANTIZER$_Ld3
_$FPQUANTIZER$_Ld3:
.reference _$FPQUANTIZER$_Ld4
	.ascii	"Invalid image index: \000"

.data
.globl	_TC_FPQUANTIZER_MASK
_TC_FPQUANTIZER_MASK:
	.byte	128,64,32,16,8,4,2,1

.const_data
	.align 2
.globl	_$FPQUANTIZER$_Ld6
_$FPQUANTIZER$_Ld6:
	.short	0,1
	.long	0,-1,13
.reference _$FPQUANTIZER$_Ld5
.globl	_$FPQUANTIZER$_Ld5
_$FPQUANTIZER$_Ld5:
.reference _$FPQUANTIZER$_Ld6
	.ascii	"Out of memory\000"

.const_data
	.align 2
.globl	_$FPQUANTIZER$_Ld8
_$FPQUANTIZER$_Ld8:
	.short	0,1
	.long	0,-1,56
.reference _$FPQUANTIZER$_Ld7
.globl	_$FPQUANTIZER$_Ld7
_$FPQUANTIZER$_Ld7:
.reference _$FPQUANTIZER$_Ld8
	.ascii	"Octree Quantizer internal error: palette index too "
	.ascii	"high.\000"

.const_data
	.align 2
.globl	_$FPQUANTIZER$_Ld10
_$FPQUANTIZER$_Ld10:
	.short	0,1
	.long	0,-1,24
.reference _$FPQUANTIZER$_Ld9
.globl	_$FPQUANTIZER$_Ld9
_$FPQUANTIZER$_Ld9:
.reference _$FPQUANTIZER$_Ld10
	.ascii	"Invalid quantizer mode: \000"

.const_data
	.align 2
.globl	_$FPQUANTIZER$_Ld12
_$FPQUANTIZER$_Ld12:
	.short	0,1
	.long	0,-1,19
.reference _$FPQUANTIZER$_Ld11
.globl	_$FPQUANTIZER$_Ld11
_$FPQUANTIZER$_Ld11:
.reference _$FPQUANTIZER$_Ld12
	.ascii	"Invalid dimension: \000"
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

Lfpc_dynarray_setlength$stub:
.indirect_symbol fpc_dynarray_setlength
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

L_SYSTEM_TOBJECT_$__DESTROY$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__DESTROY
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

L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$QWORD$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_concat$stub:
.indirect_symbol fpc_ansistr_concat
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

L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPQUANTIZER_TFPCOLORQUANTIZER_$__SETCOUNT$LONGINT$stub:
.indirect_symbol _FPQUANTIZER_TFPCOLORQUANTIZER_$__SETCOUNT$LONGINT
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

L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLBYTE$formal$LONGINT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPQUANTIZER_TFPOCTREEQUANTIZER_$__ADDCOLOR$POCTREEQNODE$BYTE$BYTE$BYTE$BYTE$stub:
.indirect_symbol _FPQUANTIZER_TFPOCTREEQUANTIZER_$__ADDCOLOR$POCTREEQNODE$BYTE$BYTE$BYTE$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPQUANTIZER_TFPOCTREEQUANTIZER_$__DISPOSENODE$POCTREEQNODE$stub:
.indirect_symbol _FPQUANTIZER_TFPOCTREEQUANTIZER_$__DISPOSENODE$POCTREEQNODE
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

L_FPQUANTIZER_RGB2FPCOLOR$LONGWORD$LONGWORD$LONGWORD$$TFPCOLOR$stub:
.indirect_symbol _FPQUANTIZER_RGB2FPCOLOR$LONGWORD$LONGWORD$LONGWORD$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPQUANTIZER_TFPOCTREEQUANTIZER_$__ADDTOPALETTE$POCTREEQNODE$TFPPALETTE$LONGINT$stub:
.indirect_symbol _FPQUANTIZER_TFPOCTREEQUANTIZER_$__ADDTOPALETTE$POCTREEQNODE$TFPPALETTE$LONGINT
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

L_SYSTEM_TOBJECT_$__FREE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREE
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

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPQUANTIZER_TFPOCTREEQUANTIZER_$__REDUCE$stub:
.indirect_symbol _FPQUANTIZER_TFPOCTREEQUANTIZER_$__REDUCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPQUANTIZER_TFPOCTREEQUANTIZER_$__BUILDPALETTE$$TFPPALETTE$stub:
.indirect_symbol _FPQUANTIZER_TFPOCTREEQUANTIZER_$__BUILDPALETTE$$TFPPALETTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPQUANTIZER_TFPCOLORQUANTIZER_$__CREATE$$TFPCOLORQUANTIZER$stub:
.indirect_symbol _FPQUANTIZER_TFPCOLORQUANTIZER_$__CREATE$$TFPCOLORQUANTIZER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__COLORCOMPARE$TFPPACKEDCOLOR$TFPPACKEDCOLOR$BYTE$$SHORTINT$stub:
.indirect_symbol _FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__COLORCOMPARE$TFPPACKEDCOLOR$TFPPACKEDCOLOR$BYTE$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__QUICKSORT$LONGINT$LONGINT$BYTE$stub:
.indirect_symbol _FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__QUICKSORT$LONGINT$LONGINT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__QUICKSORTBOXES$LONGINT$LONGINT$stub:
.indirect_symbol _FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__QUICKSORTBOXES$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCOLHASH_PACKED2FPCOLOR$TFPPACKEDCOLOR$$TFPCOLOR$stub:
.indirect_symbol _FPCOLHASH_PACKED2FPCOLOR$TFPPACKEDCOLOR$$TFPCOLOR
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

L_FPCOLHASH_TFPCOLORHASHTABLE_$__INSERT$TFPCOLOR$POINTER$stub:
.indirect_symbol _FPCOLHASH_TFPCOLORHASHTABLE_$__INSERT$TFPCOLOR$POINTER
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

L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__MEANBOX$TMCBOX$$TFPCOLOR$stub:
.indirect_symbol _FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__MEANBOX$TMCBOX$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__MASKCOLOR$TFPCOLOR$$TFPCOLOR$stub:
.indirect_symbol _FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__MASKCOLOR$TFPCOLOR$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCOLHASH_TFPCOLORHASHTABLE_$__ADD$TFPCOLOR$LONGINT$stub:
.indirect_symbol _FPCOLHASH_TFPCOLORHASHTABLE_$__ADD$TFPCOLOR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_FINALIZE$stub:
.indirect_symbol FPC_FINALIZE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCOLHASH_TFPCOLORHASHTABLE_$__GETARRAY$$TFPCOLORWEIGHTARRAY$stub:
.indirect_symbol _FPCOLHASH_TFPCOLORHASHTABLE_$__GETARRAY$$TFPCOLORWEIGHTARRAY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DYNARRAY_INCR_REF$stub:
.indirect_symbol FPC_DYNARRAY_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DYNARRAY_DECR_REF$stub:
.indirect_symbol FPC_DYNARRAY_DECR_REF
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

Lfpc_dynarray_length$stub:
.indirect_symbol fpc_dynarray_length
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__FINDLARGESTDIMENSION$TMCBOX$$BYTE$stub:
.indirect_symbol _FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__FINDLARGESTDIMENSION$TMCBOX$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__BUILDPALETTE$$TFPPALETTE$stub:
.indirect_symbol _FPQUANTIZER_TFPMEDIANCUTQUANTIZER_$__BUILDPALETTE$$TFPPALETTE
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
.globl	_$FPQUANTIZER$_Ld14
_$FPQUANTIZER$_Ld14:
	.short	0
	.long	_$FPQUANTIZER$_Ld15
	.align 2
.globl	_$FPQUANTIZER$_Ld15
_$FPQUANTIZER$_Ld15:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPQUANTIZER_FPQUANTIZEREXCEPTION
_INIT_FPQUANTIZER_FPQUANTIZEREXCEPTION:
	.byte	15,20
	.ascii	"FPQuantizerException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPQUANTIZER_FPQUANTIZEREXCEPTION
_RTTI_FPQUANTIZER_FPQUANTIZEREXCEPTION:
	.byte	15,20
	.ascii	"FPQuantizerException"
	.long	_VMT_FPQUANTIZER_FPQUANTIZEREXCEPTION
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	11
	.ascii	"FPQuantizer"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPQUANTIZER_TFPQUANTIZERPROGRESSEVENT
_INIT_FPQUANTIZER_TFPQUANTIZERPROGRESSEVENT:
	.byte	6,25
	.ascii	"TFPQuantizerProgressEvent"
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
.globl	_RTTI_FPQUANTIZER_TFPQUANTIZERPROGRESSEVENT
_RTTI_FPQUANTIZER_TFPQUANTIZERPROGRESSEVENT:
	.byte	6,25
	.ascii	"TFPQuantizerProgressEvent"
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
.globl	_INIT_FPQUANTIZER_DEF3
_INIT_FPQUANTIZER_DEF3:
	.byte	21
	.ascii	"\000"
	.long	4
	.long	_INIT_FPIMAGE_TFPCUSTOMIMAGE
	.long	-1,0
	.byte	11
	.ascii	"FPQuantizer"

.const_data
	.align 2
.globl	_$FPQUANTIZER$_Ld17
_$FPQUANTIZER$_Ld17:
	.short	0
	.long	_$FPQUANTIZER$_Ld18
	.align 2
.globl	_$FPQUANTIZER$_Ld18
_$FPQUANTIZER$_Ld18:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPQUANTIZER_TFPCOLORQUANTIZER
_INIT_FPQUANTIZER_TFPCOLORQUANTIZER:
	.byte	15,17
	.ascii	"TFPColorQuantizer"
	.long	4,1
	.long	_INIT_FPQUANTIZER_DEF3
	.long	20

.const_data
	.align 2
.globl	_RTTI_FPQUANTIZER_TFPCOLORQUANTIZER
_RTTI_FPQUANTIZER_TFPCOLORQUANTIZER:
	.byte	15,17
	.ascii	"TFPColorQuantizer"
	.long	_VMT_FPQUANTIZER_TFPCOLORQUANTIZER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	11
	.ascii	"FPQuantizer"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPQUANTIZER_POCTREEQNODE
_INIT_FPQUANTIZER_POCTREEQNODE:
	.byte	0
	.ascii	"\014POctreeQNode"

.const_data
	.align 2
.globl	_RTTI_FPQUANTIZER_POCTREEQNODE
_RTTI_FPQUANTIZER_POCTREEQNODE:
	.byte	0
	.ascii	"\014POctreeQNode"

.const_data
	.align 2
.globl	_INIT_FPQUANTIZER_TOCTREEQCHILDS
_INIT_FPQUANTIZER_TOCTREEQCHILDS:
	.byte	12
	.ascii	"\016TOctreeQChilds"
	.long	4,8
	.long	_INIT_FPQUANTIZER_POCTREEQNODE
	.long	-1

.const_data
	.align 2
.globl	_RTTI_FPQUANTIZER_TOCTREEQCHILDS
_RTTI_FPQUANTIZER_TOCTREEQCHILDS:
	.byte	12
	.ascii	"\016TOctreeQChilds"
	.long	4,8
	.long	_RTTI_FPQUANTIZER_POCTREEQNODE
	.long	-1

.const_data
	.align 2
.globl	_INIT_FPQUANTIZER_TOCTREEQNODE
_INIT_FPQUANTIZER_TOCTREEQNODE:
	.byte	13,12
	.ascii	"TOctreeQNode"
	.long	56,0

.const_data
	.align 2
.globl	_RTTI_FPQUANTIZER_TOCTREEQNODE
_RTTI_FPQUANTIZER_TOCTREEQNODE:
	.byte	13,12
	.ascii	"TOctreeQNode"
	.long	56,7
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_FPQUANTIZER_POCTREEQNODE
	.long	20
	.long	_RTTI_FPQUANTIZER_TOCTREEQCHILDS
	.long	24

.const_data
	.align 2
.globl	_$FPQUANTIZER$_Ld20
_$FPQUANTIZER$_Ld20:
	.short	0
	.long	_$FPQUANTIZER$_Ld21
	.align 2
.globl	_$FPQUANTIZER$_Ld21
_$FPQUANTIZER$_Ld21:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPQUANTIZER_TFPOCTREEQUANTIZER
_INIT_FPQUANTIZER_TFPOCTREEQUANTIZER:
	.byte	15,18
	.ascii	"TFPOctreeQuantizer"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPQUANTIZER_TFPOCTREEQUANTIZER
_RTTI_FPQUANTIZER_TFPOCTREEQUANTIZER:
	.byte	15,18
	.ascii	"TFPOctreeQuantizer"
	.long	_VMT_FPQUANTIZER_TFPOCTREEQUANTIZER
	.long	_RTTI_FPQUANTIZER_TFPCOLORQUANTIZER
	.short	0
	.byte	11
	.ascii	"FPQuantizer"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPQUANTIZER_TMCBOX
_INIT_FPQUANTIZER_TMCBOX:
	.byte	13,6
	.ascii	"TMCBox"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_FPQUANTIZER_TMCBOX
_RTTI_FPQUANTIZER_TMCBOX:
	.byte	13,6
	.ascii	"TMCBox"
	.long	12,3
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8

.const_data
	.align 2
.globl	_INIT_FPQUANTIZER_DEF37
_INIT_FPQUANTIZER_DEF37:
	.byte	21
	.ascii	"\000"
	.long	12
	.long	_INIT_FPQUANTIZER_TMCBOX
	.long	-1,0
	.byte	11
	.ascii	"FPQuantizer"

.const_data
	.align 2
.globl	_$FPQUANTIZER$_Ld23
_$FPQUANTIZER$_Ld23:
	.short	0
	.long	_$FPQUANTIZER$_Ld24
	.align 2
.globl	_$FPQUANTIZER$_Ld24
_$FPQUANTIZER$_Ld24:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPQUANTIZER_TFPMEDIANCUTQUANTIZER
_INIT_FPQUANTIZER_TFPMEDIANCUTQUANTIZER:
	.byte	15,21
	.ascii	"TFPMedianCutQuantizer"
	.long	4,2
	.long	_INIT_FPCOLHASH_TFPCOLORWEIGHTARRAY
	.long	36
	.long	_INIT_FPQUANTIZER_DEF37
	.long	40

.const_data
	.align 2
.globl	_RTTI_FPQUANTIZER_TFPMEDIANCUTQUANTIZER
_RTTI_FPQUANTIZER_TFPMEDIANCUTQUANTIZER:
	.byte	15,21
	.ascii	"TFPMedianCutQuantizer"
	.long	_VMT_FPQUANTIZER_TFPMEDIANCUTQUANTIZER
	.long	_RTTI_FPQUANTIZER_TFPCOLORQUANTIZER
	.short	0
	.byte	11
	.ascii	"FPQuantizer"
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
L_INIT_FPQUANTIZER_DEF3$non_lazy_ptr:
.indirect_symbol _INIT_FPQUANTIZER_DEF3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPQUANTIZER$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPQUANTIZER$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPQUANTIZER_FPQUANTIZEREXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_FPQUANTIZER_FPQUANTIZEREXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPQUANTIZER$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPQUANTIZER$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPQUANTIZER$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPQUANTIZER$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPQUANTIZER_MASK$non_lazy_ptr:
.indirect_symbol _TC_FPQUANTIZER_MASK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPQUANTIZER$_Ld7$non_lazy_ptr:
.indirect_symbol _$FPQUANTIZER$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TFPPALETTE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPQUANTIZER$_Ld9$non_lazy_ptr:
.indirect_symbol _$FPQUANTIZER$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPQUANTIZER$_Ld11$non_lazy_ptr:
.indirect_symbol _$FPQUANTIZER$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCOLHASH_TFPCOLORHASHTABLE$non_lazy_ptr:
.indirect_symbol _VMT_FPCOLHASH_TFPCOLORHASHTABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_FPCOLHASH_TFPCOLORWEIGHTARRAY$non_lazy_ptr:
.indirect_symbol _INIT_FPCOLHASH_TFPCOLORWEIGHTARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_FPQUANTIZER_DEF37$non_lazy_ptr:
.indirect_symbol _INIT_FPQUANTIZER_DEF37
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

