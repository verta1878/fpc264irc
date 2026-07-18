# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_ZCOMPRES_COMPRESS2$PBYTE$LONGWORD$array_of_BYTE$LONGWORD$LONGINT$$LONGINT
_ZCOMPRES_COMPRESS2$PBYTE$LONGWORD$array_of_BYTE$LONGWORD$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-312(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-308(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-300(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-296(%ebp)
	movl	-8(%ebp),%edx
	movl	-296(%ebp),%eax
	cmpl	(%edx),%eax
	jne	Lj13
	jmp	Lj14
Lj13:
	movl	$-5,-16(%ebp)
	jmp	Lj3
Lj14:
	movl	8(%ebp),%edx
	leal	-312(%ebp),%eax
	call	L_ZDEFLATE_DEFLATEINIT$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-316(%ebp)
	movl	-316(%ebp),%eax
	testl	%eax,%eax
	jne	Lj23
	jmp	Lj24
Lj23:
	movl	-316(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj3
Lj24:
	leal	-312(%ebp),%eax
	movl	$4,%edx
	call	L_ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-316(%ebp)
	movl	-316(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj33
	jmp	Lj34
Lj33:
	leal	-312(%ebp),%eax
	call	L_ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT$stub
	movl	-316(%ebp),%eax
	testl	%eax,%eax
	je	Lj37
	jmp	Lj38
Lj37:
	movl	$-5,-16(%ebp)
	jmp	Lj41
Lj38:
	movl	-316(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj41:
	jmp	Lj3
Lj34:
	movl	-8(%ebp),%edx
	movl	-292(%ebp),%eax
	movl	%eax,(%edx)
	leal	-312(%ebp),%eax
	call	L_ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT$stub
	movl	%eax,-316(%ebp)
	movl	-316(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj3:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ZCOMPRES_COMPRESS$PBYTE$LONGWORD$array_of_BYTE$LONGWORD$$LONGINT
_ZCOMPRES_COMPRESS$PBYTE$LONGWORD$array_of_BYTE$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$-1,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZCOMPRES_COMPRESS2$PBYTE$LONGWORD$array_of_BYTE$LONGWORD$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_ZCOMPRES
_THREADVARLIST_ZCOMPRES:
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

L_ZDEFLATE_DEFLATEINIT$Z_STREAM$LONGINT$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATEINIT$Z_STREAM$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZCOMPRES_COMPRESS2$PBYTE$LONGWORD$array_of_BYTE$LONGWORD$LONGINT$$LONGINT$stub:
.indirect_symbol _ZCOMPRES_COMPRESS2$PBYTE$LONGWORD$array_of_BYTE$LONGWORD$LONGINT$$LONGINT
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

