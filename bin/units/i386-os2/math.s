	.file "math.pp"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
.globl	MATH_ARCTAN2$EXTENDED$EXTENDED$$EXTENDED
MATH_ARCTAN2$EXTENDED$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldt	20(%ebp)
	fldt	8(%ebp)
	fpatan
	fwait
	leave
	ret	$24

.text
	.balign 4,0x90
.globl	MATH_SINCOS$EXTENDED$EXTENDED$EXTENDED
MATH_SINCOS$EXTENDED$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	fldt	8(%ebp)
	fsincos
	fstpt	(%edx)
	fstpt	(%eax)
	fwait
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_TAN$EXTENDED$$EXTENDED
MATH_TAN$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldt	8(%ebp)
	fptan
	fstp	%st
	fwait
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_COTAN$EXTENDED$$EXTENDED
MATH_COTAN$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldt	8(%ebp)
	fptan
	fdivp	%st,%st(1)
	fwait
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_DIVMOD$LONGINT$WORD$WORD$WORD
MATH_DIVMOD$LONGINT$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	pushl	%edi
	movzwl	%dx,%edi
	cltd
	idivl	%edi
	movw	%ax,(%ecx)
	movl	8(%ebp),%ecx
	movw	%dx,(%ecx)
	popl	%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_DIVMOD$LONGINT$WORD$SMALLINT$SMALLINT
MATH_DIVMOD$LONGINT$WORD$SMALLINT$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	pushl	%edi
	movzwl	%dx,%edi
	cltd
	idivl	%edi
	movw	%ax,(%ecx)
	movl	8(%ebp),%ecx
	movw	%dx,(%ecx)
	popl	%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_DIVMOD$LONGWORD$LONGWORD$LONGWORD$LONGWORD
MATH_DIVMOD$LONGWORD$LONGWORD$LONGWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	pushl	%edi
	movl	%edx,%edi
	xorl	%edx,%edx
	divl	%edi
	movl	%eax,(%ecx)
	movl	8(%ebp),%ecx
	movl	%edx,(%ecx)
	popl	%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_DIVMOD$LONGINT$LONGINT$LONGINT$LONGINT
MATH_DIVMOD$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	pushl	%edi
	movl	%edx,%edi
	cltd
	idivl	%edi
	movl	%eax,(%ecx)
	movl	8(%ebp),%ecx
	movl	%edx,(%ecx)
	popl	%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_GETROUNDMODE$$TFPUROUNDINGMODE
MATH_GETROUNDMODE$$TFPUROUNDINGMODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	call	SYSTEM_GET8087CW$$WORD
	movzwl	%ax,%eax
	shrl	$10,%eax
	andl	$3,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_SETROUNDMODE$TFPUROUNDINGMODE$$TFPUROUNDINGMODE
MATH_SETROUNDMODE$TFPUROUNDINGMODE$$TFPUROUNDINGMODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$10,%esp
	movl	%eax,-4(%ebp)
	call	SYSTEM_GET8087CW$$WORD
	movw	%ax,-10(%ebp)
	movw	-10(%ebp),%ax
	andw	$62463,%ax
	movzwl	%ax,%eax
	movl	-4(%ebp),%edx
	shll	$10,%edx
	orl	%edx,%eax
	call	SYSTEM_SET8087CW$WORD
	cmpb	$0,TC_SYSTEM_HAS_SSE_SUPPORT
	jne	Lj29
	jmp	Lj30
Lj29:
	call	SYSTEM_GETSSECSR$$LONGWORD
	andl	$-24577,%eax
	movl	-4(%ebp),%edx
	shll	$13,%edx
	orl	%edx,%eax
	call	SYSTEM_SETSSECSR$LONGWORD
Lj30:
	movzwl	-10(%ebp),%eax
	shrl	$10,%eax
	andl	$3,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_GETPRECISIONMODE$$TFPUPRECISIONMODE
MATH_GETPRECISIONMODE$$TFPUPRECISIONMODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	call	SYSTEM_GET8087CW$$WORD
	movzwl	%ax,%eax
	shrl	$8,%eax
	andl	$3,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_SETPRECISIONMODE$TFPUPRECISIONMODE$$TFPUPRECISIONMODE
