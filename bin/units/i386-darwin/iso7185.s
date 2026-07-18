# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_ISO7185_DOASSIGN$TEXT
_ISO7185_DOASSIGN$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$536,%esp
	movl	%ebx,-532(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$2,(%esp)
	movl	L_$ISO7185$_Ld1$non_lazy_ptr-Lj4(%ebx),%eax
	movl	%eax,-272(%ebp)
	movl	$1000000000,%eax
	call	L_SYSTEM_RANDOM$LONGINT$$LONGINT$stub
	leal	-528(%ebp),%ecx
	movb	$8,%dl
	call	L_SYSTEM_HEXSTR$LONGINT$BYTE$$SHORTSTRING$stub
	leal	-528(%ebp),%eax
	movl	%eax,-268(%ebp)
	movl	L_$ISO7185$_Ld2$non_lazy_ptr-Lj4(%ebx),%eax
	movl	%eax,-264(%ebp)
	leal	-272(%ebp),%ecx
	leal	-260(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
	leal	-260(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub
	movl	-532(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ISO7185_REWRITE$TEXT
_ISO7185_REWRITE$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj27
	jmp	Lj28
Lj27:
	movl	-4(%ebp),%eax
	call	L_ISO7185_DOASSIGN$TEXT$stub
Lj28:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_REWRITE$TEXT$stub
	leave
	ret

.text
	.align 4
.globl	_ISO7185_RESET$TEXT
_ISO7185_RESET$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jl	Lj36
	testl	%eax,%eax
	je	Lj37
	subl	$55218,%eax
	je	Lj38
	jmp	Lj36
Lj37:
	movl	-4(%ebp),%eax
	call	L_ISO7185_DOASSIGN$TEXT$stub
	jmp	Lj35
Lj38:
	movl	-4(%ebp),%edx
	movb	$26,%cl
	movl	$0,%eax
	call	Lfpc_write_text_char$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	jmp	Lj35
Lj36:
Lj35:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_RESET$TEXT$stub
	leave
	ret

.text
	.align 4
.globl	_ISO7185_EOF$TEXT$$BOOLEAN
_ISO7185_EOF$TEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj52
Lj52:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_TC_SYSTEM_CTRLZMARKSEOF$non_lazy_ptr-Lj52(%ebx),%eax
	movb	(%eax),%al
	movb	%al,-6(%ebp)
	movl	L_TC_SYSTEM_CTRLZMARKSEOF$non_lazy_ptr-Lj52(%ebx),%eax
	movb	$0,(%eax)
	movl	-4(%ebp),%eax
	call	L_SYSTEM_EOF$TEXT$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-6(%ebp),%dl
	movl	L_TC_SYSTEM_CTRLZMARKSEOF$non_lazy_ptr-Lj52(%ebx),%eax
	movb	%dl,(%eax)
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ISO7185_EOF$$BOOLEAN
_ISO7185_EOF$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj64
Lj64:
	popl	%ebx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj64(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj69
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj64(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj70
Lj69:
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj64(%ebx),%edx
	leal	4(%edx),%eax
Lj70:
	call	L_ISO7185_EOF$TEXT$$BOOLEAN$stub
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ISO7185_EOLN$TEXT$$BOOLEAN
_ISO7185_EOLN$TEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj72
Lj72:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_TC_SYSTEM_CTRLZMARKSEOF$non_lazy_ptr-Lj72(%ebx),%eax
	movb	(%eax),%al
	movb	%al,-6(%ebp)
	movl	L_TC_SYSTEM_CTRLZMARKSEOF$non_lazy_ptr-Lj72(%ebx),%eax
	movb	$1,(%eax)
	movl	-4(%ebp),%eax
	call	L_SYSTEM_EOLN$TEXT$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-6(%ebp),%dl
	movl	L_TC_SYSTEM_CTRLZMARKSEOF$non_lazy_ptr-Lj72(%ebx),%eax
	movb	%dl,(%eax)
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ISO7185_EOLN$$BOOLEAN
_ISO7185_EOLN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj84
Lj84:
	popl	%ebx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj84(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj89
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj84(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj90
Lj89:
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj84(%ebx),%edx
	leal	4(%edx),%eax
Lj90:
	call	L_ISO7185_EOLN$TEXT$$BOOLEAN$stub
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIT$_ISO7185
_INIT$_ISO7185:
.reference __ISO7185_init
.globl	__ISO7185_init
__ISO7185_init:
.reference _INIT$_ISO7185
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_SYSTEM_RANDOMIZE$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_ISO7185
_THREADVARLIST_ISO7185:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 2
.globl	_$ISO7185$_Ld1
_$ISO7185$_Ld1:
	.ascii	"\004fpc_\000"

.const
	.align 2
.globl	_$ISO7185$_Ld2
_$ISO7185$_Ld2:
	.ascii	"\004.tmp\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_RANDOM$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSTEM_RANDOM$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_HEXSTR$LONGINT$BYTE$$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_HEXSTR$LONGINT$BYTE$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_concat_multi$stub:
.indirect_symbol fpc_shortstr_concat_multi
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_ASSIGN$TEXT$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ISO7185_DOASSIGN$TEXT$stub:
.indirect_symbol _ISO7185_DOASSIGN$TEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_REWRITE$TEXT$stub:
.indirect_symbol _SYSTEM_REWRITE$TEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_char$stub:
.indirect_symbol fpc_write_text_char
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_end$stub:
.indirect_symbol fpc_write_end
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_RESET$TEXT$stub:
.indirect_symbol _SYSTEM_RESET$TEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_EOF$TEXT$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_EOF$TEXT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ISO7185_EOF$TEXT$$BOOLEAN$stub:
.indirect_symbol _ISO7185_EOF$TEXT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_EOLN$TEXT$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_EOLN$TEXT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ISO7185_EOLN$TEXT$$BOOLEAN$stub:
.indirect_symbol _ISO7185_EOLN$TEXT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_RANDOMIZE$stub:
.indirect_symbol _SYSTEM_RANDOMIZE
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
L_$ISO7185$_Ld1$non_lazy_ptr:
.indirect_symbol _$ISO7185$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ISO7185$_Ld2$non_lazy_ptr:
.indirect_symbol _$ISO7185$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSTEM_CTRLZMARKSEOF$non_lazy_ptr:
.indirect_symbol _TC_SYSTEM_CTRLZMARKSEOF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_THREADVAR_RELOCATE$non_lazy_ptr:
.indirect_symbol FPC_THREADVAR_RELOCATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_INPUT$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_INPUT
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

