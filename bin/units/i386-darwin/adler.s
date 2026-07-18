# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_ADLER_ADLER32$LONGWORD$PBYTE$LONGWORD$$LONGWORD
_ADLER_ADLER32$LONGWORD$PBYTE$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	andl	$65535,%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	shrl	$16,%eax
	andl	$65535,%eax
	movl	%eax,-24(%ebp)
	cmpl	$0,-8(%ebp)
	jne	Lj10
	jmp	Lj9
Lj9:
	movl	$1,-16(%ebp)
	jmp	Lj3
Lj10:
	jmp	Lj14
	.align 2
Lj13:
	movl	-12(%ebp),%eax
	cmpl	$3854,%eax
	jb	Lj16
	jmp	Lj17
Lj16:
	movl	-12(%ebp),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj20
Lj17:
	movl	$3854,-28(%ebp)
Lj20:
	movl	-28(%ebp),%eax
	subl	%eax,-12(%ebp)
	jmp	Lj24
	.align 2
Lj23:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	addl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	addl	%eax,-24(%ebp)
	incl	-8(%ebp)
	decl	-28(%ebp)
Lj24:
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj23
	jmp	Lj25
Lj25:
	movl	-20(%ebp),%eax
	xorl	%edx,%edx
	movl	$65521,%ecx
	divl	%ecx
	movl	%edx,-20(%ebp)
	movl	-24(%ebp),%eax
	xorl	%edx,%edx
	movl	$65521,%ecx
	divl	%ecx
	movl	%edx,-24(%ebp)
Lj14:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj13
	jmp	Lj15
Lj15:
	movl	-24(%ebp),%eax
	shll	$16,%eax
	movl	-20(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-16(%ebp)
Lj3:
	movl	-16(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_ADLER
_THREADVARLIST_ADLER:
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

