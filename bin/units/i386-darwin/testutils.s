# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_TESTUTILS_TNOREFCOUNTOBJECT_$__QUERYINTERFACE$TGUID$formal$$HRESULT
_TESTUTILS_TNOREFCOUNTOBJECT_$__QUERYINTERFACE$TGUID$formal$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	16(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj5
	jmp	Lj6
Lj5:
	movl	$0,-4(%ebp)
	jmp	Lj15
Lj6:
	movl	$-2147467262,-4(%ebp)
Lj15:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_TESTUTILS_TNOREFCOUNTOBJECT_$___ADDREF$$LONGINT
_TESTUTILS_TNOREFCOUNTOBJECT_$___ADDREF$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$-1,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_TESTUTILS_TNOREFCOUNTOBJECT_$___RELEASE$$LONGINT
_TESTUTILS_TNOREFCOUNTOBJECT_$___RELEASE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$-1,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_TESTUTILS_GETMETHODLIST$TOBJECT$TSTRINGS
_TESTUTILS_GETMETHODLIST$TOBJECT$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	call	L_TESTUTILS_GETMETHODLIST$TCLASS$TSTRINGS$stub
	leave
	ret

.text
	.align 4
.globl	_TESTUTILS_GETMETHODLIST$TCLASS$TSTRINGS
_TESTUTILS_GETMETHODLIST$TCLASS$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj38
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj46
	.align 2
Lj45:
	movl	-20(%ebp),%eax
	addl	$20,%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj50
	jmp	Lj51
Lj50:
	movl	-12(%ebp),%eax
	leal	4(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jb	Lj55
	decl	-16(%ebp)
	.align 2
Lj56:
	incl	-16(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-28(%ebp),%eax
	movl	(%eax),%eax
	leal	-72(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-72(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*200(%ecx)
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj67
	jmp	Lj68
Lj67:
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*188(%ecx)
Lj68:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-28(%ebp),%eax
	movl	(%eax),%eax
	leal	-72(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-72(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*168(%esi)
	addl	$8,-28(%ebp)
	cmpl	-16(%ebp),%ebx
	ja	Lj56
Lj55:
Lj51:
	movl	-20(%ebp),%eax
	addl	$8,%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
Lj46:
	cmpl	$0,-20(%ebp)
	jne	Lj45
	jmp	Lj47
Lj47:
Lj38:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj39
	call	LFPC_RERAISE$stub
Lj39:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_TESTUTILS_FREEOBJECTS$TFPLIST
_TESTUTILS_FREEOBJECTS$TFPLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj88
	decl	-8(%ebp)
	.align 2
Lj89:
	incl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj89
Lj88:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
.globl	_WRPR_TESTUTILS_TNOREFCOUNTOBJECT_$_IUNKNOWN_$_0_$__TESTUTILS_TNOREFCOUNTOBJECT_$__QUERYINTERFACE$TGUID$formal$$HRESULT
_WRPR_TESTUTILS_TNOREFCOUNTOBJECT_$_IUNKNOWN_$_0_$__TESTUTILS_TNOREFCOUNTOBJECT_$__QUERYINTERFACE$TGUID$formal$$HRESULT:
	subl	$4,4(%esp)
	movl	4(%esp),%eax
	movl	(%eax),%eax
	jmp	*100(%eax)

.text
.globl	_WRPR_TESTUTILS_TNOREFCOUNTOBJECT_$_IUNKNOWN_$_1_$__TESTUTILS_TNOREFCOUNTOBJECT_$___ADDREF$$LONGINT
_WRPR_TESTUTILS_TNOREFCOUNTOBJECT_$_IUNKNOWN_$_1_$__TESTUTILS_TNOREFCOUNTOBJECT_$___ADDREF$$LONGINT:
	subl	$4,4(%esp)
	jmp	L_TESTUTILS_TNOREFCOUNTOBJECT_$___ADDREF$$LONGINT$stub

.text
.globl	_WRPR_TESTUTILS_TNOREFCOUNTOBJECT_$_IUNKNOWN_$_2_$__TESTUTILS_TNOREFCOUNTOBJECT_$___RELEASE$$LONGINT
_WRPR_TESTUTILS_TNOREFCOUNTOBJECT_$_IUNKNOWN_$_2_$__TESTUTILS_TNOREFCOUNTOBJECT_$___RELEASE$$LONGINT:
	subl	$4,4(%esp)
	jmp	L_TESTUTILS_TNOREFCOUNTOBJECT_$___RELEASE$$LONGINT$stub
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
	.align 2
.globl	_$TESTUTILS$_Ld2
_$TESTUTILS$_Ld2:
	.long	1
	.long	_$TESTUTILS$_Ld3
	.long	_VTBL_TESTUTILS_TNOREFCOUNTOBJECT_$_IUNKNOWN
	.long	4
	.long	_$TESTUTILS$_Ld4
	.long	0

.data
	.align 2
.globl	_VTBL_TESTUTILS_TNOREFCOUNTOBJECT_$_IUNKNOWN
_VTBL_TESTUTILS_TNOREFCOUNTOBJECT_$_IUNKNOWN:
	.long	_WRPR_TESTUTILS_TNOREFCOUNTOBJECT_$_IUNKNOWN_$_0_$__TESTUTILS_TNOREFCOUNTOBJECT_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	_WRPR_TESTUTILS_TNOREFCOUNTOBJECT_$_IUNKNOWN_$_1_$__TESTUTILS_TNOREFCOUNTOBJECT_$___ADDREF$$LONGINT
	.long	_WRPR_TESTUTILS_TNOREFCOUNTOBJECT_$_IUNKNOWN_$_2_$__TESTUTILS_TNOREFCOUNTOBJECT_$___RELEASE$$LONGINT
	.align 2
.globl	_$TESTUTILS$_Ld3
_$TESTUTILS$_Ld3:
	.long	0
	.short	0,0
	.byte	192,0,0,0,0,0,0,70
	.align 2
.globl	_$TESTUTILS$_Ld4
_$TESTUTILS$_Ld4:
	.byte	38
	.ascii	"{00000000-0000-0000-C000-000000000046}"
.globl	_$TESTUTILS$_Ld1
_$TESTUTILS$_Ld1:
	.byte	17
	.ascii	"TNoRefCountObject"

.const_data
	.align 2
.globl	_VMT_TESTUTILS_TNOREFCOUNTOBJECT
_VMT_TESTUTILS_TNOREFCOUNTOBJECT:
	.long	8,-8
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$TESTUTILS$_Ld1
	.long	0,0
	.long	_$TESTUTILS$_Ld5
	.long	_RTTI_TESTUTILS_TNOREFCOUNTOBJECT
	.long	0,0
	.long	_$TESTUTILS$_Ld2
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
	.long	_TESTUTILS_TNOREFCOUNTOBJECT_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_TESTUTILS
_THREADVARLIST_TESTUTILS:
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

L_SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTUTILS_GETMETHODLIST$TCLASS$TSTRINGS$stub:
.indirect_symbol _TESTUTILS_GETMETHODLIST$TCLASS$TSTRINGS
	hlt
	hlt
	hlt
	hlt
	hlt

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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
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

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__GET$LONGINT$$POINTER
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

L_TESTUTILS_TNOREFCOUNTOBJECT_$___ADDREF$$LONGINT$stub:
.indirect_symbol _TESTUTILS_TNOREFCOUNTOBJECT_$___ADDREF$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTUTILS_TNOREFCOUNTOBJECT_$___RELEASE$$LONGINT$stub:
.indirect_symbol _TESTUTILS_TNOREFCOUNTOBJECT_$___RELEASE$$LONGINT
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
.globl	_$TESTUTILS$_Ld5
_$TESTUTILS$_Ld5:
	.short	0
	.long	_$TESTUTILS$_Ld6
	.align 2
.globl	_$TESTUTILS$_Ld6
_$TESTUTILS$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_TESTUTILS_TNOREFCOUNTOBJECT
_INIT_TESTUTILS_TNOREFCOUNTOBJECT:
	.byte	15,17
	.ascii	"TNoRefCountObject"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_TESTUTILS_TNOREFCOUNTOBJECT
_RTTI_TESTUTILS_TNOREFCOUNTOBJECT:
	.byte	15,17
	.ascii	"TNoRefCountObject"
	.long	_VMT_TESTUTILS_TNOREFCOUNTOBJECT
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	9
	.ascii	"testutils"
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

