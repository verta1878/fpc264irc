# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JDATASRC_INIT_SOURCE$J_DECOMPRESS_PTR
_JDATASRC_INIT_SOURCE$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movb	$1,36(%eax)
	leave
	ret

.text
	.align 4
.globl	_JDATASRC_FILL_INPUT_BUFFER$J_DECOMPRESS_PTR$$BOOLEAN
_JDATASRC_FILL_INPUT_BUFFER$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%edx
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	$4096,%ecx
	call	L_JINCLUDE_JFREAD$FILEPTR$POINTER$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj21
	jmp	Lj22
Lj21:
	movl	-12(%ebp),%eax
	cmpb	$0,36(%eax)
	jne	Lj23
	jmp	Lj24
Lj23:
	movl	-4(%ebp),%eax
	movb	$43,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj24:
	movl	-4(%ebp),%eax
	movb	$121,%dl
	call	L_JERROR_WARNMS$J_COMMON_PTR$J_MESSAGE_CODE$stub
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movb	$255,(%eax)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movb	$217,1(%eax)
	movl	$2,-16(%ebp)
Lj22:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movb	$0,36(%eax)
	movb	$1,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JDATASRC_SKIP_INPUT_DATA$J_DECOMPRESS_PTR$LONGINT
_JDATASRC_SKIP_INPUT_DATA$J_DECOMPRESS_PTR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj51
	jmp	Lj52
Lj51:
	jmp	Lj54
	.align 2
Lj53:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	subl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_JDATASRC_FILL_INPUT_BUFFER$J_DECOMPRESS_PTR$$BOOLEAN$stub
Lj54:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj53
	jmp	Lj55
Lj55:
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,4(%eax)
Lj52:
	leave
	ret

.text
	.align 4
.globl	_JDATASRC_TERM_SOURCE$J_DECOMPRESS_PTR
_JDATASRC_TERM_SOURCE$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_JDATASRC_JPEG_STDIO_SRC$J_DECOMPRESS_PTR$FILEPTR
_JDATASRC_JPEG_STDIO_SRC$J_DECOMPRESS_PTR$FILEPTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj61
Lj61:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj62
	jmp	Lj63
Lj62:
	movl	-4(%ebp),%eax
	movl	$40,%ecx
	movl	$0,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	-4(%ebp),%edx
	movl	%eax,24(%edx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	$4096,%ecx
	movl	$0,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	-12(%ebp),%edx
	movl	%eax,32(%edx)
Lj63:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	L_JDATASRC_INIT_SOURCE$J_DECOMPRESS_PTR$non_lazy_ptr-Lj61(%esi),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%edx
	movl	L_JDATASRC_FILL_INPUT_BUFFER$J_DECOMPRESS_PTR$$BOOLEAN$non_lazy_ptr-Lj61(%esi),%eax
	movl	%eax,12(%edx)
	movl	-12(%ebp),%edx
	movl	L_JDATASRC_SKIP_INPUT_DATA$J_DECOMPRESS_PTR$LONGINT$non_lazy_ptr-Lj61(%esi),%eax
	movl	%eax,16(%edx)
	movl	-12(%ebp),%edx
	movl	L_JDMARKER_JPEG_RESYNC_TO_RESTART$J_DECOMPRESS_PTR$LONGINT$$BOOLEAN$non_lazy_ptr-Lj61(%esi),%eax
	movl	%eax,20(%edx)
	movl	-12(%ebp),%edx
	movl	L_JDATASRC_TERM_SOURCE$J_DECOMPRESS_PTR$non_lazy_ptr-Lj61(%esi),%eax
	movl	%eax,24(%edx)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-12(%ebp),%eax
	movl	$0,4(%eax)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JDATASRC
_THREADVARLIST_JDATASRC:
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

L_JINCLUDE_JFREAD$FILEPTR$POINTER$LONGINT$$LONGINT$stub:
.indirect_symbol _JINCLUDE_JFREAD$FILEPTR$POINTER$LONGINT$$LONGINT
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

L_JERROR_WARNMS$J_COMMON_PTR$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_WARNMS$J_COMMON_PTR$J_MESSAGE_CODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDATASRC_FILL_INPUT_BUFFER$J_DECOMPRESS_PTR$$BOOLEAN$stub:
.indirect_symbol _JDATASRC_FILL_INPUT_BUFFER$J_DECOMPRESS_PTR$$BOOLEAN
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
L_JDATASRC_INIT_SOURCE$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JDATASRC_INIT_SOURCE$J_DECOMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDATASRC_FILL_INPUT_BUFFER$J_DECOMPRESS_PTR$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JDATASRC_FILL_INPUT_BUFFER$J_DECOMPRESS_PTR$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDATASRC_SKIP_INPUT_DATA$J_DECOMPRESS_PTR$LONGINT$non_lazy_ptr:
.indirect_symbol _JDATASRC_SKIP_INPUT_DATA$J_DECOMPRESS_PTR$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDMARKER_JPEG_RESYNC_TO_RESTART$J_DECOMPRESS_PTR$LONGINT$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JDMARKER_JPEG_RESYNC_TO_RESTART$J_DECOMPRESS_PTR$LONGINT$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDATASRC_TERM_SOURCE$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JDATASRC_TERM_SOURCE$J_DECOMPRESS_PTR
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

