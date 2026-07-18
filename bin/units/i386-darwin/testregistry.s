# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_TESTREGISTRY_GETTESTREGISTRY$$TTESTSUITE
_TESTREGISTRY_GETTESTREGISTRY$$TTESTSUITE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	L_U_TESTREGISTRY_FTESTREGISTRY$non_lazy_ptr-Lj4(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj6
	jmp	Lj5
Lj5:
	movl	L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$0,%eax
	movl	L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr-Lj4(%ebx),%ecx
	call	*148(%ecx)
	movl	L_U_TESTREGISTRY_FTESTREGISTRY$non_lazy_ptr-Lj4(%ebx),%edx
	movl	%eax,(%edx)
Lj6:
	movl	L_U_TESTREGISTRY_FTESTREGISTRY$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_TESTREGISTRY_REGISTERTESTINSUITE$TTESTSUITE$ANSISTRING$TTEST
_TESTREGISTRY_REGISTERTESTINSUITE$TTESTSUITE$ANSISTRING$TTEST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	call	Lj16
Lj16:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-28(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-84(%ebp)
	leal	-52(%ebp),%ecx
	leal	-76(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-80(%ebp)
	testl	%eax,%eax
	jne	Lj17
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	jmp	Lj21
Lj20:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*156(%ecx)
	jmp	Lj26
Lj21:
	movl	-8(%ebp),%edx
	movb	$46,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj33
	jmp	Lj34
Lj33:
	movl	-8(%ebp),%edx
	movb	$92,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-36(%ebp)
Lj34:
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj41
	jmp	Lj42
Lj41:
	movl	-8(%ebp),%edx
	movb	$47,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-36(%ebp)
Lj42:
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj49
	jmp	Lj50
Lj49:
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-36(%ebp),%ecx
	decl	%ecx
	movl	-8(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	leal	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj63
	movl	-4(%ecx),%ecx
Lj63:
	movl	-36(%ebp),%eax
	subl	%eax,%ecx
	movl	-36(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	jmp	Lj68
Lj50:
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,-28(%ebp)
	leal	-32(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-32(%ebp)
Lj68:
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj78
	decl	-16(%ebp)
	.align 2
Lj79:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-40(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr-Lj16(%esi),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj86
	jmp	Lj87
Lj86:
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-84(%ebp),%eax
	movl	-28(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj92
	jmp	Lj93
Lj92:
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj78
Lj93:
Lj87:
	cmpl	-16(%ebp),%ebx
	jg	Lj79
Lj78:
	cmpl	$0,-20(%ebp)
	jne	Lj105
	jmp	Lj104
Lj104:
	movl	-28(%ebp),%ecx
	movl	L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr-Lj16(%esi),%edx
	movl	$0,%eax
	movl	L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr-Lj16(%esi),%ebx
	call	*144(%ebx)
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*156(%ecx)
Lj105:
	movl	-12(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_TESTREGISTRY_REGISTERTESTINSUITE$TTESTSUITE$ANSISTRING$TTEST$stub
Lj26:
Lj17:
	call	LFPC_POPADDRSTACK$stub
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-28(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-28(%ebp)
	leal	-32(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-32(%ebp)
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-80(%ebp),%eax
	testl	%eax,%eax
	je	Lj18
	call	LFPC_RERAISE$stub
Lj18:
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_TESTREGISTRY_REGISTERTEST$TTESTCASECLASS
_TESTREGISTRY_REGISTERTEST$TTESTCASECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	call	L_TESTREGISTRY_GETTESTREGISTRY$$TTESTSUITE$stub
	movl	%eax,%ebx
	movl	-4(%ebp),%edx
	movl	%ebx,%eax
	movl	%ebx,%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_TESTREGISTRY_REGISTERTEST$ANSISTRING$TTESTCASECLASS
_TESTREGISTRY_REGISTERTEST$ANSISTRING$TTESTCASECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	call	Lj145
Lj145:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj146
	movl	-8(%ebp),%ecx
	movl	L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr-Lj145(%esi),%edx
	movl	$0,%eax
	movl	L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr-Lj145(%esi),%ebx
	call	*136(%ebx)
	movl	%eax,%ebx
	call	L_TESTREGISTRY_GETTESTREGISTRY$$TTESTSUITE$stub
	movl	-4(%ebp),%edx
	movl	%ebx,%ecx
	call	L_TESTREGISTRY_REGISTERTESTINSUITE$TTESTSUITE$ANSISTRING$TTEST$stub
Lj146:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj147
	call	LFPC_RERAISE$stub
Lj147:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_TESTREGISTRY_REGISTERTEST$ANSISTRING$TTEST
_TESTREGISTRY_REGISTERTEST$ANSISTRING$TTEST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj163
	call	L_TESTREGISTRY_GETTESTREGISTRY$$TTESTSUITE$stub
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_TESTREGISTRY_REGISTERTESTINSUITE$TTESTSUITE$ANSISTRING$TTEST$stub
Lj163:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj164
	call	LFPC_RERAISE$stub
Lj164:
	leave
	ret

.text
	.align 4
.globl	_TESTREGISTRY_REGISTERTESTDECORATOR$TTESTDECORATORCLASS$TTESTCASECLASS
_TESTREGISTRY_REGISTERTESTDECORATOR$TTESTDECORATORCLASS$TTESTCASECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj173
Lj173:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	call	L_TESTREGISTRY_GETTESTREGISTRY$$TTESTSUITE$stub
	movl	%eax,%ebx
	movl	-8(%ebp),%ecx
	movl	L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr-Lj173(%edi),%eax
	movl	%eax,%edx
	movl	$0,%eax
	movl	L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr-Lj173(%edi),%esi
	call	*136(%esi)
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	L_TESTDECORATOR_TTESTDECORATOR_$__CREATE$TTEST$$TTESTDECORATOR$stub
	movl	%eax,%edx
	movl	%ebx,%eax
	movl	%ebx,%ecx
	movl	(%ecx),%ecx
	call	*156(%ecx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_TESTREGISTRY_REGISTERTESTS$array_of_TTESTCASECLASS
_TESTREGISTRY_REGISTERTESTS$array_of_TTESTCASECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	-8(%ebp),%ebx
	incl	%ebx
	shll	$2,%ebx
	movl	%ebx,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%ebx,%ecx
	movl	%edi,%edx
	movl	%esi,%eax
	call	LFPC_MOVE$stub
	movl	%edi,-4(%ebp)
	movl	-8(%ebp),%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj195
	decl	-12(%ebp)
	.align 2
Lj196:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	$0,(%eax,%edx,4)
	jne	Lj197
	jmp	Lj198
Lj197:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	call	L_TESTREGISTRY_REGISTERTEST$TTESTCASECLASS$stub
Lj198:
	cmpl	-12(%ebp),%ebx
	jg	Lj196
Lj195:
	movl	-4(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_TESTREGISTRY_NUMBEROFREGISTEREDTESTS$$LONGINT
_TESTREGISTRY_NUMBEROFREGISTEREDTESTS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	L_TESTREGISTRY_GETTESTREGISTRY$$TTESTSUITE$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIT$_TESTREGISTRY
_INIT$_TESTREGISTRY:
.reference __TESTREGISTRY_init
.globl	__TESTREGISTRY_init
__TESTREGISTRY_init:
.reference _INIT$_TESTREGISTRY
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj2
Lj2:
	popl	%edx
	movl	L_U_TESTREGISTRY_FTESTREGISTRY$non_lazy_ptr-Lj2(%edx),%eax
	movl	$0,(%eax)
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_TESTREGISTRY
_FINALIZE$_TESTREGISTRY:
.reference __TESTREGISTRY_finalize
.globl	__TESTREGISTRY_finalize
__TESTREGISTRY_finalize:
.reference _FINALIZE$_TESTREGISTRY
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj210
Lj210:
	popl	%ebx
	movl	L_U_TESTREGISTRY_FTESTREGISTRY$non_lazy_ptr-Lj210(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_TESTREGISTRY_FTESTREGISTRY
.data
.zerofill __DATA, __common, _U_TESTREGISTRY_FTESTREGISTRY, 4,2



.data
	.align 2
.globl	_THREADVARLIST_TESTREGISTRY
_THREADVARLIST_TESTREGISTRY:
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

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
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

L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_copy$stub:
.indirect_symbol fpc_ansistr_copy
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

L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__GET$LONGINT$$POINTER
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

Lfpc_ansistr_compare_equal$stub:
.indirect_symbol fpc_ansistr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTREGISTRY_REGISTERTESTINSUITE$TTESTSUITE$ANSISTRING$TTEST$stub:
.indirect_symbol _TESTREGISTRY_REGISTERTESTINSUITE$TTESTSUITE$ANSISTRING$TTEST
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

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTREGISTRY_GETTESTREGISTRY$$TTESTSUITE$stub:
.indirect_symbol _TESTREGISTRY_GETTESTREGISTRY$$TTESTSUITE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTDECORATOR_TTESTDECORATOR_$__CREATE$TTEST$$TTESTDECORATOR$stub:
.indirect_symbol _TESTDECORATOR_TTESTDECORATOR_$__CREATE$TTEST$$TTESTDECORATOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_GETMEM$stub:
.indirect_symbol FPC_GETMEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_MOVE$stub:
.indirect_symbol FPC_MOVE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTREGISTRY_REGISTERTEST$TTESTCASECLASS$stub:
.indirect_symbol _TESTREGISTRY_REGISTERTEST$TTESTCASECLASS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_FREEMEM$stub:
.indirect_symbol FPC_FREEMEM
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
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.const_data
	.align 2
.globl	_INIT_TESTREGISTRY_TTESTDECORATORCLASS
_INIT_TESTREGISTRY_TTESTDECORATORCLASS:
	.byte	0
	.ascii	"\023TTestDecoratorClass"

.const_data
	.align 2
.globl	_RTTI_TESTREGISTRY_TTESTDECORATORCLASS
_RTTI_TESTREGISTRY_TTESTDECORATORCLASS:
	.byte	0
	.ascii	"\023TTestDecoratorClass"
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
L_U_TESTREGISTRY_FTESTREGISTRY$non_lazy_ptr:
.indirect_symbol _U_TESTREGISTRY_FTESTREGISTRY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr:
.indirect_symbol _VMT_FPCUNIT_TTESTSUITE
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

