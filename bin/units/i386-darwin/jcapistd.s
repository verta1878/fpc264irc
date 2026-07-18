# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JCAPISTD_JPEG_START_COMPRESS$J_COMPRESS_PTR$BOOLEAN
_JCAPISTD_JPEG_START_COMPRESS$J_COMPRESS_PTR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$100,%eax
	jne	Lj5
	jmp	Lj6
Lj5:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj6:
	cmpb	$0,-8(%ebp)
	jne	Lj13
	jmp	Lj14
Lj13:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_JCAPIMIN_JPEG_SUPPRESS_TABLES$J_COMPRESS_PTR$BOOLEAN$stub
Lj14:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	16(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	24(%edx),%edx
	movl	8(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	call	L_JCINIT_JINIT_COMPRESS_MASTER$J_COMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	312(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	$0,204(%eax)
	movl	-4(%ebp),%eax
	cmpb	$0,172(%eax)
	jne	Lj29
	jmp	Lj30
Lj29:
	movl	-4(%ebp),%eax
	movl	$102,20(%eax)
	jmp	Lj33
Lj30:
	movl	-4(%ebp),%eax
	movl	$101,20(%eax)
Lj33:
	leave
	ret

.text
	.align 4
.globl	_JCAPISTD_JPEG_WRITE_SCANLINES$J_COMPRESS_PTR$JSAMPARRAY$LONGWORD$$LONGWORD
_JCAPISTD_JPEG_WRITE_SCANLINES$J_COMPRESS_PTR$JSAMPARRAY$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$101,%eax
	jne	Lj38
	jmp	Lj39
Lj38:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj39:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	204(%eax),%eax
	cmpl	32(%edx),%eax
	jae	Lj46
	jmp	Lj47
Lj46:
	movl	-4(%ebp),%eax
	movb	$124,%dl
	call	L_JERROR_WARNMS$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj47:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj52
	jmp	Lj53
Lj52:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	204(%eax),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
Lj53:
	movl	-4(%ebp),%eax
	movl	312(%eax),%eax
	cmpb	$0,12(%eax)
	jne	Lj60
	jmp	Lj61
Lj60:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	312(%edx),%edx
	movl	4(%edx),%edx
	call	*%edx
Lj61:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	32(%eax),%edx
	movl	204(%ecx),%eax
	subl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-24(%ebp),%eax
	ja	Lj66
	jmp	Lj67
Lj66:
	movl	-24(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj67:
	movl	$0,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	316(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,204(%eax)
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCAPISTD_JPEG_WRITE_RAW_DATA$J_COMPRESS_PTR$JSAMPIMAGE$LONGWORD$$LONGWORD
_JCAPISTD_JPEG_WRITE_RAW_DATA$J_COMPRESS_PTR$JSAMPIMAGE$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$102,%eax
	jne	Lj84
	jmp	Lj85
Lj84:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj85:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	204(%eax),%eax
	cmpl	32(%edx),%eax
	jae	Lj92
	jmp	Lj93
Lj92:
	movl	-4(%ebp),%eax
	movb	$124,%dl
	call	L_JERROR_WARNMS$J_COMMON_PTR$J_MESSAGE_CODE$stub
	movl	$0,-16(%ebp)
	jmp	Lj82
Lj93:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj100
	jmp	Lj101
Lj100:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	204(%eax),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
Lj101:
	movl	-4(%ebp),%eax
	movl	312(%eax),%eax
	cmpb	$0,12(%eax)
	jne	Lj108
	jmp	Lj109
Lj108:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	312(%edx),%edx
	movl	4(%edx),%edx
	call	*%edx
Lj109:
	movl	-4(%ebp),%eax
	movl	216(%eax),%eax
	shll	$3,%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj114
	jmp	Lj115
Lj114:
	movl	-4(%ebp),%eax
	movb	$23,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj115:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	324(%ecx),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	testb	%al,%al
	je	Lj120
	jmp	Lj121
Lj120:
	movl	$0,-16(%ebp)
	jmp	Lj82
Lj121:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,204(%eax)
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj82:
	movl	-16(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JCAPISTD
_THREADVARLIST_JCAPISTD:
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

L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub:
.indirect_symbol _JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCAPIMIN_JPEG_SUPPRESS_TABLES$J_COMPRESS_PTR$BOOLEAN$stub:
.indirect_symbol _JCAPIMIN_JPEG_SUPPRESS_TABLES$J_COMPRESS_PTR$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCINIT_JINIT_COMPRESS_MASTER$J_COMPRESS_PTR$stub:
.indirect_symbol _JCINIT_JINIT_COMPRESS_MASTER$J_COMPRESS_PTR
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

L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE
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

