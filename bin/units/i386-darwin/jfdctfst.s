# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JFDCTFST_DESCALE$LONGINT$LONGINT$$LONGINT
_JFDCTFST_DESCALE$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj7
	jmp	Lj8
Lj7:
	movl	-8(%ebp),%ecx
	movl	$32,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	$-1,%eax
	shll	%cl,%eax
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ecx
	shrl	%cl,%edx
	orl	%edx,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj11
Lj8:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-12(%ebp)
Lj11:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JFDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT
_JFDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	$8,%edx
	call	L_JFDCTFST_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JFDCTFST_JPEG_FDCT_IFAST$array_of_LONGINT
_JFDCTFST_JPEG_FDCT_IFAST$array_of_LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	$7,-92(%ebp)
	incl	-92(%ebp)
	.align 2
Lj28:
	decl	-92(%ebp)
	movl	-88(%ebp),%eax
	movl	-88(%ebp),%edx
	movl	(%eax),%ecx
	movl	28(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,-12(%ebp)
	movl	-88(%ebp),%eax
	movl	-88(%ebp),%edx
	movl	(%eax),%ecx
	movl	28(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-40(%ebp)
	movl	-88(%ebp),%eax
	movl	-88(%ebp),%edx
	movl	4(%eax),%ecx
	movl	24(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,-16(%ebp)
	movl	-88(%ebp),%eax
	movl	-88(%ebp),%edx
	movl	4(%eax),%ecx
	movl	24(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-36(%ebp)
	movl	-88(%ebp),%eax
	movl	-88(%ebp),%edx
	movl	8(%eax),%ecx
	movl	20(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,-20(%ebp)
	movl	-88(%ebp),%eax
	movl	-88(%ebp),%ecx
	movl	8(%eax),%edx
	movl	20(%ecx),%eax
	subl	%eax,%edx
	movl	%edx,-32(%ebp)
	movl	-88(%ebp),%eax
	movl	-88(%ebp),%edx
	movl	12(%eax),%ecx
	movl	16(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,-24(%ebp)
	movl	-88(%ebp),%eax
	movl	-88(%ebp),%edx
	movl	12(%eax),%ecx
	movl	16(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-28(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-44(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-56(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-52(%ebp)
	movl	-44(%ebp),%edx
	movl	-48(%ebp),%eax
	addl	%eax,%edx
	movl	-88(%ebp),%eax
	movl	%edx,(%eax)
	movl	-44(%ebp),%edx
	movl	-48(%ebp),%eax
	subl	%eax,%edx
	movl	-88(%ebp),%eax
	movl	%edx,16(%eax)
	movl	-52(%ebp),%eax
	movl	-56(%ebp),%edx
	addl	%edx,%eax
	movl	$181,%edx
	call	L_JFDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-60(%ebp)
	movl	-56(%ebp),%edx
	movl	-60(%ebp),%eax
	addl	%eax,%edx
	movl	-88(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-56(%ebp),%edx
	movl	-60(%ebp),%eax
	subl	%eax,%edx
	movl	-88(%ebp),%eax
	movl	%edx,24(%eax)
	movl	-28(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-44(%ebp)
	movl	-32(%ebp),%eax
	movl	-36(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-36(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-52(%ebp)
	movl	-44(%ebp),%eax
	movl	-52(%ebp),%edx
	subl	%edx,%eax
	movl	$98,%edx
	call	L_JFDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-76(%ebp)
	movl	-44(%ebp),%eax
	movl	$139,%edx
	call	L_JFDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	-76(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-64(%ebp)
	movl	-52(%ebp),%eax
	movl	$334,%edx
	call	L_JFDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	-76(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-72(%ebp)
	movl	-48(%ebp),%eax
	movl	$181,%edx
	call	L_JFDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-68(%ebp)
	movl	-40(%ebp),%eax
	movl	-68(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-80(%ebp)
	movl	-40(%ebp),%eax
	movl	-68(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-84(%ebp)
	movl	-84(%ebp),%edx
	movl	-64(%ebp),%eax
	addl	%eax,%edx
	movl	-88(%ebp),%eax
	movl	%edx,20(%eax)
	movl	-84(%ebp),%edx
	movl	-64(%ebp),%eax
	subl	%eax,%edx
	movl	-88(%ebp),%eax
	movl	%edx,12(%eax)
	movl	-80(%ebp),%edx
	movl	-72(%ebp),%eax
	addl	%eax,%edx
	movl	-88(%ebp),%eax
	movl	%edx,4(%eax)
	movl	-80(%ebp),%edx
	movl	-72(%ebp),%eax
	subl	%eax,%edx
	movl	-88(%ebp),%eax
	movl	%edx,28(%eax)
	addl	$32,-88(%ebp)
	cmpl	$0,-92(%ebp)
	jg	Lj28
	movl	-4(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	$7,-92(%ebp)
	incl	-92(%ebp)
	.align 2
Lj113:
	decl	-92(%ebp)
	movl	-88(%ebp),%eax
	movl	-88(%ebp),%ecx
	movl	(%eax),%edx
	movl	224(%ecx),%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-88(%ebp),%eax
	movl	-88(%ebp),%edx
	movl	(%eax),%ecx
	movl	224(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-40(%ebp)
	movl	-88(%ebp),%eax
	movl	-88(%ebp),%edx
	movl	32(%eax),%ecx
	movl	192(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,-16(%ebp)
	movl	-88(%ebp),%eax
	movl	-88(%ebp),%ecx
	movl	32(%eax),%edx
	movl	192(%ecx),%eax
	subl	%eax,%edx
	movl	%edx,-36(%ebp)
	movl	-88(%ebp),%eax
	movl	-88(%ebp),%ecx
	movl	64(%eax),%edx
	movl	160(%ecx),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-88(%ebp),%eax
	movl	-88(%ebp),%edx
	movl	64(%eax),%ecx
	movl	160(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-32(%ebp)
	movl	-88(%ebp),%eax
	movl	-88(%ebp),%ecx
	movl	96(%eax),%edx
	movl	128(%ecx),%eax
	addl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-88(%ebp),%eax
	movl	-88(%ebp),%edx
	movl	96(%eax),%ecx
	movl	128(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-28(%ebp)
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-44(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-56(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-52(%ebp)
	movl	-44(%ebp),%edx
	movl	-48(%ebp),%eax
	addl	%eax,%edx
	movl	-88(%ebp),%eax
	movl	%edx,(%eax)
	movl	-44(%ebp),%edx
	movl	-48(%ebp),%eax
	subl	%eax,%edx
	movl	-88(%ebp),%eax
	movl	%edx,128(%eax)
	movl	-52(%ebp),%eax
	movl	-56(%ebp),%edx
	addl	%edx,%eax
	movl	$181,%edx
	call	L_JFDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-60(%ebp)
	movl	-56(%ebp),%edx
	movl	-60(%ebp),%eax
	addl	%eax,%edx
	movl	-88(%ebp),%eax
	movl	%edx,64(%eax)
	movl	-56(%ebp),%edx
	movl	-60(%ebp),%eax
	subl	%eax,%edx
	movl	-88(%ebp),%eax
	movl	%edx,192(%eax)
	movl	-28(%ebp),%edx
	movl	-32(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-44(%ebp)
	movl	-32(%ebp),%eax
	movl	-36(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-36(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-52(%ebp)
	movl	-44(%ebp),%eax
	movl	-52(%ebp),%edx
	subl	%edx,%eax
	movl	$98,%edx
	call	L_JFDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-76(%ebp)
	movl	-44(%ebp),%eax
	movl	$139,%edx
	call	L_JFDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	-76(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-64(%ebp)
	movl	-52(%ebp),%eax
	movl	$334,%edx
	call	L_JFDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	-76(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-72(%ebp)
	movl	-48(%ebp),%eax
	movl	$181,%edx
	call	L_JFDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-68(%ebp)
	movl	-40(%ebp),%edx
	movl	-68(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-80(%ebp)
	movl	-40(%ebp),%eax
	movl	-68(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-84(%ebp)
	movl	-84(%ebp),%edx
	movl	-64(%ebp),%eax
	addl	%eax,%edx
	movl	-88(%ebp),%eax
	movl	%edx,160(%eax)
	movl	-84(%ebp),%edx
	movl	-64(%ebp),%eax
	subl	%eax,%edx
	movl	-88(%ebp),%eax
	movl	%edx,96(%eax)
	movl	-80(%ebp),%edx
	movl	-72(%ebp),%eax
	addl	%eax,%edx
	movl	-88(%ebp),%eax
	movl	%edx,32(%eax)
	movl	-80(%ebp),%edx
	movl	-72(%ebp),%eax
	subl	%eax,%edx
	movl	-88(%ebp),%eax
	movl	%edx,224(%eax)
	addl	$4,-88(%ebp)
	cmpl	$0,-92(%ebp)
	jg	Lj113
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JFDCTFST
_THREADVARLIST_JFDCTFST:
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

L_JFDCTFST_DESCALE$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JFDCTFST_DESCALE$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JFDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JFDCTFST_MULTIPLY$LONGINT$LONGINT$$LONGINT
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

