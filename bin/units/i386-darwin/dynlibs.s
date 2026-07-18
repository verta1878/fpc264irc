# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DYNLIBS_LOADLIBRARY$ANSISTRING$$LONGINT
_DYNLIBS_LOADLIBRARY$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$1,4(%esp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj11
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj4(%ebx),%edx
	movl	%edx,%eax
Lj11:
	movl	%eax,(%esp)
	call	L_dlopen$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DYNLIBS_GETPROCEDUREADDRESS$LONGINT$ANSISTRING$$POINTER
_DYNLIBS_GETPROCEDUREADDRESS$LONGINT$ANSISTRING$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj13
Lj13:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj20
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj13(%ebx),%edx
	movl	%edx,%eax
Lj20:
	movl	%eax,4(%esp)
	call	L_dlsym$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DYNLIBS_UNLOADLIBRARY$LONGINT$$BOOLEAN
_DYNLIBS_UNLOADLIBRARY$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_dlclose$stub
	testl	%eax,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DYNLIBS_GETLOADERRORSTR$$SHORTSTRING
_DYNLIBS_GETLOADERRORSTR$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	call	L_dlerror$stub
	movl	%eax,%ecx
	leal	-260(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_pchar_to_shortstr$stub
	leal	-260(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leave
	ret

.text
	.align 4
.globl	_DYNLIBS_FREELIBRARY$LONGINT$$BOOLEAN
_DYNLIBS_FREELIBRARY$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DYNLIBS_UNLOADLIBRARY$LONGINT$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DYNLIBS_GETPROCADDRESS$LONGINT$ANSISTRING$$POINTER
_DYNLIBS_GETPROCADDRESS$LONGINT$ANSISTRING$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DYNLIBS_GETPROCEDUREADDRESS$LONGINT$ANSISTRING$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DYNLIBS_SAFELOADLIBRARY$ANSISTRING$$LONGINT
_DYNLIBS_SAFELOADLIBRARY$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj56
Lj56:
	popl	%ebx
	movl	%eax,-4(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj57
	call	L_SYSTEM_GET8087CW$$WORD$stub
	movw	%ax,-10(%ebp)
	movl	L_TC_SYSTEM_HAS_SSE_SUPPORT$non_lazy_ptr-Lj56(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj63
	jmp	Lj64
Lj63:
	call	L_SYSTEM_GETSSECSR$$LONGWORD$stub
	movl	%eax,-16(%ebp)
Lj64:
	movl	-4(%ebp),%eax
	call	L_DYNLIBS_LOADLIBRARY$ANSISTRING$$LONGINT$stub
	movl	%eax,-8(%ebp)
Lj57:
	call	LFPC_POPADDRSTACK$stub
	movw	-10(%ebp),%ax
	call	L_SYSTEM_SET8087CW$WORD$stub
	movl	L_TC_SYSTEM_HAS_SSE_SUPPORT$non_lazy_ptr-Lj56(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj73
	jmp	Lj74
Lj73:
	movl	-16(%ebp),%eax
	call	L_SYSTEM_SETSSECSR$LONGWORD$stub
Lj74:
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj58
	decl	%eax
	testl	%eax,%eax
	je	Lj59
Lj59:
	call	LFPC_RERAISE$stub
Lj58:
	movl	-8(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_DYNLIBS
_THREADVARLIST_DYNLIBS:
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

L_dlopen$stub:
.indirect_symbol _dlopen
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_dlsym$stub:
.indirect_symbol _dlsym
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_dlclose$stub:
.indirect_symbol _dlclose
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_dlerror$stub:
.indirect_symbol _dlerror
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

L_DYNLIBS_UNLOADLIBRARY$LONGINT$$BOOLEAN$stub:
.indirect_symbol _DYNLIBS_UNLOADLIBRARY$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DYNLIBS_GETPROCEDUREADDRESS$LONGINT$ANSISTRING$$POINTER$stub:
.indirect_symbol _DYNLIBS_GETPROCEDUREADDRESS$LONGINT$ANSISTRING$$POINTER
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

L_SYSTEM_GET8087CW$$WORD$stub:
.indirect_symbol _SYSTEM_GET8087CW$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETSSECSR$$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETSSECSR$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DYNLIBS_LOADLIBRARY$ANSISTRING$$LONGINT$stub:
.indirect_symbol _DYNLIBS_LOADLIBRARY$ANSISTRING$$LONGINT
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

L_SYSTEM_SET8087CW$WORD$stub:
.indirect_symbol _SYSTEM_SET8087CW$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_SETSSECSR$LONGWORD$stub:
.indirect_symbol _SYSTEM_SETSSECSR$LONGWORD
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
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSTEM_HAS_SSE_SUPPORT$non_lazy_ptr:
.indirect_symbol _TC_SYSTEM_HAS_SSE_SUPPORT
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

