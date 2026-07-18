# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JDDCTMGR_START_PASS$J_DECOMPRESS_PTR
_JDDCTMGR_START_PASS$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	call	Lj4
Lj4:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	396(%eax),%eax
	movl	%eax,-8(%ebp)
	movb	$0,-21(%ebp)
	movl	$0,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj16
	decl	-12(%ebp)
	.align 2
Lj17:
	incl	-12(%ebp)
	movl	-20(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	$1,%eax
	jl	Lj19
	decl	%eax
	je	Lj20
	decl	%eax
	je	Lj21
	subl	$2,%eax
	je	Lj22
	subl	$4,%eax
	je	Lj23
	jmp	Lj19
Lj20:
	movl	L_JIDCTRED_JPEG_IDCT_1X1$crcAC8DA868$non_lazy_ptr-Lj4(%esi),%eax
	movl	%eax,-28(%ebp)
	movb	$0,-21(%ebp)
	jmp	Lj18
Lj21:
	movl	L_JIDCTRED_JPEG_IDCT_2X2$crcAC8DA868$non_lazy_ptr-Lj4(%esi),%eax
	movl	%eax,-28(%ebp)
	movb	$0,-21(%ebp)
	jmp	Lj18
Lj22:
	movl	L_JIDCTRED_JPEG_IDCT_4X4$crcAC8DA868$non_lazy_ptr-Lj4(%esi),%eax
	movl	%eax,-28(%ebp)
	movb	$0,-21(%ebp)
	jmp	Lj18
Lj23:
	movl	-4(%ebp),%eax
	movb	62(%eax),%al
	testb	%al,%al
	je	Lj38
	decb	%al
	je	Lj39
	decb	%al
	je	Lj40
	jmp	Lj37
Lj38:
	movl	L_JIDCTINT_JPEG_IDCT_ISLOW$crcAC8DA868$non_lazy_ptr-Lj4(%esi),%eax
	movl	%eax,-28(%ebp)
	movb	$0,-21(%ebp)
	jmp	Lj36
Lj39:
	movl	L_JIDCTFST_JPEG_IDCT_IFAST$crcAC8DA868$non_lazy_ptr-Lj4(%esi),%eax
	movl	%eax,-28(%ebp)
	movb	$1,-21(%ebp)
	jmp	Lj36
Lj40:
	movl	L_JIDCTFLT_JPEG_IDCT_FLOAT$crcAC8DA868$non_lazy_ptr-Lj4(%esi),%eax
	movl	%eax,-28(%ebp)
	movb	$2,-21(%ebp)
	jmp	Lj36
Lj37:
	movl	-4(%ebp),%eax
	movb	$49,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj36:
	jmp	Lj18
Lj19:
	movl	-20(%ebp),%eax
	movl	36(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$7,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj18:
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,4(%ecx,%edx,4)
	movl	-20(%ebp),%eax
	movb	48(%eax),%al
	testb	%al,%al
	je	Lj65
	jmp	Lj67
Lj67:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	-21(%ebp),%ecx
	cmpl	44(%edx,%eax,4),%ecx
	je	Lj65
	jmp	Lj66
Lj65:
	jmp	Lj15
Lj66:
	movl	-20(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj70
	jmp	Lj71
Lj70:
	jmp	Lj15
Lj71:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	-21(%ebp),%ecx
	movl	%ecx,44(%edx,%eax,4)
	movb	-21(%ebp),%al
	testb	%al,%al
	je	Lj76
	decb	%al
	je	Lj77
	decb	%al
	je	Lj78
	jmp	Lj75
Lj76:
	movl	-20(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.align 2
Lj83:
	incl	-16(%ebp)
	movl	-36(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-32(%ebp),%edi
	movl	-16(%ebp),%eax
	movzwl	(%edi,%eax,2),%eax
	movl	%eax,(%edx,%ecx,4)
	cmpl	$63,-16(%ebp)
	jl	Lj83
	jmp	Lj74
Lj77:
	movl	-20(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.align 2
Lj90:
	incl	-16(%ebp)
	movl	-32(%ebp),%eax
	movl	-16(%ebp),%edx
	movzwl	(%eax,%edx,2),%edx
	movl	-16(%ebp),%eax
	movl	L_TC_JDDCTMGR_START_PASS$J_DECOMPRESS_PTR_AANSCALES$non_lazy_ptr-Lj4(%esi),%ecx
	movl	(%ecx,%eax,4),%eax
	imull	%eax,%edx
	movl	%ebp,%eax
	movl	$12,%ecx
	call	L_JDDCTMGR_START_PASS$J_DECOMPRESS_PTR_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-40(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	%eax,(%ecx,%edx,4)
	cmpl	$63,-16(%ebp)
	jl	Lj90
	jmp	Lj74
Lj78:
	movl	-20(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-48(%ebp)
	decl	-48(%ebp)
	.align 2
Lj105:
	incl	-48(%ebp)
	movl	$0,-52(%ebp)
	decl	-52(%ebp)
	.align 2
Lj108:
	incl	-52(%ebp)
	movl	-32(%ebp),%edx
	movl	-16(%ebp),%eax
	movzwl	(%edx,%eax,2),%eax
	movl	%eax,-56(%ebp)
	fildl	-56(%ebp)
	movl	-48(%ebp),%eax
	movl	L_TC_JDDCTMGR_START_PASS$J_DECOMPRESS_PTR_AANSCALEFACTOR$non_lazy_ptr-Lj4(%esi),%edx
	fldl	(%edx,%eax,8)
	fmulp	%st,%st(1)
	movl	-52(%ebp),%eax
	movl	L_TC_JDDCTMGR_START_PASS$J_DECOMPRESS_PTR_AANSCALEFACTOR$non_lazy_ptr-Lj4(%esi),%edx
	fldl	(%edx,%eax,8)
	fmulp	%st,%st(1)
	movl	-44(%ebp),%eax
	movl	-16(%ebp),%edx
	fstpl	(%eax,%edx,8)
	incl	-16(%ebp)
	cmpl	$7,-52(%ebp)
	jl	Lj108
	cmpl	$7,-48(%ebp)
	jl	Lj105
	jmp	Lj74
Lj75:
	movl	-4(%ebp),%eax
	movb	$49,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
	jmp	Lj16
Lj74:
	addl	$84,-20(%ebp)
Lj15:
	cmpl	-12(%ebp),%ebx
	jg	Lj17
Lj16:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JDDCTMGR_START_PASS$J_DECOMPRESS_PTR_DESCALE$LONGINT$LONGINT$$LONGINT
_JDDCTMGR_START_PASS$J_DECOMPRESS_PTR_DESCALE$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	decl	%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj117
	jmp	Lj118
Lj117:
	movl	-8(%ebp),%ecx
	movl	$32,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	$-1,%eax
	shll	%cl,%eax
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%ecx
	shrl	%cl,%edx
	orl	%edx,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj121
Lj118:
	movl	-20(%ebp),%eax
	movl	-8(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-16(%ebp)
Lj121:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JDDCTMGR_JINIT_INVERSE_DCT$J_DECOMPRESS_PTR
_JDDCTMGR_JINIT_INVERSE_DCT$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	call	Lj125
Lj125:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$84,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,396(%eax)
	movl	-8(%ebp),%edx
	movl	L_JDDCTMGR_START_PASS$J_DECOMPRESS_PTR$non_lazy_ptr-Lj125(%edi),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj141
	decl	-12(%ebp)
	.align 2
Lj142:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	$512,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	(%esi),%esi
	call	*%esi
	movl	-16(%ebp),%edx
	movl	%eax,80(%edx)
	movl	-16(%ebp),%eax
	movl	80(%eax),%eax
	movl	$512,%edx
	call	L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	$-1,44(%eax,%edx,4)
	addl	$84,-16(%ebp)
	cmpl	-12(%ebp),%ebx
	jg	Lj142
Lj141:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JDDCTMGR
_THREADVARLIST_JDDCTMGR:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_JDDCTMGR_START_PASS$J_DECOMPRESS_PTR_AANSCALES
_TC_JDDCTMGR_START_PASS$J_DECOMPRESS_PTR_AANSCALES:
	.long	16384,22725,21407,19266,16384,12873,8867,4520,22725,31521,29692,26722,22725,17855,12299
	.long	6270,21407,29692,27969,25172,21407,16819,11585,5906,19266,26722,25172,22654,19266,15137
	.long	10426,5315,16384,22725,21407,19266,16384,12873,8867,4520,12873,17855,16819,15137,12873
	.long	10114,6967,3552,8867,12299,11585,10426,8867,6967,4799,2446,4520,6270,5906,5315,4520,3552
	.long	2446,1247

.data
	.align 2
.globl	_TC_JDDCTMGR_START_PASS$J_DECOMPRESS_PTR_AANSCALEFACTOR
_TC_JDDCTMGR_START_PASS$J_DECOMPRESS_PTR_AANSCALEFACTOR:
	.byte	0,0,0,0,0,0,240,63
	.byte	239,97,72,177,80,49,246,63
	.byte	202,111,77,145,174,231,244,63
	.byte	170,17,108,239,98,208,242,63
	.byte	0,0,0,0,0,0,240,63
	.byte	59,191,167,192,105,36,233,63
	.byte	187,32,199,123,122,81,225,63
	.byte	93,171,114,222,85,168,209,63
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE
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

L_JDDCTMGR_START_PASS$J_DECOMPRESS_PTR_DESCALE$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JDDCTMGR_START_PASS$J_DECOMPRESS_PTR_DESCALE$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub:
.indirect_symbol _JINCLUDE_MEMZERO$POINTER$LONGINT
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
L_JIDCTRED_JPEG_IDCT_1X1$crcAC8DA868$non_lazy_ptr:
.indirect_symbol _JIDCTRED_JPEG_IDCT_1X1$crcAC8DA868
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JIDCTRED_JPEG_IDCT_2X2$crcAC8DA868$non_lazy_ptr:
.indirect_symbol _JIDCTRED_JPEG_IDCT_2X2$crcAC8DA868
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JIDCTRED_JPEG_IDCT_4X4$crcAC8DA868$non_lazy_ptr:
.indirect_symbol _JIDCTRED_JPEG_IDCT_4X4$crcAC8DA868
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JIDCTINT_JPEG_IDCT_ISLOW$crcAC8DA868$non_lazy_ptr:
.indirect_symbol _JIDCTINT_JPEG_IDCT_ISLOW$crcAC8DA868
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JIDCTFST_JPEG_IDCT_IFAST$crcAC8DA868$non_lazy_ptr:
.indirect_symbol _JIDCTFST_JPEG_IDCT_IFAST$crcAC8DA868
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JIDCTFLT_JPEG_IDCT_FLOAT$crcAC8DA868$non_lazy_ptr:
.indirect_symbol _JIDCTFLT_JPEG_IDCT_FLOAT$crcAC8DA868
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JDDCTMGR_START_PASS$J_DECOMPRESS_PTR_AANSCALES$non_lazy_ptr:
.indirect_symbol _TC_JDDCTMGR_START_PASS$J_DECOMPRESS_PTR_AANSCALES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JDDCTMGR_START_PASS$J_DECOMPRESS_PTR_AANSCALEFACTOR$non_lazy_ptr:
.indirect_symbol _TC_JDDCTMGR_START_PASS$J_DECOMPRESS_PTR_AANSCALEFACTOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDDCTMGR_START_PASS$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JDDCTMGR_START_PASS$J_DECOMPRESS_PTR
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

