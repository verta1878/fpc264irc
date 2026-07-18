# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JDMAINCT_ALLOC_FUNNY_POINTERS$J_DECOMPRESS_PTR
_JDMAINCT_ALLOC_FUNNY_POINTERS$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%ecx
	shll	$1,%ecx
	shll	$2,%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	-8(%ebp),%edx
	movl	%eax,56(%edx)
	movl	-8(%ebp),%eax
	movl	56(%eax),%edx
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	leal	(%edx,%eax,4),%edx
	movl	-8(%ebp),%eax
	movl	%edx,60(%eax)
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj22
	decl	-12(%ebp)
	.align 2
Lj23:
	incl	-12(%ebp)
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	12(%eax),%eax
	movl	36(%edx),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%ecx
	cltd
	idivl	264(%ecx)
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%ecx
	addl	$4,%ecx
	movl	-16(%ebp),%eax
	imull	%eax,%ecx
	shll	$1,%ecx
	shll	$2,%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	(%esi),%esi
	call	*%esi
	movl	%eax,-28(%ebp)
	movl	-16(%ebp),%eax
	shll	$2,%eax
	addl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	56(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%eax
	movl	%eax,(%edx,%ecx,4)
	movl	-20(%ebp),%eax
	addl	$4,%eax
	movl	-16(%ebp),%edx
	imull	%edx,%eax
	shll	$2,%eax
	addl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-28(%ebp),%ecx
	movl	%ecx,(%eax,%edx,4)
	addl	$84,-24(%ebp)
	cmpl	-12(%ebp),%ebx
	jg	Lj23
Lj22:
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JDMAINCT_MAKE_FUNNY_POINTERS$J_DECOMPRESS_PTR
_JDMAINCT_MAKE_FUNNY_POINTERS$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	decl	%eax
	movl	%eax,-48(%ebp)
	movl	$0,-12(%ebp)
	movl	-48(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj47
	decl	-12(%ebp)
	.align 2
Lj48:
	incl	-12(%ebp)
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	12(%eax),%eax
	movl	36(%edx),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%ecx
	cltd
	idivl	264(%ecx)
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	56(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-40(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	8(%edx,%eax,4),%eax
	movl	%eax,-32(%ebp)
	movl	-24(%ebp),%esi
	addl	$2,%esi
	movl	-20(%ebp),%eax
	imull	%eax,%esi
	decl	%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj58
	decl	-16(%ebp)
	.align 2
Lj59:
	incl	-16(%ebp)
	movl	-36(%ebp),%ebx
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,(%ebx,%eax,4)
	movl	-40(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	-32(%ebp),%ecx
	movl	-16(%ebp),%ebx
	movl	(%ecx,%ebx,4),%ecx
	movl	%ecx,(%eax,%edx,4)
	cmpl	-16(%ebp),%esi
	jg	Lj59
Lj58:
	movl	-20(%ebp),%eax
	shll	$1,%eax
	decl	%eax
	movl	%eax,%edx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%edx
	jl	Lj65
	decl	-16(%ebp)
	.align 2
Lj66:
	incl	-16(%ebp)
	movl	-40(%ebp),%ecx
	movl	-24(%ebp),%ebx
	subl	$2,%ebx
	movl	-20(%ebp),%eax
	imull	%eax,%ebx
	movl	-16(%ebp),%eax
	addl	%eax,%ebx
	movl	-32(%ebp),%esi
	movl	-20(%ebp),%edi
	movl	-24(%ebp),%eax
	imull	%eax,%edi
	movl	-16(%ebp),%eax
	addl	%eax,%edi
	movl	%edi,%eax
	movl	(%esi,%eax,4),%eax
	movl	%eax,(%ecx,%ebx,4)
	movl	-32(%ebp),%ebx
	movl	-24(%ebp),%ecx
	subl	$2,%ecx
	movl	-20(%ebp),%eax
	imull	%eax,%ecx
	movl	-16(%ebp),%eax
	addl	%eax,%ecx
	movl	%ecx,%edi
	movl	-40(%ebp),%esi
	movl	-20(%ebp),%ecx
	movl	-24(%ebp),%eax
	imull	%eax,%ecx
	movl	-16(%ebp),%eax
	addl	%eax,%ecx
	movl	(%ebx,%edi,4),%eax
	movl	%eax,(%esi,%ecx,4)
	cmpl	-16(%ebp),%edx
	jg	Lj66
Lj65:
	movl	-36(%ebp),%eax
	movl	%eax,-44(%ebp)
	movl	-20(%ebp),%eax
	shll	$2,%eax
	subl	%eax,-44(%ebp)
	movl	-20(%ebp),%edx
	decl	%edx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%edx
	jl	Lj74
	decl	-16(%ebp)
	.align 2
Lj75:
	incl	-16(%ebp)
	movl	-44(%ebp),%ecx
	movl	-16(%ebp),%ebx
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%ecx,%ebx,4)
	cmpl	-16(%ebp),%edx
	jg	Lj75
Lj74:
	addl	$84,-28(%ebp)
	movl	-48(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj48
Lj47:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JDMAINCT_SET_WRAPAROUND_POINTERS$J_DECOMPRESS_PTR
_JDMAINCT_SET_WRAPAROUND_POINTERS$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	movl	%edi,-48(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%ecx
	decl	%ecx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ecx
	jl	Lj87
	decl	-12(%ebp)
	.align 2
Lj88:
	incl	-12(%ebp)
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	12(%eax),%eax
	movl	36(%edx),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%ebx
	cltd
	idivl	264(%ebx)
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-36(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-20(%ebp),%eax
	shll	$2,%eax
	subl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	movl	%eax,-44(%ebp)
	movl	-20(%ebp),%eax
	shll	$2,%eax
	subl	%eax,-44(%ebp)
	movl	-20(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj100
	decl	-16(%ebp)
	.align 2
Lj101:
	incl	-16(%ebp)
	movl	-32(%ebp),%ebx
	movl	-24(%ebp),%edx
	incl	%edx
	movl	-20(%ebp),%esi
	imull	%esi,%edx
	movl	-16(%ebp),%esi
	addl	%esi,%edx
	movl	-40(%ebp),%edi
	movl	-16(%ebp),%esi
	movl	(%ebx,%edx,4),%edx
	movl	%edx,(%edi,%esi,4)
	movl	-36(%ebp),%esi
	movl	-24(%ebp),%edx
	incl	%edx
	movl	-20(%ebp),%ebx
	imull	%ebx,%edx
	movl	-16(%ebp),%ebx
	addl	%ebx,%edx
	movl	-44(%ebp),%edi
	movl	-16(%ebp),%ebx
	movl	(%esi,%edx,4),%edx
	movl	%edx,(%edi,%ebx,4)
	movl	-32(%ebp),%esi
	movl	-24(%ebp),%edx
	addl	$2,%edx
	movl	-20(%ebp),%ebx
	imull	%ebx,%edx
	movl	-16(%ebp),%ebx
	addl	%ebx,%edx
	movl	-32(%ebp),%edi
	movl	-16(%ebp),%ebx
	movl	(%edi,%ebx,4),%ebx
	movl	%ebx,(%esi,%edx,4)
	movl	-36(%ebp),%esi
	movl	-24(%ebp),%edx
	addl	$2,%edx
	movl	-20(%ebp),%ebx
	imull	%ebx,%edx
	movl	-16(%ebp),%ebx
	addl	%ebx,%edx
	movl	-36(%ebp),%ebx
	movl	-16(%ebp),%edi
	movl	(%ebx,%edi,4),%ebx
	movl	%ebx,(%esi,%edx,4)
	cmpl	-16(%ebp),%eax
	jg	Lj101
Lj100:
	addl	$84,-28(%ebp)
	cmpl	-12(%ebp),%ecx
	jg	Lj88
Lj87:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	movl	-48(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JDMAINCT_SET_BOTTOM_POINTERS$J_DECOMPRESS_PTR
_JDMAINCT_SET_BOTTOM_POINTERS$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	movl	%edi,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%ecx
	decl	%ecx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ecx
	jl	Lj117
	decl	-12(%ebp)
	.align 2
Lj118:
	incl	-12(%ebp)
	movl	-32(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	12(%eax),%edx
	movl	36(%ebx),%eax
	imull	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-4(%ebp),%ebx
	movl	-24(%ebp),%eax
	cltd
	idivl	264(%ebx)
	movl	%eax,-20(%ebp)
	movl	-32(%ebp),%eax
	movl	44(%eax),%eax
	xorl	%edx,%edx
	divl	-24(%ebp)
	movl	%edx,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj125
	jmp	Lj126
Lj125:
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj126:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj129
	jmp	Lj130
Lj129:
	movl	-28(%ebp),%eax
	decl	%eax
	cltd
	idivl	-20(%ebp)
	incl	%eax
	movl	-8(%ebp),%edx
	movl	%eax,72(%edx)
Lj130:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	56(%edx,%eax,4),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-36(%ebp)
	movl	-20(%ebp),%eax
	shll	$1,%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj136
	decl	-16(%ebp)
	.align 2
Lj137:
	incl	-16(%ebp)
	movl	-36(%ebp),%ebx
	movl	-28(%ebp),%edx
	movl	-16(%ebp),%esi
	addl	%esi,%edx
	movl	-36(%ebp),%edi
	movl	-28(%ebp),%esi
	decl	%esi
	movl	(%edi,%esi,4),%esi
	movl	%esi,(%ebx,%edx,4)
	cmpl	-16(%ebp),%eax
	jg	Lj137
Lj136:
	addl	$84,-32(%ebp)
	cmpl	-12(%ebp),%ecx
	jg	Lj118
Lj117:
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	movl	-40(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JDMAINCT_START_PASS_MAIN$J_DECOMPRESS_PTR$J_BUF_MODE
_JDMAINCT_START_PASS_MAIN$J_DECOMPRESS_PTR$J_BUF_MODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj141
Lj141:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	%eax,-12(%ebp)
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj146
	subb	$2,%al
	je	Lj147
	jmp	Lj145
Lj146:
	movl	-4(%ebp),%eax
	movl	400(%eax),%eax
	cmpb	$0,8(%eax)
	jne	Lj148
	jmp	Lj149
Lj148:
	movl	-12(%ebp),%edx
	movl	L_JDMAINCT_PROCESS_DATA_CONTEXT_MAIN$J_DECOMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD$non_lazy_ptr-Lj141(%ebx),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	call	L_JDMAINCT_MAKE_FUNNY_POINTERS$J_DECOMPRESS_PTR$stub
	movl	-12(%ebp),%eax
	movl	$0,64(%eax)
	movl	-12(%ebp),%eax
	movl	$0,68(%eax)
	movl	-12(%ebp),%eax
	movl	$0,76(%eax)
	jmp	Lj160
Lj149:
	movl	-12(%ebp),%edx
	movl	L_JDMAINCT_PROCESS_DATA_SIMPLE_MAIN$J_DECOMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD$non_lazy_ptr-Lj141(%ebx),%eax
	movl	%eax,4(%edx)
Lj160:
	movl	-12(%ebp),%eax
	movb	$0,48(%eax)
	movl	-12(%ebp),%eax
	movl	$0,52(%eax)
	jmp	Lj144
Lj147:
	movl	-12(%ebp),%edx
	movl	L_JDMAINCT_PROCESS_DATA_CRANK_POST$J_DECOMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD$non_lazy_ptr-Lj141(%ebx),%eax
	movl	%eax,4(%edx)
	jmp	Lj144
Lj145:
	movl	-4(%ebp),%eax
	movb	$4,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj144:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDMAINCT_PROCESS_DATA_SIMPLE_MAIN$J_DECOMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD
_JDMAINCT_PROCESS_DATA_SIMPLE_MAIN$J_DECOMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leal	8(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-16(%ebp),%eax
	movb	48(%eax),%al
	testb	%al,%al
	je	Lj179
	jmp	Lj180
Lj179:
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	376(%ecx),%ecx
	movl	12(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	je	Lj181
	jmp	Lj182
Lj181:
	jmp	Lj173
Lj182:
	movl	-16(%ebp),%eax
	movb	$1,48(%eax)
Lj180:
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-16(%ebp),%eax
	leal	52(%eax),%ecx
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	380(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	-16(%ebp),%eax
	movl	52(%eax),%eax
	cmpl	-20(%ebp),%eax
	jae	Lj205
	jmp	Lj206
Lj205:
	movl	-16(%ebp),%eax
	movb	$0,48(%eax)
	movl	-16(%ebp),%eax
	movl	$0,52(%eax)
Lj206:
Lj173:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDMAINCT_PROCESS_DATA_CONTEXT_MAIN$J_DECOMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD
_JDMAINCT_PROCESS_DATA_CONTEXT_MAIN$J_DECOMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movb	48(%eax),%al
	testb	%al,%al
	je	Lj215
	jmp	Lj216
Lj215:
	movl	-16(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	64(%eax),%eax
	movl	56(%edx,%eax,4),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	376(%ecx),%ecx
	movl	12(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	je	Lj217
	jmp	Lj218
Lj217:
	jmp	Lj211
Lj218:
	movl	-16(%ebp),%eax
	movb	$1,48(%eax)
	movl	-16(%ebp),%eax
	incl	76(%eax)
Lj216:
	movl	-16(%ebp),%eax
	movl	68(%eax),%eax
	cmpl	$2,%eax
	jl	Lj226
	subl	$2,%eax
	je	Lj227
	jmp	Lj226
Lj227:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-16(%ebp),%eax
	movl	72(%eax),%eax
	movl	%eax,12(%esp)
	movl	-16(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	64(%eax),%eax
	movl	56(%edx,%eax,4),%edx
	movl	-16(%ebp),%eax
	leal	52(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	380(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	52(%eax),%eax
	cmpl	72(%edx),%eax
	jb	Lj242
	jmp	Lj243
Lj242:
	jmp	Lj211
Lj243:
	movl	-16(%ebp),%eax
	movl	$0,68(%eax)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	8(%ebp),%eax
	jae	Lj246
	jmp	Lj247
Lj246:
	jmp	Lj211
Lj247:
	jmp	Lj225
Lj226:
Lj225:
	movl	-16(%ebp),%eax
	movl	68(%eax),%eax
	testl	%eax,%eax
	jl	Lj249
	testl	%eax,%eax
	je	Lj250
	subl	$2,%eax
	je	Lj250
	jmp	Lj249
Lj250:
	movl	-16(%ebp),%eax
	movl	$0,52(%eax)
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	decl	%eax
	movl	-16(%ebp),%edx
	movl	%eax,72(%edx)
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	76(%eax),%eax
	cmpl	268(%edx),%eax
	je	Lj255
	jmp	Lj256
Lj255:
	movl	-4(%ebp),%eax
	call	L_JDMAINCT_SET_BOTTOM_POINTERS$J_DECOMPRESS_PTR$stub
Lj256:
	movl	-16(%ebp),%eax
	movl	$1,68(%eax)
	jmp	Lj248
Lj249:
Lj248:
	movl	-16(%ebp),%eax
	movl	68(%eax),%eax
	testl	%eax,%eax
	jl	Lj262
	testl	%eax,%eax
	je	Lj263
	decl	%eax
	jl	Lj262
	subl	$1,%eax
	jle	Lj263
	jmp	Lj262
Lj263:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-16(%ebp),%eax
	movl	72(%eax),%eax
	movl	%eax,12(%esp)
	movl	-16(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	64(%eax),%eax
	movl	56(%edx,%eax,4),%edx
	movl	-16(%ebp),%eax
	leal	52(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	380(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	52(%eax),%eax
	cmpl	72(%edx),%eax
	jb	Lj278
	jmp	Lj279
Lj278:
	jmp	Lj211
Lj279:
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	cmpl	$1,%eax
	je	Lj280
	jmp	Lj281
Lj280:
	movl	-4(%ebp),%eax
	call	L_JDMAINCT_SET_WRAPAROUND_POINTERS$J_DECOMPRESS_PTR$stub
Lj281:
	movl	-16(%ebp),%eax
	movl	64(%eax),%eax
	xorl	$1,%eax
	movl	-16(%ebp),%edx
	movl	%eax,64(%edx)
	movl	-16(%ebp),%eax
	movb	$0,48(%eax)
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	incl	%eax
	movl	-16(%ebp),%edx
	movl	%eax,52(%edx)
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	addl	$2,%eax
	movl	-16(%ebp),%edx
	movl	%eax,72(%edx)
	movl	-16(%ebp),%eax
	movl	$2,68(%eax)
	jmp	Lj261
Lj262:
Lj261:
Lj211:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDMAINCT_PROCESS_DATA_CRANK_POST$J_DECOMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD
_JDMAINCT_PROCESS_DATA_CRANK_POST$J_DECOMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,12(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ebx
	movl	380(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDMAINCT_JINIT_D_MAIN_CONTROLLER$J_DECOMPRESS_PTR$BOOLEAN
_JDMAINCT_JINIT_D_MAIN_CONTROLLER$J_DECOMPRESS_PTR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	call	Lj313
Lj313:
	popl	%esi
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$80,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,372(%eax)
	movl	-12(%ebp),%edx
	movl	L_JDMAINCT_START_PASS_MAIN$J_DECOMPRESS_PTR$J_BUF_MODE$non_lazy_ptr-Lj313(%esi),%eax
	movl	%eax,(%edx)
	cmpb	$0,-8(%ebp)
	jne	Lj326
	jmp	Lj327
Lj326:
	movl	-4(%ebp),%eax
	movb	$4,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj327:
	movl	-4(%ebp),%eax
	movl	400(%eax),%eax
	cmpb	$0,8(%eax)
	jne	Lj332
	jmp	Lj333
Lj332:
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	cmpl	$2,%eax
	jl	Lj334
	jmp	Lj335
Lj334:
	movl	-4(%ebp),%eax
	movb	$48,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj335:
	movl	-4(%ebp),%eax
	call	L_JDMAINCT_ALLOC_FUNNY_POINTERS$J_DECOMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	addl	$2,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj344
Lj333:
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	movl	%eax,-24(%ebp)
Lj344:
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj350
	decl	-16(%ebp)
	.align 2
Lj351:
	incl	-16(%ebp)
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	12(%eax),%eax
	movl	36(%edx),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%ecx
	cltd
	idivl	264(%ecx)
	movl	%eax,-20(%ebp)
	movl	-28(%ebp),%eax
	movl	36(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-28(%ebp),%eax
	movl	28(%eax),%eax
	movl	$0,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,%ecx
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%edi
	movl	4(%edi),%edi
	movl	8(%edi),%edi
	call	*%edi
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	%eax,8(%edx,%ecx,4)
	addl	$84,-28(%ebp)
	cmpl	-16(%ebp),%ebx
	jg	Lj351
Lj350:
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JDMAINCT
_THREADVARLIST_JDMAINCT:
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

L_JDMAINCT_MAKE_FUNNY_POINTERS$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDMAINCT_MAKE_FUNNY_POINTERS$J_DECOMPRESS_PTR
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

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMAINCT_SET_BOTTOM_POINTERS$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDMAINCT_SET_BOTTOM_POINTERS$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMAINCT_SET_WRAPAROUND_POINTERS$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDMAINCT_SET_WRAPAROUND_POINTERS$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMAINCT_ALLOC_FUNNY_POINTERS$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDMAINCT_ALLOC_FUNNY_POINTERS$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_mul_int64$stub:
.indirect_symbol fpc_mul_int64
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
L_JDMAINCT_PROCESS_DATA_CONTEXT_MAIN$J_DECOMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD$non_lazy_ptr:
.indirect_symbol _JDMAINCT_PROCESS_DATA_CONTEXT_MAIN$J_DECOMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDMAINCT_PROCESS_DATA_SIMPLE_MAIN$J_DECOMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD$non_lazy_ptr:
.indirect_symbol _JDMAINCT_PROCESS_DATA_SIMPLE_MAIN$J_DECOMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDMAINCT_PROCESS_DATA_CRANK_POST$J_DECOMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD$non_lazy_ptr:
.indirect_symbol _JDMAINCT_PROCESS_DATA_CRANK_POST$J_DECOMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDMAINCT_START_PASS_MAIN$J_DECOMPRESS_PTR$J_BUF_MODE$non_lazy_ptr:
.indirect_symbol _JDMAINCT_START_PASS_MAIN$J_DECOMPRESS_PTR$J_BUF_MODE
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