MATH_SETPRECISIONMODE$TFPUPRECISIONMODE$$TFPUPRECISIONMODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$10,%esp
	movl	%eax,-4(%ebp)
	call	SYSTEM_GET8087CW$$WORD
	movw	%ax,-10(%ebp)
	movw	-10(%ebp),%ax
	andw	$64767,%ax
	movzwl	%ax,%eax
	movl	-4(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	call	SYSTEM_SET8087CW$WORD
	movzwl	-10(%ebp),%eax
	shrl	$8,%eax
	andl	$3,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_GETEXCEPTIONMASK$$TFPUEXCEPTIONMASK
MATH_GETEXCEPTIONMASK$$TFPUEXCEPTIONMASK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	call	SYSTEM_GET8087CW$$WORD
	andw	$63,%ax
	movzwl	%ax,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_SETEXCEPTIONMASK$TFPUEXCEPTIONMASK$$TFPUEXCEPTIONMASK
MATH_SETEXCEPTIONMASK$TFPUEXCEPTIONMASK$$TFPUEXCEPTIONMASK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$10,%esp
	movl	%eax,-4(%ebp)
	call	SYSTEM_GET8087CW$$WORD
	movw	%ax,-10(%ebp)
	movw	-10(%ebp),%ax
	andw	$65472,%ax
	movzbw	-4(%ebp),%dx
	orw	%dx,%ax
	call	SYSTEM_SET8087CW$WORD
	cmpb	$0,TC_SYSTEM_HAS_SSE_SUPPORT
	jne	Lj57
	jmp	Lj58
Lj57:
	call	SYSTEM_GETSSECSR$$LONGWORD
	andl	$-8065,%eax
	movl	-4(%ebp),%edx
	shll	$7,%edx
	orl	%edx,%eax
	call	SYSTEM_SETSSECSR$LONGWORD
Lj58:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj63
	movl	U_SYSTEM_SOFTFLOAT_EXCEPTION_MASK,%eax
	call	*%edx
	jmp	Lj64
Lj63:
	movl	$U_SYSTEM_SOFTFLOAT_EXCEPTION_MASK+4,%eax
Lj64:
	movb	-4(%ebp),%dl
	movb	%dl,(%eax)
	movw	-10(%ebp),%ax
	andw	$63,%ax
	movzwl	%ax,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_CLEAREXCEPTIONS$BOOLEAN
MATH_CLEAREXCEPTIONS$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	cmpb	$0,%al
	je	Lj69
	fwait
Lj69:
	fnclex
	leave
	ret

.text
	.balign 4,0x90
MATH_DOMATHERROR$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	$4,-12(%ebp)
	leal	-12(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_MATH_SMATHERROR+4,%ecx
	movl	$VMT_SYSUTILS_EMATHERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La1:
	movl	%ebp,%ecx
	movl	$La1,%edx
	call	FPC_RAISEEXCEPTION
	leave
	ret

.text
	.balign 4,0x90
MATH_INVALIDARGUMENT:
	pushl	%ebp
	movl	%esp,%ebp
	movl	RESSTR_MATH_SINVALIDARGUMENT+4,%ecx
	movl	$VMT_MATH_EINVALIDARGUMENT,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La2:
	movl	%ebp,%ecx
	movl	$La2,%edx
	call	FPC_RAISEEXCEPTION
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_SIGN$LONGINT$$TVALUESIGN
MATH_SIGN$LONGINT$$TVALUESIGN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
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
	.balign 4,0x90
.globl	MATH_SIGN$INT64$$TVALUESIGN
MATH_SIGN$INT64$$TVALUESIGN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj106
	jg	Lj107
	cmpl	$0,%edx
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
	ret	$8

.text
	.balign 4,0x90
.globl	MATH_SIGN$SINGLE$$TVALUESIGN
MATH_SIGN$SINGLE$$TVALUESIGN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
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
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_SIGN$DOUBLE$$TVALUESIGN
MATH_SIGN$DOUBLE$$TVALUESIGN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
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
	ret	$8

.text
	.balign 4,0x90
.globl	MATH_SIGN$EXTENDED$$TVALUESIGN
MATH_SIGN$EXTENDED$$TVALUESIGN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
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
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_DEGTORAD$EXTENDED$$EXTENDED
MATH_DEGTORAD$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldpi
	fldt	_$MATH$_Ld1
	fdivrp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_RADTODEG$EXTENDED$$EXTENDED
MATH_RADTODEG$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldpi
	fldt	_$MATH$_Ld1
	fdivp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_GRADTORAD$EXTENDED$$EXTENDED
MATH_GRADTORAD$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldpi
	fldt	_$MATH$_Ld2
	fdivrp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_RADTOGRAD$EXTENDED$$EXTENDED
MATH_RADTOGRAD$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldpi
	fldt	_$MATH$_Ld2
	fdivp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_DEGTOGRAD$EXTENDED$$EXTENDED
MATH_DEGTOGRAD$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldt	_$MATH$_Ld3
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_GRADTODEG$EXTENDED$$EXTENDED
MATH_GRADTODEG$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldt	_$MATH$_Ld4
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_CYCLETORAD$EXTENDED$$EXTENDED
MATH_CYCLETORAD$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldpi
	fldt	_$MATH$_Ld5
	fmulp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_RADTOCYCLE$EXTENDED$$EXTENDED
MATH_RADTOCYCLE$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldpi
	fldt	_$MATH$_Ld5
	fmulp	%st,%st(1)
	fld1
	fdivp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_COT$EXTENDED$$EXTENDED
MATH_COT$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	MATH_COTAN$EXTENDED$$EXTENDED
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_SECANT$EXTENDED$$EXTENDED
MATH_SECANT$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldt	8(%ebp)
	fcos
	fld1
	fdivp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_COSECANT$EXTENDED$$EXTENDED
MATH_COSECANT$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldt	8(%ebp)
	fsin
	fld1
	fdivp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_SEC$EXTENDED$$EXTENDED
MATH_SEC$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldt	8(%ebp)
	fcos
	fld1
	fdivp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_CSC$EXTENDED$$EXTENDED
MATH_CSC$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldt	8(%ebp)
	fsin
	fld1
	fdivp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_ARCSIN$EXTENDED$$EXTENDED
MATH_ARCSIN$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	fldt	8(%ebp)
	fabs
	fld1
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj216
	jmp	Lj217
Lj216:
	call	MATH_INVALIDARGUMENT
	jmp	Lj218
Lj217:
	fldt	8(%ebp)
	fabs
	fldt	_$MATH$_Ld6
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
	fstpt	-12(%ebp)
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
	fldt	_$MATH$_Ld6
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
	movl	%edx,-16(%ebp)
	fildl	-16(%ebp)
	fmulp	%st,%st(1)
	fstpt	-12(%ebp)
Lj223:
Lj218:
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_ARCCOS$EXTENDED$$EXTENDED
MATH_ARCCOS$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	MATH_ARCSIN$EXTENDED$$EXTENDED
	fldpi
	fldt	_$MATH$_Ld6
	fmulp	%st,%st(1)
	fsubp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_COSH$EXTENDED$$EXTENDED
MATH_COSH$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	fpc_exp_real
	fstpt	-24(%ebp)
	fld1
	fldt	-24(%ebp)
	fdivrp	%st,%st(1)
	fldt	-24(%ebp)
	faddp	%st,%st(1)
	fldt	_$MATH$_Ld6
	fmulp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_SINH$EXTENDED$$EXTENDED
MATH_SINH$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	fpc_exp_real
	fstpt	-24(%ebp)
	fld1
	fldt	-24(%ebp)
	fdivrp	%st,%st(1)
	fldt	-24(%ebp)
	fsubp	%st,%st(1)
	fldt	_$MATH$_Ld6
	fmulp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_TANH$EXTENDED$$EXTENDED
MATH_TANH$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fldt	_$MATH$_Ld7
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj262
	jmp	Lj263
Lj262:
	fld1
	fstpt	-12(%ebp)
	jmp	Lj260
	jmp	Lj266
Lj263:
	fldt	_$MATH$_Ld8
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj267
	jmp	Lj268
Lj267:
	movl	_$MATH$_Ld9,%eax
	movl	%eax,-12(%ebp)
	movl	_$MATH$_Ld9+4,%eax
	movl	%eax,-8(%ebp)
	movw	_$MATH$_Ld9+8,%ax
	movw	%ax,-4(%ebp)
	jmp	Lj260
Lj268:
Lj266:
	fldt	8(%ebp)
	fldt	_$MATH$_Ld10
	fmulp	%st,%st(1)
	subl	$12,%esp
	fstpt	(%esp)
	call	fpc_exp_real
	fstpt	-24(%ebp)
	fld1
	fldt	-24(%ebp)
	fsubrp	%st,%st(1)
	fld1
	fldt	-24(%ebp)
	faddp	%st,%st(1)
	fdivrp	%st,%st(1)
	fstpt	-12(%ebp)
Lj260:
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_ARCCOSH$EXTENDED$$EXTENDED
MATH_ARCCOSH$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	MATH_ARCOSH$EXTENDED$$EXTENDED
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_ARCSINH$EXTENDED$$EXTENDED
MATH_ARCSINH$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	MATH_ARSINH$EXTENDED$$EXTENDED
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_ARCTANH$EXTENDED$$EXTENDED
MATH_ARCTANH$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fld1
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj291
	jmp	Lj292
Lj291:
	call	MATH_INVALIDARGUMENT
Lj292:
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	MATH_ARTANH$EXTENDED$$EXTENDED
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_ARCOSH$EXTENDED$$EXTENDED
MATH_ARCOSH$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fld1
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj299
	jmp	Lj300
Lj299:
	call	MATH_INVALIDARGUMENT
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
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_ARSINH$EXTENDED$$EXTENDED
MATH_ARSINH$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
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
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_ARTANH$EXTENDED$$EXTENDED
MATH_ARTANH$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldt	8(%ebp)
	fabs
	fld1
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj309
	jmp	Lj310
Lj309:
	call	MATH_INVALIDARGUMENT
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
	fldt	_$MATH$_Ld6
	fmulp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_HYPOT$EXTENDED$EXTENDED$$EXTENDED
MATH_HYPOT$EXTENDED$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldt	20(%ebp)
	fldt	20(%ebp)
	fmulp	%st,%st(1)
	fldt	8(%ebp)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fsqrt
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$24

.text
	.balign 4,0x90
.globl	MATH_LOG10$EXTENDED$$EXTENDED
MATH_LOG10$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldt	8(%ebp)
	fldln2
	fxch
	fyl2x
	fldt	_$MATH$_Ld11
	fdivrp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_LOG2$EXTENDED$$EXTENDED
MATH_LOG2$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldt	8(%ebp)
	fldln2
	fxch
	fyl2x
	fldt	_$MATH$_Ld12
	fdivrp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_LOGN$EXTENDED$EXTENDED$$EXTENDED
MATH_LOGN$EXTENDED$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldz
	fldt	20(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj327
	jmp	Lj328
Lj327:
	call	MATH_INVALIDARGUMENT
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
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$24

.text
	.balign 4,0x90
.globl	MATH_LNXP1$EXTENDED$$EXTENDED
MATH_LNXP1$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldt	_$MATH$_Ld9
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj333
	jmp	Lj334
Lj333:
	call	MATH_INVALIDARGUMENT
Lj334:
	fld1
	fldt	8(%ebp)
	faddp	%st,%st(1)
	fldln2
	fxch
	fyl2x
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_POWER$EXTENDED$EXTENDED$$EXTENDED
MATH_POWER$EXTENDED$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj339
	jmp	Lj340
Lj339:
	fld1
	fstpt	-12(%ebp)
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
	fstpt	-12(%ebp)
	jmp	Lj349
Lj345:
	fldt	8(%ebp)
	fabs
	fldt	_$MATH$_Ld13
	fcompp
	fnstsw	%ax
	sahf
	jae	Lj352
	jmp	Lj351
Lj352:
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	fpc_frac_real
	fldz
	fcompp
	fnstsw	%ax
	sahf
	je	Lj350
	jmp	Lj351
Lj350:
	movzwl	28(%ebp),%eax
	pushl	%eax
	pushl	24(%ebp)
	pushl	20(%ebp)
	fnstcw	-16(%ebp)
	fnstcw	-14(%ebp)
	orw	$3840,-16(%ebp)
	fldt	8(%ebp)
	fldcw	-16(%ebp)
	fistpq	-24(%ebp)
	fldcw	-14(%ebp)
	fwait
	movl	-24(%ebp),%eax
	call	MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED
	fstpt	-12(%ebp)
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
	subl	$12,%esp
	fstpt	(%esp)
	call	fpc_exp_real
	fstpt	-12(%ebp)
	jmp	Lj368
Lj363:
	call	MATH_INVALIDARGUMENT
Lj368:
Lj361:
Lj349:
Lj343:
	fldt	-12(%ebp)
	leave
	ret	$24

.text
	.balign 4,0x90
.globl	MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED
MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
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
	fstpt	-16(%ebp)
	jmp	Lj376
Lj372:
	movl	-4(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	movl	%eax,-20(%ebp)
	fld1
	fstpt	-16(%ebp)
	jmp	Lj382
	.balign 4,0x90
Lj381:
	jmp	Lj385
	.balign 4,0x90
Lj384:
	movl	-20(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-20(%ebp)
	fldt	8(%ebp)
	fmul	%st(0),%st(0)
	fstpt	8(%ebp)
Lj385:
	movl	-20(%ebp),%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj384
	jmp	Lj386
Lj386:
	movl	-20(%ebp),%eax
	decl	%eax
	movl	%eax,-20(%ebp)
	fldt	8(%ebp)
	fldt	-16(%ebp)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
Lj382:
	movl	-20(%ebp),%eax
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
	fldt	-16(%ebp)
	fdivrp	%st,%st(1)
	fstpt	-16(%ebp)
Lj396:
Lj376:
	fldt	-16(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_starstar$EXTENDED$EXTENDED$$EXTENDED
MATH_starstar$EXTENDED$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movzwl	28(%ebp),%eax
	pushl	%eax
	pushl	24(%ebp)
	pushl	20(%ebp)
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	MATH_POWER$EXTENDED$EXTENDED$$EXTENDED
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$24

.text
	.balign 4,0x90
.globl	MATH_starstar$INT64$INT64$$INT64
MATH_starstar$INT64$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	fildq	16(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movl	8(%ebp),%eax
	call	MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	MATH_CEIL$EXTENDED$$LONGINT
MATH_CEIL$EXTENDED$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
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
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	fpc_frac_real
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
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_FLOOR$EXTENDED$$LONGINT
MATH_FLOOR$EXTENDED$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
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
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	fpc_frac_real
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
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_FREXP$EXTENDED$EXTENDED$LONGINT
MATH_FREXP$EXTENDED$EXTENDED$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
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
	fldt	_$MATH$_Ld6
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj441
	jmp	Lj442
Lj441:
	.balign 4,0x90
Lj443:
	fldt	_$MATH$_Ld5
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	8(%ebp)
	movl	-8(%ebp),%eax
	decl	(%eax)
	fldt	8(%ebp)
	fabs
	fldt	_$MATH$_Ld6
	fcompp
	fnstsw	%ax
	sahf
	jbe	Lj445
	jmp	Lj443
Lj445:
	jmp	Lj448
Lj442:
	jmp	Lj450
	.balign 4,0x90
Lj449:
	fldt	_$MATH$_Ld5
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
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_LDEXP$EXTENDED$LONGINT$$EXTENDED
MATH_LDEXP$EXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movzwl	_$MATH$_Ld5+8,%eax
	pushl	%eax
	pushl	_$MATH$_Ld5+4
	pushl	_$MATH$_Ld5
	movl	-4(%ebp),%eax
	call	MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_MEAN$array_of_SINGLE$$EXTENDED
MATH_MEAN$array_of_SINGLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_MEAN$PSINGLE$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MEAN$PSINGLE$LONGINT$$EXTENDED
MATH_MEAN$PSINGLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_SUM$PSINGLE$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fildl	-8(%ebp)
	fldt	-20(%ebp)
	fdivp	%st,%st(1)
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_SUM$array_of_SINGLE$$EXTENDED
MATH_SUM$array_of_SINGLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_SUM$PSINGLE$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_SUM$PSINGLE$LONGINT$$EXTENDED
MATH_SUM$PSINGLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fldz
	fstpt	-20(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jl	Lj495
	decl	-24(%ebp)
	.balign 4,0x90
Lj496:
	incl	-24(%ebp)
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%edx
	flds	(%ecx,%edx,4)
	fldt	-20(%ebp)
	faddp	%st,%st(1)
	fstpt	-20(%ebp)
	cmpl	-24(%ebp),%eax
	jg	Lj496
Lj495:
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MEAN$array_of_DOUBLE$$EXTENDED
MATH_MEAN$array_of_DOUBLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_MEAN$PDOUBLE$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MEAN$PDOUBLE$LONGINT$$EXTENDED
MATH_MEAN$PDOUBLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_SUM$PDOUBLE$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fildl	-8(%ebp)
	fldt	-20(%ebp)
	fdivp	%st,%st(1)
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_SUM$array_of_DOUBLE$$EXTENDED
MATH_SUM$array_of_DOUBLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_SUM$PDOUBLE$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_SUM$PDOUBLE$LONGINT$$EXTENDED
MATH_SUM$PDOUBLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fldz
	fstpt	-20(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jl	Lj530
	decl	-24(%ebp)
	.balign 4,0x90
Lj531:
	incl	-24(%ebp)
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%edx
	fldl	(%ecx,%edx,8)
	fldt	-20(%ebp)
	faddp	%st,%st(1)
	fstpt	-20(%ebp)
	cmpl	-24(%ebp),%eax
	jg	Lj531
Lj530:
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MEAN$array_of_EXTENDED$$EXTENDED
MATH_MEAN$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_MEAN$PEXTENDED$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MEAN$PEXTENDED$LONGINT$$EXTENDED
MATH_MEAN$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_SUM$PEXTENDED$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fildl	-8(%ebp)
	fldt	-20(%ebp)
	fdivp	%st,%st(1)
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_SUM$array_of_EXTENDED$$EXTENDED
MATH_SUM$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_SUM$PEXTENDED$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_SUM$PEXTENDED$LONGINT$$EXTENDED
MATH_SUM$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fldz
	fstpt	-20(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jl	Lj565
	decl	-24(%ebp)
	.balign 4,0x90
Lj566:
	incl	-24(%ebp)
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%edx
	imull	$10,%edx
	fldt	-20(%ebp)
	fldt	(%ecx,%edx)
	faddp	%st,%st(1)
	fstpt	-20(%ebp)
	cmpl	-24(%ebp),%eax
	jg	Lj566
Lj565:
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_SUMINT$PINT64$LONGINT$$INT64
MATH_SUMINT$PINT64$LONGINT$$INT64:
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
	.balign 4,0x90
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
	.balign 4,0x90
.globl	MATH_SUMINT$array_of_INT64$$INT64
MATH_SUMINT$array_of_INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_SUMINT$PINT64$LONGINT$$INT64
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_SUMOFSQUARES$array_of_SINGLE$$EXTENDED
MATH_SUMOFSQUARES$array_of_SINGLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_SUMOFSQUARES$PSINGLE$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_SUMOFSQUARES$PSINGLE$LONGINT$$EXTENDED
MATH_SUMOFSQUARES$PSINGLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fldz
	fstpt	-20(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jl	Lj599
	decl	-24(%ebp)
	.balign 4,0x90
Lj600:
	incl	-24(%ebp)
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%edx
	flds	(%ecx,%edx,4)
	fmul	%st(0),%st(0)
	fldt	-20(%ebp)
	faddp	%st,%st(1)
	fstpt	-20(%ebp)
	cmpl	-24(%ebp),%eax
	jg	Lj600
Lj599:
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_SUMSANDSQUARES$array_of_SINGLE$EXTENDED$EXTENDED
MATH_SUMSANDSQUARES$array_of_SINGLE$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	call	MATH_SUMSANDSQUARES$PSINGLE$LONGINT$EXTENDED$EXTENDED
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_SUMSANDSQUARES$PSINGLE$LONGINT$EXTENDED$EXTENDED
MATH_SUMSANDSQUARES$PSINGLE$LONGINT$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
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
	.balign 4,0x90
Lj621:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	flds	(%edx,%ecx,4)
	fstpt	-28(%ebp)
	fldt	-28(%ebp)
	fmul	%st(0),%st(0)
	movl	8(%ebp),%edx
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	8(%ebp),%edx
	fstpt	(%edx)
	movl	-12(%ebp),%edx
	fldt	-28(%ebp)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	fstpt	(%edx)
	cmpl	-16(%ebp),%eax
	jg	Lj621
Lj620:
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_SUMOFSQUARES$array_of_DOUBLE$$EXTENDED
MATH_SUMOFSQUARES$array_of_DOUBLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_SUMOFSQUARES$PDOUBLE$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_SUMOFSQUARES$PDOUBLE$LONGINT$$EXTENDED
MATH_SUMOFSQUARES$PDOUBLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fldz
	fstpt	-20(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jl	Lj641
	decl	-24(%ebp)
	.balign 4,0x90
Lj642:
	incl	-24(%ebp)
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%edx
	fldl	(%ecx,%edx,8)
	fmul	%st(0),%st(0)
	fldt	-20(%ebp)
	faddp	%st,%st(1)
	fstpt	-20(%ebp)
	cmpl	-24(%ebp),%eax
	jg	Lj642
Lj641:
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_SUMSANDSQUARES$array_of_DOUBLE$EXTENDED$EXTENDED
MATH_SUMSANDSQUARES$array_of_DOUBLE$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	call	MATH_SUMSANDSQUARES$PDOUBLE$LONGINT$EXTENDED$EXTENDED
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_SUMSANDSQUARES$PDOUBLE$LONGINT$EXTENDED$EXTENDED
MATH_SUMSANDSQUARES$PDOUBLE$LONGINT$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
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
	.balign 4,0x90
Lj663:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	fldl	(%edx,%ecx,8)
	fstpt	-28(%ebp)
	fldt	-28(%ebp)
	fmul	%st(0),%st(0)
	movl	8(%ebp),%edx
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	8(%ebp),%edx
	fstpt	(%edx)
	movl	-12(%ebp),%edx
	fldt	-28(%ebp)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	fstpt	(%edx)
	cmpl	-16(%ebp),%eax
	jg	Lj663
Lj662:
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_SUMOFSQUARES$array_of_EXTENDED$$EXTENDED
MATH_SUMOFSQUARES$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_SUMOFSQUARES$PEXTENDED$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_SUMOFSQUARES$PEXTENDED$LONGINT$$EXTENDED
MATH_SUMOFSQUARES$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fldz
	fstpt	-20(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jl	Lj683
	decl	-24(%ebp)
	.balign 4,0x90
Lj684:
	incl	-24(%ebp)
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%edx
	imull	$10,%edx
	fldt	(%ecx,%edx)
	fmul	%st(0),%st(0)
	fldt	-20(%ebp)
	faddp	%st,%st(1)
	fstpt	-20(%ebp)
	cmpl	-24(%ebp),%eax
	jg	Lj684
Lj683:
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_SUMSANDSQUARES$array_of_EXTENDED$EXTENDED$EXTENDED
MATH_SUMSANDSQUARES$array_of_EXTENDED$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	call	MATH_SUMSANDSQUARES$PEXTENDED$LONGINT$EXTENDED$EXTENDED
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_SUMSANDSQUARES$PEXTENDED$LONGINT$EXTENDED$EXTENDED
MATH_SUMSANDSQUARES$PEXTENDED$LONGINT$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
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
	.balign 4,0x90
Lj705:
	incl	-16(%ebp)
	movl	-4(%ebp),%ebx
	movl	-16(%ebp),%edx
	imull	$10,%edx
	movl	(%ebx,%edx),%ecx
	movl	%ecx,-28(%ebp)
	movl	4(%ebx,%edx),%ecx
	movl	%ecx,-24(%ebp)
	movw	8(%ebx,%edx),%dx
	movw	%dx,-20(%ebp)
	fldt	-28(%ebp)
	fmul	%st(0),%st(0)
	movl	8(%ebp),%edx
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	8(%ebp),%edx
	fstpt	(%edx)
	movl	-12(%ebp),%edx
	fldt	-28(%ebp)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	fstpt	(%edx)
	cmpl	-16(%ebp),%eax
	jg	Lj705
Lj704:
	movl	-32(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_RANDG$EXTENDED$EXTENDED$$EXTENDED
MATH_RANDG$EXTENDED$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$48,%esp
	.balign 4,0x90
Lj714:
	call	SYSTEM_RANDOM$$EXTENDED
	fldt	_$MATH$_Ld5
	fmulp	%st,%st(1)
	fld1
	fsubrp	%st,%st(1)
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	fmul	%st(0),%st(0)
	fstpt	-48(%ebp)
	call	SYSTEM_RANDOM$$EXTENDED
	fldt	_$MATH$_Ld5
	fmulp	%st,%st(1)
	fld1
	fsubrp	%st,%st(1)
	fmul	%st(0),%st(0)
	fldt	-48(%ebp)
	faddp	%st,%st(1)
	fstpt	-36(%ebp)
	fld1
	fldt	-36(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj716
	jmp	Lj714
Lj716:
	fldt	-36(%ebp)
	fldln2
	fxch
	fyl2x
	fldt	_$MATH$_Ld10
	fmulp	%st,%st(1)
	fldt	-36(%ebp)
	fdivrp	%st,%st(1)
	fsqrt
	fldt	-24(%ebp)
	fmulp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fldt	20(%ebp)
	faddp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$24

.text
	.balign 4,0x90
.globl	MATH_RANDOMRANGE$LONGINT$LONGINT$$LONGINT
MATH_RANDOMRANGE$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
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
	call	SYSTEM_RANDOM$LONGINT$$LONGINT
	movl	%eax,%ebx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	MATH_MIN$LONGINT$LONGINT$$LONGINT
	addl	%eax,%ebx
	movl	%ebx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_RANDOMRANGE$INT64$INT64$$INT64
MATH_RANDOMRANGE$INT64$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	16(%ebp),%edx
	movl	20(%ebp),%eax
	subl	8(%ebp),%edx
	sbbl	12(%ebp),%eax
	movl	%edx,-16(%ebp)
	movl	%eax,-12(%ebp)
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
	pushl	%edx
	pushl	%eax
	call	SYSTEM_RANDOM$INT64$$INT64
	movl	%eax,%ebx
	movl	%edx,%esi
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	20(%ebp)
	pushl	16(%ebp)
	call	MATH_MIN$INT64$INT64$$INT64
	addl	%eax,%ebx
	adcl	%edx,%esi
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	MATH_STDDEV$array_of_SINGLE$$EXTENDED
MATH_STDDEV$array_of_SINGLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_STDDEV$PSINGLE$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_STDDEV$PSINGLE$LONGINT$$EXTENDED
MATH_STDDEV$PSINGLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_VARIANCE$PSINGLE$LONGINT$$EXTENDED
	fsqrt
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MEANANDSTDDEV$array_of_SINGLE$EXTENDED$EXTENDED
MATH_MEANANDSTDDEV$array_of_SINGLE$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	call	MATH_MEANANDSTDDEV$PSINGLE$LONGINT$EXTENDED$EXTENDED
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_MEANANDSTDDEV$PSINGLE$LONGINT$EXTENDED$EXTENDED
MATH_MEANANDSTDDEV$PSINGLE$LONGINT$EXTENDED$EXTENDED:
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
	.balign 4,0x90
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
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_VARIANCE$array_of_SINGLE$$EXTENDED
MATH_VARIANCE$array_of_SINGLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_VARIANCE$PSINGLE$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_VARIANCE$PSINGLE$LONGINT$$EXTENDED
MATH_VARIANCE$PSINGLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj812
	jmp	Lj813
Lj812:
	fldz
	fstpt	-20(%ebp)
	jmp	Lj816
Lj813:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_TOTALVARIANCE$PSINGLE$LONGINT$$EXTENDED
	movl	-8(%ebp),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	fildl	-24(%ebp)
	fdivrp	%st,%st(1)
	fstpt	-20(%ebp)
Lj816:
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_TOTALVARIANCE$array_of_SINGLE$$EXTENDED
MATH_TOTALVARIANCE$array_of_SINGLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_TOTALVARIANCE$PSINGLE$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_TOTALVARIANCE$PSINGLE$LONGINT$$EXTENDED
MATH_TOTALVARIANCE$PSINGLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$44,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj833
	jmp	Lj834
Lj833:
	fldz
	fstpt	-20(%ebp)
	jmp	Lj837
Lj834:
	leal	-44(%ebp),%eax
	pushl	%eax
	leal	-32(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_SUMSANDSQUARES$PSINGLE$LONGINT$EXTENDED$EXTENDED
	fldt	-32(%ebp)
	fmul	%st(0),%st(0)
	fildl	-8(%ebp)
	fdivrp	%st,%st(1)
	fldt	-44(%ebp)
	fsubp	%st,%st(1)
	fstpt	-20(%ebp)
Lj837:
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_POPNSTDDEV$array_of_SINGLE$$EXTENDED
MATH_POPNSTDDEV$array_of_SINGLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_POPNVARIANCE$PSINGLE$LONGINT$$EXTENDED
	fsqrt
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_POPNSTDDEV$PSINGLE$LONGINT$$EXTENDED
MATH_POPNSTDDEV$PSINGLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_POPNVARIANCE$PSINGLE$LONGINT$$EXTENDED
	fsqrt
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_POPNVARIANCE$array_of_SINGLE$$EXTENDED
MATH_POPNVARIANCE$array_of_SINGLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_POPNVARIANCE$PSINGLE$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_POPNVARIANCE$PSINGLE$LONGINT$$EXTENDED
MATH_POPNVARIANCE$PSINGLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_TOTALVARIANCE$PSINGLE$LONGINT$$EXTENDED
	fildl	-8(%ebp)
	fdivrp	%st,%st(1)
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MOMENTSKEWKURTOSIS$crcF980E199
MATH_MOMENTSKEWKURTOSIS$crcF980E199:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	24(%ebp),%eax
	pushl	%eax
	movl	20(%ebp),%eax
	pushl	%eax
	movl	16(%ebp),%eax
	pushl	%eax
	movl	12(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	call	MATH_MOMENTSKEWKURTOSIS$crcAB01C5D7
	leave
	ret	$20

.text
	.balign 4,0x90
.globl	MATH_MOMENTSKEWKURTOSIS$crcAB01C5D7
MATH_MOMENTSKEWKURTOSIS$crcAB01C5D7:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	fldz
	fstpt	(%eax)
	fildl	-8(%ebp)
	fld1
	fdivp	%st,%st(1)
	fstpt	-40(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj907
	decl	-16(%ebp)
	.balign 4,0x90
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
	fldt	-40(%ebp)
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
	.balign 4,0x90
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
	fldt	-40(%ebp)
	fmulp	%st,%st(1)
	movl	24(%ebp),%eax
	fstpt	(%eax)
	movl	20(%ebp),%eax
	fldt	(%eax)
	fldt	-40(%ebp)
	fmulp	%st,%st(1)
	movl	20(%ebp),%eax
	fstpt	(%eax)
	movl	16(%ebp),%eax
	fldt	(%eax)
	fldt	-40(%ebp)
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
	ret	$20

.text
	.balign 4,0x90
.globl	MATH_NORM$array_of_SINGLE$$EXTENDED
MATH_NORM$array_of_SINGLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_NORM$PSINGLE$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_NORM$PSINGLE$LONGINT$$EXTENDED
MATH_NORM$PSINGLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_SUMOFSQUARES$PSINGLE$LONGINT$$EXTENDED
	fsqrt
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_STDDEV$array_of_DOUBLE$$EXTENDED
MATH_STDDEV$array_of_DOUBLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_STDDEV$PDOUBLE$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_STDDEV$PDOUBLE$LONGINT$$EXTENDED
MATH_STDDEV$PDOUBLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_VARIANCE$PDOUBLE$LONGINT$$EXTENDED
	fsqrt
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MEANANDSTDDEV$array_of_DOUBLE$EXTENDED$EXTENDED
MATH_MEANANDSTDDEV$array_of_DOUBLE$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	call	MATH_MEANANDSTDDEV$PDOUBLE$LONGINT$EXTENDED$EXTENDED
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_MEANANDSTDDEV$PDOUBLE$LONGINT$EXTENDED$EXTENDED
MATH_MEANANDSTDDEV$PDOUBLE$LONGINT$EXTENDED$EXTENDED:
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
	.balign 4,0x90
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
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_VARIANCE$array_of_DOUBLE$$EXTENDED
MATH_VARIANCE$array_of_DOUBLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_VARIANCE$PDOUBLE$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_VARIANCE$PDOUBLE$LONGINT$$EXTENDED
MATH_VARIANCE$PDOUBLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj1020
	jmp	Lj1021
Lj1020:
	fldz
	fstpt	-20(%ebp)
	jmp	Lj1024
Lj1021:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_TOTALVARIANCE$PDOUBLE$LONGINT$$EXTENDED
	movl	-8(%ebp),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	fildl	-24(%ebp)
	fdivrp	%st,%st(1)
	fstpt	-20(%ebp)
Lj1024:
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_TOTALVARIANCE$array_of_DOUBLE$$EXTENDED
MATH_TOTALVARIANCE$array_of_DOUBLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_TOTALVARIANCE$PDOUBLE$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_TOTALVARIANCE$PDOUBLE$LONGINT$$EXTENDED
MATH_TOTALVARIANCE$PDOUBLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$44,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj1041
	jmp	Lj1042
Lj1041:
	fldz
	fstpt	-20(%ebp)
	jmp	Lj1045
Lj1042:
	leal	-44(%ebp),%eax
	pushl	%eax
	leal	-32(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_SUMSANDSQUARES$PDOUBLE$LONGINT$EXTENDED$EXTENDED
	fldt	-32(%ebp)
	fmul	%st(0),%st(0)
	fildl	-8(%ebp)
	fdivrp	%st,%st(1)
	fldt	-44(%ebp)
	fsubp	%st,%st(1)
	fstpt	-20(%ebp)
Lj1045:
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_POPNSTDDEV$array_of_DOUBLE$$EXTENDED
MATH_POPNSTDDEV$array_of_DOUBLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_POPNVARIANCE$PDOUBLE$LONGINT$$EXTENDED
	fsqrt
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_POPNSTDDEV$PDOUBLE$LONGINT$$EXTENDED
MATH_POPNSTDDEV$PDOUBLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_POPNVARIANCE$PDOUBLE$LONGINT$$EXTENDED
	fsqrt
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_POPNVARIANCE$array_of_DOUBLE$$EXTENDED
MATH_POPNVARIANCE$array_of_DOUBLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_POPNVARIANCE$PDOUBLE$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_POPNVARIANCE$PDOUBLE$LONGINT$$EXTENDED
MATH_POPNVARIANCE$PDOUBLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_TOTALVARIANCE$PDOUBLE$LONGINT$$EXTENDED
	fildl	-8(%ebp)
	fdivrp	%st,%st(1)
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MOMENTSKEWKURTOSIS$crc489CF8E5
MATH_MOMENTSKEWKURTOSIS$crc489CF8E5:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	24(%ebp),%eax
	pushl	%eax
	movl	20(%ebp),%eax
	pushl	%eax
	movl	16(%ebp),%eax
	pushl	%eax
	movl	12(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	call	MATH_MOMENTSKEWKURTOSIS$crcA4CE7FA7
	leave
	ret	$20

.text
	.balign 4,0x90
.globl	MATH_MOMENTSKEWKURTOSIS$crcA4CE7FA7
MATH_MOMENTSKEWKURTOSIS$crcA4CE7FA7:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$48,%esp
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
	jl	Lj1115
	decl	-16(%ebp)
	.balign 4,0x90
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
	jl	Lj1130
	decl	-16(%ebp)
	.balign 4,0x90
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
	ret	$20

.text
	.balign 4,0x90
.globl	MATH_NORM$array_of_DOUBLE$$EXTENDED
MATH_NORM$array_of_DOUBLE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_NORM$PDOUBLE$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_NORM$PDOUBLE$LONGINT$$EXTENDED
MATH_NORM$PDOUBLE$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_SUMOFSQUARES$PDOUBLE$LONGINT$$EXTENDED
	fsqrt
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_STDDEV$array_of_EXTENDED$$EXTENDED
MATH_STDDEV$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_STDDEV$PEXTENDED$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_STDDEV$PEXTENDED$LONGINT$$EXTENDED
MATH_STDDEV$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_VARIANCE$PEXTENDED$LONGINT$$EXTENDED
	fsqrt
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MEANANDSTDDEV$array_of_EXTENDED$EXTENDED$EXTENDED
MATH_MEANANDSTDDEV$array_of_EXTENDED$EXTENDED$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	call	MATH_MEANANDSTDDEV$PEXTENDED$LONGINT$EXTENDED$EXTENDED
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_MEANANDSTDDEV$PEXTENDED$LONGINT$EXTENDED$EXTENDED
MATH_MEANANDSTDDEV$PEXTENDED$LONGINT$EXTENDED$EXTENDED:
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
	.balign 4,0x90
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
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_VARIANCE$array_of_EXTENDED$$EXTENDED
MATH_VARIANCE$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_VARIANCE$PEXTENDED$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_VARIANCE$PEXTENDED$LONGINT$$EXTENDED
MATH_VARIANCE$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj1228
	jmp	Lj1229
Lj1228:
	fldz
	fstpt	-20(%ebp)
	jmp	Lj1232
Lj1229:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_TOTALVARIANCE$PEXTENDED$LONGINT$$EXTENDED
	movl	-8(%ebp),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	fildl	-24(%ebp)
	fdivrp	%st,%st(1)
	fstpt	-20(%ebp)
Lj1232:
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_TOTALVARIANCE$array_of_EXTENDED$$EXTENDED
MATH_TOTALVARIANCE$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_TOTALVARIANCE$PEXTENDED$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_TOTALVARIANCE$PEXTENDED$LONGINT$$EXTENDED
MATH_TOTALVARIANCE$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$44,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj1249
	jmp	Lj1250
Lj1249:
	fldz
	fstpt	-20(%ebp)
	jmp	Lj1253
Lj1250:
	leal	-44(%ebp),%eax
	pushl	%eax
	leal	-32(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_SUMSANDSQUARES$PEXTENDED$LONGINT$EXTENDED$EXTENDED
	fldt	-32(%ebp)
	fmul	%st(0),%st(0)
	fildl	-8(%ebp)
	fdivrp	%st,%st(1)
	fldt	-44(%ebp)
	fsubp	%st,%st(1)
	fstpt	-20(%ebp)
Lj1253:
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_POPNSTDDEV$array_of_EXTENDED$$EXTENDED
MATH_POPNSTDDEV$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_POPNVARIANCE$PEXTENDED$LONGINT$$EXTENDED
	fsqrt
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_POPNSTDDEV$PEXTENDED$LONGINT$$EXTENDED
MATH_POPNSTDDEV$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_POPNVARIANCE$PEXTENDED$LONGINT$$EXTENDED
	fsqrt
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_POPNVARIANCE$array_of_EXTENDED$$EXTENDED
MATH_POPNVARIANCE$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_POPNVARIANCE$PEXTENDED$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_POPNVARIANCE$PEXTENDED$LONGINT$$EXTENDED
MATH_POPNVARIANCE$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_TOTALVARIANCE$PEXTENDED$LONGINT$$EXTENDED
	fildl	-8(%ebp)
	fdivrp	%st,%st(1)
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MOMENTSKEWKURTOSIS$crcA94F3C65
MATH_MOMENTSKEWKURTOSIS$crcA94F3C65:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	24(%ebp),%eax
	pushl	%eax
	movl	20(%ebp),%eax
	pushl	%eax
	movl	16(%ebp),%eax
	pushl	%eax
	movl	12(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	call	MATH_MOMENTSKEWKURTOSIS$crc321E69D1
	leave
	ret	$20

.text
	.balign 4,0x90
.globl	MATH_MOMENTSKEWKURTOSIS$crc321E69D1
MATH_MOMENTSKEWKURTOSIS$crc321E69D1:
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
	jl	Lj1323
	decl	-16(%ebp)
	.balign 4,0x90
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
	jl	Lj1338
	decl	-16(%ebp)
	.balign 4,0x90
Lj1339:
	incl	-16(%ebp)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%ecx
	fldt	(%ecx)
	fldt	(%edx)
	fsubp	%st,%st(1)
	fstpt	-32(%ebp)
	fldt	-32(%ebp)
	fldt	-32(%ebp)
	fmulp	%st,%st(1)
	fstpt	-44(%ebp)
	movl	24(%ebp),%edx
	fldt	-44(%ebp)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	24(%ebp),%edx
	fstpt	(%edx)
	movl	20(%ebp),%edx
	fldt	-32(%ebp)
	fldt	-44(%ebp)
	fmulp	%st,%st(1)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	20(%ebp),%edx
	fstpt	(%edx)
	movl	16(%ebp),%edx
	fldt	-44(%ebp)
	fldt	-44(%ebp)
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
	ret	$20

.text
	.balign 4,0x90
.globl	MATH_NORM$array_of_EXTENDED$$EXTENDED
MATH_NORM$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_NORM$PEXTENDED$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_NORM$PEXTENDED$LONGINT$$EXTENDED
MATH_NORM$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MATH_SUMOFSQUARES$PEXTENDED$LONGINT$$EXTENDED
	fsqrt
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MININTVALUE$array_of_LONGINT$$LONGINT
MATH_MININTVALUE$array_of_LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
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
	.balign 4,0x90
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
	.balign 4,0x90
.globl	MATH_MAXINTVALUE$array_of_LONGINT$$LONGINT
MATH_MAXINTVALUE$array_of_LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
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
	.balign 4,0x90
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
	.balign 4,0x90
.globl	MATH_MINVALUE$array_of_LONGINT$$LONGINT
MATH_MINVALUE$array_of_LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_MINVALUE$PINTEGER$LONGINT$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MINVALUE$PINTEGER$LONGINT$$LONGINT
MATH_MINVALUE$PINTEGER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
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
	.balign 4,0x90
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
	.balign 4,0x90
.globl	MATH_MAXVALUE$array_of_LONGINT$$LONGINT
MATH_MAXVALUE$array_of_LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_MAXVALUE$PINTEGER$LONGINT$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MAXVALUE$PINTEGER$LONGINT$$LONGINT
MATH_MAXVALUE$PINTEGER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
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
	.balign 4,0x90
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
	.balign 4,0x90
.globl	MATH_MINVALUE$array_of_SINGLE$$SINGLE
MATH_MINVALUE$array_of_SINGLE$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_MINVALUE$PSINGLE$LONGINT$$SINGLE
	fstps	-12(%ebp)
	flds	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MINVALUE$PSINGLE$LONGINT$$SINGLE
MATH_MINVALUE$PSINGLE$LONGINT$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
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
	.balign 4,0x90
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
	.balign 4,0x90
.globl	MATH_MAXVALUE$array_of_SINGLE$$SINGLE
MATH_MAXVALUE$array_of_SINGLE$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_MAXVALUE$PSINGLE$LONGINT$$SINGLE
	fstps	-12(%ebp)
	flds	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MAXVALUE$PSINGLE$LONGINT$$SINGLE
MATH_MAXVALUE$PSINGLE$LONGINT$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
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
	.balign 4,0x90
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
	.balign 4,0x90
.globl	MATH_MINVALUE$array_of_DOUBLE$$DOUBLE
MATH_MINVALUE$array_of_DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_MINVALUE$PDOUBLE$LONGINT$$DOUBLE
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MINVALUE$PDOUBLE$LONGINT$$DOUBLE
MATH_MINVALUE$PDOUBLE$LONGINT$$DOUBLE:
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
	.balign 4,0x90
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
	.balign 4,0x90
.globl	MATH_MAXVALUE$array_of_DOUBLE$$DOUBLE
MATH_MAXVALUE$array_of_DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_MAXVALUE$PDOUBLE$LONGINT$$DOUBLE
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MAXVALUE$PDOUBLE$LONGINT$$DOUBLE
MATH_MAXVALUE$PDOUBLE$LONGINT$$DOUBLE:
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
	.balign 4,0x90
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
	.balign 4,0x90
.globl	MATH_MINVALUE$array_of_EXTENDED$$EXTENDED
MATH_MINVALUE$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_MINVALUE$PEXTENDED$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MINVALUE$PEXTENDED$LONGINT$$EXTENDED
MATH_MINVALUE$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-16(%ebp)
	movw	8(%edx),%ax
	movw	%ax,-12(%ebp)
	movl	-8(%ebp),%edx
	decl	%edx
	movl	$1,-24(%ebp)
	cmpl	-24(%ebp),%edx
	jl	Lj1525
	decl	-24(%ebp)
	.balign 4,0x90
Lj1526:
	incl	-24(%ebp)
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%eax
	imull	$10,%eax
	fldt	-20(%ebp)
	fldt	(%ecx,%eax)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1527
	jmp	Lj1528
Lj1527:
	movl	-4(%ebp),%ebx
	movl	-24(%ebp),%eax
	imull	$10,%eax
	movl	(%ebx,%eax),%ecx
	movl	%ecx,-20(%ebp)
	movl	4(%ebx,%eax),%ecx
	movl	%ecx,-16(%ebp)
	movw	8(%ebx,%eax),%ax
	movw	%ax,-12(%ebp)
Lj1528:
	cmpl	-24(%ebp),%edx
	jg	Lj1526
Lj1525:
	fldt	-20(%ebp)
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MAXVALUE$array_of_EXTENDED$$EXTENDED
MATH_MAXVALUE$array_of_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	call	MATH_MAXVALUE$PEXTENDED$LONGINT$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MAXVALUE$PEXTENDED$LONGINT$$EXTENDED
MATH_MAXVALUE$PEXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-16(%ebp)
	movw	8(%edx),%ax
	movw	%ax,-12(%ebp)
	movl	-8(%ebp),%edx
	decl	%edx
	movl	$1,-24(%ebp)
	cmpl	-24(%ebp),%edx
	jl	Lj1544
	decl	-24(%ebp)
	.balign 4,0x90
Lj1545:
	incl	-24(%ebp)
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%eax
	imull	$10,%eax
	fldt	-20(%ebp)
	fldt	(%ecx,%eax)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1546
	jmp	Lj1547
Lj1546:
	movl	-4(%ebp),%ebx
	movl	-24(%ebp),%eax
	imull	$10,%eax
	movl	(%ebx,%eax),%ecx
	movl	%ecx,-20(%ebp)
	movl	4(%ebx,%eax),%ecx
	movl	%ecx,-16(%ebp)
	movw	8(%ebx,%eax),%ax
	movw	%ax,-12(%ebp)
Lj1547:
	cmpl	-24(%ebp),%edx
	jg	Lj1545
Lj1544:
	fldt	-20(%ebp)
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_MIN$LONGINT$LONGINT$$LONGINT
MATH_MIN$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
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
	.balign 4,0x90
.globl	MATH_MAX$LONGINT$LONGINT$$LONGINT
MATH_MAX$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
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
	.balign 4,0x90
.globl	MATH_MIN$INT64$INT64$$INT64
MATH_MIN$INT64$INT64$$INT64:
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
	ret	$16

.text
	.balign 4,0x90
.globl	MATH_MAX$INT64$INT64$$INT64
MATH_MAX$INT64$INT64$$INT64:
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
	ret	$16

.text
	.balign 4,0x90
.globl	MATH_MIN$SINGLE$SINGLE$$SINGLE
MATH_MIN$SINGLE$SINGLE$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
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
	ret	$8

.text
	.balign 4,0x90
.globl	MATH_MAX$SINGLE$SINGLE$$SINGLE
MATH_MAX$SINGLE$SINGLE$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
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
	ret	$8

.text
	.balign 4,0x90
.globl	MATH_MIN$DOUBLE$DOUBLE$$DOUBLE
MATH_MIN$DOUBLE$DOUBLE$$DOUBLE:
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
	ret	$16

.text
	.balign 4,0x90
.globl	MATH_MAX$DOUBLE$DOUBLE$$DOUBLE
MATH_MAX$DOUBLE$DOUBLE$$DOUBLE:
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
	ret	$16

.text
	.balign 4,0x90
.globl	MATH_MIN$EXTENDED$EXTENDED$$EXTENDED
MATH_MIN$EXTENDED$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldt	8(%ebp)
	fldt	20(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1624
	jmp	Lj1625
Lj1624:
	movl	20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	24(%ebp),%eax
	movl	%eax,-8(%ebp)
	movw	28(%ebp),%ax
	movw	%ax,-4(%ebp)
	jmp	Lj1628
Lj1625:
	movl	8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movw	16(%ebp),%ax
	movw	%ax,-4(%ebp)
Lj1628:
	fldt	-12(%ebp)
	leave
	ret	$24

.text
	.balign 4,0x90
.globl	MATH_MAX$EXTENDED$EXTENDED$$EXTENDED
MATH_MAX$EXTENDED$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	fldt	8(%ebp)
	fldt	20(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1633
	jmp	Lj1634
Lj1633:
	movl	20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	24(%ebp),%eax
	movl	%eax,-8(%ebp)
	movw	28(%ebp),%ax
	movw	%ax,-4(%ebp)
	jmp	Lj1637
Lj1634:
	movl	8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movw	16(%ebp),%ax
	movw	%ax,-4(%ebp)
Lj1637:
	fldt	-12(%ebp)
	leave
	ret	$24

.text
	.balign 4,0x90
.globl	MATH_INRANGE$LONGINT$LONGINT$LONGINT$$BOOLEAN
MATH_INRANGE$LONGINT$LONGINT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
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
	.balign 4,0x90
.globl	MATH_INRANGE$INT64$INT64$INT64$$BOOLEAN
MATH_INRANGE$INT64$INT64$INT64$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	movl	24(%ebp),%edx
	movl	28(%ebp),%eax
	cmpl	20(%ebp),%eax
	jg	Lj1650
	jl	Lj1649
	cmpl	16(%ebp),%edx
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
	ret	$24

.text
	.balign 4,0x90
.globl	MATH_INRANGE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN
MATH_INRANGE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
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
	ret	$24

.text
	.balign 4,0x90
.globl	MATH_ENSURERANGE$LONGINT$LONGINT$LONGINT$$LONGINT
MATH_ENSURERANGE$LONGINT$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
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
	.balign 4,0x90
.globl	MATH_ENSURERANGE$INT64$INT64$INT64$$INT64
MATH_ENSURERANGE$INT64$INT64$INT64$$INT64:
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
	ret	$24

.text
	.balign 4,0x90
.globl	MATH_ENSURERANGE$DOUBLE$DOUBLE$DOUBLE$$DOUBLE
MATH_ENSURERANGE$DOUBLE$DOUBLE$DOUBLE$$DOUBLE:
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
	ret	$24

.text
	.balign 4,0x90
.globl	MATH_ISZERO$SINGLE$SINGLE$$BOOLEAN
MATH_ISZERO$SINGLE$SINGLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	fldz
	flds	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj1699
	jmp	Lj1700
Lj1699:
	movl	_$MATH$_Ld14,%eax
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
	ret	$8

.text
	.balign 4,0x90
.globl	MATH_ISZERO$SINGLE$$BOOLEAN
MATH_ISZERO$SINGLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	pushl	8(%ebp)
	pushl	_$MATH$_Ld14
	call	MATH_ISZERO$SINGLE$SINGLE$$BOOLEAN
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_ISZERO$DOUBLE$DOUBLE$$BOOLEAN
MATH_ISZERO$DOUBLE$DOUBLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj1715
	jmp	Lj1716
Lj1715:
	movl	_$MATH$_Ld15,%eax
	movl	%eax,8(%ebp)
	movl	_$MATH$_Ld15+4,%eax
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
	ret	$16

.text
	.balign 4,0x90
.globl	MATH_ISZERO$DOUBLE$$BOOLEAN
MATH_ISZERO$DOUBLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	fldl	8(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movzwl	_$MATH$_Ld16+8,%eax
	pushl	%eax
	pushl	_$MATH$_Ld16+4
	pushl	_$MATH$_Ld16
	call	MATH_ISZERO$EXTENDED$EXTENDED$$BOOLEAN
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	MATH_ISZERO$EXTENDED$EXTENDED$$BOOLEAN
MATH_ISZERO$EXTENDED$EXTENDED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj1731
	jmp	Lj1732
Lj1731:
	movl	_$MATH$_Ld17,%eax
	movl	%eax,8(%ebp)
	movl	_$MATH$_Ld17+4,%eax
	movl	%eax,12(%ebp)
	movw	_$MATH$_Ld17+8,%ax
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
	ret	$24

.text
	.balign 4,0x90
.globl	MATH_ISZERO$EXTENDED$$BOOLEAN
MATH_ISZERO$EXTENDED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	movzwl	_$MATH$_Ld17+8,%eax
	pushl	%eax
	pushl	_$MATH$_Ld17+4
	pushl	_$MATH$_Ld17
	call	MATH_ISZERO$EXTENDED$EXTENDED$$BOOLEAN
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_ISNAN$SINGLE$$BOOLEAN
MATH_ISNAN$SINGLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$3,%esp
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
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_ISNAN$DOUBLE$$BOOLEAN
MATH_ISNAN$DOUBLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$3,%esp
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
	ret	$8

.text
	.balign 4,0x90
.globl	MATH_ISNAN$EXTENDED$$BOOLEAN
MATH_ISNAN$EXTENDED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$3,%esp
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
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_ISINFINITE$DOUBLE$$BOOLEAN
MATH_ISINFINITE$DOUBLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$3,%esp
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
	ret	$8

.text
	.balign 4,0x90
.globl	MATH_SAMEVALUE$EXTENDED$EXTENDED$EXTENDED$$BOOLEAN
MATH_SAMEVALUE$EXTENDED$EXTENDED$EXTENDED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
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
	fstpt	-40(%ebp)
	fldt	32(%ebp)
	fabs
	fstpt	-52(%ebp)
	fldt	-40(%ebp)
	fldt	-52(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1801
	jmp	Lj1802
Lj1801:
	movl	-52(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-48(%ebp),%eax
	movl	%eax,-24(%ebp)
	movw	-44(%ebp),%ax
	movw	%ax,-20(%ebp)
	jmp	Lj1805
Lj1802:
	movl	-40(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-36(%ebp),%eax
	movl	%eax,-24(%ebp)
	movw	-32(%ebp),%ax
	movw	%ax,-20(%ebp)
Lj1805:
	fldt	_$MATH$_Ld17
	fldt	-28(%ebp)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	_$MATH$_Ld17
	fldt	-16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1808
	jmp	Lj1809
Lj1808:
	movl	-16(%ebp),%eax
	movl	%eax,8(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%ebp)
	movw	-8(%ebp),%ax
	movw	%ax,16(%ebp)
	jmp	Lj1812
Lj1809:
	movl	_$MATH$_Ld17,%eax
	movl	%eax,8(%ebp)
	movl	_$MATH$_Ld17+4,%eax
	movl	%eax,12(%ebp)
	movw	_$MATH$_Ld17+8,%ax
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
	ret	$36

.text
	.balign 4,0x90
.globl	MATH_SAMEVALUE$EXTENDED$EXTENDED$$BOOLEAN
MATH_SAMEVALUE$EXTENDED$EXTENDED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	movzwl	28(%ebp),%eax
	pushl	%eax
	pushl	24(%ebp)
	pushl	20(%ebp)
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	fldz
	subl	$12,%esp
	fstpt	(%esp)
	call	MATH_SAMEVALUE$EXTENDED$EXTENDED$EXTENDED$$BOOLEAN
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret	$24

.text
	.balign 4,0x90
.globl	MATH_SAMEVALUE$DOUBLE$DOUBLE$$BOOLEAN
MATH_SAMEVALUE$DOUBLE$DOUBLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	fldz
	subl	$8,%esp
	fstpl	(%esp)
	call	MATH_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	MATH_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN
MATH_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
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
	fstpt	-52(%ebp)
	fldl	24(%ebp)
	fabs
	fstpt	-64(%ebp)
	fldt	-52(%ebp)
	fldt	-64(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1854
	jmp	Lj1855
Lj1854:
	movl	-64(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-36(%ebp)
	movw	-56(%ebp),%ax
	movw	%ax,-32(%ebp)
	jmp	Lj1858
Lj1855:
	movl	-52(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-48(%ebp),%eax
	movl	%eax,-36(%ebp)
	movw	-44(%ebp),%ax
	movw	%ax,-32(%ebp)
Lj1858:
	fldt	_$MATH$_Ld16
	fldt	-40(%ebp)
	fmulp	%st,%st(1)
	fstpt	-28(%ebp)
	fldt	_$MATH$_Ld16
	fldt	-28(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1861
	jmp	Lj1862
Lj1861:
	movl	-28(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-12(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-8(%ebp)
	jmp	Lj1865
Lj1862:
	movl	_$MATH$_Ld16,%eax
	movl	%eax,-16(%ebp)
	movl	_$MATH$_Ld16+4,%eax
	movl	%eax,-12(%ebp)
	movw	_$MATH$_Ld16+8,%ax
	movw	%ax,-8(%ebp)
Lj1865:
	fldt	-16(%ebp)
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
	ret	$24

.text
	.balign 4,0x90
.globl	MATH_SAMEVALUE$SINGLE$SINGLE$$BOOLEAN
MATH_SAMEVALUE$SINGLE$SINGLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	pushl	12(%ebp)
	pushl	8(%ebp)
	fldz
	subl	$4,%esp
	fstps	(%esp)
	call	MATH_SAMEVALUE$SINGLE$SINGLE$SINGLE$$BOOLEAN
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	MATH_SAMEVALUE$SINGLE$SINGLE$SINGLE$$BOOLEAN
MATH_SAMEVALUE$SINGLE$SINGLE$SINGLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
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
	fstpt	-52(%ebp)
	flds	16(%ebp)
	fabs
	fstpt	-64(%ebp)
	fldt	-52(%ebp)
	fldt	-64(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1897
	jmp	Lj1898
Lj1897:
	movl	-64(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-36(%ebp)
	movw	-56(%ebp),%ax
	movw	%ax,-32(%ebp)
	jmp	Lj1901
Lj1898:
	movl	-52(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-48(%ebp),%eax
	movl	%eax,-36(%ebp)
	movw	-44(%ebp),%ax
	movw	%ax,-32(%ebp)
Lj1901:
	fldt	_$MATH$_Ld18
	fldt	-40(%ebp)
	fmulp	%st,%st(1)
	fstpt	-28(%ebp)
	fldt	_$MATH$_Ld18
	fldt	-28(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1904
	jmp	Lj1905
Lj1904:
	movl	-28(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-12(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-8(%ebp)
	jmp	Lj1908
Lj1905:
	movl	_$MATH$_Ld18,%eax
	movl	%eax,-16(%ebp)
	movl	_$MATH$_Ld18+4,%eax
	movl	%eax,-12(%ebp)
	movw	_$MATH$_Ld18+8,%ax
	movw	%ax,-8(%ebp)
Lj1908:
	fldt	-16(%ebp)
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
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_IFTHEN$BOOLEAN$LONGINT$LONGINT$$LONGINT
MATH_IFTHEN$BOOLEAN$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
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
	.balign 4,0x90
.globl	MATH_IFTHEN$BOOLEAN$INT64$INT64$$INT64
MATH_IFTHEN$BOOLEAN$INT64$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
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
	ret	$16

.text
	.balign 4,0x90
.globl	MATH_IFTHEN$BOOLEAN$DOUBLE$DOUBLE$$DOUBLE
MATH_IFTHEN$BOOLEAN$DOUBLE$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
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
	ret	$16

.text
	.balign 4,0x90
.globl	MATH_COMPAREVALUE$LONGINT$LONGINT$$TVALUERELATIONSHIP
MATH_COMPAREVALUE$LONGINT$LONGINT$$TVALUERELATIONSHIP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
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
	.balign 4,0x90
.globl	MATH_COMPAREVALUE$INT64$INT64$$TVALUERELATIONSHIP
MATH_COMPAREVALUE$INT64$INT64$$TVALUERELATIONSHIP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	movb	$1,-1(%ebp)
	movl	16(%ebp),%edx
	movl	20(%ebp),%eax
	cmpl	12(%ebp),%eax
	jne	Lj1963
	cmpl	8(%ebp),%edx
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
	ret	$16

.text
	.balign 4,0x90
.globl	MATH_COMPAREVALUE$QWORD$QWORD$$TVALUERELATIONSHIP
MATH_COMPAREVALUE$QWORD$QWORD$$TVALUERELATIONSHIP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	movb	$1,-1(%ebp)
	movl	16(%ebp),%edx
	movl	20(%ebp),%eax
	cmpl	12(%ebp),%eax
	jne	Lj1976
	cmpl	8(%ebp),%edx
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
	ret	$16

.text
	.balign 4,0x90
.globl	MATH_COMPAREVALUE$SINGLE$SINGLE$SINGLE$$TVALUERELATIONSHIP
MATH_COMPAREVALUE$SINGLE$SINGLE$SINGLE$$TVALUERELATIONSHIP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
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
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_COMPAREVALUE$DOUBLE$DOUBLE$DOUBLE$$TVALUERELATIONSHIP
MATH_COMPAREVALUE$DOUBLE$DOUBLE$DOUBLE$$TVALUERELATIONSHIP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
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
	ret	$24

.text
	.balign 4,0x90
.globl	MATH_COMPAREVALUE$EXTENDED$EXTENDED$EXTENDED$$TVALUERELATIONSHIP
MATH_COMPAREVALUE$EXTENDED$EXTENDED$EXTENDED$$TVALUERELATIONSHIP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
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
	ret	$36

.text
	.balign 4,0x90
.globl	MATH_ROUNDTO$DOUBLE$TROUNDTORANGE$$DOUBLE
MATH_ROUNDTO$DOUBLE$TROUNDTORANGE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movb	%al,-4(%ebp)
	movzwl	_$MATH$_Ld19+8,%eax
	pushl	%eax
	pushl	_$MATH$_Ld19+4
	pushl	_$MATH$_Ld19
	movsbl	-4(%ebp),%eax
	call	MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED
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
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	MATH_ROUNDTO$EXTENDED$TROUNDTORANGE$$EXTENDED
MATH_ROUNDTO$EXTENDED$TROUNDTORANGE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movb	%al,-4(%ebp)
	movzwl	_$MATH$_Ld19+8,%eax
	pushl	%eax
	pushl	_$MATH$_Ld19+4
	pushl	_$MATH$_Ld19
	movsbl	-4(%ebp),%eax
	call	MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED
	fstpt	-28(%ebp)
	fldt	-28(%ebp)
	fldt	8(%ebp)
	fdivp	%st,%st(1)
	fistpq	-36(%ebp)
	fwait
	fildq	-36(%ebp)
	fldt	-28(%ebp)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_ROUNDTO$SINGLE$TROUNDTORANGE$$SINGLE
MATH_ROUNDTO$SINGLE$TROUNDTORANGE$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movb	%al,-4(%ebp)
	movzwl	_$MATH$_Ld19+8,%eax
	pushl	%eax
	pushl	_$MATH$_Ld19+4
	pushl	_$MATH$_Ld19
	movsbl	-4(%ebp),%eax
	call	MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED
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
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_SIMPLEROUNDTO$SINGLE$TROUNDTORANGE$$SINGLE
MATH_SIMPLEROUNDTO$SINGLE$TROUNDTORANGE$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movb	%al,-4(%ebp)
	movzwl	_$MATH$_Ld19+8,%eax
	pushl	%eax
	pushl	_$MATH$_Ld19+4
	pushl	_$MATH$_Ld19
	movsbl	-4(%ebp),%eax
	negl	%eax
	call	MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED
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
	flds	_$MATH$_Ld20
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
	flds	_$MATH$_Ld20
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
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	MATH_SIMPLEROUNDTO$DOUBLE$TROUNDTORANGE$$DOUBLE
MATH_SIMPLEROUNDTO$DOUBLE$TROUNDTORANGE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movb	%al,-4(%ebp)
	movzwl	_$MATH$_Ld19+8,%eax
	pushl	%eax
	pushl	_$MATH$_Ld19+4
	pushl	_$MATH$_Ld19
	movsbl	-4(%ebp),%eax
	negl	%eax
	call	MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED
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
	fldl	_$MATH$_Ld21
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
	fldl	_$MATH$_Ld21
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
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	MATH_SIMPLEROUNDTO$EXTENDED$TROUNDTORANGE$$EXTENDED
MATH_SIMPLEROUNDTO$EXTENDED$TROUNDTORANGE$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movb	%al,-4(%ebp)
	movzwl	_$MATH$_Ld19+8,%eax
	pushl	%eax
	pushl	_$MATH$_Ld19+4
	pushl	_$MATH$_Ld19
	movsbl	-4(%ebp),%eax
	negl	%eax
	call	MATH_INTPOWER$EXTENDED$LONGINT$$EXTENDED
	fstpt	-28(%ebp)
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj2091
	jmp	Lj2092
Lj2091:
	fnstcw	-32(%ebp)
	fnstcw	-30(%ebp)
	orw	$3840,-32(%ebp)
	fldt	-28(%ebp)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fldt	_$MATH$_Ld6
	fsubrp	%st,%st(1)
	fldcw	-32(%ebp)
	fistpq	-40(%ebp)
	fldcw	-30(%ebp)
	fwait
	fildq	-40(%ebp)
	fldt	-28(%ebp)
	fdivrp	%st,%st(1)
	fstpt	-16(%ebp)
	jmp	Lj2095
Lj2092:
	fnstcw	-32(%ebp)
	fnstcw	-30(%ebp)
	orw	$3840,-32(%ebp)
	fldt	-28(%ebp)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fldt	_$MATH$_Ld6
	faddp	%st,%st(1)
	fldcw	-32(%ebp)
	fistpq	-40(%ebp)
	fldcw	-30(%ebp)
	fwait
	fildq	-40(%ebp)
	fldt	-28(%ebp)
	fdivrp	%st,%st(1)
	fstpt	-16(%ebp)
Lj2095:
	fldt	-16(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MATH_RANDOMFROM$array_of_DOUBLE$$DOUBLE
MATH_RANDOMFROM$array_of_DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	incl	%eax
	call	SYSTEM_RANDOM$LONGINT$$LONGINT
	movl	(%ebx,%eax,8),%edx
	movl	%edx,-16(%ebp)
	movl	4(%ebx,%eax,8),%eax
	movl	%eax,-12(%ebp)
	fldl	-16(%ebp)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_RANDOMFROM$array_of_LONGINT$$LONGINT
MATH_RANDOMFROM$array_of_LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	incl	%eax
	call	SYSTEM_RANDOM$LONGINT$$LONGINT
	movl	(%ebx,%eax,4),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	MATH_RANDOMFROM$array_of_INT64$$INT64
MATH_RANDOMFROM$array_of_INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	incl	%eax
	call	SYSTEM_RANDOM$LONGINT$$LONGINT
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

.data
	.balign 4
.globl	_$MATH$_Ld22
_$MATH$_Ld22:
	.byte	16
	.ascii	"EInvalidArgument"

.data
	.balign 4
.globl	VMT_MATH_EINVALIDARGUMENT
VMT_MATH_EINVALIDARGUMENT:
	.long	12,-12
	.long	VMT_SYSUTILS_EMATHERROR
	.long	_$MATH$_Ld22
	.long	0,0
	.long	_$MATH$_Ld23
	.long	RTTI_MATH_EINVALIDARGUMENT
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	SYSTEM_TOBJECT_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	0

.data
	.balign 4
.globl	THREADVARLIST_MATH
THREADVARLIST_MATH:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$MATH$_Ld25
_$MATH$_Ld25:
	.ascii	"MATH\000"

.data
	.balign 4
	.short	0,1
	.long	-1,15
.globl	_$MATH$_Ld26
_$MATH$_Ld26:
	.ascii	"Math Error : %s\000"
	.balign 4
	.short	0,1
	.long	-1,15
.globl	_$MATH$_Ld27
_$MATH$_Ld27:
	.ascii	"math.smatherror\000"

.data
	.balign 4
	.short	0,1
	.long	-1,16
.globl	_$MATH$_Ld28
_$MATH$_Ld28:
	.ascii	"Invalid argument\000"
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$MATH$_Ld29
_$MATH$_Ld29:
	.ascii	"math.sinvalidargument\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.balign 4
.globl	_$MATH$_Ld1
_$MATH$_Ld1:
	.byte	0,0,0,0,0,0,0,180,6,64

.data
	.balign 4
.globl	_$MATH$_Ld2
_$MATH$_Ld2:
	.byte	0,0,0,0,0,0,0,200,6,64

.data
	.balign 4
.globl	_$MATH$_Ld3
_$MATH$_Ld3:
	.byte	57,142,227,56,142,227,56,142,255,63

.data
	.balign 4
.globl	_$MATH$_Ld4
_$MATH$_Ld4:
	.byte	102,102,102,102,102,102,102,230,254,63

.data
	.balign 4
.globl	_$MATH$_Ld5
_$MATH$_Ld5:
	.byte	0,0,0,0,0,0,0,128,0,64

.data
	.balign 4
.globl	_$MATH$_Ld6
_$MATH$_Ld6:
	.byte	0,0,0,0,0,0,0,128,254,63

.data
	.balign 4
.globl	_$MATH$_Ld7
_$MATH$_Ld7:
	.byte	181,148,162,38,171,199,113,177,11,64

.data
	.balign 4
.globl	_$MATH$_Ld8
_$MATH$_Ld8:
	.byte	181,148,162,38,171,199,113,177,11,192

.data
	.balign 4
.globl	_$MATH$_Ld9
_$MATH$_Ld9:
	.byte	0,0,0,0,0,0,0,128,255,191

.data
	.balign 4
.globl	_$MATH$_Ld10
_$MATH$_Ld10:
	.byte	0,0,0,0,0,0,0,128,0,192

.data
	.balign 4
.globl	_$MATH$_Ld11
_$MATH$_Ld11:
	.byte	23,172,168,170,221,141,93,147,0,64

.data
	.balign 4
.globl	_$MATH$_Ld12
_$MATH$_Ld12:
	.byte	172,121,207,209,247,23,114,177,254,63

.data
	.balign 4
.globl	_$MATH$_Ld13
_$MATH$_Ld13:
	.byte	0,0,0,0,254,255,255,255,29,64

.data
	.balign 4
.globl	_$MATH$_Ld14
_$MATH$_Ld14:
	.byte	23,183,209,56

.data
	.balign 4
.globl	_$MATH$_Ld15
_$MATH$_Ld15:
	.byte	17,234,45,129,153,151,113,61

.data
	.balign 4
.globl	_$MATH$_Ld16
_$MATH$_Ld16:
	.byte	204,136,80,111,9,204,188,140,215,63

.data
	.balign 4
.globl	_$MATH$_Ld17
_$MATH$_Ld17:
	.byte	91,225,77,196,190,148,149,230,201,63

.data
	.balign 4
.globl	_$MATH$_Ld18
_$MATH$_Ld18:
	.byte	44,101,25,226,88,23,183,209,241,63

.data
	.balign 4
.globl	_$MATH$_Ld19
_$MATH$_Ld19:
	.byte	0,0,0,0,0,0,0,160,2,64

.data
	.balign 4
.globl	_$MATH$_Ld20
_$MATH$_Ld20:
	.byte	0,0,0,63

.data
	.balign 4
.globl	_$MATH$_Ld21
_$MATH$_Ld21:
	.byte	0,0,0,0,0,0,224,63
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.data
	.balign 4
.globl	INIT_MATH_PFLOAT
INIT_MATH_PFLOAT:
	.byte	0
	.ascii	"\006PFloat"

.data
	.balign 4
.globl	RTTI_MATH_PFLOAT
RTTI_MATH_PFLOAT:
	.byte	0
	.ascii	"\006PFloat"

.data
	.balign 4
.globl	INIT_MATH_TPAYMENTTIME
INIT_MATH_TPAYMENTTIME:
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

.data
	.balign 4
.globl	RTTI_MATH_TPAYMENTTIME
RTTI_MATH_TPAYMENTTIME:
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

.data
	.balign 4
.globl	RTTI_MATH_TPAYMENTTIME_s2o
RTTI_MATH_TPAYMENTTIME_s2o:
	.long	2,0
	.long	RTTI_MATH_TPAYMENTTIME+27
	.long	1
	.long	RTTI_MATH_TPAYMENTTIME+41

.data
	.balign 4
.globl	RTTI_MATH_TPAYMENTTIME_o2s
RTTI_MATH_TPAYMENTTIME_o2s:
	.long	0
	.long	RTTI_MATH_TPAYMENTTIME+27
	.long	RTTI_MATH_TPAYMENTTIME+41

.data
	.balign 4
.globl	_$MATH$_Ld23
_$MATH$_Ld23:
	.short	0
	.long	_$MATH$_Ld24
	.balign 4
.globl	_$MATH$_Ld24
_$MATH$_Ld24:
	.short	0

.data
	.balign 4
.globl	INIT_MATH_EINVALIDARGUMENT
INIT_MATH_EINVALIDARGUMENT:
	.byte	15,16
	.ascii	"EInvalidArgument"
	.long	4,0

.data
	.balign 4
.globl	RTTI_MATH_EINVALIDARGUMENT
RTTI_MATH_EINVALIDARGUMENT:
	.byte	15,16
	.ascii	"EInvalidArgument"
	.long	VMT_MATH_EINVALIDARGUMENT
	.long	RTTI_SYSUTILS_EMATHERROR
	.short	0
	.byte	4
	.ascii	"math"
	.short	0

.data
	.balign 4
.globl	INIT_MATH_TVALUERELATIONSHIP
INIT_MATH_TVALUERELATIONSHIP:
	.byte	1,18
	.ascii	"TValueRelationship"
	.byte	0
	.long	-1,1

.data
	.balign 4
.globl	RTTI_MATH_TVALUERELATIONSHIP
RTTI_MATH_TVALUERELATIONSHIP:
	.byte	1,18
	.ascii	"TValueRelationship"
	.byte	0
	.long	-1,1

.data
	.balign 4
.globl	INIT_MATH_TVALUESIGN
INIT_MATH_TVALUESIGN:
	.byte	1,10
	.ascii	"TValueSign"
	.byte	0
	.long	-1,1

.data
	.balign 4
.globl	RTTI_MATH_TVALUESIGN
RTTI_MATH_TVALUESIGN:
	.byte	1,10
	.ascii	"TValueSign"
	.byte	0
	.long	-1,1

.data
	.balign 4
.globl	INIT_MATH_TROUNDTORANGE
INIT_MATH_TROUNDTORANGE:
	.byte	1,13
	.ascii	"TRoundToRange"
	.byte	0
	.long	-37,37

.data
	.balign 4
.globl	RTTI_MATH_TROUNDTORANGE
RTTI_MATH_TROUNDTORANGE:
	.byte	1,13
	.ascii	"TRoundToRange"
	.byte	0
	.long	-37,37

.data
	.balign 4
.globl	INIT_MATH_TFPUROUNDINGMODE
INIT_MATH_TFPUROUNDINGMODE:
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

.data
	.balign 4
.globl	RTTI_MATH_TFPUROUNDINGMODE
RTTI_MATH_TFPUROUNDINGMODE:
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

.data
	.balign 4
.globl	RTTI_MATH_TFPUROUNDINGMODE_s2o
RTTI_MATH_TFPUROUNDINGMODE_s2o:
	.long	4,1
	.long	RTTI_MATH_TFPUROUNDINGMODE+41
	.long	0
	.long	RTTI_MATH_TFPUROUNDINGMODE+31
	.long	3
	.long	RTTI_MATH_TFPUROUNDINGMODE+53
	.long	2
	.long	RTTI_MATH_TFPUROUNDINGMODE+48

.data
	.balign 4
.globl	RTTI_MATH_TFPUROUNDINGMODE_o2s
RTTI_MATH_TFPUROUNDINGMODE_o2s:
	.long	0
	.long	RTTI_MATH_TFPUROUNDINGMODE+31
	.long	RTTI_MATH_TFPUROUNDINGMODE+41
	.long	RTTI_MATH_TFPUROUNDINGMODE+48
	.long	RTTI_MATH_TFPUROUNDINGMODE+53

.data
	.balign 4
.globl	INIT_MATH_TFPUPRECISIONMODE
INIT_MATH_TFPUPRECISIONMODE:
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

.data
	.balign 4
.globl	RTTI_MATH_TFPUPRECISIONMODE
RTTI_MATH_TFPUPRECISIONMODE:
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

.data
	.balign 4
.globl	RTTI_MATH_TFPUPRECISIONMODE_s2o
RTTI_MATH_TFPUPRECISIONMODE_s2o:
	.long	4,2
	.long	RTTI_MATH_TFPUPRECISIONMODE+52
	.long	3
	.long	RTTI_MATH_TFPUPRECISIONMODE+61
	.long	1
	.long	RTTI_MATH_TFPUPRECISIONMODE+41
	.long	0
	.long	RTTI_MATH_TFPUPRECISIONMODE+32

.data
	.balign 4
.globl	RTTI_MATH_TFPUPRECISIONMODE_o2s
RTTI_MATH_TFPUPRECISIONMODE_o2s:
	.long	0
	.long	RTTI_MATH_TFPUPRECISIONMODE+32
	.long	RTTI_MATH_TFPUPRECISIONMODE+41
	.long	RTTI_MATH_TFPUPRECISIONMODE+52
	.long	RTTI_MATH_TFPUPRECISIONMODE+61

.data
	.balign 4
.globl	INIT_MATH_TFPUEXCEPTION
INIT_MATH_TFPUEXCEPTION:
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

.data
	.balign 4
.globl	RTTI_MATH_TFPUEXCEPTION
RTTI_MATH_TFPUEXCEPTION:
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

.data
	.balign 4
.globl	RTTI_MATH_TFPUEXCEPTION_s2o
RTTI_MATH_TFPUEXCEPTION_s2o:
	.long	6,1
	.long	RTTI_MATH_TFPUEXCEPTION+40
	.long	0
	.long	RTTI_MATH_TFPUEXCEPTION+28
	.long	3
	.long	RTTI_MATH_TFPUEXCEPTION+68
	.long	5
	.long	RTTI_MATH_TFPUEXCEPTION+91
	.long	4
	.long	RTTI_MATH_TFPUEXCEPTION+79
	.long	2
	.long	RTTI_MATH_TFPUEXCEPTION+55

.data
	.balign 4
.globl	RTTI_MATH_TFPUEXCEPTION_o2s
RTTI_MATH_TFPUEXCEPTION_o2s:
	.long	0
	.long	RTTI_MATH_TFPUEXCEPTION+28
	.long	RTTI_MATH_TFPUEXCEPTION+40
	.long	RTTI_MATH_TFPUEXCEPTION+55
	.long	RTTI_MATH_TFPUEXCEPTION+68
	.long	RTTI_MATH_TFPUEXCEPTION+79
	.long	RTTI_MATH_TFPUEXCEPTION+91

.data
	.balign 4
.globl	INIT_MATH_TFPUEXCEPTIONMASK
INIT_MATH_TFPUEXCEPTIONMASK:
	.byte	5,17
	.ascii	"TFPUExceptionMask"
	.byte	5
	.long	INIT_MATH_TFPUEXCEPTION

.data
	.balign 4
.globl	RTTI_MATH_TFPUEXCEPTIONMASK
RTTI_MATH_TFPUEXCEPTIONMASK:
	.byte	5,17
	.ascii	"TFPUExceptionMask"
	.byte	5
	.long	RTTI_MATH_TFPUEXCEPTION
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
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.balign 4
.globl	RESSTR_MATH_START
RESSTR_MATH_START:
	.long	_$MATH$_Ld25
	.long	0,0,0

.data
	.balign 4
.globl	RESSTR_MATH_SMATHERROR
RESSTR_MATH_SMATHERROR:
	.long	_$MATH$_Ld27
	.long	_$MATH$_Ld26
	.long	_$MATH$_Ld26
	.long	216488147

.data
	.balign 4
.globl	RESSTR_MATH_SINVALIDARGUMENT
RESSTR_MATH_SINVALIDARGUMENT:
	.long	_$MATH$_Ld29
	.long	_$MATH$_Ld28
	.long	_$MATH$_Ld28
	.long	12736788

.data
	.balign 4
.globl	RESSTR_MATH_END
RESSTR_MATH_END:
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end

