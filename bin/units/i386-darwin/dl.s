# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DL_POSLASTSLASH$SHORTSTRING$$LONGINT
_DL_POSLASTSLASH$SHORTSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jl	Lj8
	decl	-12(%ebp)
	.align 2
Lj9:
	incl	-12(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-12(%ebp),%ecx
	movb	(%edx,%ecx,1),%dl
	cmpb	$47,%dl
	je	Lj10
	jmp	Lj11
Lj10:
	movl	-12(%ebp),%edx
	movl	%edx,-8(%ebp)
Lj11:
	cmpl	-12(%ebp),%eax
	jg	Lj9
Lj8:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DL_SIMPLEEXTRACTFILENAME$SHORTSTRING$$SHORTSTRING
_DL_SIMPLEEXTRACTFILENAME$SHORTSTRING$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ebx
	movl	-4(%ebp),%eax
	call	L_DL_POSLASTSLASH$SHORTSTRING$$LONGINT$stub
	subl	%eax,%ebx
	movl	-4(%ebp),%eax
	call	L_DL_POSLASTSLASH$SHORTSTRING$$LONGINT$stub
	movl	%eax,%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	%ebx,%ecx
	call	Lfpc_shortstr_copy$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DL_UNIXGETMODULEBYADDR$POINTER$POINTER$OPENSTRING
_DL_UNIXGETMODULEBYADDR$POINTER$POINTER$OPENSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$552,%esp
	movl	%ebx,-544(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	leal	-28(%ebp),%eax
	movb	$0,%cl
	movl	$16,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	leal	-28(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_dladdr$stub
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,(%edx)
	movl	-28(%ebp),%ecx
	leal	-284(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_pchar_to_shortstr$stub
	leal	-284(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_shortstr_to_shortstr$stub
	leal	-540(%ebp),%edx
	movl	$0,%eax
	call	L_SYSTEM_PARAMSTR$LONGINT$$SHORTSTRING$stub
	leal	-540(%ebp),%eax
	leal	-284(%ebp),%edx
	call	L_DL_SIMPLEEXTRACTFILENAME$SHORTSTRING$$SHORTSTRING$stub
	leal	-284(%ebp),%ebx
	leal	-540(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DL_SIMPLEEXTRACTFILENAME$SHORTSTRING$$SHORTSTRING$stub
	leal	-540(%ebp),%eax
	movl	%ebx,%edx
	call	Lfpc_shortstr_compare_equal$stub
	testl	%eax,%eax
	je	Lj56
	jmp	Lj57
Lj56:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
Lj57:
	movl	-544(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIT$_DL
_INIT$_DL:
.reference __DL_init
.globl	__DL_init
__DL_init:
.reference _INIT$_DL
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj2
Lj2:
	popl	%edx
	movl	L_DL_UNIXGETMODULEBYADDR$POINTER$POINTER$OPENSTRING$non_lazy_ptr-Lj2(%edx),%eax
	movl	L_TC_SYSTEM_UNIXGETMODULEBYADDRHOOK$non_lazy_ptr-Lj2(%edx),%ecx
	movl	%eax,(%ecx)
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_DL
_THREADVARLIST_DL:
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

L_DL_POSLASTSLASH$SHORTSTRING$$LONGINT$stub:
.indirect_symbol _DL_POSLASTSLASH$SHORTSTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_copy$stub:
.indirect_symbol fpc_shortstr_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_dladdr$stub:
.indirect_symbol _dladdr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_pchar_to_shortstr$stub:
.indirect_symbol fpc_pchar_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_shortstr$stub:
.indirect_symbol fpc_shortstr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_PARAMSTR$LONGINT$$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_PARAMSTR$LONGINT$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DL_SIMPLEEXTRACTFILENAME$SHORTSTRING$$SHORTSTRING$stub:
.indirect_symbol _DL_SIMPLEEXTRACTFILENAME$SHORTSTRING$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_compare_equal$stub:
.indirect_symbol fpc_shortstr_compare_equal
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

.const_data
	.align 2
.globl	_INIT_DL_PDL_INFO
_INIT_DL_PDL_INFO:
	.byte	0
	.ascii	"\010Pdl_info"

.const_data
	.align 2
.globl	_RTTI_DL_PDL_INFO
_RTTI_DL_PDL_INFO:
	.byte	0
	.ascii	"\010Pdl_info"

.const_data
	.align 2
.globl	_INIT_DL_DL_INFO
_INIT_DL_DL_INFO:
	.byte	13,7
	.ascii	"dl_info"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_DL_DL_INFO
_RTTI_DL_DL_INFO:
	.byte	13,7
	.ascii	"dl_info"
	.long	16,4
	.long	_RTTI_SYSTEM_PCHAR
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	4
	.long	_RTTI_SYSTEM_PCHAR
	.long	8
	.long	_RTTI_SYSTEM_POINTER
	.long	12
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
L_DL_UNIXGETMODULEBYADDR$POINTER$POINTER$OPENSTRING$non_lazy_ptr:
.indirect_symbol _DL_UNIXGETMODULEBYADDR$POINTER$POINTER$OPENSTRING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSTEM_UNIXGETMODULEBYADDRHOOK$non_lazy_ptr:
.indirect_symbol _TC_SYSTEM_UNIXGETMODULEBYADDRHOOK
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

