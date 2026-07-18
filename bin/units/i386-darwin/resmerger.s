# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_RESMERGER_TRESOURCEMERGER_$__MERGE$TABSTRACTRESOURCE$TABSTRACTRESOURCE$$BOOLEAN
_RESMERGER_TRESOURCEMERGER_$__MERGE$TABSTRACTRESOURCE$TABSTRACTRESOURCE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-336(%ebp)
	movl	%esi,-332(%ebp)
	call	Lj4
Lj4:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj5
	movb	$0,-13(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE$non_lazy_ptr-Lj4(%esi),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	je	Lj10
	jmp	Lj11
Lj10:
	jmp	Lj5
Lj11:
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-24(%ebp),%eax
	call	L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETLASTID$$WORD$stub
	movzwl	%ax,%eax
	movl	%eax,%ebx
	movl	-24(%ebp),%eax
	movzwl	60(%eax),%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj21
	decl	-20(%ebp)
	.align 2
Lj22:
	incl	-20(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-328(%ebp),%ecx
	movw	-20(%ebp),%dx
	movl	-24(%ebp),%eax
	call	L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETSTRING$WORD$$SHORTSTRING$stub
	leal	-328(%ebp),%eax
	leal	-72(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	jne	Lj27
	jmp	Lj26
Lj27:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-328(%ebp),%ecx
	movw	-20(%ebp),%dx
	movl	-28(%ebp),%eax
	call	L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETSTRING$WORD$$SHORTSTRING$stub
	leal	-328(%ebp),%eax
	leal	-72(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	jne	Lj25
	jmp	Lj26
Lj25:
	jmp	Lj5
Lj26:
	cmpl	-20(%ebp),%ebx
	jg	Lj22
Lj21:
	movl	-24(%ebp),%eax
	call	L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETLASTID$$WORD$stub
	movzwl	%ax,%eax
	movl	%eax,%ebx
	movl	-24(%ebp),%eax
	movzwl	60(%eax),%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj49
	decl	-20(%ebp)
	.align 2
Lj50:
	incl	-20(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-328(%ebp),%ecx
	movw	-20(%ebp),%dx
	movl	-28(%ebp),%eax
	call	L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETSTRING$WORD$$SHORTSTRING$stub
	leal	-328(%ebp),%eax
	leal	-72(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	jne	Lj53
	jmp	Lj54
Lj53:
	leal	-328(%ebp),%ecx
	movw	-20(%ebp),%dx
	movl	-28(%ebp),%eax
	call	L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETSTRING$WORD$$SHORTSTRING$stub
	leal	-328(%ebp),%ecx
	movw	-20(%ebp),%dx
	movl	-24(%ebp),%eax
	call	L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__SETSTRING$WORD$SHORTSTRING$stub
Lj54:
	cmpl	-20(%ebp),%ebx
	jg	Lj50
Lj49:
	movb	$1,-13(%ebp)
Lj5:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj6
	call	LFPC_RERAISE$stub
Lj6:
	movb	-13(%ebp),%al
	movl	-336(%ebp),%ebx
	movl	-332(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$RESMERGER$_Ld1
_$RESMERGER$_Ld1:
	.byte	15
	.ascii	"TResourceMerger"

.const_data
	.align 2
.globl	_VMT_RESMERGER_TRESOURCEMERGER
_VMT_RESMERGER_TRESOURCEMERGER:
	.long	4,-4
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$RESMERGER$_Ld1
	.long	0,0
	.long	_$RESMERGER$_Ld2
	.long	_RTTI_RESMERGER_TRESOURCEMERGER
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_SYSTEM_TOBJECT_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	_SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_RESMERGER
_THREADVARLIST_RESMERGER:
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

LFPC_PUSHEXCEPTADDR$stub:
.indirect_symbol FPC_PUSHEXCEPTADDR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SETJMP$stub:
.indirect_symbol FPC_SETJMP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_do_is$stub:
.indirect_symbol fpc_do_is
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETLASTID$$WORD$stub:
.indirect_symbol _STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETLASTID$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETSTRING$WORD$$SHORTSTRING$stub:
.indirect_symbol _STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETSTRING$WORD$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_ansistr$stub:
.indirect_symbol fpc_shortstr_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__SETSTRING$WORD$SHORTSTRING$stub:
.indirect_symbol _STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__SETSTRING$WORD$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_POPADDRSTACK$stub:
.indirect_symbol FPC_POPADDRSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_RERAISE$stub:
.indirect_symbol FPC_RERAISE
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
.globl	_$RESMERGER$_Ld2
_$RESMERGER$_Ld2:
	.short	0
	.long	_$RESMERGER$_Ld3
	.align 2
.globl	_$RESMERGER$_Ld3
_$RESMERGER$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESMERGER_TRESOURCEMERGER
_INIT_RESMERGER_TRESOURCEMERGER:
	.byte	15,15
	.ascii	"TResourceMerger"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESMERGER_TRESOURCEMERGER
_RTTI_RESMERGER_TRESOURCEMERGER:
	.byte	15,15
	.ascii	"TResourceMerger"
	.long	_VMT_RESMERGER_TRESOURCEMERGER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	9
	.ascii	"resmerger"
	.short	0
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
L_VMT_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE$non_lazy_ptr:
.indirect_symbol _VMT_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE
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

