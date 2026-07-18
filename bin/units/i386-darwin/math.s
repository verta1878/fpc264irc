# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_MATH_ARCTAN2$EXTENDED$EXTENDED$$EXTENDED
_MATH_ARCTAN2$EXTENDED$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fldt	20(%ebp)
	fldt	8(%ebp)
	fpatan
	fwait
	leave
	ret

.text
	.align 4
.globl	_MATH_SINCOS$EXTENDED$EXTENDED$EXTENDED
_MATH_SINCOS$EXTENDED$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	fldt	8(%ebp)
	fsincos
	fstpt	(%edx)
	fstpt	(%eax)
	fwait
	leave
	ret

.text
	.align 4
.globl	_MATH_TAN$EXTENDED$$EXTENDED
_MATH_TAN$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fldt	8(%ebp)
	fptan
	fstp	%st
	fwait
	leave
	ret

.text
	.align 4
.globl	_MATH_COTAN$EXTENDED$$EXTENDED
_MATH_COTAN$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fldt	8(%ebp)
	fptan
	fdivp	%st,%st(1)
	fwait
	leave
	ret

.text
	.align 4
.globl	_MATH_DIVMOD$LONGINT$WORD$WORD$WORD
_MATH_DIVMOD$LONGINT$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	pushl	%edi
	movzwl	%dx,%edi
	cltd
	idivl	%edi
	movw	%ax,(%ecx)
	movl	8(%ebp),%ecx
	movw	%dx,(%ecx)
	popl	%edi
	leave
	ret

.text
	.align 4
.globl	_MATH_DIVMOD$LONGINT$WORD$SMALLINT$SMALLINT
_MATH_DIVMOD$LONGINT$WORD$SMALLINT$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	pushl	%edi
	movzwl	%dx,%edi
	cltd
	idivl	%edi
	movw	%ax,(%ecx)
	movl	8(%ebp),%ecx
	movw	%dx,(%ecx)
	popl	%edi
	leave
	ret

.text
	.align 4
.globl	_MATH_DIVMOD$LONGWORD$LONGWORD$LONGWORD$LONGWORD
_MATH_DIVMOD$LONGWORD$LONGWORD$LONGWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	pushl	%edi
	movl	%edx,%edi
	xorl	%edx,%edx
	divl	%edi
	movl	%eax,(%ecx)
	movl	8(%ebp),%ecx
	movl	%edx,(%ecx)
	popl	%edi
	leave
	ret

.text
	.align 4
.globl	_MATH_DIVMOD$LONGINT$LONGINT$LONGINT$LONGINT
_MATH_DIVMOD$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	pushl	%edi
	movl	%edx,%edi
	cltd
	idivl	%edi
	movl	%eax,(%ecx)
	movl	8(%ebp),%ecx
	movl	%edx,(%ecx)
	popl	%edi
	leave
	ret

.text
	.align 4
.globl	_MATH_GETROUNDMODE$$TFPUROUNDINGMODE
_MATH_GETROUNDMODE$$TFPUROUNDINGMODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_SYSTEM_GET8087CW$$WORD$stub
	movzwl	%ax,%eax
	shrl	$10,%eax
	andl	$3,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_SETROUNDMODE$TFPUROUNDINGMODE$$TFPUROUNDINGMODE
