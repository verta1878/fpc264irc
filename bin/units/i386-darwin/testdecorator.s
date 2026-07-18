# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_TESTDECORATOR_TTESTDECORATOR_$__GETTESTNAME$$ANSISTRING
_TESTDECORATOR_TTESTDECORATOR_$__GETTESTNAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	leave
	ret

.text
	.align 4
.globl	_TESTDECORATOR_TTESTDECORATOR_$__GETTESTSUITENAME$$ANSISTRING
_TESTDECORATOR_TTESTDECORATOR_$__GETTESTSUITENAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	leave
	ret

.text
	.align 4
.globl	_TESTDECORATOR_TTESTDECORATOR_$__SETTESTSUITENAME$ANSISTRING
_TESTDECORATOR_TTESTDECORATOR_$__SETTESTSUITENAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	leave
	ret

.text
	.align 4
.globl	_TESTDECORATOR_TTESTDECORATOR_$__GETENABLEIGNORES$$BOOLEAN
_TESTDECORATOR_TTESTDECORATOR_$__GETENABLEIGNORES$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_TESTDECORATOR_TTESTDECORATOR_$__SETENABLEIGNORES$BOOLEAN
_TESTDECORATOR_TTESTDECORATOR_$__SETENABLEIGNORES$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movb	-4(%ebp),%dl
	movl	-8(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
	leave
	ret

.text
	.align 4
.globl	_TESTDECORATOR_TTESTDECORATOR_$__COUNTTESTCASES$$LONGINT
_TESTDECORATOR_TTESTDECORATOR_$__COUNTTESTCASES$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_TESTDECORATOR_TTESTDECORATOR_$__CREATE$TTEST$$TTESTDECORATOR
_TESTDECORATOR_TTESTDECORATOR_$__CREATE$TTEST$$TTESTDECORATOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj41
	jmp	Lj42
Lj41:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj42:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj47
	jmp	Lj48
Lj47:
	jmp	Lj39
Lj48:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj51
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj55
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,8(%edx)
Lj55:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj56
	call	LFPC_RERAISE$stub
Lj56:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj66
	jmp	Lj65
Lj66:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj64
	jmp	Lj65
Lj64:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj65:
Lj51:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj53
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj70
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj71
	jmp	Lj72
Lj71:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj72:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj70:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj69
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj69:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj53
Lj53:
Lj39:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_TESTDECORATOR_TTESTDECORATOR_$__DESTROY
_TESTDECORATOR_TTESTDECORATOR_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj79
	jmp	Lj80
Lj79:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj80:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj91
	jmp	Lj90
Lj91:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj89
	jmp	Lj90
Lj89:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj90:
	leave
	ret

.text
	.align 4
.globl	_TESTDECORATOR_TTESTDECORATOR_$__BASICRUN$TTESTRESULT
_TESTDECORATOR_TTESTDECORATOR_$__BASICRUN$TTESTRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
	leave
	ret

.text
	.align 4
.globl	_TESTDECORATOR_TTESTDECORATOR_$__RUN$TTESTRESULT
_TESTDECORATOR_TTESTDECORATOR_$__RUN$TTESTRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*148(%ecx)
	leave
	ret

.text
	.align 4
.globl	_TESTDECORATOR_ONETIMEPROTECT$TTEST$TTESTRESULT
_TESTDECORATOR_ONETIMEPROTECT$TTEST$TTESTRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj107
Lj107:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_TESTDECORATOR_TTESTSETUP$non_lazy_ptr-Lj107(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj108
	jmp	Lj109
Lj108:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*152(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*148(%ecx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*156(%edx)
Lj109:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_TESTDECORATOR_TTESTSETUP_$__RUN$TTESTRESULT
_TESTDECORATOR_TTESTSETUP_$__RUN$TTESTRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj123
Lj123:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_TESTDECORATOR_ONETIMEPROTECT$TTEST$TTESTRESULT$non_lazy_ptr-Lj123(%ebx),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPCUNIT_TTESTRESULT_$__RUNPROTECTED$TTEST$TPROTECT$stub
	movl	-12(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$TESTDECORATOR$_Ld1
_$TESTDECORATOR$_Ld1:
	.byte	14
	.ascii	"TTestDecorator"

.const_data
	.align 2
.globl	_VMT_TESTDECORATOR_TTESTDECORATOR
_VMT_TESTDECORATOR_TTESTDECORATOR:
	.long	12,-12
	.long	_VMT_FPCUNIT_TASSERT
	.long	_$TESTDECORATOR$_Ld1
	.long	0,0
	.long	_$TESTDECORATOR$_Ld2
	.long	_RTTI_TESTDECORATOR_TTESTDECORATOR
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_TESTDECORATOR_TTESTDECORATOR_$__DESTROY
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
	.long	_TESTDECORATOR_TTESTDECORATOR_$__GETTESTNAME$$ANSISTRING
	.long	_TESTDECORATOR_TTESTDECORATOR_$__GETTESTSUITENAME$$ANSISTRING
	.long	_TESTDECORATOR_TTESTDECORATOR_$__GETENABLEIGNORES$$BOOLEAN
	.long	_TESTDECORATOR_TTESTDECORATOR_$__SETTESTSUITENAME$ANSISTRING
	.long	_TESTDECORATOR_TTESTDECORATOR_$__SETENABLEIGNORES$BOOLEAN
	.long	_TESTDECORATOR_TTESTDECORATOR_$__COUNTTESTCASES$$LONGINT
	.long	_TESTDECORATOR_TTESTDECORATOR_$__RUN$TTESTRESULT
	.long	_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$LONGINT$LONGINT$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$BOOLEAN$BOOLEAN$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$EXTENDED$EXTENDED$EXTENDED$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__CHECKNOTNULL$IUNKNOWN$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__FAILNOTEQUALS$ANSISTRING$ANSISTRING$ANSISTRING$POINTER
	.long	_TESTDECORATOR_TTESTDECORATOR_$__BASICRUN$TTESTRESULT
	.long	0

.const_data
	.align 2
.globl	_$TESTDECORATOR$_Ld4
_$TESTDECORATOR$_Ld4:
	.byte	10
	.ascii	"TTestSetup"

.const_data
	.align 2
.globl	_VMT_TESTDECORATOR_TTESTSETUP
_VMT_TESTDECORATOR_TTESTSETUP:
	.long	12,-12
	.long	_VMT_TESTDECORATOR_TTESTDECORATOR
	.long	_$TESTDECORATOR$_Ld4
	.long	0,0
	.long	_$TESTDECORATOR$_Ld5
	.long	_RTTI_TESTDECORATOR_TTESTSETUP
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_TESTDECORATOR_TTESTDECORATOR_$__DESTROY
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
	.long	_TESTDECORATOR_TTESTDECORATOR_$__GETTESTNAME$$ANSISTRING
	.long	_TESTDECORATOR_TTESTDECORATOR_$__GETTESTSUITENAME$$ANSISTRING
	.long	_TESTDECORATOR_TTESTDECORATOR_$__GETENABLEIGNORES$$BOOLEAN
	.long	_TESTDECORATOR_TTESTDECORATOR_$__SETTESTSUITENAME$ANSISTRING
	.long	_TESTDECORATOR_TTESTDECORATOR_$__SETENABLEIGNORES$BOOLEAN
	.long	_TESTDECORATOR_TTESTDECORATOR_$__COUNTTESTCASES$$LONGINT
	.long	_TESTDECORATOR_TTESTSETUP_$__RUN$TTESTRESULT
	.long	_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$LONGINT$LONGINT$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$BOOLEAN$BOOLEAN$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$EXTENDED$EXTENDED$EXTENDED$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__CHECKNOTNULL$IUNKNOWN$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__FAILNOTEQUALS$ANSISTRING$ANSISTRING$ANSISTRING$POINTER
	.long	_TESTDECORATOR_TTESTDECORATOR_$__BASICRUN$TTESTRESULT
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_TESTDECORATOR
_THREADVARLIST_TESTDECORATOR:
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

L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CREATE$$TOBJECT
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

LFPC_POPSECONDOBJECTSTACK$stub:
.indirect_symbol FPC_POPSECONDOBJECTSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DESTROYEXCEPTION$stub:
.indirect_symbol FPC_DESTROYEXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_POPOBJECTSTACK$stub:
.indirect_symbol FPC_POPOBJECTSTACK
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

L_SYSTEM_TOBJECT_$__DESTROY$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__DESTROY
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

L_FPCUNIT_TTESTRESULT_$__RUNPROTECTED$TTEST$TPROTECT$stub:
.indirect_symbol _FPCUNIT_TTESTRESULT_$__RUNPROTECTED$TTEST$TPROTECT
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
.globl	_$TESTDECORATOR$_Ld2
_$TESTDECORATOR$_Ld2:
	.short	0
	.long	_$TESTDECORATOR$_Ld3
	.align 2
.globl	_$TESTDECORATOR$_Ld3
_$TESTDECORATOR$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_TESTDECORATOR_TTESTDECORATOR
_INIT_TESTDECORATOR_TTESTDECORATOR:
	.byte	15,14
	.ascii	"TTestDecorator"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_TESTDECORATOR_TTESTDECORATOR
_RTTI_TESTDECORATOR_TTESTDECORATOR:
	.byte	15,14
	.ascii	"TTestDecorator"
	.long	_VMT_TESTDECORATOR_TTESTDECORATOR
	.long	_RTTI_FPCUNIT_TASSERT
	.short	4
	.byte	13
	.ascii	"testdecorator"
	.short	0

.const_data
	.align 2
.globl	_$TESTDECORATOR$_Ld5
_$TESTDECORATOR$_Ld5:
	.short	0
	.long	_$TESTDECORATOR$_Ld6
	.align 2
.globl	_$TESTDECORATOR$_Ld6
_$TESTDECORATOR$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_TESTDECORATOR_TTESTSETUP
_INIT_TESTDECORATOR_TTESTSETUP:
	.byte	15,10
	.ascii	"TTestSetup"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_TESTDECORATOR_TTESTSETUP
_RTTI_TESTDECORATOR_TTESTSETUP:
	.byte	15,10
	.ascii	"TTestSetup"
	.long	_VMT_TESTDECORATOR_TTESTSETUP
	.long	_RTTI_TESTDECORATOR_TTESTDECORATOR
	.short	4
	.byte	13
	.ascii	"testdecorator"
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
L_VMT_TESTDECORATOR_TTESTSETUP$non_lazy_ptr:
.indirect_symbol _VMT_TESTDECORATOR_TTESTSETUP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TESTDECORATOR_ONETIMEPROTECT$TTEST$TTESTRESULT$non_lazy_ptr:
.indirect_symbol _TESTDECORATOR_ONETIMEPROTECT$TTEST$TTESTRESULT
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

