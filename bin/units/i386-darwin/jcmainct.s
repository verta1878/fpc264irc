# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JCMAINCT_START_PASS_MAIN$J_COMPRESS_PTR$J_BUF_MODE
_JCMAINCT_START_PASS_MAIN$J_COMPRESS_PTR$J_BUF_MODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	316(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,172(%eax)
	jne	Lj7
	jmp	Lj8
Lj7:
	jmp	Lj3
Lj8:
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
	movl	-12(%ebp),%eax
	movl	$0,12(%eax)
	movl	-12(%ebp),%eax
	movb	$0,16(%eax)
	movl	-12(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,17(%eax)
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj19
	jmp	Lj18
Lj19:
	movl	-12(%ebp),%edx
	movl	L_JCMAINCT_PROCESS_DATA_SIMPLE_MAIN$J_COMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD$non_lazy_ptr-Lj4(%ebx),%eax
	movl	%eax,4(%edx)
	jmp	Lj17
Lj18:
	movl	-4(%ebp),%eax
	movb	$4,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj17:
Lj3:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCMAINCT_PROCESS_DATA_SIMPLE_MAIN$J_COMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD
_JCMAINCT_PROCESS_DATA_SIMPLE_MAIN$J_COMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	316(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj31
	.align 2
Lj30:
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$8,%eax
	jb	Lj33
	jmp	Lj34
Lj33:
	movl	$8,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-16(%ebp),%eax
	leal	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	leal	20(%eax),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	320(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
Lj34:
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$8,%eax
	jne	Lj49
	jmp	Lj50
Lj49:
	jmp	Lj26
Lj50:
	movl	-16(%ebp),%eax
	leal	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	324(%ecx),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	testb	%al,%al
	je	Lj51
	jmp	Lj52
Lj51:
	movl	-16(%ebp),%eax
	movb	16(%eax),%al
	testb	%al,%al
	je	Lj57
	jmp	Lj58
Lj57:
	movl	-12(%ebp),%eax
	decl	(%eax)
	movl	-16(%ebp),%eax
	movb	$1,16(%eax)
Lj58:
	jmp	Lj26
Lj52:
	movl	-16(%ebp),%eax
	cmpb	$0,16(%eax)
	jne	Lj61
	jmp	Lj62
Lj61:
	movl	-12(%ebp),%eax
	incl	(%eax)
	movl	-16(%ebp),%eax
	movb	$0,16(%eax)
Lj62:
	movl	-16(%ebp),%eax
	movl	$0,12(%eax)
	movl	-16(%ebp),%eax
	incl	8(%eax)
Lj31:
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	220(%edx),%eax
	jb	Lj30
	jmp	Lj32
Lj32:
Lj26:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCMAINCT_JINIT_C_MAIN_CONTROLLER$J_COMPRESS_PTR$BOOLEAN
_JCMAINCT_JINIT_C_MAIN_CONTROLLER$J_COMPRESS_PTR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj68
Lj68:
	popl	%edi
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$60,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,316(%eax)
	movl	-12(%ebp),%edx
	movl	L_JCMAINCT_START_PASS_MAIN$J_COMPRESS_PTR$J_BUF_MODE$non_lazy_ptr-Lj68(%edi),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	cmpb	$0,172(%eax)
	jne	Lj81
	jmp	Lj82
Lj81:
	jmp	Lj67
Lj82:
	cmpb	$0,-8(%ebp)
	jne	Lj83
	jmp	Lj84
Lj83:
	movl	-4(%ebp),%eax
	movb	$4,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
	jmp	Lj89
Lj84:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj93
	decl	-16(%ebp)
	.align 2
Lj94:
	incl	-16(%ebp)
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	shll	$3,%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	28(%eax),%ecx
	shll	$3,%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	8(%esi),%esi
	call	*%esi
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	%eax,20(%edx,%ecx,4)
	addl	$84,-20(%ebp)
	cmpl	-16(%ebp),%ebx
	jg	Lj94
Lj93:
Lj89:
Lj67:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JCMAINCT
_THREADVARLIST_JCMAINCT:
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

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCMAINCT_PROCESS_DATA_SIMPLE_MAIN$J_COMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD$non_lazy_ptr:
.indirect_symbol _JCMAINCT_PROCESS_DATA_SIMPLE_MAIN$J_COMPRESS_PTR$JSAMPARRAY$LONGWORD$LONGWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCMAINCT_START_PASS_MAIN$J_COMPRESS_PTR$J_BUF_MODE$non_lazy_ptr:
.indirect_symbol _JCMAINCT_START_PASS_MAIN$J_COMPRESS_PTR$J_BUF_MODE
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

