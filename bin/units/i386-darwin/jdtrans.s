# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JDTRANS_JPEG_READ_COEFFICIENTS$J_DECOMPRESS_PTR$$JVIRT_BARRAY_TBL_PTR
_JDTRANS_JPEG_READ_COEFFICIENTS$J_DECOMPRESS_PTR$$JVIRT_BARRAY_TBL_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$202,%eax
	je	Lj5
	jmp	Lj6
Lj5:
	movl	-4(%ebp),%eax
	call	L_JDTRANS_TRANSDECODE_MASTER_SELECTION$J_DECOMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	movl	$209,20(%eax)
Lj6:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$209,%eax
	je	Lj11
	jmp	Lj12
Lj11:
	jmp	Lj14
	.align 2
Lj13:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj16
	jmp	Lj17
Lj16:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
Lj17:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj24
	jmp	Lj25
Lj24:
	movl	$0,-8(%ebp)
	jmp	Lj3
Lj25:
	movl	-12(%ebp),%eax
	cmpl	$2,%eax
	je	Lj28
	jmp	Lj29
Lj28:
	jmp	Lj15
Lj29:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj32
	jmp	Lj31
Lj32:
	movl	-12(%ebp),%eax
	cmpl	$3,%eax
	je	Lj30
	jmp	Lj33
Lj33:
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	je	Lj30
	jmp	Lj31
Lj30:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	incl	4(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	4(%ecx),%eax
	cmpl	8(%edx),%eax
	jge	Lj34
	jmp	Lj35
Lj34:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	268(%edx),%eax
	addl	%eax,8(%ecx)
Lj35:
Lj31:
Lj14:
	jmp	Lj13
Lj15:
	movl	-4(%ebp),%eax
	movl	$210,20(%eax)
Lj12:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$210,%eax
	je	Lj40
	jmp	Lj41
Lj41:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$207,%eax
	je	Lj40
	jmp	Lj39
Lj40:
	movl	-4(%ebp),%eax
	cmpb	$0,60(%eax)
	jne	Lj38
	jmp	Lj39
Lj38:
	movl	-4(%ebp),%eax
	movl	376(%eax),%eax
	movl	16(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj3
Lj39:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
	movl	$0,-8(%ebp)
Lj3:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JDTRANS_TRANSDECODE_MASTER_SELECTION$J_DECOMPRESS_PTR
_JDTRANS_TRANSDECODE_MASTER_SELECTION$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,60(%eax)
	movl	-4(%ebp),%eax
	cmpb	$0,185(%eax)
	jne	Lj56
	jmp	Lj57
Lj56:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
	jmp	Lj62
Lj57:
	movl	-4(%ebp),%eax
	cmpb	$0,184(%eax)
	jne	Lj63
	jmp	Lj64
Lj63:
	movl	-4(%ebp),%eax
	call	L_JDPHUFF_JINIT_PHUFF_DECODER$J_DECOMPRESS_PTR$stub
	jmp	Lj67
Lj64:
	movl	-4(%ebp),%eax
	call	L_JDHUFF_JINIT_HUFF_DECODER$J_DECOMPRESS_PTR$stub
Lj67:
Lj62:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_JDCOEFCT_JINIT_D_COEF_CONTROLLER$J_DECOMPRESS_PTR$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	24(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	384(%edx),%edx
	movl	8(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj78
	jmp	Lj79
Lj78:
	movl	-4(%ebp),%eax
	cmpb	$0,184(%eax)
	jne	Lj80
	jmp	Lj81
Lj80:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	imull	$3,%eax
	addl	$2,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj84
Lj81:
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	cmpb	$0,16(%eax)
	jne	Lj85
	jmp	Lj86
Lj85:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj89
Lj86:
	movl	$1,-8(%ebp)
Lj89:
Lj84:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	$0,4(%eax)
	movl	-8(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	movl	$0,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	$0,12(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	$1,16(%eax)
Lj79:
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JDTRANS
_THREADVARLIST_JDTRANS:
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

L_JDTRANS_TRANSDECODE_MASTER_SELECTION$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDTRANS_TRANSDECODE_MASTER_SELECTION$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub:
.indirect_symbol _JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD
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

L_JDPHUFF_JINIT_PHUFF_DECODER$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDPHUFF_JINIT_PHUFF_DECODER$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDHUFF_JINIT_HUFF_DECODER$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDHUFF_JINIT_HUFF_DECODER$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDCOEFCT_JINIT_D_COEF_CONTROLLER$J_DECOMPRESS_PTR$BOOLEAN$stub:
.indirect_symbol _JDCOEFCT_JINIT_D_COEF_CONTROLLER$J_DECOMPRESS_PTR$BOOLEAN
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

