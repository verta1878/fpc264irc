# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR
_JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	call	Lj4
Lj4:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	340(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj12
	decl	-12(%ebp)
	.align 2
Lj13:
	incl	-12(%ebp)
	movl	-24(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj16
	jmp	Lj19
Lj19:
	movl	-16(%ebp),%eax
	cmpl	$4,%eax
	jge	Lj16
	jmp	Lj18
Lj18:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	68(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj16
	jmp	Lj17
Lj16:
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$53,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj17:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	68(%eax,%edx,4),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movb	180(%eax),%al
	testb	%al,%al
	je	Lj30
	decb	%al
	je	Lj31
	decb	%al
	je	Lj32
	jmp	Lj29
Lj30:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	12(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj33
	jmp	Lj34
Lj33:
	movl	-4(%ebp),%eax
	movl	$256,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	(%esi),%esi
	call	*%esi
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	%eax,12(%edx,%ecx,4)
Lj34:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	12(%eax,%edx,4),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj47:
	incl	-20(%ebp)
	movl	-28(%ebp),%eax
	movl	-20(%ebp),%edx
	movzwl	(%eax,%edx,2),%eax
	shll	$3,%eax
	movl	-32(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	%eax,(%ecx,%edx,4)
	cmpl	$63,-20(%ebp)
	jl	Lj47
	jmp	Lj28
Lj31:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	12(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj50
	jmp	Lj51
Lj50:
	movl	-4(%ebp),%eax
	movl	$256,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	(%esi),%esi
	call	*%esi
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	%eax,12(%edx,%ecx,4)
Lj51:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	12(%eax,%edx,4),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj64:
	incl	-20(%ebp)
	movl	-28(%ebp),%eax
	movl	-20(%ebp),%edx
	movzwl	(%eax,%edx,2),%edx
	movl	-20(%ebp),%eax
	movl	L_TC_JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR_AANSCALES$non_lazy_ptr-Lj4(%edi),%ecx
	movl	(%ecx,%eax,4),%eax
	imull	%eax,%edx
	movl	%ebp,%eax
	movl	$11,%ecx
	call	L_JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-32(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	%eax,(%edx,%ecx,4)
	cmpl	$63,-20(%ebp)
	jl	Lj64
	jmp	Lj28
Lj32:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	32(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj73
	jmp	Lj74
Lj73:
	movl	-4(%ebp),%eax
	movl	$512,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	(%esi),%esi
	call	*%esi
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	%eax,32(%edx,%ecx,4)
Lj74:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	32(%eax,%edx,4),%eax
	movl	%eax,-36(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-40(%ebp)
	decl	-40(%ebp)
	.align 2
Lj89:
	incl	-40(%ebp)
	movl	$0,-44(%ebp)
	decl	-44(%ebp)
	.align 2
Lj92:
	incl	-44(%ebp)
	movl	-28(%ebp),%edx
	movl	-20(%ebp),%eax
	movzwl	(%edx,%eax,2),%eax
	movl	%eax,-48(%ebp)
	fildl	-48(%ebp)
	movl	-40(%ebp),%eax
	movl	L_TC_JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR_AANSCALEFACTOR$non_lazy_ptr-Lj4(%edi),%edx
	fldl	(%edx,%eax,8)
	fmulp	%st,%st(1)
	movl	-44(%ebp),%edx
	movl	L_TC_JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR_AANSCALEFACTOR$non_lazy_ptr-Lj4(%edi),%eax
	fldl	(%eax,%edx,8)
	fmulp	%st,%st(1)
	movl	L_$JCDCTMGR$_Ld1$non_lazy_ptr-Lj4(%edi),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	fld1
	fdivp	%st,%st(1)
	movl	-36(%ebp),%eax
	movl	-20(%ebp),%edx
	fstpl	(%eax,%edx,8)
	incl	-20(%ebp)
	cmpl	$7,-44(%ebp)
	jl	Lj92
	cmpl	$7,-40(%ebp)
	jl	Lj89
	jmp	Lj28
Lj29:
	movl	-4(%ebp),%eax
	movb	$49,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj28:
	addl	$84,-24(%ebp)
	cmpl	-12(%ebp),%ebx
	jg	Lj13
Lj12:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR_DESCALE$LONGINT$LONGINT$$LONGINT
_JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR_DESCALE$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	decl	%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj101
	jmp	Lj102
Lj101:
	movl	-8(%ebp),%ecx
	movl	$32,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	$-1,%eax
	shll	%cl,%eax
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%ecx
	shrl	%cl,%edx
	orl	%edx,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj105
Lj102:
	movl	-20(%ebp),%eax
	movl	-8(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-16(%ebp)
Lj105:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JCDCTMGR_FORWARD_DCT$crc713185E8
_JCDCTMGR_FORWARD_DCT$crc713185E8:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-316(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	340(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	12(%edx,%eax,4),%eax
	movl	%eax,-24(%ebp)
	movl	16(%ebp),%eax
	shll	$2,%eax
	addl	%eax,-12(%ebp)
	movl	8(%ebp),%ebx
	decl	%ebx
	movl	$0,-284(%ebp)
	cmpl	-284(%ebp),%ebx
	jb	Lj117
	decl	-284(%ebp)
	.align 2
Lj118:
	incl	-284(%ebp)
	leal	-280(%ebp),%eax
	movl	%eax,-288(%ebp)
	movl	$0,-296(%ebp)
	decl	-296(%ebp)
	.align 2
Lj123:
	incl	-296(%ebp)
	movl	-12(%ebp),%edx
	movl	-296(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	12(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	movl	%eax,-292(%ebp)
	movl	-292(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$128,%eax
	movl	-288(%ebp),%edx
	movl	%eax,(%edx)
	addl	$4,-288(%ebp)
	incl	-292(%ebp)
	movl	-292(%ebp),%eax
	movzbl	(%eax),%edx
	subl	$128,%edx
	movl	-288(%ebp),%eax
	movl	%edx,(%eax)
	addl	$4,-288(%ebp)
	incl	-292(%ebp)
	movl	-292(%ebp),%eax
	movzbl	(%eax),%edx
	subl	$128,%edx
	movl	-288(%ebp),%eax
	movl	%edx,(%eax)
	addl	$4,-288(%ebp)
	incl	-292(%ebp)
	movl	-292(%ebp),%eax
	movzbl	(%eax),%edx
	subl	$128,%edx
	movl	-288(%ebp),%eax
	movl	%edx,(%eax)
	addl	$4,-288(%ebp)
	incl	-292(%ebp)
	movl	-292(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$128,%eax
	movl	-288(%ebp),%edx
	movl	%eax,(%edx)
	addl	$4,-288(%ebp)
	incl	-292(%ebp)
	movl	-292(%ebp),%eax
	movzbl	(%eax),%edx
	subl	$128,%edx
	movl	-288(%ebp),%eax
	movl	%edx,(%eax)
	addl	$4,-288(%ebp)
	incl	-292(%ebp)
	movl	-292(%ebp),%eax
	movzbl	(%eax),%edx
	subl	$128,%edx
	movl	-288(%ebp),%eax
	movl	%edx,(%eax)
	addl	$4,-288(%ebp)
	incl	-292(%ebp)
	movl	-292(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$128,%eax
	movl	-288(%ebp),%edx
	movl	%eax,(%edx)
	addl	$4,-288(%ebp)
	cmpl	$7,-296(%ebp)
	jl	Lj123
	leal	-280(%ebp),%eax
	movl	$63,%edx
	movl	-20(%ebp),%ecx
	call	*%ecx
	movl	20(%ebp),%edx
	movl	-284(%ebp),%eax
	shll	$8,%eax
	leal	(%edx,%eax),%eax
	movl	%eax,-312(%ebp)
	movl	$0,-308(%ebp)
	decl	-308(%ebp)
	.align 2
Lj150:
	incl	-308(%ebp)
	movl	-24(%ebp),%eax
	movl	-308(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-304(%ebp)
	movl	-308(%ebp),%eax
	movl	-280(%ebp,%eax,4),%eax
	movl	%eax,-300(%ebp)
	movl	-300(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj155
	jmp	Lj156
Lj155:
	movl	-300(%ebp),%eax
	negl	%eax
	movl	%eax,-300(%ebp)
	movl	-304(%ebp),%eax
	shrl	$1,%eax
	addl	%eax,-300(%ebp)
	movl	-300(%ebp),%eax
	cmpl	-304(%ebp),%eax
	jge	Lj159
	jmp	Lj160
Lj159:
	movl	-300(%ebp),%eax
	cltd
	idivl	-304(%ebp)
	movl	%eax,-300(%ebp)
	jmp	Lj163
Lj160:
	movl	$0,-300(%ebp)
Lj163:
	movl	-300(%ebp),%eax
	negl	%eax
	movl	%eax,-300(%ebp)
	jmp	Lj168
Lj156:
	movl	-304(%ebp),%eax
	shrl	$1,%eax
	addl	%eax,-300(%ebp)
	movl	-300(%ebp),%eax
	cmpl	-304(%ebp),%eax
	jge	Lj169
	jmp	Lj170
Lj169:
	movl	-300(%ebp),%eax
	cltd
	idivl	-304(%ebp)
	movl	%eax,-300(%ebp)
	jmp	Lj173
Lj170:
	movl	$0,-300(%ebp)
Lj173:
Lj168:
	movl	-312(%ebp),%edx
	movl	-308(%ebp),%eax
	movl	-300(%ebp),%ecx
	movl	%ecx,(%edx,%eax,4)
	cmpl	$63,-308(%ebp)
	jl	Lj150
	addl	$8,12(%ebp)
	cmpl	-284(%ebp),%ebx
	ja	Lj118
Lj117:
	movl	-316(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCDCTMGR_FORWARD_DCT_FLOAT$crc713185E8
_JCDCTMGR_FORWARD_DCT_FLOAT$crc713185E8:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$600,%esp
	movl	%ebx,-588(%ebp)
	movl	%esi,-584(%ebp)
	call	Lj179
Lj179:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	340(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	32(%edx,%eax,4),%eax
	movl	%eax,-24(%ebp)
	movl	16(%ebp),%eax
	shll	$2,%eax
	addl	%eax,-12(%ebp)
	movl	8(%ebp),%ebx
	decl	%ebx
	movl	$0,-540(%ebp)
	cmpl	-540(%ebp),%ebx
	jb	Lj187
	decl	-540(%ebp)
	.align 2
Lj188:
	incl	-540(%ebp)
	leal	-536(%ebp),%eax
	movl	%eax,-544(%ebp)
	movl	$0,-552(%ebp)
	decl	-552(%ebp)
	.align 2
Lj193:
	incl	-552(%ebp)
	movl	-12(%ebp),%edx
	movl	-552(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	12(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	movl	%eax,-548(%ebp)
	movl	-548(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$128,%eax
	movl	%eax,-572(%ebp)
	fildl	-572(%ebp)
	movl	-544(%ebp),%eax
	fstpl	(%eax)
	addl	$8,-544(%ebp)
	incl	-548(%ebp)
	movl	-548(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$128,%eax
	movl	%eax,-572(%ebp)
	fildl	-572(%ebp)
	movl	-544(%ebp),%eax
	fstpl	(%eax)
	addl	$8,-544(%ebp)
	incl	-548(%ebp)
	movl	-548(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$128,%eax
	movl	%eax,-572(%ebp)
	fildl	-572(%ebp)
	movl	-544(%ebp),%eax
	fstpl	(%eax)
	addl	$8,-544(%ebp)
	incl	-548(%ebp)
	movl	-548(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$128,%eax
	movl	%eax,-572(%ebp)
	fildl	-572(%ebp)
	movl	-544(%ebp),%eax
	fstpl	(%eax)
	addl	$8,-544(%ebp)
	incl	-548(%ebp)
	movl	-548(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$128,%eax
	movl	%eax,-572(%ebp)
	fildl	-572(%ebp)
	movl	-544(%ebp),%eax
	fstpl	(%eax)
	addl	$8,-544(%ebp)
	incl	-548(%ebp)
	movl	-548(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$128,%eax
	movl	%eax,-572(%ebp)
	fildl	-572(%ebp)
	movl	-544(%ebp),%eax
	fstpl	(%eax)
	addl	$8,-544(%ebp)
	incl	-548(%ebp)
	movl	-548(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$128,%eax
	movl	%eax,-572(%ebp)
	fildl	-572(%ebp)
	movl	-544(%ebp),%eax
	fstpl	(%eax)
	addl	$8,-544(%ebp)
	incl	-548(%ebp)
	movl	-548(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$128,%eax
	movl	%eax,-572(%ebp)
	fildl	-572(%ebp)
	movl	-544(%ebp),%eax
	fstpl	(%eax)
	addl	$8,-544(%ebp)
	cmpl	$7,-552(%ebp)
	jl	Lj193
	leal	-536(%ebp),%eax
	movl	$63,%edx
	movl	-20(%ebp),%ecx
	call	*%ecx
	movl	20(%ebp),%edx
	movl	-540(%ebp),%eax
	shll	$8,%eax
	leal	(%edx,%eax),%eax
	movl	%eax,-568(%ebp)
	movl	$0,-564(%ebp)
	decl	-564(%ebp)
	.align 2
Lj220:
	incl	-564(%ebp)
	movl	-24(%ebp),%eax
	movl	-564(%ebp),%edx
	movl	-564(%ebp),%ecx
	fldl	-536(%ebp,%ecx,8)
	fldl	(%eax,%edx,8)
	fmulp	%st,%st(1)
	fstpl	-560(%ebp)
	movl	-568(%ebp),%edx
	movl	-564(%ebp),%ecx
	fnstcw	-572(%ebp)
	fnstcw	-570(%ebp)
	orw	$3840,-572(%ebp)
	movl	L_$JCDCTMGR$_Ld2$non_lazy_ptr-Lj179(%esi),%eax
	fldl	(%eax)
	fldl	-560(%ebp)
	faddp	%st,%st(1)
	fldcw	-572(%ebp)
	fistpq	-580(%ebp)
	fldcw	-570(%ebp)
	fwait
	movl	-580(%ebp),%eax
	subl	$16384,%eax
	movl	%eax,(%edx,%ecx,4)
	cmpl	$63,-564(%ebp)
	jl	Lj220
	addl	$8,12(%ebp)
	cmpl	-540(%ebp),%ebx
	ja	Lj188
Lj187:
	movl	-588(%ebp),%ebx
	movl	-584(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JCDCTMGR_JINIT_FORWARD_DCT$J_COMPRESS_PTR
_JCDCTMGR_JINIT_FORWARD_DCT$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj226
Lj226:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$48,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,340(%eax)
	movl	-8(%ebp),%edx
	movl	L_JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR$non_lazy_ptr-Lj226(%esi),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movb	180(%eax),%al
	testb	%al,%al
	je	Lj241
	decb	%al
	je	Lj242
	decb	%al
	je	Lj243
	jmp	Lj240
Lj241:
	movl	-8(%ebp),%edx
	movl	L_JCDCTMGR_FORWARD_DCT$crc713185E8$non_lazy_ptr-Lj226(%esi),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	L_JFDCTINT_JPEG_FDCT_ISLOW$array_of_LONGINT$non_lazy_ptr-Lj226(%esi),%eax
	movl	%eax,8(%edx)
	jmp	Lj239
Lj242:
	movl	-8(%ebp),%edx
	movl	L_JCDCTMGR_FORWARD_DCT$crc713185E8$non_lazy_ptr-Lj226(%esi),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	L_JFDCTFST_JPEG_FDCT_IFAST$array_of_LONGINT$non_lazy_ptr-Lj226(%esi),%eax
	movl	%eax,8(%edx)
	jmp	Lj239
Lj243:
	movl	-8(%ebp),%edx
	movl	L_JCDCTMGR_FORWARD_DCT_FLOAT$crc713185E8$non_lazy_ptr-Lj226(%esi),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	L_JFDCTFLT_JPEG_FDCT_FLOAT$array_of_DOUBLE$non_lazy_ptr-Lj226(%esi),%eax
	movl	%eax,28(%edx)
	jmp	Lj239
Lj240:
	movl	-4(%ebp),%eax
	movb	$49,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj239:
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj262:
	incl	-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,12(%edx,%eax,4)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,32(%edx,%eax,4)
	cmpl	$3,-12(%ebp)
	jl	Lj262
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JCDCTMGR
_THREADVARLIST_JCDCTMGR:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR_AANSCALES
_TC_JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR_AANSCALES:
	.long	16384,22725,21407,19266,16384,12873,8867,4520,22725,31521,29692,26722,22725,17855,12299
	.long	6270,21407,29692,27969,25172,21407,16819,11585,5906,19266,26722,25172,22654,19266,15137
	.long	10426,5315,16384,22725,21407,19266,16384,12873,8867,4520,12873,17855,16819,15137,12873
	.long	10114,6967,3552,8867,12299,11585,10426,8867,6967,4799,2446,4520,6270,5906,5315,4520,3552
	.long	2446,1247

.data
	.align 2
.globl	_TC_JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR_AANSCALEFACTOR
_TC_JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR_AANSCALEFACTOR:
	.byte	0,0,0,0,0,0,240,63
	.byte	239,97,72,177,80,49,246,63
	.byte	202,111,77,145,174,231,244,63
	.byte	170,17,108,239,98,208,242,63
	.byte	0,0,0,0,0,0,240,63
	.byte	59,191,167,192,105,36,233,63
	.byte	187,32,199,123,122,81,225,63
	.byte	93,171,114,222,85,168,209,63

.const
	.align 2
.globl	_$JCDCTMGR$_Ld1
_$JCDCTMGR$_Ld1:
	.byte	0,0,0,0,0,0,32,64

.const
	.align 2
.globl	_$JCDCTMGR$_Ld2
_$JCDCTMGR$_Ld2:
	.byte	0,0,0,0,32,0,208,64
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub:
.indirect_symbol _JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR_DESCALE$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR_DESCALE$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE
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
L_TC_JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR_AANSCALES$non_lazy_ptr:
.indirect_symbol _TC_JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR_AANSCALES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR_AANSCALEFACTOR$non_lazy_ptr:
.indirect_symbol _TC_JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR_AANSCALEFACTOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JCDCTMGR$_Ld1$non_lazy_ptr:
.indirect_symbol _$JCDCTMGR$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JCDCTMGR$_Ld2$non_lazy_ptr:
.indirect_symbol _$JCDCTMGR$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JCDCTMGR_START_PASS_FDCTMGR$J_COMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCDCTMGR_FORWARD_DCT$crc713185E8$non_lazy_ptr:
.indirect_symbol _JCDCTMGR_FORWARD_DCT$crc713185E8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JFDCTINT_JPEG_FDCT_ISLOW$array_of_LONGINT$non_lazy_ptr:
.indirect_symbol _JFDCTINT_JPEG_FDCT_ISLOW$array_of_LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JFDCTFST_JPEG_FDCT_IFAST$array_of_LONGINT$non_lazy_ptr:
.indirect_symbol _JFDCTFST_JPEG_FDCT_IFAST$array_of_LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCDCTMGR_FORWARD_DCT_FLOAT$crc713185E8$non_lazy_ptr:
.indirect_symbol _JCDCTMGR_FORWARD_DCT_FLOAT$crc713185E8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JFDCTFLT_JPEG_FDCT_FLOAT$array_of_DOUBLE$non_lazy_ptr:
.indirect_symbol _JFDCTFLT_JPEG_FDCT_FLOAT$array_of_DOUBLE
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

