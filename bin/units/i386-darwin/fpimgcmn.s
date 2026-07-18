# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPIMGCMN_SWAP$WORD$$WORD
_FPIMGCMN_SWAP$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	andw	$255,%ax
	movb	%al,-7(%ebp)
	movw	-4(%ebp),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movb	%al,-8(%ebp)
	movzbw	-7(%ebp),%ax
	movw	%ax,-10(%ebp)
	movzwl	-10(%ebp),%eax
	shll	$8,%eax
	movzbl	-8(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_FPIMGCMN_SWAP$LONGINT$$LONGINT
_FPIMGCMN_SWAP$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPIMGCMN_SWAP$LONGWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMGCMN_SWAP$LONGWORD$$LONGWORD
_FPIMGCMN_SWAP$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$65535,%eax
	movw	%ax,-10(%ebp)
	movw	-10(%ebp),%ax
	andw	$255,%ax
	movb	%al,-11(%ebp)
	movw	-10(%ebp),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movb	%al,-12(%ebp)
	movzbl	-11(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	shll	$8,%eax
	movzbl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	andl	$-65536,%eax
	shrl	$16,%eax
	movw	%ax,-10(%ebp)
	movw	-10(%ebp),%ax
	andw	$255,%ax
	movb	%al,-11(%ebp)
	movw	-10(%ebp),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movb	%al,-12(%ebp)
	movzbw	-11(%ebp),%ax
	movw	%ax,-10(%ebp)
	movl	-16(%ebp),%eax
	shll	$16,%eax
	movzwl	-10(%ebp),%edx
	shll	$8,%edx
	addl	%edx,%eax
	movzbl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMGCMN_SWAP$QWORD$$QWORD
_FPIMGCMN_SWAP$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	$0,%edx
	movl	%eax,-12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	$0,%eax
	xorl	%eax,%eax
	movl	%edx,-16(%ebp)
	movl	-12(%ebp),%eax
	call	L_FPIMGCMN_SWAP$LONGWORD$$LONGWORD$stub
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	call	L_FPIMGCMN_SWAP$LONGWORD$$LONGWORD$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	xorl	%edx,%edx
	movl	-16(%ebp),%ecx
	movl	$0,%ebx
	addl	%ecx,%edx
	adcl	%ebx,%eax
	movl	%edx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMGCMN_SWAP$INT64$$INT64
_FPIMGCMN_SWAP$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_FPIMGCMN_SWAP$QWORD$$QWORD$stub
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMGCMN_MAKECRCTABLE
_FPIMGCMN_MAKECRCTABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj66
Lj66:
	popl	%edx
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.align 2
Lj69:
	incl	-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj74:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	andl	$1,%eax
	cmpl	$1,%eax
	je	Lj75
	jmp	Lj76
Lj75:
	movl	-4(%ebp),%eax
	shrl	$1,%eax
	xorl	$-306674912,%eax
	movl	%eax,-4(%ebp)
	jmp	Lj79
Lj76:
	movl	-4(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-4(%ebp)
Lj79:
	cmpl	$7,-12(%ebp)
	jl	Lj74
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	L_U_FPIMGCMN_CRCTABLE$non_lazy_ptr-Lj66(%edx),%ebx
	movl	%ecx,(%ebx,%eax,4)
	cmpl	$255,-8(%ebp)
	jl	Lj69
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMGCMN_CALCULATECRC$LONGWORD$formal$LONGINT$$LONGWORD
_FPIMGCMN_CALCULATECRC$LONGWORD$formal$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	call	Lj85
Lj85:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%ecx
	decl	%ecx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ecx
	jl	Lj91
	decl	-24(%ebp)
	.align 2
Lj92:
	incl	-24(%ebp)
	movl	-20(%ebp),%eax
	movb	(%eax),%dl
	movb	-16(%ebp),%al
	xorb	%al,%dl
	movzbl	%dl,%edx
	movl	%edx,-28(%ebp)
	movl	-16(%ebp),%eax
	shrl	$8,%eax
	movl	-28(%ebp),%edx
	movl	L_U_FPIMGCMN_CRCTABLE$non_lazy_ptr-Lj85(%ebx),%esi
	movl	(%esi,%edx,4),%edx
	xorl	%edx,%eax
	movl	%eax,-16(%ebp)
	incl	-20(%ebp)
	cmpl	-24(%ebp),%ecx
	jg	Lj92
Lj91:
	movl	-16(%ebp),%eax
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMGCMN_CALCULATECRC$formal$LONGINT$$LONGWORD
_FPIMGCMN_CALCULATECRC$formal$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$-1,%eax
	call	L_FPIMGCMN_CALCULATECRC$LONGWORD$formal$LONGINT$$LONGWORD$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	notl	%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPIMGCMN
_INIT$_FPIMGCMN:
.reference __FPIMGCMN_init
.globl	__FPIMGCMN_init
__FPIMGCMN_init:
.reference _INIT$_FPIMGCMN
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_FPIMGCMN_MAKECRCTABLE$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_FPIMGCMN_CRCTABLE
.data
.zerofill __DATA, __common, _U_FPIMGCMN_CRCTABLE, 1024,2



.data
	.align 2
.globl	_THREADVARLIST_FPIMGCMN
_THREADVARLIST_FPIMGCMN:
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

L_FPIMGCMN_SWAP$LONGWORD$$LONGWORD$stub:
.indirect_symbol _FPIMGCMN_SWAP$LONGWORD$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMGCMN_SWAP$QWORD$$QWORD$stub:
.indirect_symbol _FPIMGCMN_SWAP$QWORD$$QWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMGCMN_CALCULATECRC$LONGWORD$formal$LONGINT$$LONGWORD$stub:
.indirect_symbol _FPIMGCMN_CALCULATECRC$LONGWORD$formal$LONGINT$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMGCMN_MAKECRCTABLE$stub:
.indirect_symbol _FPIMGCMN_MAKECRCTABLE
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
L_U_FPIMGCMN_CRCTABLE$non_lazy_ptr:
.indirect_symbol _U_FPIMGCMN_CRCTABLE
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

