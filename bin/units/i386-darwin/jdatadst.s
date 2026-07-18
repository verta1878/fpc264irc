# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JDATADST_INIT_DESTINATION$J_COMPRESS_PTR
_JDATADST_INIT_DESTINATION$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$4096,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	-8(%ebp),%edx
	movl	%eax,24(%edx)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	$4096,4(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDATADST_EMPTY_OUTPUT_BUFFER$J_COMPRESS_PTR$$BOOLEAN
_JDATADST_EMPTY_OUTPUT_BUFFER$J_COMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%edx
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	$4096,%ecx
	call	L_JINCLUDE_JFWRITE$FILEPTR$POINTER$LONGINT$$LONGINT$stub
	cmpl	$4096,%eax
	jne	Lj23
	jmp	Lj24
Lj23:
	movl	-4(%ebp),%eax
	movb	$38,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj24:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	$4096,4(%eax)
	movb	$1,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JDATADST_TERM_DESTINATION$J_COMPRESS_PTR
_JDATADST_TERM_DESTINATION$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	$4096,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj47
	jmp	Lj48
Lj47:
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	-12(%ebp),%ecx
	call	L_JINCLUDE_JFWRITE$FILEPTR$POINTER$LONGINT$$LONGINT$stub
	cmpl	-12(%ebp),%eax
	jne	Lj49
	jmp	Lj50
Lj49:
	movl	-4(%ebp),%eax
	movb	$38,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj50:
Lj48:
	call	L_SYSTEM_IORESULT$$WORD$stub
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj61
	jmp	Lj62
Lj61:
	movl	-4(%ebp),%eax
	movb	$38,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj62:
	leave
	ret

.text
	.align 4
.globl	_JDATADST_JPEG_STDIO_DEST$J_COMPRESS_PTR$FILEPTR
_JDATADST_JPEG_STDIO_DEST$J_COMPRESS_PTR$FILEPTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj68
Lj68:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj69
	jmp	Lj70
Lj69:
	movl	-4(%ebp),%eax
	movl	$28,%ecx
	movl	$0,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	-4(%ebp),%edx
	movl	%eax,24(%edx)
Lj70:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	L_JDATADST_INIT_DESTINATION$J_COMPRESS_PTR$non_lazy_ptr-Lj68(%esi),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%edx
	movl	L_JDATADST_EMPTY_OUTPUT_BUFFER$J_COMPRESS_PTR$$BOOLEAN$non_lazy_ptr-Lj68(%esi),%eax
	movl	%eax,12(%edx)
	movl	-12(%ebp),%edx
	movl	L_JDATADST_TERM_DESTINATION$J_COMPRESS_PTR$non_lazy_ptr-Lj68(%esi),%eax
	movl	%eax,16(%edx)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JDATADST
_THREADVARLIST_JDATADST:
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

L_JINCLUDE_JFWRITE$FILEPTR$POINTER$LONGINT$$LONGINT$stub:
.indirect_symbol _JINCLUDE_JFWRITE$FILEPTR$POINTER$LONGINT$$LONGINT
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

L_SYSTEM_IORESULT$$WORD$stub:
.indirect_symbol _SYSTEM_IORESULT$$WORD
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
L_JDATADST_INIT_DESTINATION$J_COMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JDATADST_INIT_DESTINATION$J_COMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDATADST_EMPTY_OUTPUT_BUFFER$J_COMPRESS_PTR$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JDATADST_EMPTY_OUTPUT_BUFFER$J_COMPRESS_PTR$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDATADST_TERM_DESTINATION$J_COMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JDATADST_TERM_DESTINATION$J_COMPRESS_PTR
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

