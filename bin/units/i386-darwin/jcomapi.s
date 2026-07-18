# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JCOMAPI_JPEG_ABORT$J_COMMON_PTR
_JCOMAPI_JPEG_ABORT$J_COMMON_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj5
	jmp	Lj6
Lj5:
	jmp	Lj3
Lj6:
	movl	$1,-8(%ebp)
	incl	-8(%ebp)
	.align 2
Lj9:
	decl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	36(%ecx),%ecx
	call	*%ecx
	cmpl	$1,-8(%ebp)
	jg	Lj9
	movl	-4(%ebp),%eax
	cmpb	$0,16(%eax)
	jne	Lj14
	jmp	Lj15
Lj14:
	movl	-4(%ebp),%eax
	movl	$200,20(%eax)
	movl	-4(%ebp),%eax
	movl	$0,252(%eax)
	jmp	Lj20
Lj15:
	movl	-4(%ebp),%eax
	movl	$100,20(%eax)
Lj20:
Lj3:
	leave
	ret

.text
	.align 4
.globl	_JCOMAPI_JPEG_DESTROY$J_COMMON_PTR
_JCOMAPI_JPEG_DESTROY$J_COMMON_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj25
	jmp	Lj26
Lj25:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	40(%edx),%edx
	call	*%edx
Lj26:
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
	leave
	ret

.text
	.align 4
.globl	_JCOMAPI_JPEG_ALLOC_QUANT_TABLE$J_COMMON_PTR$$JQUANT_TBL_PTR
_JCOMAPI_JPEG_ALLOC_QUANT_TABLE$J_COMMON_PTR$$JQUANT_TBL_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$130,%ecx
	movl	$0,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,128(%eax)
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCOMAPI_JPEG_ALLOC_HUFF_TABLE$J_COMMON_PTR$$JHUFF_TBL_PTR
_JCOMAPI_JPEG_ALLOC_HUFF_TABLE$J_COMMON_PTR$$JHUFF_TBL_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$274,%ecx
	movl	$0,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,273(%eax)
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JCOMAPI
_THREADVARLIST_JCOMAPI:
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

