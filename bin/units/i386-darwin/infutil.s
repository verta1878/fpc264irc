# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_INFUTIL_GRABBITS$LONGINT
_INFUTIL_GRABBITS$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_INFUTIL_DUMPBITS$LONGINT
_INFUTIL_DUMPBITS$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_INFUTIL_NEEDBITS$LONGINT
_INFUTIL_NEEDBITS$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_INFUTIL_NEEDOUT
_INFUTIL_NEEDOUT:
	pushl	%ebp
	movl	%esp,%ebp
	leave
	ret

.text
	.align 4
.globl	_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT
_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	cmpl	52(%eax),%edx
	jbe	Lj17
	jmp	Lj18
Lj17:
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	-28(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj21
Lj18:
	movl	-4(%ebp),%eax
	movl	44(%eax),%edx
	movl	-28(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-20(%ebp)
Lj21:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	16(%eax),%edx
	ja	Lj24
	jmp	Lj25
Lj24:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-20(%ebp)
Lj25:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj30
	jmp	Lj29
Lj30:
	movl	-12(%ebp),%eax
	cmpl	$-5,%eax
	je	Lj28
	jmp	Lj29
Lj28:
	movl	$0,-12(%ebp)
Lj29:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%eax,16(%edx)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,20(%eax)
	movl	-4(%ebp),%eax
	cmpl	$0,56(%eax)
	jne	Lj33
	jmp	Lj34
Lj33:
	movl	-20(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	-4(%ebp),%ebx
	movl	56(%ebx),%ebx
	call	*%ebx
	movl	-4(%ebp),%edx
	movl	%eax,60(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,288(%edx)
Lj34:
	movl	-24(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-20(%ebp),%eax
	addl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	addl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	cmpl	44(%eax),%edx
	je	Lj51
	jmp	Lj52
Lj51:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	52(%eax),%eax
	cmpl	44(%edx),%eax
	je	Lj55
	jmp	Lj56
Lj55:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,52(%edx)
Lj56:
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	-28(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	16(%eax),%edx
	ja	Lj61
	jmp	Lj62
Lj61:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-20(%ebp)
Lj62:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj67
	jmp	Lj66
Lj67:
	movl	-12(%ebp),%eax
	cmpl	$-5,%eax
	je	Lj65
	jmp	Lj66
Lj65:
	movl	$0,-12(%ebp)
Lj66:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,16(%eax)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,20(%eax)
	movl	-4(%ebp),%eax
	cmpl	$0,56(%eax)
	jne	Lj70
	jmp	Lj71
Lj70:
	movl	-20(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	-4(%ebp),%ebx
	movl	56(%ebx),%ebx
	call	*%ebx
	movl	-4(%ebp),%edx
	movl	%eax,60(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,288(%edx)
Lj71:
	movl	-24(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-20(%ebp),%eax
	addl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	addl	%eax,-28(%ebp)
Lj52:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,48(%edx)
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_INFUTIL
_THREADVARLIST_INFUTIL:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_INFUTIL_INFLATE_MASK
_TC_INFUTIL_INFLATE_MASK:
	.long	0,1,3,7,15,31,63,127,255,511,1023,2047,4095,8191,16383,32767,65535
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_MOVE$formal$formal$LONGINT$stub:
.indirect_symbol _SYSTEM_MOVE$formal$formal$LONGINT
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

