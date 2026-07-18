# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_MATRIX_TVECTOR2_SINGLE_$__INIT_ZERO$$LONGBOOL
_MATRIX_TVECTOR2_SINGLE_$__INIT_ZERO$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$8,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj13
	jmp	Lj14
Lj13:
	jmp	Lj3
Lj14:
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	4(%eax)
Lj3:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR2_SINGLE_$__INIT_ONE$$LONGBOOL
_MATRIX_TVECTOR2_SINGLE_$__INIT_ONE$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$8,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj29
	jmp	Lj30
Lj29:
	jmp	Lj19
Lj30:
	movl	-8(%ebp),%eax
	fld1
	fstps	(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstps	4(%eax)
Lj19:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR2_SINGLE_$__INIT$SINGLE$SINGLE$$LONGBOOL
_MATRIX_TVECTOR2_SINGLE_$__INIT$SINGLE$SINGLE$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$8,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj45
	jmp	Lj46
Lj45:
	jmp	Lj35
Lj46:
	movl	-8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,4(%eax)
Lj35:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR2_SINGLE_$__LENGTH$$SINGLE
_MATRIX_TVECTOR2_SINGLE_$__LENGTH$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fsqrt
	fstps	-8(%ebp)
	flds	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR2_SINGLE_$__SQUARED_LENGTH$$SINGLE
_MATRIX_TVECTOR2_SINGLE_$__SQUARED_LENGTH$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstps	-8(%ebp)
	flds	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_DOUBLE$$TVECTOR2_SINGLE
_MATRIX_assign$TVECTOR2_DOUBLE$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstps	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_EXTENDED$$TVECTOR2_SINGLE
_MATRIX_assign$TVECTOR2_EXTENDED$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstps	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_SINGLE$$TVECTOR2_SINGLE
_MATRIX_assign$TVECTOR3_SINGLE$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_DOUBLE$$TVECTOR2_SINGLE
_MATRIX_assign$TVECTOR3_DOUBLE$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstps	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_EXTENDED$$TVECTOR2_SINGLE
_MATRIX_assign$TVECTOR3_EXTENDED$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstps	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_SINGLE$$TVECTOR2_SINGLE
_MATRIX_assign$TVECTOR4_SINGLE$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_DOUBLE$$TVECTOR2_SINGLE
_MATRIX_assign$TVECTOR4_DOUBLE$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstps	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_EXTENDED$$TVECTOR2_SINGLE
_MATRIX_assign$TVECTOR4_EXTENDED$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstps	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TVECTOR2_SINGLE$TVECTOR2_SINGLE$$TVECTOR2_SINGLE
_MATRIX_plus$TVECTOR2_SINGLE$TVECTOR2_SINGLE$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR2_SINGLE$$TVECTOR2_SINGLE
_MATRIX_minus$TVECTOR2_SINGLE$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	4(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR2_SINGLE$TVECTOR2_SINGLE$$TVECTOR2_SINGLE
_MATRIX_minus$TVECTOR2_SINGLE$TVECTOR2_SINGLE$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TVECTOR2_SINGLE$TVECTOR2_SINGLE$$TVECTOR2_SINGLE
_MATRIX_star$TVECTOR2_SINGLE$TVECTOR2_SINGLE$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TVECTOR2_SINGLE$TVECTOR2_SINGLE$$TVECTOR2_SINGLE
_MATRIX_slash$TVECTOR2_SINGLE$TVECTOR2_SINGLE$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_starstar$TVECTOR2_SINGLE$TVECTOR2_SINGLE$$SINGLE
_MATRIX_starstar$TVECTOR2_SINGLE$TVECTOR2_SINGLE$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstps	-12(%ebp)
	flds	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TVECTOR2_SINGLE$SINGLE$$TVECTOR2_SINGLE
_MATRIX_plus$TVECTOR2_SINGLE$SINGLE$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR2_SINGLE$SINGLE$$TVECTOR2_SINGLE
_MATRIX_minus$TVECTOR2_SINGLE$SINGLE$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TVECTOR2_SINGLE$SINGLE$$TVECTOR2_SINGLE
_MATRIX_star$TVECTOR2_SINGLE$SINGLE$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TVECTOR2_SINGLE$SINGLE$$TVECTOR2_SINGLE
_MATRIX_slash$TVECTOR2_SINGLE$SINGLE$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR2_DOUBLE_$__INIT_ZERO$$LONGBOOL
_MATRIX_TVECTOR2_DOUBLE_$__INIT_ZERO$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$16,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj175
	jmp	Lj176
Lj175:
	jmp	Lj165
Lj176:
	movl	-8(%ebp),%eax
	fldz
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	8(%eax)
Lj165:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR2_DOUBLE_$__INIT_ONE$$LONGBOOL
_MATRIX_TVECTOR2_DOUBLE_$__INIT_ONE$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$16,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj191
	jmp	Lj192
Lj191:
	jmp	Lj181
Lj192:
	movl	-8(%ebp),%eax
	fld1
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpl	8(%eax)
Lj181:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR2_DOUBLE_$__INIT$DOUBLE$DOUBLE$$LONGBOOL
_MATRIX_TVECTOR2_DOUBLE_$__INIT$DOUBLE$DOUBLE$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$16,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj207
	jmp	Lj208
Lj207:
	jmp	Lj197
Lj208:
	movl	-8(%ebp),%edx
	movl	16(%ebp),%eax
	movl	%eax,(%edx)
	movl	20(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,8(%edx)
	movl	12(%ebp),%eax
	movl	%eax,12(%edx)
Lj197:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR2_DOUBLE_$__LENGTH$$DOUBLE
_MATRIX_TVECTOR2_DOUBLE_$__LENGTH$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fsqrt
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR2_DOUBLE_$__SQUARED_LENGTH$$DOUBLE
_MATRIX_TVECTOR2_DOUBLE_$__SQUARED_LENGTH$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_SINGLE$$TVECTOR2_DOUBLE
_MATRIX_assign$TVECTOR2_SINGLE$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_EXTENDED$$TVECTOR2_DOUBLE
_MATRIX_assign$TVECTOR2_EXTENDED$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_SINGLE$$TVECTOR2_DOUBLE
_MATRIX_assign$TVECTOR3_SINGLE$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_DOUBLE$$TVECTOR2_DOUBLE
_MATRIX_assign$TVECTOR3_DOUBLE$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,8(%ecx)
	movl	12(%edx),%eax
	movl	%eax,12(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_EXTENDED$$TVECTOR2_DOUBLE
_MATRIX_assign$TVECTOR3_EXTENDED$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_SINGLE$$TVECTOR2_DOUBLE
_MATRIX_assign$TVECTOR4_SINGLE$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_DOUBLE$$TVECTOR2_DOUBLE
_MATRIX_assign$TVECTOR4_DOUBLE$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,8(%ecx)
	movl	12(%edx),%eax
	movl	%eax,12(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_EXTENDED$$TVECTOR2_DOUBLE
_MATRIX_assign$TVECTOR4_EXTENDED$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TVECTOR2_DOUBLE$TVECTOR2_DOUBLE$$TVECTOR2_DOUBLE
_MATRIX_plus$TVECTOR2_DOUBLE$TVECTOR2_DOUBLE$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR2_DOUBLE$$TVECTOR2_DOUBLE
_MATRIX_minus$TVECTOR2_DOUBLE$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR2_DOUBLE$TVECTOR2_DOUBLE$$TVECTOR2_DOUBLE
_MATRIX_minus$TVECTOR2_DOUBLE$TVECTOR2_DOUBLE$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TVECTOR2_DOUBLE$TVECTOR2_DOUBLE$$TVECTOR2_DOUBLE
_MATRIX_star$TVECTOR2_DOUBLE$TVECTOR2_DOUBLE$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TVECTOR2_DOUBLE$TVECTOR2_DOUBLE$$TVECTOR2_DOUBLE
_MATRIX_slash$TVECTOR2_DOUBLE$TVECTOR2_DOUBLE$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_starstar$TVECTOR2_DOUBLE$TVECTOR2_DOUBLE$$DOUBLE
_MATRIX_starstar$TVECTOR2_DOUBLE$TVECTOR2_DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TVECTOR2_DOUBLE$DOUBLE$$TVECTOR2_DOUBLE
_MATRIX_plus$TVECTOR2_DOUBLE$DOUBLE$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR2_DOUBLE$DOUBLE$$TVECTOR2_DOUBLE
_MATRIX_minus$TVECTOR2_DOUBLE$DOUBLE$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TVECTOR2_DOUBLE$DOUBLE$$TVECTOR2_DOUBLE
_MATRIX_star$TVECTOR2_DOUBLE$DOUBLE$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TVECTOR2_DOUBLE$DOUBLE$$TVECTOR2_DOUBLE
_MATRIX_slash$TVECTOR2_DOUBLE$DOUBLE$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR2_EXTENDED_$__INIT_ZERO$$LONGBOOL
_MATRIX_TVECTOR2_EXTENDED_$__INIT_ZERO$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$20,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj337
	jmp	Lj338
Lj337:
	jmp	Lj327
Lj338:
	movl	-8(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	10(%eax)
Lj327:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR2_EXTENDED_$__INIT_ONE$$LONGBOOL
_MATRIX_TVECTOR2_EXTENDED_$__INIT_ONE$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$20,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj353
	jmp	Lj354
Lj353:
	jmp	Lj343
Lj354:
	movl	-8(%ebp),%eax
	fld1
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpt	10(%eax)
Lj343:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR2_EXTENDED_$__INIT$EXTENDED$EXTENDED$$LONGBOOL
_MATRIX_TVECTOR2_EXTENDED_$__INIT$EXTENDED$EXTENDED$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$20,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj369
	jmp	Lj370
Lj369:
	jmp	Lj359
Lj370:
	movl	-8(%ebp),%edx
	movl	20(%ebp),%eax
	movl	%eax,(%edx)
	movl	24(%ebp),%eax
	movl	%eax,4(%edx)
	movw	28(%ebp),%ax
	movw	%ax,8(%edx)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,10(%edx)
	movl	12(%ebp),%eax
	movl	%eax,14(%edx)
	movw	16(%ebp),%ax
	movw	%ax,18(%edx)
Lj359:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR2_EXTENDED_$__LENGTH$$EXTENDED
_MATRIX_TVECTOR2_EXTENDED_$__LENGTH$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fsqrt
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR2_EXTENDED_$__SQUARED_LENGTH$$EXTENDED
_MATRIX_TVECTOR2_EXTENDED_$__SQUARED_LENGTH$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_SINGLE$$TVECTOR2_EXTENDED
_MATRIX_assign$TVECTOR2_SINGLE$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpt	10(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_DOUBLE$$TVECTOR2_EXTENDED
_MATRIX_assign$TVECTOR2_DOUBLE$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstpt	10(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_SINGLE$$TVECTOR2_EXTENDED
_MATRIX_assign$TVECTOR3_SINGLE$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpt	10(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_DOUBLE$$TVECTOR2_EXTENDED
_MATRIX_assign$TVECTOR3_DOUBLE$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstpt	10(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_EXTENDED$$TVECTOR2_EXTENDED
_MATRIX_assign$TVECTOR3_EXTENDED$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movw	8(%edx),%ax
	movw	%ax,8(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	10(%edx),%eax
	movl	%eax,10(%ecx)
	movl	14(%edx),%eax
	movl	%eax,14(%ecx)
	movw	18(%edx),%ax
	movw	%ax,18(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_SINGLE$$TVECTOR2_EXTENDED
_MATRIX_assign$TVECTOR4_SINGLE$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpt	10(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_DOUBLE$$TVECTOR2_EXTENDED
_MATRIX_assign$TVECTOR4_DOUBLE$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstpt	10(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_EXTENDED$$TVECTOR2_EXTENDED
_MATRIX_assign$TVECTOR4_EXTENDED$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movw	8(%edx),%ax
	movw	%ax,8(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	10(%edx),%eax
	movl	%eax,10(%ecx)
	movl	14(%edx),%eax
	movl	%eax,14(%ecx)
	movw	18(%edx),%ax
	movw	%ax,18(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TVECTOR2_EXTENDED$TVECTOR2_EXTENDED$$TVECTOR2_EXTENDED
_MATRIX_plus$TVECTOR2_EXTENDED$TVECTOR2_EXTENDED$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR2_EXTENDED$$TVECTOR2_EXTENDED
_MATRIX_minus$TVECTOR2_EXTENDED$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	10(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR2_EXTENDED$TVECTOR2_EXTENDED$$TVECTOR2_EXTENDED
_MATRIX_minus$TVECTOR2_EXTENDED$TVECTOR2_EXTENDED$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TVECTOR2_EXTENDED$TVECTOR2_EXTENDED$$TVECTOR2_EXTENDED
_MATRIX_star$TVECTOR2_EXTENDED$TVECTOR2_EXTENDED$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TVECTOR2_EXTENDED$TVECTOR2_EXTENDED$$TVECTOR2_EXTENDED
_MATRIX_slash$TVECTOR2_EXTENDED$TVECTOR2_EXTENDED$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_starstar$TVECTOR2_EXTENDED$TVECTOR2_EXTENDED$$EXTENDED
_MATRIX_starstar$TVECTOR2_EXTENDED$TVECTOR2_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TVECTOR2_EXTENDED$EXTENDED$$TVECTOR2_EXTENDED
_MATRIX_plus$TVECTOR2_EXTENDED$EXTENDED$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR2_EXTENDED$EXTENDED$$TVECTOR2_EXTENDED
_MATRIX_minus$TVECTOR2_EXTENDED$EXTENDED$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TVECTOR2_EXTENDED$EXTENDED$$TVECTOR2_EXTENDED
_MATRIX_star$TVECTOR2_EXTENDED$EXTENDED$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TVECTOR2_EXTENDED$EXTENDED$$TVECTOR2_EXTENDED
_MATRIX_slash$TVECTOR2_EXTENDED$EXTENDED$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR3_SINGLE_$__INIT_ZERO$$LONGBOOL
_MATRIX_TVECTOR3_SINGLE_$__INIT_ZERO$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$12,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj499
	jmp	Lj500
Lj499:
	jmp	Lj489
Lj500:
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	8(%eax)
Lj489:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR3_SINGLE_$__INIT_ONE$$LONGBOOL
_MATRIX_TVECTOR3_SINGLE_$__INIT_ONE$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$12,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj517
	jmp	Lj518
Lj517:
	jmp	Lj507
Lj518:
	movl	-8(%ebp),%eax
	fld1
	fstps	(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstps	8(%eax)
Lj507:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR3_SINGLE_$__INIT$SINGLE$SINGLE$SINGLE$$LONGBOOL
_MATRIX_TVECTOR3_SINGLE_$__INIT$SINGLE$SINGLE$SINGLE$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$12,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj535
	jmp	Lj536
Lj535:
	jmp	Lj525
Lj536:
	movl	-8(%ebp),%eax
	movl	16(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,8(%eax)
Lj525:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR3_SINGLE_$__LENGTH$$SINGLE
_MATRIX_TVECTOR3_SINGLE_$__LENGTH$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fsqrt
	fstps	-8(%ebp)
	flds	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR3_SINGLE_$__SQUARED_LENGTH$$SINGLE
_MATRIX_TVECTOR3_SINGLE_$__SQUARED_LENGTH$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstps	-8(%ebp)
	flds	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_SINGLE$$TVECTOR3_SINGLE
_MATRIX_assign$TVECTOR2_SINGLE$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	fldz
	fstps	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_DOUBLE$$TVECTOR3_SINGLE
_MATRIX_assign$TVECTOR2_DOUBLE$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	(%eax)
	fstps	(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_EXTENDED$$TVECTOR3_SINGLE
_MATRIX_assign$TVECTOR2_EXTENDED$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fstps	(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_DOUBLE$$TVECTOR3_SINGLE
_MATRIX_assign$TVECTOR3_DOUBLE$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstps	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_EXTENDED$$TVECTOR3_SINGLE
_MATRIX_assign$TVECTOR3_EXTENDED$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstps	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_SINGLE$$TVECTOR3_SINGLE
_MATRIX_assign$TVECTOR4_SINGLE$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_DOUBLE$$TVECTOR3_SINGLE
_MATRIX_assign$TVECTOR4_DOUBLE$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstps	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_EXTENDED$$TVECTOR3_SINGLE
_MATRIX_assign$TVECTOR4_EXTENDED$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstps	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TVECTOR3_SINGLE$TVECTOR3_SINGLE$$TVECTOR3_SINGLE
_MATRIX_plus$TVECTOR3_SINGLE$TVECTOR3_SINGLE$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	8(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR3_SINGLE$$TVECTOR3_SINGLE
_MATRIX_minus$TVECTOR3_SINGLE$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	4(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR3_SINGLE$TVECTOR3_SINGLE$$TVECTOR3_SINGLE
_MATRIX_minus$TVECTOR3_SINGLE$TVECTOR3_SINGLE$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	8(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TVECTOR3_SINGLE$TVECTOR3_SINGLE$$TVECTOR3_SINGLE
_MATRIX_star$TVECTOR3_SINGLE$TVECTOR3_SINGLE$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	(%edx)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TVECTOR3_SINGLE$TVECTOR3_SINGLE$$TVECTOR3_SINGLE
_MATRIX_slash$TVECTOR3_SINGLE$TVECTOR3_SINGLE$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	(%edx)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	8(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_starstar$TVECTOR3_SINGLE$TVECTOR3_SINGLE$$SINGLE
_MATRIX_starstar$TVECTOR3_SINGLE$TVECTOR3_SINGLE$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstps	-12(%ebp)
	flds	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_sym_diff$TVECTOR3_SINGLE$TVECTOR3_SINGLE$$TVECTOR3_SINGLE
_MATRIX_sym_diff$TVECTOR3_SINGLE$TVECTOR3_SINGLE$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	4(%eax)
	flds	8(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TVECTOR3_SINGLE$SINGLE$$TVECTOR3_SINGLE
_MATRIX_plus$TVECTOR3_SINGLE$SINGLE$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR3_SINGLE$SINGLE$$TVECTOR3_SINGLE
_MATRIX_minus$TVECTOR3_SINGLE$SINGLE$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TVECTOR3_SINGLE$SINGLE$$TVECTOR3_SINGLE
_MATRIX_star$TVECTOR3_SINGLE$SINGLE$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TVECTOR3_SINGLE$SINGLE$$TVECTOR3_SINGLE
_MATRIX_slash$TVECTOR3_SINGLE$SINGLE$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR3_DOUBLE_$__INIT_ZERO$$LONGBOOL
_MATRIX_TVECTOR3_DOUBLE_$__INIT_ZERO$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$24,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj709
	jmp	Lj710
Lj709:
	jmp	Lj699
Lj710:
	movl	-8(%ebp),%eax
	fldz
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	16(%eax)
Lj699:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR3_DOUBLE_$__INIT_ONE$$LONGBOOL
_MATRIX_TVECTOR3_DOUBLE_$__INIT_ONE$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$24,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj727
	jmp	Lj728
Lj727:
	jmp	Lj717
Lj728:
	movl	-8(%ebp),%eax
	fld1
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpl	16(%eax)
Lj717:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR3_DOUBLE_$__INIT$DOUBLE$DOUBLE$DOUBLE$$LONGBOOL
_MATRIX_TVECTOR3_DOUBLE_$__INIT$DOUBLE$DOUBLE$DOUBLE$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$24,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj745
	jmp	Lj746
Lj745:
	jmp	Lj735
Lj746:
	movl	-8(%ebp),%edx
	movl	24(%ebp),%eax
	movl	%eax,(%edx)
	movl	28(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	16(%ebp),%eax
	movl	%eax,8(%edx)
	movl	20(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,16(%edx)
	movl	12(%ebp),%eax
	movl	%eax,20(%edx)
Lj735:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR3_DOUBLE_$__LENGTH$$DOUBLE
_MATRIX_TVECTOR3_DOUBLE_$__LENGTH$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fsqrt
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR3_DOUBLE_$__SQUARED_LENGTH$$DOUBLE
_MATRIX_TVECTOR3_DOUBLE_$__SQUARED_LENGTH$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_SINGLE$$TVECTOR3_DOUBLE
_MATRIX_assign$TVECTOR2_SINGLE$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	(%eax)
	fstpl	(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	16(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_DOUBLE$$TVECTOR3_DOUBLE
_MATRIX_assign$TVECTOR2_DOUBLE$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,8(%ecx)
	movl	12(%edx),%eax
	movl	%eax,12(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpl	16(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_EXTENDED$$TVECTOR3_DOUBLE
_MATRIX_assign$TVECTOR2_EXTENDED$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fstpl	(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	16(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_SINGLE$$TVECTOR3_DOUBLE
_MATRIX_assign$TVECTOR3_SINGLE$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpl	16(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_EXTENDED$$TVECTOR3_DOUBLE
_MATRIX_assign$TVECTOR3_EXTENDED$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstpl	16(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_SINGLE$$TVECTOR3_DOUBLE
_MATRIX_assign$TVECTOR4_SINGLE$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpl	16(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_DOUBLE$$TVECTOR3_DOUBLE
_MATRIX_assign$TVECTOR4_DOUBLE$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,8(%ecx)
	movl	12(%edx),%eax
	movl	%eax,12(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	16(%edx),%eax
	movl	%eax,16(%ecx)
	movl	20(%edx),%eax
	movl	%eax,20(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_EXTENDED$$TVECTOR3_DOUBLE
_MATRIX_assign$TVECTOR4_EXTENDED$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstpl	16(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TVECTOR3_DOUBLE$TVECTOR3_DOUBLE$$TVECTOR3_DOUBLE
_MATRIX_plus$TVECTOR3_DOUBLE$TVECTOR3_DOUBLE$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	(%eax)
	fldl	(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	16(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	16(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR3_DOUBLE$$TVECTOR3_DOUBLE
_MATRIX_minus$TVECTOR3_DOUBLE$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	16(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR3_DOUBLE$TVECTOR3_DOUBLE$$TVECTOR3_DOUBLE
_MATRIX_minus$TVECTOR3_DOUBLE$TVECTOR3_DOUBLE$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	(%eax)
	fldl	(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	16(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	16(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TVECTOR3_DOUBLE$TVECTOR3_DOUBLE$$TVECTOR3_DOUBLE
_MATRIX_star$TVECTOR3_DOUBLE$TVECTOR3_DOUBLE$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	(%eax)
	fldl	(%edx)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	16(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TVECTOR3_DOUBLE$TVECTOR3_DOUBLE$$TVECTOR3_DOUBLE
_MATRIX_slash$TVECTOR3_DOUBLE$TVECTOR3_DOUBLE$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	(%eax)
	fldl	(%edx)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	16(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	16(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_starstar$TVECTOR3_DOUBLE$TVECTOR3_DOUBLE$$DOUBLE
_MATRIX_starstar$TVECTOR3_DOUBLE$TVECTOR3_DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_sym_diff$TVECTOR3_DOUBLE$TVECTOR3_DOUBLE$$TVECTOR3_DOUBLE
_MATRIX_sym_diff$TVECTOR3_DOUBLE$TVECTOR3_DOUBLE$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	8(%eax)
	fldl	16(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	16(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TVECTOR3_DOUBLE$DOUBLE$$TVECTOR3_DOUBLE
_MATRIX_plus$TVECTOR3_DOUBLE$DOUBLE$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR3_DOUBLE$DOUBLE$$TVECTOR3_DOUBLE
_MATRIX_minus$TVECTOR3_DOUBLE$DOUBLE$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TVECTOR3_DOUBLE$DOUBLE$$TVECTOR3_DOUBLE
_MATRIX_star$TVECTOR3_DOUBLE$DOUBLE$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TVECTOR3_DOUBLE$DOUBLE$$TVECTOR3_DOUBLE
_MATRIX_slash$TVECTOR3_DOUBLE$DOUBLE$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR3_EXTENDED_$__INIT_ZERO$$LONGBOOL
_MATRIX_TVECTOR3_EXTENDED_$__INIT_ZERO$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$32,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj919
	jmp	Lj920
Lj919:
	jmp	Lj909
Lj920:
	movl	-8(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	20(%eax)
Lj909:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR3_EXTENDED_$__INIT_ONE$$LONGBOOL
_MATRIX_TVECTOR3_EXTENDED_$__INIT_ONE$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$32,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj937
	jmp	Lj938
Lj937:
	jmp	Lj927
Lj938:
	movl	-8(%ebp),%eax
	fld1
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpt	20(%eax)
Lj927:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR3_EXTENDED_$__INIT$EXTENDED$EXTENDED$EXTENDED$$LONGBOOL
_MATRIX_TVECTOR3_EXTENDED_$__INIT$EXTENDED$EXTENDED$EXTENDED$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$32,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj955
	jmp	Lj956
Lj955:
	jmp	Lj945
Lj956:
	movl	-8(%ebp),%edx
	movl	32(%ebp),%eax
	movl	%eax,(%edx)
	movl	36(%ebp),%eax
	movl	%eax,4(%edx)
	movw	40(%ebp),%ax
	movw	%ax,8(%edx)
	movl	-8(%ebp),%edx
	movl	20(%ebp),%eax
	movl	%eax,10(%edx)
	movl	24(%ebp),%eax
	movl	%eax,14(%edx)
	movw	28(%ebp),%ax
	movw	%ax,18(%edx)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,20(%edx)
	movl	12(%ebp),%eax
	movl	%eax,24(%edx)
	movw	16(%ebp),%ax
	movw	%ax,28(%edx)
Lj945:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR3_EXTENDED_$__LENGTH$$EXTENDED
_MATRIX_TVECTOR3_EXTENDED_$__LENGTH$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fsqrt
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR3_EXTENDED_$__SQUARED_LENGTH$$EXTENDED
_MATRIX_TVECTOR3_EXTENDED_$__SQUARED_LENGTH$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_SINGLE$$TVECTOR3_EXTENDED
_MATRIX_assign$TVECTOR2_SINGLE$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	(%eax)
	fstpt	(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_DOUBLE$$TVECTOR3_EXTENDED
_MATRIX_assign$TVECTOR2_DOUBLE$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	(%eax)
	fstpt	(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_EXTENDED$$TVECTOR3_EXTENDED
_MATRIX_assign$TVECTOR2_EXTENDED$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movw	8(%edx),%ax
	movw	%ax,8(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	10(%edx),%eax
	movl	%eax,10(%ecx)
	movl	14(%edx),%eax
	movl	%eax,14(%ecx)
	movw	18(%edx),%ax
	movw	%ax,18(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpt	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_SINGLE$$TVECTOR3_EXTENDED
_MATRIX_assign$TVECTOR3_SINGLE$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpt	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_DOUBLE$$TVECTOR3_EXTENDED
_MATRIX_assign$TVECTOR3_DOUBLE$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstpt	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_SINGLE$$TVECTOR3_EXTENDED
_MATRIX_assign$TVECTOR4_SINGLE$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpt	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_DOUBLE$$TVECTOR3_EXTENDED
_MATRIX_assign$TVECTOR4_DOUBLE$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstpt	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_EXTENDED$$TVECTOR3_EXTENDED
_MATRIX_assign$TVECTOR4_EXTENDED$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movw	8(%edx),%ax
	movw	%ax,8(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	10(%edx),%eax
	movl	%eax,10(%ecx)
	movl	14(%edx),%eax
	movl	%eax,14(%ecx)
	movw	18(%edx),%ax
	movw	%ax,18(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	20(%edx),%eax
	movl	%eax,20(%ecx)
	movl	24(%edx),%eax
	movl	%eax,24(%ecx)
	movw	28(%edx),%ax
	movw	%ax,28(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TVECTOR3_EXTENDED$TVECTOR3_EXTENDED$$TVECTOR3_EXTENDED
_MATRIX_plus$TVECTOR3_EXTENDED$TVECTOR3_EXTENDED$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	(%eax)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	20(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR3_EXTENDED$$TVECTOR3_EXTENDED
_MATRIX_minus$TVECTOR3_EXTENDED$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	10(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	20(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR3_EXTENDED$TVECTOR3_EXTENDED$$TVECTOR3_EXTENDED
_MATRIX_minus$TVECTOR3_EXTENDED$TVECTOR3_EXTENDED$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	(%eax)
	fldt	(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	20(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TVECTOR3_EXTENDED$TVECTOR3_EXTENDED$$TVECTOR3_EXTENDED
_MATRIX_star$TVECTOR3_EXTENDED$TVECTOR3_EXTENDED$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	(%eax)
	fldt	(%edx)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TVECTOR3_EXTENDED$TVECTOR3_EXTENDED$$TVECTOR3_EXTENDED
_MATRIX_slash$TVECTOR3_EXTENDED$TVECTOR3_EXTENDED$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	(%eax)
	fldt	(%edx)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	20(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_starstar$TVECTOR3_EXTENDED$TVECTOR3_EXTENDED$$EXTENDED
_MATRIX_starstar$TVECTOR3_EXTENDED$TVECTOR3_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_sym_diff$TVECTOR3_EXTENDED$TVECTOR3_EXTENDED$$TVECTOR3_EXTENDED
_MATRIX_sym_diff$TVECTOR3_EXTENDED$TVECTOR3_EXTENDED$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	10(%eax)
	fldt	20(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TVECTOR3_EXTENDED$EXTENDED$$TVECTOR3_EXTENDED
_MATRIX_plus$TVECTOR3_EXTENDED$EXTENDED$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR3_EXTENDED$EXTENDED$$TVECTOR3_EXTENDED
_MATRIX_minus$TVECTOR3_EXTENDED$EXTENDED$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TVECTOR3_EXTENDED$EXTENDED$$TVECTOR3_EXTENDED
_MATRIX_star$TVECTOR3_EXTENDED$EXTENDED$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TVECTOR3_EXTENDED$EXTENDED$$TVECTOR3_EXTENDED
_MATRIX_slash$TVECTOR3_EXTENDED$EXTENDED$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR4_SINGLE_$__INIT_ZERO$$LONGBOOL
_MATRIX_TVECTOR4_SINGLE_$__INIT_ZERO$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$16,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1129
	jmp	Lj1130
Lj1129:
	jmp	Lj1119
Lj1130:
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	12(%eax)
Lj1119:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR4_SINGLE_$__INIT_ONE$$LONGBOOL
_MATRIX_TVECTOR4_SINGLE_$__INIT_ONE$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$16,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1149
	jmp	Lj1150
Lj1149:
	jmp	Lj1139
Lj1150:
	movl	-8(%ebp),%eax
	fld1
	fstps	(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstps	12(%eax)
Lj1139:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR4_SINGLE_$__INIT$SINGLE$SINGLE$SINGLE$SINGLE$$LONGBOOL
_MATRIX_TVECTOR4_SINGLE_$__INIT$SINGLE$SINGLE$SINGLE$SINGLE$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$16,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1169
	jmp	Lj1170
Lj1169:
	jmp	Lj1159
Lj1170:
	movl	-8(%ebp),%eax
	movl	20(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	movl	16(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-8(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,12(%eax)
Lj1159:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR4_SINGLE_$__LENGTH$$SINGLE
_MATRIX_TVECTOR4_SINGLE_$__LENGTH$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	12(%edx)
	flds	12(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fsqrt
	fstps	-8(%ebp)
	flds	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR4_SINGLE_$__SQUARED_LENGTH$$SINGLE
_MATRIX_TVECTOR4_SINGLE_$__SQUARED_LENGTH$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	12(%edx)
	flds	12(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstps	-8(%ebp)
	flds	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_SINGLE$$TVECTOR4_SINGLE
_MATRIX_assign$TVECTOR2_SINGLE$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	fldz
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_DOUBLE$$TVECTOR4_SINGLE
_MATRIX_assign$TVECTOR2_DOUBLE$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_EXTENDED$$TVECTOR4_SINGLE
_MATRIX_assign$TVECTOR2_EXTENDED$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_SINGLE$$TVECTOR4_SINGLE
_MATRIX_assign$TVECTOR3_SINGLE$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	fldz
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_DOUBLE$$TVECTOR4_SINGLE
_MATRIX_assign$TVECTOR3_DOUBLE$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	(%eax)
	fstps	(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fstps	4(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_EXTENDED$$TVECTOR4_SINGLE
_MATRIX_assign$TVECTOR3_EXTENDED$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fstps	(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	10(%eax)
	fstps	4(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_DOUBLE$$TVECTOR4_SINGLE
_MATRIX_assign$TVECTOR4_DOUBLE$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	24(%edx)
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_EXTENDED$$TVECTOR4_SINGLE
_MATRIX_assign$TVECTOR4_EXTENDED$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	30(%edx)
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TVECTOR4_SINGLE$TVECTOR4_SINGLE$$TVECTOR4_SINGLE
_MATRIX_plus$TVECTOR4_SINGLE$TVECTOR4_SINGLE$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	4(%eax)
	flds	4(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	8(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	12(%edx)
	flds	12(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR4_SINGLE$$TVECTOR4_SINGLE
_MATRIX_minus$TVECTOR4_SINGLE$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	4(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	12(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR4_SINGLE$TVECTOR4_SINGLE$$TVECTOR4_SINGLE
_MATRIX_minus$TVECTOR4_SINGLE$TVECTOR4_SINGLE$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	4(%eax)
	flds	4(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	8(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	12(%edx)
	flds	12(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TVECTOR4_SINGLE$TVECTOR4_SINGLE$$TVECTOR4_SINGLE
_MATRIX_star$TVECTOR4_SINGLE$TVECTOR4_SINGLE$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	(%edx)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	4(%eax)
	flds	4(%edx)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	12(%edx)
	flds	12(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TVECTOR4_SINGLE$TVECTOR4_SINGLE$$TVECTOR4_SINGLE
_MATRIX_slash$TVECTOR4_SINGLE$TVECTOR4_SINGLE$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	(%edx)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	4(%eax)
	flds	4(%edx)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	8(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	12(%edx)
	flds	12(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_starstar$TVECTOR4_SINGLE$TVECTOR4_SINGLE$$SINGLE
_MATRIX_starstar$TVECTOR4_SINGLE$TVECTOR4_SINGLE$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	12(%edx)
	flds	12(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstps	-12(%ebp)
	flds	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TVECTOR4_SINGLE$SINGLE$$TVECTOR4_SINGLE
_MATRIX_plus$TVECTOR4_SINGLE$SINGLE$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	12(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR4_SINGLE$SINGLE$$TVECTOR4_SINGLE
_MATRIX_minus$TVECTOR4_SINGLE$SINGLE$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	12(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TVECTOR4_SINGLE$SINGLE$$TVECTOR4_SINGLE
_MATRIX_star$TVECTOR4_SINGLE$SINGLE$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	12(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TVECTOR4_SINGLE$SINGLE$$TVECTOR4_SINGLE
_MATRIX_slash$TVECTOR4_SINGLE$SINGLE$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	12(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR4_DOUBLE_$__INIT_ZERO$$LONGBOOL
_MATRIX_TVECTOR4_DOUBLE_$__INIT_ZERO$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$32,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1371
	jmp	Lj1372
Lj1371:
	jmp	Lj1361
Lj1372:
	movl	-8(%ebp),%eax
	fldz
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	24(%eax)
Lj1361:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR4_DOUBLE_$__INIT_ONE$$LONGBOOL
_MATRIX_TVECTOR4_DOUBLE_$__INIT_ONE$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$32,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1391
	jmp	Lj1392
Lj1391:
	jmp	Lj1381
Lj1392:
	movl	-8(%ebp),%eax
	fld1
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpl	24(%eax)
Lj1381:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR4_DOUBLE_$__INIT$DOUBLE$DOUBLE$DOUBLE$DOUBLE$$LONGBOOL
_MATRIX_TVECTOR4_DOUBLE_$__INIT$DOUBLE$DOUBLE$DOUBLE$DOUBLE$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$32,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1411
	jmp	Lj1412
Lj1411:
	jmp	Lj1401
Lj1412:
	movl	-8(%ebp),%edx
	movl	32(%ebp),%eax
	movl	%eax,(%edx)
	movl	36(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	24(%ebp),%eax
	movl	%eax,8(%edx)
	movl	28(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%edx
	movl	16(%ebp),%eax
	movl	%eax,16(%edx)
	movl	20(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,24(%edx)
	movl	12(%ebp),%eax
	movl	%eax,28(%edx)
Lj1401:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR4_DOUBLE_$__LENGTH$$DOUBLE
_MATRIX_TVECTOR4_DOUBLE_$__LENGTH$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	24(%edx)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fsqrt
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR4_DOUBLE_$__SQUARED_LENGTH$$DOUBLE
_MATRIX_TVECTOR4_DOUBLE_$__SQUARED_LENGTH$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	24(%edx)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_SINGLE$$TVECTOR4_DOUBLE
_MATRIX_assign$TVECTOR2_SINGLE$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_DOUBLE$$TVECTOR4_DOUBLE
_MATRIX_assign$TVECTOR2_DOUBLE$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,8(%ecx)
	movl	12(%edx),%eax
	movl	%eax,12(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_EXTENDED$$TVECTOR4_DOUBLE
_MATRIX_assign$TVECTOR2_EXTENDED$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_SINGLE$$TVECTOR4_DOUBLE
_MATRIX_assign$TVECTOR3_SINGLE$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	(%eax)
	fstpl	(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	4(%eax)
	fstpl	8(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_DOUBLE$$TVECTOR4_DOUBLE
_MATRIX_assign$TVECTOR3_DOUBLE$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,8(%ecx)
	movl	12(%edx),%eax
	movl	%eax,12(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	16(%edx),%eax
	movl	%eax,16(%ecx)
	movl	20(%edx),%eax
	movl	%eax,20(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_EXTENDED$$TVECTOR4_DOUBLE
_MATRIX_assign$TVECTOR3_EXTENDED$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fstpl	(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	10(%eax)
	fstpl	8(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_SINGLE$$TVECTOR4_DOUBLE
_MATRIX_assign$TVECTOR4_SINGLE$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	12(%edx)
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_EXTENDED$$TVECTOR4_DOUBLE
_MATRIX_assign$TVECTOR4_EXTENDED$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	30(%edx)
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TVECTOR4_DOUBLE$TVECTOR4_DOUBLE$$TVECTOR4_DOUBLE
_MATRIX_plus$TVECTOR4_DOUBLE$TVECTOR4_DOUBLE$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	(%eax)
	fldl	(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	8(%eax)
	fldl	8(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	16(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	24(%edx)
	fldl	24(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR4_DOUBLE$$TVECTOR4_DOUBLE
_MATRIX_minus$TVECTOR4_DOUBLE$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	16(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	24(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR4_DOUBLE$TVECTOR4_DOUBLE$$TVECTOR4_DOUBLE
_MATRIX_minus$TVECTOR4_DOUBLE$TVECTOR4_DOUBLE$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	(%eax)
	fldl	(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	8(%eax)
	fldl	8(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	16(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	24(%edx)
	fldl	24(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TVECTOR4_DOUBLE$TVECTOR4_DOUBLE$$TVECTOR4_DOUBLE
_MATRIX_star$TVECTOR4_DOUBLE$TVECTOR4_DOUBLE$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	(%eax)
	fldl	(%edx)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	8(%eax)
	fldl	8(%edx)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	24(%edx)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TVECTOR4_DOUBLE$TVECTOR4_DOUBLE$$TVECTOR4_DOUBLE
_MATRIX_slash$TVECTOR4_DOUBLE$TVECTOR4_DOUBLE$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	(%eax)
	fldl	(%edx)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	8(%eax)
	fldl	8(%edx)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	16(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	24(%edx)
	fldl	24(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_starstar$TVECTOR4_DOUBLE$TVECTOR4_DOUBLE$$DOUBLE
_MATRIX_starstar$TVECTOR4_DOUBLE$TVECTOR4_DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	24(%edx)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TVECTOR4_DOUBLE$DOUBLE$$TVECTOR4_DOUBLE
_MATRIX_plus$TVECTOR4_DOUBLE$DOUBLE$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	24(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR4_DOUBLE$DOUBLE$$TVECTOR4_DOUBLE
_MATRIX_minus$TVECTOR4_DOUBLE$DOUBLE$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	24(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TVECTOR4_DOUBLE$DOUBLE$$TVECTOR4_DOUBLE
_MATRIX_star$TVECTOR4_DOUBLE$DOUBLE$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TVECTOR4_DOUBLE$DOUBLE$$TVECTOR4_DOUBLE
_MATRIX_slash$TVECTOR4_DOUBLE$DOUBLE$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	24(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR4_EXTENDED_$__INIT_ZERO$$LONGBOOL
_MATRIX_TVECTOR4_EXTENDED_$__INIT_ZERO$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$40,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1613
	jmp	Lj1614
Lj1613:
	jmp	Lj1603
Lj1614:
	movl	-8(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	30(%eax)
Lj1603:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR4_EXTENDED_$__INIT_ONE$$LONGBOOL
_MATRIX_TVECTOR4_EXTENDED_$__INIT_ONE$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$40,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1633
	jmp	Lj1634
Lj1633:
	jmp	Lj1623
Lj1634:
	movl	-8(%ebp),%eax
	fld1
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpt	30(%eax)
Lj1623:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR4_EXTENDED_$__INIT$EXTENDED$EXTENDED$EXTENDED$EXTENDED$$LONGBOOL
_MATRIX_TVECTOR4_EXTENDED_$__INIT$EXTENDED$EXTENDED$EXTENDED$EXTENDED$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$40,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1653
	jmp	Lj1654
Lj1653:
	jmp	Lj1643
Lj1654:
	movl	-8(%ebp),%edx
	movl	44(%ebp),%eax
	movl	%eax,(%edx)
	movl	48(%ebp),%eax
	movl	%eax,4(%edx)
	movw	52(%ebp),%ax
	movw	%ax,8(%edx)
	movl	-8(%ebp),%edx
	movl	32(%ebp),%eax
	movl	%eax,10(%edx)
	movl	36(%ebp),%eax
	movl	%eax,14(%edx)
	movw	40(%ebp),%ax
	movw	%ax,18(%edx)
	movl	-8(%ebp),%edx
	movl	20(%ebp),%eax
	movl	%eax,20(%edx)
	movl	24(%ebp),%eax
	movl	%eax,24(%edx)
	movw	28(%ebp),%ax
	movw	%ax,28(%edx)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,30(%edx)
	movl	12(%ebp),%eax
	movl	%eax,34(%edx)
	movw	16(%ebp),%ax
	movw	%ax,38(%edx)
Lj1643:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR4_EXTENDED_$__LENGTH$$EXTENDED
_MATRIX_TVECTOR4_EXTENDED_$__LENGTH$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	30(%edx)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fsqrt
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TVECTOR4_EXTENDED_$__SQUARED_LENGTH$$EXTENDED
_MATRIX_TVECTOR4_EXTENDED_$__SQUARED_LENGTH$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	30(%edx)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_SINGLE$$TVECTOR4_EXTENDED
_MATRIX_assign$TVECTOR2_SINGLE$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_DOUBLE$$TVECTOR4_EXTENDED
_MATRIX_assign$TVECTOR2_DOUBLE$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR2_EXTENDED$$TVECTOR4_EXTENDED
_MATRIX_assign$TVECTOR2_EXTENDED$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movw	8(%edx),%ax
	movw	%ax,8(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	10(%edx),%eax
	movl	%eax,10(%ecx)
	movl	14(%edx),%eax
	movl	%eax,14(%ecx)
	movw	18(%edx),%ax
	movw	%ax,18(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_SINGLE$$TVECTOR4_EXTENDED
_MATRIX_assign$TVECTOR3_SINGLE$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	(%eax)
	fstpt	(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	4(%eax)
	fstpt	10(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_DOUBLE$$TVECTOR4_EXTENDED
_MATRIX_assign$TVECTOR3_DOUBLE$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	(%eax)
	fstpt	(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fstpt	10(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR3_EXTENDED$$TVECTOR4_EXTENDED
_MATRIX_assign$TVECTOR3_EXTENDED$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movw	8(%edx),%ax
	movw	%ax,8(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	10(%edx),%eax
	movl	%eax,10(%ecx)
	movl	14(%edx),%eax
	movl	%eax,14(%ecx)
	movw	18(%edx),%ax
	movw	%ax,18(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	20(%edx),%eax
	movl	%eax,20(%ecx)
	movl	24(%edx),%eax
	movl	%eax,24(%ecx)
	movw	28(%edx),%ax
	movw	%ax,28(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_SINGLE$$TVECTOR4_EXTENDED
_MATRIX_assign$TVECTOR4_SINGLE$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	12(%edx)
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TVECTOR4_DOUBLE$$TVECTOR4_EXTENDED
_MATRIX_assign$TVECTOR4_DOUBLE$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	24(%edx)
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TVECTOR4_EXTENDED$TVECTOR4_EXTENDED$$TVECTOR4_EXTENDED
_MATRIX_plus$TVECTOR4_EXTENDED$TVECTOR4_EXTENDED$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	(%eax)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	10(%eax)
	fldt	10(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	20(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	30(%edx)
	fldt	30(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR4_EXTENDED$$TVECTOR4_EXTENDED
_MATRIX_minus$TVECTOR4_EXTENDED$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	10(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	20(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	30(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR4_EXTENDED$TVECTOR4_EXTENDED$$TVECTOR4_EXTENDED
_MATRIX_minus$TVECTOR4_EXTENDED$TVECTOR4_EXTENDED$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	(%eax)
	fldt	(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	10(%eax)
	fldt	10(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	20(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	30(%edx)
	fldt	30(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TVECTOR4_EXTENDED$TVECTOR4_EXTENDED$$TVECTOR4_EXTENDED
_MATRIX_star$TVECTOR4_EXTENDED$TVECTOR4_EXTENDED$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	(%eax)
	fldt	(%edx)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	10(%eax)
	fldt	10(%edx)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	30(%edx)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TVECTOR4_EXTENDED$TVECTOR4_EXTENDED$$TVECTOR4_EXTENDED
_MATRIX_slash$TVECTOR4_EXTENDED$TVECTOR4_EXTENDED$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	(%eax)
	fldt	(%edx)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	10(%eax)
	fldt	10(%edx)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	20(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	30(%edx)
	fldt	30(%eax)
	fdivp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_starstar$TVECTOR4_EXTENDED$TVECTOR4_EXTENDED$$EXTENDED
_MATRIX_starstar$TVECTOR4_EXTENDED$TVECTOR4_EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	30(%edx)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TVECTOR4_EXTENDED$EXTENDED$$TVECTOR4_EXTENDED
_MATRIX_plus$TVECTOR4_EXTENDED$EXTENDED$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	30(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TVECTOR4_EXTENDED$EXTENDED$$TVECTOR4_EXTENDED
_MATRIX_minus$TVECTOR4_EXTENDED$EXTENDED$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	30(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TVECTOR4_EXTENDED$EXTENDED$$TVECTOR4_EXTENDED
_MATRIX_star$TVECTOR4_EXTENDED$EXTENDED$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TVECTOR4_EXTENDED$EXTENDED$$TVECTOR4_EXTENDED
_MATRIX_slash$TVECTOR4_EXTENDED$EXTENDED$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	30(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_SINGLE_$__INIT_ZERO$$LONGBOOL
_MATRIX_TMATRIX2_SINGLE_$__INIT_ZERO$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$16,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1855
	jmp	Lj1856
Lj1855:
	jmp	Lj1845
Lj1856:
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$16,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
Lj1845:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_SINGLE_$__INIT_IDENTITY$$LONGBOOL
_MATRIX_TMATRIX2_SINGLE_$__INIT_IDENTITY$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$16,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1873
	jmp	Lj1874
Lj1873:
	jmp	Lj1863
Lj1874:
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$16,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-8(%ebp),%eax
	fld1
	fstps	(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstps	12(%eax)
Lj1863:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_SINGLE_$__INIT$SINGLE$SINGLE$SINGLE$SINGLE$$LONGBOOL
_MATRIX_TMATRIX2_SINGLE_$__INIT$SINGLE$SINGLE$SINGLE$SINGLE$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$16,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1895
	jmp	Lj1896
Lj1895:
	jmp	Lj1885
Lj1896:
	movl	-8(%ebp),%eax
	movl	20(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	movl	16(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-8(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,12(%eax)
Lj1885:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_SINGLE_$__GET_COLUMN$BYTE$$TVECTOR2_SINGLE
_MATRIX_TMATRIX2_SINGLE_$__GET_COLUMN$BYTE$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	(%eax,%edx,4),%eax
	movl	%eax,(%ecx)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	8(%eax,%edx,4),%eax
	movl	%eax,4(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_SINGLE_$__GET_ROW$BYTE$$TVECTOR2_SINGLE
_MATRIX_TMATRIX2_SINGLE_$__GET_ROW$BYTE$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movzbl	-4(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%edx,%eax,8),%ecx
	movl	%ecx,(%ebx)
	movl	4(%edx,%eax,8),%eax
	movl	%eax,4(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_SINGLE_$__SET_COLUMN$BYTE$TVECTOR2_SINGLE
_MATRIX_TMATRIX2_SINGLE_$__SET_COLUMN$BYTE$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%edx
	movzbl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx,%ecx,4)
	movl	-12(%ebp),%edx
	movzbl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,8(%edx,%ecx,4)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_SINGLE_$__SET_ROW$BYTE$TVECTOR2_SINGLE
_MATRIX_TMATRIX2_SINGLE_$__SET_ROW$BYTE$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%ebx
	movzbl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ebx,%ecx,8)
	movl	4(%edx),%eax
	movl	%eax,4(%ebx,%ecx,8)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_SINGLE_$__TRANSPOSE$$TMATRIX2_SINGLE
_MATRIX_TMATRIX2_SINGLE_$__TRANSPOSE$$TMATRIX2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_SINGLE_$__DETERMINANT$$SINGLE
_MATRIX_TMATRIX2_SINGLE_$__DETERMINANT$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	12(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fstps	-8(%ebp)
	flds	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_SINGLE_$__INVERSE$SINGLE$$TMATRIX2_SINGLE
_MATRIX_TMATRIX2_SINGLE_$__INVERSE$SINGLE$$TMATRIX2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fld1
	flds	8(%ebp)
	fdivrp	%st,%st(1)
	fstps	8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	12(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	4(%eax)
	fchs
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%eax)
	fchs
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_DOUBLE$$TMATRIX2_SINGLE
_MATRIX_assign$TMATRIX2_DOUBLE$$TMATRIX2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	24(%edx)
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_EXTENDED$$TMATRIX2_SINGLE
_MATRIX_assign$TMATRIX2_EXTENDED$$TMATRIX2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	30(%edx)
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_SINGLE$$TMATRIX2_SINGLE
_MATRIX_assign$TMATRIX3_SINGLE$$TMATRIX2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_DOUBLE$$TMATRIX2_SINGLE
_MATRIX_assign$TMATRIX3_DOUBLE$$TMATRIX2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	24(%edx)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	32(%edx)
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_EXTENDED$$TMATRIX2_SINGLE
_MATRIX_assign$TMATRIX3_EXTENDED$$TMATRIX2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	30(%edx)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	40(%edx)
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_SINGLE$$TMATRIX2_SINGLE
_MATRIX_assign$TMATRIX4_SINGLE$$TMATRIX2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_DOUBLE$$TMATRIX2_SINGLE
_MATRIX_assign$TMATRIX4_DOUBLE$$TMATRIX2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	32(%edx)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_EXTENDED$$TMATRIX2_SINGLE
_MATRIX_assign$TMATRIX4_EXTENDED$$TMATRIX2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	40(%edx)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TMATRIX2_SINGLE$TMATRIX2_SINGLE$$TMATRIX2_SINGLE
_MATRIX_plus$TMATRIX2_SINGLE$TMATRIX2_SINGLE$$TMATRIX2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	4(%eax)
	flds	4(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	8(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	12(%edx)
	flds	12(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX2_SINGLE$TMATRIX2_SINGLE$$TMATRIX2_SINGLE
_MATRIX_minus$TMATRIX2_SINGLE$TMATRIX2_SINGLE$$TMATRIX2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	4(%eax)
	flds	4(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	8(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	12(%edx)
	flds	12(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX2_SINGLE$$TMATRIX2_SINGLE
_MATRIX_minus$TMATRIX2_SINGLE$$TMATRIX2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	4(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	12(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX2_SINGLE$TMATRIX2_SINGLE$$TMATRIX2_SINGLE
_MATRIX_star$TMATRIX2_SINGLE$TMATRIX2_SINGLE$$TMATRIX2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-21(%ebp)
	decb	-21(%ebp)
	.align 2
Lj2065:
	incb	-21(%ebp)
	movl	-4(%ebp),%eax
	movzbl	-21(%ebp),%ecx
	movl	(%eax,%ecx,8),%edx
	movl	%edx,-20(%ebp)
	movl	4(%eax,%ecx,8),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	-20(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	8(%eax)
	flds	-16(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	movzbl	-21(%ebp),%edx
	fstps	(%eax,%edx,8)
	movl	-8(%ebp),%eax
	flds	4(%eax)
	flds	-20(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	12(%eax)
	flds	-16(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	movzbl	-21(%ebp),%edx
	fstps	4(%eax,%edx,8)
	cmpb	$1,-21(%ebp)
	jb	Lj2065
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX2_SINGLE$TVECTOR2_SINGLE$$TVECTOR2_SINGLE
_MATRIX_star$TMATRIX2_SINGLE$TVECTOR2_SINGLE$$TVECTOR2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	12(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TMATRIX2_SINGLE$SINGLE$$TMATRIX2_SINGLE
_MATRIX_plus$TMATRIX2_SINGLE$SINGLE$$TMATRIX2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	12(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX2_SINGLE$SINGLE$$TMATRIX2_SINGLE
_MATRIX_minus$TMATRIX2_SINGLE$SINGLE$$TMATRIX2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	12(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX2_SINGLE$SINGLE$$TMATRIX2_SINGLE
_MATRIX_star$TMATRIX2_SINGLE$SINGLE$$TMATRIX2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	12(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TMATRIX2_SINGLE$SINGLE$$TMATRIX2_SINGLE
_MATRIX_slash$TMATRIX2_SINGLE$SINGLE$$TMATRIX2_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	12(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_DOUBLE_$__INIT_ZERO$$LONGBOOL
_MATRIX_TMATRIX2_DOUBLE_$__INIT_ZERO$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$32,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2128
	jmp	Lj2129
Lj2128:
	jmp	Lj2118
Lj2129:
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$32,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
Lj2118:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_DOUBLE_$__INIT_IDENTITY$$LONGBOOL
_MATRIX_TMATRIX2_DOUBLE_$__INIT_IDENTITY$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$32,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2146
	jmp	Lj2147
Lj2146:
	jmp	Lj2136
Lj2147:
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$32,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-8(%ebp),%eax
	fld1
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpl	24(%eax)
Lj2136:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_DOUBLE_$__INIT$DOUBLE$DOUBLE$DOUBLE$DOUBLE$$LONGBOOL
_MATRIX_TMATRIX2_DOUBLE_$__INIT$DOUBLE$DOUBLE$DOUBLE$DOUBLE$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$32,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2168
	jmp	Lj2169
Lj2168:
	jmp	Lj2158
Lj2169:
	movl	-8(%ebp),%edx
	movl	32(%ebp),%eax
	movl	%eax,(%edx)
	movl	36(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	24(%ebp),%eax
	movl	%eax,8(%edx)
	movl	28(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%edx
	movl	16(%ebp),%eax
	movl	%eax,16(%edx)
	movl	20(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,24(%edx)
	movl	12(%ebp),%eax
	movl	%eax,28(%edx)
Lj2158:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_DOUBLE_$__GET_COLUMN$BYTE$$TVECTOR2_DOUBLE
_MATRIX_TMATRIX2_DOUBLE_$__GET_COLUMN$BYTE$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movzbl	-4(%ebp),%ecx
	movl	-12(%ebp),%ebx
	movl	(%edx,%ecx,8),%eax
	movl	%eax,(%ebx)
	movl	4(%edx,%ecx,8),%eax
	movl	%eax,4(%ebx)
	movl	-8(%ebp),%edx
	movzbl	-4(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	16(%edx,%eax,8),%ecx
	movl	%ecx,8(%ebx)
	movl	20(%edx,%eax,8),%eax
	movl	%eax,12(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_DOUBLE_$__GET_ROW$BYTE$$TVECTOR2_DOUBLE
_MATRIX_TMATRIX2_DOUBLE_$__GET_ROW$BYTE$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movzbl	-4(%ebp),%eax
	shll	$4,%eax
	movl	-12(%ebp),%edi
	leal	(%edx,%eax),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_DOUBLE_$__SET_COLUMN$BYTE$TVECTOR2_DOUBLE
_MATRIX_TMATRIX2_DOUBLE_$__SET_COLUMN$BYTE$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%ecx
	movzbl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,(%ecx,%ebx,8)
	movl	4(%eax),%eax
	movl	%eax,4(%ecx,%ebx,8)
	movl	-12(%ebp),%ebx
	movzbl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,16(%ebx,%ecx,8)
	movl	12(%edx),%eax
	movl	%eax,20(%ebx,%ecx,8)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_DOUBLE_$__SET_ROW$BYTE$TVECTOR2_DOUBLE
_MATRIX_TMATRIX2_DOUBLE_$__SET_ROW$BYTE$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%edx
	movzbl	-4(%ebp),%eax
	shll	$4,%eax
	movl	-8(%ebp),%esi
	leal	(%edx,%eax),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_DOUBLE_$__TRANSPOSE$$TMATRIX2_DOUBLE
_MATRIX_TMATRIX2_DOUBLE_$__TRANSPOSE$$TMATRIX2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	16(%edx),%eax
	movl	%eax,8(%ecx)
	movl	20(%edx),%eax
	movl	%eax,12(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,16(%ecx)
	movl	12(%edx),%eax
	movl	%eax,20(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	24(%edx),%eax
	movl	%eax,24(%ecx)
	movl	28(%edx),%eax
	movl	%eax,28(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_DOUBLE_$__DETERMINANT$$DOUBLE
_MATRIX_TMATRIX2_DOUBLE_$__DETERMINANT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	24(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_DOUBLE_$__INVERSE$DOUBLE$$TMATRIX2_DOUBLE
_MATRIX_TMATRIX2_DOUBLE_$__INVERSE$DOUBLE$$TMATRIX2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fld1
	fldl	8(%ebp)
	fdivrp	%st,%st(1)
	fstpl	8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fchs
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	16(%eax)
	fchs
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_SINGLE$$TMATRIX2_DOUBLE
_MATRIX_assign$TMATRIX2_SINGLE$$TMATRIX2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	12(%edx)
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_EXTENDED$$TMATRIX2_DOUBLE
_MATRIX_assign$TMATRIX2_EXTENDED$$TMATRIX2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	30(%edx)
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_SINGLE$$TMATRIX2_DOUBLE
_MATRIX_assign$TMATRIX3_SINGLE$$TMATRIX2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	12(%edx)
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	16(%edx)
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_DOUBLE$$TMATRIX2_DOUBLE
_MATRIX_assign$TMATRIX3_DOUBLE$$TMATRIX2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,8(%ecx)
	movl	12(%edx),%eax
	movl	%eax,12(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	24(%edx),%eax
	movl	%eax,16(%ecx)
	movl	28(%edx),%eax
	movl	%eax,20(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	32(%edx),%eax
	movl	%eax,24(%ecx)
	movl	36(%edx),%eax
	movl	%eax,28(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_EXTENDED$$TMATRIX2_DOUBLE
_MATRIX_assign$TMATRIX3_EXTENDED$$TMATRIX2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	30(%edx)
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	40(%edx)
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_SINGLE$$TMATRIX2_DOUBLE
_MATRIX_assign$TMATRIX4_SINGLE$$TMATRIX2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	16(%edx)
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_DOUBLE$$TMATRIX2_DOUBLE
_MATRIX_assign$TMATRIX4_DOUBLE$$TMATRIX2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,8(%ecx)
	movl	12(%edx),%eax
	movl	%eax,12(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	32(%edx),%eax
	movl	%eax,16(%ecx)
	movl	36(%edx),%eax
	movl	%eax,20(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	40(%edx),%eax
	movl	%eax,24(%ecx)
	movl	44(%edx),%eax
	movl	%eax,28(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_EXTENDED$$TMATRIX2_DOUBLE
_MATRIX_assign$TMATRIX4_EXTENDED$$TMATRIX2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	40(%edx)
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TMATRIX2_DOUBLE$TMATRIX2_DOUBLE$$TMATRIX2_DOUBLE
_MATRIX_plus$TMATRIX2_DOUBLE$TMATRIX2_DOUBLE$$TMATRIX2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	(%eax)
	fldl	(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	8(%eax)
	fldl	8(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	16(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	24(%edx)
	fldl	24(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX2_DOUBLE$TMATRIX2_DOUBLE$$TMATRIX2_DOUBLE
_MATRIX_minus$TMATRIX2_DOUBLE$TMATRIX2_DOUBLE$$TMATRIX2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	(%eax)
	fldl	(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	8(%eax)
	fldl	8(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	16(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	24(%edx)
	fldl	24(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX2_DOUBLE$$TMATRIX2_DOUBLE
_MATRIX_minus$TMATRIX2_DOUBLE$$TMATRIX2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	16(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	24(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX2_DOUBLE$TMATRIX2_DOUBLE$$TMATRIX2_DOUBLE
_MATRIX_star$TMATRIX2_DOUBLE$TMATRIX2_DOUBLE$$TMATRIX2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-29(%ebp)
	decb	-29(%ebp)
	.align 2
Lj2338:
	incb	-29(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-29(%ebp),%eax
	shll	$4,%eax
	leal	-28(%ebp),%edi
	leal	(%edx,%eax),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	fldl	(%eax)
	fldl	-28(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	16(%eax)
	fldl	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-29(%ebp),%eax
	shll	$4,%eax
	fstpl	(%edx,%eax)
	movl	-8(%ebp),%eax
	fldl	8(%eax)
	fldl	-28(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	24(%eax)
	fldl	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-29(%ebp),%eax
	shll	$4,%eax
	fstpl	8(%edx,%eax)
	cmpb	$1,-29(%ebp)
	jb	Lj2338
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX2_DOUBLE$TVECTOR2_DOUBLE$$TVECTOR2_DOUBLE
_MATRIX_star$TMATRIX2_DOUBLE$TVECTOR2_DOUBLE$$TVECTOR2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TMATRIX2_DOUBLE$DOUBLE$$TMATRIX2_DOUBLE
_MATRIX_plus$TMATRIX2_DOUBLE$DOUBLE$$TMATRIX2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	24(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX2_DOUBLE$DOUBLE$$TMATRIX2_DOUBLE
_MATRIX_minus$TMATRIX2_DOUBLE$DOUBLE$$TMATRIX2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	24(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX2_DOUBLE$DOUBLE$$TMATRIX2_DOUBLE
_MATRIX_star$TMATRIX2_DOUBLE$DOUBLE$$TMATRIX2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TMATRIX2_DOUBLE$DOUBLE$$TMATRIX2_DOUBLE
_MATRIX_slash$TMATRIX2_DOUBLE$DOUBLE$$TMATRIX2_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	24(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_EXTENDED_$__INIT_ZERO$$LONGBOOL
_MATRIX_TMATRIX2_EXTENDED_$__INIT_ZERO$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$40,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2401
	jmp	Lj2402
Lj2401:
	jmp	Lj2391
Lj2402:
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$40,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
Lj2391:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_EXTENDED_$__INIT_IDENTITY$$LONGBOOL
_MATRIX_TMATRIX2_EXTENDED_$__INIT_IDENTITY$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$40,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2419
	jmp	Lj2420
Lj2419:
	jmp	Lj2409
Lj2420:
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$40,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-8(%ebp),%eax
	fld1
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpt	30(%eax)
Lj2409:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_EXTENDED_$__INIT$EXTENDED$EXTENDED$EXTENDED$EXTENDED$$LONGBOOL
_MATRIX_TMATRIX2_EXTENDED_$__INIT$EXTENDED$EXTENDED$EXTENDED$EXTENDED$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$40,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2441
	jmp	Lj2442
Lj2441:
	jmp	Lj2431
Lj2442:
	movl	-8(%ebp),%edx
	movl	44(%ebp),%eax
	movl	%eax,(%edx)
	movl	48(%ebp),%eax
	movl	%eax,4(%edx)
	movw	52(%ebp),%ax
	movw	%ax,8(%edx)
	movl	-8(%ebp),%edx
	movl	32(%ebp),%eax
	movl	%eax,10(%edx)
	movl	36(%ebp),%eax
	movl	%eax,14(%edx)
	movw	40(%ebp),%ax
	movw	%ax,18(%edx)
	movl	-8(%ebp),%edx
	movl	20(%ebp),%eax
	movl	%eax,20(%edx)
	movl	24(%ebp),%eax
	movl	%eax,24(%edx)
	movw	28(%ebp),%ax
	movw	%ax,28(%edx)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,30(%edx)
	movl	12(%ebp),%eax
	movl	%eax,34(%edx)
	movw	16(%ebp),%ax
	movw	%ax,38(%edx)
Lj2431:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_EXTENDED_$__GET_COLUMN$BYTE$$TVECTOR2_EXTENDED
_MATRIX_TMATRIX2_EXTENDED_$__GET_COLUMN$BYTE$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%ecx
	movzbl	-4(%ebp),%eax
	imull	$10,%eax
	movl	-12(%ebp),%ebx
	movl	(%ecx,%eax),%edx
	movl	%edx,(%ebx)
	movl	4(%ecx,%eax),%edx
	movl	%edx,4(%ebx)
	movw	8(%ecx,%eax),%ax
	movw	%ax,8(%ebx)
	movl	-8(%ebp),%ebx
	movzbl	-4(%ebp),%eax
	imull	$10,%eax
	movl	-12(%ebp),%ecx
	movl	20(%ebx,%eax),%edx
	movl	%edx,10(%ecx)
	movl	24(%ebx,%eax),%edx
	movl	%edx,14(%ecx)
	movw	28(%ebx,%eax),%ax
	movw	%ax,18(%ecx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_EXTENDED_$__GET_ROW$BYTE$$TVECTOR2_EXTENDED
_MATRIX_TMATRIX2_EXTENDED_$__GET_ROW$BYTE$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movzbl	-4(%ebp),%eax
	imull	$20,%eax
	movl	-12(%ebp),%edi
	leal	(%edx,%eax),%esi
	cld
	movl	$5,%ecx
	rep
	movsl
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_EXTENDED_$__SET_COLUMN$BYTE$TVECTOR2_EXTENDED
_MATRIX_TMATRIX2_EXTENDED_$__SET_COLUMN$BYTE$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%ecx
	movzbl	-4(%ebp),%eax
	imull	$10,%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%edx
	movl	%edx,(%ecx,%eax)
	movl	4(%ebx),%edx
	movl	%edx,4(%ecx,%eax)
	movw	8(%ebx),%dx
	movw	%dx,8(%ecx,%eax)
	movl	-12(%ebp),%ecx
	movzbl	-4(%ebp),%eax
	imull	$10,%eax
	movl	-8(%ebp),%ebx
	movl	10(%ebx),%edx
	movl	%edx,20(%ecx,%eax)
	movl	14(%ebx),%edx
	movl	%edx,24(%ecx,%eax)
	movw	18(%ebx),%dx
	movw	%dx,28(%ecx,%eax)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_EXTENDED_$__SET_ROW$BYTE$TVECTOR2_EXTENDED
_MATRIX_TMATRIX2_EXTENDED_$__SET_ROW$BYTE$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%edx
	movzbl	-4(%ebp),%eax
	imull	$20,%eax
	movl	-8(%ebp),%esi
	leal	(%edx,%eax),%edi
	cld
	movl	$5,%ecx
	rep
	movsl
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_EXTENDED_$__TRANSPOSE$$TMATRIX2_EXTENDED
_MATRIX_TMATRIX2_EXTENDED_$__TRANSPOSE$$TMATRIX2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movw	8(%edx),%ax
	movw	%ax,8(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	20(%edx),%eax
	movl	%eax,10(%ecx)
	movl	24(%edx),%eax
	movl	%eax,14(%ecx)
	movw	28(%edx),%ax
	movw	%ax,18(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	10(%edx),%eax
	movl	%eax,20(%ecx)
	movl	14(%edx),%eax
	movl	%eax,24(%ecx)
	movw	18(%edx),%ax
	movw	%ax,28(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	30(%edx),%eax
	movl	%eax,30(%ecx)
	movl	34(%edx),%eax
	movl	%eax,34(%ecx)
	movw	38(%edx),%ax
	movw	%ax,38(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_EXTENDED_$__DETERMINANT$$EXTENDED
_MATRIX_TMATRIX2_EXTENDED_$__DETERMINANT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	30(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX2_EXTENDED_$__INVERSE$EXTENDED$$TMATRIX2_EXTENDED
_MATRIX_TMATRIX2_EXTENDED_$__INVERSE$EXTENDED$$TMATRIX2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fld1
	fldt	8(%ebp)
	fdivrp	%st,%st(1)
	fstpt	8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	10(%eax)
	fchs
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	20(%eax)
	fchs
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_SINGLE$$TMATRIX2_EXTENDED
_MATRIX_assign$TMATRIX2_SINGLE$$TMATRIX2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	12(%edx)
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_DOUBLE$$TMATRIX2_EXTENDED
_MATRIX_assign$TMATRIX2_DOUBLE$$TMATRIX2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	24(%edx)
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_SINGLE$$TMATRIX2_EXTENDED
_MATRIX_assign$TMATRIX3_SINGLE$$TMATRIX2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	12(%edx)
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	16(%edx)
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_DOUBLE$$TMATRIX2_EXTENDED
_MATRIX_assign$TMATRIX3_DOUBLE$$TMATRIX2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	24(%edx)
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	32(%edx)
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_EXTENDED$$TMATRIX2_EXTENDED
_MATRIX_assign$TMATRIX3_EXTENDED$$TMATRIX2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movw	8(%edx),%ax
	movw	%ax,8(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	10(%edx),%eax
	movl	%eax,10(%ecx)
	movl	14(%edx),%eax
	movl	%eax,14(%ecx)
	movw	18(%edx),%ax
	movw	%ax,18(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	30(%edx),%eax
	movl	%eax,20(%ecx)
	movl	34(%edx),%eax
	movl	%eax,24(%ecx)
	movw	38(%edx),%ax
	movw	%ax,28(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	40(%edx),%eax
	movl	%eax,30(%ecx)
	movl	44(%edx),%eax
	movl	%eax,34(%ecx)
	movw	48(%edx),%ax
	movw	%ax,38(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_SINGLE$$TMATRIX2_EXTENDED
_MATRIX_assign$TMATRIX4_SINGLE$$TMATRIX2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	16(%edx)
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_DOUBLE$$TMATRIX2_EXTENDED
_MATRIX_assign$TMATRIX4_DOUBLE$$TMATRIX2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	32(%edx)
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_EXTENDED$$TMATRIX2_EXTENDED
_MATRIX_assign$TMATRIX4_EXTENDED$$TMATRIX2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movw	8(%edx),%ax
	movw	%ax,8(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	10(%edx),%eax
	movl	%eax,10(%ecx)
	movl	14(%edx),%eax
	movl	%eax,14(%ecx)
	movw	18(%edx),%ax
	movw	%ax,18(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	40(%edx),%eax
	movl	%eax,20(%ecx)
	movl	44(%edx),%eax
	movl	%eax,24(%ecx)
	movw	48(%edx),%ax
	movw	%ax,28(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	50(%edx),%eax
	movl	%eax,30(%ecx)
	movl	54(%edx),%eax
	movl	%eax,34(%ecx)
	movw	58(%edx),%ax
	movw	%ax,38(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TMATRIX2_EXTENDED$TMATRIX2_EXTENDED$$TMATRIX2_EXTENDED
_MATRIX_plus$TMATRIX2_EXTENDED$TMATRIX2_EXTENDED$$TMATRIX2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	(%eax)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	10(%eax)
	fldt	10(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	20(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	30(%edx)
	fldt	30(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX2_EXTENDED$TMATRIX2_EXTENDED$$TMATRIX2_EXTENDED
_MATRIX_minus$TMATRIX2_EXTENDED$TMATRIX2_EXTENDED$$TMATRIX2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	(%eax)
	fldt	(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	10(%eax)
	fldt	10(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	20(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	30(%edx)
	fldt	30(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX2_EXTENDED$$TMATRIX2_EXTENDED
_MATRIX_minus$TMATRIX2_EXTENDED$$TMATRIX2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	10(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	20(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	30(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX2_EXTENDED$TMATRIX2_EXTENDED$$TMATRIX2_EXTENDED
_MATRIX_star$TMATRIX2_EXTENDED$TMATRIX2_EXTENDED$$TMATRIX2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-52(%ebp)
	movl	%edi,-48(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-41(%ebp)
	decb	-41(%ebp)
	.align 2
Lj2611:
	incb	-41(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-41(%ebp),%eax
	imull	$20,%eax
	leal	-40(%ebp),%edi
	leal	(%edx,%eax),%esi
	cld
	movl	$5,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	fldt	(%eax)
	fldt	-40(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	20(%eax)
	fldt	-30(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-41(%ebp),%eax
	imull	$20,%eax
	fstpt	(%edx,%eax)
	movl	-8(%ebp),%eax
	fldt	10(%eax)
	fldt	-40(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	30(%eax)
	fldt	-30(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-41(%ebp),%eax
	imull	$20,%eax
	fstpt	10(%edx,%eax)
	cmpb	$1,-41(%ebp)
	jb	Lj2611
	movl	-52(%ebp),%esi
	movl	-48(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX2_EXTENDED$TVECTOR2_EXTENDED$$TVECTOR2_EXTENDED
_MATRIX_star$TMATRIX2_EXTENDED$TVECTOR2_EXTENDED$$TVECTOR2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TMATRIX2_EXTENDED$EXTENDED$$TMATRIX2_EXTENDED
_MATRIX_plus$TMATRIX2_EXTENDED$EXTENDED$$TMATRIX2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	30(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX2_EXTENDED$EXTENDED$$TMATRIX2_EXTENDED
_MATRIX_minus$TMATRIX2_EXTENDED$EXTENDED$$TMATRIX2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	30(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX2_EXTENDED$EXTENDED$$TMATRIX2_EXTENDED
_MATRIX_star$TMATRIX2_EXTENDED$EXTENDED$$TMATRIX2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TMATRIX2_EXTENDED$EXTENDED$$TMATRIX2_EXTENDED
_MATRIX_slash$TMATRIX2_EXTENDED$EXTENDED$$TMATRIX2_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	30(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_SINGLE_$__INIT_ZERO$$LONGBOOL
_MATRIX_TMATRIX3_SINGLE_$__INIT_ZERO$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$36,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2674
	jmp	Lj2675
Lj2674:
	jmp	Lj2664
Lj2675:
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$36,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
Lj2664:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_SINGLE_$__INIT_IDENTITY$$LONGBOOL
_MATRIX_TMATRIX3_SINGLE_$__INIT_IDENTITY$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$36,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2692
	jmp	Lj2693
Lj2692:
	jmp	Lj2682
Lj2693:
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$36,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-8(%ebp),%eax
	fld1
	fstps	(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstps	16(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstps	32(%eax)
Lj2682:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_SINGLE_$__INIT$crc7168A27D
_MATRIX_TMATRIX3_SINGLE_$__INIT$crc7168A27D:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$36,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2716
	jmp	Lj2717
Lj2716:
	jmp	Lj2706
Lj2717:
	movl	-8(%ebp),%eax
	movl	40(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	movl	36(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%eax
	movl	32(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-8(%ebp),%eax
	movl	28(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-8(%ebp),%eax
	movl	24(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-8(%ebp),%eax
	movl	20(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-8(%ebp),%eax
	movl	16(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,32(%eax)
Lj2706:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_SINGLE_$__GET_COLUMN$BYTE$$TVECTOR3_SINGLE
_MATRIX_TMATRIX3_SINGLE_$__GET_COLUMN$BYTE$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	(%eax,%edx,4),%eax
	movl	%eax,(%ecx)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	12(%eax,%edx,4),%eax
	movl	%eax,4(%ecx)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	24(%eax,%edx,4),%eax
	movl	%eax,8(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_SINGLE_$__GET_ROW$BYTE$$TVECTOR3_SINGLE
_MATRIX_TMATRIX3_SINGLE_$__GET_ROW$BYTE$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%ebx
	movzbl	-4(%ebp),%eax
	imull	$12,%eax
	movl	-12(%ebp),%ecx
	movl	(%ebx,%eax),%edx
	movl	%edx,(%ecx)
	movl	4(%ebx,%eax),%edx
	movl	%edx,4(%ecx)
	movl	8(%ebx,%eax),%eax
	movl	%eax,8(%ecx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_SINGLE_$__SET_COLUMN$BYTE$TVECTOR3_SINGLE
_MATRIX_TMATRIX3_SINGLE_$__SET_COLUMN$BYTE$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%edx
	movzbl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx,%ecx,4)
	movl	-12(%ebp),%edx
	movzbl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,12(%edx,%ecx,4)
	movl	-12(%ebp),%edx
	movzbl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,24(%edx,%ecx,4)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_SINGLE_$__SET_ROW$BYTE$TVECTOR3_SINGLE
_MATRIX_TMATRIX3_SINGLE_$__SET_ROW$BYTE$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%ecx
	movzbl	-4(%ebp),%eax
	imull	$12,%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%edx
	movl	%edx,(%ecx,%eax)
	movl	4(%ebx),%edx
	movl	%edx,4(%ecx,%eax)
	movl	8(%ebx),%edx
	movl	%edx,8(%ecx,%eax)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_SINGLE_$__TRANSPOSE$$TMATRIX3_SINGLE
_MATRIX_TMATRIX3_SINGLE_$__TRANSPOSE$$TMATRIX3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,16(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,24(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,32(%edx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_SINGLE_$__DETERMINANT$$SINGLE
_MATRIX_TMATRIX3_SINGLE_$__DETERMINANT$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	32(%edx)
	flds	16(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	28(%edx)
	flds	20(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	32(%edx)
	flds	12(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	24(%edx)
	flds	20(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	4(%ecx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	28(%eax)
	flds	12(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	24(%edx)
	flds	16(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	8(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstps	-8(%ebp)
	flds	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_SINGLE_$__INVERSE$SINGLE$$TMATRIX3_SINGLE
_MATRIX_TMATRIX3_SINGLE_$__INVERSE$SINGLE$$TMATRIX3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fld1
	flds	8(%ebp)
	fdivrp	%st,%st(1)
	fstps	8(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	32(%eax)
	flds	16(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	20(%eax)
	flds	28(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	32(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	8(%eax)
	flds	28(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fchs
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	8(%eax)
	flds	16(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	32(%edx)
	flds	12(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	flds	24(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fchs
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	32(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	flds	24(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	16(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	flds	12(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fchs
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	20(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	28(%edx)
	flds	12(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	16(%edx)
	flds	24(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	24(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	28(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	flds	24(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fchs
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	28(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	16(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	flds	12(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	32(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_SINGLE$$TMATRIX3_SINGLE
_MATRIX_assign$TMATRIX2_SINGLE$$TMATRIX3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	fldz
	fstps	8(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,16(%edx)
	movl	-8(%ebp),%eax
	fldz
	fstps	20(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	24(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	28(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	32(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_DOUBLE$$TMATRIX3_SINGLE
_MATRIX_assign$TMATRIX2_DOUBLE$$TMATRIX3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstps	12(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	24(%edx)
	fstps	16(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	20(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	24(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	28(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	32(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_EXTENDED$$TMATRIX3_SINGLE
_MATRIX_assign$TMATRIX2_EXTENDED$$TMATRIX3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstps	12(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	30(%edx)
	fstps	16(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	20(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	24(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	28(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	32(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_DOUBLE$$TMATRIX3_SINGLE
_MATRIX_assign$TMATRIX3_DOUBLE$$TMATRIX3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	24(%edx)
	fstps	12(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	32(%edx)
	fstps	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fstps	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	48(%edx)
	fstps	24(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	56(%edx)
	fstps	28(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	64(%edx)
	fstps	32(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_EXTENDED$$TMATRIX3_SINGLE
_MATRIX_assign$TMATRIX3_EXTENDED$$TMATRIX3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	30(%edx)
	fstps	12(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	40(%edx)
	fstps	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fstps	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	60(%edx)
	fstps	24(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	70(%edx)
	fstps	28(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	80(%edx)
	fstps	32(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_SINGLE$$TMATRIX3_SINGLE
_MATRIX_assign$TMATRIX4_SINGLE$$TMATRIX3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,16(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,24(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,32(%edx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_DOUBLE$$TMATRIX3_SINGLE
_MATRIX_assign$TMATRIX4_DOUBLE$$TMATRIX3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	32(%edx)
	fstps	12(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fstps	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	48(%edx)
	fstps	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	64(%edx)
	fstps	24(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	72(%edx)
	fstps	28(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	80(%edx)
	fstps	32(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_EXTENDED$$TMATRIX3_SINGLE
_MATRIX_assign$TMATRIX4_EXTENDED$$TMATRIX3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	40(%edx)
	fstps	12(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fstps	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	60(%edx)
	fstps	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	80(%edx)
	fstps	24(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	90(%edx)
	fstps	28(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	100(%edx)
	fstps	32(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TMATRIX3_SINGLE$TMATRIX3_SINGLE$$TMATRIX3_SINGLE
_MATRIX_plus$TMATRIX3_SINGLE$TMATRIX3_SINGLE$$TMATRIX3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	8(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	12(%edx)
	flds	12(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	12(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	16(%edx)
	flds	16(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	16(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	20(%edx)
	flds	20(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	20(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	24(%edx)
	flds	24(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	24(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	28(%edx)
	flds	28(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	28(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	32(%edx)
	flds	32(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	32(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX3_SINGLE$TMATRIX3_SINGLE$$TMATRIX3_SINGLE
_MATRIX_minus$TMATRIX3_SINGLE$TMATRIX3_SINGLE$$TMATRIX3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	8(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	12(%edx)
	flds	12(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	12(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	16(%edx)
	flds	16(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	16(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	20(%edx)
	flds	20(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	20(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	24(%edx)
	flds	24(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	24(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	28(%edx)
	flds	28(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	28(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	32(%edx)
	flds	32(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	32(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX3_SINGLE$$TMATRIX3_SINGLE
_MATRIX_minus$TMATRIX3_SINGLE$$TMATRIX3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	4(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	12(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	movl	-4(%ebp),%eax
	flds	16(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	16(%eax)
	movl	-4(%ebp),%eax
	flds	20(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	20(%eax)
	movl	-4(%ebp),%eax
	flds	24(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	24(%eax)
	movl	-4(%ebp),%eax
	flds	28(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	28(%eax)
	movl	-4(%ebp),%eax
	flds	32(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	32(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX3_SINGLE$TMATRIX3_SINGLE$$TMATRIX3_SINGLE
_MATRIX_star$TMATRIX3_SINGLE$TMATRIX3_SINGLE$$TMATRIX3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-25(%ebp)
	decb	-25(%ebp)
	.align 2
Lj3030:
	incb	-25(%ebp)
	movl	-4(%ebp),%ecx
	movzbl	-25(%ebp),%eax
	imull	$12,%eax
	movl	(%ecx,%eax),%edx
	movl	%edx,-24(%ebp)
	movl	4(%ecx,%eax),%edx
	movl	%edx,-20(%ebp)
	movl	8(%ecx,%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	-24(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	12(%eax)
	flds	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	24(%eax)
	flds	-16(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-25(%ebp),%eax
	imull	$12,%eax
	fstps	(%edx,%eax)
	movl	-8(%ebp),%eax
	flds	4(%eax)
	flds	-24(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	16(%eax)
	flds	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	28(%eax)
	flds	-16(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-25(%ebp),%eax
	imull	$12,%eax
	fstps	4(%edx,%eax)
	movl	-8(%ebp),%eax
	flds	8(%eax)
	flds	-24(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	20(%eax)
	flds	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	32(%eax)
	flds	-16(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-25(%ebp),%eax
	imull	$12,%eax
	fstps	8(%edx,%eax)
	cmpb	$2,-25(%ebp)
	jb	Lj3030
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX3_SINGLE$TVECTOR3_SINGLE$$TVECTOR3_SINGLE
_MATRIX_star$TMATRIX3_SINGLE$TVECTOR3_SINGLE$$TVECTOR3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	4(%eax)
	flds	4(%edx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	8(%eax)
	flds	8(%edx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	12(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	16(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	20(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	24(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	28(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	32(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TMATRIX3_SINGLE$SINGLE$$TMATRIX3_SINGLE
_MATRIX_plus$TMATRIX3_SINGLE$SINGLE$$TMATRIX3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	12(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	16(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	16(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	20(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	20(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	24(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	24(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	28(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	28(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	32(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	32(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX3_SINGLE$SINGLE$$TMATRIX3_SINGLE
_MATRIX_minus$TMATRIX3_SINGLE$SINGLE$$TMATRIX3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	12(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	16(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	16(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	20(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	20(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	24(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	24(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	28(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	28(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	32(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	32(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX3_SINGLE$SINGLE$$TMATRIX3_SINGLE
_MATRIX_star$TMATRIX3_SINGLE$SINGLE$$TMATRIX3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	12(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	16(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	16(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	20(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	20(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	24(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	24(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	28(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	28(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	32(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	32(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TMATRIX3_SINGLE$SINGLE$$TMATRIX3_SINGLE
_MATRIX_slash$TMATRIX3_SINGLE$SINGLE$$TMATRIX3_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	12(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	16(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	16(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	20(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	20(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	24(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	24(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	28(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	28(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	32(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	32(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_DOUBLE_$__INIT_ZERO$$LONGBOOL
_MATRIX_TMATRIX3_DOUBLE_$__INIT_ZERO$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$72,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3137
	jmp	Lj3138
Lj3137:
	jmp	Lj3127
Lj3138:
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$72,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
Lj3127:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_DOUBLE_$__INIT_IDENTITY$$LONGBOOL
_MATRIX_TMATRIX3_DOUBLE_$__INIT_IDENTITY$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$72,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3155
	jmp	Lj3156
Lj3155:
	jmp	Lj3145
Lj3156:
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$72,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-8(%ebp),%eax
	fld1
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpl	32(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpl	64(%eax)
Lj3145:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_DOUBLE_$__INIT$crcE4AE8E2F
_MATRIX_TMATRIX3_DOUBLE_$__INIT$crcE4AE8E2F:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$72,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3179
	jmp	Lj3180
Lj3179:
	jmp	Lj3169
Lj3180:
	movl	-8(%ebp),%edx
	movl	72(%ebp),%eax
	movl	%eax,(%edx)
	movl	76(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	64(%ebp),%eax
	movl	%eax,8(%edx)
	movl	68(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%edx
	movl	56(%ebp),%eax
	movl	%eax,16(%edx)
	movl	60(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%edx
	movl	48(%ebp),%eax
	movl	%eax,24(%edx)
	movl	52(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%edx
	movl	40(%ebp),%eax
	movl	%eax,32(%edx)
	movl	44(%ebp),%eax
	movl	%eax,36(%edx)
	movl	-8(%ebp),%edx
	movl	32(%ebp),%eax
	movl	%eax,40(%edx)
	movl	36(%ebp),%eax
	movl	%eax,44(%edx)
	movl	-8(%ebp),%edx
	movl	24(%ebp),%eax
	movl	%eax,48(%edx)
	movl	28(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-8(%ebp),%edx
	movl	16(%ebp),%eax
	movl	%eax,56(%edx)
	movl	20(%ebp),%eax
	movl	%eax,60(%edx)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,64(%edx)
	movl	12(%ebp),%eax
	movl	%eax,68(%edx)
Lj3169:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_DOUBLE_$__GET_COLUMN$BYTE$$TVECTOR3_DOUBLE
_MATRIX_TMATRIX3_DOUBLE_$__GET_COLUMN$BYTE$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movzbl	-4(%ebp),%ecx
	movl	-12(%ebp),%ebx
	movl	(%edx,%ecx,8),%eax
	movl	%eax,(%ebx)
	movl	4(%edx,%ecx,8),%eax
	movl	%eax,4(%ebx)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%ecx
	movl	-12(%ebp),%ebx
	movl	24(%eax,%ecx,8),%edx
	movl	%edx,8(%ebx)
	movl	28(%eax,%ecx,8),%eax
	movl	%eax,12(%ebx)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	48(%eax,%edx,8),%ecx
	movl	%ecx,16(%ebx)
	movl	52(%eax,%edx,8),%eax
	movl	%eax,20(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_DOUBLE_$__GET_ROW$BYTE$$TVECTOR3_DOUBLE
_MATRIX_TMATRIX3_DOUBLE_$__GET_ROW$BYTE$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movzbl	-4(%ebp),%eax
	imull	$24,%eax
	movl	-12(%ebp),%edi
	leal	(%edx,%eax),%esi
	cld
	movl	$6,%ecx
	rep
	movsl
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_DOUBLE_$__SET_COLUMN$BYTE$TVECTOR3_DOUBLE
_MATRIX_TMATRIX3_DOUBLE_$__SET_COLUMN$BYTE$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%ebx
	movzbl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ebx,%ecx,8)
	movl	4(%edx),%eax
	movl	%eax,4(%ebx,%ecx,8)
	movl	-12(%ebp),%ecx
	movzbl	-4(%ebp),%ebx
	movl	-8(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,24(%ecx,%ebx,8)
	movl	12(%edx),%eax
	movl	%eax,28(%ecx,%ebx,8)
	movl	-12(%ebp),%ecx
	movzbl	-4(%ebp),%ebx
	movl	-8(%ebp),%edx
	movl	16(%edx),%eax
	movl	%eax,48(%ecx,%ebx,8)
	movl	20(%edx),%eax
	movl	%eax,52(%ecx,%ebx,8)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_DOUBLE_$__SET_ROW$BYTE$TVECTOR3_DOUBLE
_MATRIX_TMATRIX3_DOUBLE_$__SET_ROW$BYTE$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%edx
	movzbl	-4(%ebp),%eax
	imull	$24,%eax
	movl	-8(%ebp),%esi
	leal	(%edx,%eax),%edi
	cld
	movl	$6,%ecx
	rep
	movsl
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_DOUBLE_$__TRANSPOSE$$TMATRIX3_DOUBLE
_MATRIX_TMATRIX3_DOUBLE_$__TRANSPOSE$$TMATRIX3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	24(%edx),%eax
	movl	%eax,8(%ecx)
	movl	28(%edx),%eax
	movl	%eax,12(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	48(%edx),%eax
	movl	%eax,16(%ecx)
	movl	52(%edx),%eax
	movl	%eax,20(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,24(%ecx)
	movl	12(%edx),%eax
	movl	%eax,28(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	32(%edx),%eax
	movl	%eax,32(%ecx)
	movl	36(%edx),%eax
	movl	%eax,36(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	56(%edx),%eax
	movl	%eax,40(%ecx)
	movl	60(%edx),%eax
	movl	%eax,44(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	16(%edx),%eax
	movl	%eax,48(%ecx)
	movl	20(%edx),%eax
	movl	%eax,52(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	40(%edx),%eax
	movl	%eax,56(%ecx)
	movl	44(%edx),%eax
	movl	%eax,60(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	64(%edx),%eax
	movl	%eax,64(%ecx)
	movl	68(%edx),%eax
	movl	%eax,68(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_DOUBLE_$__DETERMINANT$$DOUBLE
_MATRIX_TMATRIX3_DOUBLE_$__DETERMINANT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	64(%edx)
	fldl	32(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	56(%edx)
	fldl	40(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	64(%edx)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	48(%edx)
	fldl	40(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	8(%ecx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	56(%eax)
	fldl	24(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	48(%edx)
	fldl	32(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	16(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_DOUBLE_$__INVERSE$DOUBLE$$TMATRIX3_DOUBLE
_MATRIX_TMATRIX3_DOUBLE_$__INVERSE$DOUBLE$$TMATRIX3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fld1
	fldl	8(%ebp)
	fdivrp	%st,%st(1)
	fstpl	8(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	64(%eax)
	fldl	32(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	40(%eax)
	fldl	56(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	64(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	16(%eax)
	fldl	56(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fchs
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	16(%eax)
	fldl	32(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	64(%edx)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fldl	48(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fchs
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	64(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fldl	48(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	32(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fchs
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	40(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	56(%edx)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	32(%edx)
	fldl	48(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	48(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	56(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fldl	48(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fchs
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	56(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	32(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	64(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_SINGLE$$TMATRIX3_DOUBLE
_MATRIX_assign$TMATRIX2_SINGLE$$TMATRIX3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpl	24(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	12(%edx)
	fstpl	32(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	40(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	48(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	56(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	64(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_DOUBLE$$TMATRIX3_DOUBLE
_MATRIX_assign$TMATRIX2_DOUBLE$$TMATRIX3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,(%ecx)
	movl	4(%eax),%eax
	movl	%eax,4(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,8(%ecx)
	movl	12(%eax),%eax
	movl	%eax,12(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpl	16(%eax)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	movl	%edx,24(%ecx)
	movl	20(%eax),%eax
	movl	%eax,28(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	24(%edx),%eax
	movl	%eax,32(%ecx)
	movl	28(%edx),%eax
	movl	%eax,36(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpl	40(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	48(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	56(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	64(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_EXTENDED$$TMATRIX3_DOUBLE
_MATRIX_assign$TMATRIX2_EXTENDED$$TMATRIX3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstpl	24(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	30(%edx)
	fstpl	32(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	40(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	48(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	56(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	64(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_SINGLE$$TMATRIX3_DOUBLE
_MATRIX_assign$TMATRIX3_SINGLE$$TMATRIX3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	12(%edx)
	fstpl	24(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	16(%edx)
	fstpl	32(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	fstpl	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	24(%edx)
	fstpl	48(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	28(%edx)
	fstpl	56(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	32(%edx)
	fstpl	64(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_EXTENDED$$TMATRIX3_DOUBLE
_MATRIX_assign$TMATRIX3_EXTENDED$$TMATRIX3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	30(%edx)
	fstpl	24(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	40(%edx)
	fstpl	32(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fstpl	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	60(%edx)
	fstpl	48(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	70(%edx)
	fstpl	56(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	80(%edx)
	fstpl	64(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_SINGLE$$TMATRIX3_DOUBLE
_MATRIX_assign$TMATRIX4_SINGLE$$TMATRIX3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	16(%edx)
	fstpl	24(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	fstpl	32(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	24(%edx)
	fstpl	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	32(%edx)
	fstpl	48(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	36(%edx)
	fstpl	56(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	40(%edx)
	fstpl	64(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_DOUBLE$$TMATRIX3_DOUBLE
_MATRIX_assign$TMATRIX4_DOUBLE$$TMATRIX3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,8(%ecx)
	movl	12(%edx),%eax
	movl	%eax,12(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	16(%edx),%eax
	movl	%eax,16(%ecx)
	movl	20(%edx),%eax
	movl	%eax,20(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	32(%edx),%eax
	movl	%eax,24(%ecx)
	movl	36(%edx),%eax
	movl	%eax,28(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	40(%edx),%eax
	movl	%eax,32(%ecx)
	movl	44(%edx),%eax
	movl	%eax,36(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	48(%edx),%eax
	movl	%eax,40(%ecx)
	movl	52(%edx),%eax
	movl	%eax,44(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	64(%edx),%eax
	movl	%eax,48(%ecx)
	movl	68(%edx),%eax
	movl	%eax,52(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	72(%edx),%eax
	movl	%eax,56(%ecx)
	movl	76(%edx),%eax
	movl	%eax,60(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	80(%edx),%eax
	movl	%eax,64(%ecx)
	movl	84(%edx),%eax
	movl	%eax,68(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_EXTENDED$$TMATRIX3_DOUBLE
_MATRIX_assign$TMATRIX4_EXTENDED$$TMATRIX3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	40(%edx)
	fstpl	24(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fstpl	32(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	60(%edx)
	fstpl	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	80(%edx)
	fstpl	48(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	90(%edx)
	fstpl	56(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	100(%edx)
	fstpl	64(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TMATRIX3_DOUBLE$TMATRIX3_DOUBLE$$TMATRIX3_DOUBLE
_MATRIX_plus$TMATRIX3_DOUBLE$TMATRIX3_DOUBLE$$TMATRIX3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	16(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	24(%edx)
	fldl	24(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	24(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	32(%edx)
	fldl	32(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	32(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	40(%edx)
	fldl	40(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	40(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	48(%edx)
	fldl	48(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	48(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	56(%edx)
	fldl	56(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	56(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	64(%edx)
	fldl	64(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	64(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX3_DOUBLE$TMATRIX3_DOUBLE$$TMATRIX3_DOUBLE
_MATRIX_minus$TMATRIX3_DOUBLE$TMATRIX3_DOUBLE$$TMATRIX3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	16(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	24(%edx)
	fldl	24(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	24(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	32(%edx)
	fldl	32(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	32(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	40(%edx)
	fldl	40(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	40(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	48(%edx)
	fldl	48(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	48(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	56(%edx)
	fldl	56(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	56(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	64(%edx)
	fldl	64(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	64(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX3_DOUBLE$$TMATRIX3_DOUBLE
_MATRIX_minus$TMATRIX3_DOUBLE$$TMATRIX3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	16(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	24(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	movl	-4(%ebp),%eax
	fldl	32(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	32(%eax)
	movl	-4(%ebp),%eax
	fldl	40(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	40(%eax)
	movl	-4(%ebp),%eax
	fldl	48(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	48(%eax)
	movl	-4(%ebp),%eax
	fldl	56(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	56(%eax)
	movl	-4(%ebp),%eax
	fldl	64(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	64(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX3_DOUBLE$TMATRIX3_DOUBLE$$TMATRIX3_DOUBLE
_MATRIX_star$TMATRIX3_DOUBLE$TMATRIX3_DOUBLE$$TMATRIX3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-48(%ebp)
	movl	%edi,-44(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-37(%ebp)
	decb	-37(%ebp)
	.align 2
Lj3493:
	incb	-37(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-37(%ebp),%eax
	imull	$24,%eax
	leal	-36(%ebp),%edi
	leal	(%edx,%eax),%esi
	cld
	movl	$6,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	fldl	(%eax)
	fldl	-36(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	24(%eax)
	fldl	-28(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	48(%eax)
	fldl	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-37(%ebp),%eax
	imull	$24,%eax
	fstpl	(%edx,%eax)
	movl	-8(%ebp),%eax
	fldl	8(%eax)
	fldl	-36(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	32(%eax)
	fldl	-28(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	56(%eax)
	fldl	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-37(%ebp),%eax
	imull	$24,%eax
	fstpl	8(%edx,%eax)
	movl	-8(%ebp),%eax
	fldl	16(%eax)
	fldl	-36(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	40(%eax)
	fldl	-28(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	64(%eax)
	fldl	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-37(%ebp),%eax
	imull	$24,%eax
	fstpl	16(%edx,%eax)
	cmpb	$2,-37(%ebp)
	jb	Lj3493
	movl	-48(%ebp),%esi
	movl	-44(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX3_DOUBLE$TVECTOR3_DOUBLE$$TVECTOR3_DOUBLE
_MATRIX_star$TMATRIX3_DOUBLE$TVECTOR3_DOUBLE$$TVECTOR3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	8(%eax)
	fldl	8(%edx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	16(%eax)
	fldl	16(%edx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	32(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	40(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	48(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	56(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	64(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	16(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TMATRIX3_DOUBLE$DOUBLE$$TMATRIX3_DOUBLE
_MATRIX_plus$TMATRIX3_DOUBLE$DOUBLE$$TMATRIX3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	24(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	32(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	32(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	40(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	40(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	48(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	48(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	56(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	56(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	64(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	64(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX3_DOUBLE$DOUBLE$$TMATRIX3_DOUBLE
_MATRIX_minus$TMATRIX3_DOUBLE$DOUBLE$$TMATRIX3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	24(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	32(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	32(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	40(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	40(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	48(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	48(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	56(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	56(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	64(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	64(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX3_DOUBLE$DOUBLE$$TMATRIX3_DOUBLE
_MATRIX_star$TMATRIX3_DOUBLE$DOUBLE$$TMATRIX3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	32(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	32(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	40(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	40(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	48(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	48(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	56(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	56(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	64(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	64(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TMATRIX3_DOUBLE$DOUBLE$$TMATRIX3_DOUBLE
_MATRIX_slash$TMATRIX3_DOUBLE$DOUBLE$$TMATRIX3_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	24(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	32(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	32(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	40(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	40(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	48(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	48(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	56(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	56(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	64(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	64(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_EXTENDED_$__INIT_ZERO$$LONGBOOL
_MATRIX_TMATRIX3_EXTENDED_$__INIT_ZERO$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$92,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3600
	jmp	Lj3601
Lj3600:
	jmp	Lj3590
Lj3601:
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$90,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
Lj3590:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_EXTENDED_$__INIT_IDENTITY$$LONGBOOL
_MATRIX_TMATRIX3_EXTENDED_$__INIT_IDENTITY$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$92,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3618
	jmp	Lj3619
Lj3618:
	jmp	Lj3608
Lj3619:
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$90,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-8(%ebp),%eax
	fld1
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpt	40(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpt	80(%eax)
Lj3608:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_EXTENDED_$__INIT$crc66C2CE18
_MATRIX_TMATRIX3_EXTENDED_$__INIT$crc66C2CE18:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$92,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3642
	jmp	Lj3643
Lj3642:
	jmp	Lj3632
Lj3643:
	movl	-8(%ebp),%edx
	movl	104(%ebp),%eax
	movl	%eax,(%edx)
	movl	108(%ebp),%eax
	movl	%eax,4(%edx)
	movw	112(%ebp),%ax
	movw	%ax,8(%edx)
	movl	-8(%ebp),%edx
	movl	92(%ebp),%eax
	movl	%eax,10(%edx)
	movl	96(%ebp),%eax
	movl	%eax,14(%edx)
	movw	100(%ebp),%ax
	movw	%ax,18(%edx)
	movl	-8(%ebp),%edx
	movl	80(%ebp),%eax
	movl	%eax,20(%edx)
	movl	84(%ebp),%eax
	movl	%eax,24(%edx)
	movw	88(%ebp),%ax
	movw	%ax,28(%edx)
	movl	-8(%ebp),%edx
	movl	68(%ebp),%eax
	movl	%eax,30(%edx)
	movl	72(%ebp),%eax
	movl	%eax,34(%edx)
	movw	76(%ebp),%ax
	movw	%ax,38(%edx)
	movl	-8(%ebp),%edx
	movl	56(%ebp),%eax
	movl	%eax,40(%edx)
	movl	60(%ebp),%eax
	movl	%eax,44(%edx)
	movw	64(%ebp),%ax
	movw	%ax,48(%edx)
	movl	-8(%ebp),%edx
	movl	44(%ebp),%eax
	movl	%eax,50(%edx)
	movl	48(%ebp),%eax
	movl	%eax,54(%edx)
	movw	52(%ebp),%ax
	movw	%ax,58(%edx)
	movl	-8(%ebp),%edx
	movl	32(%ebp),%eax
	movl	%eax,60(%edx)
	movl	36(%ebp),%eax
	movl	%eax,64(%edx)
	movw	40(%ebp),%ax
	movw	%ax,68(%edx)
	movl	-8(%ebp),%edx
	movl	20(%ebp),%eax
	movl	%eax,70(%edx)
	movl	24(%ebp),%eax
	movl	%eax,74(%edx)
	movw	28(%ebp),%ax
	movw	%ax,78(%edx)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,80(%edx)
	movl	12(%ebp),%eax
	movl	%eax,84(%edx)
	movw	16(%ebp),%ax
	movw	%ax,88(%edx)
Lj3632:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_EXTENDED_$__GET_COLUMN$BYTE$$TVECTOR3_EXTENDED
_MATRIX_TMATRIX3_EXTENDED_$__GET_COLUMN$BYTE$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%ebx
	movzbl	-4(%ebp),%eax
	imull	$10,%eax
	movl	-12(%ebp),%ecx
	movl	(%ebx,%eax),%edx
	movl	%edx,(%ecx)
	movl	4(%ebx,%eax),%edx
	movl	%edx,4(%ecx)
	movw	8(%ebx,%eax),%ax
	movw	%ax,8(%ecx)
	movl	-8(%ebp),%ecx
	movzbl	-4(%ebp),%eax
	imull	$10,%eax
	movl	-12(%ebp),%ebx
	movl	30(%ecx,%eax),%edx
	movl	%edx,10(%ebx)
	movl	34(%ecx,%eax),%edx
	movl	%edx,14(%ebx)
	movw	38(%ecx,%eax),%ax
	movw	%ax,18(%ebx)
	movl	-8(%ebp),%ecx
	movzbl	-4(%ebp),%eax
	imull	$10,%eax
	movl	-12(%ebp),%ebx
	movl	60(%ecx,%eax),%edx
	movl	%edx,20(%ebx)
	movl	64(%ecx,%eax),%edx
	movl	%edx,24(%ebx)
	movw	68(%ecx,%eax),%ax
	movw	%ax,28(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_EXTENDED_$__GET_ROW$BYTE$$TVECTOR3_EXTENDED
_MATRIX_TMATRIX3_EXTENDED_$__GET_ROW$BYTE$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movzbl	-4(%ebp),%eax
	imull	$30,%eax
	movl	-12(%ebp),%edi
	leal	(%edx,%eax),%esi
	cld
	movl	$7,%ecx
	rep
	movsl
	movsw
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_EXTENDED_$__SET_COLUMN$BYTE$TVECTOR3_EXTENDED
_MATRIX_TMATRIX3_EXTENDED_$__SET_COLUMN$BYTE$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%ecx
	movzbl	-4(%ebp),%eax
	imull	$10,%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%edx
	movl	%edx,(%ecx,%eax)
	movl	4(%ebx),%edx
	movl	%edx,4(%ecx,%eax)
	movw	8(%ebx),%dx
	movw	%dx,8(%ecx,%eax)
	movl	-12(%ebp),%ecx
	movzbl	-4(%ebp),%eax
	imull	$10,%eax
	movl	-8(%ebp),%ebx
	movl	10(%ebx),%edx
	movl	%edx,30(%ecx,%eax)
	movl	14(%ebx),%edx
	movl	%edx,34(%ecx,%eax)
	movw	18(%ebx),%dx
	movw	%dx,38(%ecx,%eax)
	movl	-12(%ebp),%ecx
	movzbl	-4(%ebp),%eax
	imull	$10,%eax
	movl	-8(%ebp),%ebx
	movl	20(%ebx),%edx
	movl	%edx,60(%ecx,%eax)
	movl	24(%ebx),%edx
	movl	%edx,64(%ecx,%eax)
	movw	28(%ebx),%dx
	movw	%dx,68(%ecx,%eax)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_EXTENDED_$__SET_ROW$BYTE$TVECTOR3_EXTENDED
_MATRIX_TMATRIX3_EXTENDED_$__SET_ROW$BYTE$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%edx
	movzbl	-4(%ebp),%eax
	imull	$30,%eax
	movl	-8(%ebp),%esi
	leal	(%edx,%eax),%edi
	cld
	movl	$7,%ecx
	rep
	movsl
	movsw
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_EXTENDED_$__TRANSPOSE$$TMATRIX3_EXTENDED
_MATRIX_TMATRIX3_EXTENDED_$__TRANSPOSE$$TMATRIX3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movw	8(%edx),%ax
	movw	%ax,8(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	30(%edx),%eax
	movl	%eax,10(%ecx)
	movl	34(%edx),%eax
	movl	%eax,14(%ecx)
	movw	38(%edx),%ax
	movw	%ax,18(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	60(%edx),%eax
	movl	%eax,20(%ecx)
	movl	64(%edx),%eax
	movl	%eax,24(%ecx)
	movw	68(%edx),%ax
	movw	%ax,28(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	10(%edx),%eax
	movl	%eax,30(%ecx)
	movl	14(%edx),%eax
	movl	%eax,34(%ecx)
	movw	18(%edx),%ax
	movw	%ax,38(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	40(%edx),%eax
	movl	%eax,40(%ecx)
	movl	44(%edx),%eax
	movl	%eax,44(%ecx)
	movw	48(%edx),%ax
	movw	%ax,48(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	70(%edx),%eax
	movl	%eax,50(%ecx)
	movl	74(%edx),%eax
	movl	%eax,54(%ecx)
	movw	78(%edx),%ax
	movw	%ax,58(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	20(%edx),%eax
	movl	%eax,60(%ecx)
	movl	24(%edx),%eax
	movl	%eax,64(%ecx)
	movw	28(%edx),%ax
	movw	%ax,68(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	50(%edx),%eax
	movl	%eax,70(%ecx)
	movl	54(%edx),%eax
	movl	%eax,74(%ecx)
	movw	58(%edx),%ax
	movw	%ax,78(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	80(%edx),%eax
	movl	%eax,80(%ecx)
	movl	84(%edx),%eax
	movl	%eax,84(%ecx)
	movw	88(%edx),%ax
	movw	%ax,88(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_EXTENDED_$__DETERMINANT$$EXTENDED
_MATRIX_TMATRIX3_EXTENDED_$__DETERMINANT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	80(%edx)
	fldt	40(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	70(%edx)
	fldt	50(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	80(%edx)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	60(%edx)
	fldt	50(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	10(%ecx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	70(%eax)
	fldt	30(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	60(%edx)
	fldt	40(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	20(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX3_EXTENDED_$__INVERSE$EXTENDED$$TMATRIX3_EXTENDED
_MATRIX_TMATRIX3_EXTENDED_$__INVERSE$EXTENDED$$TMATRIX3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fld1
	fldt	8(%ebp)
	fdivrp	%st,%st(1)
	fstpt	8(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	80(%eax)
	fldt	40(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	50(%eax)
	fldt	70(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	80(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	20(%eax)
	fldt	70(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fchs
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	20(%eax)
	fldt	40(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	80(%edx)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fldt	60(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fchs
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	80(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fldt	60(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	40(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fchs
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	50(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	70(%edx)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	40(%edx)
	fldt	60(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	60(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	70(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fldt	60(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fchs
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	70(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	40(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	80(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_SINGLE$$TMATRIX3_EXTENDED
_MATRIX_assign$TMATRIX2_SINGLE$$TMATRIX3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpt	30(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	12(%edx)
	fstpt	40(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	50(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	60(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	70(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	80(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_DOUBLE$$TMATRIX3_EXTENDED
_MATRIX_assign$TMATRIX2_DOUBLE$$TMATRIX3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstpt	30(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	24(%edx)
	fstpt	40(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	50(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	60(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	70(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	80(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_EXTENDED$$TMATRIX3_EXTENDED
_MATRIX_assign$TMATRIX2_EXTENDED$$TMATRIX3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movw	8(%edx),%ax
	movw	%ax,8(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	10(%edx),%eax
	movl	%eax,10(%ecx)
	movl	14(%edx),%eax
	movl	%eax,14(%ecx)
	movw	18(%edx),%ax
	movw	%ax,18(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpt	20(%eax)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	20(%edx),%eax
	movl	%eax,30(%ecx)
	movl	24(%edx),%eax
	movl	%eax,34(%ecx)
	movw	28(%edx),%ax
	movw	%ax,38(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	30(%edx),%eax
	movl	%eax,40(%ecx)
	movl	34(%edx),%eax
	movl	%eax,44(%ecx)
	movw	38(%edx),%ax
	movw	%ax,48(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpt	50(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	60(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	70(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	80(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_SINGLE$$TMATRIX3_EXTENDED
_MATRIX_assign$TMATRIX3_SINGLE$$TMATRIX3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	12(%edx)
	fstpt	30(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	16(%edx)
	fstpt	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	fstpt	50(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	24(%edx)
	fstpt	60(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	28(%edx)
	fstpt	70(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	32(%edx)
	fstpt	80(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_DOUBLE$$TMATRIX3_EXTENDED
_MATRIX_assign$TMATRIX3_DOUBLE$$TMATRIX3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	24(%edx)
	fstpt	30(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	32(%edx)
	fstpt	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fstpt	50(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	48(%edx)
	fstpt	60(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	56(%edx)
	fstpt	70(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	64(%edx)
	fstpt	80(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_SINGLE$$TMATRIX3_EXTENDED
_MATRIX_assign$TMATRIX4_SINGLE$$TMATRIX3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	16(%edx)
	fstpt	30(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	fstpt	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	24(%edx)
	fstpt	50(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	32(%edx)
	fstpt	60(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	36(%edx)
	fstpt	70(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	40(%edx)
	fstpt	80(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_DOUBLE$$TMATRIX3_EXTENDED
_MATRIX_assign$TMATRIX4_DOUBLE$$TMATRIX3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	32(%edx)
	fstpt	30(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fstpt	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	48(%edx)
	fstpt	50(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	64(%edx)
	fstpt	60(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	72(%edx)
	fstpt	70(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	80(%edx)
	fstpt	80(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_EXTENDED$$TMATRIX3_EXTENDED
_MATRIX_assign$TMATRIX4_EXTENDED$$TMATRIX3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movw	8(%edx),%ax
	movw	%ax,8(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	10(%edx),%eax
	movl	%eax,10(%ecx)
	movl	14(%edx),%eax
	movl	%eax,14(%ecx)
	movw	18(%edx),%ax
	movw	%ax,18(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	20(%edx),%eax
	movl	%eax,20(%ecx)
	movl	24(%edx),%eax
	movl	%eax,24(%ecx)
	movw	28(%edx),%ax
	movw	%ax,28(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	40(%edx),%eax
	movl	%eax,30(%ecx)
	movl	44(%edx),%eax
	movl	%eax,34(%ecx)
	movw	48(%edx),%ax
	movw	%ax,38(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	50(%edx),%eax
	movl	%eax,40(%ecx)
	movl	54(%edx),%eax
	movl	%eax,44(%ecx)
	movw	58(%edx),%ax
	movw	%ax,48(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	60(%edx),%eax
	movl	%eax,50(%ecx)
	movl	64(%edx),%eax
	movl	%eax,54(%ecx)
	movw	68(%edx),%ax
	movw	%ax,58(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	80(%edx),%eax
	movl	%eax,60(%ecx)
	movl	84(%edx),%eax
	movl	%eax,64(%ecx)
	movw	88(%edx),%ax
	movw	%ax,68(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	90(%edx),%eax
	movl	%eax,70(%ecx)
	movl	94(%edx),%eax
	movl	%eax,74(%ecx)
	movw	98(%edx),%ax
	movw	%ax,78(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	100(%edx),%eax
	movl	%eax,80(%ecx)
	movl	104(%edx),%eax
	movl	%eax,84(%ecx)
	movw	108(%edx),%ax
	movw	%ax,88(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TMATRIX3_EXTENDED$TMATRIX3_EXTENDED$$TMATRIX3_EXTENDED
_MATRIX_plus$TMATRIX3_EXTENDED$TMATRIX3_EXTENDED$$TMATRIX3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	20(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	30(%edx)
	fldt	30(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	30(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	40(%edx)
	fldt	40(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	40(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	50(%edx)
	fldt	50(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	50(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	60(%edx)
	fldt	60(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	60(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	70(%edx)
	fldt	70(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	70(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	80(%edx)
	fldt	80(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	80(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX3_EXTENDED$TMATRIX3_EXTENDED$$TMATRIX3_EXTENDED
_MATRIX_minus$TMATRIX3_EXTENDED$TMATRIX3_EXTENDED$$TMATRIX3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	20(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	30(%edx)
	fldt	30(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	30(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	40(%edx)
	fldt	40(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	40(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	50(%edx)
	fldt	50(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	50(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	60(%edx)
	fldt	60(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	60(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	70(%edx)
	fldt	70(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	70(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	80(%edx)
	fldt	80(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	80(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX3_EXTENDED$$TMATRIX3_EXTENDED
_MATRIX_minus$TMATRIX3_EXTENDED$$TMATRIX3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	10(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	20(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	30(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	movl	-4(%ebp),%eax
	fldt	40(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	40(%eax)
	movl	-4(%ebp),%eax
	fldt	50(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	50(%eax)
	movl	-4(%ebp),%eax
	fldt	60(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	60(%eax)
	movl	-4(%ebp),%eax
	fldt	70(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	70(%eax)
	movl	-4(%ebp),%eax
	fldt	80(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	80(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX3_EXTENDED$TMATRIX3_EXTENDED$$TMATRIX3_EXTENDED
_MATRIX_star$TMATRIX3_EXTENDED$TMATRIX3_EXTENDED$$TMATRIX3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-49(%ebp)
	decb	-49(%ebp)
	.align 2
Lj3956:
	incb	-49(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-49(%ebp),%eax
	imull	$30,%eax
	leal	-48(%ebp),%edi
	leal	(%edx,%eax),%esi
	cld
	movl	$7,%ecx
	rep
	movsl
	movsw
	movl	-8(%ebp),%eax
	fldt	(%eax)
	fldt	-48(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	30(%eax)
	fldt	-38(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	60(%eax)
	fldt	-28(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-49(%ebp),%eax
	imull	$30,%eax
	fstpt	(%edx,%eax)
	movl	-8(%ebp),%eax
	fldt	10(%eax)
	fldt	-48(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	40(%eax)
	fldt	-38(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	70(%eax)
	fldt	-28(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-49(%ebp),%eax
	imull	$30,%eax
	fstpt	10(%edx,%eax)
	movl	-8(%ebp),%eax
	fldt	20(%eax)
	fldt	-48(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	50(%eax)
	fldt	-38(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	80(%eax)
	fldt	-28(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-49(%ebp),%eax
	imull	$30,%eax
	fstpt	20(%edx,%eax)
	cmpb	$2,-49(%ebp)
	jb	Lj3956
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX3_EXTENDED$TVECTOR3_EXTENDED$$TVECTOR3_EXTENDED
_MATRIX_star$TMATRIX3_EXTENDED$TVECTOR3_EXTENDED$$TVECTOR3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	10(%eax)
	fldt	10(%edx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	20(%eax)
	fldt	20(%edx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	40(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	50(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	60(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	70(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	80(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TMATRIX3_EXTENDED$EXTENDED$$TMATRIX3_EXTENDED
_MATRIX_plus$TMATRIX3_EXTENDED$EXTENDED$$TMATRIX3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	30(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	40(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	40(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	50(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	50(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	60(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	60(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	70(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	70(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	80(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	80(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX3_EXTENDED$EXTENDED$$TMATRIX3_EXTENDED
_MATRIX_minus$TMATRIX3_EXTENDED$EXTENDED$$TMATRIX3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	30(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	40(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	40(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	50(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	50(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	60(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	60(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	70(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	70(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	80(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	80(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX3_EXTENDED$EXTENDED$$TMATRIX3_EXTENDED
_MATRIX_star$TMATRIX3_EXTENDED$EXTENDED$$TMATRIX3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	40(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	40(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	50(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	50(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	60(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	60(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	70(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	70(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	80(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	80(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TMATRIX3_EXTENDED$EXTENDED$$TMATRIX3_EXTENDED
_MATRIX_slash$TMATRIX3_EXTENDED$EXTENDED$$TMATRIX3_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	30(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	40(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	40(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	50(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	50(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	60(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	60(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	70(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	70(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	80(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	80(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_SINGLE_$__INIT_ZERO$$LONGBOOL
_MATRIX_TMATRIX4_SINGLE_$__INIT_ZERO$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$64,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4063
	jmp	Lj4064
Lj4063:
	jmp	Lj4053
Lj4064:
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$64,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
Lj4053:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_SINGLE_$__INIT_IDENTITY$$LONGBOOL
_MATRIX_TMATRIX4_SINGLE_$__INIT_IDENTITY$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$64,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4081
	jmp	Lj4082
Lj4081:
	jmp	Lj4071
Lj4082:
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$64,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-8(%ebp),%eax
	fld1
	fstps	(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstps	20(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstps	40(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstps	60(%eax)
Lj4071:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_SINGLE_$__INIT$crcA58B22C1
_MATRIX_TMATRIX4_SINGLE_$__INIT$crcA58B22C1:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$64,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4107
	jmp	Lj4108
Lj4107:
	jmp	Lj4097
Lj4108:
	movl	-8(%ebp),%eax
	movl	68(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	movl	64(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%eax
	movl	60(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-8(%ebp),%eax
	movl	56(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-8(%ebp),%eax
	movl	52(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-8(%ebp),%eax
	movl	48(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-8(%ebp),%eax
	movl	44(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-8(%ebp),%eax
	movl	40(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%eax
	movl	36(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-8(%ebp),%eax
	movl	32(%ebp),%edx
	movl	%edx,36(%eax)
	movl	-8(%ebp),%eax
	movl	28(%ebp),%edx
	movl	%edx,40(%eax)
	movl	-8(%ebp),%eax
	movl	24(%ebp),%edx
	movl	%edx,44(%eax)
	movl	-8(%ebp),%eax
	movl	20(%ebp),%edx
	movl	%edx,48(%eax)
	movl	-8(%ebp),%eax
	movl	16(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,56(%eax)
	movl	-8(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,60(%eax)
Lj4097:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_SINGLE_$__GET_COLUMN$BYTE$$TVECTOR4_SINGLE
_MATRIX_TMATRIX4_SINGLE_$__GET_COLUMN$BYTE$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	(%eax,%edx,4),%eax
	movl	%eax,(%ecx)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	16(%eax,%edx,4),%eax
	movl	%eax,4(%ecx)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	32(%eax,%edx,4),%eax
	movl	%eax,8(%ecx)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	48(%eax,%edx,4),%eax
	movl	%eax,12(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_SINGLE_$__GET_ROW$BYTE$$TVECTOR4_SINGLE
_MATRIX_TMATRIX4_SINGLE_$__GET_ROW$BYTE$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movzbl	-4(%ebp),%eax
	shll	$4,%eax
	movl	-12(%ebp),%edi
	leal	(%edx,%eax),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_SINGLE_$__SET_COLUMN$BYTE$TVECTOR4_SINGLE
_MATRIX_TMATRIX4_SINGLE_$__SET_COLUMN$BYTE$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%edx
	movzbl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx,%ecx,4)
	movl	-12(%ebp),%edx
	movzbl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,16(%edx,%ecx,4)
	movl	-12(%ebp),%edx
	movzbl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,32(%edx,%ecx,4)
	movl	-12(%ebp),%edx
	movzbl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,48(%edx,%ecx,4)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_SINGLE_$__SET_ROW$BYTE$TVECTOR4_SINGLE
_MATRIX_TMATRIX4_SINGLE_$__SET_ROW$BYTE$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%edx
	movzbl	-4(%ebp),%eax
	shll	$4,%eax
	movl	-8(%ebp),%esi
	leal	(%edx,%eax),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_SINGLE_$__TRANSPOSE$$TMATRIX4_SINGLE
_MATRIX_TMATRIX4_SINGLE_$__TRANSPOSE$$TMATRIX4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,16(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,24(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,32(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,36(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,40(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,44(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,48(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,52(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,56(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,60(%edx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_SINGLE_$__DETERMINANT$$SINGLE
_MATRIX_TMATRIX4_SINGLE_$__DETERMINANT$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	16(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	60(%edx)
	flds	40(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	56(%edx)
	flds	44(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	24(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	16(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	60(%edx)
	flds	36(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	52(%edx)
	flds	44(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	28(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	16(%edx)
	flds	12(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	56(%edx)
	flds	36(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	52(%edx)
	flds	40(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	24(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	60(%edx)
	flds	32(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	48(%edx)
	flds	44(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	28(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	flds	12(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	56(%edx)
	flds	32(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	48(%edx)
	flds	40(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	28(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	24(%edx)
	flds	12(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	52(%edx)
	flds	32(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	48(%edx)
	flds	36(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstps	-8(%ebp)
	flds	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_SINGLE_$__INVERSE$SINGLE$$TMATRIX4_SINGLE
_MATRIX_TMATRIX4_SINGLE_$__INVERSE$SINGLE$$TMATRIX4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fld1
	flds	8(%ebp)
	fdivrp	%st,%st(1)
	fstps	8(%ebp)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	60(%eax)
	flds	40(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	56(%eax)
	flds	44(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	20(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	52(%edx)
	flds	44(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	60(%edx)
	flds	36(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	24(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	56(%eax)
	flds	36(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	52(%eax)
	flds	40(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	28(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	60(%eax)
	flds	8(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	56(%eax)
	flds	12(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	36(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	52(%edx)
	flds	12(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	60(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	40(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	56(%eax)
	flds	4(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	52(%eax)
	flds	8(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	44(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	28(%eax)
	flds	8(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	24(%eax)
	flds	12(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	52(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	flds	12(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	28(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	56(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	24(%eax)
	flds	4(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	60(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	40(%eax)
	flds	28(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	44(%eax)
	flds	24(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	4(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	44(%edx)
	flds	20(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	36(%edx)
	flds	28(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	8(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	36(%eax)
	flds	24(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	40(%edx)
	flds	20(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	12(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	60(%eax)
	flds	32(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	48(%eax)
	flds	44(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	24(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	48(%edx)
	flds	40(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	56(%edx)
	flds	32(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	28(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	56(%eax)
	flds	44(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	60(%edx)
	flds	40(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	16(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	16(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	60(%eax)
	flds	(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	48(%eax)
	flds	12(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	40(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	48(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	56(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	44(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	56(%eax)
	flds	12(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	60(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	32(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	20(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	28(%eax)
	flds	(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	16(%eax)
	flds	12(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	56(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	16(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	24(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	60(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	24(%eax)
	flds	12(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	28(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	48(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	24(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	32(%eax)
	flds	28(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	44(%eax)
	flds	16(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	8(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	40(%edx)
	flds	16(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	32(%edx)
	flds	24(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	12(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	44(%eax)
	flds	24(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	40(%edx)
	flds	28(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	28(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	52(%eax)
	flds	32(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	48(%eax)
	flds	36(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	28(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	60(%edx)
	flds	36(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	52(%edx)
	flds	44(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	16(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	48(%eax)
	flds	44(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	60(%edx)
	flds	32(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	20(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	32(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	52(%eax)
	flds	(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	48(%eax)
	flds	4(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	44(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	60(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	52(%edx)
	flds	12(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	32(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	48(%eax)
	flds	12(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	60(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	36(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	36(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	20(%eax)
	flds	(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	16(%eax)
	flds	4(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	60(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	28(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	flds	12(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	48(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	16(%eax)
	flds	12(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	28(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	52(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	40(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	32(%eax)
	flds	20(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	36(%eax)
	flds	16(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	12(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	36(%edx)
	flds	28(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	44(%edx)
	flds	20(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	44(%eax)
	flds	16(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	32(%edx)
	flds	28(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	4(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	44(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	52(%eax)
	flds	40(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	56(%eax)
	flds	36(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	16(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	56(%edx)
	flds	32(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	48(%edx)
	flds	40(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	20(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	48(%eax)
	flds	36(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	52(%edx)
	flds	32(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	24(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	48(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	52(%eax)
	flds	8(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	56(%eax)
	flds	4(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	32(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	56(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	48(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	36(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	48(%eax)
	flds	4(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	52(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	40(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	52(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	20(%eax)
	flds	8(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	24(%eax)
	flds	4(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	48(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	24(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	16(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	52(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	16(%eax)
	flds	4(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	56(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	56(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	40(%eax)
	flds	20(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	36(%eax)
	flds	24(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	32(%edx)
	flds	24(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	40(%edx)
	flds	16(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	4(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	36(%eax)
	flds	16(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	32(%edx)
	flds	20(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	flds	8(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	flds	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	60(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_SINGLE$$TMATRIX4_SINGLE
_MATRIX_assign$TMATRIX2_SINGLE$$TMATRIX4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	fldz
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	12(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,16(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%eax
	fldz
	fstps	24(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	28(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	32(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	36(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	40(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	44(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	48(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	52(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	56(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	60(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_DOUBLE$$TMATRIX4_SINGLE
_MATRIX_assign$TMATRIX2_DOUBLE$$TMATRIX4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	12(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstps	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	24(%edx)
	fstps	20(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	24(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	28(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	32(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	36(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	40(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	44(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	48(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	52(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	56(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	60(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_EXTENDED$$TMATRIX4_SINGLE
_MATRIX_assign$TMATRIX2_EXTENDED$$TMATRIX4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	12(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstps	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	30(%edx)
	fstps	20(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	24(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	28(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	32(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	36(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	40(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	44(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	48(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	52(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	56(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	60(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_SINGLE$$TMATRIX4_SINGLE
_MATRIX_assign$TMATRIX3_SINGLE$$TMATRIX4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	fldz
	fstps	12(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,16(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,24(%edx)
	movl	-8(%ebp),%eax
	fldz
	fstps	28(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,32(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,36(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,40(%edx)
	movl	-8(%ebp),%eax
	fldz
	fstps	44(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	48(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	52(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	56(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	60(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_DOUBLE$$TMATRIX4_SINGLE
_MATRIX_assign$TMATRIX3_DOUBLE$$TMATRIX4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fstps	4(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	12(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	24(%edx)
	fstps	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	32(%edx)
	fstps	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fstps	24(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	28(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	48(%eax)
	fstps	32(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	56(%edx)
	fstps	36(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	64(%edx)
	fstps	40(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	44(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	48(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	52(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	56(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	60(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_EXTENDED$$TMATRIX4_SINGLE
_MATRIX_assign$TMATRIX3_EXTENDED$$TMATRIX4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	10(%eax)
	fstps	4(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	12(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	30(%edx)
	fstps	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	40(%edx)
	fstps	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fstps	24(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	28(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	60(%eax)
	fstps	32(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	70(%edx)
	fstps	36(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	80(%edx)
	fstps	40(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	44(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	48(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	52(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	56(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstps	60(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_DOUBLE$$TMATRIX4_SINGLE
_MATRIX_assign$TMATRIX4_DOUBLE$$TMATRIX4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	24(%edx)
	fstps	12(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	32(%edx)
	fstps	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fstps	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	48(%edx)
	fstps	24(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	56(%edx)
	fstps	28(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	64(%edx)
	fstps	32(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	72(%edx)
	fstps	36(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	80(%edx)
	fstps	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	88(%edx)
	fstps	44(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	96(%edx)
	fstps	48(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	104(%edx)
	fstps	52(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	112(%edx)
	fstps	56(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	120(%edx)
	fstps	60(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_EXTENDED$$TMATRIX4_SINGLE
_MATRIX_assign$TMATRIX4_EXTENDED$$TMATRIX4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstps	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstps	4(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	30(%edx)
	fstps	12(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	40(%edx)
	fstps	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fstps	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	60(%edx)
	fstps	24(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	70(%edx)
	fstps	28(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	80(%edx)
	fstps	32(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	90(%edx)
	fstps	36(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	100(%edx)
	fstps	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	110(%edx)
	fstps	44(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	120(%edx)
	fstps	48(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	130(%edx)
	fstps	52(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	140(%edx)
	fstps	56(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	150(%edx)
	fstps	60(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TMATRIX4_SINGLE$TMATRIX4_SINGLE$$TMATRIX4_SINGLE
_MATRIX_plus$TMATRIX4_SINGLE$TMATRIX4_SINGLE$$TMATRIX4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	4(%eax)
	flds	4(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	8(%eax)
	flds	8(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	12(%eax)
	flds	12(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	12(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	16(%eax)
	flds	16(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	16(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	20(%eax)
	flds	20(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	20(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	24(%edx)
	flds	24(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	24(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	28(%edx)
	flds	28(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	28(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	32(%edx)
	flds	32(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	32(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	36(%edx)
	flds	36(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	36(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	40(%edx)
	flds	40(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	40(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	44(%edx)
	flds	44(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	44(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	48(%edx)
	flds	48(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	48(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	52(%edx)
	flds	52(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	52(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	56(%edx)
	flds	56(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	56(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	60(%edx)
	flds	60(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	60(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX4_SINGLE$TMATRIX4_SINGLE$$TMATRIX4_SINGLE
_MATRIX_minus$TMATRIX4_SINGLE$TMATRIX4_SINGLE$$TMATRIX4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	4(%eax)
	flds	4(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	8(%eax)
	flds	8(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	12(%eax)
	flds	12(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	12(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	16(%eax)
	flds	16(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	16(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	flds	20(%eax)
	flds	20(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	20(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	24(%edx)
	flds	24(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	24(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	28(%edx)
	flds	28(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	28(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	32(%edx)
	flds	32(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	32(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	36(%edx)
	flds	36(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	36(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	40(%edx)
	flds	40(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	40(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	44(%edx)
	flds	44(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	44(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	48(%edx)
	flds	48(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	48(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	52(%edx)
	flds	52(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	52(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	56(%edx)
	flds	56(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	56(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	60(%edx)
	flds	60(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	60(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX4_SINGLE$$TMATRIX4_SINGLE
_MATRIX_minus$TMATRIX4_SINGLE$$TMATRIX4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	4(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	12(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	movl	-4(%ebp),%eax
	flds	16(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	16(%eax)
	movl	-4(%ebp),%eax
	flds	20(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	20(%eax)
	movl	-4(%ebp),%eax
	flds	24(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	24(%eax)
	movl	-4(%ebp),%eax
	flds	28(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	28(%eax)
	movl	-4(%ebp),%eax
	flds	32(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	32(%eax)
	movl	-4(%ebp),%eax
	flds	36(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	36(%eax)
	movl	-4(%ebp),%eax
	flds	40(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	40(%eax)
	movl	-4(%ebp),%eax
	flds	44(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	44(%eax)
	movl	-4(%ebp),%eax
	flds	48(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	48(%eax)
	movl	-4(%ebp),%eax
	flds	52(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	52(%eax)
	movl	-4(%ebp),%eax
	flds	56(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	56(%eax)
	movl	-4(%ebp),%eax
	flds	60(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	60(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX4_SINGLE$TMATRIX4_SINGLE$$TMATRIX4_SINGLE
_MATRIX_star$TMATRIX4_SINGLE$TMATRIX4_SINGLE$$TMATRIX4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-29(%ebp)
	decb	-29(%ebp)
	.align 2
Lj4621:
	incb	-29(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-29(%ebp),%eax
	shll	$4,%eax
	leal	-28(%ebp),%edi
	leal	(%edx,%eax),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	-28(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	16(%eax)
	flds	-24(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	32(%eax)
	flds	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	48(%eax)
	flds	-16(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-29(%ebp),%eax
	shll	$4,%eax
	fstps	(%edx,%eax)
	movl	-8(%ebp),%eax
	flds	4(%eax)
	flds	-28(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	20(%eax)
	flds	-24(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	36(%eax)
	flds	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	52(%eax)
	flds	-16(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-29(%ebp),%eax
	shll	$4,%eax
	fstps	4(%edx,%eax)
	movl	-8(%ebp),%eax
	flds	8(%eax)
	flds	-28(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	24(%eax)
	flds	-24(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	40(%eax)
	flds	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	56(%eax)
	flds	-16(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-29(%ebp),%eax
	shll	$4,%eax
	fstps	8(%edx,%eax)
	movl	-8(%ebp),%eax
	flds	12(%eax)
	flds	-28(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	28(%eax)
	flds	-24(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	44(%eax)
	flds	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	flds	60(%eax)
	flds	-16(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-29(%ebp),%eax
	shll	$4,%eax
	fstps	12(%edx,%eax)
	cmpb	$3,-29(%ebp)
	jb	Lj4621
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX4_SINGLE$TVECTOR4_SINGLE$$TVECTOR4_SINGLE
_MATRIX_star$TMATRIX4_SINGLE$TVECTOR4_SINGLE$$TVECTOR4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	4(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	12(%edx)
	flds	12(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	16(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	20(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	24(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	12(%edx)
	flds	28(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	32(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	36(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	40(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	12(%edx)
	flds	44(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	(%edx)
	flds	48(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	4(%edx)
	flds	52(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	8(%edx)
	flds	56(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	flds	12(%edx)
	flds	60(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstps	12(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TMATRIX4_SINGLE$SINGLE$$TMATRIX4_SINGLE
_MATRIX_plus$TMATRIX4_SINGLE$SINGLE$$TMATRIX4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	12(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	16(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	16(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	20(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	20(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	24(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	24(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	28(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	28(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	32(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	32(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	36(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	36(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	40(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	40(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	44(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	44(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	48(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	48(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	52(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	52(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	56(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	56(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	60(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	60(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX4_SINGLE$SINGLE$$TMATRIX4_SINGLE
_MATRIX_minus$TMATRIX4_SINGLE$SINGLE$$TMATRIX4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	12(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	16(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	16(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	20(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	20(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	24(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	24(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	28(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	28(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	32(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	32(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	36(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	36(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	40(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	40(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	44(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	44(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	48(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	48(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	52(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	52(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	56(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	56(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	60(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	60(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX4_SINGLE$SINGLE$$TMATRIX4_SINGLE
_MATRIX_star$TMATRIX4_SINGLE$SINGLE$$TMATRIX4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	12(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	16(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	16(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	20(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	20(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	24(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	24(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	28(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	28(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	32(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	32(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	36(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	36(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	40(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	40(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	44(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	44(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	48(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	48(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	52(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	52(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	56(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	56(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	60(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	60(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TMATRIX4_SINGLE$SINGLE$$TMATRIX4_SINGLE
_MATRIX_slash$TMATRIX4_SINGLE$SINGLE$$TMATRIX4_SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	4(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	4(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	8(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	12(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	12(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	16(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	16(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	20(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	20(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	24(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	24(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	28(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	28(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	32(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	32(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	36(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	36(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	40(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	40(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	44(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	44(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	48(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	48(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	52(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	52(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	56(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	56(%eax)
	movl	-4(%ebp),%eax
	flds	8(%ebp)
	flds	60(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstps	60(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_DOUBLE_$__INIT_ZERO$$LONGBOOL
_MATRIX_TMATRIX4_DOUBLE_$__INIT_ZERO$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$128,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4788
	jmp	Lj4789
Lj4788:
	jmp	Lj4778
Lj4789:
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$128,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
Lj4778:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_DOUBLE_$__INIT_IDENTITY$$LONGBOOL
_MATRIX_TMATRIX4_DOUBLE_$__INIT_IDENTITY$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$128,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4806
	jmp	Lj4807
Lj4806:
	jmp	Lj4796
Lj4807:
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$128,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-8(%ebp),%eax
	fld1
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpl	40(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpl	80(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpl	120(%eax)
Lj4796:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_DOUBLE_$__INIT$crc8842C2B4
_MATRIX_TMATRIX4_DOUBLE_$__INIT$crc8842C2B4:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$128,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4832
	jmp	Lj4833
Lj4832:
	jmp	Lj4822
Lj4833:
	movl	-8(%ebp),%edx
	movl	128(%ebp),%eax
	movl	%eax,(%edx)
	movl	132(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	120(%ebp),%eax
	movl	%eax,8(%edx)
	movl	124(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%edx
	movl	112(%ebp),%eax
	movl	%eax,16(%edx)
	movl	116(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%edx
	movl	104(%ebp),%eax
	movl	%eax,24(%edx)
	movl	108(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%edx
	movl	96(%ebp),%eax
	movl	%eax,32(%edx)
	movl	100(%ebp),%eax
	movl	%eax,36(%edx)
	movl	-8(%ebp),%edx
	movl	88(%ebp),%eax
	movl	%eax,40(%edx)
	movl	92(%ebp),%eax
	movl	%eax,44(%edx)
	movl	-8(%ebp),%edx
	movl	80(%ebp),%eax
	movl	%eax,48(%edx)
	movl	84(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-8(%ebp),%edx
	movl	72(%ebp),%eax
	movl	%eax,56(%edx)
	movl	76(%ebp),%eax
	movl	%eax,60(%edx)
	movl	-8(%ebp),%edx
	movl	64(%ebp),%eax
	movl	%eax,64(%edx)
	movl	68(%ebp),%eax
	movl	%eax,68(%edx)
	movl	-8(%ebp),%edx
	movl	56(%ebp),%eax
	movl	%eax,72(%edx)
	movl	60(%ebp),%eax
	movl	%eax,76(%edx)
	movl	-8(%ebp),%edx
	movl	48(%ebp),%eax
	movl	%eax,80(%edx)
	movl	52(%ebp),%eax
	movl	%eax,84(%edx)
	movl	-8(%ebp),%edx
	movl	40(%ebp),%eax
	movl	%eax,88(%edx)
	movl	44(%ebp),%eax
	movl	%eax,92(%edx)
	movl	-8(%ebp),%edx
	movl	32(%ebp),%eax
	movl	%eax,96(%edx)
	movl	36(%ebp),%eax
	movl	%eax,100(%edx)
	movl	-8(%ebp),%edx
	movl	24(%ebp),%eax
	movl	%eax,104(%edx)
	movl	28(%ebp),%eax
	movl	%eax,108(%edx)
	movl	-8(%ebp),%edx
	movl	16(%ebp),%eax
	movl	%eax,112(%edx)
	movl	20(%ebp),%eax
	movl	%eax,116(%edx)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,120(%edx)
	movl	12(%ebp),%eax
	movl	%eax,124(%edx)
Lj4822:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_DOUBLE_$__GET_COLUMN$BYTE$$TVECTOR4_DOUBLE
_MATRIX_TMATRIX4_DOUBLE_$__GET_COLUMN$BYTE$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	(%eax,%edx,8),%ecx
	movl	%ecx,(%ebx)
	movl	4(%eax,%edx,8),%eax
	movl	%eax,4(%ebx)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%ecx
	movl	-12(%ebp),%ebx
	movl	32(%eax,%ecx,8),%edx
	movl	%edx,8(%ebx)
	movl	36(%eax,%ecx,8),%eax
	movl	%eax,12(%ebx)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	64(%eax,%edx,8),%ecx
	movl	%ecx,16(%ebx)
	movl	68(%eax,%edx,8),%eax
	movl	%eax,20(%ebx)
	movl	-8(%ebp),%edx
	movzbl	-4(%ebp),%ecx
	movl	-12(%ebp),%ebx
	movl	96(%edx,%ecx,8),%eax
	movl	%eax,24(%ebx)
	movl	100(%edx,%ecx,8),%eax
	movl	%eax,28(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_DOUBLE_$__GET_ROW$BYTE$$TVECTOR4_DOUBLE
_MATRIX_TMATRIX4_DOUBLE_$__GET_ROW$BYTE$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movzbl	-4(%ebp),%eax
	shll	$5,%eax
	movl	-12(%ebp),%edi
	leal	(%edx,%eax),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_DOUBLE_$__SET_COLUMN$BYTE$TVECTOR4_DOUBLE
_MATRIX_TMATRIX4_DOUBLE_$__SET_COLUMN$BYTE$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%ecx
	movzbl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,(%ecx,%ebx,8)
	movl	4(%eax),%eax
	movl	%eax,4(%ecx,%ebx,8)
	movl	-12(%ebp),%ecx
	movzbl	-4(%ebp),%ebx
	movl	-8(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,32(%ecx,%ebx,8)
	movl	12(%edx),%eax
	movl	%eax,36(%ecx,%ebx,8)
	movl	-12(%ebp),%ecx
	movzbl	-4(%ebp),%ebx
	movl	-8(%ebp),%edx
	movl	16(%edx),%eax
	movl	%eax,64(%ecx,%ebx,8)
	movl	20(%edx),%eax
	movl	%eax,68(%ecx,%ebx,8)
	movl	-12(%ebp),%ecx
	movzbl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	%edx,96(%ecx,%ebx,8)
	movl	28(%eax),%eax
	movl	%eax,100(%ecx,%ebx,8)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_DOUBLE_$__SET_ROW$BYTE$TVECTOR4_DOUBLE
_MATRIX_TMATRIX4_DOUBLE_$__SET_ROW$BYTE$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%edx
	movzbl	-4(%ebp),%eax
	shll	$5,%eax
	movl	-8(%ebp),%esi
	leal	(%edx,%eax),%edi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_DOUBLE_$__TRANSPOSE$$TMATRIX4_DOUBLE
_MATRIX_TMATRIX4_DOUBLE_$__TRANSPOSE$$TMATRIX4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	32(%edx),%eax
	movl	%eax,8(%ecx)
	movl	36(%edx),%eax
	movl	%eax,12(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	64(%edx),%eax
	movl	%eax,16(%ecx)
	movl	68(%edx),%eax
	movl	%eax,20(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	96(%edx),%eax
	movl	%eax,24(%ecx)
	movl	100(%edx),%eax
	movl	%eax,28(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,32(%ecx)
	movl	12(%edx),%eax
	movl	%eax,36(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	40(%edx),%eax
	movl	%eax,40(%ecx)
	movl	44(%edx),%eax
	movl	%eax,44(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	72(%edx),%eax
	movl	%eax,48(%ecx)
	movl	76(%edx),%eax
	movl	%eax,52(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	104(%edx),%eax
	movl	%eax,56(%ecx)
	movl	108(%edx),%eax
	movl	%eax,60(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	16(%edx),%eax
	movl	%eax,64(%ecx)
	movl	20(%edx),%eax
	movl	%eax,68(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	48(%edx),%eax
	movl	%eax,72(%ecx)
	movl	52(%edx),%eax
	movl	%eax,76(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	80(%edx),%eax
	movl	%eax,80(%ecx)
	movl	84(%edx),%eax
	movl	%eax,84(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	112(%edx),%eax
	movl	%eax,88(%ecx)
	movl	116(%edx),%eax
	movl	%eax,92(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	24(%edx),%eax
	movl	%eax,96(%ecx)
	movl	28(%edx),%eax
	movl	%eax,100(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	56(%edx),%eax
	movl	%eax,104(%ecx)
	movl	60(%edx),%eax
	movl	%eax,108(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	88(%edx),%eax
	movl	%eax,112(%ecx)
	movl	92(%edx),%eax
	movl	%eax,116(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	120(%edx),%eax
	movl	%eax,120(%ecx)
	movl	124(%edx),%eax
	movl	%eax,124(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_DOUBLE_$__DETERMINANT$$DOUBLE
_MATRIX_TMATRIX4_DOUBLE_$__DETERMINANT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	32(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	120(%edx)
	fldl	80(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	112(%edx)
	fldl	88(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	48(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	32(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	120(%edx)
	fldl	72(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	104(%edx)
	fldl	88(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	56(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	32(%edx)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	112(%edx)
	fldl	72(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	104(%edx)
	fldl	80(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	48(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	120(%edx)
	fldl	64(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	96(%edx)
	fldl	88(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	56(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	112(%edx)
	fldl	64(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	96(%edx)
	fldl	80(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	56(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	48(%edx)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	104(%edx)
	fldl	64(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	96(%edx)
	fldl	72(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_DOUBLE_$__INVERSE$DOUBLE$$TMATRIX4_DOUBLE
_MATRIX_TMATRIX4_DOUBLE_$__INVERSE$DOUBLE$$TMATRIX4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fld1
	fldl	8(%ebp)
	fdivrp	%st,%st(1)
	fstpl	8(%ebp)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	120(%eax)
	fldl	80(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	112(%eax)
	fldl	88(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	40(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	104(%edx)
	fldl	88(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	120(%edx)
	fldl	72(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	48(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	112(%eax)
	fldl	72(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	104(%eax)
	fldl	80(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	56(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	120(%eax)
	fldl	16(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	112(%eax)
	fldl	24(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	72(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	104(%edx)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	120(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	80(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	112(%eax)
	fldl	8(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	104(%eax)
	fldl	16(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	88(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	56(%eax)
	fldl	16(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	48(%eax)
	fldl	24(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	104(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	56(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	112(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	48(%eax)
	fldl	8(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	120(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	80(%eax)
	fldl	56(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	88(%eax)
	fldl	48(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	8(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	88(%edx)
	fldl	40(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	72(%edx)
	fldl	56(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	16(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	72(%eax)
	fldl	48(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	80(%edx)
	fldl	40(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	24(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	120(%eax)
	fldl	64(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	96(%eax)
	fldl	88(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	48(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	96(%edx)
	fldl	80(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	112(%edx)
	fldl	64(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	56(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	112(%eax)
	fldl	88(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	120(%edx)
	fldl	80(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	32(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	32(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	120(%eax)
	fldl	(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	96(%eax)
	fldl	24(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	80(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	96(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	112(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	88(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	112(%eax)
	fldl	24(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	120(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	64(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	40(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	56(%eax)
	fldl	(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	32(%eax)
	fldl	24(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	112(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	32(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	48(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	120(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	48(%eax)
	fldl	24(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	56(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	96(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	48(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	64(%eax)
	fldl	56(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	88(%eax)
	fldl	32(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	16(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	80(%edx)
	fldl	32(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	64(%edx)
	fldl	48(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	24(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	88(%eax)
	fldl	48(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	80(%edx)
	fldl	56(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	56(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	104(%eax)
	fldl	64(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	96(%eax)
	fldl	72(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	56(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	120(%edx)
	fldl	72(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	104(%edx)
	fldl	88(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	32(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	96(%eax)
	fldl	88(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	120(%edx)
	fldl	64(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	40(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	64(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	104(%eax)
	fldl	(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	96(%eax)
	fldl	8(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	88(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	120(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	104(%edx)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	64(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	96(%eax)
	fldl	24(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	120(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	72(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	72(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	40(%eax)
	fldl	(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	32(%eax)
	fldl	8(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	120(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	56(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	96(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	32(%eax)
	fldl	24(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	56(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	104(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	80(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	64(%eax)
	fldl	40(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	72(%eax)
	fldl	32(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	24(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	72(%edx)
	fldl	56(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	88(%edx)
	fldl	40(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	88(%eax)
	fldl	32(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	64(%edx)
	fldl	56(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	8(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	88(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	104(%eax)
	fldl	80(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	112(%eax)
	fldl	72(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	32(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	112(%edx)
	fldl	64(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	96(%edx)
	fldl	80(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	40(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	96(%eax)
	fldl	72(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	104(%edx)
	fldl	64(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	48(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	96(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	104(%eax)
	fldl	16(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	112(%eax)
	fldl	8(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	64(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	112(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	96(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	72(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	96(%eax)
	fldl	8(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	104(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	80(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	104(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	40(%eax)
	fldl	16(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	48(%eax)
	fldl	8(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	96(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	48(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	32(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	104(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	32(%eax)
	fldl	8(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	112(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	112(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	80(%eax)
	fldl	40(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	72(%eax)
	fldl	48(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	64(%edx)
	fldl	48(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	80(%edx)
	fldl	32(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	8(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	72(%eax)
	fldl	32(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	64(%edx)
	fldl	40(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldl	16(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	120(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_SINGLE$$TMATRIX4_DOUBLE
_MATRIX_assign$TMATRIX2_SINGLE$$TMATRIX4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	24(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpl	32(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	12(%edx)
	fstpl	40(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	48(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	56(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	64(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	72(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	80(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	88(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	96(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	104(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	112(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	120(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_DOUBLE$$TMATRIX4_DOUBLE
_MATRIX_assign$TMATRIX2_DOUBLE$$TMATRIX4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,8(%ecx)
	movl	12(%edx),%eax
	movl	%eax,12(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	24(%eax)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	16(%edx),%eax
	movl	%eax,32(%ecx)
	movl	20(%edx),%eax
	movl	%eax,36(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	24(%edx),%eax
	movl	%eax,40(%ecx)
	movl	28(%edx),%eax
	movl	%eax,44(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpl	48(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	56(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	64(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	72(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	80(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	88(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	96(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	104(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	112(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	120(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_EXTENDED$$TMATRIX4_DOUBLE
_MATRIX_assign$TMATRIX2_EXTENDED$$TMATRIX4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	24(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstpl	32(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	30(%edx)
	fstpl	40(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	48(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	56(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	64(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	72(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	80(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	88(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	96(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	104(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	112(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	120(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_SINGLE$$TMATRIX4_DOUBLE
_MATRIX_assign$TMATRIX3_SINGLE$$TMATRIX4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	4(%eax)
	fstpl	8(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	24(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	12(%edx)
	fstpl	32(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	16(%edx)
	fstpl	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	fstpl	48(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	56(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	24(%eax)
	fstpl	64(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	28(%edx)
	fstpl	72(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	32(%edx)
	fstpl	80(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	88(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	96(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	104(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	112(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	120(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_DOUBLE$$TMATRIX4_DOUBLE
_MATRIX_assign$TMATRIX3_DOUBLE$$TMATRIX4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,8(%ecx)
	movl	12(%eax),%eax
	movl	%eax,12(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	16(%edx),%eax
	movl	%eax,16(%ecx)
	movl	20(%edx),%eax
	movl	%eax,20(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpl	24(%eax)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	%edx,32(%ecx)
	movl	28(%eax),%eax
	movl	%eax,36(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	32(%eax),%edx
	movl	%edx,40(%ecx)
	movl	36(%eax),%eax
	movl	%eax,44(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	40(%eax),%edx
	movl	%edx,48(%ecx)
	movl	44(%eax),%eax
	movl	%eax,52(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpl	56(%eax)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	%edx,64(%ecx)
	movl	52(%eax),%eax
	movl	%eax,68(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	56(%edx),%eax
	movl	%eax,72(%ecx)
	movl	60(%edx),%eax
	movl	%eax,76(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	64(%edx),%eax
	movl	%eax,80(%ecx)
	movl	68(%edx),%eax
	movl	%eax,84(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpl	88(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	96(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	104(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	112(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	120(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_EXTENDED$$TMATRIX4_DOUBLE
_MATRIX_assign$TMATRIX3_EXTENDED$$TMATRIX4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	10(%eax)
	fstpl	8(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	24(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	30(%edx)
	fstpl	32(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	40(%edx)
	fstpl	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fstpl	48(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	56(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	60(%eax)
	fstpl	64(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	70(%edx)
	fstpl	72(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	80(%edx)
	fstpl	80(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	88(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	96(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	104(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	112(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpl	120(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_SINGLE$$TMATRIX4_DOUBLE
_MATRIX_assign$TMATRIX4_SINGLE$$TMATRIX4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	12(%edx)
	fstpl	24(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	16(%edx)
	fstpl	32(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	fstpl	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	24(%edx)
	fstpl	48(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	28(%edx)
	fstpl	56(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	32(%edx)
	fstpl	64(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	36(%edx)
	fstpl	72(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	40(%edx)
	fstpl	80(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	44(%edx)
	fstpl	88(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	48(%edx)
	fstpl	96(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	52(%edx)
	fstpl	104(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	56(%edx)
	fstpl	112(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	60(%edx)
	fstpl	120(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_EXTENDED$$TMATRIX4_DOUBLE
_MATRIX_assign$TMATRIX4_EXTENDED$$TMATRIX4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	(%edx)
	fstpl	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	10(%edx)
	fstpl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	20(%edx)
	fstpl	16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	30(%edx)
	fstpl	24(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	40(%edx)
	fstpl	32(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fstpl	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	60(%edx)
	fstpl	48(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	70(%edx)
	fstpl	56(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	80(%edx)
	fstpl	64(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	90(%edx)
	fstpl	72(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	100(%edx)
	fstpl	80(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	110(%edx)
	fstpl	88(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	120(%edx)
	fstpl	96(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	130(%edx)
	fstpl	104(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	140(%edx)
	fstpl	112(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	150(%edx)
	fstpl	120(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TMATRIX4_DOUBLE$TMATRIX4_DOUBLE$$TMATRIX4_DOUBLE
_MATRIX_plus$TMATRIX4_DOUBLE$TMATRIX4_DOUBLE$$TMATRIX4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	(%eax)
	fldl	(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	8(%eax)
	fldl	8(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	16(%eax)
	fldl	16(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	24(%eax)
	fldl	24(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	24(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	32(%eax)
	fldl	32(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	32(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	40(%eax)
	fldl	40(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	40(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	48(%edx)
	fldl	48(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	48(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	56(%edx)
	fldl	56(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	56(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	64(%edx)
	fldl	64(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	64(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	72(%edx)
	fldl	72(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	72(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	80(%edx)
	fldl	80(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	80(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	88(%edx)
	fldl	88(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	88(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	96(%edx)
	fldl	96(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	96(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	104(%edx)
	fldl	104(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	104(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	112(%edx)
	fldl	112(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	112(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	120(%edx)
	fldl	120(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	120(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX4_DOUBLE$TMATRIX4_DOUBLE$$TMATRIX4_DOUBLE
_MATRIX_minus$TMATRIX4_DOUBLE$TMATRIX4_DOUBLE$$TMATRIX4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	(%eax)
	fldl	(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	8(%eax)
	fldl	8(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	16(%eax)
	fldl	16(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	24(%eax)
	fldl	24(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	24(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	32(%eax)
	fldl	32(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	32(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldl	40(%eax)
	fldl	40(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	40(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	48(%edx)
	fldl	48(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	48(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	56(%edx)
	fldl	56(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	56(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	64(%edx)
	fldl	64(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	64(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	72(%edx)
	fldl	72(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	72(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	80(%edx)
	fldl	80(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	80(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	88(%edx)
	fldl	88(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	88(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	96(%edx)
	fldl	96(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	96(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	104(%edx)
	fldl	104(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	104(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	112(%edx)
	fldl	112(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	112(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	120(%edx)
	fldl	120(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	120(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX4_DOUBLE$$TMATRIX4_DOUBLE
_MATRIX_minus$TMATRIX4_DOUBLE$$TMATRIX4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	16(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	24(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	movl	-4(%ebp),%eax
	fldl	32(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	32(%eax)
	movl	-4(%ebp),%eax
	fldl	40(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	40(%eax)
	movl	-4(%ebp),%eax
	fldl	48(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	48(%eax)
	movl	-4(%ebp),%eax
	fldl	56(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	56(%eax)
	movl	-4(%ebp),%eax
	fldl	64(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	64(%eax)
	movl	-4(%ebp),%eax
	fldl	72(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	72(%eax)
	movl	-4(%ebp),%eax
	fldl	80(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	80(%eax)
	movl	-4(%ebp),%eax
	fldl	88(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	88(%eax)
	movl	-4(%ebp),%eax
	fldl	96(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	96(%eax)
	movl	-4(%ebp),%eax
	fldl	104(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	104(%eax)
	movl	-4(%ebp),%eax
	fldl	112(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	112(%eax)
	movl	-4(%ebp),%eax
	fldl	120(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpl	120(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX4_DOUBLE$TMATRIX4_DOUBLE$$TMATRIX4_DOUBLE
_MATRIX_star$TMATRIX4_DOUBLE$TMATRIX4_DOUBLE$$TMATRIX4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-45(%ebp)
	decb	-45(%ebp)
	.align 2
Lj5346:
	incb	-45(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-45(%ebp),%eax
	shll	$5,%eax
	leal	-44(%ebp),%edi
	leal	(%edx,%eax),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	fldl	(%eax)
	fldl	-44(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	32(%eax)
	fldl	-36(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	64(%eax)
	fldl	-28(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	96(%eax)
	fldl	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-45(%ebp),%eax
	shll	$5,%eax
	fstpl	(%edx,%eax)
	movl	-8(%ebp),%eax
	fldl	8(%eax)
	fldl	-44(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	40(%eax)
	fldl	-36(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	72(%eax)
	fldl	-28(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	104(%eax)
	fldl	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-45(%ebp),%eax
	shll	$5,%eax
	fstpl	8(%edx,%eax)
	movl	-8(%ebp),%eax
	fldl	16(%eax)
	fldl	-44(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	48(%eax)
	fldl	-36(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	80(%eax)
	fldl	-28(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	112(%eax)
	fldl	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-45(%ebp),%eax
	shll	$5,%eax
	fstpl	16(%edx,%eax)
	movl	-8(%ebp),%eax
	fldl	24(%eax)
	fldl	-44(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	56(%eax)
	fldl	-36(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	88(%eax)
	fldl	-28(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldl	120(%eax)
	fldl	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-45(%ebp),%eax
	shll	$5,%eax
	fstpl	24(%edx,%eax)
	cmpb	$3,-45(%ebp)
	jb	Lj5346
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX4_DOUBLE$TVECTOR4_DOUBLE$$TVECTOR4_DOUBLE
_MATRIX_star$TMATRIX4_DOUBLE$TVECTOR4_DOUBLE$$TVECTOR4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	24(%edx)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	32(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	40(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	48(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	24(%edx)
	fldl	56(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	64(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	72(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	80(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	24(%edx)
	fldl	88(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	96(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	8(%edx)
	fldl	104(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	16(%edx)
	fldl	112(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	24(%edx)
	fldl	120(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TMATRIX4_DOUBLE$DOUBLE$$TMATRIX4_DOUBLE
_MATRIX_plus$TMATRIX4_DOUBLE$DOUBLE$$TMATRIX4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	24(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	32(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	32(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	40(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	40(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	48(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	48(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	56(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	56(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	64(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	64(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	72(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	72(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	80(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	80(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	88(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	88(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	96(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	96(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	104(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	104(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	112(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	112(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	120(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	120(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX4_DOUBLE$DOUBLE$$TMATRIX4_DOUBLE
_MATRIX_minus$TMATRIX4_DOUBLE$DOUBLE$$TMATRIX4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	24(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	32(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	32(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	40(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	40(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	48(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	48(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	56(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	56(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	64(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	64(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	72(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	72(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	80(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	80(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	88(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	88(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	96(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	96(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	104(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	104(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	112(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	112(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	120(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	120(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX4_DOUBLE$DOUBLE$$TMATRIX4_DOUBLE
_MATRIX_star$TMATRIX4_DOUBLE$DOUBLE$$TMATRIX4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	24(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	32(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	32(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	40(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	40(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	48(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	48(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	56(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	56(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	64(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	64(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	72(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	72(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	80(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	80(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	88(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	88(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	96(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	96(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	104(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	104(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	112(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	112(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	120(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	120(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TMATRIX4_DOUBLE$DOUBLE$$TMATRIX4_DOUBLE
_MATRIX_slash$TMATRIX4_DOUBLE$DOUBLE$$TMATRIX4_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	8(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	24(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	24(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	32(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	32(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	40(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	40(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	48(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	48(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	56(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	56(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	64(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	64(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	72(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	72(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	80(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	80(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	88(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	88(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	96(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	96(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	104(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	104(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	112(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	112(%eax)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	120(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpl	120(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_EXTENDED_$__INIT_ZERO$$LONGBOOL
_MATRIX_TMATRIX4_EXTENDED_$__INIT_ZERO$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$160,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5513
	jmp	Lj5514
Lj5513:
	jmp	Lj5503
Lj5514:
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$160,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
Lj5503:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_EXTENDED_$__INIT_IDENTITY$$LONGBOOL
_MATRIX_TMATRIX4_EXTENDED_$__INIT_IDENTITY$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$160,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5531
	jmp	Lj5532
Lj5531:
	jmp	Lj5521
Lj5532:
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$160,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-8(%ebp),%eax
	fld1
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpt	50(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpt	100(%eax)
	movl	-8(%ebp),%eax
	fld1
	fstpt	150(%eax)
Lj5521:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_EXTENDED_$__INIT$crc4A74245E
_MATRIX_TMATRIX4_EXTENDED_$__INIT$crc4A74245E:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$160,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5557
	jmp	Lj5558
Lj5557:
	jmp	Lj5547
Lj5558:
	movl	-8(%ebp),%edx
	movl	188(%ebp),%eax
	movl	%eax,(%edx)
	movl	192(%ebp),%eax
	movl	%eax,4(%edx)
	movw	196(%ebp),%ax
	movw	%ax,8(%edx)
	movl	-8(%ebp),%edx
	movl	176(%ebp),%eax
	movl	%eax,10(%edx)
	movl	180(%ebp),%eax
	movl	%eax,14(%edx)
	movw	184(%ebp),%ax
	movw	%ax,18(%edx)
	movl	-8(%ebp),%edx
	movl	164(%ebp),%eax
	movl	%eax,20(%edx)
	movl	168(%ebp),%eax
	movl	%eax,24(%edx)
	movw	172(%ebp),%ax
	movw	%ax,28(%edx)
	movl	-8(%ebp),%edx
	movl	152(%ebp),%eax
	movl	%eax,30(%edx)
	movl	156(%ebp),%eax
	movl	%eax,34(%edx)
	movw	160(%ebp),%ax
	movw	%ax,38(%edx)
	movl	-8(%ebp),%edx
	movl	140(%ebp),%eax
	movl	%eax,40(%edx)
	movl	144(%ebp),%eax
	movl	%eax,44(%edx)
	movw	148(%ebp),%ax
	movw	%ax,48(%edx)
	movl	-8(%ebp),%edx
	movl	128(%ebp),%eax
	movl	%eax,50(%edx)
	movl	132(%ebp),%eax
	movl	%eax,54(%edx)
	movw	136(%ebp),%ax
	movw	%ax,58(%edx)
	movl	-8(%ebp),%edx
	movl	116(%ebp),%eax
	movl	%eax,60(%edx)
	movl	120(%ebp),%eax
	movl	%eax,64(%edx)
	movw	124(%ebp),%ax
	movw	%ax,68(%edx)
	movl	-8(%ebp),%edx
	movl	104(%ebp),%eax
	movl	%eax,70(%edx)
	movl	108(%ebp),%eax
	movl	%eax,74(%edx)
	movw	112(%ebp),%ax
	movw	%ax,78(%edx)
	movl	-8(%ebp),%edx
	movl	92(%ebp),%eax
	movl	%eax,80(%edx)
	movl	96(%ebp),%eax
	movl	%eax,84(%edx)
	movw	100(%ebp),%ax
	movw	%ax,88(%edx)
	movl	-8(%ebp),%edx
	movl	80(%ebp),%eax
	movl	%eax,90(%edx)
	movl	84(%ebp),%eax
	movl	%eax,94(%edx)
	movw	88(%ebp),%ax
	movw	%ax,98(%edx)
	movl	-8(%ebp),%edx
	movl	68(%ebp),%eax
	movl	%eax,100(%edx)
	movl	72(%ebp),%eax
	movl	%eax,104(%edx)
	movw	76(%ebp),%ax
	movw	%ax,108(%edx)
	movl	-8(%ebp),%edx
	movl	56(%ebp),%eax
	movl	%eax,110(%edx)
	movl	60(%ebp),%eax
	movl	%eax,114(%edx)
	movw	64(%ebp),%ax
	movw	%ax,118(%edx)
	movl	-8(%ebp),%edx
	movl	44(%ebp),%eax
	movl	%eax,120(%edx)
	movl	48(%ebp),%eax
	movl	%eax,124(%edx)
	movw	52(%ebp),%ax
	movw	%ax,128(%edx)
	movl	-8(%ebp),%edx
	movl	32(%ebp),%eax
	movl	%eax,130(%edx)
	movl	36(%ebp),%eax
	movl	%eax,134(%edx)
	movw	40(%ebp),%ax
	movw	%ax,138(%edx)
	movl	-8(%ebp),%edx
	movl	20(%ebp),%eax
	movl	%eax,140(%edx)
	movl	24(%ebp),%eax
	movl	%eax,144(%edx)
	movw	28(%ebp),%ax
	movw	%ax,148(%edx)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,150(%edx)
	movl	12(%ebp),%eax
	movl	%eax,154(%edx)
	movw	16(%ebp),%ax
	movw	%ax,158(%edx)
Lj5547:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_EXTENDED_$__GET_COLUMN$BYTE$$TVECTOR4_EXTENDED
_MATRIX_TMATRIX4_EXTENDED_$__GET_COLUMN$BYTE$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%ecx
	movzbl	-4(%ebp),%eax
	imull	$10,%eax
	movl	-12(%ebp),%ebx
	movl	(%ecx,%eax),%edx
	movl	%edx,(%ebx)
	movl	4(%ecx,%eax),%edx
	movl	%edx,4(%ebx)
	movw	8(%ecx,%eax),%ax
	movw	%ax,8(%ebx)
	movl	-8(%ebp),%ecx
	movzbl	-4(%ebp),%eax
	imull	$10,%eax
	movl	-12(%ebp),%ebx
	movl	40(%ecx,%eax),%edx
	movl	%edx,10(%ebx)
	movl	44(%ecx,%eax),%edx
	movl	%edx,14(%ebx)
	movw	48(%ecx,%eax),%ax
	movw	%ax,18(%ebx)
	movl	-8(%ebp),%ecx
	movzbl	-4(%ebp),%eax
	imull	$10,%eax
	movl	-12(%ebp),%ebx
	movl	80(%ecx,%eax),%edx
	movl	%edx,20(%ebx)
	movl	84(%ecx,%eax),%edx
	movl	%edx,24(%ebx)
	movw	88(%ecx,%eax),%ax
	movw	%ax,28(%ebx)
	movl	-8(%ebp),%ecx
	movzbl	-4(%ebp),%eax
	imull	$10,%eax
	movl	-12(%ebp),%ebx
	movl	120(%ecx,%eax),%edx
	movl	%edx,30(%ebx)
	movl	124(%ecx,%eax),%edx
	movl	%edx,34(%ebx)
	movw	128(%ecx,%eax),%ax
	movw	%ax,38(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_EXTENDED_$__GET_ROW$BYTE$$TVECTOR4_EXTENDED
_MATRIX_TMATRIX4_EXTENDED_$__GET_ROW$BYTE$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movzbl	-4(%ebp),%eax
	imull	$40,%eax
	movl	-12(%ebp),%edi
	leal	(%edx,%eax),%esi
	cld
	movl	$10,%ecx
	rep
	movsl
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_EXTENDED_$__SET_COLUMN$BYTE$TVECTOR4_EXTENDED
_MATRIX_TMATRIX4_EXTENDED_$__SET_COLUMN$BYTE$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%ecx
	movzbl	-4(%ebp),%eax
	imull	$10,%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%edx
	movl	%edx,(%ecx,%eax)
	movl	4(%ebx),%edx
	movl	%edx,4(%ecx,%eax)
	movw	8(%ebx),%dx
	movw	%dx,8(%ecx,%eax)
	movl	-12(%ebp),%ecx
	movzbl	-4(%ebp),%eax
	imull	$10,%eax
	movl	-8(%ebp),%ebx
	movl	10(%ebx),%edx
	movl	%edx,40(%ecx,%eax)
	movl	14(%ebx),%edx
	movl	%edx,44(%ecx,%eax)
	movw	18(%ebx),%dx
	movw	%dx,48(%ecx,%eax)
	movl	-12(%ebp),%ecx
	movzbl	-4(%ebp),%eax
	imull	$10,%eax
	movl	-8(%ebp),%ebx
	movl	20(%ebx),%edx
	movl	%edx,80(%ecx,%eax)
	movl	24(%ebx),%edx
	movl	%edx,84(%ecx,%eax)
	movw	28(%ebx),%dx
	movw	%dx,88(%ecx,%eax)
	movl	-12(%ebp),%ecx
	movzbl	-4(%ebp),%eax
	imull	$10,%eax
	movl	-8(%ebp),%ebx
	movl	30(%ebx),%edx
	movl	%edx,120(%ecx,%eax)
	movl	34(%ebx),%edx
	movl	%edx,124(%ecx,%eax)
	movw	38(%ebx),%dx
	movw	%dx,128(%ecx,%eax)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_EXTENDED_$__SET_ROW$BYTE$TVECTOR4_EXTENDED
_MATRIX_TMATRIX4_EXTENDED_$__SET_ROW$BYTE$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%edx
	movzbl	-4(%ebp),%eax
	imull	$40,%eax
	movl	-8(%ebp),%esi
	leal	(%edx,%eax),%edi
	cld
	movl	$10,%ecx
	rep
	movsl
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_EXTENDED_$__TRANSPOSE$$TMATRIX4_EXTENDED
_MATRIX_TMATRIX4_EXTENDED_$__TRANSPOSE$$TMATRIX4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movw	8(%edx),%ax
	movw	%ax,8(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	40(%edx),%eax
	movl	%eax,10(%ecx)
	movl	44(%edx),%eax
	movl	%eax,14(%ecx)
	movw	48(%edx),%ax
	movw	%ax,18(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	80(%edx),%eax
	movl	%eax,20(%ecx)
	movl	84(%edx),%eax
	movl	%eax,24(%ecx)
	movw	88(%edx),%ax
	movw	%ax,28(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	120(%edx),%eax
	movl	%eax,30(%ecx)
	movl	124(%edx),%eax
	movl	%eax,34(%ecx)
	movw	128(%edx),%ax
	movw	%ax,38(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	10(%edx),%eax
	movl	%eax,40(%ecx)
	movl	14(%edx),%eax
	movl	%eax,44(%ecx)
	movw	18(%edx),%ax
	movw	%ax,48(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	50(%edx),%eax
	movl	%eax,50(%ecx)
	movl	54(%edx),%eax
	movl	%eax,54(%ecx)
	movw	58(%edx),%ax
	movw	%ax,58(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	90(%edx),%eax
	movl	%eax,60(%ecx)
	movl	94(%edx),%eax
	movl	%eax,64(%ecx)
	movw	98(%edx),%ax
	movw	%ax,68(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	130(%edx),%eax
	movl	%eax,70(%ecx)
	movl	134(%edx),%eax
	movl	%eax,74(%ecx)
	movw	138(%edx),%ax
	movw	%ax,78(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	20(%edx),%eax
	movl	%eax,80(%ecx)
	movl	24(%edx),%eax
	movl	%eax,84(%ecx)
	movw	28(%edx),%ax
	movw	%ax,88(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	60(%edx),%eax
	movl	%eax,90(%ecx)
	movl	64(%edx),%eax
	movl	%eax,94(%ecx)
	movw	68(%edx),%ax
	movw	%ax,98(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	100(%edx),%eax
	movl	%eax,100(%ecx)
	movl	104(%edx),%eax
	movl	%eax,104(%ecx)
	movw	108(%edx),%ax
	movw	%ax,108(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	140(%edx),%eax
	movl	%eax,110(%ecx)
	movl	144(%edx),%eax
	movl	%eax,114(%ecx)
	movw	148(%edx),%ax
	movw	%ax,118(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	30(%edx),%eax
	movl	%eax,120(%ecx)
	movl	34(%edx),%eax
	movl	%eax,124(%ecx)
	movw	38(%edx),%ax
	movw	%ax,128(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	70(%edx),%eax
	movl	%eax,130(%ecx)
	movl	74(%edx),%eax
	movl	%eax,134(%ecx)
	movw	78(%edx),%ax
	movw	%ax,138(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	110(%edx),%eax
	movl	%eax,140(%ecx)
	movl	114(%edx),%eax
	movl	%eax,144(%ecx)
	movw	118(%edx),%ax
	movw	%ax,148(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	150(%edx),%eax
	movl	%eax,150(%ecx)
	movl	154(%edx),%eax
	movl	%eax,154(%ecx)
	movw	158(%edx),%ax
	movw	%ax,158(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_EXTENDED_$__DETERMINANT$$EXTENDED
_MATRIX_TMATRIX4_EXTENDED_$__DETERMINANT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	40(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	150(%edx)
	fldt	100(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	140(%edx)
	fldt	110(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	60(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	40(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	150(%edx)
	fldt	90(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	130(%edx)
	fldt	110(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	70(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	40(%edx)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	140(%edx)
	fldt	90(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	130(%edx)
	fldt	100(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	60(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	150(%edx)
	fldt	80(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	120(%edx)
	fldt	110(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	70(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	140(%edx)
	fldt	80(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	120(%edx)
	fldt	100(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	70(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	60(%edx)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	130(%edx)
	fldt	80(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	120(%edx)
	fldt	90(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_TMATRIX4_EXTENDED_$__INVERSE$EXTENDED$$TMATRIX4_EXTENDED
_MATRIX_TMATRIX4_EXTENDED_$__INVERSE$EXTENDED$$TMATRIX4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fld1
	fldt	8(%ebp)
	fdivrp	%st,%st(1)
	fstpt	8(%ebp)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	150(%eax)
	fldt	100(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	140(%eax)
	fldt	110(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	50(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	130(%edx)
	fldt	110(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	150(%edx)
	fldt	90(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	60(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	140(%eax)
	fldt	90(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	130(%eax)
	fldt	100(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	70(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	150(%eax)
	fldt	20(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	140(%eax)
	fldt	30(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	90(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	130(%edx)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	150(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	100(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	140(%eax)
	fldt	10(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	130(%eax)
	fldt	20(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	110(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	70(%eax)
	fldt	20(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	60(%eax)
	fldt	30(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	130(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	70(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	140(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	60(%eax)
	fldt	10(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	150(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	100(%eax)
	fldt	70(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	110(%eax)
	fldt	60(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	10(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	110(%edx)
	fldt	50(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	90(%edx)
	fldt	70(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	20(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	90(%eax)
	fldt	60(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	100(%edx)
	fldt	50(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	30(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	150(%eax)
	fldt	80(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	120(%eax)
	fldt	110(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	60(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	120(%edx)
	fldt	100(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	140(%edx)
	fldt	80(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	70(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	140(%eax)
	fldt	110(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	150(%edx)
	fldt	100(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	40(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	40(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	150(%eax)
	fldt	(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	120(%eax)
	fldt	30(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	100(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	120(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	140(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	110(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	140(%eax)
	fldt	30(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	150(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	80(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	50(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	70(%eax)
	fldt	(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	40(%eax)
	fldt	30(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	140(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	40(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	60(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	150(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	60(%eax)
	fldt	30(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	70(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	120(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	60(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	80(%eax)
	fldt	70(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	110(%eax)
	fldt	40(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	20(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	100(%edx)
	fldt	40(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	80(%edx)
	fldt	60(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	30(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	110(%eax)
	fldt	60(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	100(%edx)
	fldt	70(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	70(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	130(%eax)
	fldt	80(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	120(%eax)
	fldt	90(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	70(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	150(%edx)
	fldt	90(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	130(%edx)
	fldt	110(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	40(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	120(%eax)
	fldt	110(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	150(%edx)
	fldt	80(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	50(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	80(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	130(%eax)
	fldt	(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	120(%eax)
	fldt	10(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	110(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	150(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	130(%edx)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	80(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	120(%eax)
	fldt	30(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	150(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	90(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	90(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	50(%eax)
	fldt	(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	40(%eax)
	fldt	10(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	150(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	70(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	120(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	40(%eax)
	fldt	30(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	70(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	130(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	100(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	80(%eax)
	fldt	50(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	90(%eax)
	fldt	40(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	30(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	90(%edx)
	fldt	70(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	110(%edx)
	fldt	50(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	110(%eax)
	fldt	40(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	80(%edx)
	fldt	70(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	10(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	110(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	130(%eax)
	fldt	100(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	140(%eax)
	fldt	90(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	40(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	140(%edx)
	fldt	80(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	120(%edx)
	fldt	100(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	50(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	120(%eax)
	fldt	90(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	130(%edx)
	fldt	80(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	60(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	120(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	130(%eax)
	fldt	20(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	140(%eax)
	fldt	10(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	80(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	140(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	120(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	90(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	120(%eax)
	fldt	10(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	130(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	100(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	130(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	50(%eax)
	fldt	20(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	60(%eax)
	fldt	10(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	120(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	60(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	40(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	130(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	40(%eax)
	fldt	10(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	50(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	140(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	140(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	100(%eax)
	fldt	50(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	90(%eax)
	fldt	60(%edx)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	(%ecx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	80(%edx)
	fldt	60(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	100(%edx)
	fldt	40(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	10(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	fldt	90(%eax)
	fldt	40(%edx)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldt	80(%edx)
	fldt	50(%eax)
	fmulp	%st,%st(1)
	fsubrp	%st,%st(1)
	fldt	20(%ecx)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	150(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_SINGLE$$TMATRIX4_EXTENDED
_MATRIX_assign$TMATRIX2_SINGLE$$TMATRIX4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	30(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpt	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	12(%edx)
	fstpt	50(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	60(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	70(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	80(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	90(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	100(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	110(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	120(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	130(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	140(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	150(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_DOUBLE$$TMATRIX4_EXTENDED
_MATRIX_assign$TMATRIX2_DOUBLE$$TMATRIX4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	30(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstpt	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	24(%edx)
	fstpt	50(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	60(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	70(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	80(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	90(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	100(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	110(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	120(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	130(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	140(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	150(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX2_EXTENDED$$TMATRIX4_EXTENDED
_MATRIX_assign$TMATRIX2_EXTENDED$$TMATRIX4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movw	8(%edx),%ax
	movw	%ax,8(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	10(%edx),%eax
	movl	%eax,10(%ecx)
	movl	14(%edx),%eax
	movl	%eax,14(%ecx)
	movw	18(%edx),%ax
	movw	%ax,18(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	30(%eax)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	20(%edx),%eax
	movl	%eax,40(%ecx)
	movl	24(%edx),%eax
	movl	%eax,44(%ecx)
	movw	28(%edx),%ax
	movw	%ax,48(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	30(%edx),%eax
	movl	%eax,50(%ecx)
	movl	34(%edx),%eax
	movl	%eax,54(%ecx)
	movw	38(%edx),%ax
	movw	%ax,58(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpt	60(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	70(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	80(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	90(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	100(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	110(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	120(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	130(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	140(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	150(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_SINGLE$$TMATRIX4_EXTENDED
_MATRIX_assign$TMATRIX3_SINGLE$$TMATRIX4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	4(%eax)
	fstpt	10(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	30(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	12(%edx)
	fstpt	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	16(%edx)
	fstpt	50(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	fstpt	60(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	70(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	flds	24(%eax)
	fstpt	80(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	28(%edx)
	fstpt	90(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	32(%edx)
	fstpt	100(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	110(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	120(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	130(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	140(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	150(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_DOUBLE$$TMATRIX4_EXTENDED
_MATRIX_assign$TMATRIX3_DOUBLE$$TMATRIX4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fstpt	10(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	30(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	24(%edx)
	fstpt	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	32(%edx)
	fstpt	50(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fstpt	60(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	70(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	fldl	48(%eax)
	fstpt	80(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	56(%edx)
	fstpt	90(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	64(%edx)
	fstpt	100(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	110(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	120(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	130(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	140(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	150(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX3_EXTENDED$$TMATRIX4_EXTENDED
_MATRIX_assign$TMATRIX3_EXTENDED$$TMATRIX4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movw	8(%edx),%ax
	movw	%ax,8(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	10(%edx),%eax
	movl	%eax,10(%ecx)
	movl	14(%edx),%eax
	movl	%eax,14(%ecx)
	movw	18(%edx),%ax
	movw	%ax,18(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	20(%edx),%eax
	movl	%eax,20(%ecx)
	movl	24(%edx),%eax
	movl	%eax,24(%ecx)
	movw	28(%edx),%ax
	movw	%ax,28(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpt	30(%eax)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	30(%edx),%eax
	movl	%eax,40(%ecx)
	movl	34(%edx),%eax
	movl	%eax,44(%ecx)
	movw	38(%edx),%ax
	movw	%ax,48(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	40(%edx),%eax
	movl	%eax,50(%ecx)
	movl	44(%edx),%eax
	movl	%eax,54(%ecx)
	movw	48(%edx),%ax
	movw	%ax,58(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	50(%edx),%eax
	movl	%eax,60(%ecx)
	movl	54(%edx),%eax
	movl	%eax,64(%ecx)
	movw	58(%edx),%ax
	movw	%ax,68(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpt	70(%eax)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	60(%edx),%eax
	movl	%eax,80(%ecx)
	movl	64(%edx),%eax
	movl	%eax,84(%ecx)
	movw	68(%edx),%ax
	movw	%ax,88(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	70(%edx),%eax
	movl	%eax,90(%ecx)
	movl	74(%edx),%eax
	movl	%eax,94(%ecx)
	movw	78(%edx),%ax
	movw	%ax,98(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	80(%edx),%eax
	movl	%eax,100(%ecx)
	movl	84(%edx),%eax
	movl	%eax,104(%ecx)
	movw	88(%edx),%ax
	movw	%ax,108(%ecx)
	movl	-8(%ebp),%eax
	fldz
	fstpt	110(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	120(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	130(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	140(%eax)
	movl	-8(%ebp),%eax
	fldz
	fstpt	150(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_SINGLE$$TMATRIX4_EXTENDED
_MATRIX_assign$TMATRIX4_SINGLE$$TMATRIX4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	4(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	8(%edx)
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	12(%edx)
	fstpt	30(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	16(%edx)
	fstpt	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	20(%edx)
	fstpt	50(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	24(%edx)
	fstpt	60(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	28(%edx)
	fstpt	70(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	32(%edx)
	fstpt	80(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	36(%edx)
	fstpt	90(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	40(%edx)
	fstpt	100(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	44(%edx)
	fstpt	110(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	48(%edx)
	fstpt	120(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	52(%edx)
	fstpt	130(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	56(%edx)
	fstpt	140(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	flds	60(%edx)
	fstpt	150(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_assign$TMATRIX4_DOUBLE$$TMATRIX4_EXTENDED
_MATRIX_assign$TMATRIX4_DOUBLE$$TMATRIX4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fstpt	(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	8(%edx)
	fstpt	10(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	16(%edx)
	fstpt	20(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	24(%edx)
	fstpt	30(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	32(%edx)
	fstpt	40(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	40(%edx)
	fstpt	50(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	48(%edx)
	fstpt	60(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	56(%edx)
	fstpt	70(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	64(%edx)
	fstpt	80(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	72(%edx)
	fstpt	90(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	80(%edx)
	fstpt	100(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	88(%edx)
	fstpt	110(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	96(%edx)
	fstpt	120(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	104(%edx)
	fstpt	130(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	112(%edx)
	fstpt	140(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	120(%edx)
	fstpt	150(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TMATRIX4_EXTENDED$TMATRIX4_EXTENDED$$TMATRIX4_EXTENDED
_MATRIX_plus$TMATRIX4_EXTENDED$TMATRIX4_EXTENDED$$TMATRIX4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	(%eax)
	fldt	(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	10(%eax)
	fldt	10(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	20(%eax)
	fldt	20(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	30(%eax)
	fldt	30(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	30(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	40(%eax)
	fldt	40(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	40(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	50(%eax)
	fldt	50(%edx)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	50(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	60(%edx)
	fldt	60(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	60(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	70(%edx)
	fldt	70(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	70(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	80(%edx)
	fldt	80(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	80(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	90(%edx)
	fldt	90(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	90(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	100(%edx)
	fldt	100(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	100(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	110(%edx)
	fldt	110(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	110(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	120(%edx)
	fldt	120(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	120(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	130(%edx)
	fldt	130(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	130(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	140(%edx)
	fldt	140(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	140(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	150(%edx)
	fldt	150(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	150(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX4_EXTENDED$TMATRIX4_EXTENDED$$TMATRIX4_EXTENDED
_MATRIX_minus$TMATRIX4_EXTENDED$TMATRIX4_EXTENDED$$TMATRIX4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	(%eax)
	fldt	(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	10(%eax)
	fldt	10(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	20(%eax)
	fldt	20(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	30(%eax)
	fldt	30(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	30(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	40(%eax)
	fldt	40(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	40(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	fldt	50(%eax)
	fldt	50(%edx)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	50(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	60(%edx)
	fldt	60(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	60(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	70(%edx)
	fldt	70(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	70(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	80(%edx)
	fldt	80(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	80(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	90(%edx)
	fldt	90(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	90(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	100(%edx)
	fldt	100(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	100(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	110(%edx)
	fldt	110(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	110(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	120(%edx)
	fldt	120(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	120(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	130(%edx)
	fldt	130(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	130(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	140(%edx)
	fldt	140(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	140(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	150(%edx)
	fldt	150(%eax)
	fsubp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	150(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX4_EXTENDED$$TMATRIX4_EXTENDED
_MATRIX_minus$TMATRIX4_EXTENDED$$TMATRIX4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	10(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	20(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	30(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	movl	-4(%ebp),%eax
	fldt	40(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	40(%eax)
	movl	-4(%ebp),%eax
	fldt	50(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	50(%eax)
	movl	-4(%ebp),%eax
	fldt	60(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	60(%eax)
	movl	-4(%ebp),%eax
	fldt	70(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	70(%eax)
	movl	-4(%ebp),%eax
	fldt	80(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	80(%eax)
	movl	-4(%ebp),%eax
	fldt	90(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	90(%eax)
	movl	-4(%ebp),%eax
	fldt	100(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	100(%eax)
	movl	-4(%ebp),%eax
	fldt	110(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	110(%eax)
	movl	-4(%ebp),%eax
	fldt	120(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	120(%eax)
	movl	-4(%ebp),%eax
	fldt	130(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	130(%eax)
	movl	-4(%ebp),%eax
	fldt	140(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	140(%eax)
	movl	-4(%ebp),%eax
	fldt	150(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	150(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX4_EXTENDED$TMATRIX4_EXTENDED$$TMATRIX4_EXTENDED
_MATRIX_star$TMATRIX4_EXTENDED$TMATRIX4_EXTENDED$$TMATRIX4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%esi,-68(%ebp)
	movl	%edi,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-57(%ebp)
	decb	-57(%ebp)
	.align 2
Lj6071:
	incb	-57(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-57(%ebp),%eax
	imull	$40,%eax
	leal	-56(%ebp),%edi
	leal	(%edx,%eax),%esi
	cld
	movl	$10,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	fldt	(%eax)
	fldt	-56(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	40(%eax)
	fldt	-46(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	80(%eax)
	fldt	-36(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	120(%eax)
	fldt	-26(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-57(%ebp),%eax
	imull	$40,%eax
	fstpt	(%edx,%eax)
	movl	-8(%ebp),%eax
	fldt	10(%eax)
	fldt	-56(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	50(%eax)
	fldt	-46(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	90(%eax)
	fldt	-36(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	130(%eax)
	fldt	-26(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-57(%ebp),%eax
	imull	$40,%eax
	fstpt	10(%edx,%eax)
	movl	-8(%ebp),%eax
	fldt	20(%eax)
	fldt	-56(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	60(%eax)
	fldt	-46(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	100(%eax)
	fldt	-36(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	140(%eax)
	fldt	-26(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-57(%ebp),%eax
	imull	$40,%eax
	fstpt	20(%edx,%eax)
	movl	-8(%ebp),%eax
	fldt	30(%eax)
	fldt	-56(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	70(%eax)
	fldt	-46(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	110(%eax)
	fldt	-36(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fldt	150(%eax)
	fldt	-26(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%edx
	movzbl	-57(%ebp),%eax
	imull	$40,%eax
	fstpt	30(%edx,%eax)
	cmpb	$3,-57(%ebp)
	jb	Lj6071
	movl	-68(%ebp),%esi
	movl	-64(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX4_EXTENDED$TVECTOR4_EXTENDED$$TVECTOR4_EXTENDED
_MATRIX_star$TMATRIX4_EXTENDED$TVECTOR4_EXTENDED$$TVECTOR4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	30(%edx)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	40(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	50(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	60(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	30(%edx)
	fldt	70(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	80(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	90(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	100(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	30(%edx)
	fldt	110(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	(%edx)
	fldt	120(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	10(%edx)
	fldt	130(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	20(%edx)
	fldt	140(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldt	30(%edx)
	fldt	150(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpt	30(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_plus$TMATRIX4_EXTENDED$EXTENDED$$TMATRIX4_EXTENDED
_MATRIX_plus$TMATRIX4_EXTENDED$EXTENDED$$TMATRIX4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	30(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	40(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	40(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	50(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	50(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	60(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	60(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	70(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	70(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	80(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	80(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	90(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	90(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	100(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	100(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	110(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	110(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	120(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	120(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	130(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	130(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	140(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	140(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	150(%eax)
	faddp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	150(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_minus$TMATRIX4_EXTENDED$EXTENDED$$TMATRIX4_EXTENDED
_MATRIX_minus$TMATRIX4_EXTENDED$EXTENDED$$TMATRIX4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	30(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	40(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	40(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	50(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	50(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	60(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	60(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	70(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	70(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	80(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	80(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	90(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	90(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	100(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	100(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	110(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	110(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	120(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	120(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	130(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	130(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	140(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	140(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	150(%eax)
	fsubp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	150(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_star$TMATRIX4_EXTENDED$EXTENDED$$TMATRIX4_EXTENDED
_MATRIX_star$TMATRIX4_EXTENDED$EXTENDED$$TMATRIX4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	30(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	40(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	40(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	50(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	50(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	60(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	60(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	70(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	70(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	80(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	80(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	90(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	90(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	100(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	100(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	110(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	110(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	120(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	120(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	130(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	130(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	140(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	140(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	150(%eax)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	150(%eax)
	leave
	ret

.text
	.align 4
.globl	_MATRIX_slash$TMATRIX4_EXTENDED$EXTENDED$$TMATRIX4_EXTENDED
_MATRIX_slash$TMATRIX4_EXTENDED$EXTENDED$$TMATRIX4_EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	10(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	10(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	20(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	20(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	30(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	30(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	40(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	40(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	50(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	50(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	60(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	60(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	70(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	70(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	80(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	80(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	90(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	90(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	100(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	100(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	110(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	110(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	120(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	120(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	130(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	130(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	140(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	140(%eax)
	movl	-4(%ebp),%eax
	fldt	8(%ebp)
	fldt	150(%eax)
	fdivp	%st,%st(1)
	movl	-8(%ebp),%eax
	fstpt	150(%eax)
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_VMT_MATRIX_TVECTOR2_SINGLE
_VMT_MATRIX_TVECTOR2_SINGLE:
	.long	12,-12,0,0

.const_data
	.align 2
.globl	_VMT_MATRIX_TVECTOR2_DOUBLE
_VMT_MATRIX_TVECTOR2_DOUBLE:
	.long	20,-20,0,0

.const_data
	.align 2
.globl	_VMT_MATRIX_TVECTOR2_EXTENDED
_VMT_MATRIX_TVECTOR2_EXTENDED:
	.long	32,-32,0,0

.const_data
	.align 2
.globl	_VMT_MATRIX_TVECTOR3_SINGLE
_VMT_MATRIX_TVECTOR3_SINGLE:
	.long	16,-16,0,0

.const_data
	.align 2
.globl	_VMT_MATRIX_TVECTOR3_DOUBLE
_VMT_MATRIX_TVECTOR3_DOUBLE:
	.long	28,-28,0,0

.const_data
	.align 2
.globl	_VMT_MATRIX_TVECTOR3_EXTENDED
_VMT_MATRIX_TVECTOR3_EXTENDED:
	.long	48,-48,0,0

.const_data
	.align 2
.globl	_VMT_MATRIX_TVECTOR4_SINGLE
_VMT_MATRIX_TVECTOR4_SINGLE:
	.long	20,-20,0,0

.const_data
	.align 2
.globl	_VMT_MATRIX_TVECTOR4_DOUBLE
_VMT_MATRIX_TVECTOR4_DOUBLE:
	.long	36,-36,0,0

.const_data
	.align 2
.globl	_VMT_MATRIX_TVECTOR4_EXTENDED
_VMT_MATRIX_TVECTOR4_EXTENDED:
	.long	48,-48,0,0

.const_data
	.align 2
.globl	_VMT_MATRIX_TMATRIX2_SINGLE
_VMT_MATRIX_TMATRIX2_SINGLE:
	.long	20,-20,0,0

.const_data
	.align 2
.globl	_VMT_MATRIX_TMATRIX2_DOUBLE
_VMT_MATRIX_TMATRIX2_DOUBLE:
	.long	36,-36,0,0

.const_data
	.align 2
.globl	_VMT_MATRIX_TMATRIX2_EXTENDED
_VMT_MATRIX_TMATRIX2_EXTENDED:
	.long	48,-48,0,0

.const_data
	.align 2
.globl	_VMT_MATRIX_TMATRIX3_SINGLE
_VMT_MATRIX_TMATRIX3_SINGLE:
	.long	40,-40,0,0

.const_data
	.align 2
.globl	_VMT_MATRIX_TMATRIX3_DOUBLE
_VMT_MATRIX_TMATRIX3_DOUBLE:
	.long	76,-76,0,0

.const_data
	.align 2
.globl	_VMT_MATRIX_TMATRIX3_EXTENDED
_VMT_MATRIX_TMATRIX3_EXTENDED:
	.long	96,-96,0,0

.const_data
	.align 2
.globl	_VMT_MATRIX_TMATRIX4_SINGLE
_VMT_MATRIX_TMATRIX4_SINGLE:
	.long	68,-68,0,0

.const_data
	.align 2
.globl	_VMT_MATRIX_TMATRIX4_DOUBLE
_VMT_MATRIX_TMATRIX4_DOUBLE:
	.long	132,-132,0,0

.const_data
	.align 2
.globl	_VMT_MATRIX_TMATRIX4_EXTENDED
_VMT_MATRIX_TMATRIX4_EXTENDED:
	.long	176,-176,0,0

.data
	.align 2
.globl	_THREADVARLIST_MATRIX
_THREADVARLIST_MATRIX:
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

Lfpc_help_constructor$stub:
.indirect_symbol fpc_help_constructor
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
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.const_data
	.align 2
.globl	_INIT_MATRIX_TVECTOR2_SINGLE_DATA
_INIT_MATRIX_TVECTOR2_SINGLE_DATA:
	.byte	12
	.ascii	"\024Tvector2_single_data"
	.long	4,2
	.long	_INIT_SYSTEM_SINGLE
	.long	4

.const_data
	.align 2
.globl	_RTTI_MATRIX_TVECTOR2_SINGLE_DATA
_RTTI_MATRIX_TVECTOR2_SINGLE_DATA:
	.byte	12
	.ascii	"\024Tvector2_single_data"
	.long	4,2
	.long	_RTTI_SYSTEM_SINGLE
	.long	4

.const_data
	.align 2
.globl	_INIT_MATRIX_TVECTOR2_DOUBLE_DATA
_INIT_MATRIX_TVECTOR2_DOUBLE_DATA:
	.byte	12
	.ascii	"\024Tvector2_double_data"
	.long	8,2
	.long	_INIT_SYSTEM_DOUBLE
	.long	5

.const_data
	.align 2
.globl	_RTTI_MATRIX_TVECTOR2_DOUBLE_DATA
_RTTI_MATRIX_TVECTOR2_DOUBLE_DATA:
	.byte	12
	.ascii	"\024Tvector2_double_data"
	.long	8,2
	.long	_RTTI_SYSTEM_DOUBLE
	.long	5

.const_data
	.align 2
.globl	_INIT_MATRIX_TVECTOR2_EXTENDED_DATA
_INIT_MATRIX_TVECTOR2_EXTENDED_DATA:
	.byte	12
	.ascii	"\026Tvector2_extended_data"
	.long	10,2
	.long	_INIT_SYSTEM_EXTENDED
	.long	-1

.const_data
	.align 2
.globl	_RTTI_MATRIX_TVECTOR2_EXTENDED_DATA
_RTTI_MATRIX_TVECTOR2_EXTENDED_DATA:
	.byte	12
	.ascii	"\026Tvector2_extended_data"
	.long	10,2
	.long	_RTTI_SYSTEM_EXTENDED
	.long	-1

.const_data
	.align 2
.globl	_INIT_MATRIX_TVECTOR3_SINGLE_DATA
_INIT_MATRIX_TVECTOR3_SINGLE_DATA:
	.byte	12
	.ascii	"\024Tvector3_single_data"
	.long	4,3
	.long	_INIT_SYSTEM_SINGLE
	.long	4

.const_data
	.align 2
.globl	_RTTI_MATRIX_TVECTOR3_SINGLE_DATA
_RTTI_MATRIX_TVECTOR3_SINGLE_DATA:
	.byte	12
	.ascii	"\024Tvector3_single_data"
	.long	4,3
	.long	_RTTI_SYSTEM_SINGLE
	.long	4

.const_data
	.align 2
.globl	_INIT_MATRIX_TVECTOR3_DOUBLE_DATA
_INIT_MATRIX_TVECTOR3_DOUBLE_DATA:
	.byte	12
	.ascii	"\024Tvector3_double_data"
	.long	8,3
	.long	_INIT_SYSTEM_DOUBLE
	.long	5

.const_data
	.align 2
.globl	_RTTI_MATRIX_TVECTOR3_DOUBLE_DATA
_RTTI_MATRIX_TVECTOR3_DOUBLE_DATA:
	.byte	12
	.ascii	"\024Tvector3_double_data"
	.long	8,3
	.long	_RTTI_SYSTEM_DOUBLE
	.long	5

.const_data
	.align 2
.globl	_INIT_MATRIX_TVECTOR3_EXTENDED_DATA
_INIT_MATRIX_TVECTOR3_EXTENDED_DATA:
	.byte	12
	.ascii	"\026Tvector3_extended_data"
	.long	10,3
	.long	_INIT_SYSTEM_EXTENDED
	.long	-1

.const_data
	.align 2
.globl	_RTTI_MATRIX_TVECTOR3_EXTENDED_DATA
_RTTI_MATRIX_TVECTOR3_EXTENDED_DATA:
	.byte	12
	.ascii	"\026Tvector3_extended_data"
	.long	10,3
	.long	_RTTI_SYSTEM_EXTENDED
	.long	-1

.const_data
	.align 2
.globl	_INIT_MATRIX_TVECTOR4_SINGLE_DATA
_INIT_MATRIX_TVECTOR4_SINGLE_DATA:
	.byte	12
	.ascii	"\024Tvector4_single_data"
	.long	4,4
	.long	_INIT_SYSTEM_SINGLE
	.long	4

.const_data
	.align 2
.globl	_RTTI_MATRIX_TVECTOR4_SINGLE_DATA
_RTTI_MATRIX_TVECTOR4_SINGLE_DATA:
	.byte	12
	.ascii	"\024Tvector4_single_data"
	.long	4,4
	.long	_RTTI_SYSTEM_SINGLE
	.long	4

.const_data
	.align 2
.globl	_INIT_MATRIX_TVECTOR4_DOUBLE_DATA
_INIT_MATRIX_TVECTOR4_DOUBLE_DATA:
	.byte	12
	.ascii	"\024Tvector4_double_data"
	.long	8,4
	.long	_INIT_SYSTEM_DOUBLE
	.long	5

.const_data
	.align 2
.globl	_RTTI_MATRIX_TVECTOR4_DOUBLE_DATA
_RTTI_MATRIX_TVECTOR4_DOUBLE_DATA:
	.byte	12
	.ascii	"\024Tvector4_double_data"
	.long	8,4
	.long	_RTTI_SYSTEM_DOUBLE
	.long	5

.const_data
	.align 2
.globl	_INIT_MATRIX_TVECTOR4_EXTENDED_DATA
_INIT_MATRIX_TVECTOR4_EXTENDED_DATA:
	.byte	12
	.ascii	"\026Tvector4_extended_data"
	.long	10,4
	.long	_INIT_SYSTEM_EXTENDED
	.long	-1

.const_data
	.align 2
.globl	_RTTI_MATRIX_TVECTOR4_EXTENDED_DATA
_RTTI_MATRIX_TVECTOR4_EXTENDED_DATA:
	.byte	12
	.ascii	"\026Tvector4_extended_data"
	.long	10,4
	.long	_RTTI_SYSTEM_EXTENDED
	.long	-1

.const_data
	.align 2
.globl	_INIT_MATRIX_DEF10
_INIT_MATRIX_DEF10:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_SINGLE
	.long	4

.const_data
	.align 2
.globl	_INIT_MATRIX_TMATRIX2_SINGLE_DATA
_INIT_MATRIX_TMATRIX2_SINGLE_DATA:
	.byte	12
	.ascii	"\024Tmatrix2_single_data"
	.long	8,2
	.long	_INIT_MATRIX_DEF10
	.long	-1

.const_data
	.align 2
.globl	_RTTI_MATRIX_DEF10
_RTTI_MATRIX_DEF10:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_RTTI_SYSTEM_SINGLE
	.long	4

.const_data
	.align 2
.globl	_RTTI_MATRIX_TMATRIX2_SINGLE_DATA
_RTTI_MATRIX_TMATRIX2_SINGLE_DATA:
	.byte	12
	.ascii	"\024Tmatrix2_single_data"
	.long	8,2
	.long	_RTTI_MATRIX_DEF10
	.long	-1

.const_data
	.align 2
.globl	_INIT_MATRIX_DEF12
_INIT_MATRIX_DEF12:
	.byte	12
	.ascii	"\000"
	.long	8,2
	.long	_INIT_SYSTEM_DOUBLE
	.long	5

.const_data
	.align 2
.globl	_INIT_MATRIX_TMATRIX2_DOUBLE_DATA
_INIT_MATRIX_TMATRIX2_DOUBLE_DATA:
	.byte	12
	.ascii	"\024Tmatrix2_double_data"
	.long	16,2
	.long	_INIT_MATRIX_DEF12
	.long	-1

.const_data
	.align 2
.globl	_RTTI_MATRIX_DEF12
_RTTI_MATRIX_DEF12:
	.byte	12
	.ascii	"\000"
	.long	8,2
	.long	_RTTI_SYSTEM_DOUBLE
	.long	5

.const_data
	.align 2
.globl	_RTTI_MATRIX_TMATRIX2_DOUBLE_DATA
_RTTI_MATRIX_TMATRIX2_DOUBLE_DATA:
	.byte	12
	.ascii	"\024Tmatrix2_double_data"
	.long	16,2
	.long	_RTTI_MATRIX_DEF12
	.long	-1

.const_data
	.align 2
.globl	_INIT_MATRIX_DEF14
_INIT_MATRIX_DEF14:
	.byte	12
	.ascii	"\000"
	.long	10,2
	.long	_INIT_SYSTEM_EXTENDED
	.long	-1

.const_data
	.align 2
.globl	_INIT_MATRIX_TMATRIX2_EXTENDED_DATA
_INIT_MATRIX_TMATRIX2_EXTENDED_DATA:
	.byte	12
	.ascii	"\026Tmatrix2_extended_data"
	.long	20,2
	.long	_INIT_MATRIX_DEF14
	.long	-1

.const_data
	.align 2
.globl	_RTTI_MATRIX_DEF14
_RTTI_MATRIX_DEF14:
	.byte	12
	.ascii	"\000"
	.long	10,2
	.long	_RTTI_SYSTEM_EXTENDED
	.long	-1

.const_data
	.align 2
.globl	_RTTI_MATRIX_TMATRIX2_EXTENDED_DATA
_RTTI_MATRIX_TMATRIX2_EXTENDED_DATA:
	.byte	12
	.ascii	"\026Tmatrix2_extended_data"
	.long	20,2
	.long	_RTTI_MATRIX_DEF14
	.long	-1

.const_data
	.align 2
.globl	_INIT_MATRIX_DEF16
_INIT_MATRIX_DEF16:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_SINGLE
	.long	4

.const_data
	.align 2
.globl	_INIT_MATRIX_TMATRIX3_SINGLE_DATA
_INIT_MATRIX_TMATRIX3_SINGLE_DATA:
	.byte	12
	.ascii	"\024Tmatrix3_single_data"
	.long	12,3
	.long	_INIT_MATRIX_DEF16
	.long	-1

.const_data
	.align 2
.globl	_RTTI_MATRIX_DEF16
_RTTI_MATRIX_DEF16:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_RTTI_SYSTEM_SINGLE
	.long	4

.const_data
	.align 2
.globl	_RTTI_MATRIX_TMATRIX3_SINGLE_DATA
_RTTI_MATRIX_TMATRIX3_SINGLE_DATA:
	.byte	12
	.ascii	"\024Tmatrix3_single_data"
	.long	12,3
	.long	_RTTI_MATRIX_DEF16
	.long	-1

.const_data
	.align 2
.globl	_INIT_MATRIX_DEF18
_INIT_MATRIX_DEF18:
	.byte	12
	.ascii	"\000"
	.long	8,3
	.long	_INIT_SYSTEM_DOUBLE
	.long	5

.const_data
	.align 2
.globl	_INIT_MATRIX_TMATRIX3_DOUBLE_DATA
_INIT_MATRIX_TMATRIX3_DOUBLE_DATA:
	.byte	12
	.ascii	"\024Tmatrix3_double_data"
	.long	24,3
	.long	_INIT_MATRIX_DEF18
	.long	-1

.const_data
	.align 2
.globl	_RTTI_MATRIX_DEF18
_RTTI_MATRIX_DEF18:
	.byte	12
	.ascii	"\000"
	.long	8,3
	.long	_RTTI_SYSTEM_DOUBLE
	.long	5

.const_data
	.align 2
.globl	_RTTI_MATRIX_TMATRIX3_DOUBLE_DATA
_RTTI_MATRIX_TMATRIX3_DOUBLE_DATA:
	.byte	12
	.ascii	"\024Tmatrix3_double_data"
	.long	24,3
	.long	_RTTI_MATRIX_DEF18
	.long	-1

.const_data
	.align 2
.globl	_INIT_MATRIX_DEF20
_INIT_MATRIX_DEF20:
	.byte	12
	.ascii	"\000"
	.long	10,3
	.long	_INIT_SYSTEM_EXTENDED
	.long	-1

.const_data
	.align 2
.globl	_INIT_MATRIX_TMATRIX3_EXTENDED_DATA
_INIT_MATRIX_TMATRIX3_EXTENDED_DATA:
	.byte	12
	.ascii	"\026Tmatrix3_extended_data"
	.long	30,3
	.long	_INIT_MATRIX_DEF20
	.long	-1

.const_data
	.align 2
.globl	_RTTI_MATRIX_DEF20
_RTTI_MATRIX_DEF20:
	.byte	12
	.ascii	"\000"
	.long	10,3
	.long	_RTTI_SYSTEM_EXTENDED
	.long	-1

.const_data
	.align 2
.globl	_RTTI_MATRIX_TMATRIX3_EXTENDED_DATA
_RTTI_MATRIX_TMATRIX3_EXTENDED_DATA:
	.byte	12
	.ascii	"\026Tmatrix3_extended_data"
	.long	30,3
	.long	_RTTI_MATRIX_DEF20
	.long	-1

.const_data
	.align 2
.globl	_INIT_MATRIX_DEF22
_INIT_MATRIX_DEF22:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_SINGLE
	.long	4

.const_data
	.align 2
.globl	_INIT_MATRIX_TMATRIX4_SINGLE_DATA
_INIT_MATRIX_TMATRIX4_SINGLE_DATA:
	.byte	12
	.ascii	"\024Tmatrix4_single_data"
	.long	16,4
	.long	_INIT_MATRIX_DEF22
	.long	-1

.const_data
	.align 2
.globl	_RTTI_MATRIX_DEF22
_RTTI_MATRIX_DEF22:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_RTTI_SYSTEM_SINGLE
	.long	4

.const_data
	.align 2
.globl	_RTTI_MATRIX_TMATRIX4_SINGLE_DATA
_RTTI_MATRIX_TMATRIX4_SINGLE_DATA:
	.byte	12
	.ascii	"\024Tmatrix4_single_data"
	.long	16,4
	.long	_RTTI_MATRIX_DEF22
	.long	-1

.const_data
	.align 2
.globl	_INIT_MATRIX_DEF24
_INIT_MATRIX_DEF24:
	.byte	12
	.ascii	"\000"
	.long	8,4
	.long	_INIT_SYSTEM_DOUBLE
	.long	5

.const_data
	.align 2
.globl	_INIT_MATRIX_TMATRIX4_DOUBLE_DATA
_INIT_MATRIX_TMATRIX4_DOUBLE_DATA:
	.byte	12
	.ascii	"\024Tmatrix4_double_data"
	.long	32,4
	.long	_INIT_MATRIX_DEF24
	.long	-1

.const_data
	.align 2
.globl	_RTTI_MATRIX_DEF24
_RTTI_MATRIX_DEF24:
	.byte	12
	.ascii	"\000"
	.long	8,4
	.long	_RTTI_SYSTEM_DOUBLE
	.long	5

.const_data
	.align 2
.globl	_RTTI_MATRIX_TMATRIX4_DOUBLE_DATA
_RTTI_MATRIX_TMATRIX4_DOUBLE_DATA:
	.byte	12
	.ascii	"\024Tmatrix4_double_data"
	.long	32,4
	.long	_RTTI_MATRIX_DEF24
	.long	-1

.const_data
	.align 2
.globl	_INIT_MATRIX_DEF26
_INIT_MATRIX_DEF26:
	.byte	12
	.ascii	"\000"
	.long	10,4
	.long	_INIT_SYSTEM_EXTENDED
	.long	-1

.const_data
	.align 2
.globl	_INIT_MATRIX_TMATRIX4_EXTENDED_DATA
_INIT_MATRIX_TMATRIX4_EXTENDED_DATA:
	.byte	12
	.ascii	"\026Tmatrix4_extended_data"
	.long	40,4
	.long	_INIT_MATRIX_DEF26
	.long	-1

.const_data
	.align 2
.globl	_RTTI_MATRIX_DEF26
_RTTI_MATRIX_DEF26:
	.byte	12
	.ascii	"\000"
	.long	10,4
	.long	_RTTI_SYSTEM_EXTENDED
	.long	-1

.const_data
	.align 2
.globl	_RTTI_MATRIX_TMATRIX4_EXTENDED_DATA
_RTTI_MATRIX_TMATRIX4_EXTENDED_DATA:
	.byte	12
	.ascii	"\026Tmatrix4_extended_data"
	.long	40,4
	.long	_RTTI_MATRIX_DEF26
	.long	-1

.const_data
	.align 2
.globl	_INIT_MATRIX_TVECTOR2_SINGLE
_INIT_MATRIX_TVECTOR2_SINGLE:
	.byte	16,15
	.ascii	"Tvector2_single"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_MATRIX_TVECTOR2_SINGLE
_RTTI_MATRIX_TVECTOR2_SINGLE:
	.byte	16,15
	.ascii	"Tvector2_single"
	.long	12,2
	.long	_RTTI_MATRIX_TVECTOR2_SINGLE_DATA
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	8

.const_data
	.align 2
.globl	_INIT_MATRIX_TVECTOR2_DOUBLE
_INIT_MATRIX_TVECTOR2_DOUBLE:
	.byte	16,15
	.ascii	"Tvector2_double"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_MATRIX_TVECTOR2_DOUBLE
_RTTI_MATRIX_TVECTOR2_DOUBLE:
	.byte	16,15
	.ascii	"Tvector2_double"
	.long	20,2
	.long	_RTTI_MATRIX_TVECTOR2_DOUBLE_DATA
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	16

.const_data
	.align 2
.globl	_INIT_MATRIX_TVECTOR2_EXTENDED
_INIT_MATRIX_TVECTOR2_EXTENDED:
	.byte	16,17
	.ascii	"Tvector2_extended"
	.long	32,0

.const_data
	.align 2
.globl	_RTTI_MATRIX_TVECTOR2_EXTENDED
_RTTI_MATRIX_TVECTOR2_EXTENDED:
	.byte	16,17
	.ascii	"Tvector2_extended"
	.long	32,2
	.long	_RTTI_MATRIX_TVECTOR2_EXTENDED_DATA
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	20

.const_data
	.align 2
.globl	_INIT_MATRIX_TVECTOR3_SINGLE
_INIT_MATRIX_TVECTOR3_SINGLE:
	.byte	16,15
	.ascii	"Tvector3_single"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_MATRIX_TVECTOR3_SINGLE
_RTTI_MATRIX_TVECTOR3_SINGLE:
	.byte	16,15
	.ascii	"Tvector3_single"
	.long	16,2
	.long	_RTTI_MATRIX_TVECTOR3_SINGLE_DATA
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	12

.const_data
	.align 2
.globl	_INIT_MATRIX_TVECTOR3_DOUBLE
_INIT_MATRIX_TVECTOR3_DOUBLE:
	.byte	16,15
	.ascii	"Tvector3_double"
	.long	28,0

.const_data
	.align 2
.globl	_RTTI_MATRIX_TVECTOR3_DOUBLE
_RTTI_MATRIX_TVECTOR3_DOUBLE:
	.byte	16,15
	.ascii	"Tvector3_double"
	.long	28,2
	.long	_RTTI_MATRIX_TVECTOR3_DOUBLE_DATA
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	24

.const_data
	.align 2
.globl	_INIT_MATRIX_TVECTOR3_EXTENDED
_INIT_MATRIX_TVECTOR3_EXTENDED:
	.byte	16,17
	.ascii	"Tvector3_extended"
	.long	48,0

.const_data
	.align 2
.globl	_RTTI_MATRIX_TVECTOR3_EXTENDED
_RTTI_MATRIX_TVECTOR3_EXTENDED:
	.byte	16,17
	.ascii	"Tvector3_extended"
	.long	48,2
	.long	_RTTI_MATRIX_TVECTOR3_EXTENDED_DATA
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	32

.const_data
	.align 2
.globl	_INIT_MATRIX_TVECTOR4_SINGLE
_INIT_MATRIX_TVECTOR4_SINGLE:
	.byte	16,15
	.ascii	"Tvector4_single"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_MATRIX_TVECTOR4_SINGLE
_RTTI_MATRIX_TVECTOR4_SINGLE:
	.byte	16,15
	.ascii	"Tvector4_single"
	.long	20,2
	.long	_RTTI_MATRIX_TVECTOR4_SINGLE_DATA
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	16

.const_data
	.align 2
.globl	_INIT_MATRIX_TVECTOR4_DOUBLE
_INIT_MATRIX_TVECTOR4_DOUBLE:
	.byte	16,15
	.ascii	"Tvector4_double"
	.long	36,0

.const_data
	.align 2
.globl	_RTTI_MATRIX_TVECTOR4_DOUBLE
_RTTI_MATRIX_TVECTOR4_DOUBLE:
	.byte	16,15
	.ascii	"Tvector4_double"
	.long	36,2
	.long	_RTTI_MATRIX_TVECTOR4_DOUBLE_DATA
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	32

.const_data
	.align 2
.globl	_INIT_MATRIX_TVECTOR4_EXTENDED
_INIT_MATRIX_TVECTOR4_EXTENDED:
	.byte	16,17
	.ascii	"Tvector4_extended"
	.long	48,0

.const_data
	.align 2
.globl	_RTTI_MATRIX_TVECTOR4_EXTENDED
_RTTI_MATRIX_TVECTOR4_EXTENDED:
	.byte	16,17
	.ascii	"Tvector4_extended"
	.long	48,2
	.long	_RTTI_MATRIX_TVECTOR4_EXTENDED_DATA
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	40

.const_data
	.align 2
.globl	_INIT_MATRIX_TMATRIX2_SINGLE
_INIT_MATRIX_TMATRIX2_SINGLE:
	.byte	16,15
	.ascii	"Tmatrix2_single"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_MATRIX_TMATRIX2_SINGLE
_RTTI_MATRIX_TMATRIX2_SINGLE:
	.byte	16,15
	.ascii	"Tmatrix2_single"
	.long	20,2
	.long	_RTTI_MATRIX_TMATRIX2_SINGLE_DATA
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	16

.const_data
	.align 2
.globl	_INIT_MATRIX_TMATRIX2_DOUBLE
_INIT_MATRIX_TMATRIX2_DOUBLE:
	.byte	16,15
	.ascii	"Tmatrix2_double"
	.long	36,0

.const_data
	.align 2
.globl	_RTTI_MATRIX_TMATRIX2_DOUBLE
_RTTI_MATRIX_TMATRIX2_DOUBLE:
	.byte	16,15
	.ascii	"Tmatrix2_double"
	.long	36,2
	.long	_RTTI_MATRIX_TMATRIX2_DOUBLE_DATA
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	32

.const_data
	.align 2
.globl	_INIT_MATRIX_TMATRIX2_EXTENDED
_INIT_MATRIX_TMATRIX2_EXTENDED:
	.byte	16,17
	.ascii	"Tmatrix2_extended"
	.long	48,0

.const_data
	.align 2
.globl	_RTTI_MATRIX_TMATRIX2_EXTENDED
_RTTI_MATRIX_TMATRIX2_EXTENDED:
	.byte	16,17
	.ascii	"Tmatrix2_extended"
	.long	48,2
	.long	_RTTI_MATRIX_TMATRIX2_EXTENDED_DATA
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	40

.const_data
	.align 2
.globl	_INIT_MATRIX_TMATRIX3_SINGLE
_INIT_MATRIX_TMATRIX3_SINGLE:
	.byte	16,15
	.ascii	"Tmatrix3_single"
	.long	40,0

.const_data
	.align 2
.globl	_RTTI_MATRIX_TMATRIX3_SINGLE
_RTTI_MATRIX_TMATRIX3_SINGLE:
	.byte	16,15
	.ascii	"Tmatrix3_single"
	.long	40,2
	.long	_RTTI_MATRIX_TMATRIX3_SINGLE_DATA
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	36

.const_data
	.align 2
.globl	_INIT_MATRIX_TMATRIX3_DOUBLE
_INIT_MATRIX_TMATRIX3_DOUBLE:
	.byte	16,15
	.ascii	"Tmatrix3_double"
	.long	76,0

.const_data
	.align 2
.globl	_RTTI_MATRIX_TMATRIX3_DOUBLE
_RTTI_MATRIX_TMATRIX3_DOUBLE:
	.byte	16,15
	.ascii	"Tmatrix3_double"
	.long	76,2
	.long	_RTTI_MATRIX_TMATRIX3_DOUBLE_DATA
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	72

.const_data
	.align 2
.globl	_INIT_MATRIX_TMATRIX3_EXTENDED
_INIT_MATRIX_TMATRIX3_EXTENDED:
	.byte	16,17
	.ascii	"Tmatrix3_extended"
	.long	96,0

.const_data
	.align 2
.globl	_RTTI_MATRIX_TMATRIX3_EXTENDED
_RTTI_MATRIX_TMATRIX3_EXTENDED:
	.byte	16,17
	.ascii	"Tmatrix3_extended"
	.long	96,2
	.long	_RTTI_MATRIX_TMATRIX3_EXTENDED_DATA
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	92

.const_data
	.align 2
.globl	_INIT_MATRIX_TMATRIX4_SINGLE
_INIT_MATRIX_TMATRIX4_SINGLE:
	.byte	16,15
	.ascii	"Tmatrix4_single"
	.long	68,0

.const_data
	.align 2
.globl	_RTTI_MATRIX_TMATRIX4_SINGLE
_RTTI_MATRIX_TMATRIX4_SINGLE:
	.byte	16,15
	.ascii	"Tmatrix4_single"
	.long	68,2
	.long	_RTTI_MATRIX_TMATRIX4_SINGLE_DATA
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	64

.const_data
	.align 2
.globl	_INIT_MATRIX_TMATRIX4_DOUBLE
_INIT_MATRIX_TMATRIX4_DOUBLE:
	.byte	16,15
	.ascii	"Tmatrix4_double"
	.long	132,0

.const_data
	.align 2
.globl	_RTTI_MATRIX_TMATRIX4_DOUBLE
_RTTI_MATRIX_TMATRIX4_DOUBLE:
	.byte	16,15
	.ascii	"Tmatrix4_double"
	.long	132,2
	.long	_RTTI_MATRIX_TMATRIX4_DOUBLE_DATA
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	128

.const_data
	.align 2
.globl	_INIT_MATRIX_TMATRIX4_EXTENDED
_INIT_MATRIX_TMATRIX4_EXTENDED:
	.byte	16,17
	.ascii	"Tmatrix4_extended"
	.long	176,0

.const_data
	.align 2
.globl	_RTTI_MATRIX_TMATRIX4_EXTENDED
_RTTI_MATRIX_TMATRIX4_EXTENDED:
	.byte	16,17
	.ascii	"Tmatrix4_extended"
	.long	176,2
	.long	_RTTI_MATRIX_TMATRIX4_EXTENDED_DATA
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	160
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
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

