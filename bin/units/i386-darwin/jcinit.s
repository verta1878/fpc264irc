# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JCINIT_JINIT_COMPRESS_MASTER$J_COMPRESS_PTR
_JCINIT_JINIT_COMPRESS_MASTER$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_JCMASTER_JINIT_C_MASTER_CONTROL$J_COMPRESS_PTR$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movb	172(%eax),%al
	testb	%al,%al
	je	Lj9
	jmp	Lj10
Lj9:
	movl	-4(%ebp),%eax
	call	L_JCCOLOR_JINIT_COLOR_CONVERTER$J_COMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	call	L_JCSAMPLE_JINIT_DOWNSAMPLER$J_COMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_JCPREPCT_JINIT_C_PREP_CONTROLLER$J_COMPRESS_PTR$BOOLEAN$stub
Lj10:
	movl	-4(%ebp),%eax
	call	L_JCDCTMGR_JINIT_FORWARD_DCT$J_COMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	cmpb	$0,173(%eax)
	jne	Lj21
	jmp	Lj22
Lj21:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
	jmp	Lj27
Lj22:
	movl	-4(%ebp),%eax
	cmpb	$0,208(%eax)
	jne	Lj28
	jmp	Lj29
Lj28:
	movl	-4(%ebp),%eax
	call	L_JCPHUFF_JINIT_PHUFF_ENCODER$J_COMPRESS_PTR$stub
	jmp	Lj32
Lj29:
	movl	-4(%ebp),%eax
	call	L_JCHUFF_JINIT_HUFF_ENCODER$J_COMPRESS_PTR$stub
Lj32:
Lj27:
	movl	-4(%ebp),%eax
	movl	164(%eax),%eax
	cmpl	$1,%eax
	jg	Lj35
	jmp	Lj37
Lj37:
	movl	-4(%ebp),%eax
	cmpb	$0,174(%eax)
	jne	Lj35
	jmp	Lj36
Lj35:
	movb	$1,%dl
	jmp	Lj38
Lj36:
	movb	$0,%dl
Lj38:
	movl	-4(%ebp),%eax
	call	L_JCCOEFCT_JINIT_C_COEF_CONTROLLER$J_COMPRESS_PTR$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_JCMAINCT_JINIT_C_MAIN_CONTROLLER$J_COMPRESS_PTR$BOOLEAN$stub
	movl	-4(%ebp),%eax
	call	L_JCMARKER_JINIT_MARKER_WRITER$J_COMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	24(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	328(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JCINIT
_THREADVARLIST_JCINIT:
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

L_JCMASTER_JINIT_C_MASTER_CONTROL$J_COMPRESS_PTR$BOOLEAN$stub:
.indirect_symbol _JCMASTER_JINIT_C_MASTER_CONTROL$J_COMPRESS_PTR$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCCOLOR_JINIT_COLOR_CONVERTER$J_COMPRESS_PTR$stub:
.indirect_symbol _JCCOLOR_JINIT_COLOR_CONVERTER$J_COMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCSAMPLE_JINIT_DOWNSAMPLER$J_COMPRESS_PTR$stub:
.indirect_symbol _JCSAMPLE_JINIT_DOWNSAMPLER$J_COMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPREPCT_JINIT_C_PREP_CONTROLLER$J_COMPRESS_PTR$BOOLEAN$stub:
.indirect_symbol _JCPREPCT_JINIT_C_PREP_CONTROLLER$J_COMPRESS_PTR$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCDCTMGR_JINIT_FORWARD_DCT$J_COMPRESS_PTR$stub:
.indirect_symbol _JCDCTMGR_JINIT_FORWARD_DCT$J_COMPRESS_PTR
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

L_JCPHUFF_JINIT_PHUFF_ENCODER$J_COMPRESS_PTR$stub:
.indirect_symbol _JCPHUFF_JINIT_PHUFF_ENCODER$J_COMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCHUFF_JINIT_HUFF_ENCODER$J_COMPRESS_PTR$stub:
.indirect_symbol _JCHUFF_JINIT_HUFF_ENCODER$J_COMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCCOEFCT_JINIT_C_COEF_CONTROLLER$J_COMPRESS_PTR$BOOLEAN$stub:
.indirect_symbol _JCCOEFCT_JINIT_C_COEF_CONTROLLER$J_COMPRESS_PTR$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMAINCT_JINIT_C_MAIN_CONTROLLER$J_COMPRESS_PTR$BOOLEAN$stub:
.indirect_symbol _JCMAINCT_JINIT_C_MAIN_CONTROLLER$J_COMPRESS_PTR$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMARKER_JINIT_MARKER_WRITER$J_COMPRESS_PTR$stub:
.indirect_symbol _JCMARKER_JINIT_MARKER_WRITER$J_COMPRESS_PTR
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

