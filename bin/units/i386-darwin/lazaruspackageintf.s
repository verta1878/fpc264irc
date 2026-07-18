# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_LAZARUSPACKAGEINTF_REGISTERUNIT$ANSISTRING$TREGISTERPROC
_LAZARUSPACKAGEINTF_REGISTERUNIT$ANSISTRING$TREGISTERPROC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj4
Lj4:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	L_U_LAZARUSPACKAGEINTF_REGISTERUNITPROC$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	L_U_LAZARUSPACKAGEINTF_REGISTERUNITPROC$non_lazy_ptr-Lj4(%esi),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_LAZARUSPACKAGEINTF_REGISTERPACKAGE$ANSISTRING$TREGISTERPROC
_LAZARUSPACKAGEINTF_REGISTERPACKAGE$ANSISTRING$TREGISTERPROC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj12
Lj12:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_U_LAZARUSPACKAGEINTF_REGISTEREDPACKAGES$non_lazy_ptr-Lj12(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj13
	jmp	Lj14
Lj13:
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj12(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	L_U_LAZARUSPACKAGEINTF_REGISTEREDPACKAGES$non_lazy_ptr-Lj12(%ebx),%edx
	movl	%eax,(%edx)
Lj14:
	movl	$8,%eax
	call	Lfpc_getmem$stub
	movl	%eax,%esi
	movl	L_INIT_LAZARUSPACKAGEINTF_TREGISTEREDPACKAGE$non_lazy_ptr-Lj12(%ebx),%edx
	movl	%esi,%eax
	call	Lfpc_initialize$stub
	movl	%esi,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%esi)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-12(%ebp),%edx
	movl	L_U_LAZARUSPACKAGEINTF_REGISTEREDPACKAGES$non_lazy_ptr-Lj12(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_LAZARUSPACKAGEINTF_CLEARREGISTEREDPACKAGES
_LAZARUSPACKAGEINTF_CLEARREGISTEREDPACKAGES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj40
Lj40:
	popl	%esi
	movl	L_U_LAZARUSPACKAGEINTF_REGISTEREDPACKAGES$non_lazy_ptr-Lj40(%esi),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj41
	jmp	Lj42
Lj41:
	movl	L_U_LAZARUSPACKAGEINTF_REGISTEREDPACKAGES$non_lazy_ptr-Lj40(%esi),%eax
	movl	(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj44
	decl	-8(%ebp)
	.align 2
Lj45:
	incl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	L_U_LAZARUSPACKAGEINTF_REGISTEREDPACKAGES$non_lazy_ptr-Lj40(%esi),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-4(%ebp)
	movl	L_INIT_LAZARUSPACKAGEINTF_TREGISTEREDPACKAGE$non_lazy_ptr-Lj40(%esi),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-4(%ebp),%eax
	call	Lfpc_freemem$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj45
Lj44:
	movl	L_U_LAZARUSPACKAGEINTF_REGISTEREDPACKAGES$non_lazy_ptr-Lj40(%esi),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	L_U_LAZARUSPACKAGEINTF_REGISTEREDPACKAGES$non_lazy_ptr-Lj40(%esi),%eax
	movl	$0,(%eax)
Lj42:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_LAZARUSPACKAGEINTF_INTERNALINIT
_LAZARUSPACKAGEINTF_INTERNALINIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj63
Lj63:
	popl	%ecx
	movl	$0,-8(%ebp)
	movl	$0,-4(%ebp)
	movl	-8(%ebp),%edx
	movl	L_U_LAZARUSPACKAGEINTF_REGISTERUNITPROC$non_lazy_ptr-Lj63(%ecx),%eax
	movl	%edx,(%eax)
	movl	-4(%ebp),%edx
	movl	L_U_LAZARUSPACKAGEINTF_REGISTERUNITPROC$non_lazy_ptr-Lj63(%ecx),%eax
	movl	%edx,4(%eax)
	movl	L_U_LAZARUSPACKAGEINTF_REGISTEREDPACKAGES$non_lazy_ptr-Lj63(%ecx),%eax
	movl	$0,(%eax)
	leave
	ret

.text
	.align 4
.globl	_LAZARUSPACKAGEINTF_INTERNALFINAL
_LAZARUSPACKAGEINTF_INTERNALFINAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_LAZARUSPACKAGEINTF_CLEARREGISTEREDPACKAGES$stub
	leave
	ret

.text
	.align 4
.globl	_INIT$_LAZARUSPACKAGEINTF
_INIT$_LAZARUSPACKAGEINTF:
.reference __LAZARUSPACKAGEINTF_init
.globl	__LAZARUSPACKAGEINTF_init
__LAZARUSPACKAGEINTF_init:
.reference _INIT$_LAZARUSPACKAGEINTF
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_LAZARUSPACKAGEINTF_INTERNALINIT$stub
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_LAZARUSPACKAGEINTF
_FINALIZE$_LAZARUSPACKAGEINTF:
.reference __LAZARUSPACKAGEINTF_finalize
.globl	__LAZARUSPACKAGEINTF_finalize
__LAZARUSPACKAGEINTF_finalize:
.reference _FINALIZE$_LAZARUSPACKAGEINTF
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_LAZARUSPACKAGEINTF_INTERNALFINAL$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_LAZARUSPACKAGEINTF_REGISTEREDPACKAGES
.data
.zerofill __DATA, __common, _U_LAZARUSPACKAGEINTF_REGISTEREDPACKAGES, 4,2




	.align 2
.globl _U_LAZARUSPACKAGEINTF_REGISTERUNITPROC
.data
.zerofill __DATA, __common, _U_LAZARUSPACKAGEINTF_REGISTERUNITPROC, 8,2



.data
	.align 2
.globl	_THREADVARLIST_LAZARUSPACKAGEINTF
_THREADVARLIST_LAZARUSPACKAGEINTF:
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

L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_getmem$stub:
.indirect_symbol fpc_getmem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_initialize$stub:
.indirect_symbol fpc_initialize
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
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

L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__GET$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_finalize$stub:
.indirect_symbol fpc_finalize
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_freemem$stub:
.indirect_symbol fpc_freemem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__FREE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_LAZARUSPACKAGEINTF_CLEARREGISTEREDPACKAGES$stub:
.indirect_symbol _LAZARUSPACKAGEINTF_CLEARREGISTEREDPACKAGES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_LAZARUSPACKAGEINTF_INTERNALINIT$stub:
.indirect_symbol _LAZARUSPACKAGEINTF_INTERNALINIT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_LAZARUSPACKAGEINTF_INTERNALFINAL$stub:
.indirect_symbol _LAZARUSPACKAGEINTF_INTERNALFINAL
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
.globl	_INIT_LAZARUSPACKAGEINTF_TREGISTERPROC
_INIT_LAZARUSPACKAGEINTF_TREGISTERPROC:
	.byte	23,13
	.ascii	"TRegisterProc"

.const_data
	.align 2
.globl	_RTTI_LAZARUSPACKAGEINTF_TREGISTERPROC
_RTTI_LAZARUSPACKAGEINTF_TREGISTERPROC:
	.byte	23,13
	.ascii	"TRegisterProc"

.const_data
	.align 2
.globl	_INIT_LAZARUSPACKAGEINTF_TREGISTERUNITPROC
_INIT_LAZARUSPACKAGEINTF_TREGISTERUNITPROC:
	.byte	6,17
	.ascii	"TRegisterUnitProc"
	.byte	0,2,2,11
	.ascii	"TheUnitName"
	.ascii	"\012AnsiString"
	.byte	0,12
	.ascii	"RegisterProc"
	.ascii	"\015TRegisterProc"
	.byte	0
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_LAZARUSPACKAGEINTF_TREGISTERPROC

.const_data
	.align 2
.globl	_RTTI_LAZARUSPACKAGEINTF_TREGISTERUNITPROC
_RTTI_LAZARUSPACKAGEINTF_TREGISTERUNITPROC:
	.byte	6,17
	.ascii	"TRegisterUnitProc"
	.byte	0,2,2,11
	.ascii	"TheUnitName"
	.ascii	"\012AnsiString"
	.byte	0,12
	.ascii	"RegisterProc"
	.ascii	"\015TRegisterProc"
	.byte	0
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_LAZARUSPACKAGEINTF_TREGISTERPROC

.const_data
	.align 2
.globl	_INIT_LAZARUSPACKAGEINTF_TREGISTEREDPACKAGE
_INIT_LAZARUSPACKAGEINTF_TREGISTEREDPACKAGE:
	.byte	13,18
	.ascii	"TRegisteredPackage"
	.long	8,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_RTTI_LAZARUSPACKAGEINTF_TREGISTEREDPACKAGE
_RTTI_LAZARUSPACKAGEINTF_TREGISTEREDPACKAGE:
	.byte	13,18
	.ascii	"TRegisteredPackage"
	.long	8,2
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	0
	.long	_RTTI_LAZARUSPACKAGEINTF_TREGISTERPROC
	.long	4

.const_data
	.align 2
.globl	_INIT_LAZARUSPACKAGEINTF_PREGISTEREDPACKAGE
_INIT_LAZARUSPACKAGEINTF_PREGISTEREDPACKAGE:
	.byte	0
	.ascii	"\022PRegisteredPackage"

.const_data
	.align 2
.globl	_RTTI_LAZARUSPACKAGEINTF_PREGISTEREDPACKAGE
_RTTI_LAZARUSPACKAGEINTF_PREGISTEREDPACKAGE:
	.byte	0
	.ascii	"\022PRegisteredPackage"
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
L_U_LAZARUSPACKAGEINTF_REGISTERUNITPROC$non_lazy_ptr:
.indirect_symbol _U_LAZARUSPACKAGEINTF_REGISTERUNITPROC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_LAZARUSPACKAGEINTF_REGISTEREDPACKAGES$non_lazy_ptr:
.indirect_symbol _U_LAZARUSPACKAGEINTF_REGISTEREDPACKAGES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFPLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFPLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_LAZARUSPACKAGEINTF_TREGISTEREDPACKAGE$non_lazy_ptr:
.indirect_symbol _INIT_LAZARUSPACKAGEINTF_TREGISTEREDPACKAGE
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

