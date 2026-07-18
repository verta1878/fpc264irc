# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_CRC_GET_CRC32_TABLE$$PCARDINAL
_CRC_GET_CRC32_TABLE$$PCARDINAL:
.reference get_crc32_table
.globl	get_crc32_table
get_crc32_table:
.reference _CRC_GET_CRC32_TABLE$$PCARDINAL
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj4
Lj4:
	popl	%edx
	movl	L_TC_CRC_CRC32_TABLE$non_lazy_ptr-Lj4(%edx),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CRC_CRC32$LONGWORD$PBYTE$LONGWORD$$LONGWORD
_CRC_CRC32$LONGWORD$PBYTE$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj8
Lj8:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj9
	jmp	Lj10
Lj9:
	movl	$0,-16(%ebp)
	jmp	Lj7
Lj10:
	movl	-4(%ebp),%eax
	notl	%eax
	movl	%eax,-4(%ebp)
	jmp	Lj16
	.align 2
Lj15:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-4(%ebp),%edx
	xorl	%edx,%eax
	andl	$255,%eax
	movl	-4(%ebp),%edx
	shrl	$8,%edx
	movl	L_TC_CRC_CRC32_TABLE$non_lazy_ptr-Lj8(%ebx),%ecx
	movl	(%ecx,%eax,4),%eax
	xorl	%edx,%eax
	movl	%eax,-4(%ebp)
	incl	-8(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-4(%ebp),%edx
	xorl	%edx,%eax
	andl	$255,%eax
	movl	-4(%ebp),%edx
	shrl	$8,%edx
	movl	L_TC_CRC_CRC32_TABLE$non_lazy_ptr-Lj8(%ebx),%ecx
	movl	(%ecx,%eax,4),%eax
	xorl	%edx,%eax
	movl	%eax,-4(%ebp)
	incl	-8(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-4(%ebp),%edx
	xorl	%edx,%eax
	andl	$255,%eax
	movl	-4(%ebp),%edx
	shrl	$8,%edx
	movl	L_TC_CRC_CRC32_TABLE$non_lazy_ptr-Lj8(%ebx),%ecx
	movl	(%ecx,%eax,4),%eax
	xorl	%edx,%eax
	movl	%eax,-4(%ebp)
	incl	-8(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-4(%ebp),%edx
	xorl	%edx,%eax
	andl	$255,%eax
	movl	-4(%ebp),%edx
	shrl	$8,%edx
	movl	L_TC_CRC_CRC32_TABLE$non_lazy_ptr-Lj8(%ebx),%ecx
	movl	(%ecx,%eax,4),%eax
	xorl	%edx,%eax
	movl	%eax,-4(%ebp)
	incl	-8(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-4(%ebp),%edx
	xorl	%edx,%eax
	andl	$255,%eax
	movl	-4(%ebp),%edx
	shrl	$8,%edx
	movl	L_TC_CRC_CRC32_TABLE$non_lazy_ptr-Lj8(%ebx),%ecx
	movl	(%ecx,%eax,4),%eax
	xorl	%edx,%eax
	movl	%eax,-4(%ebp)
	incl	-8(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-4(%ebp),%edx
	xorl	%edx,%eax
	andl	$255,%eax
	movl	-4(%ebp),%edx
	shrl	$8,%edx
	movl	L_TC_CRC_CRC32_TABLE$non_lazy_ptr-Lj8(%ebx),%ecx
	movl	(%ecx,%eax,4),%eax
	xorl	%edx,%eax
	movl	%eax,-4(%ebp)
	incl	-8(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-4(%ebp),%edx
	xorl	%edx,%eax
	andl	$255,%eax
	movl	-4(%ebp),%edx
	shrl	$8,%edx
	movl	L_TC_CRC_CRC32_TABLE$non_lazy_ptr-Lj8(%ebx),%ecx
	movl	(%ecx,%eax,4),%eax
	xorl	%edx,%eax
	movl	%eax,-4(%ebp)
	incl	-8(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-4(%ebp),%edx
	xorl	%edx,%eax
	andl	$255,%eax
	movl	-4(%ebp),%edx
	shrl	$8,%edx
	movl	L_TC_CRC_CRC32_TABLE$non_lazy_ptr-Lj8(%ebx),%ecx
	movl	(%ecx,%eax,4),%eax
	xorl	%edx,%eax
	movl	%eax,-4(%ebp)
	incl	-8(%ebp)
	subl	$8,-12(%ebp)
Lj16:
	movl	-12(%ebp),%eax
	cmpl	$8,%eax
	jae	Lj15
	jmp	Lj17
Lj17:
	jmp	Lj35
	.align 2
Lj34:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-4(%ebp),%edx
	xorl	%edx,%eax
	andl	$255,%eax
	movl	-4(%ebp),%edx
	shrl	$8,%edx
	movl	L_TC_CRC_CRC32_TABLE$non_lazy_ptr-Lj8(%ebx),%ecx
	movl	(%ecx,%eax,4),%eax
	xorl	%edx,%eax
	movl	%eax,-4(%ebp)
	incl	-8(%ebp)
	decl	-12(%ebp)
Lj35:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj34
	jmp	Lj36
Lj36:
	movl	-4(%ebp),%eax
	notl	%eax
	movl	%eax,-16(%ebp)
Lj7:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRC_GET_CRC64_TABLE$$PQWORD
_CRC_GET_CRC64_TABLE$$PQWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj42
Lj42:
	popl	%edx
	movl	L_TC_CRC_CRC64_TABLE$non_lazy_ptr-Lj42(%edx),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CRC_CRC64$QWORD$PBYTE$LONGWORD$$QWORD
_CRC_CRC64$QWORD$PBYTE$LONGWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj46
Lj46:
	popl	%ecx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj47
	jmp	Lj48
Lj47:
	movl	$-1,-16(%ebp)
	movl	$-1,-12(%ebp)
	jmp	Lj45
Lj48:
	jmp	Lj52
	.align 2
Lj51:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	$0,%edx
	xorl	8(%ebp),%eax
	xorl	12(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	movl	8(%ebp),%edx
	movl	12(%ebp),%ebx
	shrdl	$8,%ebx,%edx
	shrl	$8,%ebx
	movl	L_TC_CRC_CRC64_TABLE$non_lazy_ptr-Lj46(%ecx),%esi
	xorl	(%esi,%eax,8),%edx
	xorl	4(%esi,%eax,8),%ebx
	movl	%edx,8(%ebp)
	movl	%ebx,12(%ebp)
	incl	-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	$0,%edx
	xorl	8(%ebp),%eax
	xorl	12(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	movl	8(%ebp),%edx
	movl	12(%ebp),%ebx
	shrdl	$8,%ebx,%edx
	shrl	$8,%ebx
	movl	L_TC_CRC_CRC64_TABLE$non_lazy_ptr-Lj46(%ecx),%esi
	xorl	(%esi,%eax,8),%edx
	xorl	4(%esi,%eax,8),%ebx
	movl	%edx,8(%ebp)
	movl	%ebx,12(%ebp)
	incl	-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	$0,%edx
	xorl	8(%ebp),%eax
	xorl	12(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	movl	8(%ebp),%ebx
	movl	12(%ebp),%edx
	shrdl	$8,%edx,%ebx
	shrl	$8,%edx
	movl	L_TC_CRC_CRC64_TABLE$non_lazy_ptr-Lj46(%ecx),%esi
	xorl	(%esi,%eax,8),%ebx
	xorl	4(%esi,%eax,8),%edx
	movl	%ebx,8(%ebp)
	movl	%edx,12(%ebp)
	incl	-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	$0,%edx
	xorl	8(%ebp),%eax
	xorl	12(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	movl	8(%ebp),%ebx
	movl	12(%ebp),%esi
	shrdl	$8,%esi,%ebx
	shrl	$8,%esi
	movl	L_TC_CRC_CRC64_TABLE$non_lazy_ptr-Lj46(%ecx),%edx
	xorl	(%edx,%eax,8),%ebx
	xorl	4(%edx,%eax,8),%esi
	movl	%ebx,8(%ebp)
	movl	%esi,12(%ebp)
	incl	-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	$0,%edx
	xorl	8(%ebp),%eax
	xorl	12(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	movl	8(%ebp),%edx
	movl	12(%ebp),%esi
	shrdl	$8,%esi,%edx
	shrl	$8,%esi
	movl	L_TC_CRC_CRC64_TABLE$non_lazy_ptr-Lj46(%ecx),%ebx
	xorl	(%ebx,%eax,8),%edx
	xorl	4(%ebx,%eax,8),%esi
	movl	%edx,8(%ebp)
	movl	%esi,12(%ebp)
	incl	-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	$0,%edx
	xorl	8(%ebp),%eax
	xorl	12(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	movl	8(%ebp),%edx
	movl	12(%ebp),%ebx
	shrdl	$8,%ebx,%edx
	shrl	$8,%ebx
	movl	L_TC_CRC_CRC64_TABLE$non_lazy_ptr-Lj46(%ecx),%esi
	xorl	(%esi,%eax,8),%edx
	xorl	4(%esi,%eax,8),%ebx
	movl	%edx,8(%ebp)
	movl	%ebx,12(%ebp)
	incl	-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	$0,%edx
	xorl	8(%ebp),%eax
	xorl	12(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	movl	8(%ebp),%esi
	movl	12(%ebp),%edx
	shrdl	$8,%edx,%esi
	shrl	$8,%edx
	movl	L_TC_CRC_CRC64_TABLE$non_lazy_ptr-Lj46(%ecx),%ebx
	xorl	(%ebx,%eax,8),%esi
	xorl	4(%ebx,%eax,8),%edx
	movl	%esi,8(%ebp)
	movl	%edx,12(%ebp)
	incl	-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	$0,%edx
	xorl	8(%ebp),%eax
	xorl	12(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	movl	8(%ebp),%edx
	movl	12(%ebp),%ebx
	shrdl	$8,%ebx,%edx
	shrl	$8,%ebx
	movl	L_TC_CRC_CRC64_TABLE$non_lazy_ptr-Lj46(%ecx),%esi
	xorl	(%esi,%eax,8),%edx
	xorl	4(%esi,%eax,8),%ebx
	movl	%edx,8(%ebp)
	movl	%ebx,12(%ebp)
	incl	-4(%ebp)
	subl	$8,-8(%ebp)
Lj52:
	movl	-8(%ebp),%eax
	cmpl	$8,%eax
	jae	Lj51
	jmp	Lj53
Lj53:
	jmp	Lj71
	.align 2
Lj70:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	$0,%edx
	xorl	8(%ebp),%eax
	xorl	12(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	movl	8(%ebp),%edx
	movl	12(%ebp),%ebx
	shrdl	$8,%ebx,%edx
	shrl	$8,%ebx
	movl	L_TC_CRC_CRC64_TABLE$non_lazy_ptr-Lj46(%ecx),%esi
	xorl	(%esi,%eax,8),%edx
	xorl	4(%esi,%eax,8),%ebx
	movl	%edx,8(%ebp)
	movl	%ebx,12(%ebp)
	incl	-4(%ebp)
	decl	-8(%ebp)
Lj71:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj70
	jmp	Lj72
Lj72:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj45:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CRC_assign$QWORD$$U128
_CRC_assign$QWORD$$U128:
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
	movl	$0,8(%eax)
	movl	$0,12(%eax)
	leave
	ret

.text
	.align 4
.globl	_CRC_equal$U128$U128$$BOOLEAN
_CRC_equal$U128$U128$$BOOLEAN:
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
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	cmpl	-40(%ebp),%edx
	jne	Lj86
	cmpl	-44(%ebp),%eax
	jne	Lj86
	jmp	Lj87
	jmp	Lj86
Lj87:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	cmpl	-32(%ebp),%edx
	jne	Lj86
	cmpl	-36(%ebp),%eax
	jne	Lj86
	jmp	Lj85
	jmp	Lj86
Lj85:
	movb	$1,-9(%ebp)
	jmp	Lj88
Lj86:
	movb	$0,-9(%ebp)
Lj88:
	movb	-9(%ebp),%al
	movl	-52(%ebp),%esi
	movl	-48(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CRC_xor$U128$U128$$U128
_CRC_xor$U128$U128$$U128:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%eax),%ebx
	movl	4(%eax),%edx
	xorl	(%ecx),%ebx
	xorl	4(%ecx),%edx
	movl	-12(%ebp),%eax
	movl	%ebx,(%eax)
	movl	%edx,4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	8(%eax),%ebx
	movl	12(%eax),%ecx
	xorl	8(%edx),%ebx
	xorl	12(%edx),%ecx
	movl	-12(%ebp),%eax
	movl	%ebx,8(%eax)
	movl	%ecx,12(%eax)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRC_xor$U128$BYTE$$U128
_CRC_xor$U128$BYTE$$U128:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movzbl	-8(%ebp),%edx
	movl	$0,%ecx
	xorl	(%eax),%edx
	xorl	4(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	%edx,(%eax)
	movl	%ecx,4(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	12(%eax),%eax
	movl	-12(%ebp),%edx
	movl	%ecx,8(%edx)
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_CRC_shr$U128$BYTE$$U128
_CRC_shr$U128$BYTE$$U128:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%ebx
	movzbl	-8(%ebp),%ecx
	movl	$64,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	8(%ebx),%edx
	movl	12(%ebx),%eax
	cmpl	$64,%ecx
	jl	Lj105
	xorl	%edx,%edx
	xorl	%eax,%eax
	jmp	Lj107
Lj105:
	cmpl	$32,%ecx
	jl	Lj106
	subl	$32,%ecx
	shll	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj107
Lj106:
	shldl	%cl,%edx,%eax
	shll	%cl,%edx
Lj107:
	movl	-4(%ebp),%esi
	movzbl	-8(%ebp),%ecx
	movl	(%esi),%ebx
	movl	4(%esi),%esi
	cmpl	$64,%ecx
	jl	Lj108
	xorl	%ebx,%ebx
	xorl	%esi,%esi
	jmp	Lj110
Lj108:
	cmpl	$32,%ecx
	jl	Lj109
	subl	$32,%ecx
	shrl	%cl,%esi
	movl	%esi,%ebx
	xorl	%esi,%esi
	jmp	Lj110
Lj109:
	shrdl	%cl,%esi,%ebx
	shrl	%cl,%esi
Lj110:
	orl	%ebx,%edx
	orl	%esi,%eax
	movl	-12(%ebp),%ecx
	movl	%edx,(%ecx)
	movl	%eax,4(%ecx)
	movl	-4(%ebp),%edx
	movzbl	-8(%ebp),%ecx
	movl	8(%edx),%eax
	movl	12(%edx),%edx
	cmpl	$64,%ecx
	jl	Lj113
	xorl	%eax,%eax
	xorl	%edx,%edx
	jmp	Lj115
Lj113:
	cmpl	$32,%ecx
	jl	Lj114
	subl	$32,%ecx
	shrl	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj115
Lj114:
	shrdl	%cl,%edx,%eax
	shrl	%cl,%edx
Lj115:
	movl	-12(%ebp),%ecx
	movl	%eax,8(%ecx)
	movl	%edx,12(%ecx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CRC_shl$U128$BYTE$$U128
_CRC_shl$U128$BYTE$$U128:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movzbl	-8(%ebp),%ecx
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	$64,%ecx
	jl	Lj120
	xorl	%edx,%edx
	xorl	%eax,%eax
	jmp	Lj122
Lj120:
	cmpl	$32,%ecx
	jl	Lj121
	subl	$32,%ecx
	shll	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj122
Lj121:
	shldl	%cl,%edx,%eax
	shll	%cl,%edx
Lj122:
	movl	-12(%ebp),%ecx
	movl	%edx,(%ecx)
	movl	%eax,4(%ecx)
	movl	-4(%ebp),%edx
	movzbl	-8(%ebp),%ecx
	movl	$64,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	(%edx),%eax
	movl	4(%edx),%edx
	cmpl	$64,%ecx
	jl	Lj125
	xorl	%eax,%eax
	xorl	%edx,%edx
	jmp	Lj127
Lj125:
	cmpl	$32,%ecx
	jl	Lj126
	subl	$32,%ecx
	shrl	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj127
Lj126:
	shrdl	%cl,%edx,%eax
	shrl	%cl,%edx
Lj127:
	movl	-4(%ebp),%ebx
	movzbl	-8(%ebp),%ecx
	movl	8(%ebx),%esi
	movl	12(%ebx),%ebx
	cmpl	$64,%ecx
	jl	Lj128
	xorl	%esi,%esi
	xorl	%ebx,%ebx
	jmp	Lj130
Lj128:
	cmpl	$32,%ecx
	jl	Lj129
	subl	$32,%ecx
	shll	%cl,%esi
	movl	%esi,%ebx
	xorl	%esi,%esi
	jmp	Lj130
Lj129:
	shldl	%cl,%esi,%ebx
	shll	%cl,%esi
Lj130:
	orl	%esi,%eax
	orl	%ebx,%edx
	movl	-12(%ebp),%ecx
	movl	%eax,8(%ecx)
	movl	%edx,12(%ecx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CRC_and$U128$U128$$U128
_CRC_and$U128$U128$$U128:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%eax),%ebx
	movl	4(%eax),%edx
	andl	(%ecx),%ebx
	andl	4(%ecx),%edx
	movl	-12(%ebp),%eax
	movl	%ebx,(%eax)
	movl	%edx,4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	8(%eax),%ebx
	movl	12(%eax),%ecx
	andl	8(%edx),%ebx
	andl	12(%edx),%ecx
	movl	-12(%ebp),%eax
	movl	%ebx,8(%eax)
	movl	%ecx,12(%eax)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRC_and$U128$QWORD$$QWORD
_CRC_and$U128$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	andl	8(%ebp),%edx
	andl	12(%ebp),%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CRC_GET_CRC128_TABLE$$PU128
_CRC_GET_CRC128_TABLE$$PU128:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj142
Lj142:
	popl	%edx
	movl	L_TC_CRC_CRC128_TABLE$non_lazy_ptr-Lj142(%edx),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CRC_CRC128$U128$PBYTE$LONGWORD$$U128
_CRC_CRC128$U128$PBYTE$LONGWORD$$U128:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-332(%ebp)
	movl	%esi,-328(%ebp)
	movl	%edi,-324(%ebp)
	call	Lj146
Lj146:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%esi
	leal	-28(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj147
	jmp	Lj148
Lj147:
	movl	8(%ebp),%edi
	movl	L_TC_CRC_INITIALCRC128$non_lazy_ptr-Lj146(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	jmp	Lj145
Lj148:
	jmp	Lj152
	.align 2
Lj151:
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%esi
	xorl	%esi,%esi
	shll	$24,%ecx
	orl	%esi,%eax
	orl	%ecx,%edx
	movl	%eax,-60(%ebp)
	movl	%edx,-56(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movl	%eax,-52(%ebp)
	movl	%edx,-48(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-109(%ebp)
	movzbl	-109(%ebp),%eax
	movl	$0,%edx
	xorl	-28(%ebp),%eax
	xorl	-24(%ebp),%edx
	movl	%eax,-108(%ebp)
	movl	%edx,-104(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%edx,-100(%ebp)
	movl	%eax,-96(%ebp)
	leal	-92(%ebp),%edi
	leal	-108(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-92(%ebp),%eax
	movl	-88(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	shll	$4,%eax
	leal	-76(%ebp),%edi
	movl	L_TC_CRC_CRC128_TABLE$non_lazy_ptr-Lj146(%ebx),%edx
	leal	(%edx,%eax),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	movl	-76(%ebp),%edx
	movl	-72(%ebp),%ecx
	xorl	(%eax),%edx
	xorl	4(%eax),%ecx
	movl	%edx,-44(%ebp)
	movl	%ecx,-40(%ebp)
	movl	-4(%ebp),%ecx
	movl	-68(%ebp),%eax
	movl	-64(%ebp),%edx
	xorl	8(%ecx),%eax
	xorl	12(%ecx),%edx
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
	leal	-28(%ebp),%edi
	leal	-44(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	incl	-8(%ebp)
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%esi
	xorl	%esi,%esi
	shll	$24,%ecx
	orl	%esi,%eax
	orl	%ecx,%edx
	movl	%eax,-80(%ebp)
	movl	%edx,-76(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movl	%eax,-72(%ebp)
	movl	%edx,-68(%ebp)
	leal	-80(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-109(%ebp)
	movzbl	-109(%ebp),%eax
	movl	$0,%edx
	xorl	-28(%ebp),%eax
	xorl	-24(%ebp),%edx
	movl	%eax,-144(%ebp)
	movl	%edx,-140(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%eax,-136(%ebp)
	movl	%edx,-132(%ebp)
	leal	-128(%ebp),%edi
	leal	-144(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-128(%ebp),%eax
	movl	-124(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	shll	$4,%eax
	leal	-96(%ebp),%edi
	movl	L_TC_CRC_CRC128_TABLE$non_lazy_ptr-Lj146(%ebx),%edx
	leal	(%edx,%eax),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-64(%ebp),%eax
	movl	-96(%ebp),%edx
	movl	-92(%ebp),%ecx
	xorl	(%eax),%edx
	xorl	4(%eax),%ecx
	movl	%edx,-44(%ebp)
	movl	%ecx,-40(%ebp)
	movl	-64(%ebp),%eax
	movl	-88(%ebp),%edx
	movl	-84(%ebp),%ecx
	xorl	8(%eax),%edx
	xorl	12(%eax),%ecx
	movl	%edx,-36(%ebp)
	movl	%ecx,-32(%ebp)
	leal	-28(%ebp),%edi
	leal	-44(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	incl	-8(%ebp)
	movl	-28(%ebp),%edx
	movl	-24(%ebp),%eax
	shrdl	$8,%eax,%edx
	shrl	$8,%eax
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%esi
	xorl	%esi,%esi
	shll	$24,%ecx
	orl	%esi,%edx
	orl	%ecx,%eax
	movl	%edx,-144(%ebp)
	movl	%eax,-140(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	shrdl	$8,%eax,%edx
	shrl	$8,%eax
	movl	%edx,-136(%ebp)
	movl	%eax,-132(%ebp)
	leal	-144(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-84(%ebp)
	movzbl	-84(%ebp),%eax
	movl	$0,%edx
	xorl	-28(%ebp),%eax
	xorl	-24(%ebp),%edx
	movl	%eax,-160(%ebp)
	movl	%edx,-156(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%eax,-152(%ebp)
	movl	%edx,-148(%ebp)
	leal	-112(%ebp),%edi
	leal	-160(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-112(%ebp),%eax
	movl	-108(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	shll	$4,%eax
	leal	-128(%ebp),%edi
	movl	L_TC_CRC_CRC128_TABLE$non_lazy_ptr-Lj146(%ebx),%edx
	leal	(%edx,%eax),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-64(%ebp),%eax
	movl	-128(%ebp),%edx
	movl	-124(%ebp),%ecx
	xorl	(%eax),%edx
	xorl	4(%eax),%ecx
	movl	%edx,-44(%ebp)
	movl	%ecx,-40(%ebp)
	movl	-64(%ebp),%eax
	movl	-120(%ebp),%edx
	movl	-116(%ebp),%ecx
	xorl	8(%eax),%edx
	xorl	12(%eax),%ecx
	movl	%edx,-36(%ebp)
	movl	%ecx,-32(%ebp)
	leal	-28(%ebp),%edi
	leal	-44(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	incl	-8(%ebp)
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%esi
	xorl	%esi,%esi
	shll	$24,%ecx
	orl	%esi,%eax
	orl	%ecx,%edx
	movl	%eax,-44(%ebp)
	movl	%edx,-40(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
	leal	-44(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-84(%ebp)
	movzbl	-84(%ebp),%eax
	movl	$0,%edx
	xorl	-28(%ebp),%eax
	xorl	-24(%ebp),%edx
	movl	%eax,-176(%ebp)
	movl	%edx,-172(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%edx,-168(%ebp)
	movl	%eax,-164(%ebp)
	leal	-112(%ebp),%edi
	leal	-176(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-112(%ebp),%eax
	movl	-108(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	shll	$4,%eax
	leal	-128(%ebp),%edi
	movl	L_TC_CRC_CRC128_TABLE$non_lazy_ptr-Lj146(%ebx),%edx
	leal	(%edx,%eax),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-64(%ebp),%eax
	movl	-128(%ebp),%edx
	movl	-124(%ebp),%ecx
	xorl	(%eax),%edx
	xorl	4(%eax),%ecx
	movl	%edx,-160(%ebp)
	movl	%ecx,-156(%ebp)
	movl	-64(%ebp),%eax
	movl	-120(%ebp),%edx
	movl	-116(%ebp),%ecx
	xorl	8(%eax),%edx
	xorl	12(%eax),%ecx
	movl	%edx,-152(%ebp)
	movl	%ecx,-148(%ebp)
	leal	-28(%ebp),%edi
	leal	-160(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	incl	-8(%ebp)
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%esi
	xorl	%esi,%esi
	shll	$24,%ecx
	orl	%esi,%eax
	orl	%ecx,%edx
	movl	%eax,-176(%ebp)
	movl	%edx,-172(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movl	%eax,-168(%ebp)
	movl	%edx,-164(%ebp)
	leal	-176(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-84(%ebp)
	movzbl	-84(%ebp),%eax
	movl	$0,%edx
	xorl	-28(%ebp),%eax
	xorl	-24(%ebp),%edx
	movl	%eax,-192(%ebp)
	movl	%edx,-188(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%edx,-184(%ebp)
	movl	%eax,-180(%ebp)
	leal	-112(%ebp),%edi
	leal	-192(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-112(%ebp),%eax
	movl	-108(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	shll	$4,%eax
	leal	-128(%ebp),%edi
	movl	L_TC_CRC_CRC128_TABLE$non_lazy_ptr-Lj146(%ebx),%edx
	leal	(%edx,%eax),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-64(%ebp),%eax
	movl	-128(%ebp),%edx
	movl	-124(%ebp),%ecx
	xorl	(%eax),%edx
	xorl	4(%eax),%ecx
	movl	%edx,-160(%ebp)
	movl	%ecx,-156(%ebp)
	movl	-64(%ebp),%eax
	movl	-120(%ebp),%edx
	movl	-116(%ebp),%ecx
	xorl	8(%eax),%edx
	xorl	12(%eax),%ecx
	movl	%edx,-152(%ebp)
	movl	%ecx,-148(%ebp)
	leal	-28(%ebp),%edi
	leal	-160(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	incl	-8(%ebp)
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%esi
	xorl	%esi,%esi
	shll	$24,%ecx
	orl	%esi,%eax
	orl	%ecx,%edx
	movl	%eax,-208(%ebp)
	movl	%edx,-204(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	shrdl	$8,%eax,%edx
	shrl	$8,%eax
	movl	%edx,-200(%ebp)
	movl	%eax,-196(%ebp)
	leal	-208(%ebp),%eax
	movl	%eax,-148(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-149(%ebp)
	movzbl	-149(%ebp),%eax
	movl	$0,%edx
	xorl	-28(%ebp),%eax
	xorl	-24(%ebp),%edx
	movl	%eax,-256(%ebp)
	movl	%edx,-252(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%eax,-248(%ebp)
	movl	%edx,-244(%ebp)
	leal	-240(%ebp),%edi
	leal	-256(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-240(%ebp),%eax
	movl	-236(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	shll	$4,%eax
	leal	-224(%ebp),%edi
	movl	L_TC_CRC_CRC128_TABLE$non_lazy_ptr-Lj146(%ebx),%edx
	leal	(%edx,%eax),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-148(%ebp),%ecx
	movl	-224(%ebp),%edx
	movl	-220(%ebp),%eax
	xorl	(%ecx),%edx
	xorl	4(%ecx),%eax
	movl	%edx,-192(%ebp)
	movl	%eax,-188(%ebp)
	movl	-148(%ebp),%eax
	movl	-216(%ebp),%ecx
	movl	-212(%ebp),%edx
	xorl	8(%eax),%ecx
	xorl	12(%eax),%edx
	movl	%ecx,-184(%ebp)
	movl	%edx,-180(%ebp)
	leal	-28(%ebp),%edi
	leal	-192(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	incl	-8(%ebp)
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%esi
	xorl	%esi,%esi
	shll	$24,%ecx
	orl	%esi,%eax
	orl	%ecx,%edx
	movl	%eax,-256(%ebp)
	movl	%edx,-252(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movl	%eax,-248(%ebp)
	movl	%edx,-244(%ebp)
	leal	-256(%ebp),%eax
	movl	%eax,-212(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-213(%ebp)
	movzbl	-213(%ebp),%eax
	movl	$0,%edx
	xorl	-28(%ebp),%eax
	xorl	-24(%ebp),%edx
	movl	%eax,-288(%ebp)
	movl	%edx,-284(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%edx,-280(%ebp)
	movl	%eax,-276(%ebp)
	leal	-272(%ebp),%edi
	leal	-288(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-272(%ebp),%eax
	movl	-268(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	shll	$4,%eax
	leal	-240(%ebp),%edi
	movl	L_TC_CRC_CRC128_TABLE$non_lazy_ptr-Lj146(%ebx),%edx
	leal	(%edx,%eax),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-212(%ebp),%ecx
	movl	-240(%ebp),%edx
	movl	-236(%ebp),%eax
	xorl	(%ecx),%edx
	xorl	4(%ecx),%eax
	movl	%edx,-192(%ebp)
	movl	%eax,-188(%ebp)
	movl	-212(%ebp),%eax
	movl	-232(%ebp),%ecx
	movl	-228(%ebp),%edx
	xorl	8(%eax),%ecx
	xorl	12(%eax),%edx
	movl	%ecx,-184(%ebp)
	movl	%edx,-180(%ebp)
	leal	-28(%ebp),%edi
	leal	-192(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	incl	-8(%ebp)
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%ecx
	shrdl	$8,%ecx,%eax
	shrl	$8,%ecx
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%esi
	xorl	%esi,%esi
	shll	$24,%edx
	orl	%esi,%eax
	orl	%edx,%ecx
	movl	%eax,-224(%ebp)
	movl	%ecx,-220(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movl	%eax,-216(%ebp)
	movl	%edx,-212(%ebp)
	leal	-224(%ebp),%eax
	movl	%eax,-260(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-261(%ebp)
	movzbl	-261(%ebp),%eax
	movl	$0,%edx
	xorl	-28(%ebp),%eax
	xorl	-24(%ebp),%edx
	movl	%eax,-304(%ebp)
	movl	%edx,-300(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%eax,-296(%ebp)
	movl	%edx,-292(%ebp)
	leal	-288(%ebp),%edi
	leal	-304(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-288(%ebp),%eax
	movl	-284(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	shll	$4,%eax
	leal	-240(%ebp),%edi
	movl	L_TC_CRC_CRC128_TABLE$non_lazy_ptr-Lj146(%ebx),%edx
	leal	(%edx,%eax),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-260(%ebp),%ecx
	movl	-240(%ebp),%edx
	movl	-236(%ebp),%eax
	xorl	(%ecx),%edx
	xorl	4(%ecx),%eax
	movl	%edx,-192(%ebp)
	movl	%eax,-188(%ebp)
	movl	-260(%ebp),%eax
	movl	-232(%ebp),%ecx
	movl	-228(%ebp),%edx
	xorl	8(%eax),%ecx
	xorl	12(%eax),%edx
	movl	%ecx,-184(%ebp)
	movl	%edx,-180(%ebp)
	leal	-28(%ebp),%edi
	leal	-192(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	incl	-8(%ebp)
	subl	$8,-12(%ebp)
Lj152:
	movl	-12(%ebp),%eax
	cmpl	$8,%eax
	jae	Lj151
	jmp	Lj153
Lj153:
	jmp	Lj371
	.align 2
Lj370:
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%esi
	xorl	%esi,%esi
	shll	$24,%ecx
	orl	%esi,%eax
	orl	%ecx,%edx
	movl	%eax,-192(%ebp)
	movl	%edx,-188(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	shrdl	$8,%edx,%eax
	shrl	$8,%edx
	movl	%eax,-184(%ebp)
	movl	%edx,-180(%ebp)
	leal	-192(%ebp),%eax
	movl	%eax,-260(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-261(%ebp)
	movzbl	-261(%ebp),%eax
	movl	$0,%edx
	xorl	-28(%ebp),%eax
	xorl	-24(%ebp),%edx
	movl	%eax,-320(%ebp)
	movl	%edx,-316(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%eax,-312(%ebp)
	movl	%edx,-308(%ebp)
	leal	-288(%ebp),%edi
	leal	-320(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-288(%ebp),%eax
	movl	-284(%ebp),%edx
	andl	$255,%eax
	movl	$0,%edx
	shll	$4,%eax
	leal	-304(%ebp),%edi
	movl	L_TC_CRC_CRC128_TABLE$non_lazy_ptr-Lj146(%ebx),%edx
	leal	(%edx,%eax),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-260(%ebp),%ecx
	movl	-304(%ebp),%edx
	movl	-300(%ebp),%eax
	xorl	(%ecx),%edx
	xorl	4(%ecx),%eax
	movl	%edx,-240(%ebp)
	movl	%eax,-236(%ebp)
	movl	-260(%ebp),%ecx
	movl	-296(%ebp),%edx
	movl	-292(%ebp),%eax
	xorl	8(%ecx),%edx
	xorl	12(%ecx),%eax
	movl	%edx,-232(%ebp)
	movl	%eax,-228(%ebp)
	leal	-28(%ebp),%edi
	leal	-240(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	incl	-8(%ebp)
	decl	-12(%ebp)
Lj371:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj370
	jmp	Lj372
Lj372:
	movl	8(%ebp),%edi
	leal	-28(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
Lj145:
	movl	-332(%ebp),%ebx
	movl	-328(%ebp),%esi
	movl	-324(%ebp),%edi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_CRC
_THREADVARLIST_CRC:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_CRC_CRC32_TABLE
_TC_CRC_CRC32_TABLE:
	.long	0,1996959894,-301047508,-1727442502,124634137,1886057615,-379345611,-1637575261
	.long	249268274,2044508324,-522852066,-1747789432,162941995,2125561021,-407360249,-1866523247
	.long	498536548,1789927666,-205950648,-2067906082,450548861,1843258603,-187386543,-2083289657
	.long	325883990,1684777152,-43845254,-1973040660,335633487,1661365465,-99664541,-1928851979
	.long	997073096,1281953886,-715111964,-1570279054,1006888145,1258607687,-770865667,-1526024853
	.long	901097722,1119000684,-608450090,-1396901568,853044451,1172266101,-589951537,-1412350631
	.long	651767980,1373503546,-925412992,-1076862698,565507253,1454621731,-809855591,-1195530993
	.long	671266974,1594198024,-972236366,-1324619484,795835527,1483230225,-1050600021,-1234817731
	.long	1994146192,31158534,-1731059524,-271249366,1907459465,112637215,-1614814043,-390540237
	.long	2013776290,251722036,-1777751922,-519137256,2137656763,141376813,-1855689577,-429695999
	.long	1802195444,476864866,-2056965928,-228458418,1812370925,453092731,-2113342271,-183516073
	.long	1706088902,314042704,-1950435094,-54949764,1658658271,366619977,-1932296973,-69972891
	.long	1303535960,984961486,-1547960204,-725929758,1256170817,1037604311,-1529756563
	.long	-740887301,1131014506,879679996,-1385723834,-631195440,1141124467,855842277,-1442165665
	.long	-586318647,1342533948,654459306,-1106571248,-921952122,1466479909,544179635,-1184443383
	.long	-832445281,1591671054,702138776,-1328506846,-942167884,1504918807,783551873,-1212326853
	.long	-1061524307,-306674912,-1698712650,62317068,1957810842,-355121351,-1647151185
	.long	81470997,1943803523,-480048366,-1805370492,225274430,2053790376,-468791541,-1828061283
	.long	167816743,2097651377,-267414716,-2029476910,503444072,1762050814,-144550051,-2140837941
	.long	426522225,1852507879,-19653770,-1982649376,282753626,1742555852,-105259153,-1900089351
	.long	397917763,1622183637,-690576408,-1580100738,953729732,1340076626,-776247311,-1497606297
	.long	1068828381,1219638859,-670225446,-1358292148,906185462,1090812512,-547295293,-1469587627
	.long	829329135,1181335161,-882789492,-1134132454,628085408,1382605366,-871598187,-1156888829
	.long	570562233,1426400815,-977650754,-1296233688,733239954,1555261956,-1026031705,-1244606671
	.long	752459403,1541320221,-1687895376,-328994266,1969922972,40735498,-1677130071,-351390145
	.long	1913087877,83908371,-1782625662,-491226604,2075208622,213261112,-1831694693,-438977011
	.long	2094854071,198958881,-2032938284,-237706686,1759359992,534414190,-2118248755,-155638181
	.long	1873836001,414664567,-2012718362,-15766928,1711684554,285281116,-1889165569,-127750551
	.long	1634467795,376229701,-1609899400,-686959890,1308918612,956543938,-1486412191,-799009033
	.long	1231636301,1047427035,-1362007478,-640263460,1088359270,936918000,-1447252397
	.long	-558129467,1202900863,817233897,-1111625188,-893730166,1404277552,615818150,-1160759803
	.long	-841546093,1423857449,601450431,-1285129682,-1000256840,1567103746,711928724,-1274298825
	.long	-1022587231,1510334235,755167117

.data
	.align 2
.globl	_TC_CRC_CRC64_TABLE
_TC_CRC_CRC64_TABLE:
	.long	0,0
	.long	808814969,2061005000
	.long	1617629938,-172957296
	.long	1348377483,-1888972456
	.long	-1740523889,-1070013069
	.long	-1468776458,-1159686725
	.long	-131423107,898106595
	.long	-937480956,1330672683
	.long	1746206325,-1423381324
	.long	1478588172,-772760452
	.long	142601351,1587023140
	.long	944399870,608206316
	.long	-262846214,1796213191
	.long	-1067400829,298350863
	.long	-1874961912,-1633621929
	.long	-1609837711,-461858657
	.long	-2000785535,2097741627
	.long	-1198790920,131108851
	.long	-388661901,-2001199445
	.long	-656346102,-228561309
	.long	285202702,-1120921016
	.long	550129783,-941069696
	.long	1888799740,1216412632
	.long	1084310149,844663568
	.long	-525692428,-702540913
	.long	-794879859,-1393007801
	.long	-2134801658,596701727
	.long	-1326183809,1497924311
	.long	2028676987,370734844
	.long	1222553090,1824556596
	.long	411055497,-475523220
	.long	682999024,-1720686684
	.long	293396226,-99484041
	.long	558454395,-2134274369
	.long	1897385456,262217703
	.long	1092764809,1970892591
	.long	-1992463987,975772420
	.long	-1190600460,1089563596
	.long	-380208257,-811992428
	.long	-647761402,-1253995940
	.long	2036867447,1362694851
	.long	1230874638,736190987
	.long	419640197,-1534463149
	.long	691452668,-565083237
	.long	-517367816,-1862142032
	.long	-786686335,-338065544
	.long	-2126346998,1689327136
	.long	-1317598093,510224104
	.long	-1715294077,-2028404404
	.long	-1443415558,-37654140
	.long	-106323343,1923735772
	.long	-912512248,141660180
	.long	25363980,1193403455
	.long	834047861,1039766775
	.long	1642599678,-1299118673
	.long	1373478279,-934709913
	.long	-237613322,741469688
	.long	-1042036849,1458150704
	.long	-1849861116,-645854104
	.long	-1584867971,-1554416480
	.long	1771567225,-334952309
	.long	1503817984,-1764657085
	.long	167570059,431614235
	.long	969499634,1667340755
	.long	2054040943,-545596739
	.long	1247519766,-1516066187
	.long	436551581,717896493
	.long	707835620,1343376357
	.long	-500196384,524435406
	.long	-770043239,1704611590
	.long	-2109437678,-353182114
	.long	-1301217173,-1876250986
	.long	310039322,1951544841
	.long	575625827,243943105
	.long	1913766376,-2115840103
	.long	1109674129,-80042159
	.long	-1975818859,-1268067462
	.long	-1173426964,-827153486
	.long	-363825305,1104818922
	.long	-630850018,990003746
	.long	-221232402,-1569577594
	.long	-1025127529,-659925682
	.long	-1833218020,1472381974
	.long	-1567696539,756724958
	.long	1787950177,1649066229
	.long	1520729368,412266557
	.long	184215187,-1745215131
	.long	986673130,-316517971
	.long	-1698382693,156944690
	.long	-1427032606,1937947130
	.long	-89149847,-51763038
	.long	-895867120,-2043520918
	.long	42273300,-916313023
	.long	850428781,-1279632247
	.long	1659771110,1020448209
	.long	1390121375,1175108889
	.long	1796403821,627778762
	.long	1529314068,1605587970
	.long	192536735,-790903462
	.long	994863590,-1442597486
	.long	-212646686,-447495751
	.long	-1016672869,-1618235023
	.long	-1825024496,283320361
	.long	-1559371927,1782272225
	.long	50727960,-1908160386
	.long	859014497,-191121226
	.long	1668095722,2079533550
	.long	1398314899,19618086
	.long	-1689797993,1316695309
	.long	-1418578962,883121605
	.long	-80959387,-1144271715
	.long	-887545572,-1055671211
	.long	-475226644,1482939377
	.long	-744942443,582724409
	.long	-2084073698,-1378665887
	.long	-1275984281,-687125847
	.long	2079140707,-1738850686
	.long	1272488474,-494711222
	.long	461781393,1844174610
	.long	733196520,389263322
	.long	-1950850151,-213174459
	.long	-1148327200,-1986836595
	.long	-338464405,117167829
	.long	-605620206,2082711069
	.long	335140118,863228470
	.long	600595567,1235985150
	.long	1938999268,-960285786
	.long	1135038109,-1139063954
	.long	-1404319307,-1783852247
	.long	-1669447476,-277552159
	.long	-870261945,1612477113
	.long	-65711554,449053297
	.long	873103162,1435792986
	.long	71300675,793511570
	.long	1415671240,-1608214582
	.long	1683285169,-620959998
	.long	-1000392768,1048870813
	.long	-194330951,1146883925
	.long	-1540086478,-885744115
	.long	-1811829685,-1309872443
	.long	1545503055,-21194002
	.long	1814759478,-2073761242
	.long	1014338493,185367422
	.long	205527748,1909722038
	.long	620078644,-391877614
	.long	348139341,-1837359910
	.long	1151251654,487886210
	.long	1957379519,1741487434
	.long	-1129049925,681347425
	.long	-1937663550,1380252073
	.long	-589364663,-584292111
	.long	-320173264,-1477175239
	.long	1289836609,1133281446
	.long	2094321976,961867886
	.long	747260595,-1237556938
	.long	482329546,-857468418
	.long	-727650610,-2085329451
	.long	-459970633,-110357219
	.long	-1261700036,1980007493
	.long	-2063698619,215807117
	.long	-1120463177,1874685278
	.long	-1929207858,358948246
	.long	-581172155,-1710388018
	.long	-311849668,-522847226
	.long	628531256,-1350203347
	.long	356723009,-715261723
	.long	1159574218,1513449917
	.long	1965570995,552409461
	.long	-719066942,-996834838
	.long	-451518021,-1102188254
	.long	-1253508560,824533114
	.long	-2055376055,1274876082
	.long	1298292301,78472345
	.long	2102908724,2121602129
	.long	755584191,-249723639
	.long	490522054,-1949960767
	.long	898201910,313889381
	.long	96268367,1752031917
	.long	1440902084,-419073035
	.long	1708647101,-1646460099
	.long	-1379348551,-762480874
	.long	-1644345664,-1470822434
	.long	-844898997,658347654
	.long	-40479694,1575347790
	.long	1570604867,-1180860719
	.long	1839730234,-1018884583
	.long	1039570353,1278058305
	.long	230890696,922087305
	.long	-975425076,2040896418
	.long	-169232203,58583914
	.long	-1514724546,-1944749518
	.long	-1786598841,-154334470
	.long	-702159654,1255557524
	.long	-435130973,806238556
	.long	-1236339160,-1083791356
	.long	-2038726831,-977348404
	.long	1315197525,-1964069657
	.long	2119293740,-264840145
	.long	772751527,2136886647
	.long	507169246,92683711
	.long	-1104078161,-503405280
	.long	-1912302634,-1691953688
	.long	-564524963,340673712
	.long	-294682332,1855337592
	.long	644918304,566640723
	.long	373630297,1528705179
	.long	1176223442,-730422845
	.long	1982740395,-1364274933
	.long	1587252059,937342639
	.long	1856897570,1292289639
	.long	1055955369,-1032956097
	.long	247795920,-1196021769
	.long	-958775852,-135900196
	.long	-152062803,-1925307628
	.long	-1498337498,39236172
	.long	-1769691553,2022621828
	.long	915371310,-1661576677
	.long	112917591,-433181997
	.long	1457809372,1766243211
	.long	1725034149,329173827
	.long	-1362181215,1557053288
	.long	-1627698472,639029152
	.long	-827993773,-1451335944
	.long	-24094678,-744083920
	.long	-950453288,-1329088541
	.long	-143871327,-903887061
	.long	-1489884886,1165448819
	.long	-1761107885,1068443323
	.long	1595444567,1895781008
	.long	1865221166,170336856
	.long	1064542117,-2058374400
	.long	256251612,-6831160
	.long	-1353857619,468671319
	.long	-1619505964,1631005599
	.long	-819538081,-295716153
	.long	-15507930,-1803040241
	.long	923562786,-606618076
	.long	121240155,-1592799508
	.long	1466393040,778526644
	.long	1733486761,1421815676
	.long	1340560473,-842053416
	.long	2144525600,-1223215088
	.long	797722283,947890504
	.long	532271058,1118296448
	.long	-676928810,234335659
	.long	-409769041,1999625571
	.long	-1211240412,-129545157
	.long	-2013759139,-2103493389
	.long	670280236,1726456940
	.long	398861141,473945252
	.long	1201191134,-1822996996
	.long	2007839143,-376490700
	.long	-1078846301,-1495318241
	.long	-1886939686,-603508265
	.long	-539423151,1399824527
	.long	-269711576,699912263

.data
	.align 2
.globl	_TC_CRC_POLY128REV
_TC_CRC_POLY128REV:
	.long	1764847027,-708156315
	.long	-1404319307,-1783852247

.data
	.align 2
.globl	_TC_CRC_INITIALCRC128
_TC_CRC_INITIALCRC128:
	.long	-1,-1
	.long	-1,-1

.data
	.align 2
.globl	_TC_CRC_CRC128_TABLE
_TC_CRC_CRC128_TABLE:
	.long	0,0
	.long	0,0
	.long	-24131732,778817162
	.long	834047861,1039766775
	.long	-48263464,1557634325
	.long	1668095722,2079533550
	.long	59787700,1924944799
	.long	1390121375,1175108889
	.long	-96526928,-1179698645
	.long	-958775852,-135900196
	.long	78699228,-1748699999
	.long	-143871327,-903887061
	.long	119575400,-445077698
	.long	-1514724546,-1944749518
	.long	-105950204,-887920204
	.long	-1811829685,-1309872443
	.long	639426567,-657802083
	.long	-719066942,-996834838
	.long	-661444757,-157191657
	.long	-459970633,-110357219
	.long	-620532001,-2078465656
	.long	-1236339160,-1083791356
	.long	629975475,-1435046142
	.long	-2013759139,-2103493389
	.long	-601621065,1634043574
	.long	335140118,863228470
	.long	581712603,1326336060
	.long	575625827,243943105
	.long	557609839,1035082659
	.long	1888799740,1216412632
	.long	-541871101,333042985
	.long	1092764809,1970892591
	.long	-1638196375,436318704
	.long	-221232402,-1569577594
	.long	1624562693,879394682
	.long	-1016672869,-1618235023
	.long	1665439153,1188441317
	.long	-1849861116,-645854104
	.long	-1647619363,1757274735
	.long	-1609837711,-461858657
	.long	1684276953,-1548842021
	.long	873103162,1435792986
	.long	-1695825483,-1916451503
	.long	96268367,1752031917
	.long	-1719957503,-8841522
	.long	1466393040,778526644
	.long	1744064365,-787294140
	.long	1725034149,329173827
	.long	-1203242130,-1026880147
	.long	670280236,1726456940
	.long	1187527682,-325008409
	.long	373630297,1528705179
	.long	1163425206,-1642295176
	.long	1151251654,487886210
	.long	-1143491878,-1334354190
	.long	1965570995,552409461
	.long	1115219678,2070165318
	.long	-517367816,-1862142032
	.long	-1124654670,1427110348
	.long	-794879859,-1393007801
	.long	-1083742202,666085971
	.long	-2109437678,-353182114
	.long	1105768298,165176537
	.long	-1275984281,-687125847
	.long	-288035403,-1617450197
	.long	-1120463177,1874685278
	.long	274410201,-1308858975
	.long	-1937663550,1380252073
	.long	332096365,-1019201986
	.long	-564524963,340673712
	.long	-314268671,-315885388
	.long	-269711576,699912263
	.long	351006725,641241344
	.long	2079140707,-1738850686
	.long	-362530967,139681674
	.long	1247519766,-1516066187
	.long	-369852707,2062486549
	.long	411055497,-475523220
	.long	393984433,1417986719
	.long	691452668,-565083237
	.long	-926413390,1197283254
	.long	1746206325,-1423381324
	.long	910674654,1765202236
	.long	1503817984,-1764657085
	.long	903316330,462064291
	.long	192536735,-790903462
	.long	-883407866,903955497
	.long	986673130,-316517971
	.long	855052290,-17683043
	.long	-1362181215,1557053288
	.long	-864495762,-795221225
	.long	-1619505964,1631005599
	.long	-806838566,-1574588280
	.long	-844898997,658347654
	.long	828856758,-1941012990
	.long	-65711554,449053297
	.long	1888483036,-2053760293
	.long	1340560473,-842053416
	.long	-1912589904,-1409428399
	.long	2119293740,-264840145
	.long	-1919911932,-650016818
	.long	747260595,-1237556938
	.long	1931460456,-148223676
	.long	490522054,-1949960767
	.long	-1968116884,1010376944
	.long	-1992463987,975772420
	.long	1950297088,307424890
	.long	-1198790920,131108851
	.long	2007983540,1626258917
	.long	-363825305,1104818922
	.long	-1994349864,1317368687
	.long	-605620206,2082711069
	.long	1452480219,1566352966
	.long	-1698382693,156944690
	.long	-1474506313,1933011148
	.long	-1418578962,883121605
	.long	-1416849405,25901907
	.long	-106323343,1923735772
	.long	1426284399,803272153
	.long	-937480956,1330672683
	.long	-1398011029,-453796755
	.long	1545503055,-21194002
	.long	1378077703,-895986969
	.long	1839730234,-1018884583
	.long	1370719667,-1205599880
	.long	1064542117,-2058374400
	.long	-1355005217,-1773154318
	.long	247795920,-1196021769
	.long	-576070806,1060066903
	.long	2054040943,-545596739
	.long	589700102,289708253
	.long	1272488474,-494711222
	.long	548820402,1677249346
	.long	419640197,-1534463149
	.long	-566652194,1301480904
	.long	682999024,-1720686684
	.long	664192730,-2038403972
	.long	-1129049925,681347425
	.long	-652672586,-1460952330
	.long	-1929207858,358948246
	.long	-628537342,-631770775
	.long	-539423151,1399824527
	.long	604409710,-197378077
	.long	-294682332,1855337592
	.long	-72008851,-404362550
	.long	-1353857619,468671319
	.long	87751681,-913431488
	.long	-1627698472,639029152
	.long	111850933,-1154320417
	.long	-870261945,1612477113
	.long	-131763495,-1789281963
	.long	-40479694,1575347790
	.long	25831133,1581961441
	.long	1771567225,-334952309
	.long	-16391759,1881218667
	.long	1478588172,-772760452
	.long	-57300987,43863540
	.long	184215187,-1745215131
	.long	35286889,754353022
	.long	994863590,-1442597486
	.long	1139982339,623830951
	.long	-2000785535,2097741627
	.long	-1115879569,189081901
	.long	-1190600460,1089563596
	.long	-1091744037,2046393010
	.long	-338464405,117167829
	.long	1080199607,1469232184
	.long	-630850018,990003746
	.long	-1177690701,-1669210740
	.long	1315197525,-1964069657
	.long	1195514591,-1293282554
	.long	2144525600,-1223215088
	.long	1154634603,-1068089191
	.long	755584191,-249723639
	.long	-1168272377,-297955821
	.long	482329546,-857468418
	.long	1710104580,-35366086
	.long	1570604867,-1180860719
	.long	-1688082584,-745564752
	.long	1814759478,-2073761242
	.long	-1728991524,-1590442449
	.long	1055955369,-1032956097
	.long	1719560624,-1890056027
	.long	256251612,-6831160
	.long	-1613677132,1145790737
	.long	-1689797993,1316695309
	.long	1633614552,1780527003
	.long	-1427032606,1937947130
	.long	1657713516,412941316
	.long	-131423107,898106595
	.long	-1673432064,922169998
	.long	-912512248,141660180
	.long	863844063,-1598489220
	.long	-950453288,-1329088541
	.long	-839716429,-1898761226
	.long	-152062803,-1925307628
	.long	-832391161,-59809687
	.long	-1540086478,-885744115
	.long	820871019,-771445021
	.long	-1786598841,-154334470
	.long	-918410385,420988759
	.long	25363980,1193403455
	.long	936242179,930875869
	.long	808814969,2061005000
	.long	878552503,1170233922
	.long	1659771110,1020448209
	.long	-892181797,1806406856
	.long	1398314899,19618086
	.long	358733528,2020753889
	.long	310039322,1951544841
	.long	-336719436,1444515691
	.long	600595567,1235985150
	.long	-394373120,614849780
	.long	1897385456,262217703
	.long	384933740,181277310
	.long	1084310149,844663568
	.long	-279000216,-1042449462
	.long	-727650610,-2085329451
	.long	298912772,-273238720
	.long	-451518021,-1102188254
	.long	306267568,-1660229921
	.long	-1211240412,-129545157
	.long	-322010404,-1285478315
	.long	-2038726831,-977348404
	.long	-1390006858,-1162261364
	.long	898201910,313889381
	.long	1403644634,-1798143482
	.long	71300675,793511570
	.long	1345954670,-428944999
	.long	1457809372,1766243211
	.long	-1363778558,-939188461
	.long	1733486761,1421815676
	.long	1461268486,51803815
	.long	-212646686,-447495751
	.long	-1449724054,763213869
	.long	-1025127529,-659925682
	.long	-1442398498,1606544306
	.long	-1874961912,-1633621929
	.long	1418295730,1906976056
	.long	-1584867971,-1554416480
	.long	-1959080527,1651765265
	.long	-525692428,-702540913
	.long	1974799069,1276657307
	.long	-786686335,-338065544
	.long	1982153577,1050963204
	.long	-2084073698,-1378665887
	.long	-2002091003,282043278
	.long	-1301217173,-1876250986
	.long	1896206337,-606287302
	.long	644918304,566640723
	.long	-1886775443,-172555088
	.long	398861141,473945252
	.long	-1944428839,-2029299921
	.long	1159574218,1513449917
	.long	1922406837,-1453287003
	.long	1957379519,1741487434
	.long	1764847027,-708156315
	.long	-1404319307,-1783852247
	.long	-1749112097,-73291025
	.long	-1644345664,-1470822434
	.long	-1808866453,-1994524304
	.long	-819538081,-295716153
	.long	1788945415,-1485424646
	.long	-24094678,-744083920
	.long	-1827770365,1818582606
	.long	1787950177,1649066229
	.long	1837217647,1108250820
	.long	1529314068,1605587970
	.long	1846673115,817021787
	.long	167570059,431614235
	.long	-1868678729,517541329
	.long	944399870,608206316
	.long	1328385460,218159352
	.long	2036867447,1362694851
	.long	-1314764072,594220658
	.long	1222553090,1824556596
	.long	-1305345172,1373062637
	.long	436551581,717896493
	.long	1287504896,2143062887
	.long	733196520,389263322
	.long	-1257074684,-1263541549
	.long	-1078846301,-1495318241
	.long	1268602728,-1698419623
	.long	-1912302634,-1691953688
	.long	1208819420,-394756154
	.long	-589364663,-584292111
	.long	-1232938576,-971787956
	.long	-311849668,-522847226
	.long	-144017702,-808725099
	.long	1587252059,937342639
	.long	166048182,-509600993
	.long	1865221166,170336856
	.long	175503362,-1826862976
	.long	1039570353,1278058305
	.long	-184926354,-1116240374
	.long	205527748,1909722038
	.long	223701866,1986326462
	.long	-1740523889,-1070013069
	.long	-203772922,1477386548
	.long	-1443415558,-37654140
	.long	-263526990,716403371
	.long	-80959387,-1144271715
	.long	247800542,81312801
	.long	-895867120,-2043520918
	.long	-780757283,385968392
	.long	-1950850151,-213174459
	.long	804868529,963291010
	.long	-1173426964,-827153486
	.long	745084933,1272378397
	.long	-388661901,-2001199445
	.long	-756621463,1706900119
	.long	-647761402,-1253995940
	.long	726240109,-1364307165
	.long	1298292301,78472345
	.long	-708424703,-2134532695
	.long	2094321976,961867886
	.long	-699005515,-226898378
	.long	772751527,2136886647
	.long	685359833,-602799940
	.long	532271058,1118296448
	.long	-2015002618,1247661902
	.long	293396226,-99484041
	.long	2037008234,1681260996
	.long	550129783,-941069696
	.long	2063208158,378163803
	.long	1913766376,-2115840103
	.long	-2072655438,954309841
	.long	1135038109,-1139063954
	.long	2111479222,-202181275
	.long	-676928810,234335659
	.long	-2091558182,-577160209
	.long	-435130973,806238556
	.long	-2134568082,-1356502928
	.long	-1261700036,1980007493
	.long	2118833154,-2125551878
	.long	-2055376055,1274876082
	.long	-1577492479,-1835568173
	.long	-1000392768,1048870813
	.long	1601611629,-1124287143
	.long	-169232203,58583914
	.long	1558638297,-834605370
	.long	-1489884886,1165448819
	.long	-1570166347,-534044596
	.long	-1769691553,2022621828
	.long	1539734961,725109240
	.long	42273300,-916313023
	.long	-1521894691,89360242
	.long	859014497,-191121226
	.long	-1495665815,2012206317
	.long	1642599678,-1299118673
	.long	1482044421,1501829735
	.long	1348377483,-1888972456
	.long	431922031,1348239038
	.long	-475226644,1482939377
	.long	-416195581,2117578804
	.long	-770043239,1704611590
	.long	-459205193,210494379
	.long	-2134801658,596701727
	.long	439276251,585116961
	.long	-1317598093,510224104
	.long	-478050593,-369933163
	.long	628531256,-1350203347
	.long	487473587,-946304481
	.long	348139341,-1837359910
	.long	513673223,-1255876224
	.long	1176223442,-730422845
	.long	-535703701,-1689315574
	.long	2007839143,-376490700
	.long	1067613032,-2003385821
	.long	915371310,-1661576677
	.long	-1053967356,-1493365591
	.long	121240155,-1592799508
	.long	-1027738192,-733913290
	.long	1440902084,-419073035
	.long	1009922780,-97873476
	.long	1683285169,-620959998
	.long	-979540264,825882632
	.long	-262846214,1796213191
	.long	991076788,525481602
	.long	-1042036849,1458150704
	.long	948103168,1844339997
	.long	-1825024496,283320361
	.long	-972214420,1132833687
	.long	-1567696539,756724958
	.long	-1265060135,-354078158
	.long	-702159654,1255557524
	.long	1243050421,-997262152
	.long	-409769041,1999625571
	.long	1233598465,-1238192345
	.long	-1253508560,824533114
	.long	-1224147091,-1738972755
	.long	-2063698619,215807117
	.long	1319611241,1397360665
	.long	285202702,-1120921016
	.long	-1339528187,2099365523
	.long	558454395,-2134274369
	.long	-1279777359,261985548
	.long	1938999268,-960285786
	.long	1295508189,569793414
	.long	1109674129,-80042159
	.long	-1836820770,841977519
	.long	50727960,-1908160386
	.long	1812697522,474234917
	.long	850428781,-1279632247
	.long	1872484358,1861751738
	.long	1617629938,-172957296
	.long	-1860952214,1083432240
	.long	1373478279,-934709913
	.long	1757105006,-1954499452
	.long	-975425076,2040896418
	.long	-1774941182,-1511294450
	.long	-194330951,1146883925
	.long	-1784363594,-682153583
	.long	-1498337498,39236172
	.long	1797980890,-113449189
	.long	-1761107885,1068443323
	.long	717467056,-253459518
	.long	620078644,-391877614
	.long	-733189412,-561033912
	.long	356723009,-715261723
	.long	-673438872,-1405935913
	.long	1201191134,-1822996996
	.long	693363716,-2108108707
	.long	1982740395,-1364274933
	.long	-788746240,1229699561
	.long	-500196384,524435406
	.long	779319148,1730180963
	.long	-744942443,582724409
	.long	769867480,362554620
	.long	-2126346998,1689327136
	.long	-747832908,1006103158
	.long	-1326183809,1497924311
	.long	215961015,674119519
	.long	-237613322,741469688
	.long	-229602597,105247189
	.long	-1067400829,298350863
	.long	-239025297,1962517066
	.long	-1833218020,1472381974
	.long	256836611,1519545536
	.long	-1559371927,1782272225
	.long	-153071609,-1853815436
	.long	923562786,-606618076
	.long	141530987,-1075131394
	.long	112917591,-433181997
	.long	201318111,-849962911
	.long	1415671240,-1608214582
	.long	-177202765,-482519317
	.long	1708647101,-1646460099
	.long	1514953580,1970444569
	.long	1796403821,627778762
	.long	-1530684416,1528387475
	.long	1520729368,412266557
	.long	-1487678028,698680332
	.long	142601351,1587023140
	.long	1507594968,130992774
	.long	969499634,1667340755
	.long	-1603057956,-857889998
	.long	-1379348551,-762480874
	.long	1593606576,-491360840
	.long	-1669447476,-277552159
	.long	1567410180,-1878376921
	.long	-827993773,-1451335944
	.long	-1545400472,-1100877651
	.long	-15507930,-1803040241
	.long	2085665643,-1380440700
	.long	-1104078161,-503405280
	.long	-2099282937,-2083263730
	.long	-1886939686,-603508265
	.long	-2125515341,-244336495
	.long	-581172155,-1710388018
	.long	2143351519,-553355749
	.long	-320173264,-1477175239
	.long	-2039503141,337059759
	.long	2028676987,370734844
	.long	2027970999,981258533
	.long	1230874638,736190987
	.long	2070947843,1220575930
	.long	461781393,1844174610
	.long	-2046824593,1722502192
	.long	707835620,1343376357
	.long	-1005109243,1869818089
	.long	-1715294077,-2028404404
	.long	983074665,1092150883
	.long	-1468776458,-1159686725
	.long	956878557,866432508
	.long	-89149847,-51763038
	.long	-947451471,500136822
	.long	-887545572,-1055671211
	.long	1042832821,-690220350
	.long	1595444567,1895781008
	.long	-1062757671,-122168248
	.long	1856897570,1292289639
	.long	-1019751571,-1978953769
	.long	1014338493,185367422
	.long	1035473921,-1537195683
	.long	230890696,922087305
	.long	-502554622,-1212574604
	.long	1289836609,1133281446
	.long	478439278,-1714267394
	.long	2102908724,2121602129
	.long	521416410,-345110175
	.long	797722283,947890504
	.long	-509875786,-989476885
	.long	507169246,92683711
	.long	406109618,236367455
	.long	-1975818859,-1268067462
	.long	-423920930,545087701
	.long	-1148327200,-1986836595
	.long	-450153622,1388393290
	.long	-380208257,-811992428
	.long	463795206,2091580864
	.long	-656346102,-228561309
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

.const_data
	.align 2
.globl	_INIT_CRC_PU128
_INIT_CRC_PU128:
	.byte	0
	.ascii	"\005pu128"

.const_data
	.align 2
.globl	_RTTI_CRC_PU128
_RTTI_CRC_PU128:
	.byte	0
	.ascii	"\005pu128"

.const_data
	.align 2
.globl	_INIT_CRC_U128
_INIT_CRC_U128:
	.byte	13,4
	.ascii	"u128"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_CRC_U128
_RTTI_CRC_U128:
	.byte	13,4
	.ascii	"u128"
	.long	16,3
	.long	_RTTI_SYSTEM_QWORD
	.long	0
	.long	_RTTI_SYSTEM_QWORD
	.long	8
	.long	_RTTI_SYSTEM_TGUID
	.long	0
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
L_TC_CRC_CRC32_TABLE$non_lazy_ptr:
.indirect_symbol _TC_CRC_CRC32_TABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_CRC_CRC64_TABLE$non_lazy_ptr:
.indirect_symbol _TC_CRC_CRC64_TABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_CRC_CRC128_TABLE$non_lazy_ptr:
.indirect_symbol _TC_CRC_CRC128_TABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_CRC_INITIALCRC128$non_lazy_ptr:
.indirect_symbol _TC_CRC_INITIALCRC128
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

