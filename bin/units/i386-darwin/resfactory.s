# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_RESFACTORY_TRESOURCEFACTORY_$__INITRESTYPELIST
_RESFACTORY_TRESOURCEFACTORY_$__INITRESTYPELIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_TC_RESFACTORY_RESTYPELIST$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj5
	jmp	Lj6
Lj5:
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	L_TC_RESFACTORY_RESTYPELIST$non_lazy_ptr-Lj4(%ebx),%edx
	movl	%eax,(%edx)
Lj6:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESFACTORY_TRESOURCEFACTORY_$__DISPOSERESTYPELIST
_RESFACTORY_TRESOURCEFACTORY_$__DISPOSERESTYPELIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj14
Lj14:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	L_TC_RESFACTORY_RESTYPELIST$non_lazy_ptr-Lj14(%esi),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj15
	jmp	Lj16
Lj15:
	jmp	Lj13
Lj16:
	movl	L_TC_RESFACTORY_RESTYPELIST$non_lazy_ptr-Lj14(%esi),%eax
	movl	(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj18
	decl	-8(%ebp)
	.align 2
Lj19:
	incl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	L_TC_RESFACTORY_RESTYPELIST$non_lazy_ptr-Lj14(%esi),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj19
Lj18:
	movl	L_TC_RESFACTORY_RESTYPELIST$non_lazy_ptr-Lj14(%esi),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj13:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RESFACTORY_TRESOURCEFACTORY_$__FINDRESOURCECLASS$TRESOURCEDESC$$TRESOURCECLASS
_RESFACTORY_TRESOURCEFACTORY_$__FINDRESOURCECLASS$TRESOURCEDESC$$TRESOURCECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj33
Lj33:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_RESFACTORY_TRESOURCEFACTORY_$__INITRESTYPELIST$stub
	movl	L_TC_RESFACTORY_RESTYPELIST$non_lazy_ptr-Lj33(%esi),%eax
	movl	(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj37
	decl	-16(%ebp)
	.align 2
Lj38:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	L_TC_RESFACTORY_RESTYPELIST$non_lazy_ptr-Lj33(%esi),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__EQUALS$TRESOURCEDESC$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj45
	jmp	Lj46
Lj45:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj32
Lj46:
	cmpl	-16(%ebp),%ebx
	jg	Lj38
Lj37:
	movl	$0,-12(%ebp)
Lj32:
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RESFACTORY_TRESOURCEFACTORY_$__REGISTERRESOURCECLASS$LONGWORD$TRESOURCECLASS
_RESFACTORY_TRESOURCEFACTORY_$__REGISTERRESOURCECLASS$LONGWORD$TRESOURCECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj56
Lj56:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr-Lj56(%ebx),%edx
	movl	$0,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CREATE$LONGWORD$$TRESOURCEDESC$stub
	movl	%eax,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj65
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RESFACTORY_TRESOURCEFACTORY_$__REGISTERRESOURCECLASS$TRESOURCEDESC$TRESOURCECLASS$stub
Lj65:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj66
	decl	%eax
	testl	%eax,%eax
	je	Lj67
Lj67:
	call	LFPC_RERAISE$stub
Lj66:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESFACTORY_TRESOURCEFACTORY_$__REGISTERRESOURCECLASS$ANSISTRING$TRESOURCECLASS
_RESFACTORY_TRESOURCEFACTORY_$__REGISTERRESOURCECLASS$ANSISTRING$TRESOURCECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	call	Lj78
Lj78:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj79
	movl	-4(%ebp),%ecx
	movl	L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr-Lj78(%ebx),%edx
	movl	$0,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CREATE$ANSISTRING$$TRESOURCEDESC$stub
	movl	%eax,-16(%ebp)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj90
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RESFACTORY_TRESOURCEFACTORY_$__REGISTERRESOURCECLASS$TRESOURCEDESC$TRESOURCECLASS$stub
Lj90:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj91
	decl	%eax
	testl	%eax,%eax
	je	Lj92
Lj92:
	call	LFPC_RERAISE$stub
Lj91:
Lj79:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj80
	call	LFPC_RERAISE$stub
Lj80:
	movl	-100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESFACTORY_TRESOURCEFACTORY_$__REGISTERRESOURCECLASS$TRESOURCEDESC$TRESOURCECLASS
_RESFACTORY_TRESOURCEFACTORY_$__REGISTERRESOURCECLASS$TRESOURCEDESC$TRESOURCECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	call	Lj103
Lj103:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-68(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj104
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RESFACTORY_TRESOURCEFACTORY_$__FINDRESOURCECLASS$TRESOURCEDESC$$TRESOURCECLASS$stub
	testl	%eax,%eax
	jne	Lj107
	jmp	Lj108
Lj107:
	movl	$0,(%esp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$11,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_RESFACTORY_SALREADYREGISTERED$non_lazy_ptr-Lj103(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_RESFACTORY_ERESOURCECLASSALREADYREGISTEREDEXCEPTION$non_lazy_ptr-Lj103(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj103(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj108:
	movl	$8,%eax
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
	movl	%eax,-16(%ebp)
	movl	L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr-Lj103(%ebx),%edx
	movl	$0,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CREATE$$TRESOURCEDESC$stub
	movl	-16(%ebp),%edx
	movl	%eax,(%edx)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__ASSIGN$TRESOURCEDESC$stub
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-16(%ebp),%edx
	movl	L_TC_RESFACTORY_RESTYPELIST$non_lazy_ptr-Lj103(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
Lj104:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj105
	call	LFPC_RERAISE$stub
Lj105:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESFACTORY_TRESOURCEFACTORY_$__CREATERESOURCE$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE
_RESFACTORY_TRESOURCEFACTORY_$__CREATERESOURCE$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj148
Lj148:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RESFACTORY_TRESOURCEFACTORY_$__FINDRESOURCECLASS$TRESOURCEDESC$$TRESOURCECLASS$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj155
	jmp	Lj156
Lj155:
	movl	L_VMT_RESOURCE_TGENERICRESOURCE$non_lazy_ptr-Lj148(%ebx),%eax
	movl	%eax,-20(%ebp)
Lj156:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	$0,%eax
	movl	-20(%ebp),%esi
	call	*128(%esi)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_RESFACTORY
_FINALIZE$_RESFACTORY:
.reference __RESFACTORY_finalize
.globl	__RESFACTORY_finalize
__RESFACTORY_finalize:
.reference _FINALIZE$_RESFACTORY
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj170
Lj170:
	popl	%ebx
	movl	L_VMT_RESFACTORY_TRESOURCEFACTORY$non_lazy_ptr-Lj170(%ebx),%eax
	call	L_RESFACTORY_TRESOURCEFACTORY_$__DISPOSERESTYPELIST$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$RESFACTORY$_Ld1
_$RESFACTORY$_Ld1:
	.byte	25
	.ascii	"EResourceFactoryException"

.const_data
	.align 2
.globl	_VMT_RESFACTORY_ERESOURCEFACTORYEXCEPTION
_VMT_RESFACTORY_ERESOURCEFACTORYEXCEPTION:
	.long	12,-12
	.long	_VMT_RESOURCE_ERESOURCEEXCEPTION
	.long	_$RESFACTORY$_Ld1
	.long	0,0
	.long	_$RESFACTORY$_Ld2
	.long	_RTTI_RESFACTORY_ERESOURCEFACTORYEXCEPTION
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

.const_data
	.align 2
.globl	_$RESFACTORY$_Ld4
_$RESFACTORY$_Ld4:
	.byte	40
	.ascii	"EResourceClassAlreadyRegisteredException"

.const_data
	.align 2
.globl	_VMT_RESFACTORY_ERESOURCECLASSALREADYREGISTEREDEXCEPTION
_VMT_RESFACTORY_ERESOURCECLASSALREADYREGISTEREDEXCEPTION:
	.long	12,-12
	.long	_VMT_RESFACTORY_ERESOURCEFACTORYEXCEPTION
	.long	_$RESFACTORY$_Ld4
	.long	0,0
	.long	_$RESFACTORY$_Ld5
	.long	_RTTI_RESFACTORY_ERESOURCECLASSALREADYREGISTEREDEXCEPTION
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

.const_data
	.align 2
.globl	_$RESFACTORY$_Ld7
_$RESFACTORY$_Ld7:
	.byte	16
	.ascii	"TResourceFactory"

.const_data
	.align 2
.globl	_VMT_RESFACTORY_TRESOURCEFACTORY
_VMT_RESFACTORY_TRESOURCEFACTORY:
	.long	4,-4
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$RESFACTORY$_Ld7
	.long	0,0
	.long	_$RESFACTORY$_Ld8
	.long	_RTTI_RESFACTORY_TRESOURCEFACTORY
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
.globl	_THREADVARLIST_RESFACTORY
_THREADVARLIST_RESFACTORY:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$RESFACTORY$_Ld11
_$RESFACTORY$_Ld11:
	.short	0,1
	.long	0,-1,10
.reference _$RESFACTORY$_Ld10
.globl	_$RESFACTORY$_Ld10
_$RESFACTORY$_Ld10:
.reference _$RESFACTORY$_Ld11
	.ascii	"RESFACTORY\000"

.const_data
	.align 2
.globl	_$RESFACTORY$_Ld13
_$RESFACTORY$_Ld13:
	.short	0,1
	.long	0,-1,55
.reference _$RESFACTORY$_Ld12
.globl	_$RESFACTORY$_Ld12
_$RESFACTORY$_Ld12:
.reference _$RESFACTORY$_Ld13
	.ascii	"A resource class for the type %s is already registe"
	.ascii	"red.\000"
	.align 2
.globl	_$RESFACTORY$_Ld15
_$RESFACTORY$_Ld15:
	.short	0,1
	.long	0,-1,29
.reference _$RESFACTORY$_Ld14
.globl	_$RESFACTORY$_Ld14
_$RESFACTORY$_Ld14:
.reference _$RESFACTORY$_Ld15
	.ascii	"resfactory.salreadyregistered\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_RESFACTORY_RESTYPELIST
_TC_RESFACTORY_RESTYPELIST:
	.long	0
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

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FREEANDNIL$formal$stub:
.indirect_symbol _SYSUTILS_FREEANDNIL$formal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESFACTORY_TRESOURCEFACTORY_$__INITRESTYPELIST$stub:
.indirect_symbol _RESFACTORY_TRESOURCEFACTORY_$__INITRESTYPELIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCEDESC_$__EQUALS$TRESOURCEDESC$$BOOLEAN$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__EQUALS$TRESOURCEDESC$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCEDESC_$__CREATE$LONGWORD$$TRESOURCEDESC$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__CREATE$LONGWORD$$TRESOURCEDESC
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

L_RESFACTORY_TRESOURCEFACTORY_$__REGISTERRESOURCECLASS$TRESOURCEDESC$TRESOURCECLASS$stub:
.indirect_symbol _RESFACTORY_TRESOURCEFACTORY_$__REGISTERRESOURCECLASS$TRESOURCEDESC$TRESOURCECLASS
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

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCEDESC_$__CREATE$ANSISTRING$$TRESOURCEDESC$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__CREATE$ANSISTRING$$TRESOURCEDESC
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

L_RESFACTORY_TRESOURCEFACTORY_$__FINDRESOURCECLASS$TRESOURCEDESC$$TRESOURCECLASS$stub:
.indirect_symbol _RESFACTORY_TRESOURCEFACTORY_$__FINDRESOURCECLASS$TRESOURCEDESC$$TRESOURCECLASS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_RAISEEXCEPTION$stub:
.indirect_symbol FPC_RAISEEXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_GETMEM$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCEDESC_$__CREATE$$TRESOURCEDESC$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__CREATE$$TRESOURCEDESC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCEDESC_$__ASSIGN$TRESOURCEDESC$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__ASSIGN$TRESOURCEDESC
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

L_RESFACTORY_TRESOURCEFACTORY_$__DISPOSERESTYPELIST$stub:
.indirect_symbol _RESFACTORY_TRESOURCEFACTORY_$__DISPOSERESTYPELIST
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
.globl	_$RESFACTORY$_Ld2
_$RESFACTORY$_Ld2:
	.short	0
	.long	_$RESFACTORY$_Ld3
	.align 2
.globl	_$RESFACTORY$_Ld3
_$RESFACTORY$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESFACTORY_ERESOURCEFACTORYEXCEPTION
_INIT_RESFACTORY_ERESOURCEFACTORYEXCEPTION:
	.byte	15,25
	.ascii	"EResourceFactoryException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESFACTORY_ERESOURCEFACTORYEXCEPTION
_RTTI_RESFACTORY_ERESOURCEFACTORYEXCEPTION:
	.byte	15,25
	.ascii	"EResourceFactoryException"
	.long	_VMT_RESFACTORY_ERESOURCEFACTORYEXCEPTION
	.long	_RTTI_RESOURCE_ERESOURCEEXCEPTION
	.short	0
	.byte	10
	.ascii	"resfactory"
	.short	0

.const_data
	.align 2
.globl	_$RESFACTORY$_Ld5
_$RESFACTORY$_Ld5:
	.short	0
	.long	_$RESFACTORY$_Ld6
	.align 2
.globl	_$RESFACTORY$_Ld6
_$RESFACTORY$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESFACTORY_ERESOURCECLASSALREADYREGISTEREDEXCEPTION
_INIT_RESFACTORY_ERESOURCECLASSALREADYREGISTEREDEXCEPTION:
	.byte	15,40
	.ascii	"EResourceClassAlreadyRegisteredException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESFACTORY_ERESOURCECLASSALREADYREGISTEREDEXCEPTION
_RTTI_RESFACTORY_ERESOURCECLASSALREADYREGISTEREDEXCEPTION:
	.byte	15,40
	.ascii	"EResourceClassAlreadyRegisteredException"
	.long	_VMT_RESFACTORY_ERESOURCECLASSALREADYREGISTEREDEXCEPTION
	.long	_RTTI_RESFACTORY_ERESOURCEFACTORYEXCEPTION
	.short	0
	.byte	10
	.ascii	"resfactory"
	.short	0

.const_data
	.align 2
.globl	_INIT_RESFACTORY_DEF41
_INIT_RESFACTORY_DEF41:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$RESFACTORY$_Ld8
_$RESFACTORY$_Ld8:
	.short	0
	.long	_$RESFACTORY$_Ld9
	.align 2
.globl	_$RESFACTORY$_Ld9
_$RESFACTORY$_Ld9:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESFACTORY_TRESOURCEFACTORY
_INIT_RESFACTORY_TRESOURCEFACTORY:
	.byte	15,16
	.ascii	"TResourceFactory"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESFACTORY_TRESOURCEFACTORY
_RTTI_RESFACTORY_TRESOURCEFACTORY:
	.byte	15,16
	.ascii	"TResourceFactory"
	.long	_VMT_RESFACTORY_TRESOURCEFACTORY
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	10
	.ascii	"resfactory"
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
L_TC_RESFACTORY_RESTYPELIST$non_lazy_ptr:
.indirect_symbol _TC_RESFACTORY_RESTYPELIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFPLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFPLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCE_TRESOURCEDESC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RESFACTORY_SALREADYREGISTERED$non_lazy_ptr:
.indirect_symbol _RESSTR_RESFACTORY_SALREADYREGISTERED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESFACTORY_ERESOURCECLASSALREADYREGISTEREDEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_RESFACTORY_ERESOURCECLASSALREADYREGISTEREDEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESOURCE_TGENERICRESOURCE$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCE_TGENERICRESOURCE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESFACTORY_TRESOURCEFACTORY$non_lazy_ptr:
.indirect_symbol _VMT_RESFACTORY_TRESOURCEFACTORY
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_RESFACTORY_START
_RESSTR_RESFACTORY_START:
	.long	_$RESFACTORY$_Ld10
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_RESFACTORY_SALREADYREGISTERED
_RESSTR_RESFACTORY_SALREADYREGISTERED:
	.long	_$RESFACTORY$_Ld14
	.long	_$RESFACTORY$_Ld12
	.long	_$RESFACTORY$_Ld12
	.long	153593598

.data
	.align 2
.globl	_RESSTR_RESFACTORY_END
_RESSTR_RESFACTORY_END:
	.long	_RESSTR_RESFACTORY_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