_MATH_SETROUNDMODE$TFPUROUNDINGMODE$$TFPUROUNDINGMODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj24
Lj24:
	popl	%ebx
	movl	%eax,-4(%ebp)
	call	L_SYSTEM_GET8087CW$$WORD$stub
	movw	%ax,-10(%ebp)
	movw	-10(%ebp),%ax
	andw	$62463,%ax
	movzwl	%ax,%eax
	movl	-4(%ebp),%edx
	shll	$10,%edx
	orl	%edx,%eax
	call	L_SYSTEM_SET8087CW$WORD$stub
	movl	L_TC_SYSTEM_HAS_SSE_SUPPORT$non_lazy_ptr-Lj24(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj29
	jmp	Lj30
Lj29:
	call	L_SYSTEM_GETSSECSR$$LONGWORD$stub
	andl	$-24577,%eax
	movl	-4(%ebp),%edx
	shll	$13,%edx
	orl	%edx,%eax
	call	L_SYSTEM_SETSSECSR$LONGWORD$stub
Lj30:
	movzwl	-10(%ebp),%eax
	shrl	$10,%eax
	andl	$3,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_GETPRECISIONMODE$$TFPUPRECISIONMODE
_MATH_GETPRECISIONMODE$$TFPUPRECISIONMODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_SYSTEM_GET8087CW$$WORD$stub
	movzwl	%ax,%eax
	shrl	$8,%eax
	andl	$3,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_SETPRECISIONMODE$TFPUPRECISIONMODE$$TFPUPRECISIONMODE
_MATH_SETPRECISIONMODE$TFPUPRECISIONMODE$$TFPUPRECISIONMODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	call	L_SYSTEM_GET8087CW$$WORD$stub
	movw	%ax,-10(%ebp)
	movw	-10(%ebp),%ax
	andw	$64767,%ax
	movzwl	%ax,%eax
	movl	-4(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	call	L_SYSTEM_SET8087CW$WORD$stub
	movzwl	-10(%ebp),%eax
	shrl	$8,%eax
	andl	$3,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_GETEXCEPTIONMASK$$TFPUEXCEPTIONMASK
_MATH_GETEXCEPTIONMASK$$TFPUEXCEPTIONMASK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_SYSTEM_GET8087CW$$WORD$stub
	andw	$63,%ax
	movzwl	%ax,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_SETEXCEPTIONMASK$TFPUEXCEPTIONMASK$$TFPUEXCEPTIONMASK
_MATH_SETEXCEPTIONMASK$TFPUEXCEPTIONMASK$$TFPUEXCEPTIONMASK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj52
Lj52:
	popl	%ebx
	movl	%eax,-4(%ebp)
	call	L_SYSTEM_GET8087CW$$WORD$stub
	movw	%ax,-10(%ebp)
	movw	-10(%ebp),%ax
	andw	$65472,%ax
	movzbw	-4(%ebp),%dx
	orw	%dx,%ax
	call	L_SYSTEM_SET8087CW$WORD$stub
	movl	L_TC_SYSTEM_HAS_SSE_SUPPORT$non_lazy_ptr-Lj52(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj57
	jmp	Lj58
Lj57:
	call	L_SYSTEM_GETSSECSR$$LONGWORD$stub
	andl	$-8065,%eax
	movl	-4(%ebp),%edx
	shll	$7,%edx
	orl	%edx,%eax
	call	L_SYSTEM_SETSSECSR$LONGWORD$stub
Lj58:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj52(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj63
	movl	L_U_SYSTEM_SOFTFLOAT_EXCEPTION_MASK$non_lazy_ptr-Lj52(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj64
Lj63:
	movl	L_U_SYSTEM_SOFTFLOAT_EXCEPTION_MASK$non_lazy_ptr-Lj52(%ebx),%edx
	leal	4(%edx),%eax
Lj64:
	movb	-4(%ebp),%dl
	movb	%dl,(%eax)
	movw	-10(%ebp),%ax
	andw	$63,%ax
	movzwl	%ax,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_CLEAREXCEPTIONS$BOOLEAN
_MATH_CLEAREXCEPTIONS$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	cmpb	$0,%al
	je	Lj69
	fwait
Lj69:
	fnclex
	leave
	ret

.text
	.align 4
.globl	_MATH_DOMATHERROR$SHORTSTRING
_MATH_DOMATHERROR$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj71
Lj71:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$4,-16(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_MATH_SMATHERROR$non_lazy_ptr-Lj71(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_EMATHERROR$non_lazy_ptr-Lj71(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj71(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_INVALIDARGUMENT
_MATH_INVALIDARGUMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj83
Lj83:
	popl	%ebx
	movl	L_RESSTR_MATH_SINVALIDARGUMENT$non_lazy_ptr-Lj83(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_MATH_EINVALIDARGUMENT$non_lazy_ptr-Lj83(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj83(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_SIGN$LONGINT$$TVALUESIGN
_MATH_SIGN$LONGINT$$TVALUESIGN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj92
	jmp	Lj93
Lj92:
	movb	$-1,-5(%ebp)
	jmp	Lj96
Lj93:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj97
	jmp	Lj98
Lj97:
	movb	$1,-5(%ebp)
	jmp	Lj101
Lj98:
	movb	$0,-5(%ebp)
Lj101:
Lj96:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_SIGN$INT64$$TVALUESIGN
_MATH_SIGN$INT64$$TVALUESIGN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj106
	jg	Lj107
	cmpl	$0,%eax
	jb	Lj106
	jmp	Lj107
Lj106:
	movb	$-1,-1(%ebp)
	jmp	Lj110
Lj107:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jg	Lj111
	jl	Lj112
	cmpl	$0,%eax
	ja	Lj111
	jmp	Lj112
Lj111:
	movb	$1,-1(%ebp)
	jmp	Lj115
Lj112:
	movb	$0,-1(%ebp)
Lj115:
Lj110:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_SIGN$SINGLE$$TVALUESIGN
_MATH_SIGN$SINGLE$$TVALUESIGN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	fldz
	flds	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj120
	jmp	Lj121
Lj120:
	movb	$-1,-1(%ebp)
	jmp	Lj124
Lj121:
	fldz
	flds	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj125
	jmp	Lj126
Lj125:
	movb	$1,-1(%ebp)
	jmp	Lj129
Lj126:
	movb	$0,-1(%ebp)
Lj129:
Lj124:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_SIGN$DOUBLE$$TVALUESIGN
_MATH_SIGN$DOUBLE$$TVALUESIGN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj134
	jmp	Lj135
Lj134:
	movb	$-1,-1(%ebp)
	jmp	Lj138
Lj135:
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj139
	jmp	Lj140
Lj139:
	movb	$1,-1(%ebp)
	jmp	Lj143
Lj140:
	movb	$0,-1(%ebp)
Lj143:
Lj138:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_SIGN$EXTENDED$$TVALUESIGN
_MATH_SIGN$EXTENDED$$TVALUESIGN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj148
	jmp	Lj149
Lj148:
	movb	$-1,-1(%ebp)
	jmp	Lj152
Lj149:
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj153
	jmp	Lj154
Lj153:
	movb	$1,-1(%ebp)
	jmp	Lj157
Lj154:
	movb	$0,-1(%ebp)
Lj157:
Lj152:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_DEGTORAD$EXTENDED$$EXTENDED
_MATH_DEGTORAD$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj161
Lj161:
	popl	%edx
	fldpi
	movl	L_$MATH$_Ld1$non_lazy_ptr-Lj161(%edx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_RADTODEG$EXTENDED$$EXTENDED
_MATH_RADTODEG$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj165
Lj165:
	popl	%edx
	fldpi
	movl	L_$MATH$_Ld1$non_lazy_ptr-Lj165(%edx),%eax
	fldt	(%eax)
	fdivp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_GRADTORAD$EXTENDED$$EXTENDED
_MATH_GRADTORAD$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj169
Lj169:
	popl	%edx
	fldpi
	movl	L_$MATH$_Ld2$non_lazy_ptr-Lj169(%edx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_RADTOGRAD$EXTENDED$$EXTENDED
_MATH_RADTOGRAD$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj173
Lj173:
	popl	%edx
	fldpi
	movl	L_$MATH$_Ld2$non_lazy_ptr-Lj173(%edx),%eax
	fldt	(%eax)
	fdivp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_DEGTOGRAD$EXTENDED$$EXTENDED
_MATH_DEGTOGRAD$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj177
Lj177:
	popl	%edx
	movl	L_$MATH$_Ld3$non_lazy_ptr-Lj177(%edx),%eax
	fldt	(%eax)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_GRADTODEG$EXTENDED$$EXTENDED
_MATH_GRADTODEG$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj181
Lj181:
	popl	%edx
	movl	L_$MATH$_Ld4$non_lazy_ptr-Lj181(%edx),%eax
	fldt	(%eax)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_CYCLETORAD$EXTENDED$$EXTENDED
_MATH_CYCLETORAD$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj185
Lj185:
	popl	%edx
	fldpi
	movl	L_$MATH$_Ld5$non_lazy_ptr-Lj185(%edx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_RADTOCYCLE$EXTENDED$$EXTENDED
_MATH_RADTOCYCLE$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj189
Lj189:
	popl	%edx
	fldpi
	movl	L_$MATH$_Ld5$non_lazy_ptr-Lj189(%edx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fld1
	fdivp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_COT$EXTENDED$$EXTENDED
_MATH_COT$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_MATH_COTAN$EXTENDED$$EXTENDED$stub
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_SECANT$EXTENDED$$EXTENDED
_MATH_SECANT$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fldt	8(%ebp)
	fcos
	fld1
	fdivp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_COSECANT$EXTENDED$$EXTENDED
_MATH_COSECANT$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fldt	8(%ebp)
	fsin
	fld1
	fdivp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_SEC$EXTENDED$$EXTENDED
_MATH_SEC$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fldt	8(%ebp)
	fcos
	fld1
	fdivp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_CSC$EXTENDED$$EXTENDED
_MATH_CSC$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fldt	8(%ebp)
	fsin
	fld1
	fdivp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_ARCSIN$EXTENDED$$EXTENDED
_MATH_ARCSIN$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj215
Lj215:
	popl	%ebx
	fldt	8(%ebp)
	fabs
	fld1
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj216
	jmp	Lj217
Lj216:
	call	L_MATH_INVALIDARGUMENT$stub
	jmp	Lj218
Lj217:
	fldt	8(%ebp)
	fabs
	movl	L_$MATH$_Ld6$non_lazy_ptr-Lj215(%ebx),%eax
	fldt	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj219
	jmp	Lj220
Lj219:
	fldt	8(%ebp)
	fmul	%st(0),%st(0)
	fld1
	fsubp	%st,%st(1)
	fsqrt
	fldt	8(%ebp)
	fdivp	%st,%st(1)
	fld1
	fpatan
	fstpt	-16(%ebp)
	jmp	Lj223
Lj220:
	fldt	8(%ebp)
	fmul	%st(0),%st(0)
	fld1
	fdivp	%st,%st(1)
	fld1
	fsubrp	%st,%st(1)
	fsqrt
	fld1
	fpatan
	fldpi
	movl	L_$MATH$_Ld6$non_lazy_ptr-Lj215(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fsubp	%st,%st(1)
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj226
	jmp	Lj227
Lj226:
	movb	$-1,%dl
	jmp	Lj230
Lj227:
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj231
	jmp	Lj232
Lj231:
	movb	$1,%dl
	jmp	Lj235
Lj232:
	movb	$0,%dl
Lj235:
Lj230:
	movsbl	%dl,%edx
	movl	%edx,-20(%ebp)
	fildl	-20(%ebp)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
Lj223:
Lj218:
	fldt	-16(%ebp)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_ARCCOS$EXTENDED$$EXTENDED
_MATH_ARCCOS$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj239
Lj239:
	popl	%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_MATH_ARCSIN$EXTENDED$$EXTENDED$stub
	fldpi
	movl	L_$MATH$_Ld6$non_lazy_ptr-Lj239(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fsubp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_COSH$EXTENDED$$EXTENDED
_MATH_COSH$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-36(%ebp)
	call	Lj245
Lj245:
	popl	%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	call	Lfpc_exp_real$stub
	fstpt	-32(%ebp)
	fld1
	fldt	-32(%ebp)
	fdivrp	%st,%st(1)
	fldt	-32(%ebp)
	faddp	%st,%st(1)
	movl	L_$MATH$_Ld6$non_lazy_ptr-Lj245(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_SINH$EXTENDED$$EXTENDED
_MATH_SINH$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-36(%ebp)
	call	Lj253
Lj253:
	popl	%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	call	Lfpc_exp_real$stub
	fstpt	-32(%ebp)
	fld1
	fldt	-32(%ebp)
	fdivrp	%st,%st(1)
	fldt	-32(%ebp)
	fsubp	%st,%st(1)
	movl	L_$MATH$_Ld6$non_lazy_ptr-Lj253(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_TANH$EXTENDED$$EXTENDED
_MATH_TANH$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-36(%ebp)
	call	Lj261
Lj261:
	popl	%ebx
	movl	L_$MATH$_Ld7$non_lazy_ptr-Lj261(%ebx),%eax
	fldt	(%eax)
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj262
	jmp	Lj263
Lj262:
	fld1
	fstpt	-16(%ebp)
	jmp	Lj260
	jmp	Lj266
Lj263:
	movl	L_$MATH$_Ld8$non_lazy_ptr-Lj261(%ebx),%eax
	fldt	(%eax)
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj267
	jmp	Lj268
Lj267:
	movl	L_$MATH$_Ld9$non_lazy_ptr-Lj261(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_$MATH$_Ld9$non_lazy_ptr-Lj261(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	L_$MATH$_Ld9$non_lazy_ptr-Lj261(%ebx),%eax
	movw	8(%eax),%ax
	movw	%ax,-8(%ebp)
	jmp	Lj260
Lj268:
Lj266:
	fldt	8(%ebp)
	movl	L_$MATH$_Ld10$non_lazy_ptr-Lj261(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpt	(%esp)
	call	Lfpc_exp_real$stub
	fstpt	-32(%ebp)
	fld1
	fldt	-32(%ebp)
	fsubrp	%st,%st(1)
	fld1
	fldt	-32(%ebp)
	faddp	%st,%st(1)
	fdivrp	%st,%st(1)
	fstpt	-16(%ebp)
Lj260:
	fldt	-16(%ebp)
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_ARCCOSH$EXTENDED$$EXTENDED
_MATH_ARCCOSH$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_MATH_ARCOSH$EXTENDED$$EXTENDED$stub
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_ARCSINH$EXTENDED$$EXTENDED
_MATH_ARCSINH$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_MATH_ARSINH$EXTENDED$$EXTENDED$stub
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_ARCTANH$EXTENDED$$EXTENDED
_MATH_ARCTANH$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	fld1
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj291
	jmp	Lj292
Lj291:
	call	L_MATH_INVALIDARGUMENT$stub
Lj292:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_MATH_ARTANH$EXTENDED$$EXTENDED$stub
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_ARCOSH$EXTENDED$$EXTENDED
_MATH_ARCOSH$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fld1
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj299
	jmp	Lj300
Lj299:
	call	L_MATH_INVALIDARGUMENT$stub
Lj300:
	fldt	8(%ebp)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fld1
	fsubrp	%st,%st(1)
	fsqrt
	fldt	8(%ebp)
	faddp	%st,%st(1)
	fldln2
	fxch
	fyl2x
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_ARSINH$EXTENDED$$EXTENDED
_MATH_ARSINH$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fldt	8(%ebp)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fld1
	faddp	%st,%st(1)
	fsqrt
	fldt	8(%ebp)
	faddp	%st,%st(1)
	fldln2
	fxch
	fyl2x
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_ARTANH$EXTENDED$$EXTENDED
_MATH_ARTANH$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj308
Lj308:
	popl	%ebx
	fldt	8(%ebp)
	fabs
	fld1
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj309
	jmp	Lj310
Lj309:
	call	L_MATH_INVALIDARGUMENT$stub
Lj310:
	fld1
	fldt	8(%ebp)
	faddp	%st,%st(1)
	fld1
	fldt	8(%ebp)
	fsubrp	%st,%st(1)
	fdivrp	%st,%st(1)
	fldln2
	fxch
	fyl2x
	movl	L_$MATH$_Ld6$non_lazy_ptr-Lj308(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_HYPOT$EXTENDED$EXTENDED$$EXTENDED
_MATH_HYPOT$EXTENDED$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fldt	20(%ebp)
	fldt	20(%ebp)
	fmulp	%st,%st(1)
	fldt	8(%ebp)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fsqrt
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_LOG10$EXTENDED$$EXTENDED
_MATH_LOG10$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj318
Lj318:
	popl	%edx
	fldt	8(%ebp)
	fldln2
	fxch
	fyl2x
	movl	L_$MATH$_Ld11$non_lazy_ptr-Lj318(%edx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_LOG2$EXTENDED$$EXTENDED
_MATH_LOG2$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj322
Lj322:
	popl	%edx
	fldt	8(%ebp)
	fldln2
	fxch
	fyl2x
	movl	L_$MATH$_Ld12$non_lazy_ptr-Lj322(%edx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_LOGN$EXTENDED$EXTENDED$$EXTENDED
_MATH_LOGN$EXTENDED$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fldz
	fldt	20(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj327
	jmp	Lj328
Lj327:
	call	L_MATH_INVALIDARGUMENT$stub
Lj328:
	fldt	8(%ebp)
	fldln2
	fxch
	fyl2x
	fldt	20(%ebp)
	fldln2
	fxch
	fyl2x
	fdivrp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_LNXP1$EXTENDED$$EXTENDED
_MATH_LNXP1$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj332
Lj332:
	popl	%ebx
	movl	L_$MATH$_Ld9$non_lazy_ptr-Lj332(%ebx),%eax
	fldt	(%eax)
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj333
	jmp	Lj334
Lj333:
	call	L_MATH_INVALIDARGUMENT$stub
Lj334:
	fld1
	fldt	8(%ebp)
	faddp	%st,%st(1)
	fldln2
	fxch
	fyl2x
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_POWER$EXTENDED$EXTENDED$$EXTENDED
_MATH_POWER$EXTENDED$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	call	Lj338
Lj338:
	popl	%ebx
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj339
	jmp	Lj340
Lj339:
	fld1
	fstpt	-16(%ebp)
	jmp	Lj343
Lj340:
	fldz
	fldt	20(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj346
	jmp	Lj345
Lj346:
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj344
	jmp	Lj345
Lj344:
	fldz
	fstpt	-16(%ebp)
	jmp	Lj349
Lj345:
	fldt	8(%ebp)
	fabs
	movl	L_$MATH$_Ld13$non_lazy_ptr-Lj338(%ebx),%eax
	fldt	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	jae	Lj352
	jmp	Lj351
Lj352:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	call	Lfpc_frac_real$stub
	fldz
	fcompp
	fnstsw	%ax
	sahf
	je	Lj350
	jmp	Lj351
Lj350:
	movl	20(%ebp),%eax
	movl	%eax,(%esp)
	movl	24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	28(%ebp),%eax
	movl	%eax,8(%esp)
	fnstcw	-20(%ebp)
	fnstcw	-18(%ebp)
	orw	$3840,-20(%ebp)
	fldt	8(%ebp)
	fldcw	-20(%ebp)
	fistpq	-28(%ebp)
	fldcw	-18(%ebp)
	fwait
	movl	-28(%ebp),%eax
	call	L_MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED$stub
	fstpt	-16(%ebp)
	jmp	Lj361
Lj351:
	fldz
	fldt	20(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj362
	jmp	Lj363
Lj362:
	fldt	20(%ebp)
	fldln2
	fxch
	fyl2x
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	(%esp)
	call	Lfpc_exp_real$stub
	fstpt	-16(%ebp)
	jmp	Lj368
Lj363:
	call	L_MATH_INVALIDARGUMENT$stub
Lj368:
Lj361:
Lj349:
Lj343:
	fldt	-16(%ebp)
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED
_MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj373
	jmp	Lj372
Lj373:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj371
	jmp	Lj372
Lj371:
	fld1
	fstpt	-24(%ebp)
	jmp	Lj376
Lj372:
	movl	-4(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
	fld1
	fstpt	-24(%ebp)
	jmp	Lj382
	.align 2
Lj381:
	jmp	Lj385
	.align 2
Lj384:
	movl	-28(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-28(%ebp)
	fldt	8(%ebp)
	fmul	%st(0),%st(0)
	fstpt	8(%ebp)
Lj385:
	movl	-28(%ebp),%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj384
	jmp	Lj386
Lj386:
	movl	-28(%ebp),%eax
	decl	%eax
	movl	%eax,-28(%ebp)
	fldt	8(%ebp)
	fldt	-24(%ebp)
	fmulp	%st,%st(1)
	fstpt	-24(%ebp)
Lj382:
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj381
	jmp	Lj383
Lj383:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj395
	jmp	Lj396
Lj395:
	fld1
	fldt	-24(%ebp)
	fdivrp	%st,%st(1)
	fstpt	-24(%ebp)
Lj396:
Lj376:
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_starstar$EXTENDED$EXTENDED$$EXTENDED
_MATH_starstar$EXTENDED$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	24(%ebp),%eax
	movl	%eax,16(%esp)
	movl	28(%ebp),%eax
	movl	%eax,20(%esp)
	call	L_MATH_POWER$EXTENDED$EXTENDED$$EXTENDED$stub
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_starstar$INT64$INT64$$INT64
_MATH_starstar$INT64$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	fildq	16(%ebp)
	fstpt	(%esp)
	movl	8(%ebp),%eax
	call	L_MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED$stub
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_CEIL$EXTENDED$$LONGINT
_MATH_CEIL$EXTENDED$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	fnstcw	-8(%ebp)
	fnstcw	-6(%ebp)
	orw	$3840,-8(%ebp)
	fldt	8(%ebp)
	fldcw	-8(%ebp)
	fistpq	-16(%ebp)
	fldcw	-6(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	call	Lfpc_frac_real$stub
	fldz
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj419
	jmp	Lj420
Lj419:
	movl	-4(%ebp),%eax
	incl	%eax
	movl	%eax,-4(%ebp)
Lj420:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_FLOOR$EXTENDED$$LONGINT
_MATH_FLOOR$EXTENDED$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	fnstcw	-8(%ebp)
	fnstcw	-6(%ebp)
	orw	$3840,-8(%ebp)
	fldt	8(%ebp)
	fldcw	-8(%ebp)
	fistpq	-16(%ebp)
	fldcw	-6(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	call	Lfpc_frac_real$stub
	fldz
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj429
	jmp	Lj430
Lj429:
	movl	-4(%ebp),%eax
	decl	%eax
	movl	%eax,-4(%ebp)
Lj430:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_FREXP$EXTENDED$EXTENDED$LONGINT
_MATH_FREXP$EXTENDED$EXTENDED$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj436
Lj436:
	popl	%ecx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jne	Lj439
	jmp	Lj440
Lj439:
	fldt	8(%ebp)
	fabs
	movl	L_$MATH$_Ld6$non_lazy_ptr-Lj436(%ecx),%eax
	fldt	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj441
	jmp	Lj442
Lj441:
	.align 2
Lj443:
	movl	L_$MATH$_Ld5$non_lazy_ptr-Lj436(%ecx),%eax
	fldt	(%eax)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	8(%ebp)
	movl	-8(%ebp),%eax
	decl	(%eax)
	fldt	8(%ebp)
	fabs
	movl	L_$MATH$_Ld6$non_lazy_ptr-Lj436(%ecx),%eax
	fldt	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	jbe	Lj445
	jmp	Lj443
Lj445:
	jmp	Lj448
Lj442:
	jmp	Lj450
	.align 2
Lj449:
	movl	L_$MATH$_Ld5$non_lazy_ptr-Lj436(%ecx),%eax
	fldt	(%eax)
	fldt	8(%ebp)
	fdivp	%st,%st(1)
	fstpt	8(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
Lj450:
	fldt	8(%ebp)
	fabs
	fld1
	fcompp
	fnstsw	%ax
	sahf
	jbe	Lj449
	jmp	Lj451
Lj451:
Lj448:
Lj440:
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,(%edx)
	movl	12(%ebp),%eax
	movl	%eax,4(%edx)
	movw	16(%ebp),%ax
	movw	%ax,8(%edx)
	leave
	ret

.text
	.align 4
.globl	_MATH_LDEXP$EXTENDED$LONGINT$$EXTENDED
_MATH_LDEXP$EXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj457
Lj457:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_$MATH$_Ld5$non_lazy_ptr-Lj457(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$MATH$_Ld5$non_lazy_ptr-Lj457(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_$MATH$_Ld5$non_lazy_ptr-Lj457(%ebx),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	call	L_MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED$stub
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_MEAN$array_of_SINGLE$$EXTENDED
_MATH_MEAN$array_of_SINGLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_MEAN$PSINGLE$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MEAN$PSINGLE$LONGINT$$EXTENDED
_MATH_MEAN$PSINGLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_SUM$PSINGLE$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fildl	-8(%ebp)
	fldt	-24(%ebp)
	fdivp	%st,%st(1)
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_SUM$array_of_SINGLE$$EXTENDED
_MATH_SUM$array_of_SINGLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_SUM$PSINGLE$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_SUM$PSINGLE$LONGINT$$EXTENDED
_MATH_SUM$PSINGLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fldz
	fstpt	-24(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj495
	decl	-28(%ebp)
	.align 2
Lj496:
	incl	-28(%ebp)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%ecx
	flds	(%edx,%ecx,4)
	fldt	-24(%ebp)
	faddp	%st,%st(1)
	fstpt	-24(%ebp)
	cmpl	-28(%ebp),%eax
	jg	Lj496
Lj495:
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MEAN$array_of_DOUBLE$$EXTENDED
_MATH_MEAN$array_of_DOUBLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_MEAN$PDOUBLE$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MEAN$PDOUBLE$LONGINT$$EXTENDED
_MATH_MEAN$PDOUBLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_SUM$PDOUBLE$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fildl	-8(%ebp)
	fldt	-24(%ebp)
	fdivp	%st,%st(1)
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_SUM$array_of_DOUBLE$$EXTENDED
_MATH_SUM$array_of_DOUBLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_SUM$PDOUBLE$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_SUM$PDOUBLE$LONGINT$$EXTENDED
_MATH_SUM$PDOUBLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fldz
	fstpt	-24(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj530
	decl	-28(%ebp)
	.align 2
Lj531:
	incl	-28(%ebp)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%ecx
	fldl	(%edx,%ecx,8)
	fldt	-24(%ebp)
	faddp	%st,%st(1)
	fstpt	-24(%ebp)
	cmpl	-28(%ebp),%eax
	jg	Lj531
Lj530:
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MEAN$array_of_EXTENDED$$EXTENDED
_MATH_MEAN$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_MEAN$PEXTENDED$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MEAN$PEXTENDED$LONGINT$$EXTENDED
_MATH_MEAN$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_SUM$PEXTENDED$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fildl	-8(%ebp)
	fldt	-24(%ebp)
	fdivp	%st,%st(1)
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_SUM$array_of_EXTENDED$$EXTENDED
_MATH_SUM$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_SUM$PEXTENDED$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_SUM$PEXTENDED$LONGINT$$EXTENDED
_MATH_SUM$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fldz
	fstpt	-24(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj565
	decl	-28(%ebp)
	.align 2
Lj566:
	incl	-28(%ebp)
	movl	-4(%ebp),%ecx
	movl	-28(%ebp),%edx
	imull	$10,%edx
	fldt	-24(%ebp)
	fldt	(%ecx,%edx)
	faddp	%st,%st(1)
	fstpt	-24(%ebp)
	cmpl	-28(%ebp),%eax
	jg	Lj566
Lj565:
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_SUMINT$PINT64$LONGINT$$INT64
_MATH_SUMINT$PINT64$LONGINT$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-12(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj574
	decl	-20(%ebp)
	.align 2
Lj575:
	incl	-20(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	(%edx,%ecx,8),%ebx
	movl	4(%edx,%ecx,8),%edx
	addl	-16(%ebp),%ebx
	adcl	-12(%ebp),%edx
	movl	%ebx,-16(%ebp)
	movl	%edx,-12(%ebp)
	cmpl	-20(%ebp),%eax
	jg	Lj575
Lj574:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_SUMINT$array_of_INT64$$INT64
_MATH_SUMINT$array_of_INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_SUMINT$PINT64$LONGINT$$INT64$stub
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_SUMOFSQUARES$array_of_SINGLE$$EXTENDED
_MATH_SUMOFSQUARES$array_of_SINGLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_SUMOFSQUARES$PSINGLE$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_SUMOFSQUARES$PSINGLE$LONGINT$$EXTENDED
_MATH_SUMOFSQUARES$PSINGLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fldz
	fstpt	-24(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj599
	decl	-28(%ebp)
	.align 2
Lj600:
	incl	-28(%ebp)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%ecx
	flds	(%edx,%ecx,4)
	fmul	%st(0),%st(0)
	fldt	-24(%ebp)
	faddp	%st,%st(1)
	fstpt	-24(%ebp)
	cmpl	-28(%ebp),%eax
	jg	Lj600
Lj599:
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_SUMSANDSQUARES$array_of_SINGLE$EXTENDED$EXTENDED
_MATH_SUMSANDSQUARES$array_of_SINGLE$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	call	L_MATH_SUMSANDSQUARES$PSINGLE$LONGINT$EXTENDED$EXTENDED$stub
	leave
	ret

.text
	.align 4
.globl	_MATH_SUMSANDSQUARES$PSINGLE$LONGINT$EXTENDED$EXTENDED
_MATH_SUMSANDSQUARES$PSINGLE$LONGINT$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	-12(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj620
	decl	-16(%ebp)
	.align 2
Lj621:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	flds	(%edx,%ecx,4)
	fstpt	-32(%ebp)
	fldt	-32(%ebp)
	fmul	%st(0),%st(0)
	movl	8(%ebp),%edx
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	8(%ebp),%edx
	fstpt	(%edx)
	movl	-12(%ebp),%edx
	fldt	-32(%ebp)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	fstpt	(%edx)
	cmpl	-16(%ebp),%eax
	jg	Lj621
Lj620:
	leave
	ret

.text
	.align 4
.globl	_MATH_SUMOFSQUARES$array_of_DOUBLE$$EXTENDED
_MATH_SUMOFSQUARES$array_of_DOUBLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_SUMOFSQUARES$PDOUBLE$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_SUMOFSQUARES$PDOUBLE$LONGINT$$EXTENDED
_MATH_SUMOFSQUARES$PDOUBLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fldz
	fstpt	-24(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj641
	decl	-28(%ebp)
	.align 2
Lj642:
	incl	-28(%ebp)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%ecx
	fldl	(%edx,%ecx,8)
	fmul	%st(0),%st(0)
	fldt	-24(%ebp)
	faddp	%st,%st(1)
	fstpt	-24(%ebp)
	cmpl	-28(%ebp),%eax
	jg	Lj642
Lj641:
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_SUMSANDSQUARES$array_of_DOUBLE$EXTENDED$EXTENDED
_MATH_SUMSANDSQUARES$array_of_DOUBLE$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	call	L_MATH_SUMSANDSQUARES$PDOUBLE$LONGINT$EXTENDED$EXTENDED$stub
	leave
	ret

.text
	.align 4
.globl	_MATH_SUMSANDSQUARES$PDOUBLE$LONGINT$EXTENDED$EXTENDED
_MATH_SUMSANDSQUARES$PDOUBLE$LONGINT$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	-12(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj662
	decl	-16(%ebp)
	.align 2
Lj663:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	fldl	(%edx,%ecx,8)
	fstpt	-32(%ebp)
	fldt	-32(%ebp)
	fmul	%st(0),%st(0)
	movl	8(%ebp),%edx
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	8(%ebp),%edx
	fstpt	(%edx)
	movl	-12(%ebp),%edx
	fldt	-32(%ebp)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	fstpt	(%edx)
	cmpl	-16(%ebp),%eax
	jg	Lj663
Lj662:
	leave
	ret

.text
	.align 4
.globl	_MATH_SUMOFSQUARES$array_of_EXTENDED$$EXTENDED
_MATH_SUMOFSQUARES$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_SUMOFSQUARES$PEXTENDED$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_SUMOFSQUARES$PEXTENDED$LONGINT$$EXTENDED
_MATH_SUMOFSQUARES$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fldz
	fstpt	-24(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj683
	decl	-28(%ebp)
	.align 2
Lj684:
	incl	-28(%ebp)
	movl	-4(%ebp),%ecx
	movl	-28(%ebp),%edx
	imull	$10,%edx
	fldt	(%ecx,%edx)
	fmul	%st(0),%st(0)
	fldt	-24(%ebp)
	faddp	%st,%st(1)
	fstpt	-24(%ebp)
	cmpl	-28(%ebp),%eax
	jg	Lj684
Lj683:
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_SUMSANDSQUARES$array_of_EXTENDED$EXTENDED$EXTENDED
_MATH_SUMSANDSQUARES$array_of_EXTENDED$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	call	L_MATH_SUMSANDSQUARES$PEXTENDED$LONGINT$EXTENDED$EXTENDED$stub
	leave
	ret

.text
	.align 4
.globl	_MATH_SUMSANDSQUARES$PEXTENDED$LONGINT$EXTENDED$EXTENDED
_MATH_SUMSANDSQUARES$PEXTENDED$LONGINT$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	-12(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj704
	decl	-16(%ebp)
	.align 2
Lj705:
	incl	-16(%ebp)
	movl	-4(%ebp),%ebx
	movl	-16(%ebp),%edx
	imull	$10,%edx
	movl	(%ebx,%edx),%ecx
	movl	%ecx,-32(%ebp)
	movl	4(%ebx,%edx),%ecx
	movl	%ecx,-28(%ebp)
	movw	8(%ebx,%edx),%dx
	movw	%dx,-24(%ebp)
	fldt	-32(%ebp)
	fmul	%st(0),%st(0)
	movl	8(%ebp),%edx
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	8(%ebp),%edx
	fstpt	(%edx)
	movl	-12(%ebp),%edx
	fldt	-32(%ebp)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	fstpt	(%edx)
	cmpl	-16(%ebp),%eax
	jg	Lj705
Lj704:
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_RANDG$EXTENDED$EXTENDED$$EXTENDED
_MATH_RANDG$EXTENDED$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj713
Lj713:
	popl	%ebx
	.align 2
Lj714:
	call	L_SYSTEM_RANDOM$$EXTENDED$stub
	movl	L_$MATH$_Ld5$non_lazy_ptr-Lj713(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fld1
	fsubrp	%st,%st(1)
	fstpt	-32(%ebp)
	fldt	-32(%ebp)
	fmul	%st(0),%st(0)
	fstpt	-64(%ebp)
	call	L_SYSTEM_RANDOM$$EXTENDED$stub
	movl	L_$MATH$_Ld5$non_lazy_ptr-Lj713(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fld1
	fsubrp	%st,%st(1)
	fmul	%st(0),%st(0)
	fldt	-64(%ebp)
	faddp	%st,%st(1)
	fstpt	-48(%ebp)
	fld1
	fldt	-48(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj716
	jmp	Lj714
Lj716:
	fldt	-48(%ebp)
	fldln2
	fxch
	fyl2x
	movl	L_$MATH$_Ld10$non_lazy_ptr-Lj713(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldt	-48(%ebp)
	fdivrp	%st,%st(1)
	fsqrt
	fldt	-32(%ebp)
	fmulp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fldt	20(%ebp)
	faddp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_RANDOMRANGE$LONGINT$LONGINT$$LONGINT
_MATH_RANDOMRANGE$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	call	L_SYSTEM_RANDOM$LONGINT$$LONGINT$stub
	movl	%eax,%ebx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_MATH_MIN$LONGINT$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	%ebx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_RANDOMRANGE$INT64$INT64$$INT64
_MATH_RANDOMRANGE$INT64$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	subl	8(%ebp),%eax
	sbbl	12(%ebp),%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj741
	jg	Lj742
	cmpl	$0,%eax
	jb	Lj741
	jmp	Lj742
Lj741:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	jmp	Lj745
Lj742:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
Lj745:
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	call	L_SYSTEM_RANDOM$INT64$$INT64$stub
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	8(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_MATH_MIN$INT64$INT64$$INT64$stub
	addl	%eax,%ebx
	adcl	%edx,%esi
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_MATH_STDDEV$array_of_SINGLE$$EXTENDED
_MATH_STDDEV$array_of_SINGLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_STDDEV$PSINGLE$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_STDDEV$PSINGLE$LONGINT$$EXTENDED
_MATH_STDDEV$PSINGLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_VARIANCE$PSINGLE$LONGINT$$EXTENDED$stub
	fsqrt
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MEANANDSTDDEV$array_of_SINGLE$EXTENDED$EXTENDED
_MATH_MEANANDSTDDEV$array_of_SINGLE$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	call	L_MATH_MEANANDSTDDEV$PSINGLE$LONGINT$EXTENDED$EXTENDED$stub
	leave
	ret

.text
	.align 4
.globl	_MATH_MEANANDSTDDEV$PSINGLE$LONGINT$EXTENDED$EXTENDED
_MATH_MEANANDSTDDEV$PSINGLE$LONGINT$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	8(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj785
	decl	-16(%ebp)
	.align 2
Lj786:
	incl	-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%ebx
	movl	-16(%ebp),%edx
	flds	(%ebx,%edx,4)
	fldt	(%ecx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	fstpt	(%edx)
	movl	8(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	-16(%ebp),%ecx
	flds	(%ebx,%ecx,4)
	fmul	%st(0),%st(0)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	8(%ebp),%edx
	fstpt	(%edx)
	cmpl	-16(%ebp),%eax
	jg	Lj786
Lj785:
	movl	-12(%ebp),%eax
	fildl	-8(%ebp)
	fldt	(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	8(%ebp),%eax
	fildl	-8(%ebp)
	movl	-12(%ebp),%edx
	fldt	(%edx)
	fmul	%st(0),%st(0)
	fmulp	%st,%st(1)
	fldt	(%eax)
	fsubp	%st,%st(1)
	movl	8(%ebp),%eax
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj795
	jmp	Lj796
Lj795:
	movl	8(%ebp),%eax
	movl	-8(%ebp),%edx
	decl	%edx
	movl	%edx,-20(%ebp)
	fildl	-20(%ebp)
	fldt	(%eax)
	fdivp	%st,%st(1)
	fsqrt
	movl	8(%ebp),%eax
	fstpt	(%eax)
	jmp	Lj799
Lj796:
	movl	8(%ebp),%eax
	fldz
	fstpt	(%eax)
Lj799:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_VARIANCE$array_of_SINGLE$$EXTENDED
_MATH_VARIANCE$array_of_SINGLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_VARIANCE$PSINGLE$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_VARIANCE$PSINGLE$LONGINT$$EXTENDED
_MATH_VARIANCE$PSINGLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj812
	jmp	Lj813
Lj812:
	fldz
	fstpt	-24(%ebp)
	jmp	Lj816
Lj813:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_TOTALVARIANCE$PSINGLE$LONGINT$$EXTENDED$stub
	movl	-8(%ebp),%eax
	decl	%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fdivrp	%st,%st(1)
	fstpt	-24(%ebp)
Lj816:
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_TOTALVARIANCE$array_of_SINGLE$$EXTENDED
_MATH_TOTALVARIANCE$array_of_SINGLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_TOTALVARIANCE$PSINGLE$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_TOTALVARIANCE$PSINGLE$LONGINT$$EXTENDED
_MATH_TOTALVARIANCE$PSINGLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj833
	jmp	Lj834
Lj833:
	fldz
	fstpt	-24(%ebp)
	jmp	Lj837
Lj834:
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	leal	-40(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_SUMSANDSQUARES$PSINGLE$LONGINT$EXTENDED$EXTENDED$stub
	fldt	-40(%ebp)
	fmul	%st(0),%st(0)
	fildl	-8(%ebp)
	fdivrp	%st,%st(1)
	fldt	-56(%ebp)
	fsubp	%st,%st(1)
	fstpt	-24(%ebp)
Lj837:
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_POPNSTDDEV$array_of_SINGLE$$EXTENDED
_MATH_POPNSTDDEV$array_of_SINGLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_POPNVARIANCE$PSINGLE$LONGINT$$EXTENDED$stub
	fsqrt
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_POPNSTDDEV$PSINGLE$LONGINT$$EXTENDED
_MATH_POPNSTDDEV$PSINGLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_POPNVARIANCE$PSINGLE$LONGINT$$EXTENDED$stub
	fsqrt
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_POPNVARIANCE$array_of_SINGLE$$EXTENDED
_MATH_POPNVARIANCE$array_of_SINGLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_POPNVARIANCE$PSINGLE$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_POPNVARIANCE$PSINGLE$LONGINT$$EXTENDED
_MATH_POPNVARIANCE$PSINGLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_TOTALVARIANCE$PSINGLE$LONGINT$$EXTENDED$stub
	fildl	-8(%ebp)
	fdivrp	%st,%st(1)
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MOMENTSKEWKURTOSIS$crcF980E199
_MATH_MOMENTSKEWKURTOSIS$crcF980E199:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	24(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	call	L_MATH_MOMENTSKEWKURTOSIS$crcAB01C5D7$stub
	leave
	ret

.text
	.align 4
.globl	_MATH_MOMENTSKEWKURTOSIS$crcAB01C5D7
_MATH_MOMENTSKEWKURTOSIS$crcAB01C5D7:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	fldz
	fstpt	(%eax)
	fildl	-8(%ebp)
	fld1
	fdivp	%st,%st(1)
	fstpt	-48(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj907
	decl	-16(%ebp)
	.align 2
Lj908:
	incl	-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-20(%ebp),%edx
	flds	(%edx)
	fldt	(%ecx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	fstpt	(%edx)
	addl	$4,-20(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj908
Lj907:
	movl	-12(%ebp),%eax
	fldt	(%eax)
	fldt	-48(%ebp)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	24(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	20(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	16(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj922
	decl	-16(%ebp)
	.align 2
Lj923:
	incl	-16(%ebp)
	movl	-20(%ebp),%edx
	flds	(%edx)
	movl	-12(%ebp),%edx
	fldt	(%edx)
	fsubrp	%st,%st(1)
	fstps	-24(%ebp)
	flds	-24(%ebp)
	flds	-24(%ebp)
	fmulp	%st,%st(1)
	fstps	-28(%ebp)
	movl	24(%ebp),%edx
	flds	-28(%ebp)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	24(%ebp),%edx
	fstpt	(%edx)
	movl	20(%ebp),%edx
	flds	-24(%ebp)
	flds	-28(%ebp)
	fmulp	%st,%st(1)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	20(%ebp),%edx
	fstpt	(%edx)
	movl	16(%ebp),%edx
	flds	-28(%ebp)
	flds	-28(%ebp)
	fmulp	%st,%st(1)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	16(%ebp),%edx
	fstpt	(%edx)
	addl	$4,-20(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj923
Lj922:
	movl	24(%ebp),%eax
	fldt	(%eax)
	fldt	-48(%ebp)
	fmulp	%st,%st(1)
	movl	24(%ebp),%eax
	fstpt	(%eax)
	movl	20(%ebp),%eax
	fldt	(%eax)
	fldt	-48(%ebp)
	fmulp	%st,%st(1)
	movl	20(%ebp),%eax
	fstpt	(%eax)
	movl	16(%ebp),%eax
	fldt	(%eax)
	fldt	-48(%ebp)
	fmulp	%st,%st(1)
	movl	16(%ebp),%eax
	fstpt	(%eax)
	movl	20(%ebp),%edx
	movl	24(%ebp),%eax
	fldt	(%eax)
	fsqrt
	movl	24(%ebp),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldt	(%edx)
	fdivp	%st,%st(1)
	movl	12(%ebp),%eax
	fstpt	(%eax)
	movl	16(%ebp),%eax
	movl	24(%ebp),%ecx
	movl	24(%ebp),%edx
	fldt	(%edx)
	fldt	(%ecx)
	fmulp	%st,%st(1)
	fldt	(%eax)
	fdivp	%st,%st(1)
	movl	8(%ebp),%eax
	fstpt	(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATH_NORM$array_of_SINGLE$$EXTENDED
_MATH_NORM$array_of_SINGLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_NORM$PSINGLE$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_NORM$PSINGLE$LONGINT$$EXTENDED
_MATH_NORM$PSINGLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_SUMOFSQUARES$PSINGLE$LONGINT$$EXTENDED$stub
	fsqrt
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_STDDEV$array_of_DOUBLE$$EXTENDED
_MATH_STDDEV$array_of_DOUBLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_STDDEV$PDOUBLE$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_STDDEV$PDOUBLE$LONGINT$$EXTENDED
_MATH_STDDEV$PDOUBLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_VARIANCE$PDOUBLE$LONGINT$$EXTENDED$stub
	fsqrt
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MEANANDSTDDEV$array_of_DOUBLE$EXTENDED$EXTENDED
_MATH_MEANANDSTDDEV$array_of_DOUBLE$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	call	L_MATH_MEANANDSTDDEV$PDOUBLE$LONGINT$EXTENDED$EXTENDED$stub
	leave
	ret

.text
	.align 4
.globl	_MATH_MEANANDSTDDEV$PDOUBLE$LONGINT$EXTENDED$EXTENDED
_MATH_MEANANDSTDDEV$PDOUBLE$LONGINT$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	8(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj993
	decl	-16(%ebp)
	.align 2
Lj994:
	incl	-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%ebx
	movl	-16(%ebp),%edx
	fldl	(%ebx,%edx,8)
	fldt	(%ecx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	fstpt	(%edx)
	movl	8(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	-16(%ebp),%ecx
	fldl	(%ebx,%ecx,8)
	fmul	%st(0),%st(0)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	8(%ebp),%edx
	fstpt	(%edx)
	cmpl	-16(%ebp),%eax
	jg	Lj994
Lj993:
	movl	-12(%ebp),%eax
	fildl	-8(%ebp)
	fldt	(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	8(%ebp),%eax
	fildl	-8(%ebp)
	movl	-12(%ebp),%edx
	fldt	(%edx)
	fmul	%st(0),%st(0)
	fmulp	%st,%st(1)
	fldt	(%eax)
	fsubp	%st,%st(1)
	movl	8(%ebp),%eax
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj1003
	jmp	Lj1004
Lj1003:
	movl	8(%ebp),%eax
	movl	-8(%ebp),%edx
	decl	%edx
	movl	%edx,-20(%ebp)
	fildl	-20(%ebp)
	fldt	(%eax)
	fdivp	%st,%st(1)
	fsqrt
	movl	8(%ebp),%eax
	fstpt	(%eax)
	jmp	Lj1007
Lj1004:
	movl	8(%ebp),%eax
	fldz
	fstpt	(%eax)
Lj1007:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_VARIANCE$array_of_DOUBLE$$EXTENDED
_MATH_VARIANCE$array_of_DOUBLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_VARIANCE$PDOUBLE$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_VARIANCE$PDOUBLE$LONGINT$$EXTENDED
_MATH_VARIANCE$PDOUBLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj1020
	jmp	Lj1021
Lj1020:
	fldz
	fstpt	-24(%ebp)
	jmp	Lj1024
Lj1021:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_TOTALVARIANCE$PDOUBLE$LONGINT$$EXTENDED$stub
	movl	-8(%ebp),%eax
	decl	%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fdivrp	%st,%st(1)
	fstpt	-24(%ebp)
Lj1024:
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_TOTALVARIANCE$array_of_DOUBLE$$EXTENDED
_MATH_TOTALVARIANCE$array_of_DOUBLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_TOTALVARIANCE$PDOUBLE$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_TOTALVARIANCE$PDOUBLE$LONGINT$$EXTENDED
_MATH_TOTALVARIANCE$PDOUBLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj1041
	jmp	Lj1042
Lj1041:
	fldz
	fstpt	-24(%ebp)
	jmp	Lj1045
Lj1042:
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	leal	-40(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_SUMSANDSQUARES$PDOUBLE$LONGINT$EXTENDED$EXTENDED$stub
	fldt	-40(%ebp)
	fmul	%st(0),%st(0)
	fildl	-8(%ebp)
	fdivrp	%st,%st(1)
	fldt	-56(%ebp)
	fsubp	%st,%st(1)
	fstpt	-24(%ebp)
Lj1045:
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_POPNSTDDEV$array_of_DOUBLE$$EXTENDED
_MATH_POPNSTDDEV$array_of_DOUBLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_POPNVARIANCE$PDOUBLE$LONGINT$$EXTENDED$stub
	fsqrt
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_POPNSTDDEV$PDOUBLE$LONGINT$$EXTENDED
_MATH_POPNSTDDEV$PDOUBLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_POPNVARIANCE$PDOUBLE$LONGINT$$EXTENDED$stub
	fsqrt
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_POPNVARIANCE$array_of_DOUBLE$$EXTENDED
_MATH_POPNVARIANCE$array_of_DOUBLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_POPNVARIANCE$PDOUBLE$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_POPNVARIANCE$PDOUBLE$LONGINT$$EXTENDED
_MATH_POPNVARIANCE$PDOUBLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_TOTALVARIANCE$PDOUBLE$LONGINT$$EXTENDED$stub
	fildl	-8(%ebp)
	fdivrp	%st,%st(1)
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MOMENTSKEWKURTOSIS$crc489CF8E5
_MATH_MOMENTSKEWKURTOSIS$crc489CF8E5:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	24(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	call	L_MATH_MOMENTSKEWKURTOSIS$crcA4CE7FA7$stub
	leave
	ret

.text
	.align 4
.globl	_MATH_MOMENTSKEWKURTOSIS$crcA4CE7FA7
_MATH_MOMENTSKEWKURTOSIS$crcA4CE7FA7:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	fldz
	fstpt	(%eax)
	fildl	-8(%ebp)
	fld1
	fdivp	%st,%st(1)
	fstpt	-56(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj1115
	decl	-16(%ebp)
	.align 2
Lj1116:
	incl	-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-20(%ebp),%edx
	fldl	(%edx)
	fldt	(%ecx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	fstpt	(%edx)
	addl	$8,-20(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj1116
Lj1115:
	movl	-12(%ebp),%eax
	fldt	(%eax)
	fldt	-56(%ebp)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	24(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	20(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	16(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj1130
	decl	-16(%ebp)
	.align 2
Lj1131:
	incl	-16(%ebp)
	movl	-20(%ebp),%edx
	fldl	(%edx)
	movl	-12(%ebp),%edx
	fldt	(%edx)
	fsubrp	%st,%st(1)
	fstpl	-28(%ebp)
	fldl	-28(%ebp)
	fldl	-28(%ebp)
	fmulp	%st,%st(1)
	fstpl	-36(%ebp)
	movl	24(%ebp),%edx
	fldl	-36(%ebp)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	24(%ebp),%edx
	fstpt	(%edx)
	movl	20(%ebp),%edx
	fldl	-28(%ebp)
	fldl	-36(%ebp)
	fmulp	%st,%st(1)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	20(%ebp),%edx
	fstpt	(%edx)
	movl	16(%ebp),%edx
	fldl	-36(%ebp)
	fldl	-36(%ebp)
	fmulp	%st,%st(1)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	16(%ebp),%edx
	fstpt	(%edx)
	addl	$8,-20(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj1131
Lj1130:
	movl	24(%ebp),%eax
	fldt	(%eax)
	fldt	-56(%ebp)
	fmulp	%st,%st(1)
	movl	24(%ebp),%eax
	fstpt	(%eax)
	movl	20(%ebp),%eax
	fldt	(%eax)
	fldt	-56(%ebp)
	fmulp	%st,%st(1)
	movl	20(%ebp),%eax
	fstpt	(%eax)
	movl	16(%ebp),%eax
	fldt	(%eax)
	fldt	-56(%ebp)
	fmulp	%st,%st(1)
	movl	16(%ebp),%eax
	fstpt	(%eax)
	movl	20(%ebp),%edx
	movl	24(%ebp),%eax
	fldt	(%eax)
	fsqrt
	movl	24(%ebp),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldt	(%edx)
	fdivp	%st,%st(1)
	movl	12(%ebp),%eax
	fstpt	(%eax)
	movl	16(%ebp),%eax
	movl	24(%ebp),%ecx
	movl	24(%ebp),%edx
	fldt	(%edx)
	fldt	(%ecx)
	fmulp	%st,%st(1)
	fldt	(%eax)
	fdivp	%st,%st(1)
	movl	8(%ebp),%eax
	fstpt	(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATH_NORM$array_of_DOUBLE$$EXTENDED
_MATH_NORM$array_of_DOUBLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_NORM$PDOUBLE$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_NORM$PDOUBLE$LONGINT$$EXTENDED
_MATH_NORM$PDOUBLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_SUMOFSQUARES$PDOUBLE$LONGINT$$EXTENDED$stub
	fsqrt
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_STDDEV$array_of_EXTENDED$$EXTENDED
_MATH_STDDEV$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_STDDEV$PEXTENDED$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_STDDEV$PEXTENDED$LONGINT$$EXTENDED
_MATH_STDDEV$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_VARIANCE$PEXTENDED$LONGINT$$EXTENDED$stub
	fsqrt
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MEANANDSTDDEV$array_of_EXTENDED$EXTENDED$EXTENDED
_MATH_MEANANDSTDDEV$array_of_EXTENDED$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	call	L_MATH_MEANANDSTDDEV$PEXTENDED$LONGINT$EXTENDED$EXTENDED$stub
	leave
	ret

.text
	.align 4
.globl	_MATH_MEANANDSTDDEV$PEXTENDED$LONGINT$EXTENDED$EXTENDED
_MATH_MEANANDSTDDEV$PEXTENDED$LONGINT$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	8(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj1201
	decl	-16(%ebp)
	.align 2
Lj1202:
	incl	-16(%ebp)
	movl	-4(%ebp),%ebx
	movl	-16(%ebp),%edx
	imull	$10,%edx
	movl	-12(%ebp),%ecx
	fldt	(%ecx)
	fldt	(%ebx,%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	fstpt	(%edx)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	imull	$10,%edx
	fldt	(%ecx,%edx)
	fmul	%st(0),%st(0)
	movl	8(%ebp),%edx
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	8(%ebp),%edx
	fstpt	(%edx)
	cmpl	-16(%ebp),%eax
	jg	Lj1202
Lj1201:
	movl	-12(%ebp),%eax
	fildl	-8(%ebp)
	fldt	(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	8(%ebp),%eax
	fildl	-8(%ebp)
	movl	-12(%ebp),%edx
	fldt	(%edx)
	fmul	%st(0),%st(0)
	fmulp	%st,%st(1)
	fldt	(%eax)
	fsubp	%st,%st(1)
	movl	8(%ebp),%eax
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj1211
	jmp	Lj1212
Lj1211:
	movl	8(%ebp),%eax
	movl	-8(%ebp),%edx
	decl	%edx
	movl	%edx,-20(%ebp)
	fildl	-20(%ebp)
	fldt	(%eax)
	fdivp	%st,%st(1)
	fsqrt
	movl	8(%ebp),%eax
	fstpt	(%eax)
	jmp	Lj1215
Lj1212:
	movl	8(%ebp),%eax
	fldz
	fstpt	(%eax)
Lj1215:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_VARIANCE$array_of_EXTENDED$$EXTENDED
_MATH_VARIANCE$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_VARIANCE$PEXTENDED$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_VARIANCE$PEXTENDED$LONGINT$$EXTENDED
_MATH_VARIANCE$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj1228
	jmp	Lj1229
Lj1228:
	fldz
	fstpt	-24(%ebp)
	jmp	Lj1232
Lj1229:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_TOTALVARIANCE$PEXTENDED$LONGINT$$EXTENDED$stub
	movl	-8(%ebp),%eax
	decl	%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fdivrp	%st,%st(1)
	fstpt	-24(%ebp)
Lj1232:
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_TOTALVARIANCE$array_of_EXTENDED$$EXTENDED
_MATH_TOTALVARIANCE$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_TOTALVARIANCE$PEXTENDED$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_TOTALVARIANCE$PEXTENDED$LONGINT$$EXTENDED
_MATH_TOTALVARIANCE$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj1249
	jmp	Lj1250
Lj1249:
	fldz
	fstpt	-24(%ebp)
	jmp	Lj1253
Lj1250:
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	leal	-40(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_SUMSANDSQUARES$PEXTENDED$LONGINT$EXTENDED$EXTENDED$stub
	fldt	-40(%ebp)
	fmul	%st(0),%st(0)
	fildl	-8(%ebp)
	fdivrp	%st,%st(1)
	fldt	-56(%ebp)
	fsubp	%st,%st(1)
	fstpt	-24(%ebp)
Lj1253:
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_POPNSTDDEV$array_of_EXTENDED$$EXTENDED
_MATH_POPNSTDDEV$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_POPNVARIANCE$PEXTENDED$LONGINT$$EXTENDED$stub
	fsqrt
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_POPNSTDDEV$PEXTENDED$LONGINT$$EXTENDED
_MATH_POPNSTDDEV$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_POPNVARIANCE$PEXTENDED$LONGINT$$EXTENDED$stub
	fsqrt
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_POPNVARIANCE$array_of_EXTENDED$$EXTENDED
_MATH_POPNVARIANCE$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_POPNVARIANCE$PEXTENDED$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_POPNVARIANCE$PEXTENDED$LONGINT$$EXTENDED
_MATH_POPNVARIANCE$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_TOTALVARIANCE$PEXTENDED$LONGINT$$EXTENDED$stub
	fildl	-8(%ebp)
	fdivrp	%st,%st(1)
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MOMENTSKEWKURTOSIS$crcA94F3C65
_MATH_MOMENTSKEWKURTOSIS$crcA94F3C65:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	24(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	call	L_MATH_MOMENTSKEWKURTOSIS$crc321E69D1$stub
	leave
	ret

.text
	.align 4
.globl	_MATH_MOMENTSKEWKURTOSIS$crc321E69D1
_MATH_MOMENTSKEWKURTOSIS$crc321E69D1:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	fldz
	fstpt	(%eax)
	fildl	-8(%ebp)
	fld1
	fdivp	%st,%st(1)
	fstpt	-72(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj1323
	decl	-16(%ebp)
	.align 2
Lj1324:
	incl	-16(%ebp)
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%edx
	fldt	(%edx)
	fldt	(%ecx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	fstpt	(%edx)
	addl	$10,-20(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj1324
Lj1323:
	movl	-12(%ebp),%eax
	fldt	(%eax)
	fldt	-72(%ebp)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	24(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	20(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	16(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj1338
	decl	-16(%ebp)
	.align 2
Lj1339:
	incl	-16(%ebp)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%ecx
	fldt	(%ecx)
	fldt	(%edx)
	fsubp	%st,%st(1)
	fstpt	-40(%ebp)
	fldt	-40(%ebp)
	fldt	-40(%ebp)
	fmulp	%st,%st(1)
	fstpt	-56(%ebp)
	movl	24(%ebp),%edx
	fldt	-56(%ebp)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	24(%ebp),%edx
	fstpt	(%edx)
	movl	20(%ebp),%edx
	fldt	-40(%ebp)
	fldt	-56(%ebp)
	fmulp	%st,%st(1)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	20(%ebp),%edx
	fstpt	(%edx)
	movl	16(%ebp),%edx
	fldt	-56(%ebp)
	fldt	-56(%ebp)
	fmulp	%st,%st(1)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	16(%ebp),%edx
	fstpt	(%edx)
	addl	$10,-20(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj1339
Lj1338:
	movl	24(%ebp),%eax
	fldt	(%eax)
	fldt	-72(%ebp)
	fmulp	%st,%st(1)
	movl	24(%ebp),%eax
	fstpt	(%eax)
	movl	20(%ebp),%eax
	fldt	(%eax)
	fldt	-72(%ebp)
	fmulp	%st,%st(1)
	movl	20(%ebp),%eax
	fstpt	(%eax)
	movl	16(%ebp),%eax
	fldt	(%eax)
	fldt	-72(%ebp)
	fmulp	%st,%st(1)
	movl	16(%ebp),%eax
	fstpt	(%eax)
	movl	20(%ebp),%edx
	movl	24(%ebp),%eax
	fldt	(%eax)
	fsqrt
	movl	24(%ebp),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldt	(%edx)
	fdivp	%st,%st(1)
	movl	12(%ebp),%eax
	fstpt	(%eax)
	movl	16(%ebp),%eax
	movl	24(%ebp),%edx
	movl	24(%ebp),%ecx
	fldt	(%ecx)
	fldt	(%edx)
	fmulp	%st,%st(1)
	fldt	(%eax)
	fdivp	%st,%st(1)
	movl	8(%ebp),%eax
	fstpt	(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATH_NORM$array_of_EXTENDED$$EXTENDED
_MATH_NORM$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_NORM$PEXTENDED$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_NORM$PEXTENDED$LONGINT$$EXTENDED
_MATH_NORM$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MATH_SUMOFSQUARES$PEXTENDED$LONGINT$$EXTENDED$stub
	fsqrt
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MININTVALUE$array_of_LONGINT$$LONGINT
_MATH_MININTVALUE$array_of_LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%edx
	jl	Lj1381
	decl	-16(%ebp)
	.align 2
Lj1382:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%eax,%ecx,4),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj1383
	jmp	Lj1384
Lj1383:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%eax,%ecx,4),%eax
	movl	%eax,-12(%ebp)
Lj1384:
	cmpl	-16(%ebp),%edx
	jg	Lj1382
Lj1381:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_MAXINTVALUE$array_of_LONGINT$$LONGINT
_MATH_MAXINTVALUE$array_of_LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%edx
	jl	Lj1392
	decl	-16(%ebp)
	.align 2
Lj1393:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%eax,%ecx,4),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj1394
	jmp	Lj1395
Lj1394:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%eax,%ecx,4),%eax
	movl	%eax,-12(%ebp)
Lj1395:
	cmpl	-16(%ebp),%edx
	jg	Lj1393
Lj1392:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_MINVALUE$array_of_LONGINT$$LONGINT
_MATH_MINVALUE$array_of_LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_MINVALUE$PINTEGER$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_MINVALUE$PINTEGER$LONGINT$$LONGINT
_MATH_MINVALUE$PINTEGER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj1411
	decl	-16(%ebp)
	.align 2
Lj1412:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	cmpl	-12(%ebp),%edx
	jl	Lj1413
	jmp	Lj1414
Lj1413:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-12(%ebp)
Lj1414:
	cmpl	-16(%ebp),%eax
	jg	Lj1412
Lj1411:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_MAXVALUE$array_of_LONGINT$$LONGINT
_MATH_MAXVALUE$array_of_LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_MAXVALUE$PINTEGER$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_MAXVALUE$PINTEGER$LONGINT$$LONGINT
_MATH_MAXVALUE$PINTEGER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj1430
	decl	-16(%ebp)
	.align 2
Lj1431:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	cmpl	-12(%ebp),%edx
	jg	Lj1432
	jmp	Lj1433
Lj1432:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-12(%ebp)
Lj1433:
	cmpl	-16(%ebp),%eax
	jg	Lj1431
Lj1430:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_MINVALUE$array_of_SINGLE$$SINGLE
_MATH_MINVALUE$array_of_SINGLE$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_MINVALUE$PSINGLE$LONGINT$$SINGLE$stub
	fstps	-12(%ebp)
	flds	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MINVALUE$PSINGLE$LONGINT$$SINGLE
_MATH_MINVALUE$PSINGLE$LONGINT$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	decl	%edx
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%edx
	jl	Lj1449
	decl	-16(%ebp)
	.align 2
Lj1450:
	incl	-16(%ebp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%eax
	flds	-12(%ebp)
	flds	(%ecx,%eax,4)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1451
	jmp	Lj1452
Lj1451:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%eax,%ecx,4),%eax
	movl	%eax,-12(%ebp)
Lj1452:
	cmpl	-16(%ebp),%edx
	jg	Lj1450
Lj1449:
	flds	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MAXVALUE$array_of_SINGLE$$SINGLE
_MATH_MAXVALUE$array_of_SINGLE$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_MAXVALUE$PSINGLE$LONGINT$$SINGLE$stub
	fstps	-12(%ebp)
	flds	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MAXVALUE$PSINGLE$LONGINT$$SINGLE
_MATH_MAXVALUE$PSINGLE$LONGINT$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	decl	%edx
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%edx
	jl	Lj1468
	decl	-16(%ebp)
	.align 2
Lj1469:
	incl	-16(%ebp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%eax
	flds	-12(%ebp)
	flds	(%ecx,%eax,4)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1470
	jmp	Lj1471
Lj1470:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%eax,%ecx,4),%eax
	movl	%eax,-12(%ebp)
Lj1471:
	cmpl	-16(%ebp),%edx
	jg	Lj1469
Lj1468:
	flds	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MINVALUE$array_of_DOUBLE$$DOUBLE
_MATH_MINVALUE$array_of_DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_MINVALUE$PDOUBLE$LONGINT$$DOUBLE$stub
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MINVALUE$PDOUBLE$LONGINT$$DOUBLE
_MATH_MINVALUE$PDOUBLE$LONGINT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	decl	%edx
	movl	$1,-20(%ebp)
	cmpl	-20(%ebp),%edx
	jl	Lj1487
	decl	-20(%ebp)
	.align 2
Lj1488:
	incl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%ecx
	fldl	-16(%ebp)
	fldl	(%eax,%ecx,8)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1489
	jmp	Lj1490
Lj1489:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	(%eax,%ebx,8),%ecx
	movl	%ecx,-16(%ebp)
	movl	4(%eax,%ebx,8),%eax
	movl	%eax,-12(%ebp)
Lj1490:
	cmpl	-20(%ebp),%edx
	jg	Lj1488
Lj1487:
	fldl	-16(%ebp)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_MAXVALUE$array_of_DOUBLE$$DOUBLE
_MATH_MAXVALUE$array_of_DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_MAXVALUE$PDOUBLE$LONGINT$$DOUBLE$stub
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MAXVALUE$PDOUBLE$LONGINT$$DOUBLE
_MATH_MAXVALUE$PDOUBLE$LONGINT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	decl	%edx
	movl	$1,-20(%ebp)
	cmpl	-20(%ebp),%edx
	jl	Lj1506
	decl	-20(%ebp)
	.align 2
Lj1507:
	incl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%ecx
	fldl	-16(%ebp)
	fldl	(%eax,%ecx,8)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1508
	jmp	Lj1509
Lj1508:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	(%eax,%ebx,8),%ecx
	movl	%ecx,-16(%ebp)
	movl	4(%eax,%ebx,8),%eax
	movl	%eax,-12(%ebp)
Lj1509:
	cmpl	-20(%ebp),%edx
	jg	Lj1507
Lj1506:
	fldl	-16(%ebp)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_MINVALUE$array_of_EXTENDED$$EXTENDED
_MATH_MINVALUE$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_MINVALUE$PEXTENDED$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MINVALUE$PEXTENDED$LONGINT$$EXTENDED
_MATH_MINVALUE$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-20(%ebp)
	movw	8(%edx),%ax
	movw	%ax,-16(%ebp)
	movl	-8(%ebp),%edx
	decl	%edx
	movl	$1,-28(%ebp)
	cmpl	-28(%ebp),%edx
	jl	Lj1525
	decl	-28(%ebp)
	.align 2
Lj1526:
	incl	-28(%ebp)
	movl	-4(%ebp),%ecx
	movl	-28(%ebp),%eax
	imull	$10,%eax
	fldt	-24(%ebp)
	fldt	(%ecx,%eax)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1527
	jmp	Lj1528
Lj1527:
	movl	-4(%ebp),%ebx
	movl	-28(%ebp),%eax
	imull	$10,%eax
	movl	(%ebx,%eax),%ecx
	movl	%ecx,-24(%ebp)
	movl	4(%ebx,%eax),%ecx
	movl	%ecx,-20(%ebp)
	movw	8(%ebx,%eax),%ax
	movw	%ax,-16(%ebp)
Lj1528:
	cmpl	-28(%ebp),%edx
	jg	Lj1526
Lj1525:
	fldt	-24(%ebp)
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_MAXVALUE$array_of_EXTENDED$$EXTENDED
_MATH_MAXVALUE$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	L_MATH_MAXVALUE$PEXTENDED$LONGINT$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MAXVALUE$PEXTENDED$LONGINT$$EXTENDED
_MATH_MAXVALUE$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-20(%ebp)
	movw	8(%edx),%ax
	movw	%ax,-16(%ebp)
	movl	-8(%ebp),%edx
	decl	%edx
	movl	$1,-28(%ebp)
	cmpl	-28(%ebp),%edx
	jl	Lj1544
	decl	-28(%ebp)
	.align 2
Lj1545:
	incl	-28(%ebp)
	movl	-4(%ebp),%ecx
	movl	-28(%ebp),%eax
	imull	$10,%eax
	fldt	-24(%ebp)
	fldt	(%ecx,%eax)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1546
	jmp	Lj1547
Lj1546:
	movl	-4(%ebp),%ebx
	movl	-28(%ebp),%eax
	imull	$10,%eax
	movl	(%ebx,%eax),%ecx
	movl	%ecx,-24(%ebp)
	movl	4(%ebx,%eax),%ecx
	movl	%ecx,-20(%ebp)
	movw	8(%ebx,%eax),%ax
	movw	%ax,-16(%ebp)
Lj1547:
	cmpl	-28(%ebp),%edx
	jg	Lj1545
Lj1544:
	fldt	-24(%ebp)
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_MIN$LONGINT$LONGINT$$LONGINT
_MATH_MIN$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj1552
	jmp	Lj1553
Lj1552:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1556
Lj1553:
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj1556:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_MAX$LONGINT$LONGINT$$LONGINT
_MATH_MAX$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj1561
	jmp	Lj1562
Lj1561:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1565
Lj1562:
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj1565:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_MIN$INT64$INT64$$INT64
_MATH_MIN$INT64$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	cmpl	12(%ebp),%edx
	jl	Lj1570
	jg	Lj1571
	cmpl	8(%ebp),%eax
	jb	Lj1570
	jmp	Lj1571
	jmp	Lj1571
Lj1570:
	movl	16(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-4(%ebp)
	jmp	Lj1574
Lj1571:
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj1574:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_MAX$INT64$INT64$$INT64
_MATH_MAX$INT64$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	cmpl	12(%ebp),%edx
	jg	Lj1579
	jl	Lj1580
	cmpl	8(%ebp),%eax
	ja	Lj1579
	jmp	Lj1580
	jmp	Lj1580
Lj1579:
	movl	16(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-4(%ebp)
	jmp	Lj1583
Lj1580:
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj1583:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_MIN$SINGLE$SINGLE$$SINGLE
_MATH_MIN$SINGLE$SINGLE$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	flds	8(%ebp)
	flds	12(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1588
	jmp	Lj1589
Lj1588:
	movl	12(%ebp),%eax
	movl	%eax,-4(%ebp)
	jmp	Lj1592
Lj1589:
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj1592:
	flds	-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MAX$SINGLE$SINGLE$$SINGLE
_MATH_MAX$SINGLE$SINGLE$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	flds	8(%ebp)
	flds	12(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1597
	jmp	Lj1598
Lj1597:
	movl	12(%ebp),%eax
	movl	%eax,-4(%ebp)
	jmp	Lj1601
Lj1598:
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj1601:
	flds	-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MIN$DOUBLE$DOUBLE$$DOUBLE
_MATH_MIN$DOUBLE$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	fldl	8(%ebp)
	fldl	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1606
	jmp	Lj1607
Lj1606:
	movl	16(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-4(%ebp)
	jmp	Lj1610
Lj1607:
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj1610:
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MAX$DOUBLE$DOUBLE$$DOUBLE
_MATH_MAX$DOUBLE$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	fldl	8(%ebp)
	fldl	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1615
	jmp	Lj1616
Lj1615:
	movl	16(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-4(%ebp)
	jmp	Lj1619
Lj1616:
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj1619:
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MIN$EXTENDED$EXTENDED$$EXTENDED
_MATH_MIN$EXTENDED$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fldt	8(%ebp)
	fldt	20(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1624
	jmp	Lj1625
Lj1624:
	movl	20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	24(%ebp),%eax
	movl	%eax,-12(%ebp)
	movw	28(%ebp),%ax
	movw	%ax,-8(%ebp)
	jmp	Lj1628
Lj1625:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebp)
	movw	16(%ebp),%ax
	movw	%ax,-8(%ebp)
Lj1628:
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_MAX$EXTENDED$EXTENDED$$EXTENDED
_MATH_MAX$EXTENDED$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fldt	8(%ebp)
	fldt	20(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1633
	jmp	Lj1634
Lj1633:
	movl	20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	24(%ebp),%eax
	movl	%eax,-12(%ebp)
	movw	28(%ebp),%ax
	movw	%ax,-8(%ebp)
	jmp	Lj1637
Lj1634:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebp)
	movw	16(%ebp),%ax
	movw	%ax,-8(%ebp)
Lj1637:
	fldt	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_INRANGE$LONGINT$LONGINT$LONGINT$$BOOLEAN
_MATH_INRANGE$LONGINT$LONGINT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj1644
	jmp	Lj1643
Lj1644:
	movl	-4(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jle	Lj1642
	jmp	Lj1643
Lj1642:
	movb	$1,-13(%ebp)
	jmp	Lj1645
Lj1643:
	movb	$0,-13(%ebp)
Lj1645:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_INRANGE$INT64$INT64$INT64$$BOOLEAN
_MATH_INRANGE$INT64$INT64$INT64$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	24(%ebp),%eax
	movl	28(%ebp),%edx
	cmpl	20(%ebp),%edx
	jg	Lj1650
	jl	Lj1649
	cmpl	16(%ebp),%eax
	jae	Lj1650
	jmp	Lj1649
	jmp	Lj1649
Lj1650:
	movl	24(%ebp),%eax
	movl	28(%ebp),%edx
	cmpl	12(%ebp),%edx
	jl	Lj1648
	jg	Lj1649
	cmpl	8(%ebp),%eax
	jbe	Lj1648
	jmp	Lj1649
	jmp	Lj1649
Lj1648:
	movb	$1,-1(%ebp)
	jmp	Lj1651
Lj1649:
	movb	$0,-1(%ebp)
Lj1651:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_INRANGE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN
_MATH_INRANGE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	fldl	16(%ebp)
	fldl	24(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jae	Lj1656
	jmp	Lj1655
Lj1656:
	fldl	8(%ebp)
	fldl	24(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jbe	Lj1654
	jmp	Lj1655
Lj1654:
	movb	$1,-1(%ebp)
	jmp	Lj1657
Lj1655:
	movb	$0,-1(%ebp)
Lj1657:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_ENSURERANGE$LONGINT$LONGINT$LONGINT$$LONGINT
_MATH_ENSURERANGE$LONGINT$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj1662
	jmp	Lj1663
Lj1662:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1666
Lj1663:
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj1667
	jmp	Lj1668
Lj1667:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1668:
Lj1666:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_ENSURERANGE$INT64$INT64$INT64$$INT64
_MATH_ENSURERANGE$INT64$INT64$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	24(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	28(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	cmpl	20(%ebp),%edx
	jl	Lj1675
	jg	Lj1676
	cmpl	16(%ebp),%eax
	jb	Lj1675
	jmp	Lj1676
	jmp	Lj1676
Lj1675:
	movl	16(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-4(%ebp)
	jmp	Lj1679
Lj1676:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	cmpl	12(%ebp),%edx
	jg	Lj1680
	jl	Lj1681
	cmpl	8(%ebp),%eax
	ja	Lj1680
	jmp	Lj1681
	jmp	Lj1681
Lj1680:
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj1681:
Lj1679:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_ENSURERANGE$DOUBLE$DOUBLE$DOUBLE$$DOUBLE
_MATH_ENSURERANGE$DOUBLE$DOUBLE$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	24(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	28(%ebp),%eax
	movl	%eax,-4(%ebp)
	fldl	16(%ebp)
	fldl	-8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1688
	jmp	Lj1689
Lj1688:
	movl	16(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-4(%ebp)
	jmp	Lj1692
Lj1689:
	fldl	8(%ebp)
	fldl	-8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1693
	jmp	Lj1694
Lj1693:
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj1694:
Lj1692:
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_ISZERO$SINGLE$SINGLE$$BOOLEAN
_MATH_ISZERO$SINGLE$SINGLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj1698
Lj1698:
	popl	%edx
	fldz
	flds	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj1699
	jmp	Lj1700
Lj1699:
	movl	L_$MATH$_Ld14$non_lazy_ptr-Lj1698(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,8(%ebp)
Lj1700:
	flds	12(%ebp)
	fabs
	flds	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	setaeb	-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_ISZERO$SINGLE$$BOOLEAN
_MATH_ISZERO$SINGLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj1706
Lj1706:
	popl	%ebx
	movl	L_$MATH$_Ld14$non_lazy_ptr-Lj1706(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_MATH_ISZERO$SINGLE$SINGLE$$BOOLEAN$stub
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_ISZERO$DOUBLE$DOUBLE$$BOOLEAN
_MATH_ISZERO$DOUBLE$DOUBLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj1714
Lj1714:
	popl	%edx
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj1715
	jmp	Lj1716
Lj1715:
	movl	L_$MATH$_Ld15$non_lazy_ptr-Lj1714(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,8(%ebp)
	movl	L_$MATH$_Ld15$non_lazy_ptr-Lj1714(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,12(%ebp)
Lj1716:
	fldl	16(%ebp)
	fabs
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	setaeb	-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_ISZERO$DOUBLE$$BOOLEAN
_MATH_ISZERO$DOUBLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-8(%ebp)
	call	Lj1722
Lj1722:
	popl	%ebx
	movl	L_$MATH$_Ld16$non_lazy_ptr-Lj1722(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$MATH$_Ld16$non_lazy_ptr-Lj1722(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_$MATH$_Ld16$non_lazy_ptr-Lj1722(%ebx),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%esp)
	fldl	8(%ebp)
	fstpt	12(%esp)
	call	L_MATH_ISZERO$EXTENDED$EXTENDED$$BOOLEAN$stub
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_ISZERO$EXTENDED$EXTENDED$$BOOLEAN
_MATH_ISZERO$EXTENDED$EXTENDED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj1730
Lj1730:
	popl	%edx
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj1731
	jmp	Lj1732
Lj1731:
	movl	L_$MATH$_Ld17$non_lazy_ptr-Lj1730(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,8(%ebp)
	movl	L_$MATH$_Ld17$non_lazy_ptr-Lj1730(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,12(%ebp)
	movl	L_$MATH$_Ld17$non_lazy_ptr-Lj1730(%edx),%eax
	movw	8(%eax),%ax
	movw	%ax,16(%ebp)
Lj1732:
	fldt	20(%ebp)
	fabs
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	setaeb	-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_ISZERO$EXTENDED$$BOOLEAN
_MATH_ISZERO$EXTENDED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-8(%ebp)
	call	Lj1738
Lj1738:
	popl	%ebx
	movl	L_$MATH$_Ld17$non_lazy_ptr-Lj1738(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$MATH$_Ld17$non_lazy_ptr-Lj1738(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_$MATH$_Ld17$non_lazy_ptr-Lj1738(%ebx),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%esp)
	movl	8(%ebp),%eax
	movl	%eax,12(%esp)
	movl	12(%ebp),%eax
	movl	%eax,16(%esp)
	movl	16(%ebp),%eax
	movl	%eax,20(%esp)
	call	L_MATH_ISZERO$EXTENDED$EXTENDED$$BOOLEAN$stub
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_ISNAN$SINGLE$$BOOLEAN
_MATH_ISNAN$SINGLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movzwl	10(%ebp),%eax
	shrl	$7,%eax
	andl	$255,%eax
	cmpl	$255,%eax
	seteb	-3(%ebp)
	movl	8(%ebp),%eax
	andl	$8388607,%eax
	testl	%eax,%eax
	seteb	-2(%ebp)
	cmpb	$0,-3(%ebp)
	jne	Lj1753
	jmp	Lj1752
Lj1753:
	movb	-2(%ebp),%al
	testb	%al,%al
	je	Lj1751
	jmp	Lj1752
Lj1751:
	movb	$1,-1(%ebp)
	jmp	Lj1754
Lj1752:
	movb	$0,-1(%ebp)
Lj1754:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_ISNAN$DOUBLE$$BOOLEAN
_MATH_ISNAN$DOUBLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	12(%ebp),%eax
	shrl	$20,%eax
	andl	$2047,%eax
	cmpl	$2047,%eax
	seteb	-3(%ebp)
	movl	12(%ebp),%eax
	andl	$1048575,%eax
	testl	%eax,%eax
	je	Lj1761
	jmp	Lj1760
Lj1761:
	movl	8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1759
	jmp	Lj1760
Lj1759:
	movb	$1,-2(%ebp)
	jmp	Lj1762
Lj1760:
	movb	$0,-2(%ebp)
Lj1762:
	cmpb	$0,-3(%ebp)
	jne	Lj1765
	jmp	Lj1764
Lj1765:
	movb	-2(%ebp),%al
	testb	%al,%al
	je	Lj1763
	jmp	Lj1764
Lj1763:
	movb	$1,-1(%ebp)
	jmp	Lj1766
Lj1764:
	movb	$0,-1(%ebp)
Lj1766:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_ISNAN$EXTENDED$$BOOLEAN
_MATH_ISNAN$EXTENDED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	16(%ebp),%ax
	andw	$32767,%ax
	movzwl	%ax,%eax
	cmpl	$32767,%eax
	seteb	-3(%ebp)
	movl	8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1773
	jmp	Lj1772
Lj1773:
	movl	12(%ebp),%eax
	andl	$2147483647,%eax
	testl	%eax,%eax
	je	Lj1771
	jmp	Lj1772
Lj1771:
	movb	$1,-2(%ebp)
	jmp	Lj1774
Lj1772:
	movb	$0,-2(%ebp)
Lj1774:
	cmpb	$0,-3(%ebp)
	jne	Lj1777
	jmp	Lj1776
Lj1777:
	movb	-2(%ebp),%al
	testb	%al,%al
	je	Lj1775
	jmp	Lj1776
Lj1775:
	movb	$1,-1(%ebp)
	jmp	Lj1778
Lj1776:
	movb	$0,-1(%ebp)
Lj1778:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_ISINFINITE$DOUBLE$$BOOLEAN
_MATH_ISINFINITE$DOUBLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	12(%ebp),%eax
	shrl	$20,%eax
	andl	$2047,%eax
	cmpl	$2047,%eax
	seteb	-3(%ebp)
	movl	12(%ebp),%eax
	andl	$1048575,%eax
	testl	%eax,%eax
	je	Lj1785
	jmp	Lj1784
Lj1785:
	movl	8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1783
	jmp	Lj1784
Lj1783:
	movb	$1,-2(%ebp)
	jmp	Lj1786
Lj1784:
	movb	$0,-2(%ebp)
Lj1786:
	cmpb	$0,-3(%ebp)
	jne	Lj1789
	jmp	Lj1788
Lj1789:
	cmpb	$0,-2(%ebp)
	jne	Lj1787
	jmp	Lj1788
Lj1787:
	movb	$1,-1(%ebp)
	jmp	Lj1790
Lj1788:
	movb	$0,-1(%ebp)
Lj1790:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_SAMEVALUE$EXTENDED$EXTENDED$EXTENDED$$BOOLEAN
_MATH_SAMEVALUE$EXTENDED$EXTENDED$EXTENDED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	call	Lj1792
Lj1792:
	popl	%edx
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj1793
	jmp	Lj1794
Lj1793:
	fldt	20(%ebp)
	fabs
	fstpt	-56(%ebp)
	fldt	32(%ebp)
	fabs
	fstpt	-72(%ebp)
	fldt	-56(%ebp)
	fldt	-72(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1801
	jmp	Lj1802
Lj1801:
	movl	-72(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-68(%ebp),%eax
	movl	%eax,-36(%ebp)
	movw	-64(%ebp),%ax
	movw	%ax,-32(%ebp)
	jmp	Lj1805
Lj1802:
	movl	-56(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-52(%ebp),%eax
	movl	%eax,-36(%ebp)
	movw	-48(%ebp),%ax
	movw	%ax,-32(%ebp)
Lj1805:
	movl	L_$MATH$_Ld17$non_lazy_ptr-Lj1792(%edx),%eax
	fldt	(%eax)
	fldt	-40(%ebp)
	fmulp	%st,%st(1)
	fstpt	-24(%ebp)
	movl	L_$MATH$_Ld17$non_lazy_ptr-Lj1792(%edx),%eax
	fldt	(%eax)
	fldt	-24(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1808
	jmp	Lj1809
Lj1808:
	movl	-24(%ebp),%eax
	movl	%eax,8(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,12(%ebp)
	movw	-16(%ebp),%ax
	movw	%ax,16(%ebp)
	jmp	Lj1812
Lj1809:
	movl	L_$MATH$_Ld17$non_lazy_ptr-Lj1792(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,8(%ebp)
	movl	L_$MATH$_Ld17$non_lazy_ptr-Lj1792(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,12(%ebp)
	movl	L_$MATH$_Ld17$non_lazy_ptr-Lj1792(%edx),%eax
	movw	8(%eax),%ax
	movw	%ax,16(%ebp)
Lj1812:
Lj1794:
	fldt	20(%ebp)
	fldt	32(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1815
	jmp	Lj1816
Lj1815:
	fldt	20(%ebp)
	fldt	32(%ebp)
	fsubp	%st,%st(1)
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	setaeb	-1(%ebp)
	jmp	Lj1819
Lj1816:
	fldt	32(%ebp)
	fldt	20(%ebp)
	fsubp	%st,%st(1)
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	setaeb	-1(%ebp)
Lj1819:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_SAMEVALUE$EXTENDED$EXTENDED$$BOOLEAN
_MATH_SAMEVALUE$EXTENDED$EXTENDED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	fldz
	fstpt	(%esp)
	movl	8(%ebp),%eax
	movl	%eax,12(%esp)
	movl	12(%ebp),%eax
	movl	%eax,16(%esp)
	movl	16(%ebp),%eax
	movl	%eax,20(%esp)
	movl	20(%ebp),%eax
	movl	%eax,24(%esp)
	movl	24(%ebp),%eax
	movl	%eax,28(%esp)
	movl	28(%ebp),%eax
	movl	%eax,32(%esp)
	call	L_MATH_SAMEVALUE$EXTENDED$EXTENDED$EXTENDED$$BOOLEAN$stub
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_SAMEVALUE$DOUBLE$DOUBLE$$BOOLEAN
_MATH_SAMEVALUE$DOUBLE$DOUBLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	fldz
	fstpl	(%esp)
	movl	8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	16(%ebp),%eax
	movl	%eax,16(%esp)
	movl	20(%ebp),%eax
	movl	%eax,20(%esp)
	call	L_MATH_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN$stub
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN
_MATH_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	call	Lj1843
Lj1843:
	popl	%edx
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj1844
	jmp	Lj1845
Lj1844:
	fldl	16(%ebp)
	fabs
	fstpt	-72(%ebp)
	fldl	24(%ebp)
	fabs
	fstpt	-88(%ebp)
	fldt	-72(%ebp)
	fldt	-88(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1854
	jmp	Lj1855
Lj1854:
	movl	-88(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-84(%ebp),%eax
	movl	%eax,-52(%ebp)
	movw	-80(%ebp),%ax
	movw	%ax,-48(%ebp)
	jmp	Lj1858
Lj1855:
	movl	-72(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	movw	-64(%ebp),%ax
	movw	%ax,-48(%ebp)
Lj1858:
	movl	L_$MATH$_Ld16$non_lazy_ptr-Lj1843(%edx),%eax
	fldt	(%eax)
	fldt	-56(%ebp)
	fmulp	%st,%st(1)
	fstpt	-40(%ebp)
	movl	L_$MATH$_Ld16$non_lazy_ptr-Lj1843(%edx),%eax
	fldt	(%eax)
	fldt	-40(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1861
	jmp	Lj1862
Lj1861:
	movl	-40(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-36(%ebp),%eax
	movl	%eax,-20(%ebp)
	movw	-32(%ebp),%ax
	movw	%ax,-16(%ebp)
	jmp	Lj1865
Lj1862:
	movl	L_$MATH$_Ld16$non_lazy_ptr-Lj1843(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	L_$MATH$_Ld16$non_lazy_ptr-Lj1843(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	L_$MATH$_Ld16$non_lazy_ptr-Lj1843(%edx),%eax
	movw	8(%eax),%ax
	movw	%ax,-16(%ebp)
Lj1865:
	fldt	-24(%ebp)
	fstpl	8(%ebp)
Lj1845:
	fldl	16(%ebp)
	fldl	24(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1868
	jmp	Lj1869
Lj1868:
	fldl	16(%ebp)
	fldl	24(%ebp)
	fsubp	%st,%st(1)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	setaeb	-1(%ebp)
	jmp	Lj1872
Lj1869:
	fldl	24(%ebp)
	fldl	16(%ebp)
	fsubp	%st,%st(1)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	setaeb	-1(%ebp)
Lj1872:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_SAMEVALUE$SINGLE$SINGLE$$BOOLEAN
_MATH_SAMEVALUE$SINGLE$SINGLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fldz
	fstps	(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_MATH_SAMEVALUE$SINGLE$SINGLE$SINGLE$$BOOLEAN$stub
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_SAMEVALUE$SINGLE$SINGLE$SINGLE$$BOOLEAN
_MATH_SAMEVALUE$SINGLE$SINGLE$SINGLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	call	Lj1886
Lj1886:
	popl	%edx
	fldz
	flds	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj1887
	jmp	Lj1888
Lj1887:
	flds	12(%ebp)
	fabs
	fstpt	-72(%ebp)
	flds	16(%ebp)
	fabs
	fstpt	-88(%ebp)
	fldt	-72(%ebp)
	fldt	-88(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1897
	jmp	Lj1898
Lj1897:
	movl	-88(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-84(%ebp),%eax
	movl	%eax,-52(%ebp)
	movw	-80(%ebp),%ax
	movw	%ax,-48(%ebp)
	jmp	Lj1901
Lj1898:
	movl	-72(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	movw	-64(%ebp),%ax
	movw	%ax,-48(%ebp)
Lj1901:
	movl	L_$MATH$_Ld18$non_lazy_ptr-Lj1886(%edx),%eax
	fldt	(%eax)
	fldt	-56(%ebp)
	fmulp	%st,%st(1)
	fstpt	-40(%ebp)
	movl	L_$MATH$_Ld18$non_lazy_ptr-Lj1886(%edx),%eax
	fldt	(%eax)
	fldt	-40(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1904
	jmp	Lj1905
Lj1904:
	movl	-40(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-36(%ebp),%eax
	movl	%eax,-20(%ebp)
	movw	-32(%ebp),%ax
	movw	%ax,-16(%ebp)
	jmp	Lj1908
Lj1905:
	movl	L_$MATH$_Ld18$non_lazy_ptr-Lj1886(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	L_$MATH$_Ld18$non_lazy_ptr-Lj1886(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	L_$MATH$_Ld18$non_lazy_ptr-Lj1886(%edx),%eax
	movw	8(%eax),%ax
	movw	%ax,-16(%ebp)
Lj1908:
	fldt	-24(%ebp)
	fstps	8(%ebp)
Lj1888:
	flds	12(%ebp)
	flds	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1911
	jmp	Lj1912
Lj1911:
	flds	12(%ebp)
	flds	16(%ebp)
	fsubp	%st,%st(1)
	flds	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	setaeb	-1(%ebp)
	jmp	Lj1915
Lj1912:
	flds	16(%ebp)
	flds	12(%ebp)
	fsubp	%st,%st(1)
	flds	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	setaeb	-1(%ebp)
Lj1915:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_IFTHEN$BOOLEAN$LONGINT$LONGINT$$LONGINT
_MATH_IFTHEN$BOOLEAN$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj1920
	jmp	Lj1921
Lj1920:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1924
Lj1921:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1924:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_IFTHEN$BOOLEAN$INT64$INT64$$INT64
_MATH_IFTHEN$BOOLEAN$INT64$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movb	%al,-4(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj1929
	jmp	Lj1930
Lj1929:
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1933
Lj1930:
	movl	8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj1933:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATH_IFTHEN$BOOLEAN$DOUBLE$DOUBLE$$DOUBLE
_MATH_IFTHEN$BOOLEAN$DOUBLE$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movb	%al,-4(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj1938
	jmp	Lj1939
Lj1938:
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1942
Lj1939:
	movl	8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj1942:
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATH_COMPAREVALUE$LONGINT$LONGINT$$TVALUERELATIONSHIP
_MATH_COMPAREVALUE$LONGINT$LONGINT$$TVALUERELATIONSHIP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$1,-9(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj1949
	jmp	Lj1950
Lj1949:
	movb	$0,-9(%ebp)
	jmp	Lj1953
Lj1950:
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj1954
	jmp	Lj1955
Lj1954:
	movb	$-1,-9(%ebp)
Lj1955:
Lj1953:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_COMPAREVALUE$INT64$INT64$$TVALUERELATIONSHIP
_MATH_COMPAREVALUE$INT64$INT64$$TVALUERELATIONSHIP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	$1,-1(%ebp)
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	cmpl	12(%ebp),%edx
	jne	Lj1963
	cmpl	8(%ebp),%eax
	jne	Lj1963
	jmp	Lj1962
	jmp	Lj1963
Lj1962:
	movb	$0,-1(%ebp)
	jmp	Lj1966
Lj1963:
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	cmpl	12(%ebp),%edx
	jl	Lj1967
	jg	Lj1968
	cmpl	8(%ebp),%eax
	jb	Lj1967
	jmp	Lj1968
	jmp	Lj1968
Lj1967:
	movb	$-1,-1(%ebp)
Lj1968:
Lj1966:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_COMPAREVALUE$QWORD$QWORD$$TVALUERELATIONSHIP
_MATH_COMPAREVALUE$QWORD$QWORD$$TVALUERELATIONSHIP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	$1,-1(%ebp)
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	cmpl	12(%ebp),%edx
	jne	Lj1976
	cmpl	8(%ebp),%eax
	jne	Lj1976
	jmp	Lj1975
	jmp	Lj1976
Lj1975:
	movb	$0,-1(%ebp)
	jmp	Lj1979
Lj1976:
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	cmpl	12(%ebp),%edx
	jb	Lj1980
	ja	Lj1981
	cmpl	8(%ebp),%eax
	jb	Lj1980
	jmp	Lj1981
	jmp	Lj1981
Lj1980:
	movb	$-1,-1(%ebp)
Lj1981:
Lj1979:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_COMPAREVALUE$SINGLE$SINGLE$SINGLE$$TVALUERELATIONSHIP
_MATH_COMPAREVALUE$SINGLE$SINGLE$SINGLE$$TVALUERELATIONSHIP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	$1,-1(%ebp)
	flds	12(%ebp)
	flds	16(%ebp)
	fsubp	%st,%st(1)
	fabs
	flds	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jae	Lj1988
	jmp	Lj1989
Lj1988:
	movb	$0,-1(%ebp)
	jmp	Lj1992
Lj1989:
	flds	12(%ebp)
	flds	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1993
	jmp	Lj1994
Lj1993:
	movb	$-1,-1(%ebp)
Lj1994:
Lj1992:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_COMPAREVALUE$DOUBLE$DOUBLE$DOUBLE$$TVALUERELATIONSHIP
_MATH_COMPAREVALUE$DOUBLE$DOUBLE$DOUBLE$$TVALUERELATIONSHIP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	$1,-1(%ebp)
	fldl	16(%ebp)
	fldl	24(%ebp)
	fsubp	%st,%st(1)
	fabs
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jae	Lj2001
	jmp	Lj2002
Lj2001:
	movb	$0,-1(%ebp)
	jmp	Lj2005
Lj2002:
	fldl	16(%ebp)
	fldl	24(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj2006
	jmp	Lj2007
Lj2006:
	movb	$-1,-1(%ebp)
Lj2007:
Lj2005:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_COMPAREVALUE$EXTENDED$EXTENDED$EXTENDED$$TVALUERELATIONSHIP
_MATH_COMPAREVALUE$EXTENDED$EXTENDED$EXTENDED$$TVALUERELATIONSHIP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	$1,-1(%ebp)
	fldt	20(%ebp)
	fldt	32(%ebp)
	fsubp	%st,%st(1)
	fabs
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jae	Lj2014
	jmp	Lj2015
Lj2014:
	movb	$0,-1(%ebp)
	jmp	Lj2018
Lj2015:
	fldt	20(%ebp)
	fldt	32(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj2019
	jmp	Lj2020
Lj2019:
	movb	$-1,-1(%ebp)
Lj2020:
Lj2018:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MATH_ROUNDTO$DOUBLE$TROUNDTORANGE$$DOUBLE
_MATH_ROUNDTO$DOUBLE$TROUNDTORANGE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	call	Lj2024
Lj2024:
	popl	%ebx
	movb	%al,-4(%ebp)
	movl	L_$MATH$_Ld19$non_lazy_ptr-Lj2024(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$MATH$_Ld19$non_lazy_ptr-Lj2024(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_$MATH$_Ld19$non_lazy_ptr-Lj2024(%ebx),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%esp)
	movsbl	-4(%ebp),%eax
	call	L_MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED$stub
	fstpl	-20(%ebp)
	fldl	-20(%ebp)
	fldl	8(%ebp)
	fdivp	%st,%st(1)
	fistpq	-28(%ebp)
	fwait
	fildq	-28(%ebp)
	fldl	-20(%ebp)
	fmulp	%st,%st(1)
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_ROUNDTO$EXTENDED$TROUNDTORANGE$$EXTENDED
_MATH_ROUNDTO$EXTENDED$TROUNDTORANGE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-52(%ebp)
	call	Lj2034
Lj2034:
	popl	%ebx
	movb	%al,-4(%ebp)
	movl	L_$MATH$_Ld19$non_lazy_ptr-Lj2034(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$MATH$_Ld19$non_lazy_ptr-Lj2034(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_$MATH$_Ld19$non_lazy_ptr-Lj2034(%ebx),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%esp)
	movsbl	-4(%ebp),%eax
	call	L_MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED$stub
	fstpt	-40(%ebp)
	fldt	-40(%ebp)
	fldt	8(%ebp)
	fdivp	%st,%st(1)
	fistpq	-48(%ebp)
	fwait
	fildq	-48(%ebp)
	fldt	-40(%ebp)
	fmulp	%st,%st(1)
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_ROUNDTO$SINGLE$TROUNDTORANGE$$SINGLE
_MATH_ROUNDTO$SINGLE$TROUNDTORANGE$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj2044
Lj2044:
	popl	%ebx
	movb	%al,-4(%ebp)
	movl	L_$MATH$_Ld19$non_lazy_ptr-Lj2044(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$MATH$_Ld19$non_lazy_ptr-Lj2044(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_$MATH$_Ld19$non_lazy_ptr-Lj2044(%ebx),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%esp)
	movsbl	-4(%ebp),%eax
	call	L_MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED$stub
	fstps	-12(%ebp)
	flds	-12(%ebp)
	flds	8(%ebp)
	fdivp	%st,%st(1)
	fistpq	-20(%ebp)
	fwait
	fildq	-20(%ebp)
	flds	-12(%ebp)
	fmulp	%st,%st(1)
	fstps	-8(%ebp)
	flds	-8(%ebp)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_SIMPLEROUNDTO$SINGLE$TROUNDTORANGE$$SINGLE
_MATH_SIMPLEROUNDTO$SINGLE$TROUNDTORANGE$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj2054
Lj2054:
	popl	%ebx
	movb	%al,-4(%ebp)
	movl	L_$MATH$_Ld19$non_lazy_ptr-Lj2054(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$MATH$_Ld19$non_lazy_ptr-Lj2054(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_$MATH$_Ld19$non_lazy_ptr-Lj2054(%ebx),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%esp)
	movsbl	-4(%ebp),%eax
	negl	%eax
	call	L_MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED$stub
	fstps	-12(%ebp)
	fldz
	flds	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj2061
	jmp	Lj2062
Lj2061:
	fnstcw	-16(%ebp)
	fnstcw	-14(%ebp)
	orw	$3840,-16(%ebp)
	flds	-12(%ebp)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$MATH$_Ld20$non_lazy_ptr-Lj2054(%ebx),%eax
	flds	(%eax)
	fsubrp	%st,%st(1)
	fldcw	-16(%ebp)
	fistpq	-24(%ebp)
	fldcw	-14(%ebp)
	fwait
	fildq	-24(%ebp)
	flds	-12(%ebp)
	fdivrp	%st,%st(1)
	fstps	-8(%ebp)
	jmp	Lj2065
Lj2062:
	fnstcw	-16(%ebp)
	fnstcw	-14(%ebp)
	orw	$3840,-16(%ebp)
	flds	-12(%ebp)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$MATH$_Ld20$non_lazy_ptr-Lj2054(%ebx),%eax
	flds	(%eax)
	faddp	%st,%st(1)
	fldcw	-16(%ebp)
	fistpq	-24(%ebp)
	fldcw	-14(%ebp)
	fwait
	fildq	-24(%ebp)
	flds	-12(%ebp)
	fdivrp	%st,%st(1)
	fstps	-8(%ebp)
Lj2065:
	flds	-8(%ebp)
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_SIMPLEROUNDTO$DOUBLE$TROUNDTORANGE$$DOUBLE
_MATH_SIMPLEROUNDTO$DOUBLE$TROUNDTORANGE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-36(%ebp)
	call	Lj2069
Lj2069:
	popl	%ebx
	movb	%al,-4(%ebp)
	movl	L_$MATH$_Ld19$non_lazy_ptr-Lj2069(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$MATH$_Ld19$non_lazy_ptr-Lj2069(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_$MATH$_Ld19$non_lazy_ptr-Lj2069(%ebx),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%esp)
	movsbl	-4(%ebp),%eax
	negl	%eax
	call	L_MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED$stub
	fstpl	-20(%ebp)
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj2076
	jmp	Lj2077
Lj2076:
	fnstcw	-24(%ebp)
	fnstcw	-22(%ebp)
	orw	$3840,-24(%ebp)
	fldl	-20(%ebp)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$MATH$_Ld21$non_lazy_ptr-Lj2069(%ebx),%eax
	fldl	(%eax)
	fsubrp	%st,%st(1)
	fldcw	-24(%ebp)
	fistpq	-32(%ebp)
	fldcw	-22(%ebp)
	fwait
	fildq	-32(%ebp)
	fldl	-20(%ebp)
	fdivrp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj2080
Lj2077:
	fnstcw	-24(%ebp)
	fnstcw	-22(%ebp)
	orw	$3840,-24(%ebp)
	fldl	-20(%ebp)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$MATH$_Ld21$non_lazy_ptr-Lj2069(%ebx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	fldcw	-24(%ebp)
	fistpq	-32(%ebp)
	fldcw	-22(%ebp)
	fwait
	fildq	-32(%ebp)
	fldl	-20(%ebp)
	fdivrp	%st,%st(1)
	fstpl	-12(%ebp)
Lj2080:
	fldl	-12(%ebp)
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_SIMPLEROUNDTO$EXTENDED$TROUNDTORANGE$$EXTENDED
_MATH_SIMPLEROUNDTO$EXTENDED$TROUNDTORANGE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-56(%ebp)
	call	Lj2084
Lj2084:
	popl	%ebx
	movb	%al,-4(%ebp)
	movl	L_$MATH$_Ld19$non_lazy_ptr-Lj2084(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$MATH$_Ld19$non_lazy_ptr-Lj2084(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_$MATH$_Ld19$non_lazy_ptr-Lj2084(%ebx),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%esp)
	movsbl	-4(%ebp),%eax
	negl	%eax
	call	L_MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED$stub
	fstpt	-40(%ebp)
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj2091
	jmp	Lj2092
Lj2091:
	fnstcw	-44(%ebp)
	fnstcw	-42(%ebp)
	orw	$3840,-44(%ebp)
	fldt	-40(%ebp)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$MATH$_Ld6$non_lazy_ptr-Lj2084(%ebx),%eax
	fldt	(%eax)
	fsubrp	%st,%st(1)
	fldcw	-44(%ebp)
	fistpq	-52(%ebp)
	fldcw	-42(%ebp)
	fwait
	fildq	-52(%ebp)
	fldt	-40(%ebp)
	fdivrp	%st,%st(1)
	fstpt	-24(%ebp)
	jmp	Lj2095
Lj2092:
	fnstcw	-44(%ebp)
	fnstcw	-42(%ebp)
	orw	$3840,-44(%ebp)
	fldt	-40(%ebp)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$MATH$_Ld6$non_lazy_ptr-Lj2084(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
	fldcw	-44(%ebp)
	fistpq	-52(%ebp)
	fldcw	-42(%ebp)
	fwait
	fildq	-52(%ebp)
	fldt	-40(%ebp)
	fdivrp	%st,%st(1)
	fstpt	-24(%ebp)
Lj2095:
	fldt	-24(%ebp)
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_RANDOMFROM$array_of_DOUBLE$$DOUBLE
_MATH_RANDOMFROM$array_of_DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	incl	%eax
	call	L_SYSTEM_RANDOM$LONGINT$$LONGINT$stub
	movl	(%ebx,%eax,8),%edx
	movl	%edx,-16(%ebp)
	movl	4(%ebx,%eax,8),%eax
	movl	%eax,-12(%ebp)
	fldl	-16(%ebp)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_RANDOMFROM$array_of_LONGINT$$LONGINT
_MATH_RANDOMFROM$array_of_LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	incl	%eax
	call	L_SYSTEM_RANDOM$LONGINT$$LONGINT$stub
	movl	(%ebx,%eax,4),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATH_RANDOMFROM$array_of_INT64$$INT64
_MATH_RANDOMFROM$array_of_INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	incl	%eax
	call	L_SYSTEM_RANDOM$LONGINT$$LONGINT$stub
	movl	(%ebx,%eax,8),%edx
	movl	%edx,-16(%ebp)
	movl	4(%ebx,%eax,8),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$MATH$_Ld22
_$MATH$_Ld22:
	.byte	16
	.ascii	"EInvalidArgument"

.const_data
	.align 2
.globl	_VMT_MATH_EINVALIDARGUMENT
_VMT_MATH_EINVALIDARGUMENT:
	.long	12,-12
	.long	_VMT_SYSUTILS_EMATHERROR
	.long	_$MATH$_Ld22
	.long	0,0
	.long	_$MATH$_Ld23
	.long	_RTTI_MATH_EINVALIDARGUMENT
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

.data
	.align 2
.globl	_THREADVARLIST_MATH
_THREADVARLIST_MATH:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$MATH$_Ld26
_$MATH$_Ld26:
	.short	0,1
	.long	0,-1,4
.reference _$MATH$_Ld25
.globl	_$MATH$_Ld25
_$MATH$_Ld25:
.reference _$MATH$_Ld26
	.ascii	"MATH\000"

.const_data
	.align 2
.globl	_$MATH$_Ld28
_$MATH$_Ld28:
	.short	0,1
	.long	0,-1,15
.reference _$MATH$_Ld27
.globl	_$MATH$_Ld27
_$MATH$_Ld27:
.reference _$MATH$_Ld28
	.ascii	"Math Error : %s\000"
	.align 2
.globl	_$MATH$_Ld30
_$MATH$_Ld30:
	.short	0,1
	.long	0,-1,15
.reference _$MATH$_Ld29
.globl	_$MATH$_Ld29
_$MATH$_Ld29:
.reference _$MATH$_Ld30
	.ascii	"math.smatherror\000"

.const_data
	.align 2
.globl	_$MATH$_Ld32
_$MATH$_Ld32:
	.short	0,1
	.long	0,-1,16
.reference _$MATH$_Ld31
.globl	_$MATH$_Ld31
_$MATH$_Ld31:
.reference _$MATH$_Ld32
	.ascii	"Invalid argument\000"
	.align 2
.globl	_$MATH$_Ld34
_$MATH$_Ld34:
	.short	0,1
	.long	0,-1,21
.reference _$MATH$_Ld33
.globl	_$MATH$_Ld33
_$MATH$_Ld33:
.reference _$MATH$_Ld34
	.ascii	"math.sinvalidargument\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 3
.globl	_$MATH$_Ld1
_$MATH$_Ld1:
	.byte	0,0,0,0,0,0,0,180,6,64

.const
	.align 3
.globl	_$MATH$_Ld2
_$MATH$_Ld2:
	.byte	0,0,0,0,0,0,0,200,6,64

.const
	.align 3
.globl	_$MATH$_Ld3
_$MATH$_Ld3:
	.byte	57,142,227,56,142,227,56,142,255,63

.const
	.align 3
.globl	_$MATH$_Ld4
_$MATH$_Ld4:
	.byte	102,102,102,102,102,102,102,230,254,63

.const
	.align 3
.globl	_$MATH$_Ld5
_$MATH$_Ld5:
	.byte	0,0,0,0,0,0,0,128,0,64

.const
	.align 3
.globl	_$MATH$_Ld6
_$MATH$_Ld6:
	.byte	0,0,0,0,0,0,0,128,254,63

.const
	.align 3
.globl	_$MATH$_Ld7
_$MATH$_Ld7:
	.byte	181,148,162,38,171,199,113,177,11,64

.const
	.align 3
.globl	_$MATH$_Ld8
_$MATH$_Ld8:
	.byte	181,148,162,38,171,199,113,177,11,192

.const
	.align 3
.globl	_$MATH$_Ld9
_$MATH$_Ld9:
	.byte	0,0,0,0,0,0,0,128,255,191

.const
	.align 3
.globl	_$MATH$_Ld10
_$MATH$_Ld10:
	.byte	0,0,0,0,0,0,0,128,0,192

.const
	.align 3
.globl	_$MATH$_Ld11
_$MATH$_Ld11:
	.byte	23,172,168,170,221,141,93,147,0,64

.const
	.align 3
.globl	_$MATH$_Ld12
_$MATH$_Ld12:
	.byte	172,121,207,209,247,23,114,177,254,63

.const
	.align 3
.globl	_$MATH$_Ld13
_$MATH$_Ld13:
	.byte	0,0,0,0,254,255,255,255,29,64

.const
	.align 2
.globl	_$MATH$_Ld14
_$MATH$_Ld14:
	.byte	23,183,209,56

.const
	.align 2
.globl	_$MATH$_Ld15
_$MATH$_Ld15:
	.byte	17,234,45,129,153,151,113,61

.const
	.align 3
.globl	_$MATH$_Ld16
_$MATH$_Ld16:
	.byte	204,136,80,111,9,204,188,140,215,63

.const
	.align 3
.globl	_$MATH$_Ld17
_$MATH$_Ld17:
	.byte	91,225,77,196,190,148,149,230,201,63

.const
	.align 3
.globl	_$MATH$_Ld18
_$MATH$_Ld18:
	.byte	44,101,25,226,88,23,183,209,241,63

.const
	.align 3
.globl	_$MATH$_Ld19
_$MATH$_Ld19:
	.byte	0,0,0,0,0,0,0,160,2,64

.const
	.align 2
.globl	_$MATH$_Ld20
_$MATH$_Ld20:
	.byte	0,0,0,63

.const
	.align 2
.globl	_$MATH$_Ld21
_$MATH$_Ld21:
	.byte	0,0,0,0,0,0,224,63
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GET8087CW$$WORD$stub:
.indirect_symbol _SYSTEM_GET8087CW$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_SET8087CW$WORD$stub:
.indirect_symbol _SYSTEM_SET8087CW$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETSSECSR$$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETSSECSR$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_SETSSECSR$LONGWORD$stub:
.indirect_symbol _SYSTEM_SETSSECSR$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
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

L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_COTAN$EXTENDED$$EXTENDED$stub:
.indirect_symbol _MATH_COTAN$EXTENDED$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_INVALIDARGUMENT$stub:
.indirect_symbol _MATH_INVALIDARGUMENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_ARCSIN$EXTENDED$$EXTENDED$stub:
.indirect_symbol _MATH_ARCSIN$EXTENDED$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_exp_real$stub:
.indirect_symbol fpc_exp_real
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_ARCOSH$EXTENDED$$EXTENDED$stub:
.indirect_symbol _MATH_ARCOSH$EXTENDED$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_ARSINH$EXTENDED$$EXTENDED$stub:
.indirect_symbol _MATH_ARSINH$EXTENDED$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_ARTANH$EXTENDED$$EXTENDED$stub:
.indirect_symbol _MATH_ARTANH$EXTENDED$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_frac_real$stub:
.indirect_symbol fpc_frac_real
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_POWER$EXTENDED$EXTENDED$$EXTENDED$stub:
.indirect_symbol _MATH_POWER$EXTENDED$EXTENDED$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_MEAN$PSINGLE$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_MEAN$PSINGLE$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_SUM$PSINGLE$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_SUM$PSINGLE$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_MEAN$PDOUBLE$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_MEAN$PDOUBLE$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_SUM$PDOUBLE$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_SUM$PDOUBLE$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_MEAN$PEXTENDED$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_MEAN$PEXTENDED$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_SUM$PEXTENDED$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_SUM$PEXTENDED$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_SUMINT$PINT64$LONGINT$$INT64$stub:
.indirect_symbol _MATH_SUMINT$PINT64$LONGINT$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_SUMOFSQUARES$PSINGLE$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_SUMOFSQUARES$PSINGLE$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_SUMSANDSQUARES$PSINGLE$LONGINT$EXTENDED$EXTENDED$stub:
.indirect_symbol _MATH_SUMSANDSQUARES$PSINGLE$LONGINT$EXTENDED$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_SUMOFSQUARES$PDOUBLE$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_SUMOFSQUARES$PDOUBLE$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_SUMSANDSQUARES$PDOUBLE$LONGINT$EXTENDED$EXTENDED$stub:
.indirect_symbol _MATH_SUMSANDSQUARES$PDOUBLE$LONGINT$EXTENDED$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_SUMOFSQUARES$PEXTENDED$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_SUMOFSQUARES$PEXTENDED$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_SUMSANDSQUARES$PEXTENDED$LONGINT$EXTENDED$EXTENDED$stub:
.indirect_symbol _MATH_SUMSANDSQUARES$PEXTENDED$LONGINT$EXTENDED$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_RANDOM$$EXTENDED$stub:
.indirect_symbol _SYSTEM_RANDOM$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_RANDOM$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSTEM_RANDOM$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_MIN$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _MATH_MIN$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_RANDOM$INT64$$INT64$stub:
.indirect_symbol _SYSTEM_RANDOM$INT64$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_MIN$INT64$INT64$$INT64$stub:
.indirect_symbol _MATH_MIN$INT64$INT64$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_STDDEV$PSINGLE$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_STDDEV$PSINGLE$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_VARIANCE$PSINGLE$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_VARIANCE$PSINGLE$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_MEANANDSTDDEV$PSINGLE$LONGINT$EXTENDED$EXTENDED$stub:
.indirect_symbol _MATH_MEANANDSTDDEV$PSINGLE$LONGINT$EXTENDED$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_TOTALVARIANCE$PSINGLE$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_TOTALVARIANCE$PSINGLE$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_POPNVARIANCE$PSINGLE$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_POPNVARIANCE$PSINGLE$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_MOMENTSKEWKURTOSIS$crcAB01C5D7$stub:
.indirect_symbol _MATH_MOMENTSKEWKURTOSIS$crcAB01C5D7
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_NORM$PSINGLE$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_NORM$PSINGLE$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_STDDEV$PDOUBLE$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_STDDEV$PDOUBLE$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_VARIANCE$PDOUBLE$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_VARIANCE$PDOUBLE$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_MEANANDSTDDEV$PDOUBLE$LONGINT$EXTENDED$EXTENDED$stub:
.indirect_symbol _MATH_MEANANDSTDDEV$PDOUBLE$LONGINT$EXTENDED$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_TOTALVARIANCE$PDOUBLE$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_TOTALVARIANCE$PDOUBLE$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_POPNVARIANCE$PDOUBLE$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_POPNVARIANCE$PDOUBLE$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_MOMENTSKEWKURTOSIS$crcA4CE7FA7$stub:
.indirect_symbol _MATH_MOMENTSKEWKURTOSIS$crcA4CE7FA7
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_NORM$PDOUBLE$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_NORM$PDOUBLE$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_STDDEV$PEXTENDED$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_STDDEV$PEXTENDED$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_VARIANCE$PEXTENDED$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_VARIANCE$PEXTENDED$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_MEANANDSTDDEV$PEXTENDED$LONGINT$EXTENDED$EXTENDED$stub:
.indirect_symbol _MATH_MEANANDSTDDEV$PEXTENDED$LONGINT$EXTENDED$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_TOTALVARIANCE$PEXTENDED$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_TOTALVARIANCE$PEXTENDED$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_POPNVARIANCE$PEXTENDED$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_POPNVARIANCE$PEXTENDED$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_MOMENTSKEWKURTOSIS$crc321E69D1$stub:
.indirect_symbol _MATH_MOMENTSKEWKURTOSIS$crc321E69D1
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_NORM$PEXTENDED$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_NORM$PEXTENDED$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_MINVALUE$PINTEGER$LONGINT$$LONGINT$stub:
.indirect_symbol _MATH_MINVALUE$PINTEGER$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_MAXVALUE$PINTEGER$LONGINT$$LONGINT$stub:
.indirect_symbol _MATH_MAXVALUE$PINTEGER$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_MINVALUE$PSINGLE$LONGINT$$SINGLE$stub:
.indirect_symbol _MATH_MINVALUE$PSINGLE$LONGINT$$SINGLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_MAXVALUE$PSINGLE$LONGINT$$SINGLE$stub:
.indirect_symbol _MATH_MAXVALUE$PSINGLE$LONGINT$$SINGLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_MINVALUE$PDOUBLE$LONGINT$$DOUBLE$stub:
.indirect_symbol _MATH_MINVALUE$PDOUBLE$LONGINT$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_MAXVALUE$PDOUBLE$LONGINT$$DOUBLE$stub:
.indirect_symbol _MATH_MAXVALUE$PDOUBLE$LONGINT$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_MINVALUE$PEXTENDED$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_MINVALUE$PEXTENDED$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_MAXVALUE$PEXTENDED$LONGINT$$EXTENDED$stub:
.indirect_symbol _MATH_MAXVALUE$PEXTENDED$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_ISZERO$SINGLE$SINGLE$$BOOLEAN$stub:
.indirect_symbol _MATH_ISZERO$SINGLE$SINGLE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_ISZERO$EXTENDED$EXTENDED$$BOOLEAN$stub:
.indirect_symbol _MATH_ISZERO$EXTENDED$EXTENDED$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_SAMEVALUE$EXTENDED$EXTENDED$EXTENDED$$BOOLEAN$stub:
.indirect_symbol _MATH_SAMEVALUE$EXTENDED$EXTENDED$EXTENDED$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN$stub:
.indirect_symbol _MATH_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_SAMEVALUE$SINGLE$SINGLE$SINGLE$$BOOLEAN$stub:
.indirect_symbol _MATH_SAMEVALUE$SINGLE$SINGLE$SINGLE$$BOOLEAN
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
.globl	_INIT_MATH_PFLOAT
_INIT_MATH_PFLOAT:
	.byte	0
	.ascii	"\006PFloat"

.const_data
	.align 2
.globl	_RTTI_MATH_PFLOAT
_RTTI_MATH_PFLOAT:
	.byte	0
	.ascii	"\006PFloat"

.const_data
	.align 2
.globl	_INIT_MATH_TPAYMENTTIME
_INIT_MATH_TPAYMENTTIME:
	.byte	3,12
	.ascii	"tpaymenttime"
	.byte	5
	.long	0,1,0
	.byte	13
	.ascii	"ptendofperiod"
	.byte	15
	.ascii	"ptstartofperiod"
	.byte	4
	.ascii	"math"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_MATH_TPAYMENTTIME
_RTTI_MATH_TPAYMENTTIME:
	.byte	3,12
	.ascii	"tpaymenttime"
	.byte	5
	.long	0,1,0
	.byte	13
	.ascii	"ptendofperiod"
	.byte	15
	.ascii	"ptstartofperiod"
	.byte	4
	.ascii	"math"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_MATH_TPAYMENTTIME_s2o
_RTTI_MATH_TPAYMENTTIME_s2o:
	.long	2,0
	.long	_RTTI_MATH_TPAYMENTTIME+27
	.long	1
	.long	_RTTI_MATH_TPAYMENTTIME+41

.const_data
	.align 2
.globl	_RTTI_MATH_TPAYMENTTIME_o2s
_RTTI_MATH_TPAYMENTTIME_o2s:
	.long	0
	.long	_RTTI_MATH_TPAYMENTTIME+27
	.long	_RTTI_MATH_TPAYMENTTIME+41

.const_data
	.align 2
.globl	_$MATH$_Ld23
_$MATH$_Ld23:
	.short	0
	.long	_$MATH$_Ld24
	.align 2
.globl	_$MATH$_Ld24
_$MATH$_Ld24:
	.short	0

.const_data
	.align 2
.globl	_INIT_MATH_EINVALIDARGUMENT
_INIT_MATH_EINVALIDARGUMENT:
	.byte	15,16
	.ascii	"EInvalidArgument"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_MATH_EINVALIDARGUMENT
_RTTI_MATH_EINVALIDARGUMENT:
	.byte	15,16
	.ascii	"EInvalidArgument"
	.long	_VMT_MATH_EINVALIDARGUMENT
	.long	_RTTI_SYSUTILS_EMATHERROR
	.short	0
	.byte	4
	.ascii	"math"
	.short	0

.const_data
	.align 2
.globl	_INIT_MATH_TVALUERELATIONSHIP
_INIT_MATH_TVALUERELATIONSHIP:
	.byte	1,18
	.ascii	"TValueRelationship"
	.byte	0
	.long	-1,1

.const_data
	.align 2
.globl	_RTTI_MATH_TVALUERELATIONSHIP
_RTTI_MATH_TVALUERELATIONSHIP:
	.byte	1,18
	.ascii	"TValueRelationship"
	.byte	0
	.long	-1,1

.const_data
	.align 2
.globl	_INIT_MATH_TVALUESIGN
_INIT_MATH_TVALUESIGN:
	.byte	1,10
	.ascii	"TValueSign"
	.byte	0
	.long	-1,1

.const_data
	.align 2
.globl	_RTTI_MATH_TVALUESIGN
_RTTI_MATH_TVALUESIGN:
	.byte	1,10
	.ascii	"TValueSign"
	.byte	0
	.long	-1,1

.const_data
	.align 2
.globl	_INIT_MATH_TROUNDTORANGE
_INIT_MATH_TROUNDTORANGE:
	.byte	1,13
	.ascii	"TRoundToRange"
	.byte	0
	.long	-37,37

.const_data
	.align 2
.globl	_RTTI_MATH_TROUNDTORANGE
_RTTI_MATH_TROUNDTORANGE:
	.byte	1,13
	.ascii	"TRoundToRange"
	.byte	0
	.long	-37,37

.const_data
	.align 2
.globl	_INIT_MATH_TFPUROUNDINGMODE
_INIT_MATH_TFPUROUNDINGMODE:
	.byte	3,16
	.ascii	"TFPURoundingMode"
	.byte	5
	.long	0,3,0
	.byte	9
	.ascii	"rmNearest"
	.byte	6
	.ascii	"rmDown"
	.byte	4
	.ascii	"rmUp"
	.byte	10
	.ascii	"rmTruncate"
	.byte	4
	.ascii	"math"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_MATH_TFPUROUNDINGMODE
_RTTI_MATH_TFPUROUNDINGMODE:
	.byte	3,16
	.ascii	"TFPURoundingMode"
	.byte	5
	.long	0,3,0
	.byte	9
	.ascii	"rmNearest"
	.byte	6
	.ascii	"rmDown"
	.byte	4
	.ascii	"rmUp"
	.byte	10
	.ascii	"rmTruncate"
	.byte	4
	.ascii	"math"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_MATH_TFPUROUNDINGMODE_s2o
_RTTI_MATH_TFPUROUNDINGMODE_s2o:
	.long	4,1
	.long	_RTTI_MATH_TFPUROUNDINGMODE+41
	.long	0
	.long	_RTTI_MATH_TFPUROUNDINGMODE+31
	.long	3
	.long	_RTTI_MATH_TFPUROUNDINGMODE+53
	.long	2
	.long	_RTTI_MATH_TFPUROUNDINGMODE+48

.const_data
	.align 2
.globl	_RTTI_MATH_TFPUROUNDINGMODE_o2s
_RTTI_MATH_TFPUROUNDINGMODE_o2s:
	.long	0
	.long	_RTTI_MATH_TFPUROUNDINGMODE+31
	.long	_RTTI_MATH_TFPUROUNDINGMODE+41
	.long	_RTTI_MATH_TFPUROUNDINGMODE+48
	.long	_RTTI_MATH_TFPUROUNDINGMODE+53

.const_data
	.align 2
.globl	_INIT_MATH_TFPUPRECISIONMODE
_INIT_MATH_TFPUPRECISIONMODE:
	.byte	3,17
	.ascii	"TFPUPrecisionMode"
	.byte	5
	.long	0,3,0
	.byte	8
	.ascii	"pmSingle"
	.byte	10
	.ascii	"pmReserved"
	.byte	8
	.ascii	"pmDouble"
	.byte	10
	.ascii	"pmExtended"
	.byte	4
	.ascii	"math"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_MATH_TFPUPRECISIONMODE
_RTTI_MATH_TFPUPRECISIONMODE:
	.byte	3,17
	.ascii	"TFPUPrecisionMode"
	.byte	5
	.long	0,3,0
	.byte	8
	.ascii	"pmSingle"
	.byte	10
	.ascii	"pmReserved"
	.byte	8
	.ascii	"pmDouble"
	.byte	10
	.ascii	"pmExtended"
	.byte	4
	.ascii	"math"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_MATH_TFPUPRECISIONMODE_s2o
_RTTI_MATH_TFPUPRECISIONMODE_s2o:
	.long	4,2
	.long	_RTTI_MATH_TFPUPRECISIONMODE+52
	.long	3
	.long	_RTTI_MATH_TFPUPRECISIONMODE+61
	.long	1
	.long	_RTTI_MATH_TFPUPRECISIONMODE+41
	.long	0
	.long	_RTTI_MATH_TFPUPRECISIONMODE+32

.const_data
	.align 2
.globl	_RTTI_MATH_TFPUPRECISIONMODE_o2s
_RTTI_MATH_TFPUPRECISIONMODE_o2s:
	.long	0
	.long	_RTTI_MATH_TFPUPRECISIONMODE+32
	.long	_RTTI_MATH_TFPUPRECISIONMODE+41
	.long	_RTTI_MATH_TFPUPRECISIONMODE+52
	.long	_RTTI_MATH_TFPUPRECISIONMODE+61

.const_data
	.align 2
.globl	_INIT_MATH_TFPUEXCEPTION
_INIT_MATH_TFPUEXCEPTION:
	.byte	3,13
	.ascii	"TFPUException"
	.byte	5
	.long	0,5,0
	.byte	11
	.ascii	"exInvalidOp"
	.byte	14
	.ascii	"exDenormalized"
	.byte	12
	.ascii	"exZeroDivide"
	.byte	10
	.ascii	"exOverflow"
	.byte	11
	.ascii	"exUnderflow"
	.byte	11
	.ascii	"exPrecision"
	.byte	4
	.ascii	"math"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_MATH_TFPUEXCEPTION
_RTTI_MATH_TFPUEXCEPTION:
	.byte	3,13
	.ascii	"TFPUException"
	.byte	5
	.long	0,5,0
	.byte	11
	.ascii	"exInvalidOp"
	.byte	14
	.ascii	"exDenormalized"
	.byte	12
	.ascii	"exZeroDivide"
	.byte	10
	.ascii	"exOverflow"
	.byte	11
	.ascii	"exUnderflow"
	.byte	11
	.ascii	"exPrecision"
	.byte	4
	.ascii	"math"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_MATH_TFPUEXCEPTION_s2o
_RTTI_MATH_TFPUEXCEPTION_s2o:
	.long	6,1
	.long	_RTTI_MATH_TFPUEXCEPTION+40
	.long	0
	.long	_RTTI_MATH_TFPUEXCEPTION+28
	.long	3
	.long	_RTTI_MATH_TFPUEXCEPTION+68
	.long	5
	.long	_RTTI_MATH_TFPUEXCEPTION+91
	.long	4
	.long	_RTTI_MATH_TFPUEXCEPTION+79
	.long	2
	.long	_RTTI_MATH_TFPUEXCEPTION+55

.const_data
	.align 2
.globl	_RTTI_MATH_TFPUEXCEPTION_o2s
_RTTI_MATH_TFPUEXCEPTION_o2s:
	.long	0
	.long	_RTTI_MATH_TFPUEXCEPTION+28
	.long	_RTTI_MATH_TFPUEXCEPTION+40
	.long	_RTTI_MATH_TFPUEXCEPTION+55
	.long	_RTTI_MATH_TFPUEXCEPTION+68
	.long	_RTTI_MATH_TFPUEXCEPTION+79
	.long	_RTTI_MATH_TFPUEXCEPTION+91

.const_data
	.align 2
.globl	_INIT_MATH_TFPUEXCEPTIONMASK
_INIT_MATH_TFPUEXCEPTIONMASK:
	.byte	5,17
	.ascii	"TFPUExceptionMask"
	.byte	5
	.long	_INIT_MATH_TFPUEXCEPTION

.const_data
	.align 2
.globl	_RTTI_MATH_TFPUEXCEPTIONMASK
_RTTI_MATH_TFPUEXCEPTIONMASK:
	.byte	5,17
	.ascii	"TFPUExceptionMask"
	.byte	5
	.long	_RTTI_MATH_TFPUEXCEPTION
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
L_TC_SYSTEM_HAS_SSE_SUPPORT$non_lazy_ptr:
.indirect_symbol _TC_SYSTEM_HAS_SSE_SUPPORT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_THREADVAR_RELOCATE$non_lazy_ptr:
.indirect_symbol FPC_THREADVAR_RELOCATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_SOFTFLOAT_EXCEPTION_MASK$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_SOFTFLOAT_EXCEPTION_MASK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_MATH_SMATHERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_MATH_SMATHERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EMATHERROR$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EMATHERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_MATH_SINVALIDARGUMENT$non_lazy_ptr:
.indirect_symbol _RESSTR_MATH_SINVALIDARGUMENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_MATH_EINVALIDARGUMENT$non_lazy_ptr:
.indirect_symbol _VMT_MATH_EINVALIDARGUMENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld1$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld2$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld3$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld4$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld5$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld6$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld7$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld8$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld9$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld10$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld10
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld11$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld12$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld12
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld13$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld14$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld14
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld15$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld16$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld16
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld17$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld18$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld18
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld19$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld20$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld20
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$MATH$_Ld21$non_lazy_ptr:
.indirect_symbol _$MATH$_Ld21
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_MATH_START
_RESSTR_MATH_START:
	.long	_$MATH$_Ld25
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_MATH_SMATHERROR
_RESSTR_MATH_SMATHERROR:
	.long	_$MATH$_Ld29
	.long	_$MATH$_Ld27
	.long	_$MATH$_Ld27
	.long	216488147

.data
	.align 2
.globl	_RESSTR_MATH_SINVALIDARGUMENT
_RESSTR_MATH_SINVALIDARGUMENT:
	.long	_$MATH$_Ld33
	.long	_$MATH$_Ld31
	.long	_$MATH$_Ld31
	.long	12736788

.data
	.align 2
.globl	_RESSTR_MATH_END
_RESSTR_MATH_END:
	.long	_RESSTR_MATH_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

