# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT
_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JFDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT
_JFDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	decl	%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj11
	jmp	Lj12
Lj11:
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
	jmp	Lj15
Lj12:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-12(%ebp)
Lj15:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JFDCTINT_JPEG_FDCT_ISLOW$array_of_LONGINT
_JFDCTINT_JPEG_FDCT_ISLOW$array_of_LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	$7,-84(%ebp)
	incl	-84(%ebp)
	.align 2
Lj24:
	decl	-84(%ebp)
	movl	-80(%ebp),%eax
	movl	-80(%ebp),%edx
	movl	(%eax),%ecx
	movl	28(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,-12(%ebp)
	movl	-80(%ebp),%eax
	movl	-80(%ebp),%edx
	movl	(%eax),%ecx
	movl	28(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-40(%ebp)
	movl	-80(%ebp),%eax
	movl	-80(%ebp),%edx
	movl	4(%eax),%ecx
	movl	24(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,-16(%ebp)
	movl	-80(%ebp),%eax
	movl	-80(%ebp),%edx
	movl	4(%eax),%ecx
	movl	24(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-36(%ebp)
	movl	-80(%ebp),%eax
	movl	-80(%ebp),%edx
	movl	8(%eax),%ecx
	movl	20(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,-20(%ebp)
	movl	-80(%ebp),%eax
	movl	-80(%ebp),%edx
	movl	8(%eax),%ecx
	movl	20(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-32(%ebp)
	movl	-80(%ebp),%eax
	movl	-80(%ebp),%edx
	movl	12(%eax),%ecx
	movl	16(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,-24(%ebp)
	movl	-80(%ebp),%eax
	movl	-80(%ebp),%edx
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
	movl	-44(%ebp),%eax
	movl	-48(%ebp),%edx
	addl	%edx,%eax
	shll	$2,%eax
	movl	-80(%ebp),%edx
	movl	%eax,(%edx)
	movl	-44(%ebp),%eax
	movl	-48(%ebp),%edx
	subl	%edx,%eax
	shll	$2,%eax
	movl	-80(%ebp),%edx
	movl	%eax,16(%edx)
	movl	-52(%ebp),%eax
	movl	-56(%ebp),%edx
	addl	%edx,%eax
	movl	$4433,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-60(%ebp)
	movl	-56(%ebp),%eax
	movl	$6270,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	movl	-60(%ebp),%eax
	addl	%edx,%eax
	movl	$11,%edx
	call	L_JFDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-80(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-52(%ebp),%eax
	movl	$-15137,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	movl	-60(%ebp),%eax
	addl	%edx,%eax
	movl	$11,%edx
	call	L_JFDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-80(%ebp),%edx
	movl	%eax,24(%edx)
	movl	-28(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-60(%ebp)
	movl	-32(%ebp),%eax
	movl	-36(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-64(%ebp)
	movl	-28(%ebp),%eax
	movl	-36(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-68(%ebp)
	movl	-32(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-72(%ebp)
	movl	-68(%ebp),%eax
	movl	-72(%ebp),%edx
	addl	%edx,%eax
	movl	$9633,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-76(%ebp)
	movl	-28(%ebp),%eax
	movl	$2446,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-32(%ebp),%eax
	movl	$16819,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-32(%ebp)
	movl	-36(%ebp),%eax
	movl	$25172,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-36(%ebp)
	movl	-40(%ebp),%eax
	movl	$12299,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-40(%ebp)
	movl	-60(%ebp),%eax
	movl	$-7373,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-60(%ebp)
	movl	-64(%ebp),%eax
	movl	$-20995,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-64(%ebp)
	movl	-68(%ebp),%eax
	movl	$-16069,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-68(%ebp)
	movl	-72(%ebp),%eax
	movl	$-3196,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-72(%ebp)
	movl	-76(%ebp),%eax
	addl	%eax,-68(%ebp)
	movl	-76(%ebp),%eax
	addl	%eax,-72(%ebp)
	movl	-28(%ebp),%eax
	movl	-60(%ebp),%edx
	addl	%edx,%eax
	movl	-68(%ebp),%edx
	addl	%edx,%eax
	movl	$11,%edx
	call	L_JFDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-80(%ebp),%edx
	movl	%eax,28(%edx)
	movl	-32(%ebp),%eax
	movl	-64(%ebp),%edx
	addl	%edx,%eax
	movl	-72(%ebp),%edx
	addl	%edx,%eax
	movl	$11,%edx
	call	L_JFDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-80(%ebp),%edx
	movl	%eax,20(%edx)
	movl	-36(%ebp),%eax
	movl	-64(%ebp),%edx
	addl	%edx,%eax
	movl	-68(%ebp),%edx
	addl	%edx,%eax
	movl	$11,%edx
	call	L_JFDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-80(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-40(%ebp),%eax
	movl	-60(%ebp),%edx
	addl	%edx,%eax
	movl	-72(%ebp),%edx
	addl	%edx,%eax
	movl	$11,%edx
	call	L_JFDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-80(%ebp),%edx
	movl	%eax,4(%edx)
	addl	$32,-80(%ebp)
	cmpl	$0,-84(%ebp)
	jg	Lj24
	movl	-4(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	$7,-84(%ebp)
	incl	-84(%ebp)
	.align 2
Lj169:
	decl	-84(%ebp)
	movl	-80(%ebp),%eax
	movl	-80(%ebp),%edx
	movl	(%eax),%ecx
	movl	224(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,-12(%ebp)
	movl	-80(%ebp),%eax
	movl	-80(%ebp),%ecx
	movl	(%eax),%edx
	movl	224(%ecx),%eax
	subl	%eax,%edx
	movl	%edx,-40(%ebp)
	movl	-80(%ebp),%eax
	movl	-80(%ebp),%edx
	movl	32(%eax),%ecx
	movl	192(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,-16(%ebp)
	movl	-80(%ebp),%eax
	movl	-80(%ebp),%edx
	movl	32(%eax),%ecx
	movl	192(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-36(%ebp)
	movl	-80(%ebp),%eax
	movl	-80(%ebp),%edx
	movl	64(%eax),%ecx
	movl	160(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,-20(%ebp)
	movl	-80(%ebp),%eax
	movl	-80(%ebp),%edx
	movl	64(%eax),%ecx
	movl	160(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-32(%ebp)
	movl	-80(%ebp),%eax
	movl	-80(%ebp),%edx
	movl	96(%eax),%ecx
	movl	128(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,-24(%ebp)
	movl	-80(%ebp),%eax
	movl	-80(%ebp),%edx
	movl	96(%eax),%ecx
	movl	128(%edx),%eax
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
	movl	-44(%ebp),%eax
	movl	-48(%ebp),%edx
	addl	%edx,%eax
	movl	$2,%edx
	call	L_JFDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-80(%ebp),%edx
	movl	%eax,(%edx)
	movl	-44(%ebp),%eax
	movl	-48(%ebp),%edx
	subl	%edx,%eax
	movl	$2,%edx
	call	L_JFDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-80(%ebp),%edx
	movl	%eax,128(%edx)
	movl	-52(%ebp),%eax
	movl	-56(%ebp),%edx
	addl	%edx,%eax
	movl	$4433,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-60(%ebp)
	movl	-56(%ebp),%eax
	movl	$6270,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	movl	-60(%ebp),%eax
	addl	%edx,%eax
	movl	$15,%edx
	call	L_JFDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-80(%ebp),%edx
	movl	%eax,64(%edx)
	movl	-52(%ebp),%eax
	movl	$-15137,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	movl	-60(%ebp),%eax
	addl	%edx,%eax
	movl	$15,%edx
	call	L_JFDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-80(%ebp),%edx
	movl	%eax,192(%edx)
	movl	-28(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-60(%ebp)
	movl	-32(%ebp),%eax
	movl	-36(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-64(%ebp)
	movl	-28(%ebp),%eax
	movl	-36(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-68(%ebp)
	movl	-32(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-72(%ebp)
	movl	-68(%ebp),%eax
	movl	-72(%ebp),%edx
	addl	%edx,%eax
	movl	$9633,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-76(%ebp)
	movl	-28(%ebp),%eax
	movl	$2446,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-32(%ebp),%eax
	movl	$16819,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-32(%ebp)
	movl	-36(%ebp),%eax
	movl	$25172,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-36(%ebp)
	movl	-40(%ebp),%eax
	movl	$12299,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-40(%ebp)
	movl	-60(%ebp),%eax
	movl	$-7373,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-60(%ebp)
	movl	-64(%ebp),%eax
	movl	$-20995,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-64(%ebp)
	movl	-68(%ebp),%eax
	movl	$-16069,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-68(%ebp)
	movl	-72(%ebp),%eax
	movl	$-3196,%edx
	call	L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-72(%ebp)
	movl	-76(%ebp),%eax
	addl	%eax,-68(%ebp)
	movl	-76(%ebp),%eax
	addl	%eax,-72(%ebp)
	movl	-28(%ebp),%eax
	movl	-60(%ebp),%edx
	addl	%edx,%eax
	movl	-68(%ebp),%edx
	addl	%edx,%eax
	movl	$15,%edx
	call	L_JFDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-80(%ebp),%edx
	movl	%eax,224(%edx)
	movl	-32(%ebp),%eax
	movl	-64(%ebp),%edx
	addl	%edx,%eax
	movl	-72(%ebp),%edx
	addl	%edx,%eax
	movl	$15,%edx
	call	L_JFDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-80(%ebp),%edx
	movl	%eax,160(%edx)
	movl	-36(%ebp),%eax
	movl	-64(%ebp),%edx
	addl	%edx,%eax
	movl	-68(%ebp),%edx
	addl	%edx,%eax
	movl	$15,%edx
	call	L_JFDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-80(%ebp),%edx
	movl	%eax,96(%edx)
	movl	-40(%ebp),%eax
	movl	-60(%ebp),%edx
	addl	%edx,%eax
	movl	-72(%ebp),%edx
	addl	%edx,%eax
	movl	$15,%edx
	call	L_JFDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub
	movl	-80(%ebp),%edx
	movl	%eax,32(%edx)
	addl	$4,-80(%ebp)
	cmpl	$0,-84(%ebp)
	jg	Lj169
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JFDCTINT
_THREADVARLIST_JFDCTINT:
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

L_JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JFDCTINT_MULTIPLY$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JFDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JFDCTINT_DESCALE$LONGINT$LONGINT$$LONGINT
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

