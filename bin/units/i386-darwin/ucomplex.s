# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_UCOMPLEX_CINIT$REAL$REAL$$COMPLEX
_UCOMPLEX_CINIT$REAL$REAL$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	16(%ebp),%eax
	movl	%eax,(%edx)
	movl	20(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,8(%edx)
	movl	12(%ebp),%eax
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CSAMEVALUE$COMPLEX$COMPLEX$$BOOLEAN
_UCOMPLEX_CSAMEVALUE$COMPLEX$COMPLEX$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%esi,-52(%ebp)
	movl	%edi,-48(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-28(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%esi
	leal	-44(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldz
	fstpl	(%esp)
	movl	-44(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-40(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,20(%esp)
	call	L_MATH_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj13
	jmp	Lj12
Lj13:
	fldz
	fstpl	(%esp)
	movl	-36(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,20(%esp)
	call	L_MATH_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj11
	jmp	Lj12
Lj11:
	movb	$1,-9(%ebp)
	jmp	Lj30
Lj12:
	movb	$0,-9(%ebp)
Lj30:
	movb	-9(%ebp),%al
	movl	-52(%ebp),%esi
	movl	-48(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_assign$REAL$$COMPLEX
_UCOMPLEX_assign$REAL$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,(%edx)
	movl	12(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	fldz
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_plus$COMPLEX$COMPLEX$$COMPLEX
_UCOMPLEX_plus$COMPLEX$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-52(%ebp)
	movl	%edi,-48(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%esi
	leal	-28(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%esi
	leal	-44(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-44(%ebp)
	fldl	-28(%ebp)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	fldl	-36(%ebp)
	fldl	-20(%ebp)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-52(%ebp),%esi
	movl	-48(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_plus$COMPLEX$REAL$$COMPLEX
_UCOMPLEX_plus$COMPLEX$REAL$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	8(%ebp)
	fldl	-24(%ebp)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_plus$REAL$COMPLEX$$COMPLEX
_UCOMPLEX_plus$REAL$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	8(%ebp)
	fldl	-24(%ebp)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_minus$COMPLEX$COMPLEX$$COMPLEX
_UCOMPLEX_minus$COMPLEX$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-52(%ebp)
	movl	%edi,-48(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%esi
	leal	-28(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%esi
	leal	-44(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-44(%ebp)
	fldl	-28(%ebp)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	fldl	-36(%ebp)
	fldl	-20(%ebp)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-52(%ebp),%esi
	movl	-48(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_minus$COMPLEX$REAL$$COMPLEX
_UCOMPLEX_minus$COMPLEX$REAL$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	8(%ebp)
	fldl	-24(%ebp)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_minus$COMPLEX$$COMPLEX
_UCOMPLEX_minus$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-24(%ebp)
	fchs
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	-16(%ebp)
	fchs
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_minus$REAL$COMPLEX$$COMPLEX
_UCOMPLEX_minus$REAL$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-24(%ebp)
	fldl	8(%ebp)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	-16(%ebp)
	fchs
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_star$COMPLEX$COMPLEX$$COMPLEX
_UCOMPLEX_star$COMPLEX$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-52(%ebp)
	movl	%edi,-48(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%esi
	leal	-28(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%esi
	leal	-44(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-44(%ebp)
	fldl	-28(%ebp)
	fmulp	%st,%st(1)
	fldl	-36(%ebp)
	fldl	-20(%ebp)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	fldl	-36(%ebp)
	fldl	-28(%ebp)
	fmulp	%st,%st(1)
	fldl	-44(%ebp)
	fldl	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-52(%ebp),%esi
	movl	-48(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_star$COMPLEX$REAL$$COMPLEX
_UCOMPLEX_star$COMPLEX$REAL$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	8(%ebp)
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	8(%ebp)
	fldl	-16(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_star$REAL$COMPLEX$$COMPLEX
_UCOMPLEX_star$REAL$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	8(%ebp)
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	8(%ebp)
	fldl	-16(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_slash$COMPLEX$COMPLEX$$COMPLEX
_UCOMPLEX_slash$COMPLEX$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%esi,-68(%ebp)
	movl	%edi,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%esi
	leal	-44(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%esi
	leal	-60(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-60(%ebp)
	fabs
	fldl	-52(%ebp)
	fabs
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj99
	jmp	Lj100
Lj99:
	fldl	-60(%ebp)
	fldl	-52(%ebp)
	fdivp	%st,%st(1)
	fstpl	-20(%ebp)
	fldl	-20(%ebp)
	fldl	-52(%ebp)
	fmulp	%st,%st(1)
	fldl	-60(%ebp)
	faddp	%st,%st(1)
	fstpl	-28(%ebp)
	fldl	-20(%ebp)
	fldl	-36(%ebp)
	fmulp	%st,%st(1)
	fldl	-44(%ebp)
	faddp	%st,%st(1)
	fldl	-28(%ebp)
	fdivrp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	fldl	-20(%ebp)
	fldl	-44(%ebp)
	fmulp	%st,%st(1)
	fldl	-36(%ebp)
	fsubp	%st,%st(1)
	fldl	-28(%ebp)
	fdivrp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	jmp	Lj109
Lj100:
	fldl	-52(%ebp)
	fldl	-60(%ebp)
	fdivp	%st,%st(1)
	fstpl	-20(%ebp)
	fldl	-20(%ebp)
	fldl	-60(%ebp)
	fmulp	%st,%st(1)
	fldl	-52(%ebp)
	faddp	%st,%st(1)
	fstpl	-28(%ebp)
	fldl	-20(%ebp)
	fldl	-44(%ebp)
	fmulp	%st,%st(1)
	fldl	-36(%ebp)
	faddp	%st,%st(1)
	fldl	-28(%ebp)
	fdivrp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	fldl	-44(%ebp)
	fchs
	fldl	-20(%ebp)
	fldl	-36(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	-28(%ebp)
	fdivrp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
Lj109:
	movl	-68(%ebp),%esi
	movl	-64(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_slash$COMPLEX$REAL$$COMPLEX
_UCOMPLEX_slash$COMPLEX$REAL$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	8(%ebp)
	fldl	-24(%ebp)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	8(%ebp)
	fldl	-16(%ebp)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_slash$REAL$COMPLEX$$COMPLEX
_UCOMPLEX_slash$REAL$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-32(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-32(%ebp)
	fldl	-32(%ebp)
	fmulp	%st,%st(1)
	fldl	-24(%ebp)
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	-16(%ebp)
	fldl	-32(%ebp)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fldl	-16(%ebp)
	fdivrp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	-24(%ebp)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fchs
	fldl	-16(%ebp)
	fdivrp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CMOD$COMPLEX$$REAL
_UCOMPLEX_CMOD$COMPLEX$$REAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-28(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-28(%ebp)
	fldl	-28(%ebp)
	fmulp	%st,%st(1)
	fldl	-20(%ebp)
	fldl	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fsqrt
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CARG$COMPLEX$$REAL
_UCOMPLEX_CARG$COMPLEX$$REAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-28(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-28(%ebp)
	fstpt	(%esp)
	fldl	-20(%ebp)
	fstpt	12(%esp)
	call	L_MATH_ARCTAN2$EXTENDED$EXTENDED$$EXTENDED$stub
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CONG$COMPLEX$$COMPLEX
_UCOMPLEX_CONG$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,(%edx)
	movl	-20(%ebp),%eax
	movl	%eax,4(%edx)
	fldl	-16(%ebp)
	fchs
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CINV$COMPLEX$$COMPLEX
_UCOMPLEX_CINV$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-32(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-32(%ebp)
	fldl	-32(%ebp)
	fmulp	%st,%st(1)
	fldl	-24(%ebp)
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	fldl	-32(%ebp)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	-24(%ebp)
	fchs
	fldl	-16(%ebp)
	fdivrp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_equal$COMPLEX$COMPLEX$$BOOLEAN
_UCOMPLEX_equal$COMPLEX$COMPLEX$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-52(%ebp)
	movl	%edi,-48(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-28(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%esi
	leal	-44(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-44(%ebp)
	fldl	-28(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj162
	jmp	Lj161
Lj162:
	fldl	-36(%ebp)
	fldl	-20(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj160
	jmp	Lj161
Lj160:
	movb	$1,-9(%ebp)
	jmp	Lj163
Lj161:
	movb	$0,-9(%ebp)
Lj163:
	movb	-9(%ebp),%al
	movl	-52(%ebp),%esi
	movl	-48(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_equal$COMPLEX$REAL$$BOOLEAN
_UCOMPLEX_equal$COMPLEX$REAL$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	8(%ebp)
	fldl	-24(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj168
	jmp	Lj167
Lj168:
	fldz
	fldl	-16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj166
	jmp	Lj167
Lj166:
	movb	$1,-5(%ebp)
	jmp	Lj169
Lj167:
	movb	$0,-5(%ebp)
Lj169:
	movb	-5(%ebp),%al
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_equal$REAL$COMPLEX$$BOOLEAN
_UCOMPLEX_equal$REAL$COMPLEX$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	8(%ebp)
	fldl	-24(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj174
	jmp	Lj173
Lj174:
	fldz
	fldl	-16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj172
	jmp	Lj173
Lj172:
	movb	$1,-5(%ebp)
	jmp	Lj175
Lj173:
	movb	$0,-5(%ebp)
Lj175:
	movb	-5(%ebp),%al
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CEXP$COMPLEX$$COMPLEX
_UCOMPLEX_CEXP$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-32(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-32(%ebp)
	fstpt	(%esp)
	call	Lfpc_exp_real$stub
	fstpl	-16(%ebp)
	fldl	-24(%ebp)
	fcos
	fldl	-16(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	-24(%ebp)
	fsin
	fldl	-16(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CLN$COMPLEX$$COMPLEX
_UCOMPLEX_CLN$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-24(%ebp),%eax
	call	L_UCOMPLEX_CMOD$COMPLEX$$REAL$stub
	fldln2
	fxch
	fyl2x
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	-24(%ebp)
	fstpt	(%esp)
	fldl	-16(%ebp)
	fstpt	12(%esp)
	call	L_MATH_ARCTAN2$EXTENDED$EXTENDED$$EXTENDED$stub
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CSQR$COMPLEX$$COMPLEX
_UCOMPLEX_CSQR$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	call	Lj199
Lj199:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-24(%ebp)
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	fldl	-16(%ebp)
	fldl	-16(%ebp)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	-24(%ebp)
	movl	L_$UCOMPLEX$_Ld1$non_lazy_ptr-Lj199(%ebx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	fldl	-16(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CSQRT$COMPLEX$$COMPLEX
_UCOMPLEX_CSQRT$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%esi,-48(%ebp)
	movl	%edi,-44(%ebp)
	call	Lj205
Lj205:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-40(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldz
	fldl	-40(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jne	Lj206
	jmp	Lj208
Lj208:
	fldz
	fldl	-32(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jne	Lj206
	jmp	Lj207
Lj206:
	leal	-40(%ebp),%eax
	call	L_UCOMPLEX_CMOD$COMPLEX$$REAL$stub
	fldl	-40(%ebp)
	fabs
	faddp	%st,%st(1)
	movl	L_$UCOMPLEX$_Ld2$non_lazy_ptr-Lj205(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fsqrt
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	movl	L_$UCOMPLEX$_Ld1$non_lazy_ptr-Lj205(%ebx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	fldl	-32(%ebp)
	fdivp	%st,%st(1)
	fstpl	-24(%ebp)
	fldz
	fldl	-40(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jae	Lj215
	jmp	Lj216
Lj215:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-20(%ebp),%eax
	movl	%eax,12(%edx)
	jmp	Lj221
Lj216:
	fldz
	fldl	-32(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj222
	jmp	Lj223
Lj222:
	fldl	-24(%ebp)
	fchs
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	-16(%ebp)
	fchs
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	jmp	Lj228
Lj223:
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,(%edx)
	movl	-20(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movl	%eax,12(%edx)
Lj228:
Lj221:
	jmp	Lj233
Lj207:
	movl	-8(%ebp),%edi
	leal	-40(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
Lj233:
	movl	-52(%ebp),%ebx
	movl	-48(%ebp),%esi
	movl	-44(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_starstar$COMPLEX$COMPLEX$$COMPLEX
_UCOMPLEX_starstar$COMPLEX$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%esi,-100(%ebp)
	movl	%edi,-96(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%esi
	leal	-28(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%esi
	leal	-44(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-92(%ebp),%edx
	leal	-28(%ebp),%eax
	call	L_UCOMPLEX_CLN$COMPLEX$$COMPLEX$stub
	leal	-76(%ebp),%edi
	leal	-92(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-76(%ebp)
	fldl	-44(%ebp)
	fmulp	%st,%st(1)
	fldl	-68(%ebp)
	fldl	-36(%ebp)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fstpl	-60(%ebp)
	fldl	-68(%ebp)
	fldl	-44(%ebp)
	fmulp	%st,%st(1)
	fldl	-76(%ebp)
	fldl	-36(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	-52(%ebp)
	leal	-60(%ebp),%eax
	movl	-12(%ebp),%edx
	call	L_UCOMPLEX_CEXP$COMPLEX$$COMPLEX$stub
	movl	-100(%ebp),%esi
	movl	-96(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_starstar$COMPLEX$REAL$$COMPLEX
_UCOMPLEX_starstar$COMPLEX$REAL$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%esi,-80(%ebp)
	movl	%edi,-76(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-72(%ebp),%edx
	leal	-24(%ebp),%eax
	call	L_UCOMPLEX_CLN$COMPLEX$$COMPLEX$stub
	leal	-56(%ebp),%edi
	leal	-72(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	8(%ebp)
	fldl	-56(%ebp)
	fmulp	%st,%st(1)
	fstpl	-40(%ebp)
	fldl	8(%ebp)
	fldl	-48(%ebp)
	fmulp	%st,%st(1)
	fstpl	-32(%ebp)
	leal	-40(%ebp),%eax
	movl	-8(%ebp),%edx
	call	L_UCOMPLEX_CEXP$COMPLEX$$COMPLEX$stub
	movl	-80(%ebp),%esi
	movl	-76(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_starstar$REAL$COMPLEX$$COMPLEX
_UCOMPLEX_starstar$REAL$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	8(%ebp)
	fldln2
	fxch
	fyl2x
	fstpl	-56(%ebp)
	fldl	-56(%ebp)
	fstpl	-48(%ebp)
	fldl	-48(%ebp)
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	fstpl	-40(%ebp)
	fldl	-48(%ebp)
	fldl	-16(%ebp)
	fmulp	%st,%st(1)
	fstpl	-32(%ebp)
	leal	-40(%ebp),%eax
	movl	-8(%ebp),%edx
	call	L_UCOMPLEX_CEXP$COMPLEX$$COMPLEX$stub
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CCOS$COMPLEX$$COMPLEX
_UCOMPLEX_CCOS$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-16(%ebp)
	fstpt	(%esp)
	call	L_MATH_COSH$EXTENDED$$EXTENDED$stub
	fldl	-24(%ebp)
	fcos
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	-16(%ebp)
	fstpt	(%esp)
	call	L_MATH_SINH$EXTENDED$$EXTENDED$stub
	fldl	-24(%ebp)
	fsin
	fchs
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CSIN$COMPLEX$$COMPLEX
_UCOMPLEX_CSIN$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-16(%ebp)
	fstpt	(%esp)
	call	L_MATH_COSH$EXTENDED$$EXTENDED$stub
	fldl	-24(%ebp)
	fsin
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	-16(%ebp)
	fstpt	(%esp)
	call	L_MATH_SINH$EXTENDED$$EXTENDED$stub
	fldl	-24(%ebp)
	fcos
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CTG$COMPLEX$$COMPLEX
_UCOMPLEX_CTG$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%esi,-80(%ebp)
	movl	%edi,-76(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-56(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-72(%ebp),%edx
	leal	-56(%ebp),%eax
	call	L_UCOMPLEX_CCOS$COMPLEX$$COMPLEX$stub
	leal	-24(%ebp),%edi
	leal	-72(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-72(%ebp),%edx
	leal	-56(%ebp),%eax
	call	L_UCOMPLEX_CSIN$COMPLEX$$COMPLEX$stub
	leal	-40(%ebp),%edi
	leal	-72(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-24(%ebp)
	fabs
	fldl	-16(%ebp)
	fabs
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj317
	jmp	Lj318
Lj317:
	fldl	-24(%ebp)
	fldl	-16(%ebp)
	fdivp	%st,%st(1)
	fstpl	-64(%ebp)
	fldl	-64(%ebp)
	fldl	-16(%ebp)
	fmulp	%st,%st(1)
	fldl	-24(%ebp)
	faddp	%st,%st(1)
	fstpl	-72(%ebp)
	fldl	-64(%ebp)
	fldl	-32(%ebp)
	fmulp	%st,%st(1)
	fldl	-40(%ebp)
	faddp	%st,%st(1)
	fldl	-72(%ebp)
	fdivrp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	-64(%ebp)
	fldl	-40(%ebp)
	fmulp	%st,%st(1)
	fldl	-32(%ebp)
	fsubp	%st,%st(1)
	fldl	-72(%ebp)
	fdivrp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	jmp	Lj327
Lj318:
	fldl	-16(%ebp)
	fldl	-24(%ebp)
	fdivp	%st,%st(1)
	fstpl	-64(%ebp)
	fldl	-64(%ebp)
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	fldl	-16(%ebp)
	faddp	%st,%st(1)
	fstpl	-72(%ebp)
	fldl	-64(%ebp)
	fldl	-40(%ebp)
	fmulp	%st,%st(1)
	fldl	-32(%ebp)
	faddp	%st,%st(1)
	fldl	-72(%ebp)
	fdivrp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	-40(%ebp)
	fchs
	fldl	-64(%ebp)
	fldl	-32(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	-72(%ebp)
	fdivrp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
Lj327:
	movl	-8(%ebp),%eax
	movl	-80(%ebp),%esi
	movl	-76(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CARC_COS$COMPLEX$$COMPLEX
_UCOMPLEX_CARC_COS$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%edi,-92(%ebp)
	call	Lj337
Lj337:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-56(%ebp),%edx
	leal	-24(%ebp),%eax
	call	L_UCOMPLEX_CARG_CH$COMPLEX$$COMPLEX$stub
	leal	-40(%ebp),%edi
	leal	-56(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-88(%ebp),%edi
	movl	L_TC_UCOMPLEX_I$non_lazy_ptr-Lj337(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-88(%ebp)
	fchs
	fstpl	-72(%ebp)
	fldl	-80(%ebp)
	fchs
	fstpl	-64(%ebp)
	leal	-56(%ebp),%edi
	leal	-72(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	fldl	-40(%ebp)
	fldl	-56(%ebp)
	fmulp	%st,%st(1)
	fldl	-32(%ebp)
	fldl	-48(%ebp)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	fldl	-32(%ebp)
	fldl	-56(%ebp)
	fmulp	%st,%st(1)
	fldl	-40(%ebp)
	fldl	-48(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	movl	-92(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CARC_SIN$COMPLEX$$COMPLEX
_UCOMPLEX_CARC_SIN$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%edi,-92(%ebp)
	call	Lj359
Lj359:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-88(%ebp),%edi
	movl	L_TC_UCOMPLEX_I$non_lazy_ptr-Lj359(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-24(%ebp)
	fldl	-88(%ebp)
	fmulp	%st,%st(1)
	fldl	-16(%ebp)
	fldl	-80(%ebp)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fstpl	-72(%ebp)
	fldl	-16(%ebp)
	fldl	-88(%ebp)
	fmulp	%st,%st(1)
	fldl	-24(%ebp)
	fldl	-80(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	-64(%ebp)
	leal	-72(%ebp),%eax
	leal	-56(%ebp),%edx
	call	L_UCOMPLEX_CARG_SH$COMPLEX$$COMPLEX$stub
	leal	-40(%ebp),%edi
	leal	-56(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-88(%ebp),%edi
	movl	L_TC_UCOMPLEX_I$non_lazy_ptr-Lj359(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-88(%ebp)
	fchs
	fstpl	-72(%ebp)
	fldl	-80(%ebp)
	fchs
	fstpl	-64(%ebp)
	leal	-56(%ebp),%edi
	leal	-72(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	fldl	-40(%ebp)
	fldl	-56(%ebp)
	fmulp	%st,%st(1)
	fldl	-32(%ebp)
	fldl	-48(%ebp)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	fldl	-32(%ebp)
	fldl	-56(%ebp)
	fmulp	%st,%st(1)
	fldl	-40(%ebp)
	fldl	-48(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	movl	-92(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CARC_TG$COMPLEX$$COMPLEX
_UCOMPLEX_CARC_TG$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%edi,-92(%ebp)
	call	Lj388
Lj388:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-88(%ebp),%edi
	movl	L_TC_UCOMPLEX_I$non_lazy_ptr-Lj388(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-24(%ebp)
	fldl	-88(%ebp)
	fmulp	%st,%st(1)
	fldl	-16(%ebp)
	fldl	-80(%ebp)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fstpl	-72(%ebp)
	fldl	-16(%ebp)
	fldl	-88(%ebp)
	fmulp	%st,%st(1)
	fldl	-24(%ebp)
	fldl	-80(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	-64(%ebp)
	leal	-72(%ebp),%eax
	leal	-56(%ebp),%edx
	call	L_UCOMPLEX_CARG_TH$COMPLEX$$COMPLEX$stub
	leal	-40(%ebp),%edi
	leal	-56(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-88(%ebp),%edi
	movl	L_TC_UCOMPLEX_I$non_lazy_ptr-Lj388(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-88(%ebp)
	fchs
	fstpl	-72(%ebp)
	fldl	-80(%ebp)
	fchs
	fstpl	-64(%ebp)
	leal	-56(%ebp),%edi
	leal	-72(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	fldl	-40(%ebp)
	fldl	-56(%ebp)
	fmulp	%st,%st(1)
	fldl	-32(%ebp)
	fldl	-48(%ebp)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	fldl	-32(%ebp)
	fldl	-56(%ebp)
	fmulp	%st,%st(1)
	fldl	-40(%ebp)
	fldl	-48(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	movl	-92(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CCH$COMPLEX$$COMPLEX
_UCOMPLEX_CCH$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-24(%ebp)
	fstpt	(%esp)
	call	L_MATH_COSH$EXTENDED$$EXTENDED$stub
	fldl	-16(%ebp)
	fcos
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	-24(%ebp)
	fstpt	(%esp)
	call	L_MATH_SINH$EXTENDED$$EXTENDED$stub
	fldl	-16(%ebp)
	fsin
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CSH$COMPLEX$$COMPLEX
_UCOMPLEX_CSH$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-24(%ebp)
	fstpt	(%esp)
	call	L_MATH_SINH$EXTENDED$$EXTENDED$stub
	fldl	-16(%ebp)
	fcos
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	-24(%ebp)
	fstpt	(%esp)
	call	L_MATH_COSH$EXTENDED$$EXTENDED$stub
	fldl	-16(%ebp)
	fsin
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CTH$COMPLEX$$COMPLEX
_UCOMPLEX_CTH$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-40(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-56(%ebp),%edx
	leal	-40(%ebp),%eax
	call	L_UCOMPLEX_CCH$COMPLEX$$COMPLEX$stub
	leal	-24(%ebp),%edi
	leal	-56(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-56(%ebp),%edx
	leal	-40(%ebp),%eax
	call	L_UCOMPLEX_CSH$COMPLEX$$COMPLEX$stub
	leal	-40(%ebp),%edi
	leal	-56(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-24(%ebp)
	fabs
	fldl	-16(%ebp)
	fabs
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj450
	jmp	Lj451
Lj450:
	fldl	-24(%ebp)
	fldl	-16(%ebp)
	fdivp	%st,%st(1)
	fstpl	-48(%ebp)
	fldl	-48(%ebp)
	fldl	-16(%ebp)
	fmulp	%st,%st(1)
	fldl	-24(%ebp)
	faddp	%st,%st(1)
	fstpl	-56(%ebp)
	fldl	-48(%ebp)
	fldl	-32(%ebp)
	fmulp	%st,%st(1)
	fldl	-40(%ebp)
	faddp	%st,%st(1)
	fldl	-56(%ebp)
	fdivrp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	-48(%ebp)
	fldl	-40(%ebp)
	fmulp	%st,%st(1)
	fldl	-32(%ebp)
	fsubp	%st,%st(1)
	fldl	-56(%ebp)
	fdivrp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	jmp	Lj460
Lj451:
	fldl	-16(%ebp)
	fldl	-24(%ebp)
	fdivp	%st,%st(1)
	fstpl	-48(%ebp)
	fldl	-48(%ebp)
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	fldl	-16(%ebp)
	faddp	%st,%st(1)
	fstpl	-56(%ebp)
	fldl	-48(%ebp)
	fldl	-40(%ebp)
	fmulp	%st,%st(1)
	fldl	-32(%ebp)
	faddp	%st,%st(1)
	fldl	-56(%ebp)
	fdivrp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	-40(%ebp)
	fchs
	fldl	-48(%ebp)
	fldl	-32(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	-56(%ebp)
	fdivrp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
Lj460:
	movl	-8(%ebp),%eax
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CARG_CH$COMPLEX$$COMPLEX
_UCOMPLEX_CARG_CH$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$200,%esp
	movl	%ebx,-188(%ebp)
	movl	%esi,-184(%ebp)
	movl	%edi,-180(%ebp)
	call	Lj470
Lj470:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-24(%ebp)
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	fldl	-16(%ebp)
	fldl	-16(%ebp)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fstpl	-168(%ebp)
	fldl	-16(%ebp)
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	fldl	-24(%ebp)
	fldl	-16(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	-160(%ebp)
	leal	-168(%ebp),%eax
	movl	%eax,-4(%ebp)
	fld1
	fstpl	-176(%ebp)
	movl	-4(%ebp),%eax
	fldl	(%eax)
	fldl	-176(%ebp)
	fsubp	%st,%st(1)
	fstpl	-152(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fchs
	fstpl	-144(%ebp)
	leal	-152(%ebp),%eax
	leal	-136(%ebp),%edx
	call	L_UCOMPLEX_CSQRT$COMPLEX$$COMPLEX$stub
	leal	-120(%ebp),%edi
	leal	-136(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-136(%ebp),%edi
	movl	L_TC_UCOMPLEX_I$non_lazy_ptr-Lj470(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-120(%ebp)
	fldl	-136(%ebp)
	fmulp	%st,%st(1)
	fldl	-112(%ebp)
	fldl	-128(%ebp)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fstpl	-104(%ebp)
	fldl	-112(%ebp)
	fldl	-136(%ebp)
	fmulp	%st,%st(1)
	fldl	-120(%ebp)
	fldl	-128(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	-96(%ebp)
	leal	-88(%ebp),%edi
	leal	-104(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-88(%ebp)
	fldl	-24(%ebp)
	faddp	%st,%st(1)
	fstpl	-72(%ebp)
	fldl	-80(%ebp)
	fldl	-16(%ebp)
	faddp	%st,%st(1)
	fstpl	-64(%ebp)
	leal	-72(%ebp),%eax
	leal	-56(%ebp),%edx
	call	L_UCOMPLEX_CLN$COMPLEX$$COMPLEX$stub
	leal	-40(%ebp),%edi
	leal	-56(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-40(%ebp)
	fchs
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	fldl	-32(%ebp)
	fchs
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-188(%ebp),%ebx
	movl	-184(%ebp),%esi
	movl	-180(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CARG_SH$COMPLEX$$COMPLEX
_UCOMPLEX_CARG_SH$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%esi,-120(%ebp)
	movl	%edi,-116(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fld1
	fstpl	-96(%ebp)
	fldl	-24(%ebp)
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	fldl	-16(%ebp)
	fldl	-16(%ebp)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fstpl	-112(%ebp)
	fldl	-16(%ebp)
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	fldl	-24(%ebp)
	fldl	-16(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	-104(%ebp)
	leal	-112(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	fldl	-96(%ebp)
	fldl	(%eax)
	faddp	%st,%st(1)
	fstpl	-88(%ebp)
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,-80(%ebp)
	movl	12(%edx),%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%eax
	leal	-72(%ebp),%edx
	call	L_UCOMPLEX_CSQRT$COMPLEX$$COMPLEX$stub
	leal	-56(%ebp),%edi
	leal	-72(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	fldl	-56(%ebp)
	fldl	-24(%ebp)
	faddp	%st,%st(1)
	fstpl	-40(%ebp)
	fldl	-48(%ebp)
	fldl	-16(%ebp)
	faddp	%st,%st(1)
	fstpl	-32(%ebp)
	leal	-40(%ebp),%eax
	movl	-8(%ebp),%edx
	call	L_UCOMPLEX_CLN$COMPLEX$$COMPLEX$stub
	movl	-120(%ebp),%esi
	movl	-116(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CARG_TH$COMPLEX$$COMPLEX
_UCOMPLEX_CARG_TH$COMPLEX$$COMPLEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-140(%ebp)
	movl	%esi,-136(%ebp)
	movl	%edi,-132(%ebp)
	call	Lj548
Lj548:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	fld1
	fstpl	-96(%ebp)
	fldl	-24(%ebp)
	fldl	-96(%ebp)
	fsubp	%st,%st(1)
	fstpl	-88(%ebp)
	fldl	-16(%ebp)
	fchs
	fstpl	-80(%ebp)
	leal	-88(%ebp),%eax
	movl	%eax,-4(%ebp)
	fld1
	fstpl	-120(%ebp)
	fldl	-120(%ebp)
	fldl	-24(%ebp)
	faddp	%st,%st(1)
	fstpl	-112(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-104(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-100(%ebp)
	leal	-112(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	-4(%ebp),%eax
	fldl	(%eax)
	fabs
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fabs
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj571
	jmp	Lj572
Lj571:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fldl	8(%eax)
	fdivp	%st,%st(1)
	fstpl	-120(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	-120(%ebp)
	fldl	8(%edx)
	fmulp	%st,%st(1)
	fldl	(%eax)
	faddp	%st,%st(1)
	fstpl	-128(%ebp)
	movl	-92(%ebp),%edx
	movl	-92(%ebp),%eax
	fldl	-120(%ebp)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	fldl	(%edx)
	faddp	%st,%st(1)
	fldl	-128(%ebp)
	fdivrp	%st,%st(1)
	fstpl	-72(%ebp)
	movl	-92(%ebp),%eax
	movl	-92(%ebp),%edx
	fldl	-120(%ebp)
	fldl	(%edx)
	fmulp	%st,%st(1)
	fldl	8(%eax)
	fsubp	%st,%st(1)
	fldl	-128(%ebp)
	fdivrp	%st,%st(1)
	fstpl	-64(%ebp)
	jmp	Lj581
Lj572:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fldl	(%eax)
	fdivp	%st,%st(1)
	fstpl	-120(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	-120(%ebp)
	fldl	(%edx)
	fmulp	%st,%st(1)
	fldl	8(%eax)
	faddp	%st,%st(1)
	fstpl	-128(%ebp)
	movl	-92(%ebp),%eax
	movl	-92(%ebp),%edx
	fldl	-120(%ebp)
	fldl	(%edx)
	fmulp	%st,%st(1)
	fldl	8(%eax)
	faddp	%st,%st(1)
	fldl	-128(%ebp)
	fdivrp	%st,%st(1)
	fstpl	-72(%ebp)
	movl	-92(%ebp),%eax
	fldl	(%eax)
	fchs
	movl	-92(%ebp),%eax
	fldl	-120(%ebp)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	-128(%ebp)
	fdivrp	%st,%st(1)
	fstpl	-64(%ebp)
Lj581:
	leal	-72(%ebp),%eax
	leal	-56(%ebp),%edx
	call	L_UCOMPLEX_CLN$COMPLEX$$COMPLEX$stub
	leal	-40(%ebp),%edi
	leal	-56(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	L_$UCOMPLEX$_Ld1$non_lazy_ptr-Lj548(%ebx),%eax
	fldl	(%eax)
	fldl	-40(%ebp)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	L_$UCOMPLEX$_Ld1$non_lazy_ptr-Lj548(%ebx),%eax
	fldl	(%eax)
	fldl	-32(%ebp)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-140(%ebp),%ebx
	movl	-136(%ebp),%esi
	movl	-132(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CSTR$COMPLEX$$SHORTSTRING
_UCOMPLEX_CSTR$COMPLEX$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-320(%ebp)
	movl	%esi,-316(%ebp)
	movl	%edi,-312(%ebp)
	call	Lj598
Lj598:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-280(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	$255,(%esp)
	leal	-264(%ebp),%eax
	movl	%eax,4(%esp)
	fldl	-272(%ebp)
	fstpt	8(%esp)
	movl	$1,%ecx
	movl	$-1,%edx
	movl	$-32767,%eax
	call	Lfpc_shortstr_float$stub
	movl	$255,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	fldl	-280(%ebp)
	fstpt	8(%esp)
	movl	$1,%ecx
	movl	$-1,%edx
	movl	$-32767,%eax
	call	Lfpc_shortstr_float$stub
	jmp	Lj624
	.align 2
Lj623:
	movl	$1,(%esp)
	leal	-264(%ebp),%eax
	movl	$1,%ecx
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
Lj624:
	movb	-263(%ebp),%al
	cmpb	$32,%al
	je	Lj623
	jmp	Lj625
Lj625:
	fldz
	fldl	-272(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj634
	jmp	Lj635
Lj634:
	movl	$2,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-292(%ebp)
	leal	-264(%ebp),%eax
	movl	%eax,-288(%ebp)
	movl	L_$UCOMPLEX$_Ld3$non_lazy_ptr-Lj598(%ebx),%eax
	movl	%eax,-284(%ebp)
	leal	-292(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
	jmp	Lj644
Lj635:
	fldz
	fldl	-272(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj645
	jmp	Lj646
Lj645:
	movl	$3,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-308(%ebp)
	movl	L_$UCOMPLEX$_Ld4$non_lazy_ptr-Lj598(%ebx),%eax
	movl	%eax,-304(%ebp)
	leal	-264(%ebp),%eax
	movl	%eax,-300(%ebp)
	movl	L_$UCOMPLEX$_Ld3$non_lazy_ptr-Lj598(%ebx),%eax
	movl	%eax,-296(%ebp)
	leal	-308(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
Lj646:
Lj644:
	movl	-320(%ebp),%ebx
	movl	-316(%ebp),%esi
	movl	-312(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CSTR$COMPLEX$SMALLINT$$SHORTSTRING
_UCOMPLEX_CSTR$COMPLEX$SMALLINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-324(%ebp)
	movl	%esi,-320(%ebp)
	movl	%edi,-316(%ebp)
	call	Lj656
Lj656:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%esi
	leal	-284(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	$255,(%esp)
	leal	-268(%ebp),%eax
	movl	%eax,4(%esp)
	fldl	-276(%ebp)
	fstpt	8(%esp)
	movswl	-8(%ebp),%eax
	movl	$1,%ecx
	movl	$-1,%edx
	call	Lfpc_shortstr_float$stub
	jmp	Lj670
	.align 2
Lj669:
	movl	$1,(%esp)
	leal	-268(%ebp),%eax
	movl	$1,%ecx
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
Lj670:
	movb	-267(%ebp),%al
	cmpb	$32,%al
	je	Lj669
	jmp	Lj671
Lj671:
	movl	$255,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	fldl	-284(%ebp)
	fstpt	8(%esp)
	movswl	-8(%ebp),%eax
	movl	$1,%ecx
	movl	$-1,%edx
	call	Lfpc_shortstr_float$stub
	fldz
	fldl	-276(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj692
	jmp	Lj693
Lj692:
	movl	$2,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,-296(%ebp)
	leal	-268(%ebp),%eax
	movl	%eax,-292(%ebp)
	movl	L_$UCOMPLEX$_Ld3$non_lazy_ptr-Lj656(%ebx),%eax
	movl	%eax,-288(%ebp)
	leal	-296(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
	jmp	Lj702
Lj693:
	fldz
	fldl	-276(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj703
	jmp	Lj704
Lj703:
	movl	$3,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,-312(%ebp)
	movl	L_$UCOMPLEX$_Ld4$non_lazy_ptr-Lj656(%ebx),%eax
	movl	%eax,-308(%ebp)
	leal	-268(%ebp),%eax
	movl	%eax,-304(%ebp)
	movl	L_$UCOMPLEX$_Ld3$non_lazy_ptr-Lj656(%ebx),%eax
	movl	%eax,-300(%ebp)
	leal	-312(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
Lj704:
Lj702:
	movl	-324(%ebp),%ebx
	movl	-320(%ebp),%esi
	movl	-316(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UCOMPLEX_CSTR$COMPLEX$SMALLINT$SMALLINT$$SHORTSTRING
_UCOMPLEX_CSTR$COMPLEX$SMALLINT$SMALLINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-324(%ebp)
	movl	%esi,-320(%ebp)
	movl	%edi,-316(%ebp)
	call	Lj714
Lj714:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	-4(%ebp),%esi
	leal	-284(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	$255,(%esp)
	leal	-268(%ebp),%eax
	movl	%eax,4(%esp)
	fldl	-276(%ebp)
	fstpt	8(%esp)
	movswl	-12(%ebp),%edx
	movswl	-8(%ebp),%eax
	movl	$1,%ecx
	call	Lfpc_shortstr_float$stub
	jmp	Lj728
	.align 2
Lj727:
	movl	$1,(%esp)
	leal	-268(%ebp),%eax
	movl	$1,%ecx
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
Lj728:
	movb	-267(%ebp),%al
	cmpb	$32,%al
	je	Lj727
	jmp	Lj729
Lj729:
	movl	$255,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	fldl	-284(%ebp)
	fstpt	8(%esp)
	movswl	-12(%ebp),%edx
	movswl	-8(%ebp),%eax
	movl	$1,%ecx
	call	Lfpc_shortstr_float$stub
	fldz
	fldl	-276(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj750
	jmp	Lj751
Lj750:
	movl	$2,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,-296(%ebp)
	leal	-268(%ebp),%eax
	movl	%eax,-292(%ebp)
	movl	L_$UCOMPLEX$_Ld3$non_lazy_ptr-Lj714(%ebx),%eax
	movl	%eax,-288(%ebp)
	leal	-296(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
	jmp	Lj760
Lj751:
	fldz
	fldl	-276(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj761
	jmp	Lj762
Lj761:
	movl	$3,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,-312(%ebp)
	movl	L_$UCOMPLEX$_Ld4$non_lazy_ptr-Lj714(%ebx),%eax
	movl	%eax,-308(%ebp)
	leal	-268(%ebp),%eax
	movl	%eax,-304(%ebp)
	movl	L_$UCOMPLEX$_Ld3$non_lazy_ptr-Lj714(%ebx),%eax
	movl	%eax,-300(%ebp)
	leal	-312(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
Lj762:
Lj760:
	movl	-324(%ebp),%ebx
	movl	-320(%ebp),%esi
	movl	-316(%ebp),%edi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_UCOMPLEX
_THREADVARLIST_UCOMPLEX:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_UCOMPLEX_I
_TC_UCOMPLEX_I:
	.byte	0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0,0,240,63

.data
	.align 2
.globl	_TC_UCOMPLEX__0
_TC_UCOMPLEX__0:
	.byte	0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0,0,0,0

.const
	.align 2
.globl	_$UCOMPLEX$_Ld1
_$UCOMPLEX$_Ld1:
	.byte	0,0,0,0,0,0,0,64

.const
	.align 3
.globl	_$UCOMPLEX$_Ld2
_$UCOMPLEX$_Ld2:
	.byte	0,0,0,0,0,0,0,128,254,63

.const
	.align 2
.globl	_$UCOMPLEX$_Ld3
_$UCOMPLEX$_Ld3:
	.ascii	"\001i\000"

.const
	.align 2
.globl	_$UCOMPLEX$_Ld4
_$UCOMPLEX$_Ld4:
	.ascii	"\001+\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN$stub:
.indirect_symbol _MATH_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_ARCTAN2$EXTENDED$EXTENDED$$EXTENDED$stub:
.indirect_symbol _MATH_ARCTAN2$EXTENDED$EXTENDED$$EXTENDED
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

L_UCOMPLEX_CMOD$COMPLEX$$REAL$stub:
.indirect_symbol _UCOMPLEX_CMOD$COMPLEX$$REAL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UCOMPLEX_CLN$COMPLEX$$COMPLEX$stub:
.indirect_symbol _UCOMPLEX_CLN$COMPLEX$$COMPLEX
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UCOMPLEX_CEXP$COMPLEX$$COMPLEX$stub:
.indirect_symbol _UCOMPLEX_CEXP$COMPLEX$$COMPLEX
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_COSH$EXTENDED$$EXTENDED$stub:
.indirect_symbol _MATH_COSH$EXTENDED$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_SINH$EXTENDED$$EXTENDED$stub:
.indirect_symbol _MATH_SINH$EXTENDED$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UCOMPLEX_CCOS$COMPLEX$$COMPLEX$stub:
.indirect_symbol _UCOMPLEX_CCOS$COMPLEX$$COMPLEX
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UCOMPLEX_CSIN$COMPLEX$$COMPLEX$stub:
.indirect_symbol _UCOMPLEX_CSIN$COMPLEX$$COMPLEX
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UCOMPLEX_CARG_CH$COMPLEX$$COMPLEX$stub:
.indirect_symbol _UCOMPLEX_CARG_CH$COMPLEX$$COMPLEX
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UCOMPLEX_CARG_SH$COMPLEX$$COMPLEX$stub:
.indirect_symbol _UCOMPLEX_CARG_SH$COMPLEX$$COMPLEX
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UCOMPLEX_CARG_TH$COMPLEX$$COMPLEX$stub:
.indirect_symbol _UCOMPLEX_CARG_TH$COMPLEX$$COMPLEX
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UCOMPLEX_CCH$COMPLEX$$COMPLEX$stub:
.indirect_symbol _UCOMPLEX_CCH$COMPLEX$$COMPLEX
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UCOMPLEX_CSH$COMPLEX$$COMPLEX$stub:
.indirect_symbol _UCOMPLEX_CSH$COMPLEX$$COMPLEX
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UCOMPLEX_CSQRT$COMPLEX$$COMPLEX$stub:
.indirect_symbol _UCOMPLEX_CSQRT$COMPLEX$$COMPLEX
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_float$stub:
.indirect_symbol fpc_shortstr_float
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_concat_multi$stub:
.indirect_symbol fpc_shortstr_concat_multi
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
.globl	_INIT_UCOMPLEX_COMPLEX
_INIT_UCOMPLEX_COMPLEX:
	.byte	13,7
	.ascii	"complex"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_UCOMPLEX_COMPLEX
_RTTI_UCOMPLEX_COMPLEX:
	.byte	13,7
	.ascii	"complex"
	.long	16,2
	.long	_RTTI_SYSTEM_REAL
	.long	0
	.long	_RTTI_SYSTEM_REAL
	.long	8

.const_data
	.align 2
.globl	_INIT_UCOMPLEX_PCOMPLEX
_INIT_UCOMPLEX_PCOMPLEX:
	.byte	0
	.ascii	"\010pcomplex"

.const_data
	.align 2
.globl	_RTTI_UCOMPLEX_PCOMPLEX
_RTTI_UCOMPLEX_PCOMPLEX:
	.byte	0
	.ascii	"\010pcomplex"
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
L_$UCOMPLEX$_Ld1$non_lazy_ptr:
.indirect_symbol _$UCOMPLEX$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UCOMPLEX$_Ld2$non_lazy_ptr:
.indirect_symbol _$UCOMPLEX$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_UCOMPLEX_I$non_lazy_ptr:
.indirect_symbol _TC_UCOMPLEX_I
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UCOMPLEX$_Ld3$non_lazy_ptr:
.indirect_symbol _$UCOMPLEX$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UCOMPLEX$_Ld4$non_lazy_ptr:
.indirect_symbol _$UCOMPLEX$_Ld4
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

