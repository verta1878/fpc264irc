# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_EXTINTERPOLATION_J1$DOUBLE$$DOUBLE
_EXTINTERPOLATION_J1$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	call	Lj4
Lj4:
	popl	%edx
	movl	L_TC_EXTINTERPOLATION_J1$DOUBLE$$DOUBLE_PONE$non_lazy_ptr-Lj4(%edx),%eax
	movl	64(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_EXTINTERPOLATION_J1$DOUBLE$$DOUBLE_PONE$non_lazy_ptr-Lj4(%edx),%eax
	movl	68(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	L_TC_EXTINTERPOLATION_J1$DOUBLE$$DOUBLE_QONE$non_lazy_ptr-Lj4(%edx),%eax
	movl	64(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	L_TC_EXTINTERPOLATION_J1$DOUBLE$$DOUBLE_QONE$non_lazy_ptr-Lj4(%edx),%eax
	movl	68(%eax),%eax
	movl	%eax,-20(%ebp)
	movb	$7,-25(%ebp)
	incb	-25(%ebp)
	.align 2
Lj11:
	decb	-25(%ebp)
	fldl	8(%ebp)
	fldl	-16(%ebp)
	fmulp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movzbl	-25(%ebp),%eax
	movl	L_TC_EXTINTERPOLATION_J1$DOUBLE$$DOUBLE_PONE$non_lazy_ptr-Lj4(%edx),%ecx
	fldl	(%ecx,%eax,8)
	faddp	%st,%st(1)
	fstpl	-16(%ebp)
	fldl	8(%ebp)
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movzbl	-25(%ebp),%eax
	movl	L_TC_EXTINTERPOLATION_J1$DOUBLE$$DOUBLE_QONE$non_lazy_ptr-Lj4(%edx),%ecx
	fldl	(%ecx,%eax,8)
	faddp	%st,%st(1)
	fstpl	-24(%ebp)
	cmpb	$0,-25(%ebp)
	ja	Lj11
	fldl	-24(%ebp)
	fldl	-16(%ebp)
	fdivp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_P1$DOUBLE$$DOUBLE
_EXTINTERPOLATION_P1$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	call	Lj19
Lj19:
	popl	%edx
	movl	L_TC_EXTINTERPOLATION_P1$DOUBLE$$DOUBLE_PONE$non_lazy_ptr-Lj19(%edx),%eax
	movl	40(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	L_TC_EXTINTERPOLATION_P1$DOUBLE$$DOUBLE_PONE$non_lazy_ptr-Lj19(%edx),%eax
	movl	44(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	L_TC_EXTINTERPOLATION_P1$DOUBLE$$DOUBLE_QONE$non_lazy_ptr-Lj19(%edx),%eax
	movl	40(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	L_TC_EXTINTERPOLATION_P1$DOUBLE$$DOUBLE_QONE$non_lazy_ptr-Lj19(%edx),%eax
	movl	44(%eax),%eax
	movl	%eax,-28(%ebp)
	fldl	8(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld1$non_lazy_ptr-Lj19(%edx),%eax
	fldl	(%eax)
	fdivp	%st,%st(1)
	fstpl	-16(%ebp)
	movb	$4,-33(%ebp)
	incb	-33(%ebp)
	.align 2
Lj28:
	decb	-33(%ebp)
	fldl	-16(%ebp)
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	fldl	-16(%ebp)
	fmulp	%st,%st(1)
	movzbl	-33(%ebp),%eax
	movl	L_TC_EXTINTERPOLATION_P1$DOUBLE$$DOUBLE_PONE$non_lazy_ptr-Lj19(%edx),%ecx
	fldl	(%ecx,%eax,8)
	faddp	%st,%st(1)
	fstpl	-24(%ebp)
	fldl	-16(%ebp)
	fldl	-32(%ebp)
	fmulp	%st,%st(1)
	fldl	-16(%ebp)
	fmulp	%st,%st(1)
	movzbl	-33(%ebp),%eax
	movl	L_TC_EXTINTERPOLATION_P1$DOUBLE$$DOUBLE_QONE$non_lazy_ptr-Lj19(%edx),%ecx
	fldl	(%ecx,%eax,8)
	faddp	%st,%st(1)
	fstpl	-32(%ebp)
	cmpb	$0,-33(%ebp)
	ja	Lj28
	fldl	-32(%ebp)
	fldl	-24(%ebp)
	fdivp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_Q1$DOUBLE$$DOUBLE
_EXTINTERPOLATION_Q1$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	call	Lj36
Lj36:
	popl	%edx
	movl	L_TC_EXTINTERPOLATION_Q1$DOUBLE$$DOUBLE_PONE$non_lazy_ptr-Lj36(%edx),%eax
	movl	40(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	L_TC_EXTINTERPOLATION_Q1$DOUBLE$$DOUBLE_PONE$non_lazy_ptr-Lj36(%edx),%eax
	movl	44(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	L_TC_EXTINTERPOLATION_Q1$DOUBLE$$DOUBLE_QONE$non_lazy_ptr-Lj36(%edx),%eax
	movl	40(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	L_TC_EXTINTERPOLATION_Q1$DOUBLE$$DOUBLE_QONE$non_lazy_ptr-Lj36(%edx),%eax
	movl	44(%eax),%eax
	movl	%eax,-28(%ebp)
	fldl	8(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld1$non_lazy_ptr-Lj36(%edx),%eax
	fldl	(%eax)
	fdivp	%st,%st(1)
	fstpl	-16(%ebp)
	movb	$4,-33(%ebp)
	incb	-33(%ebp)
	.align 2
Lj45:
	decb	-33(%ebp)
	fldl	-16(%ebp)
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	fldl	-16(%ebp)
	fmulp	%st,%st(1)
	movzbl	-33(%ebp),%eax
	movl	L_TC_EXTINTERPOLATION_Q1$DOUBLE$$DOUBLE_PONE$non_lazy_ptr-Lj36(%edx),%ecx
	fldl	(%ecx,%eax,8)
	faddp	%st,%st(1)
	fstpl	-24(%ebp)
	fldl	-16(%ebp)
	fldl	-32(%ebp)
	fmulp	%st,%st(1)
	fldl	-16(%ebp)
	fmulp	%st,%st(1)
	movzbl	-33(%ebp),%eax
	movl	L_TC_EXTINTERPOLATION_Q1$DOUBLE$$DOUBLE_QONE$non_lazy_ptr-Lj36(%edx),%ecx
	fldl	(%ecx,%eax,8)
	faddp	%st,%st(1)
	fstpl	-32(%ebp)
	cmpb	$0,-33(%ebp)
	ja	Lj45
	fldl	-32(%ebp)
	fldl	-24(%ebp)
	fdivp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_BESSELORDERONE$DOUBLE$$DOUBLE
_EXTINTERPOLATION_BESSELORDERONE$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-52(%ebp)
	call	Lj53
Lj53:
	popl	%ebx
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj54
	jmp	Lj55
Lj54:
	fldz
	fstpl	-8(%ebp)
	jmp	Lj58
Lj55:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebp)
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj61
	jmp	Lj62
Lj61:
	fldl	8(%ebp)
	fchs
	fstpl	8(%ebp)
Lj62:
	movl	L_$EXTINTERPOLATION$_Ld1$non_lazy_ptr-Lj53(%ebx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj65
	jmp	Lj66
Lj65:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_EXTINTERPOLATION_J1$DOUBLE$$DOUBLE$stub
	fldl	-16(%ebp)
	fmulp	%st,%st(1)
	fstpl	-8(%ebp)
	jmp	Lj71
Lj66:
	movl	L_$EXTINTERPOLATION$_Ld2$non_lazy_ptr-Lj53(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld2$non_lazy_ptr-Lj53(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	fldl	8(%ebp)
	fsin
	fstpl	-32(%ebp)
	fldl	8(%ebp)
	fcos
	fstpl	-40(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_EXTINTERPOLATION_Q1$DOUBLE$$DOUBLE$stub
	fldl	8(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld1$non_lazy_ptr-Lj53(%ebx),%eax
	fldl	(%eax)
	fdivp	%st,%st(1)
	fmulp	%st,%st(1)
	fldl	-24(%ebp)
	fchs
	fldl	-40(%ebp)
	fldl	-32(%ebp)
	faddp	%st,%st(1)
	fmulp	%st,%st(1)
	fmulp	%st,%st(1)
	fstpl	-48(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_EXTINTERPOLATION_P1$DOUBLE$$DOUBLE$stub
	fldl	-40(%ebp)
	fldl	-32(%ebp)
	fsubp	%st,%st(1)
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	fmulp	%st,%st(1)
	fldl	-48(%ebp)
	fsubrp	%st,%st(1)
	fldpi
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld3$non_lazy_ptr-Lj53(%ebx),%eax
	fldt	(%eax)
	fdivp	%st,%st(1)
	fsqrt
	fmulp	%st,%st(1)
	fstpl	-8(%ebp)
	fldz
	fldl	-16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj84
	jmp	Lj85
Lj84:
	fldl	-8(%ebp)
	fchs
	fstpl	-8(%ebp)
Lj85:
Lj71:
Lj58:
	fldl	-8(%ebp)
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_BESSEL$DOUBLE$$DOUBLE
_EXTINTERPOLATION_BESSEL$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj89
Lj89:
	popl	%ebx
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj90
	jmp	Lj91
Lj90:
	fldpi
	movl	L_$EXTINTERPOLATION$_Ld4$non_lazy_ptr-Lj89(%ebx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	fstpl	-8(%ebp)
	jmp	Lj94
Lj91:
	fldpi
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	fstpl	(%esp)
	call	L_EXTINTERPOLATION_BESSELORDERONE$DOUBLE$$DOUBLE$stub
	fldl	8(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld5$non_lazy_ptr-Lj89(%ebx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	fdivrp	%st,%st(1)
	fstpl	-8(%ebp)
Lj94:
	fldl	-8(%ebp)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_SINC$DOUBLE$$DOUBLE
_EXTINTERPOLATION_SINC$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj101
	jmp	Lj102
Lj101:
	fld1
	fstpl	-8(%ebp)
	jmp	Lj105
Lj102:
	fldpi
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	fsin
	fldl	-16(%ebp)
	fdivrp	%st,%st(1)
	fstpl	-8(%ebp)
Lj105:
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_BLACKMAN$DOUBLE$$DOUBLE
_EXTINTERPOLATION_BLACKMAN$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj111
Lj111:
	popl	%edx
	fldpi
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	fcos
	movl	L_$EXTINTERPOLATION$_Ld7$non_lazy_ptr-Lj111(%edx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld6$non_lazy_ptr-Lj111(%edx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
	fldl	-16(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld5$non_lazy_ptr-Lj111(%edx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	fcos
	movl	L_$EXTINTERPOLATION$_Ld8$non_lazy_ptr-Lj111(%edx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_THERMITEINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
_EXTINTERPOLATION_THERMITEINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj117
Lj117:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld9$non_lazy_ptr-Lj117(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj118
	jmp	Lj119
Lj118:
	fldz
	fstpl	-12(%ebp)
	jmp	Lj122
Lj119:
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj123
	jmp	Lj124
Lj123:
	fldl	8(%ebp)
	fchs
	movl	L_$EXTINTERPOLATION$_Ld5$non_lazy_ptr-Lj117(%edx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld10$non_lazy_ptr-Lj117(%edx),%eax
	fldl	(%eax)
	fsubrp	%st,%st(1)
	fldl	8(%ebp)
	fchs
	fmulp	%st,%st(1)
	fldl	8(%ebp)
	fchs
	fmulp	%st,%st(1)
	fld1
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj127
Lj124:
	fld1
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj128
	jmp	Lj129
Lj128:
	fldl	8(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld5$non_lazy_ptr-Lj117(%edx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld10$non_lazy_ptr-Lj117(%edx),%eax
	fldl	(%eax)
	fsubrp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fld1
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj132
Lj129:
	fldz
	fstpl	-12(%ebp)
Lj132:
Lj127:
Lj122:
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_THERMITEINTERPOLATION_$__MAXSUPPORT$$DOUBLE
_EXTINTERPOLATION_THERMITEINTERPOLATION_$__MAXSUPPORT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	fld1
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TLANCZOSINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
_EXTINTERPOLATION_TLANCZOSINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj140
Lj140:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld11$non_lazy_ptr-Lj140(%ebx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj141
	jmp	Lj142
Lj141:
	fldz
	fstpl	-12(%ebp)
	jmp	Lj145
Lj142:
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj146
	jmp	Lj147
Lj146:
	fldl	8(%ebp)
	fchs
	fstpl	(%esp)
	call	L_EXTINTERPOLATION_SINC$DOUBLE$$DOUBLE$stub
	fstpl	-24(%ebp)
	fldl	8(%ebp)
	fchs
	movl	L_$EXTINTERPOLATION$_Ld10$non_lazy_ptr-Lj140(%ebx),%eax
	fldl	(%eax)
	fdivrp	%st,%st(1)
	fstpl	(%esp)
	call	L_EXTINTERPOLATION_SINC$DOUBLE$$DOUBLE$stub
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj154
Lj147:
	movl	L_$EXTINTERPOLATION$_Ld10$non_lazy_ptr-Lj140(%ebx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj155
	jmp	Lj156
Lj155:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_EXTINTERPOLATION_SINC$DOUBLE$$DOUBLE$stub
	fstpl	-24(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld10$non_lazy_ptr-Lj140(%ebx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fdivp	%st,%st(1)
	fstpl	(%esp)
	call	L_EXTINTERPOLATION_SINC$DOUBLE$$DOUBLE$stub
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj163
Lj156:
	fldz
	fstpl	-12(%ebp)
Lj163:
Lj154:
Lj145:
	fldl	-12(%ebp)
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TLANCZOSINTERPOLATION_$__MAXSUPPORT$$DOUBLE
_EXTINTERPOLATION_TLANCZOSINTERPOLATION_$__MAXSUPPORT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj167
Lj167:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld10$non_lazy_ptr-Lj167(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld10$non_lazy_ptr-Lj167(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TQUADRATICINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
_EXTINTERPOLATION_TQUADRATICINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj171
Lj171:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld12$non_lazy_ptr-Lj171(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj172
	jmp	Lj173
Lj172:
	fldz
	fstpl	-12(%ebp)
	jmp	Lj176
Lj173:
	movl	L_$EXTINTERPOLATION$_Ld13$non_lazy_ptr-Lj171(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj177
	jmp	Lj178
Lj177:
	movl	L_$EXTINTERPOLATION$_Ld14$non_lazy_ptr-Lj171(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	faddp	%st,%st(1)
	fstpl	8(%ebp)
	fldl	8(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld15$non_lazy_ptr-Lj171(%edx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj183
Lj178:
	movl	L_$EXTINTERPOLATION$_Ld15$non_lazy_ptr-Lj171(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj184
	jmp	Lj185
Lj184:
	fldl	8(%ebp)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld16$non_lazy_ptr-Lj171(%edx),%eax
	fldl	(%eax)
	fsubp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj188
Lj185:
	movl	L_$EXTINTERPOLATION$_Ld14$non_lazy_ptr-Lj171(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj189
	jmp	Lj190
Lj189:
	movl	L_$EXTINTERPOLATION$_Ld14$non_lazy_ptr-Lj171(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fsubp	%st,%st(1)
	fstpl	8(%ebp)
	fldl	8(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld15$non_lazy_ptr-Lj171(%edx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj195
Lj190:
	fldz
	fstpl	-12(%ebp)
Lj195:
Lj188:
Lj183:
Lj176:
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TQUADRATICINTERPOLATION_$__MAXSUPPORT$$DOUBLE
_EXTINTERPOLATION_TQUADRATICINTERPOLATION_$__MAXSUPPORT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj199
Lj199:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld14$non_lazy_ptr-Lj199(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld14$non_lazy_ptr-Lj199(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TCUBICINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
_EXTINTERPOLATION_TCUBICINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj203
Lj203:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld17$non_lazy_ptr-Lj203(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj204
	jmp	Lj205
Lj204:
	fldz
	fstpl	-12(%ebp)
	jmp	Lj208
Lj205:
	movl	L_$EXTINTERPOLATION$_Ld9$non_lazy_ptr-Lj203(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj209
	jmp	Lj210
Lj209:
	movl	L_$EXTINTERPOLATION$_Ld5$non_lazy_ptr-Lj203(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	faddp	%st,%st(1)
	fstpl	8(%ebp)
	fldl	8(%ebp)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld18$non_lazy_ptr-Lj203(%edx),%eax
	fldl	(%eax)
	fdivrp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj215
Lj210:
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj216
	jmp	Lj217
Lj216:
	fldl	8(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld10$non_lazy_ptr-Lj203(%edx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld20$non_lazy_ptr-Lj203(%edx),%eax
	fldl	(%eax)
	fsubp	%st,%st(1)
	fldl	8(%ebp)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld19$non_lazy_ptr-Lj203(%edx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld18$non_lazy_ptr-Lj203(%edx),%eax
	fldl	(%eax)
	fdivrp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj220
Lj217:
	fld1
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj221
	jmp	Lj222
Lj221:
	fldl	8(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld10$non_lazy_ptr-Lj203(%edx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld20$non_lazy_ptr-Lj203(%edx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld19$non_lazy_ptr-Lj203(%edx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld18$non_lazy_ptr-Lj203(%edx),%eax
	fldl	(%eax)
	fdivrp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj225
Lj222:
	movl	L_$EXTINTERPOLATION$_Ld5$non_lazy_ptr-Lj203(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj226
	jmp	Lj227
Lj226:
	fldl	8(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld5$non_lazy_ptr-Lj203(%edx),%eax
	fldl	(%eax)
	fsubp	%st,%st(1)
	fstpl	8(%ebp)
	fldl	8(%ebp)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld18$non_lazy_ptr-Lj203(%edx),%eax
	fldl	(%eax)
	fdivrp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj232
Lj227:
	fldz
	fstpl	-12(%ebp)
Lj232:
Lj225:
Lj220:
Lj215:
Lj208:
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TCUBICINTERPOLATION_$__MAXSUPPORT$$DOUBLE
_EXTINTERPOLATION_TCUBICINTERPOLATION_$__MAXSUPPORT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj236
Lj236:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld5$non_lazy_ptr-Lj236(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld5$non_lazy_ptr-Lj236(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TCATROMINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
_EXTINTERPOLATION_TCATROMINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj240
Lj240:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld17$non_lazy_ptr-Lj240(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj241
	jmp	Lj242
Lj241:
	fldz
	fstpl	-12(%ebp)
	jmp	Lj245
Lj242:
	movl	L_$EXTINTERPOLATION$_Ld9$non_lazy_ptr-Lj240(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj246
	jmp	Lj247
Lj246:
	fldl	8(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld21$non_lazy_ptr-Lj240(%edx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld1$non_lazy_ptr-Lj240(%edx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld19$non_lazy_ptr-Lj240(%edx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld15$non_lazy_ptr-Lj240(%edx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj250
Lj247:
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj251
	jmp	Lj252
Lj251:
	fldl	8(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld10$non_lazy_ptr-Lj240(%edx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld22$non_lazy_ptr-Lj240(%edx),%eax
	fldl	(%eax)
	fsubp	%st,%st(1)
	fldl	8(%ebp)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld5$non_lazy_ptr-Lj240(%edx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld15$non_lazy_ptr-Lj240(%edx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj255
Lj252:
	fld1
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj256
	jmp	Lj257
Lj256:
	fldl	8(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld10$non_lazy_ptr-Lj240(%edx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld22$non_lazy_ptr-Lj240(%edx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld5$non_lazy_ptr-Lj240(%edx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld15$non_lazy_ptr-Lj240(%edx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj260
Lj257:
	movl	L_$EXTINTERPOLATION$_Ld5$non_lazy_ptr-Lj240(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj261
	jmp	Lj262
Lj261:
	fldl	8(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld21$non_lazy_ptr-Lj240(%edx),%eax
	fldl	(%eax)
	fsubp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld23$non_lazy_ptr-Lj240(%edx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld19$non_lazy_ptr-Lj240(%edx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld15$non_lazy_ptr-Lj240(%edx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj265
Lj262:
	fldz
	fstpl	-12(%ebp)
Lj265:
Lj260:
Lj255:
Lj250:
Lj245:
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TCATROMINTERPOLATION_$__MAXSUPPORT$$DOUBLE
_EXTINTERPOLATION_TCATROMINTERPOLATION_$__MAXSUPPORT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj269
Lj269:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld5$non_lazy_ptr-Lj269(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld5$non_lazy_ptr-Lj269(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_THANNINGINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
_EXTINTERPOLATION_THANNINGINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj273
Lj273:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld9$non_lazy_ptr-Lj273(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj274
	jmp	Lj275
Lj274:
	fldz
	fstpl	-12(%ebp)
	jmp	Lj278
Lj275:
	fld1
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jbe	Lj279
	jmp	Lj280
Lj279:
	fldpi
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fcos
	movl	L_$EXTINTERPOLATION$_Ld7$non_lazy_ptr-Lj273(%edx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld7$non_lazy_ptr-Lj273(%edx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj283
Lj280:
	fldz
	fstpl	-12(%ebp)
Lj283:
Lj278:
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_THANNINGINTERPOLATION_$__MAXSUPPORT$$DOUBLE
_EXTINTERPOLATION_THANNINGINTERPOLATION_$__MAXSUPPORT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	fld1
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_THAMMINGINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
_EXTINTERPOLATION_THAMMINGINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj291
Lj291:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld9$non_lazy_ptr-Lj291(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj292
	jmp	Lj293
Lj292:
	fldz
	fstpl	-12(%ebp)
	jmp	Lj296
Lj293:
	fld1
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jbe	Lj297
	jmp	Lj298
Lj297:
	fldpi
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fcos
	movl	L_$EXTINTERPOLATION$_Ld25$non_lazy_ptr-Lj291(%edx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	L_$EXTINTERPOLATION$_Ld24$non_lazy_ptr-Lj291(%edx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj301
Lj298:
	fldz
	fstpl	-12(%ebp)
Lj301:
Lj296:
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_THAMMINGINTERPOLATION_$__MAXSUPPORT$$DOUBLE
_EXTINTERPOLATION_THAMMINGINTERPOLATION_$__MAXSUPPORT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	fld1
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TBILINEAIRINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
_EXTINTERPOLATION_TBILINEAIRINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj309
Lj309:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld9$non_lazy_ptr-Lj309(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj310
	jmp	Lj311
Lj310:
	fldz
	fstpl	-12(%ebp)
	jmp	Lj314
Lj311:
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj315
	jmp	Lj316
Lj315:
	fld1
	fldl	8(%ebp)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj319
Lj316:
	fld1
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj320
	jmp	Lj321
Lj320:
	fld1
	fldl	8(%ebp)
	fsubrp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj324
Lj321:
	fldz
	fstpl	-12(%ebp)
Lj324:
Lj319:
Lj314:
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TBILINEAIRINTERPOLATION_$__MAXSUPPORT$$DOUBLE
_EXTINTERPOLATION_TBILINEAIRINTERPOLATION_$__MAXSUPPORT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	fld1
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TBOXINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
_EXTINTERPOLATION_TBOXINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj332
Lj332:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld13$non_lazy_ptr-Lj332(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj333
	jmp	Lj334
Lj333:
	fldz
	fstpl	-12(%ebp)
	jmp	Lj337
Lj334:
	movl	L_$EXTINTERPOLATION$_Ld15$non_lazy_ptr-Lj332(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj338
	jmp	Lj339
Lj338:
	fld1
	fstpl	-12(%ebp)
	jmp	Lj342
Lj339:
	fldz
	fstpl	-12(%ebp)
Lj342:
Lj337:
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TBOXINTERPOLATION_$__MAXSUPPORT$$DOUBLE
_EXTINTERPOLATION_TBOXINTERPOLATION_$__MAXSUPPORT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj346
Lj346:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld15$non_lazy_ptr-Lj346(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld15$non_lazy_ptr-Lj346(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TGAUSSIANINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
_EXTINTERPOLATION_TGAUSSIANINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	call	Lj350
Lj350:
	popl	%ebx
	movl	%eax,-4(%ebp)
	fldl	8(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld17$non_lazy_ptr-Lj350(%ebx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fstpt	(%esp)
	call	Lfpc_exp_real$stub
	fldpi
	movl	L_$EXTINTERPOLATION$_Ld3$non_lazy_ptr-Lj350(%ebx),%eax
	fldt	(%eax)
	fdivp	%st,%st(1)
	fsqrt
	fmulp	%st,%st(1)
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TGAUSSIANINTERPOLATION_$__MAXSUPPORT$$DOUBLE
_EXTINTERPOLATION_TGAUSSIANINTERPOLATION_$__MAXSUPPORT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj356
Lj356:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld26$non_lazy_ptr-Lj356(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld26$non_lazy_ptr-Lj356(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TBLACKMANBESSELINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
_EXTINTERPOLATION_TBLACKMANBESSELINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	fldl	8(%ebp)
	fdivp	%st,%st(1)
	fstpl	(%esp)
	call	L_EXTINTERPOLATION_BLACKMAN$DOUBLE$$DOUBLE$stub
	fstpl	-24(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_EXTINTERPOLATION_BESSEL$DOUBLE$$DOUBLE$stub
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TBLACKMANBESSELINTERPOLATION_$__MAXSUPPORT$$DOUBLE
_EXTINTERPOLATION_TBLACKMANBESSELINTERPOLATION_$__MAXSUPPORT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj370
Lj370:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld27$non_lazy_ptr-Lj370(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld27$non_lazy_ptr-Lj370(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TBLACKMANSINCINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
_EXTINTERPOLATION_TBLACKMANSINCINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	fldl	8(%ebp)
	fdivp	%st,%st(1)
	fstpl	(%esp)
	call	L_EXTINTERPOLATION_BLACKMAN$DOUBLE$$DOUBLE$stub
	fstpl	-24(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_EXTINTERPOLATION_SINC$DOUBLE$$DOUBLE$stub
	fldl	-24(%ebp)
	fmulp	%st,%st(1)
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TBLACKMANSINCINTERPOLATION_$__MAXSUPPORT$$DOUBLE
_EXTINTERPOLATION_TBLACKMANSINCINTERPOLATION_$__MAXSUPPORT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj384
Lj384:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld19$non_lazy_ptr-Lj384(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	L_$EXTINTERPOLATION$_Ld19$non_lazy_ptr-Lj384(%edx),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TBLACKMANINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
_EXTINTERPOLATION_TBLACKMANINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_EXTINTERPOLATION_BLACKMAN$DOUBLE$$DOUBLE$stub
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_EXTINTERPOLATION_TBLACKMANINTERPOLATION_$__MAXSUPPORT$$DOUBLE
_EXTINTERPOLATION_TBLACKMANINTERPOLATION_$__MAXSUPPORT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	fld1
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld28
_$EXTINTERPOLATION$_Ld28:
	.byte	22
	.ascii	"TBlackmanInterpolation"

.const_data
	.align 2
.globl	_VMT_EXTINTERPOLATION_TBLACKMANINTERPOLATION
_VMT_EXTINTERPOLATION_TBLACKMANINTERPOLATION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPBASEINTERPOLATION
	.long	_$EXTINTERPOLATION$_Ld28
	.long	0,0
	.long	_$EXTINTERPOLATION$_Ld29
	.long	_RTTI_EXTINTERPOLATION_TBLACKMANINTERPOLATION
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
	.long	_FPCANVAS_TFPCUSTOMINTERPOLATION_$__INITIALIZE$TFPCUSTOMIMAGE$TFPCUSTOMCANVAS
	.long	_FPCANVAS_TFPBASEINTERPOLATION_$__EXECUTE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_EXTINTERPOLATION_TBLACKMANINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
	.long	_EXTINTERPOLATION_TBLACKMANINTERPOLATION_$__MAXSUPPORT$$DOUBLE
	.long	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld31
_$EXTINTERPOLATION$_Ld31:
	.byte	26
	.ascii	"TBlackmanSincInterpolation"

.const_data
	.align 2
.globl	_VMT_EXTINTERPOLATION_TBLACKMANSINCINTERPOLATION
_VMT_EXTINTERPOLATION_TBLACKMANSINCINTERPOLATION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPBASEINTERPOLATION
	.long	_$EXTINTERPOLATION$_Ld31
	.long	0,0
	.long	_$EXTINTERPOLATION$_Ld32
	.long	_RTTI_EXTINTERPOLATION_TBLACKMANSINCINTERPOLATION
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
	.long	_FPCANVAS_TFPCUSTOMINTERPOLATION_$__INITIALIZE$TFPCUSTOMIMAGE$TFPCUSTOMCANVAS
	.long	_FPCANVAS_TFPBASEINTERPOLATION_$__EXECUTE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_EXTINTERPOLATION_TBLACKMANSINCINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
	.long	_EXTINTERPOLATION_TBLACKMANSINCINTERPOLATION_$__MAXSUPPORT$$DOUBLE
	.long	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld34
_$EXTINTERPOLATION$_Ld34:
	.byte	28
	.ascii	"TBlackmanBesselInterpolation"

.const_data
	.align 2
.globl	_VMT_EXTINTERPOLATION_TBLACKMANBESSELINTERPOLATION
_VMT_EXTINTERPOLATION_TBLACKMANBESSELINTERPOLATION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPBASEINTERPOLATION
	.long	_$EXTINTERPOLATION$_Ld34
	.long	0,0
	.long	_$EXTINTERPOLATION$_Ld35
	.long	_RTTI_EXTINTERPOLATION_TBLACKMANBESSELINTERPOLATION
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
	.long	_FPCANVAS_TFPCUSTOMINTERPOLATION_$__INITIALIZE$TFPCUSTOMIMAGE$TFPCUSTOMCANVAS
	.long	_FPCANVAS_TFPBASEINTERPOLATION_$__EXECUTE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_EXTINTERPOLATION_TBLACKMANBESSELINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
	.long	_EXTINTERPOLATION_TBLACKMANBESSELINTERPOLATION_$__MAXSUPPORT$$DOUBLE
	.long	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld37
_$EXTINTERPOLATION$_Ld37:
	.byte	22
	.ascii	"TGaussianInterpolation"

.const_data
	.align 2
.globl	_VMT_EXTINTERPOLATION_TGAUSSIANINTERPOLATION
_VMT_EXTINTERPOLATION_TGAUSSIANINTERPOLATION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPBASEINTERPOLATION
	.long	_$EXTINTERPOLATION$_Ld37
	.long	0,0
	.long	_$EXTINTERPOLATION$_Ld38
	.long	_RTTI_EXTINTERPOLATION_TGAUSSIANINTERPOLATION
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
	.long	_FPCANVAS_TFPCUSTOMINTERPOLATION_$__INITIALIZE$TFPCUSTOMIMAGE$TFPCUSTOMCANVAS
	.long	_FPCANVAS_TFPBASEINTERPOLATION_$__EXECUTE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_EXTINTERPOLATION_TGAUSSIANINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
	.long	_EXTINTERPOLATION_TGAUSSIANINTERPOLATION_$__MAXSUPPORT$$DOUBLE
	.long	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld40
_$EXTINTERPOLATION$_Ld40:
	.byte	17
	.ascii	"TBoxInterpolation"

.const_data
	.align 2
.globl	_VMT_EXTINTERPOLATION_TBOXINTERPOLATION
_VMT_EXTINTERPOLATION_TBOXINTERPOLATION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPBASEINTERPOLATION
	.long	_$EXTINTERPOLATION$_Ld40
	.long	0,0
	.long	_$EXTINTERPOLATION$_Ld41
	.long	_RTTI_EXTINTERPOLATION_TBOXINTERPOLATION
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
	.long	_FPCANVAS_TFPCUSTOMINTERPOLATION_$__INITIALIZE$TFPCUSTOMIMAGE$TFPCUSTOMCANVAS
	.long	_FPCANVAS_TFPBASEINTERPOLATION_$__EXECUTE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_EXTINTERPOLATION_TBOXINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
	.long	_EXTINTERPOLATION_TBOXINTERPOLATION_$__MAXSUPPORT$$DOUBLE
	.long	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld43
_$EXTINTERPOLATION$_Ld43:
	.byte	21
	.ascii	"THermiteInterpolation"

.const_data
	.align 2
.globl	_VMT_EXTINTERPOLATION_THERMITEINTERPOLATION
_VMT_EXTINTERPOLATION_THERMITEINTERPOLATION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPBASEINTERPOLATION
	.long	_$EXTINTERPOLATION$_Ld43
	.long	0,0
	.long	_$EXTINTERPOLATION$_Ld44
	.long	_RTTI_EXTINTERPOLATION_THERMITEINTERPOLATION
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
	.long	_FPCANVAS_TFPCUSTOMINTERPOLATION_$__INITIALIZE$TFPCUSTOMIMAGE$TFPCUSTOMCANVAS
	.long	_FPCANVAS_TFPBASEINTERPOLATION_$__EXECUTE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_EXTINTERPOLATION_THERMITEINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
	.long	_EXTINTERPOLATION_THERMITEINTERPOLATION_$__MAXSUPPORT$$DOUBLE
	.long	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld46
_$EXTINTERPOLATION$_Ld46:
	.byte	21
	.ascii	"TLanczosInterpolation"

.const_data
	.align 2
.globl	_VMT_EXTINTERPOLATION_TLANCZOSINTERPOLATION
_VMT_EXTINTERPOLATION_TLANCZOSINTERPOLATION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPBASEINTERPOLATION
	.long	_$EXTINTERPOLATION$_Ld46
	.long	0,0
	.long	_$EXTINTERPOLATION$_Ld47
	.long	_RTTI_EXTINTERPOLATION_TLANCZOSINTERPOLATION
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
	.long	_FPCANVAS_TFPCUSTOMINTERPOLATION_$__INITIALIZE$TFPCUSTOMIMAGE$TFPCUSTOMCANVAS
	.long	_FPCANVAS_TFPBASEINTERPOLATION_$__EXECUTE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_EXTINTERPOLATION_TLANCZOSINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
	.long	_EXTINTERPOLATION_TLANCZOSINTERPOLATION_$__MAXSUPPORT$$DOUBLE
	.long	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld49
_$EXTINTERPOLATION$_Ld49:
	.byte	23
	.ascii	"TQuadraticInterpolation"

.const_data
	.align 2
.globl	_VMT_EXTINTERPOLATION_TQUADRATICINTERPOLATION
_VMT_EXTINTERPOLATION_TQUADRATICINTERPOLATION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPBASEINTERPOLATION
	.long	_$EXTINTERPOLATION$_Ld49
	.long	0,0
	.long	_$EXTINTERPOLATION$_Ld50
	.long	_RTTI_EXTINTERPOLATION_TQUADRATICINTERPOLATION
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
	.long	_FPCANVAS_TFPCUSTOMINTERPOLATION_$__INITIALIZE$TFPCUSTOMIMAGE$TFPCUSTOMCANVAS
	.long	_FPCANVAS_TFPBASEINTERPOLATION_$__EXECUTE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_EXTINTERPOLATION_TQUADRATICINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
	.long	_EXTINTERPOLATION_TQUADRATICINTERPOLATION_$__MAXSUPPORT$$DOUBLE
	.long	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld52
_$EXTINTERPOLATION$_Ld52:
	.byte	19
	.ascii	"TCubicInterpolation"

.const_data
	.align 2
.globl	_VMT_EXTINTERPOLATION_TCUBICINTERPOLATION
_VMT_EXTINTERPOLATION_TCUBICINTERPOLATION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPBASEINTERPOLATION
	.long	_$EXTINTERPOLATION$_Ld52
	.long	0,0
	.long	_$EXTINTERPOLATION$_Ld53
	.long	_RTTI_EXTINTERPOLATION_TCUBICINTERPOLATION
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
	.long	_FPCANVAS_TFPCUSTOMINTERPOLATION_$__INITIALIZE$TFPCUSTOMIMAGE$TFPCUSTOMCANVAS
	.long	_FPCANVAS_TFPBASEINTERPOLATION_$__EXECUTE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_EXTINTERPOLATION_TCUBICINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
	.long	_EXTINTERPOLATION_TCUBICINTERPOLATION_$__MAXSUPPORT$$DOUBLE
	.long	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld55
_$EXTINTERPOLATION$_Ld55:
	.byte	20
	.ascii	"TCatromInterpolation"

.const_data
	.align 2
.globl	_VMT_EXTINTERPOLATION_TCATROMINTERPOLATION
_VMT_EXTINTERPOLATION_TCATROMINTERPOLATION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPBASEINTERPOLATION
	.long	_$EXTINTERPOLATION$_Ld55
	.long	0,0
	.long	_$EXTINTERPOLATION$_Ld56
	.long	_RTTI_EXTINTERPOLATION_TCATROMINTERPOLATION
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
	.long	_FPCANVAS_TFPCUSTOMINTERPOLATION_$__INITIALIZE$TFPCUSTOMIMAGE$TFPCUSTOMCANVAS
	.long	_FPCANVAS_TFPBASEINTERPOLATION_$__EXECUTE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_EXTINTERPOLATION_TCATROMINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
	.long	_EXTINTERPOLATION_TCATROMINTERPOLATION_$__MAXSUPPORT$$DOUBLE
	.long	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld58
_$EXTINTERPOLATION$_Ld58:
	.byte	23
	.ascii	"TBilineairInterpolation"

.const_data
	.align 2
.globl	_VMT_EXTINTERPOLATION_TBILINEAIRINTERPOLATION
_VMT_EXTINTERPOLATION_TBILINEAIRINTERPOLATION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPBASEINTERPOLATION
	.long	_$EXTINTERPOLATION$_Ld58
	.long	0,0
	.long	_$EXTINTERPOLATION$_Ld59
	.long	_RTTI_EXTINTERPOLATION_TBILINEAIRINTERPOLATION
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
	.long	_FPCANVAS_TFPCUSTOMINTERPOLATION_$__INITIALIZE$TFPCUSTOMIMAGE$TFPCUSTOMCANVAS
	.long	_FPCANVAS_TFPBASEINTERPOLATION_$__EXECUTE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_EXTINTERPOLATION_TBILINEAIRINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
	.long	_EXTINTERPOLATION_TBILINEAIRINTERPOLATION_$__MAXSUPPORT$$DOUBLE
	.long	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld61
_$EXTINTERPOLATION$_Ld61:
	.byte	21
	.ascii	"THanningInterpolation"

.const_data
	.align 2
.globl	_VMT_EXTINTERPOLATION_THANNINGINTERPOLATION
_VMT_EXTINTERPOLATION_THANNINGINTERPOLATION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPBASEINTERPOLATION
	.long	_$EXTINTERPOLATION$_Ld61
	.long	0,0
	.long	_$EXTINTERPOLATION$_Ld62
	.long	_RTTI_EXTINTERPOLATION_THANNINGINTERPOLATION
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
	.long	_FPCANVAS_TFPCUSTOMINTERPOLATION_$__INITIALIZE$TFPCUSTOMIMAGE$TFPCUSTOMCANVAS
	.long	_FPCANVAS_TFPBASEINTERPOLATION_$__EXECUTE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_EXTINTERPOLATION_THANNINGINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
	.long	_EXTINTERPOLATION_THANNINGINTERPOLATION_$__MAXSUPPORT$$DOUBLE
	.long	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld64
_$EXTINTERPOLATION$_Ld64:
	.byte	21
	.ascii	"THammingInterpolation"

.const_data
	.align 2
.globl	_VMT_EXTINTERPOLATION_THAMMINGINTERPOLATION
_VMT_EXTINTERPOLATION_THAMMINGINTERPOLATION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPBASEINTERPOLATION
	.long	_$EXTINTERPOLATION$_Ld64
	.long	0,0
	.long	_$EXTINTERPOLATION$_Ld65
	.long	_RTTI_EXTINTERPOLATION_THAMMINGINTERPOLATION
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
	.long	_FPCANVAS_TFPCUSTOMINTERPOLATION_$__INITIALIZE$TFPCUSTOMIMAGE$TFPCUSTOMCANVAS
	.long	_FPCANVAS_TFPBASEINTERPOLATION_$__EXECUTE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_EXTINTERPOLATION_THAMMINGINTERPOLATION_$__FILTER$DOUBLE$$DOUBLE
	.long	_EXTINTERPOLATION_THAMMINGINTERPOLATION_$__MAXSUPPORT$$DOUBLE
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_EXTINTERPOLATION
_THREADVARLIST_EXTINTERPOLATION:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_EXTINTERPOLATION_J1$DOUBLE$$DOUBLE_PONE
_TC_EXTINTERPOLATION_J1$DOUBLE$$DOUBLE_PONE:
	.byte	61,104,35,229,194,129,63,68
	.byte	153,153,237,189,134,239,12,196
	.byte	234,188,199,8,208,18,192,67
	.byte	97,161,11,195,6,224,95,195
	.byte	89,247,122,173,218,136,240,66
	.byte	6,194,192,93,127,64,115,194
	.byte	136,167,201,64,58,110,233,65
	.byte	10,14,246,97,178,233,81,193
	.byte	201,74,246,211,62,26,165,64

.data
	.align 2
.globl	_TC_EXTINTERPOLATION_J1$DOUBLE$$DOUBLE_QONE
_TC_EXTINTERPOLATION_J1$DOUBLE$$DOUBLE_QONE:
	.byte	61,104,35,229,194,129,79,68
	.byte	34,117,174,57,225,145,228,67
	.byte	246,89,138,56,223,13,107,67
	.byte	24,169,113,120,110,170,231,66
	.byte	245,48,74,184,188,133,94,66
	.byte	8,233,45,45,42,55,206,65
	.byte	202,211,81,152,97,234,54,65
	.byte	62,19,102,238,185,27,153,64
	.byte	0,0,0,0,0,0,240,63

.data
	.align 2
.globl	_TC_EXTINTERPOLATION_P1$DOUBLE$$DOUBLE_PONE
_TC_EXTINTERPOLATION_P1$DOUBLE$$DOUBLE_PONE:
	.byte	69,102,248,70,21,51,225,64
	.byte	88,198,67,12,219,164,238,64
	.byte	157,247,155,163,125,158,222,64
	.byte	127,110,100,179,123,121,179,64
	.byte	151,87,227,180,228,100,106,64
	.byte	232,101,168,16,96,29,244,63

.data
	.align 2
.globl	_TC_EXTINTERPOLATION_P1$DOUBLE$$DOUBLE_QONE
_TC_EXTINTERPOLATION_P1$DOUBLE$$DOUBLE_QONE:
	.byte	69,102,248,70,21,51,225,64
	.byte	233,129,74,26,203,156,238,64
	.byte	244,62,41,2,26,130,222,64
	.byte	246,104,97,128,101,66,179,64
	.byte	107,198,241,8,123,98,105,64
	.byte	0,0,0,0,0,0,240,63

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld1
_$EXTINTERPOLATION$_Ld1:
	.byte	0,0,0,0,0,0,32,64

.data
	.align 2
.globl	_TC_EXTINTERPOLATION_Q1$DOUBLE$$DOUBLE_PONE
_TC_EXTINTERPOLATION_Q1$DOUBLE$$DOUBLE_PONE:
	.byte	165,126,135,149,205,242,117,64
	.byte	232,104,220,61,80,136,134,64
	.byte	44,142,78,252,203,159,122,64
	.byte	86,164,147,64,39,204,84,64
	.byte	12,192,157,200,206,69,18,64
	.byte	251,53,197,105,144,22,162,63

.data
	.align 2
.globl	_TC_EXTINTERPOLATION_Q1$DOUBLE$$DOUBLE_QONE
_TC_EXTINTERPOLATION_Q1$DOUBLE$$DOUBLE_QONE:
	.byte	135,83,95,199,188,67,189,64
	.byte	242,147,13,179,22,27,206,64
	.byte	245,50,101,168,29,224,193,64
	.byte	250,249,109,46,191,76,156,64
	.byte	165,211,62,138,102,244,89,64
	.byte	0,0,0,0,0,0,240,63

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld2
_$EXTINTERPOLATION$_Ld2:
	.byte	205,59,127,102,158,160,230,63

.const
	.align 3
.globl	_$EXTINTERPOLATION$_Ld3
_$EXTINTERPOLATION$_Ld3:
	.byte	0,0,0,0,0,0,0,128,0,64

.const
	.align 3
.globl	_$EXTINTERPOLATION$_Ld4
_$EXTINTERPOLATION$_Ld4:
	.byte	0,0,0,0,0,0,0,128,1,64

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld5
_$EXTINTERPOLATION$_Ld5:
	.byte	0,0,0,0,0,0,0,64

.const
	.align 3
.globl	_$EXTINTERPOLATION$_Ld6
_$EXTINTERPOLATION$_Ld6:
	.byte	61,10,215,163,112,61,10,215,253,63

.const
	.align 3
.globl	_$EXTINTERPOLATION$_Ld7
_$EXTINTERPOLATION$_Ld7:
	.byte	0,0,0,0,0,0,0,128,254,63

.const
	.align 3
.globl	_$EXTINTERPOLATION$_Ld8
_$EXTINTERPOLATION$_Ld8:
	.byte	10,215,163,112,61,10,215,163,251,63

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld9
_$EXTINTERPOLATION$_Ld9:
	.byte	0,0,0,0,0,0,240,191

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld10
_$EXTINTERPOLATION$_Ld10:
	.byte	0,0,0,0,0,0,8,64

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld11
_$EXTINTERPOLATION$_Ld11:
	.byte	0,0,0,0,0,0,8,192

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld12
_$EXTINTERPOLATION$_Ld12:
	.byte	0,0,0,0,0,0,248,191

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld13
_$EXTINTERPOLATION$_Ld13:
	.byte	0,0,0,0,0,0,224,191

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld14
_$EXTINTERPOLATION$_Ld14:
	.byte	0,0,0,0,0,0,248,63

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld15
_$EXTINTERPOLATION$_Ld15:
	.byte	0,0,0,0,0,0,224,63

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld16
_$EXTINTERPOLATION$_Ld16:
	.byte	0,0,0,0,0,0,232,63

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld17
_$EXTINTERPOLATION$_Ld17:
	.byte	0,0,0,0,0,0,0,192

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld18
_$EXTINTERPOLATION$_Ld18:
	.byte	0,0,0,0,0,0,24,64

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld19
_$EXTINTERPOLATION$_Ld19:
	.byte	0,0,0,0,0,0,16,64

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld20
_$EXTINTERPOLATION$_Ld20:
	.byte	0,0,0,0,0,0,24,192

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld21
_$EXTINTERPOLATION$_Ld21:
	.byte	0,0,0,0,0,0,20,64

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld22
_$EXTINTERPOLATION$_Ld22:
	.byte	0,0,0,0,0,0,20,192

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld23
_$EXTINTERPOLATION$_Ld23:
	.byte	0,0,0,0,0,0,32,192

.const
	.align 3
.globl	_$EXTINTERPOLATION$_Ld24
_$EXTINTERPOLATION$_Ld24:
	.byte	113,61,10,215,163,112,61,138,254,63

.const
	.align 3
.globl	_$EXTINTERPOLATION$_Ld25
_$EXTINTERPOLATION$_Ld25:
	.byte	31,133,235,81,184,30,133,235,253,63

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld26
_$EXTINTERPOLATION$_Ld26:
	.byte	0,0,0,0,0,0,244,63

.const
	.align 2
.globl	_$EXTINTERPOLATION$_Ld27
_$EXTINTERPOLATION$_Ld27:
	.byte	43,24,149,212,9,232,9,64
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EXTINTERPOLATION_J1$DOUBLE$$DOUBLE$stub:
.indirect_symbol _EXTINTERPOLATION_J1$DOUBLE$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EXTINTERPOLATION_Q1$DOUBLE$$DOUBLE$stub:
.indirect_symbol _EXTINTERPOLATION_Q1$DOUBLE$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EXTINTERPOLATION_P1$DOUBLE$$DOUBLE$stub:
.indirect_symbol _EXTINTERPOLATION_P1$DOUBLE$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EXTINTERPOLATION_BESSELORDERONE$DOUBLE$$DOUBLE$stub:
.indirect_symbol _EXTINTERPOLATION_BESSELORDERONE$DOUBLE$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EXTINTERPOLATION_SINC$DOUBLE$$DOUBLE$stub:
.indirect_symbol _EXTINTERPOLATION_SINC$DOUBLE$$DOUBLE
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

L_EXTINTERPOLATION_BLACKMAN$DOUBLE$$DOUBLE$stub:
.indirect_symbol _EXTINTERPOLATION_BLACKMAN$DOUBLE$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EXTINTERPOLATION_BESSEL$DOUBLE$$DOUBLE$stub:
.indirect_symbol _EXTINTERPOLATION_BESSEL$DOUBLE$$DOUBLE
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
.globl	_$EXTINTERPOLATION$_Ld29
_$EXTINTERPOLATION$_Ld29:
	.short	0
	.long	_$EXTINTERPOLATION$_Ld30
	.align 2
.globl	_$EXTINTERPOLATION$_Ld30
_$EXTINTERPOLATION$_Ld30:
	.short	0

.const_data
	.align 2
.globl	_INIT_EXTINTERPOLATION_TBLACKMANINTERPOLATION
_INIT_EXTINTERPOLATION_TBLACKMANINTERPOLATION:
	.byte	15,22
	.ascii	"TBlackmanInterpolation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_EXTINTERPOLATION_TBLACKMANINTERPOLATION
_RTTI_EXTINTERPOLATION_TBLACKMANINTERPOLATION:
	.byte	15,22
	.ascii	"TBlackmanInterpolation"
	.long	_VMT_EXTINTERPOLATION_TBLACKMANINTERPOLATION
	.long	_RTTI_FPCANVAS_TFPBASEINTERPOLATION
	.short	0
	.byte	16
	.ascii	"extinterpolation"
	.short	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld32
_$EXTINTERPOLATION$_Ld32:
	.short	0
	.long	_$EXTINTERPOLATION$_Ld33
	.align 2
.globl	_$EXTINTERPOLATION$_Ld33
_$EXTINTERPOLATION$_Ld33:
	.short	0

.const_data
	.align 2
.globl	_INIT_EXTINTERPOLATION_TBLACKMANSINCINTERPOLATION
_INIT_EXTINTERPOLATION_TBLACKMANSINCINTERPOLATION:
	.byte	15,26
	.ascii	"TBlackmanSincInterpolation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_EXTINTERPOLATION_TBLACKMANSINCINTERPOLATION
_RTTI_EXTINTERPOLATION_TBLACKMANSINCINTERPOLATION:
	.byte	15,26
	.ascii	"TBlackmanSincInterpolation"
	.long	_VMT_EXTINTERPOLATION_TBLACKMANSINCINTERPOLATION
	.long	_RTTI_FPCANVAS_TFPBASEINTERPOLATION
	.short	0
	.byte	16
	.ascii	"extinterpolation"
	.short	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld35
_$EXTINTERPOLATION$_Ld35:
	.short	0
	.long	_$EXTINTERPOLATION$_Ld36
	.align 2
.globl	_$EXTINTERPOLATION$_Ld36
_$EXTINTERPOLATION$_Ld36:
	.short	0

.const_data
	.align 2
.globl	_INIT_EXTINTERPOLATION_TBLACKMANBESSELINTERPOLATION
_INIT_EXTINTERPOLATION_TBLACKMANBESSELINTERPOLATION:
	.byte	15,28
	.ascii	"TBlackmanBesselInterpolation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_EXTINTERPOLATION_TBLACKMANBESSELINTERPOLATION
_RTTI_EXTINTERPOLATION_TBLACKMANBESSELINTERPOLATION:
	.byte	15,28
	.ascii	"TBlackmanBesselInterpolation"
	.long	_VMT_EXTINTERPOLATION_TBLACKMANBESSELINTERPOLATION
	.long	_RTTI_FPCANVAS_TFPBASEINTERPOLATION
	.short	0
	.byte	16
	.ascii	"extinterpolation"
	.short	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld38
_$EXTINTERPOLATION$_Ld38:
	.short	0
	.long	_$EXTINTERPOLATION$_Ld39
	.align 2
.globl	_$EXTINTERPOLATION$_Ld39
_$EXTINTERPOLATION$_Ld39:
	.short	0

.const_data
	.align 2
.globl	_INIT_EXTINTERPOLATION_TGAUSSIANINTERPOLATION
_INIT_EXTINTERPOLATION_TGAUSSIANINTERPOLATION:
	.byte	15,22
	.ascii	"TGaussianInterpolation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_EXTINTERPOLATION_TGAUSSIANINTERPOLATION
_RTTI_EXTINTERPOLATION_TGAUSSIANINTERPOLATION:
	.byte	15,22
	.ascii	"TGaussianInterpolation"
	.long	_VMT_EXTINTERPOLATION_TGAUSSIANINTERPOLATION
	.long	_RTTI_FPCANVAS_TFPBASEINTERPOLATION
	.short	0
	.byte	16
	.ascii	"extinterpolation"
	.short	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld41
_$EXTINTERPOLATION$_Ld41:
	.short	0
	.long	_$EXTINTERPOLATION$_Ld42
	.align 2
.globl	_$EXTINTERPOLATION$_Ld42
_$EXTINTERPOLATION$_Ld42:
	.short	0

.const_data
	.align 2
.globl	_INIT_EXTINTERPOLATION_TBOXINTERPOLATION
_INIT_EXTINTERPOLATION_TBOXINTERPOLATION:
	.byte	15,17
	.ascii	"TBoxInterpolation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_EXTINTERPOLATION_TBOXINTERPOLATION
_RTTI_EXTINTERPOLATION_TBOXINTERPOLATION:
	.byte	15,17
	.ascii	"TBoxInterpolation"
	.long	_VMT_EXTINTERPOLATION_TBOXINTERPOLATION
	.long	_RTTI_FPCANVAS_TFPBASEINTERPOLATION
	.short	0
	.byte	16
	.ascii	"extinterpolation"
	.short	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld44
_$EXTINTERPOLATION$_Ld44:
	.short	0
	.long	_$EXTINTERPOLATION$_Ld45
	.align 2
.globl	_$EXTINTERPOLATION$_Ld45
_$EXTINTERPOLATION$_Ld45:
	.short	0

.const_data
	.align 2
.globl	_INIT_EXTINTERPOLATION_THERMITEINTERPOLATION
_INIT_EXTINTERPOLATION_THERMITEINTERPOLATION:
	.byte	15,21
	.ascii	"THermiteInterpolation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_EXTINTERPOLATION_THERMITEINTERPOLATION
_RTTI_EXTINTERPOLATION_THERMITEINTERPOLATION:
	.byte	15,21
	.ascii	"THermiteInterpolation"
	.long	_VMT_EXTINTERPOLATION_THERMITEINTERPOLATION
	.long	_RTTI_FPCANVAS_TFPBASEINTERPOLATION
	.short	0
	.byte	16
	.ascii	"extinterpolation"
	.short	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld47
_$EXTINTERPOLATION$_Ld47:
	.short	0
	.long	_$EXTINTERPOLATION$_Ld48
	.align 2
.globl	_$EXTINTERPOLATION$_Ld48
_$EXTINTERPOLATION$_Ld48:
	.short	0

.const_data
	.align 2
.globl	_INIT_EXTINTERPOLATION_TLANCZOSINTERPOLATION
_INIT_EXTINTERPOLATION_TLANCZOSINTERPOLATION:
	.byte	15,21
	.ascii	"TLanczosInterpolation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_EXTINTERPOLATION_TLANCZOSINTERPOLATION
_RTTI_EXTINTERPOLATION_TLANCZOSINTERPOLATION:
	.byte	15,21
	.ascii	"TLanczosInterpolation"
	.long	_VMT_EXTINTERPOLATION_TLANCZOSINTERPOLATION
	.long	_RTTI_FPCANVAS_TFPBASEINTERPOLATION
	.short	0
	.byte	16
	.ascii	"extinterpolation"
	.short	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld50
_$EXTINTERPOLATION$_Ld50:
	.short	0
	.long	_$EXTINTERPOLATION$_Ld51
	.align 2
.globl	_$EXTINTERPOLATION$_Ld51
_$EXTINTERPOLATION$_Ld51:
	.short	0

.const_data
	.align 2
.globl	_INIT_EXTINTERPOLATION_TQUADRATICINTERPOLATION
_INIT_EXTINTERPOLATION_TQUADRATICINTERPOLATION:
	.byte	15,23
	.ascii	"TQuadraticInterpolation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_EXTINTERPOLATION_TQUADRATICINTERPOLATION
_RTTI_EXTINTERPOLATION_TQUADRATICINTERPOLATION:
	.byte	15,23
	.ascii	"TQuadraticInterpolation"
	.long	_VMT_EXTINTERPOLATION_TQUADRATICINTERPOLATION
	.long	_RTTI_FPCANVAS_TFPBASEINTERPOLATION
	.short	0
	.byte	16
	.ascii	"extinterpolation"
	.short	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld53
_$EXTINTERPOLATION$_Ld53:
	.short	0
	.long	_$EXTINTERPOLATION$_Ld54
	.align 2
.globl	_$EXTINTERPOLATION$_Ld54
_$EXTINTERPOLATION$_Ld54:
	.short	0

.const_data
	.align 2
.globl	_INIT_EXTINTERPOLATION_TCUBICINTERPOLATION
_INIT_EXTINTERPOLATION_TCUBICINTERPOLATION:
	.byte	15,19
	.ascii	"TCubicInterpolation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_EXTINTERPOLATION_TCUBICINTERPOLATION
_RTTI_EXTINTERPOLATION_TCUBICINTERPOLATION:
	.byte	15,19
	.ascii	"TCubicInterpolation"
	.long	_VMT_EXTINTERPOLATION_TCUBICINTERPOLATION
	.long	_RTTI_FPCANVAS_TFPBASEINTERPOLATION
	.short	0
	.byte	16
	.ascii	"extinterpolation"
	.short	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld56
_$EXTINTERPOLATION$_Ld56:
	.short	0
	.long	_$EXTINTERPOLATION$_Ld57
	.align 2
.globl	_$EXTINTERPOLATION$_Ld57
_$EXTINTERPOLATION$_Ld57:
	.short	0

.const_data
	.align 2
.globl	_INIT_EXTINTERPOLATION_TCATROMINTERPOLATION
_INIT_EXTINTERPOLATION_TCATROMINTERPOLATION:
	.byte	15,20
	.ascii	"TCatromInterpolation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_EXTINTERPOLATION_TCATROMINTERPOLATION
_RTTI_EXTINTERPOLATION_TCATROMINTERPOLATION:
	.byte	15,20
	.ascii	"TCatromInterpolation"
	.long	_VMT_EXTINTERPOLATION_TCATROMINTERPOLATION
	.long	_RTTI_FPCANVAS_TFPBASEINTERPOLATION
	.short	0
	.byte	16
	.ascii	"extinterpolation"
	.short	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld59
_$EXTINTERPOLATION$_Ld59:
	.short	0
	.long	_$EXTINTERPOLATION$_Ld60
	.align 2
.globl	_$EXTINTERPOLATION$_Ld60
_$EXTINTERPOLATION$_Ld60:
	.short	0

.const_data
	.align 2
.globl	_INIT_EXTINTERPOLATION_TBILINEAIRINTERPOLATION
_INIT_EXTINTERPOLATION_TBILINEAIRINTERPOLATION:
	.byte	15,23
	.ascii	"TBilineairInterpolation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_EXTINTERPOLATION_TBILINEAIRINTERPOLATION
_RTTI_EXTINTERPOLATION_TBILINEAIRINTERPOLATION:
	.byte	15,23
	.ascii	"TBilineairInterpolation"
	.long	_VMT_EXTINTERPOLATION_TBILINEAIRINTERPOLATION
	.long	_RTTI_FPCANVAS_TFPBASEINTERPOLATION
	.short	0
	.byte	16
	.ascii	"extinterpolation"
	.short	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld62
_$EXTINTERPOLATION$_Ld62:
	.short	0
	.long	_$EXTINTERPOLATION$_Ld63
	.align 2
.globl	_$EXTINTERPOLATION$_Ld63
_$EXTINTERPOLATION$_Ld63:
	.short	0

.const_data
	.align 2
.globl	_INIT_EXTINTERPOLATION_THANNINGINTERPOLATION
_INIT_EXTINTERPOLATION_THANNINGINTERPOLATION:
	.byte	15,21
	.ascii	"THanningInterpolation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_EXTINTERPOLATION_THANNINGINTERPOLATION
_RTTI_EXTINTERPOLATION_THANNINGINTERPOLATION:
	.byte	15,21
	.ascii	"THanningInterpolation"
	.long	_VMT_EXTINTERPOLATION_THANNINGINTERPOLATION
	.long	_RTTI_FPCANVAS_TFPBASEINTERPOLATION
	.short	0
	.byte	16
	.ascii	"extinterpolation"
	.short	0

.const_data
	.align 2
.globl	_$EXTINTERPOLATION$_Ld65
_$EXTINTERPOLATION$_Ld65:
	.short	0
	.long	_$EXTINTERPOLATION$_Ld66
	.align 2
.globl	_$EXTINTERPOLATION$_Ld66
_$EXTINTERPOLATION$_Ld66:
	.short	0

.const_data
	.align 2
.globl	_INIT_EXTINTERPOLATION_THAMMINGINTERPOLATION
_INIT_EXTINTERPOLATION_THAMMINGINTERPOLATION:
	.byte	15,21
	.ascii	"THammingInterpolation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_EXTINTERPOLATION_THAMMINGINTERPOLATION
_RTTI_EXTINTERPOLATION_THAMMINGINTERPOLATION:
	.byte	15,21
	.ascii	"THammingInterpolation"
	.long	_VMT_EXTINTERPOLATION_THAMMINGINTERPOLATION
	.long	_RTTI_FPCANVAS_TFPBASEINTERPOLATION
	.short	0
	.byte	16
	.ascii	"extinterpolation"
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
L_TC_EXTINTERPOLATION_J1$DOUBLE$$DOUBLE_PONE$non_lazy_ptr:
.indirect_symbol _TC_EXTINTERPOLATION_J1$DOUBLE$$DOUBLE_PONE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_EXTINTERPOLATION_J1$DOUBLE$$DOUBLE_QONE$non_lazy_ptr:
.indirect_symbol _TC_EXTINTERPOLATION_J1$DOUBLE$$DOUBLE_QONE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_EXTINTERPOLATION_P1$DOUBLE$$DOUBLE_PONE$non_lazy_ptr:
.indirect_symbol _TC_EXTINTERPOLATION_P1$DOUBLE$$DOUBLE_PONE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_EXTINTERPOLATION_P1$DOUBLE$$DOUBLE_QONE$non_lazy_ptr:
.indirect_symbol _TC_EXTINTERPOLATION_P1$DOUBLE$$DOUBLE_QONE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld1$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_EXTINTERPOLATION_Q1$DOUBLE$$DOUBLE_PONE$non_lazy_ptr:
.indirect_symbol _TC_EXTINTERPOLATION_Q1$DOUBLE$$DOUBLE_PONE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_EXTINTERPOLATION_Q1$DOUBLE$$DOUBLE_QONE$non_lazy_ptr:
.indirect_symbol _TC_EXTINTERPOLATION_Q1$DOUBLE$$DOUBLE_QONE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld2$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld3$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld4$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld5$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld7$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld6$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld8$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld9$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld10$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld10
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld11$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld12$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld12
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld13$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld14$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld14
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld15$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld16$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld16
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld17$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld18$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld18
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld20$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld20
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld19$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld21$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld22$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld22
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld23$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld25$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld24$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld24
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld26$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld26
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EXTINTERPOLATION$_Ld27$non_lazy_ptr:
.indirect_symbol _$EXTINTERPOLATION$_Ld27
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

