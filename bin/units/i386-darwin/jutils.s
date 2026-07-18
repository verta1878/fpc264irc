# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT
_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	cltd
	idivl	-8(%ebp)
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JUTILS_JROUND_UP$LONGINT$LONGINT$$LONGINT
_JUTILS_JROUND_UP$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	addl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cltd
	idivl	-8(%ebp)
	movl	-4(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JUTILS_FMEMZERO$POINTER$LONGINT
_JUTILS_FMEMZERO$POINTER$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	leave
	ret

.text
	.align 4
.globl	_JUTILS_FMEMCOPY$POINTER$POINTER$LONGINT
_JUTILS_FMEMCOPY$POINTER$POINTER$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_JUTILS_JCOPY_SAMPLE_ROWS$JSAMPARRAY$LONGINT$JSAMPARRAY$LONGINT$LONGINT$LONGWORD
_JUTILS_JCOPY_SAMPLE_ROWS$JSAMPARRAY$LONGINT$JSAMPARRAY$LONGINT$LONGINT$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	shll	$2,%eax
	addl	%eax,-4(%ebp)
	movl	16(%ebp),%eax
	shll	$2,%eax
	addl	%eax,-12(%ebp)
	movl	12(%ebp),%eax
	decl	%eax
	movl	%eax,-28(%ebp)
	cmpl	$0,-28(%ebp)
	jl	Lj32
	incl	-28(%ebp)
	.align 2
Lj33:
	decl	-28(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	addl	$4,-4(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	addl	$4,-12(%ebp)
	movl	-24(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_JUTILS_FMEMCOPY$POINTER$POINTER$LONGINT$stub
	cmpl	$0,-28(%ebp)
	jg	Lj33
Lj32:
	leave
	ret

.text
	.align 4
.globl	_JUTILS_JCOPY_BLOCK_ROW$JBLOCKROW$JBLOCKROW$LONGWORD
_JUTILS_JCOPY_BLOCK_ROW$JBLOCKROW$JBLOCKROW$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	shll	$8,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_JUTILS_FMEMCOPY$POINTER$POINTER$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_JUTILS_JZERO_FAR$POINTER$LONGINT
_JUTILS_JZERO_FAR$POINTER$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JUTILS_FMEMZERO$POINTER$LONGINT$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JUTILS
_THREADVARLIST_JUTILS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_JUTILS_JPEG_NATURAL_ORDER
_TC_JUTILS_JPEG_NATURAL_ORDER:
	.long	0,1,8,16,9,2,3,10,17,24,32,25,18,11,4,5,12,19,26,33,40,48,41,34,27,20,13,6,7,14,21,28,35,42,49,56,57,50,43,36,29
	.long	22,15,23,30,37,44,51,58,59,52,45,38,31,39,46,53,60,61,54,47,55,62,63,63,63,63,63,63,63,63,63,63,63,63,63,63
	.long	63,63,63
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
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

L_JUTILS_FMEMCOPY$POINTER$POINTER$LONGINT$stub:
.indirect_symbol _JUTILS_FMEMCOPY$POINTER$POINTER$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JUTILS_FMEMZERO$POINTER$LONGINT$stub:
.indirect_symbol _JUTILS_FMEMZERO$POINTER$LONGINT
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

