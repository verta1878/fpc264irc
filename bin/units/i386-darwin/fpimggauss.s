# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPIMGGAUSS_TINTRINGBUFFER_$__SETSIZE$LONGINT
_FPIMGGAUSS_TINTRINGBUFFER_$__SETSIZE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj5
	jmp	Lj6
Lj5:
	jmp	Lj3
Lj6:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%edx
	shll	$3,%edx
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
Lj3:
	leave
	ret

.text
	.align 4
.globl	_FPIMGGAUSS_TINTRINGBUFFER_$__PUT$LONGINT$TFPCOLOR
_FPIMGGAUSS_TINTRINGBUFFER_$__PUT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	cltd
	idivl	(%ecx)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj17
	jmp	Lj18
Lj17:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	addl	%eax,-4(%ebp)
Lj18:
	movl	-12(%ebp),%eax
	movl	4(%eax),%ebx
	movl	-4(%ebp),%ecx
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
.globl	_FPIMGGAUSS_TINTRINGBUFFER_$__GET$LONGINT$TFPCOLOR
_FPIMGGAUSS_TINTRINGBUFFER_$__GET$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	cltd
	idivl	(%ecx)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj25
	jmp	Lj26
Lj25:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	addl	%eax,-4(%ebp)
Lj26:
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%edx,%eax,8),%ecx
	movl	%ecx,(%ebx)
	movl	4(%edx,%eax,8),%eax
	movl	%eax,4(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMGGAUSS_TINTRINGBUFFER_$__INIT$LONGINT
_FPIMGGAUSS_TINTRINGBUFFER_$__INIT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	-8(%ebp),%eax
	movl	$0,4(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__SETSIZE$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPIMGGAUSS_TINTRINGBUFFER_$__CLEAR
_FPIMGGAUSS_TINTRINGBUFFER_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__SETSIZE$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPIMGGAUSS_GAUSSIANBLURBINOMINAL4$TFPCUSTOMIMAGE$LONGINT$TRECT
_FPIMGGAUSS_GAUSSIANBLURBINOMINAL4$TFPCUSTOMIMAGE$LONGINT$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%esi
	leal	-28(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	leal	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMGGAUSS_GAUSSIANBLURBINOMINAL4$TFPCUSTOMIMAGE$TFPCUSTOMIMAGE$LONGINT$TRECT$TPOINT$stub
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPIMGGAUSS_GAUSSIANBLURBINOMINAL4$TFPCUSTOMIMAGE$TFPCUSTOMIMAGE$LONGINT$TRECT$TPOINT
_FPIMGGAUSS_GAUSSIANBLURBINOMINAL4$TFPCUSTOMIMAGE$TFPCUSTOMIMAGE$LONGINT$TRECT$TPOINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$232,%esp
	movl	%ebx,-216(%ebp)
	movl	%esi,-212(%ebp)
	movl	%edi,-208(%ebp)
	call	Lj58
Lj58:
	popl	-204(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	12(%ebp),%esi
	leal	-164(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-172(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-168(%ebp)
	movl	-164(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj59
	jmp	Lj60
Lj59:
	movl	-164(%ebp),%eax
	subl	%eax,-172(%ebp)
	movl	$0,-164(%ebp)
Lj60:
	movl	-160(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj63
	jmp	Lj64
Lj63:
	movl	-160(%ebp),%eax
	subl	%eax,-168(%ebp)
	movl	$0,-160(%ebp)
Lj64:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-176(%ebp)
	movl	-176(%ebp),%eax
	cmpl	-156(%ebp),%eax
	jl	Lj71
	jmp	Lj72
Lj71:
	movl	-176(%ebp),%eax
	jmp	Lj75
Lj72:
	movl	-156(%ebp),%eax
Lj75:
	movl	%eax,-156(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-176(%ebp)
	movl	-176(%ebp),%eax
	cmpl	-160(%ebp),%eax
	jl	Lj82
	jmp	Lj83
Lj82:
	movl	-176(%ebp),%eax
	jmp	Lj86
Lj83:
	movl	-160(%ebp),%eax
Lj86:
	movl	%eax,-160(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	-172(%ebp),%eax
	subl	%eax,%edx
	movl	-164(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-176(%ebp)
	movl	-156(%ebp),%eax
	cmpl	-176(%ebp),%eax
	jl	Lj93
	jmp	Lj94
Lj93:
	movl	-156(%ebp),%eax
	jmp	Lj97
Lj94:
	movl	-176(%ebp),%eax
Lj97:
	movl	%eax,-156(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%edx
	movl	-168(%ebp),%eax
	subl	%eax,%edx
	movl	-160(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-176(%ebp)
	movl	-152(%ebp),%eax
	cmpl	-176(%ebp),%eax
	jl	Lj104
	jmp	Lj105
Lj104:
	movl	-152(%ebp),%eax
	jmp	Lj108
Lj105:
	movl	-176(%ebp),%eax
Lj108:
	movl	%eax,-152(%ebp)
	movl	-164(%ebp),%eax
	cmpl	-156(%ebp),%eax
	jge	Lj111
	jmp	Lj112
Lj111:
	jmp	Lj57
Lj112:
	movl	-160(%ebp),%eax
	cmpl	-152(%ebp),%eax
	jge	Lj113
	jmp	Lj114
Lj113:
	jmp	Lj57
Lj114:
	movl	-12(%ebp),%edx
	shll	$2,%edx
	leal	-116(%ebp),%eax
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__INIT$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	imull	%eax,%edx
	movl	-12(%ebp),%eax
	imull	%eax,%edx
	movl	-12(%ebp),%eax
	imull	%eax,%edx
	movl	%edx,-176(%ebp)
	fildl	-176(%ebp)
	fld1
	fdivp	%st,%st(1)
	fstps	-100(%ebp)
	movl	-156(%ebp),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	-164(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj122
	decl	-16(%ebp)
	.align 2
Lj123:
	incl	-16(%ebp)
	leal	-48(%ebp),%edi
	movl	-204(%ebp),%eax
	movl	L_TC_FPIMGGAUSS_GAUSSIANBLURBINOMINAL4$crcC0E3BAD6_CLEARINTEGERCOLOR$non_lazy_ptr-Lj58(%eax),%edx
	movl	%edx,%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-64(%ebp),%edi
	movl	-204(%ebp),%edx
	movl	L_TC_FPIMGGAUSS_GAUSSIANBLURBINOMINAL4$crcC0E3BAD6_CLEARINTEGERCOLOR$non_lazy_ptr-Lj58(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-80(%ebp),%edi
	movl	-204(%ebp),%edx
	movl	L_TC_FPIMGGAUSS_GAUSSIANBLURBINOMINAL4$crcC0E3BAD6_CLEARINTEGERCOLOR$non_lazy_ptr-Lj58(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-96(%ebp),%edi
	movl	-204(%ebp),%edx
	movl	L_TC_FPIMGGAUSS_GAUSSIANBLURBINOMINAL4$crcC0E3BAD6_CLEARINTEGERCOLOR$non_lazy_ptr-Lj58(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-152(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	-12(%ebp),%eax
	shll	$2,%eax
	movl	-160(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj133
	decl	-20(%ebp)
	.align 2
Lj134:
	incl	-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-160(%ebp),%eax
	jge	Lj135
	jmp	Lj136
Lj135:
	movl	-12(%ebp),%edx
	shll	$1,%edx
	movl	-20(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	leal	-124(%ebp),%ecx
	leal	-116(%ebp),%eax
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__GET$LONGINT$TFPCOLOR$stub
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	leal	-132(%ebp),%ecx
	leal	-116(%ebp),%eax
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__GET$LONGINT$TFPCOLOR$stub
	leal	-140(%ebp),%ecx
	movl	-20(%ebp),%edx
	leal	-116(%ebp),%eax
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__GET$LONGINT$TFPCOLOR$stub
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	leal	-148(%ebp),%ecx
	leal	-116(%ebp),%eax
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__GET$LONGINT$TFPCOLOR$stub
	movzwl	-134(%ebp),%edx
	imull	$6,%edx
	movzwl	-126(%ebp),%eax
	movzwl	-142(%ebp),%ecx
	addl	%ecx,%eax
	movl	%eax,%ecx
	shll	$2,%ecx
	movzwl	-118(%ebp),%eax
	movl	-36(%ebp),%edi
	addl	%eax,%edi
	movl	%edi,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	addl	%ecx,%edx
	movl	%edx,-36(%ebp)
	movzwl	-140(%ebp),%edx
	imull	$6,%edx
	movzwl	-132(%ebp),%eax
	movzwl	-148(%ebp),%ecx
	addl	%ecx,%eax
	movl	%eax,%ecx
	shll	$2,%ecx
	movzwl	-124(%ebp),%edi
	movl	-48(%ebp),%eax
	addl	%edi,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	addl	%ecx,%edx
	movl	%edx,-48(%ebp)
	movzwl	-138(%ebp),%edx
	imull	$6,%edx
	movzwl	-130(%ebp),%ecx
	movzwl	-146(%ebp),%eax
	addl	%eax,%ecx
	shll	$2,%ecx
	movzwl	-122(%ebp),%eax
	movl	-44(%ebp),%edi
	addl	%eax,%edi
	movl	%edi,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	addl	%ecx,%edx
	movl	%edx,-44(%ebp)
	movzwl	-136(%ebp),%edx
	imull	$6,%edx
	movzwl	-128(%ebp),%ecx
	movzwl	-144(%ebp),%eax
	addl	%eax,%ecx
	shll	$2,%ecx
	movzwl	-120(%ebp),%eax
	movl	-40(%ebp),%edi
	addl	%eax,%edi
	movl	%edi,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	addl	%ecx,%edx
	movl	%edx,-40(%ebp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-184(%ebp)
	movl	%edx,-180(%ebp)
	movl	-184(%ebp),%eax
	movl	%eax,-108(%ebp)
	movl	-180(%ebp),%eax
	movl	%eax,-104(%ebp)
	fildl	-84(%ebp)
	flds	-100(%ebp)
	fmulp	%st,%st(1)
	fistpq	-200(%ebp)
	fwait
	movl	-200(%ebp),%eax
	movl	%eax,-192(%ebp)
	movl	-196(%ebp),%eax
	movl	%eax,-188(%ebp)
	movl	-192(%ebp),%edx
	movl	-188(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj183
	jg	Lj184
	cmpl	$0,%edx
	jb	Lj183
	jmp	Lj184
Lj183:
	movl	$0,%edx
	movl	$0,%eax
	jmp	Lj187
Lj184:
	movl	-192(%ebp),%edx
	movl	-188(%ebp),%eax
Lj187:
	movl	%edx,-184(%ebp)
	movl	%eax,-180(%ebp)
	movl	-184(%ebp),%edx
	movl	-180(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj190
	jl	Lj191
	cmpl	$65535,%edx
	ja	Lj190
	jmp	Lj191
Lj190:
	movl	$65535,%edx
	movl	$0,%eax
	jmp	Lj194
Lj191:
	movl	-184(%ebp),%edx
	movl	-180(%ebp),%eax
Lj194:
	movw	%dx,-102(%ebp)
	fildl	-96(%ebp)
	flds	-100(%ebp)
	fmulp	%st,%st(1)
	fistpq	-184(%ebp)
	fwait
	movl	-184(%ebp),%eax
	movl	%eax,-192(%ebp)
	movl	-180(%ebp),%eax
	movl	%eax,-188(%ebp)
	movl	-192(%ebp),%eax
	movl	-188(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj203
	jg	Lj204
	cmpl	$0,%eax
	jb	Lj203
	jmp	Lj204
Lj203:
	movl	$0,%edx
	movl	$0,%eax
	jmp	Lj207
Lj204:
	movl	-192(%ebp),%edx
	movl	-188(%ebp),%eax
Lj207:
	movl	%edx,-200(%ebp)
	movl	%eax,-196(%ebp)
	movl	-200(%ebp),%eax
	movl	-196(%ebp),%edx
	cmpl	$0,%edx
	jg	Lj210
	jl	Lj211
	cmpl	$65535,%eax
	ja	Lj210
	jmp	Lj211
Lj210:
	movl	$65535,%eax
	movl	$0,%edx
	jmp	Lj214
Lj211:
	movl	-200(%ebp),%eax
	movl	-196(%ebp),%edx
Lj214:
	movw	%ax,-108(%ebp)
	fildl	-92(%ebp)
	flds	-100(%ebp)
	fmulp	%st,%st(1)
	fistpq	-184(%ebp)
	fwait
	movl	-184(%ebp),%eax
	movl	%eax,-192(%ebp)
	movl	-180(%ebp),%eax
	movl	%eax,-188(%ebp)
	movl	-192(%ebp),%eax
	movl	-188(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj223
	jg	Lj224
	cmpl	$0,%eax
	jb	Lj223
	jmp	Lj224
Lj223:
	movl	$0,%eax
	movl	$0,%edx
	jmp	Lj227
Lj224:
	movl	-192(%ebp),%eax
	movl	-188(%ebp),%edx
Lj227:
	movl	%eax,-200(%ebp)
	movl	%edx,-196(%ebp)
	movl	-200(%ebp),%eax
	movl	-196(%ebp),%edx
	cmpl	$0,%edx
	jg	Lj230
	jl	Lj231
	cmpl	$65535,%eax
	ja	Lj230
	jmp	Lj231
Lj230:
	movl	$65535,%eax
	movl	$0,%edx
	jmp	Lj234
Lj231:
	movl	-200(%ebp),%eax
	movl	-196(%ebp),%edx
Lj234:
	movw	%ax,-106(%ebp)
	fildl	-88(%ebp)
	flds	-100(%ebp)
	fmulp	%st,%st(1)
	fistpq	-184(%ebp)
	fwait
	movl	-184(%ebp),%eax
	movl	%eax,-192(%ebp)
	movl	-180(%ebp),%eax
	movl	%eax,-188(%ebp)
	movl	-192(%ebp),%eax
	movl	-188(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj243
	jg	Lj244
	cmpl	$0,%eax
	jb	Lj243
	jmp	Lj244
Lj243:
	movl	$0,%edx
	movl	$0,%eax
	jmp	Lj247
Lj244:
	movl	-192(%ebp),%edx
	movl	-188(%ebp),%eax
Lj247:
	movl	%edx,-200(%ebp)
	movl	%eax,-196(%ebp)
	movl	-200(%ebp),%eax
	movl	-196(%ebp),%edx
	cmpl	$0,%edx
	jg	Lj250
	jl	Lj251
	cmpl	$65535,%eax
	ja	Lj250
	jmp	Lj251
Lj250:
	movl	$65535,%eax
	movl	$0,%edx
	jmp	Lj254
Lj251:
	movl	-200(%ebp),%eax
	movl	-196(%ebp),%edx
Lj254:
	movw	%ax,-104(%ebp)
	leal	-108(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	jmp	Lj265
Lj136:
	movl	-12(%ebp),%eax
	imull	$3,%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	cmpl	-160(%ebp),%eax
	jge	Lj266
	jmp	Lj267
Lj266:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	leal	-148(%ebp),%ecx
	leal	-116(%ebp),%eax
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__GET$LONGINT$TFPCOLOR$stub
	movzwl	-142(%ebp),%eax
	shll	$2,%eax
	movl	-36(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-36(%ebp)
	movzwl	-148(%ebp),%eax
	shll	$2,%eax
	movl	-48(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-48(%ebp)
	movzwl	-146(%ebp),%eax
	shll	$2,%eax
	movl	-44(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-44(%ebp)
	movzwl	-144(%ebp),%eax
	shll	$2,%eax
	movl	-40(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-40(%ebp)
Lj267:
	movl	-12(%ebp),%eax
	shll	$1,%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	cmpl	-160(%ebp),%eax
	jge	Lj282
	jmp	Lj283
Lj282:
	leal	-140(%ebp),%ecx
	movl	-20(%ebp),%edx
	leal	-116(%ebp),%eax
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__GET$LONGINT$TFPCOLOR$stub
	movzwl	-142(%ebp),%eax
	imull	$6,%eax
	movl	-36(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-36(%ebp)
	movzwl	-148(%ebp),%eax
	imull	$6,%eax
	movl	-48(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-48(%ebp)
	movzwl	-146(%ebp),%edx
	imull	$6,%edx
	movl	-44(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-44(%ebp)
	movzwl	-144(%ebp),%eax
	imull	$6,%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-40(%ebp)
Lj283:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	cmpl	-160(%ebp),%edx
	jge	Lj298
	jmp	Lj299
Lj298:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	leal	-132(%ebp),%ecx
	leal	-116(%ebp),%eax
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__GET$LONGINT$TFPCOLOR$stub
	movzwl	-126(%ebp),%eax
	shll	$2,%eax
	movl	-36(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-36(%ebp)
	movzwl	-132(%ebp),%eax
	shll	$2,%eax
	movl	-48(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-48(%ebp)
	movzwl	-130(%ebp),%eax
	shll	$2,%eax
	movl	-44(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-44(%ebp)
	movzwl	-128(%ebp),%eax
	shll	$2,%eax
	movl	-40(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-40(%ebp)
Lj299:
Lj265:
	movl	-12(%ebp),%eax
	shll	$1,%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	movl	%eax,-180(%ebp)
	movl	-180(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj320
	jmp	Lj321
Lj320:
	movl	$0,%eax
	jmp	Lj324
Lj321:
	movl	-180(%ebp),%eax
Lj324:
	movl	%eax,-176(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,-180(%ebp)
	movl	-180(%ebp),%eax
	cmpl	-176(%ebp),%eax
	jl	Lj329
	jmp	Lj330
Lj329:
	movl	-180(%ebp),%eax
	jmp	Lj333
Lj330:
	movl	-176(%ebp),%eax
Lj333:
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-200(%ebp)
	movl	%edx,-196(%ebp)
	movl	-200(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-196(%ebp),%eax
	movl	%eax,-28(%ebp)
	movzwl	-26(%ebp),%eax
	movl	-36(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-36(%ebp)
	movzwl	-32(%ebp),%edx
	movl	-48(%ebp),%eax
	addl	%edx,%eax
	movl	%eax,-48(%ebp)
	movzwl	-30(%ebp),%edx
	movl	-44(%ebp),%eax
	addl	%edx,%eax
	movl	%eax,-44(%ebp)
	movzwl	-28(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-40(%ebp)
	movl	-68(%ebp),%edx
	movl	-36(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-68(%ebp)
	movl	-80(%ebp),%eax
	movl	-48(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-80(%ebp)
	movl	-76(%ebp),%eax
	movl	-44(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-76(%ebp)
	movl	-72(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-72(%ebp)
	movl	-52(%ebp),%eax
	movl	-68(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-52(%ebp)
	movl	-64(%ebp),%eax
	movl	-80(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-64(%ebp)
	movl	-60(%ebp),%eax
	movl	-76(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-60(%ebp)
	movl	-56(%ebp),%eax
	movl	-72(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-56(%ebp)
	movl	-84(%ebp),%eax
	movl	-52(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-84(%ebp)
	movl	-96(%ebp),%eax
	movl	-64(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-96(%ebp)
	movl	-92(%ebp),%eax
	movl	-60(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-92(%ebp)
	movl	-88(%ebp),%eax
	movl	-56(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-88(%ebp)
	movl	-12(%ebp),%edx
	shll	$1,%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	leal	-32(%ebp),%ecx
	leal	-116(%ebp),%eax
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__PUT$LONGINT$TFPCOLOR$stub
	cmpl	-20(%ebp),%esi
	jg	Lj134
Lj133:
	cmpl	-16(%ebp),%ebx
	jg	Lj123
Lj122:
	movl	-152(%ebp),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	-160(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj383
	decl	-20(%ebp)
	.align 2
Lj384:
	incl	-20(%ebp)
	leal	-48(%ebp),%edi
	movl	-204(%ebp),%edx
	movl	L_TC_FPIMGGAUSS_GAUSSIANBLURBINOMINAL4$crcC0E3BAD6_CLEARINTEGERCOLOR$non_lazy_ptr-Lj58(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-64(%ebp),%edi
	movl	-204(%ebp),%edx
	movl	L_TC_FPIMGGAUSS_GAUSSIANBLURBINOMINAL4$crcC0E3BAD6_CLEARINTEGERCOLOR$non_lazy_ptr-Lj58(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-80(%ebp),%edi
	movl	-204(%ebp),%eax
	movl	L_TC_FPIMGGAUSS_GAUSSIANBLURBINOMINAL4$crcC0E3BAD6_CLEARINTEGERCOLOR$non_lazy_ptr-Lj58(%eax),%edx
	movl	%edx,%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-96(%ebp),%edi
	movl	-204(%ebp),%edx
	movl	L_TC_FPIMGGAUSS_GAUSSIANBLURBINOMINAL4$crcC0E3BAD6_CLEARINTEGERCOLOR$non_lazy_ptr-Lj58(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-156(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	-12(%ebp),%eax
	shll	$2,%eax
	movl	-164(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj394
	decl	-16(%ebp)
	.align 2
Lj395:
	incl	-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-164(%ebp),%eax
	jge	Lj396
	jmp	Lj397
Lj396:
	movl	-12(%ebp),%edx
	shll	$1,%edx
	movl	-16(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	leal	-124(%ebp),%ecx
	leal	-116(%ebp),%eax
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__GET$LONGINT$TFPCOLOR$stub
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	leal	-132(%ebp),%ecx
	leal	-116(%ebp),%eax
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__GET$LONGINT$TFPCOLOR$stub
	leal	-140(%ebp),%ecx
	movl	-16(%ebp),%edx
	leal	-116(%ebp),%eax
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__GET$LONGINT$TFPCOLOR$stub
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	leal	-148(%ebp),%ecx
	leal	-116(%ebp),%eax
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__GET$LONGINT$TFPCOLOR$stub
	movzwl	-134(%ebp),%edx
	imull	$6,%edx
	movzwl	-126(%ebp),%eax
	movzwl	-142(%ebp),%ecx
	addl	%ecx,%eax
	movl	%eax,%ecx
	shll	$2,%ecx
	movzwl	-118(%ebp),%edi
	movl	-36(%ebp),%eax
	addl	%edi,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	addl	%ecx,%edx
	movl	%edx,-36(%ebp)
	movzwl	-140(%ebp),%edx
	imull	$6,%edx
	movzwl	-132(%ebp),%eax
	movzwl	-148(%ebp),%ecx
	addl	%ecx,%eax
	movl	%eax,%ecx
	shll	$2,%ecx
	movzwl	-124(%ebp),%eax
	movl	-48(%ebp),%edi
	addl	%eax,%edi
	movl	%edi,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	addl	%ecx,%edx
	movl	%edx,-48(%ebp)
	movzwl	-138(%ebp),%edx
	imull	$6,%edx
	movzwl	-130(%ebp),%ecx
	movzwl	-146(%ebp),%eax
	addl	%eax,%ecx
	shll	$2,%ecx
	movzwl	-122(%ebp),%eax
	movl	-44(%ebp),%edi
	addl	%eax,%edi
	movl	%edi,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	addl	%ecx,%edx
	movl	%edx,-44(%ebp)
	movzwl	-136(%ebp),%edx
	imull	$6,%edx
	movzwl	-128(%ebp),%eax
	movzwl	-144(%ebp),%ecx
	addl	%ecx,%eax
	movl	%eax,%ecx
	shll	$2,%ecx
	movzwl	-120(%ebp),%edi
	movl	-40(%ebp),%eax
	addl	%edi,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	addl	%ecx,%edx
	movl	%edx,-40(%ebp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-200(%ebp)
	movl	%edx,-196(%ebp)
	movl	-200(%ebp),%eax
	movl	%eax,-108(%ebp)
	movl	-196(%ebp),%eax
	movl	%eax,-104(%ebp)
	fildl	-84(%ebp)
	flds	-100(%ebp)
	fmulp	%st,%st(1)
	fistpq	-184(%ebp)
	fwait
	movl	-184(%ebp),%eax
	movl	%eax,-192(%ebp)
	movl	-180(%ebp),%eax
	movl	%eax,-188(%ebp)
	movl	-192(%ebp),%edx
	movl	-188(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj444
	jg	Lj445
	cmpl	$0,%edx
	jb	Lj444
	jmp	Lj445
Lj444:
	movl	$0,%eax
	movl	$0,%edx
	jmp	Lj448
Lj445:
	movl	-192(%ebp),%eax
	movl	-188(%ebp),%edx
Lj448:
	movl	%eax,-200(%ebp)
	movl	%edx,-196(%ebp)
	movl	-200(%ebp),%eax
	movl	-196(%ebp),%edx
	cmpl	$0,%edx
	jg	Lj451
	jl	Lj452
	cmpl	$65535,%eax
	ja	Lj451
	jmp	Lj452
Lj451:
	movl	$65535,%edx
	movl	$0,%eax
	jmp	Lj455
Lj452:
	movl	-200(%ebp),%edx
	movl	-196(%ebp),%eax
Lj455:
	movw	%dx,-102(%ebp)
	fildl	-96(%ebp)
	flds	-100(%ebp)
	fmulp	%st,%st(1)
	fistpq	-184(%ebp)
	fwait
	movl	-184(%ebp),%eax
	movl	%eax,-192(%ebp)
	movl	-180(%ebp),%eax
	movl	%eax,-188(%ebp)
	movl	-192(%ebp),%eax
	movl	-188(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj464
	jg	Lj465
	cmpl	$0,%eax
	jb	Lj464
	jmp	Lj465
Lj464:
	movl	$0,%eax
	movl	$0,%edx
	jmp	Lj468
Lj465:
	movl	-192(%ebp),%eax
	movl	-188(%ebp),%edx
Lj468:
	movl	%eax,-200(%ebp)
	movl	%edx,-196(%ebp)
	movl	-200(%ebp),%edx
	movl	-196(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj471
	jl	Lj472
	cmpl	$65535,%edx
	ja	Lj471
	jmp	Lj472
Lj471:
	movl	$65535,%eax
	movl	$0,%edx
	jmp	Lj475
Lj472:
	movl	-200(%ebp),%eax
	movl	-196(%ebp),%edx
Lj475:
	movw	%ax,-108(%ebp)
	fildl	-92(%ebp)
	flds	-100(%ebp)
	fmulp	%st,%st(1)
	fistpq	-184(%ebp)
	fwait
	movl	-184(%ebp),%eax
	movl	%eax,-192(%ebp)
	movl	-180(%ebp),%eax
	movl	%eax,-188(%ebp)
	movl	-192(%ebp),%eax
	movl	-188(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj484
	jg	Lj485
	cmpl	$0,%eax
	jb	Lj484
	jmp	Lj485
Lj484:
	movl	$0,%edx
	movl	$0,%eax
	jmp	Lj488
Lj485:
	movl	-192(%ebp),%edx
	movl	-188(%ebp),%eax
Lj488:
	movl	%edx,-200(%ebp)
	movl	%eax,-196(%ebp)
	movl	-200(%ebp),%edx
	movl	-196(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj491
	jl	Lj492
	cmpl	$65535,%edx
	ja	Lj491
	jmp	Lj492
Lj491:
	movl	$65535,%eax
	movl	$0,%edx
	jmp	Lj495
Lj492:
	movl	-200(%ebp),%eax
	movl	-196(%ebp),%edx
Lj495:
	movw	%ax,-106(%ebp)
	fildl	-88(%ebp)
	flds	-100(%ebp)
	fmulp	%st,%st(1)
	fistpq	-184(%ebp)
	fwait
	movl	-184(%ebp),%eax
	movl	%eax,-192(%ebp)
	movl	-180(%ebp),%eax
	movl	%eax,-188(%ebp)
	movl	-192(%ebp),%edx
	movl	-188(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj504
	jg	Lj505
	cmpl	$0,%edx
	jb	Lj504
	jmp	Lj505
Lj504:
	movl	$0,%eax
	movl	$0,%edx
	jmp	Lj508
Lj505:
	movl	-192(%ebp),%eax
	movl	-188(%ebp),%edx
Lj508:
	movl	%eax,-200(%ebp)
	movl	%edx,-196(%ebp)
	movl	-200(%ebp),%eax
	movl	-196(%ebp),%edx
	cmpl	$0,%edx
	jg	Lj511
	jl	Lj512
	cmpl	$65535,%eax
	ja	Lj511
	jmp	Lj512
Lj511:
	movl	$65535,%eax
	movl	$0,%edx
	jmp	Lj515
Lj512:
	movl	-200(%ebp),%eax
	movl	-196(%ebp),%edx
Lj515:
	movw	%ax,-104(%ebp)
	leal	-108(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	jmp	Lj526
Lj397:
	movl	-12(%ebp),%edx
	imull	$3,%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	cmpl	-164(%ebp),%edx
	jge	Lj527
	jmp	Lj528
Lj527:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	leal	-148(%ebp),%ecx
	leal	-116(%ebp),%eax
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__GET$LONGINT$TFPCOLOR$stub
	movzwl	-142(%ebp),%eax
	shll	$2,%eax
	movl	-36(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-36(%ebp)
	movzwl	-148(%ebp),%eax
	shll	$2,%eax
	movl	-48(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-48(%ebp)
	movzwl	-146(%ebp),%eax
	shll	$2,%eax
	movl	-44(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-44(%ebp)
	movzwl	-144(%ebp),%eax
	shll	$2,%eax
	movl	-40(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-40(%ebp)
Lj528:
	movl	-12(%ebp),%eax
	shll	$1,%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	cmpl	-164(%ebp),%eax
	jge	Lj543
	jmp	Lj544
Lj543:
	leal	-140(%ebp),%ecx
	movl	-16(%ebp),%edx
	leal	-116(%ebp),%eax
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__GET$LONGINT$TFPCOLOR$stub
	movzwl	-134(%ebp),%eax
	imull	$6,%eax
	movl	-36(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-36(%ebp)
	movzwl	-140(%ebp),%eax
	imull	$6,%eax
	movl	-48(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-48(%ebp)
	movzwl	-138(%ebp),%edx
	imull	$6,%edx
	movl	-44(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-44(%ebp)
	movzwl	-136(%ebp),%eax
	imull	$6,%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-40(%ebp)
Lj544:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	cmpl	-164(%ebp),%eax
	jge	Lj559
	jmp	Lj560
Lj559:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	leal	-132(%ebp),%ecx
	leal	-116(%ebp),%eax
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__GET$LONGINT$TFPCOLOR$stub
	movzwl	-126(%ebp),%eax
	shll	$2,%eax
	movl	-36(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-36(%ebp)
	movzwl	-132(%ebp),%eax
	shll	$2,%eax
	movl	-48(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-48(%ebp)
	movzwl	-130(%ebp),%eax
	shll	$2,%eax
	movl	-44(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-44(%ebp)
	movzwl	-128(%ebp),%eax
	shll	$2,%eax
	movl	-40(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-40(%ebp)
Lj560:
Lj526:
	movl	-12(%ebp),%eax
	shll	$1,%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	movl	%eax,-180(%ebp)
	movl	-180(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj581
	jmp	Lj582
Lj581:
	movl	$0,%eax
	jmp	Lj585
Lj582:
	movl	-180(%ebp),%eax
Lj585:
	movl	%eax,-176(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	decl	%eax
	movl	%eax,-180(%ebp)
	movl	-180(%ebp),%eax
	cmpl	-176(%ebp),%eax
	jl	Lj590
	jmp	Lj591
Lj590:
	movl	-180(%ebp),%eax
	jmp	Lj594
Lj591:
	movl	-176(%ebp),%eax
Lj594:
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-200(%ebp)
	movl	%edx,-196(%ebp)
	movl	-200(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-196(%ebp),%eax
	movl	%eax,-28(%ebp)
	movzwl	-26(%ebp),%eax
	movl	-36(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-36(%ebp)
	movzwl	-32(%ebp),%eax
	movl	-48(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-48(%ebp)
	movzwl	-30(%ebp),%eax
	movl	-44(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-44(%ebp)
	movzwl	-28(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	%edx,%eax
	movl	%eax,-40(%ebp)
	movl	-68(%ebp),%eax
	movl	-36(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-68(%ebp)
	movl	-80(%ebp),%eax
	movl	-48(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-80(%ebp)
	movl	-76(%ebp),%eax
	movl	-44(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-76(%ebp)
	movl	-72(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-72(%ebp)
	movl	-52(%ebp),%edx
	movl	-68(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-52(%ebp)
	movl	-64(%ebp),%eax
	movl	-80(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-64(%ebp)
	movl	-60(%ebp),%eax
	movl	-76(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-60(%ebp)
	movl	-56(%ebp),%eax
	movl	-72(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-56(%ebp)
	movl	-84(%ebp),%eax
	movl	-52(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-84(%ebp)
	movl	-96(%ebp),%eax
	movl	-64(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-96(%ebp)
	movl	-92(%ebp),%eax
	movl	-60(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-92(%ebp)
	movl	-88(%ebp),%eax
	movl	-56(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-88(%ebp)
	movl	-12(%ebp),%edx
	shll	$1,%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	leal	-32(%ebp),%ecx
	leal	-116(%ebp),%eax
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__PUT$LONGINT$TFPCOLOR$stub
	cmpl	-16(%ebp),%esi
	jg	Lj395
Lj394:
	cmpl	-20(%ebp),%ebx
	jg	Lj384
Lj383:
	leal	-116(%ebp),%eax
	call	L_FPIMGGAUSS_TINTRINGBUFFER_$__CLEAR$stub
Lj57:
	movl	-216(%ebp),%ebx
	movl	-212(%ebp),%esi
	movl	-208(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPIMGGAUSS_GAUSSIANBLUR$TFPCUSTOMIMAGE$LONGINT$TRECT
_FPIMGGAUSS_GAUSSIANBLUR$TFPCUSTOMIMAGE$LONGINT$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%esi
	leal	-32(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj647
	jmp	Lj648
Lj647:
	jmp	Lj645
Lj648:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj651
	jmp	Lj652
Lj651:
	movl	$0,%eax
	jmp	Lj655
Lj652:
	movl	-32(%ebp),%eax
Lj655:
	movl	%eax,-32(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj660
	jmp	Lj661
Lj660:
	movl	$0,%eax
	jmp	Lj664
Lj661:
	movl	-28(%ebp),%eax
Lj664:
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-24(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj671
	jmp	Lj672
Lj671:
	movl	-24(%ebp),%eax
	jmp	Lj675
Lj672:
	movl	-12(%ebp),%eax
Lj675:
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj682
	jmp	Lj683
Lj682:
	movl	-20(%ebp),%eax
	jmp	Lj686
Lj683:
	movl	-12(%ebp),%eax
Lj686:
	movl	%eax,-20(%ebp)
	movl	-32(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jge	Lj689
	jmp	Lj691
Lj691:
	movl	-28(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jge	Lj689
	jmp	Lj690
Lj689:
	jmp	Lj645
Lj690:
	movl	-8(%ebp),%eax
	call	L_FPIMGGAUSS_COMPUTEGAUSSIANBLURMATRIX1D$LONGINT$$PWORD$stub
	movl	%eax,-16(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-12(%ebp)
	testl	%eax,%eax
	jne	Lj696
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	leal	-32(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMGGAUSS_MATRIXBLUR1D$TFPCUSTOMIMAGE$LONGINT$TRECT$PWORD$stub
Lj696:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj697
	decl	%eax
	testl	%eax,%eax
	je	Lj698
Lj698:
	call	LFPC_RERAISE$stub
Lj697:
Lj645:
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPIMGGAUSS_MATRIXBLUR1D$TFPCUSTOMIMAGE$LONGINT$TRECT$PWORD
_FPIMGGAUSS_MATRIXBLUR1D$TFPCUSTOMIMAGE$LONGINT$TRECT$PWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$184,%esp
	movl	%ebx,-176(%ebp)
	movl	%esi,-172(%ebp)
	movl	%edi,-168(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%esi
	leal	-112(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj712
	jmp	Lj713
Lj712:
	jmp	Lj710
Lj713:
	movl	-112(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj716
	jmp	Lj717
Lj716:
	movl	$0,%eax
	jmp	Lj720
Lj717:
	movl	-112(%ebp),%eax
Lj720:
	movl	%eax,-112(%ebp)
	movl	-108(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj725
	jmp	Lj726
Lj725:
	movl	$0,%eax
	jmp	Lj729
Lj726:
	movl	-108(%ebp),%eax
Lj729:
	movl	%eax,-108(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-104(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj736
	jmp	Lj737
Lj736:
	movl	-104(%ebp),%eax
	jmp	Lj740
Lj737:
	movl	-12(%ebp),%eax
Lj740:
	movl	%eax,-104(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-100(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj747
	jmp	Lj748
Lj747:
	movl	-100(%ebp),%eax
	jmp	Lj751
Lj748:
	movl	-12(%ebp),%eax
Lj751:
	movl	%eax,-100(%ebp)
	movl	-112(%ebp),%eax
	cmpl	-104(%ebp),%eax
	jge	Lj754
	jmp	Lj756
Lj756:
	movl	-108(%ebp),%eax
	cmpl	-100(%ebp),%eax
	jge	Lj754
	jmp	Lj755
Lj754:
	jmp	Lj710
Lj755:
	movl	$0,-32(%ebp)
	movl	$0,-36(%ebp)
	leal	-124(%ebp),%ecx
	leal	-148(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-12(%ebp)
	testl	%eax,%eax
	jne	Lj761
	movl	-104(%ebp),%eax
	movl	-112(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	incl	%eax
	movl	%eax,-28(%ebp)
	movl	-24(%ebp),%edx
	movl	-28(%ebp),%eax
	imull	%eax,%edx
	shll	$3,%edx
	leal	-32(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-108(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	negl	%eax
	movl	%eax,-56(%ebp)
	cmpl	$0,-56(%ebp)
	jg	Lj776
	decl	-56(%ebp)
	.align 2
Lj777:
	incl	-56(%ebp)
	movl	-16(%ebp),%eax
	movl	-56(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-152(%ebp)
	movl	-152(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj782
	jmp	Lj783
Lj782:
	movl	$0,%eax
	jmp	Lj786
Lj783:
	movl	-152(%ebp),%eax
Lj786:
	movl	%eax,-68(%ebp)
	movl	-104(%ebp),%ebx
	decl	%ebx
	movl	-112(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj790
	decl	-20(%ebp)
	.align 2
Lj791:
	incl	-20(%ebp)
	movl	-68(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-160(%ebp)
	movl	%edx,-156(%ebp)
	movl	-32(%ebp),%edx
	movl	-56(%ebp),%ecx
	movl	-8(%ebp),%eax
	addl	%eax,%ecx
	movl	-24(%ebp),%eax
	imull	%eax,%ecx
	movl	-20(%ebp),%esi
	movl	-112(%ebp),%eax
	subl	%eax,%esi
	addl	%esi,%ecx
	movl	-160(%ebp),%eax
	movl	%eax,(%edx,%ecx,8)
	movl	-156(%ebp),%eax
	movl	%eax,4(%edx,%ecx,8)
	cmpl	-20(%ebp),%ebx
	jg	Lj791
Lj790:
	cmpl	$0,-56(%ebp)
	jl	Lj777
Lj776:
	movl	-8(%ebp),%edx
	shll	$1,%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	shll	$3,%edx
	leal	-36(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-100(%ebp),%eax
	decl	%eax
	movl	%eax,-164(%ebp)
	movl	-108(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-164(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jl	Lj805
	decl	-16(%ebp)
	.align 2
Lj806:
	incl	-16(%ebp)
	movl	-28(%ebp),%ecx
	decl	%ecx
	movl	-24(%ebp),%eax
	imull	%eax,%ecx
	shll	$3,%ecx
	movl	-32(%ebp),%eax
	movl	-24(%ebp),%edx
	leal	(%eax,%edx,8),%eax
	movl	-32(%ebp),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-104(%ebp),%ebx
	decl	%ebx
	movl	-112(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj814
	decl	-20(%ebp)
	.align 2
Lj815:
	incl	-20(%ebp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-160(%ebp)
	movl	%edx,-156(%ebp)
	movl	-32(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-24(%ebp),%eax
	imull	%eax,%ecx
	movl	-20(%ebp),%eax
	movl	-112(%ebp),%esi
	subl	%esi,%eax
	addl	%eax,%ecx
	movl	-160(%ebp),%eax
	movl	%eax,(%edx,%ecx,8)
	movl	-156(%ebp),%eax
	movl	%eax,4(%edx,%ecx,8)
	cmpl	-20(%ebp),%ebx
	jg	Lj815
Lj814:
	movl	-112(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-92(%ebp)
	movl	-104(%ebp),%eax
	decl	%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-96(%ebp)
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj829
	decl	-20(%ebp)
	.align 2
Lj830:
	incl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	decl	%eax
	movl	%eax,-152(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj837
	jmp	Lj838
Lj837:
	movl	$0,%eax
	jmp	Lj841
Lj838:
	movl	-20(%ebp),%eax
Lj841:
	movl	%eax,-156(%ebp)
	movl	-156(%ebp),%eax
	cmpl	-152(%ebp),%eax
	jl	Lj844
	jmp	Lj845
Lj844:
	movl	-156(%ebp),%eax
	jmp	Lj848
Lj845:
	movl	-152(%ebp),%eax
Lj848:
	movl	%eax,-64(%ebp)
	movl	$0,-40(%ebp)
	movl	$0,-44(%ebp)
	movl	$0,-48(%ebp)
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%esi
	movl	-8(%ebp),%eax
	negl	%eax
	movl	%eax,-56(%ebp)
	cmpl	-56(%ebp),%esi
	jl	Lj860
	decl	-56(%ebp)
	.align 2
Lj861:
	incl	-56(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,-152(%ebp)
	movl	-16(%ebp),%edx
	movl	-56(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-160(%ebp)
	movl	-160(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj870
	jmp	Lj871
Lj870:
	movl	$0,%eax
	jmp	Lj874
Lj871:
	movl	-160(%ebp),%eax
Lj874:
	movl	%eax,-156(%ebp)
	movl	-156(%ebp),%eax
	cmpl	-152(%ebp),%eax
	jl	Lj877
	jmp	Lj878
Lj877:
	movl	-156(%ebp),%eax
	jmp	Lj881
Lj878:
	movl	-152(%ebp),%eax
Lj881:
	movl	%eax,-68(%ebp)
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj887
	jmp	Lj885
Lj887:
	movl	-64(%ebp),%eax
	cmpl	-112(%ebp),%eax
	jge	Lj886
	jmp	Lj885
Lj886:
	movl	-64(%ebp),%eax
	cmpl	-104(%ebp),%eax
	jl	Lj884
	jmp	Lj885
Lj884:
	movl	-32(%ebp),%ecx
	movl	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	-24(%ebp),%eax
	imull	%eax,%edx
	movl	-64(%ebp),%eax
	movl	-112(%ebp),%edi
	subl	%edi,%eax
	addl	%eax,%edx
	movl	%edx,%eax
	movl	(%ecx,%eax,8),%edx
	movl	%edx,-76(%ebp)
	movl	4(%ecx,%eax,8),%eax
	movl	%eax,-72(%ebp)
	jmp	Lj890
Lj885:
	movl	-68(%ebp),%ecx
	movl	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-160(%ebp)
	movl	%edx,-156(%ebp)
	movl	-160(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	-156(%ebp),%eax
	movl	%eax,-72(%ebp)
Lj890:
	movl	8(%ebp),%ecx
	movl	-56(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movw	(%ecx,%eax,2),%ax
	movw	%ax,-86(%ebp)
	movzwl	-76(%ebp),%edx
	movzwl	-86(%ebp),%eax
	mull	%edx
	addl	%eax,-40(%ebp)
	movzwl	-74(%ebp),%edx
	movzwl	-86(%ebp),%eax
	mull	%edx
	addl	%eax,-44(%ebp)
	movzwl	-72(%ebp),%edx
	movzwl	-86(%ebp),%eax
	mull	%edx
	addl	%eax,-48(%ebp)
	movzwl	-70(%ebp),%edx
	movzwl	-86(%ebp),%eax
	mull	%edx
	addl	%eax,-52(%ebp)
	cmpl	-56(%ebp),%esi
	jg	Lj861
Lj860:
	movl	-40(%ebp),%eax
	shrl	$16,%eax
	movw	%ax,-84(%ebp)
	movl	-44(%ebp),%eax
	shrl	$16,%eax
	movw	%ax,-82(%ebp)
	movl	-48(%ebp),%eax
	shrl	$16,%eax
	movw	%ax,-80(%ebp)
	movl	-52(%ebp),%eax
	shrl	$16,%eax
	movw	%ax,-78(%ebp)
	movl	-36(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	-92(%ebp),%eax
	subl	%eax,%ecx
	movl	-84(%ebp),%eax
	movl	%eax,(%edx,%ecx,8)
	movl	-80(%ebp),%eax
	movl	%eax,4(%edx,%ecx,8)
	cmpl	-20(%ebp),%ebx
	jg	Lj830
Lj829:
	movl	-104(%ebp),%ebx
	decl	%ebx
	movl	-112(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj912
	decl	-20(%ebp)
	.align 2
Lj913:
	incl	-20(%ebp)
	movl	$0,-40(%ebp)
	movl	$0,-44(%ebp)
	movl	$0,-48(%ebp)
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%ecx
	movl	-8(%ebp),%eax
	negl	%eax
	movl	%eax,-60(%ebp)
	cmpl	-60(%ebp),%ecx
	jl	Lj923
	decl	-60(%ebp)
	.align 2
Lj924:
	incl	-60(%ebp)
	movl	-20(%ebp),%edx
	movl	-60(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-64(%ebp)
	movl	-36(%ebp),%eax
	movl	-64(%ebp),%esi
	movl	-92(%ebp),%edx
	subl	%edx,%esi
	movl	(%eax,%esi,8),%edx
	movl	%edx,-76(%ebp)
	movl	4(%eax,%esi,8),%eax
	movl	%eax,-72(%ebp)
	movl	8(%ebp),%edx
	movl	-60(%ebp),%esi
	movl	-8(%ebp),%eax
	addl	%eax,%esi
	movw	(%edx,%esi,2),%ax
	movw	%ax,-86(%ebp)
	movzwl	-76(%ebp),%edx
	movzwl	-86(%ebp),%eax
	mull	%edx
	addl	%eax,-40(%ebp)
	movzwl	-74(%ebp),%edx
	movzwl	-86(%ebp),%eax
	mull	%edx
	addl	%eax,-44(%ebp)
	movzwl	-72(%ebp),%edx
	movzwl	-86(%ebp),%eax
	mull	%edx
	addl	%eax,-48(%ebp)
	movzwl	-70(%ebp),%edx
	movzwl	-86(%ebp),%eax
	mull	%edx
	addl	%eax,-52(%ebp)
	cmpl	-60(%ebp),%ecx
	jg	Lj924
Lj923:
	movl	-40(%ebp),%eax
	shrl	$16,%eax
	movw	%ax,-84(%ebp)
	movl	-44(%ebp),%eax
	shrl	$16,%eax
	movw	%ax,-82(%ebp)
	movl	-48(%ebp),%eax
	shrl	$16,%eax
	movw	%ax,-80(%ebp)
	movl	-52(%ebp),%eax
	shrl	$16,%eax
	movw	%ax,-78(%ebp)
	leal	-84(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	cmpl	-20(%ebp),%ebx
	jg	Lj913
Lj912:
	movl	-164(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj806
Lj805:
Lj761:
	call	LFPC_POPADDRSTACK$stub
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj947
	jmp	Lj948
Lj947:
	movl	-32(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj948:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj951
	jmp	Lj952
Lj951:
	movl	-36(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj952:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj762
	decl	%eax
	testl	%eax,%eax
	je	Lj763
Lj763:
	call	LFPC_RERAISE$stub
Lj762:
Lj710:
	movl	-176(%ebp),%ebx
	movl	-172(%ebp),%esi
	movl	-168(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPIMGGAUSS_MATRIXBLUR2D$TFPCUSTOMIMAGE$LONGINT$TRECT$PWORD
_FPIMGGAUSS_MATRIXBLUR2D$TFPCUSTOMIMAGE$LONGINT$TRECT$PWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$184,%esp
	movl	%ebx,-172(%ebp)
	movl	%esi,-168(%ebp)
	movl	%edi,-164(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%esi
	leal	-104(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj957
	jmp	Lj958
Lj957:
	jmp	Lj955
Lj958:
	movl	-104(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj961
	jmp	Lj962
Lj961:
	movl	$0,%eax
	jmp	Lj965
Lj962:
	movl	-104(%ebp),%eax
Lj965:
	movl	%eax,-104(%ebp)
	movl	-100(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj970
	jmp	Lj971
Lj970:
	movl	$0,%eax
	jmp	Lj974
Lj971:
	movl	-100(%ebp),%eax
Lj974:
	movl	%eax,-100(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-96(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj981
	jmp	Lj982
Lj981:
	movl	-96(%ebp),%eax
	jmp	Lj985
Lj982:
	movl	-12(%ebp),%eax
Lj985:
	movl	%eax,-96(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-92(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj992
	jmp	Lj993
Lj992:
	movl	-92(%ebp),%eax
	jmp	Lj996
Lj993:
	movl	-12(%ebp),%eax
Lj996:
	movl	%eax,-92(%ebp)
	movl	-104(%ebp),%eax
	cmpl	-96(%ebp),%eax
	jge	Lj999
	jmp	Lj1001
Lj1001:
	movl	-100(%ebp),%eax
	cmpl	-92(%ebp),%eax
	jge	Lj999
	jmp	Lj1000
Lj999:
	jmp	Lj955
Lj1000:
	movl	-8(%ebp),%eax
	shll	$1,%eax
	incl	%eax
	movl	%eax,-88(%ebp)
	movl	$0,-32(%ebp)
	leal	-116(%ebp),%ecx
	leal	-140(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-12(%ebp)
	testl	%eax,%eax
	jne	Lj1006
	movl	-96(%ebp),%eax
	movl	-104(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	incl	%eax
	movl	%eax,-28(%ebp)
	movl	-24(%ebp),%edx
	movl	-28(%ebp),%eax
	imull	%eax,%edx
	shll	$3,%edx
	leal	-32(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-100(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	negl	%eax
	movl	%eax,-52(%ebp)
	cmpl	$0,-52(%ebp)
	jg	Lj1021
	decl	-52(%ebp)
	.align 2
Lj1022:
	incl	-52(%ebp)
	movl	-16(%ebp),%eax
	movl	-52(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-144(%ebp)
	movl	-144(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1027
	jmp	Lj1028
Lj1027:
	movl	$0,%eax
	jmp	Lj1031
Lj1028:
	movl	-144(%ebp),%eax
Lj1031:
	movl	%eax,-64(%ebp)
	movl	-96(%ebp),%ebx
	decl	%ebx
	movl	-104(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj1035
	decl	-20(%ebp)
	.align 2
Lj1036:
	incl	-20(%ebp)
	movl	-64(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-152(%ebp)
	movl	%edx,-148(%ebp)
	movl	-32(%ebp),%edx
	movl	-52(%ebp),%ecx
	movl	-8(%ebp),%eax
	addl	%eax,%ecx
	movl	-24(%ebp),%eax
	imull	%eax,%ecx
	movl	-20(%ebp),%esi
	movl	-104(%ebp),%eax
	subl	%eax,%esi
	addl	%esi,%ecx
	movl	-152(%ebp),%eax
	movl	%eax,(%edx,%ecx,8)
	movl	-148(%ebp),%eax
	movl	%eax,4(%edx,%ecx,8)
	cmpl	-20(%ebp),%ebx
	jg	Lj1036
Lj1035:
	cmpl	$0,-52(%ebp)
	jl	Lj1022
Lj1021:
	movl	-92(%ebp),%eax
	decl	%eax
	movl	%eax,-160(%ebp)
	movl	-100(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-160(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jl	Lj1046
	decl	-16(%ebp)
	.align 2
Lj1047:
	incl	-16(%ebp)
	movl	-28(%ebp),%ecx
	decl	%ecx
	movl	-24(%ebp),%eax
	imull	%eax,%ecx
	shll	$3,%ecx
	movl	-32(%ebp),%eax
	movl	-24(%ebp),%edx
	leal	(%eax,%edx,8),%eax
	movl	-32(%ebp),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-96(%ebp),%ebx
	decl	%ebx
	movl	-104(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj1055
	decl	-20(%ebp)
	.align 2
Lj1056:
	incl	-20(%ebp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-152(%ebp)
	movl	%edx,-148(%ebp)
	movl	-32(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-24(%ebp),%eax
	imull	%eax,%ecx
	movl	-20(%ebp),%eax
	movl	-104(%ebp),%esi
	subl	%esi,%eax
	addl	%eax,%ecx
	movl	-152(%ebp),%eax
	movl	%eax,(%edx,%ecx,8)
	movl	-148(%ebp),%eax
	movl	%eax,4(%edx,%ecx,8)
	cmpl	-20(%ebp),%ebx
	jg	Lj1056
Lj1055:
	movl	-96(%ebp),%eax
	decl	%eax
	movl	%eax,-156(%ebp)
	movl	-104(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-156(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj1066
	decl	-20(%ebp)
	.align 2
Lj1067:
	incl	-20(%ebp)
	movl	$0,-36(%ebp)
	movl	$0,-40(%ebp)
	movl	$0,-44(%ebp)
	movl	$0,-48(%ebp)
	movl	-8(%ebp),%ebx
	movl	-8(%ebp),%eax
	negl	%eax
	movl	%eax,-52(%ebp)
	cmpl	-52(%ebp),%ebx
	jl	Lj1077
	decl	-52(%ebp)
	.align 2
Lj1078:
	incl	-52(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,-144(%ebp)
	movl	-16(%ebp),%eax
	movl	-52(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-152(%ebp)
	movl	-152(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1087
	jmp	Lj1088
Lj1087:
	movl	$0,%eax
	jmp	Lj1091
Lj1088:
	movl	-152(%ebp),%eax
Lj1091:
	movl	%eax,-148(%ebp)
	movl	-148(%ebp),%eax
	cmpl	-144(%ebp),%eax
	jl	Lj1094
	jmp	Lj1095
Lj1094:
	movl	-148(%ebp),%eax
	jmp	Lj1098
Lj1095:
	movl	-144(%ebp),%eax
Lj1098:
	movl	%eax,-64(%ebp)
	movl	-8(%ebp),%esi
	movl	-8(%ebp),%eax
	negl	%eax
	movl	%eax,-56(%ebp)
	cmpl	-56(%ebp),%esi
	jl	Lj1102
	decl	-56(%ebp)
	.align 2
Lj1103:
	incl	-56(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	decl	%eax
	movl	%eax,-144(%ebp)
	movl	-20(%ebp),%eax
	movl	-56(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-152(%ebp)
	movl	-152(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1112
	jmp	Lj1113
Lj1112:
	movl	$0,%eax
	jmp	Lj1116
Lj1113:
	movl	-152(%ebp),%eax
Lj1116:
	movl	%eax,-148(%ebp)
	movl	-148(%ebp),%eax
	cmpl	-144(%ebp),%eax
	jl	Lj1119
	jmp	Lj1120
Lj1119:
	movl	-148(%ebp),%eax
	jmp	Lj1123
Lj1120:
	movl	-144(%ebp),%eax
Lj1123:
	movl	%eax,-60(%ebp)
	movl	-52(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj1129
	jmp	Lj1127
Lj1129:
	movl	-60(%ebp),%eax
	cmpl	-104(%ebp),%eax
	jge	Lj1128
	jmp	Lj1127
Lj1128:
	movl	-60(%ebp),%eax
	cmpl	-96(%ebp),%eax
	jl	Lj1126
	jmp	Lj1127
Lj1126:
	movl	-32(%ebp),%edx
	movl	-52(%ebp),%ecx
	movl	-8(%ebp),%eax
	addl	%eax,%ecx
	movl	-24(%ebp),%eax
	imull	%eax,%ecx
	movl	-60(%ebp),%edi
	movl	-104(%ebp),%eax
	subl	%eax,%edi
	addl	%edi,%ecx
	movl	(%edx,%ecx,8),%eax
	movl	%eax,-72(%ebp)
	movl	4(%edx,%ecx,8),%eax
	movl	%eax,-68(%ebp)
	jmp	Lj1132
Lj1127:
	movl	-64(%ebp),%ecx
	movl	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-152(%ebp)
	movl	%edx,-148(%ebp)
	movl	-152(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	-148(%ebp),%eax
	movl	%eax,-68(%ebp)
Lj1132:
	movl	8(%ebp),%edx
	movl	-52(%ebp),%ecx
	movl	-8(%ebp),%eax
	addl	%eax,%ecx
	movl	-88(%ebp),%eax
	imull	%eax,%ecx
	movl	-56(%ebp),%edi
	movl	-8(%ebp),%eax
	addl	%eax,%edi
	addl	%edi,%ecx
	movl	%ecx,%eax
	movw	(%edx,%eax,2),%ax
	movw	%ax,-82(%ebp)
	movzwl	-72(%ebp),%edx
	movzwl	-82(%ebp),%eax
	mull	%edx
	addl	%eax,-36(%ebp)
	movzwl	-70(%ebp),%edx
	movzwl	-82(%ebp),%eax
	mull	%edx
	addl	%eax,-40(%ebp)
	movzwl	-68(%ebp),%edx
	movzwl	-82(%ebp),%eax
	mull	%edx
	addl	%eax,-44(%ebp)
	movzwl	-66(%ebp),%edx
	movzwl	-82(%ebp),%eax
	mull	%edx
	addl	%eax,-48(%ebp)
	cmpl	-56(%ebp),%esi
	jg	Lj1103
Lj1102:
	cmpl	-52(%ebp),%ebx
	jg	Lj1078
Lj1077:
	movl	-36(%ebp),%eax
	shrl	$16,%eax
	movw	%ax,-80(%ebp)
	movl	-40(%ebp),%eax
	shrl	$16,%eax
	movw	%ax,-78(%ebp)
	movl	-44(%ebp),%eax
	shrl	$16,%eax
	movw	%ax,-76(%ebp)
	movl	-48(%ebp),%eax
	shrl	$16,%eax
	movw	%ax,-74(%ebp)
	leal	-80(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	movl	-156(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj1067
Lj1066:
	movl	-160(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj1047
Lj1046:
Lj1006:
	call	LFPC_POPADDRSTACK$stub
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1159
	jmp	Lj1160
Lj1159:
	movl	-32(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj1160:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1007
	decl	%eax
	testl	%eax,%eax
	je	Lj1008
Lj1008:
	call	LFPC_RERAISE$stub
Lj1007:
Lj955:
	movl	-172(%ebp),%ebx
	movl	-168(%ebp),%esi
	movl	-164(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPIMGGAUSS_COMPUTEGAUSSIANBLURMATRIX1D$LONGINT$$PWORD
_FPIMGGAUSS_COMPUTEGAUSSIANBLURMATRIX1D$LONGINT$$PWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj1164
Lj1164:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	shll	$1,%eax
	incl	%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	shll	$1,%eax
	movl	-12(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	-16(%ebp),%edx
	leal	-20(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-20(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub
	fildl	-4(%ebp)
	movl	L_$FPIMGGAUSS$_Ld1$non_lazy_ptr-Lj1164(%ebx),%eax
	flds	(%eax)
	fdivrp	%st,%st(1)
	fstps	-24(%ebp)
	fldpi
	movl	L_$FPIMGGAUSS$_Ld2$non_lazy_ptr-Lj1164(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	flds	-24(%ebp)
	fmulp	%st,%st(1)
	flds	-24(%ebp)
	fmulp	%st,%st(1)
	fsqrt
	fld1
	fdivp	%st,%st(1)
	fstps	-28(%ebp)
	flds	-24(%ebp)
	movl	L_$FPIMGGAUSS$_Ld4$non_lazy_ptr-Lj1164(%ebx),%eax
	flds	(%eax)
	fmulp	%st,%st(1)
	flds	-24(%ebp)
	fmulp	%st,%st(1)
	movl	L_$FPIMGGAUSS$_Ld3$non_lazy_ptr-Lj1164(%ebx),%eax
	flds	(%eax)
	fdivp	%st,%st(1)
	fstps	-32(%ebp)
	movl	-4(%ebp),%esi
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%esi
	jl	Lj1190
	decl	-36(%ebp)
	.align 2
Lj1191:
	incl	-36(%ebp)
	movl	-36(%ebp),%edx
	movl	-36(%ebp),%eax
	imull	%eax,%edx
	movl	%edx,-52(%ebp)
	fildl	-52(%ebp)
	flds	-32(%ebp)
	fmulp	%st,%st(1)
	fstpt	(%esp)
	call	Lfpc_exp_real$stub
	flds	-28(%ebp)
	fmulp	%st,%st(1)
	fstps	-48(%ebp)
	movl	L_$FPIMGGAUSS$_Ld5$non_lazy_ptr-Lj1164(%ebx),%eax
	flds	(%eax)
	flds	-48(%ebp)
	fmulp	%st,%st(1)
	fstpt	(%esp)
	call	L_MATH_FLOOR$EXTENDED$$LONGINT$stub
	movl	%eax,-40(%ebp)
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%ecx
	addl	%ecx,%eax
	movw	-40(%ebp),%cx
	movw	%cx,(%edx,%eax,2)
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%ecx
	subl	%ecx,%eax
	movw	-40(%ebp),%cx
	movw	%cx,(%edx,%eax,2)
	cmpl	-36(%ebp),%esi
	jg	Lj1191
Lj1190:
	movl	$0,-44(%ebp)
	movl	-12(%ebp),%eax
	decl	%eax
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%eax
	jl	Lj1207
	decl	-36(%ebp)
	.align 2
Lj1208:
	incl	-36(%ebp)
	movl	-20(%ebp),%edx
	movl	-36(%ebp),%ecx
	movzwl	(%edx,%ecx,2),%edx
	addl	%edx,-44(%ebp)
	cmpl	-36(%ebp),%eax
	jg	Lj1208
Lj1207:
	movl	-44(%ebp),%edx
	movl	$65536,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-20(%ebp),%eax
	movl	-4(%ebp),%ecx
	movzwl	(%eax,%ecx,2),%eax
	addl	%eax,%edx
	movl	%edx,-52(%ebp)
	movl	-52(%ebp),%eax
	cmpl	$65535,%eax
	jg	Lj1213
	jmp	Lj1214
Lj1213:
	movl	$65535,%eax
	jmp	Lj1217
Lj1214:
	movl	-52(%ebp),%eax
Lj1217:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%ecx
	movw	%ax,(%edx,%ecx,2)
	movl	-8(%ebp),%eax
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMGGAUSS_COMPUTEGAUSSIANBLURMATRIX2D$LONGINT$$PWORD
_FPIMGGAUSS_COMPUTEGAUSSIANBLURMATRIX2D$LONGINT$$PWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-84(%ebp)
	movl	%esi,-80(%ebp)
	movl	%edi,-76(%ebp)
	call	Lj1221
Lj1221:
	popl	-72(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	shll	$1,%eax
	incl	%eax
	movl	%eax,-60(%ebp)
	movl	-60(%ebp),%eax
	shll	$1,%eax
	movl	-60(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	$0,-12(%ebp)
	movl	-16(%ebp),%edx
	leal	-12(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub
	fildl	-4(%ebp)
	movl	-72(%ebp),%edx
	movl	L_$FPIMGGAUSS$_Ld1$non_lazy_ptr-Lj1221(%edx),%eax
	flds	(%eax)
	fdivrp	%st,%st(1)
	fstps	-20(%ebp)
	fldpi
	movl	-72(%ebp),%edx
	movl	L_$FPIMGGAUSS$_Ld2$non_lazy_ptr-Lj1221(%edx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	flds	-20(%ebp)
	fmulp	%st,%st(1)
	flds	-20(%ebp)
	fmulp	%st,%st(1)
	fld1
	fdivp	%st,%st(1)
	fstps	-24(%ebp)
	flds	-20(%ebp)
	movl	-72(%ebp),%edx
	movl	L_$FPIMGGAUSS$_Ld4$non_lazy_ptr-Lj1221(%edx),%eax
	flds	(%eax)
	fmulp	%st,%st(1)
	flds	-20(%ebp)
	fmulp	%st,%st(1)
	movl	-72(%ebp),%edx
	movl	L_$FPIMGGAUSS$_Ld3$non_lazy_ptr-Lj1221(%edx),%eax
	flds	(%eax)
	fdivp	%st,%st(1)
	fstps	-28(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$0,-36(%ebp)
	movl	-68(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jl	Lj1247
	decl	-36(%ebp)
	.align 2
Lj1248:
	incl	-36(%ebp)
	movl	-4(%ebp),%edx
	movl	-36(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-44(%ebp)
	movl	-44(%ebp),%eax
	movl	-44(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,-44(%ebp)
	movl	-4(%ebp),%ebx
	movl	-36(%ebp),%eax
	movl	%eax,-40(%ebp)
	cmpl	-40(%ebp),%ebx
	jl	Lj1254
	decl	-40(%ebp)
	.align 2
Lj1255:
	incl	-40(%ebp)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-48(%ebp)
	movl	-48(%ebp),%edx
	movl	-48(%ebp),%eax
	imull	%eax,%edx
	movl	%edx,-48(%ebp)
	fildl	-48(%ebp)
	fildl	-44(%ebp)
	faddp	%st,%st(1)
	flds	-28(%ebp)
	fmulp	%st,%st(1)
	fstpt	(%esp)
	call	Lfpc_exp_real$stub
	flds	-24(%ebp)
	fmulp	%st,%st(1)
	fstps	-32(%ebp)
	movl	-72(%ebp),%edx
	movl	L_$FPIMGGAUSS$_Ld5$non_lazy_ptr-Lj1221(%edx),%eax
	flds	(%eax)
	flds	-32(%ebp)
	fmulp	%st,%st(1)
	fstpt	(%esp)
	call	L_MATH_FLOOR$EXTENDED$$LONGINT$stub
	movw	%ax,-54(%ebp)
	movl	-12(%ebp),%edx
	movl	-36(%ebp),%ecx
	movl	-60(%ebp),%eax
	imull	%eax,%ecx
	movl	-40(%ebp),%eax
	addl	%eax,%ecx
	movw	-54(%ebp),%ax
	movw	%ax,(%edx,%ecx,2)
	movl	-12(%ebp),%edx
	movl	-40(%ebp),%ecx
	movl	-60(%ebp),%eax
	imull	%eax,%ecx
	movl	-36(%ebp),%eax
	addl	%eax,%ecx
	movw	-54(%ebp),%ax
	movw	%ax,(%edx,%ecx,2)
	cmpl	-40(%ebp),%ebx
	jg	Lj1255
Lj1254:
	movl	-60(%ebp),%eax
	decl	%eax
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	incl	%eax
	movl	%eax,-40(%ebp)
	cmpl	-40(%ebp),%ecx
	jl	Lj1273
	decl	-40(%ebp)
	.align 2
Lj1274:
	incl	-40(%ebp)
	movl	-12(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-60(%ebp),%eax
	imull	%eax,%esi
	movl	-60(%ebp),%eax
	movl	-40(%ebp),%edx
	subl	%edx,%eax
	decl	%eax
	addl	%eax,%esi
	movl	%esi,%edi
	movl	-12(%ebp),%esi
	movl	-36(%ebp),%edx
	movl	-60(%ebp),%eax
	imull	%eax,%edx
	movl	-40(%ebp),%eax
	addl	%eax,%edx
	movw	(%ebx,%edi,2),%ax
	movw	%ax,(%esi,%edx,2)
	cmpl	-40(%ebp),%ecx
	jg	Lj1274
Lj1273:
	movl	-12(%ebp),%ecx
	movl	-60(%ebp),%edx
	movl	-36(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	-60(%ebp),%eax
	imull	%eax,%edx
	leal	(%ecx,%edx,2),%edx
	movl	-12(%ebp),%ebx
	movl	-36(%ebp),%eax
	movl	-60(%ebp),%ecx
	imull	%ecx,%eax
	leal	(%ebx,%eax,2),%eax
	movl	-60(%ebp),%ecx
	shll	$1,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-68(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jg	Lj1248
Lj1247:
	movl	$0,-52(%ebp)
	movl	-60(%ebp),%esi
	decl	%esi
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%esi
	jl	Lj1286
	decl	-36(%ebp)
	.align 2
Lj1287:
	incl	-36(%ebp)
	movl	-60(%ebp),%eax
	decl	%eax
	movl	$0,-40(%ebp)
	cmpl	-40(%ebp),%eax
	jl	Lj1289
	decl	-40(%ebp)
	.align 2
Lj1290:
	incl	-40(%ebp)
	movl	-12(%ebp),%edx
	movl	-36(%ebp),%ecx
	movl	-60(%ebp),%ebx
	imull	%ebx,%ecx
	movl	-40(%ebp),%ebx
	addl	%ebx,%ecx
	movzwl	(%edx,%ecx,2),%edx
	addl	%edx,-52(%ebp)
	cmpl	-40(%ebp),%eax
	jg	Lj1290
Lj1289:
	cmpl	-36(%ebp),%esi
	jg	Lj1287
Lj1286:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-60(%ebp),%eax
	imull	%eax,%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movzwl	(%ecx,%edx,2),%edx
	movl	-52(%ebp),%ecx
	movl	$65536,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	addl	%ecx,%edx
	movl	%edx,-64(%ebp)
	movl	-64(%ebp),%eax
	cmpl	$65535,%eax
	jg	Lj1295
	jmp	Lj1296
Lj1295:
	movl	$65535,%edx
	jmp	Lj1299
Lj1296:
	movl	-64(%ebp),%edx
Lj1299:
	movl	-12(%ebp),%ebx
	movl	-4(%ebp),%ecx
	movl	-60(%ebp),%eax
	imull	%eax,%ecx
	movl	-4(%ebp),%eax
	addl	%eax,%ecx
	movw	%dx,(%ebx,%ecx,2)
	movl	-8(%ebp),%eax
	movl	-84(%ebp),%ebx
	movl	-80(%ebp),%esi
	movl	-76(%ebp),%edi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_FPIMGGAUSS
_THREADVARLIST_FPIMGGAUSS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_FPIMGGAUSS_GAUSSIANBLURBINOMINAL4$crcC0E3BAD6_CLEARINTEGERCOLOR
_TC_FPIMGGAUSS_GAUSSIANBLURBINOMINAL4$crcC0E3BAD6_CLEARINTEGERCOLOR:
	.long	0,0,0,0

.const
	.align 2
.globl	_$FPIMGGAUSS$_Ld1
_$FPIMGGAUSS$_Ld1:
	.byte	0,0,64,64

.const
	.align 3
.globl	_$FPIMGGAUSS$_Ld2
_$FPIMGGAUSS$_Ld2:
	.byte	0,0,0,0,0,0,0,128,0,64

.const
	.align 2
.globl	_$FPIMGGAUSS$_Ld3
_$FPIMGGAUSS$_Ld3:
	.byte	0,0,128,191

.const
	.align 2
.globl	_$FPIMGGAUSS$_Ld4
_$FPIMGGAUSS$_Ld4:
	.byte	0,0,0,64

.const
	.align 2
.globl	_$FPIMGGAUSS$_Ld5
_$FPIMGGAUSS$_Ld5:
	.byte	0,0,128,71
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMGGAUSS_TINTRINGBUFFER_$__SETSIZE$LONGINT$stub:
.indirect_symbol _FPIMGGAUSS_TINTRINGBUFFER_$__SETSIZE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMGGAUSS_GAUSSIANBLURBINOMINAL4$TFPCUSTOMIMAGE$TFPCUSTOMIMAGE$LONGINT$TRECT$TPOINT$stub:
.indirect_symbol _FPIMGGAUSS_GAUSSIANBLURBINOMINAL4$TFPCUSTOMIMAGE$TFPCUSTOMIMAGE$LONGINT$TRECT$TPOINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMGGAUSS_TINTRINGBUFFER_$__INIT$LONGINT$stub:
.indirect_symbol _FPIMGGAUSS_TINTRINGBUFFER_$__INIT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMGGAUSS_TINTRINGBUFFER_$__GET$LONGINT$TFPCOLOR$stub:
.indirect_symbol _FPIMGGAUSS_TINTRINGBUFFER_$__GET$LONGINT$TFPCOLOR
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

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMGGAUSS_TINTRINGBUFFER_$__PUT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _FPIMGGAUSS_TINTRINGBUFFER_$__PUT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMGGAUSS_TINTRINGBUFFER_$__CLEAR$stub:
.indirect_symbol _FPIMGGAUSS_TINTRINGBUFFER_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMGGAUSS_COMPUTEGAUSSIANBLURMATRIX1D$LONGINT$$PWORD$stub:
.indirect_symbol _FPIMGGAUSS_COMPUTEGAUSSIANBLURMATRIX1D$LONGINT$$PWORD
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

L_FPIMGGAUSS_MATRIXBLUR1D$TFPCUSTOMIMAGE$LONGINT$TRECT$PWORD$stub:
.indirect_symbol _FPIMGGAUSS_MATRIXBLUR1D$TFPCUSTOMIMAGE$LONGINT$TRECT$PWORD
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

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
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

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
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

L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLBYTE$formal$LONGINT$BYTE
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

L_MATH_FLOOR$EXTENDED$$LONGINT$stub:
.indirect_symbol _MATH_FLOOR$EXTENDED$$LONGINT
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
L_TC_FPIMGGAUSS_GAUSSIANBLURBINOMINAL4$crcC0E3BAD6_CLEARINTEGERCOLOR$non_lazy_ptr:
.indirect_symbol _TC_FPIMGGAUSS_GAUSSIANBLURBINOMINAL4$crcC0E3BAD6_CLEARINTEGERCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPIMGGAUSS$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPIMGGAUSS$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPIMGGAUSS$_Ld2$non_lazy_ptr:
.indirect_symbol _$FPIMGGAUSS$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPIMGGAUSS$_Ld4$non_lazy_ptr:
.indirect_symbol _$FPIMGGAUSS$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPIMGGAUSS$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPIMGGAUSS$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPIMGGAUSS$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPIMGGAUSS$_Ld5
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

