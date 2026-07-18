# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_ZBASE_ZERROR$LONGINT$$SHORTSTRING
_ZBASE_ZERROR$LONGINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$-6,%eax
	je	Lj7
	cmpl	$-5,%eax
	je	Lj8
	cmpl	$-4,%eax
	je	Lj9
	cmpl	$-3,%eax
	je	Lj10
	cmpl	$-2,%eax
	je	Lj11
	cmpl	$-1,%eax
	je	Lj12
	testl	%eax,%eax
	je	Lj13
	cmpl	$1,%eax
	je	Lj14
	cmpl	$2,%eax
	je	Lj15
	jmp	Lj6
Lj7:
	movl	L_RESSTR_ZBASE_SVERSION_ERROR$non_lazy_ptr-Lj4(%ebx),%eax
	movl	4(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj5
Lj8:
	movl	L_RESSTR_ZBASE_SBUF_ERROR$non_lazy_ptr-Lj4(%ebx),%eax
	movl	4(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj5
Lj9:
	movl	L_RESSTR_ZBASE_SMEM_ERROR$non_lazy_ptr-Lj4(%ebx),%eax
	movl	4(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj5
Lj10:
	movl	L_RESSTR_ZBASE_SDATA_ERROR$non_lazy_ptr-Lj4(%ebx),%eax
	movl	4(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj5
Lj11:
	movl	L_RESSTR_ZBASE_SSTREAM_ERROR$non_lazy_ptr-Lj4(%ebx),%eax
	movl	4(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj5
Lj12:
	movl	L_RESSTR_ZBASE_SFILE_ERROR$non_lazy_ptr-Lj4(%ebx),%eax
	movl	4(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj5
Lj13:
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj5
Lj14:
	movl	L_RESSTR_ZBASE_SSTREAM_END$non_lazy_ptr-Lj4(%ebx),%eax
	movl	4(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj5
Lj15:
	movl	L_RESSTR_ZBASE_SNEED_DICT$non_lazy_ptr-Lj4(%ebx),%eax
	movl	4(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj5
Lj6:
	movl	$255,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$-1,%edx
	call	Lfpc_shortstr_sint$stub
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	L_$ZBASE$_Ld2$non_lazy_ptr-Lj4(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
Lj5:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZBASE_ZLIBVERSION$$SHORTSTRING
_ZBASE_ZLIBVERSION$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj83
Lj83:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_TC_ZBASE_ZLIB_VERSION$non_lazy_ptr-Lj83(%ebx),%ecx
	movl	-4(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZBASE_Z_ERROR$SHORTSTRING
_ZBASE_Z_ERROR$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-268(%ebp)
	movl	%esi,-264(%ebp)
	call	Lj91
Lj91:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-260(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj91(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj94
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj91(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	movl	%eax,%edx
	jmp	Lj95
Lj94:
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj91(%ebx),%eax
	leal	4(%eax),%edx
Lj95:
	leal	-260(%ebp),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj91(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj102
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj91(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj103
Lj102:
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj91(%ebx),%edx
	leal	4(%edx),%eax
Lj103:
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	%esi,%edx
	movl	L_$ZBASE$_Ld3$non_lazy_ptr-Lj91(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_input$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	Lfpc_readln_end$stub
	call	LFPC_IOCHECK$stub
	movl	$1,%eax
	call	L_SYSTEM_HALT$LONGINT$stub
	movl	-268(%ebp),%ebx
	movl	-264(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZBASE_ASSERT$BOOLEAN$SHORTSTRING
_ZBASE_ASSERT$BOOLEAN$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	leal	-264(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj122
	jmp	Lj123
Lj122:
	leal	-264(%ebp),%eax
	call	L_ZBASE_Z_ERROR$SHORTSTRING$stub
Lj123:
	leave
	ret

.text
	.align 4
.globl	_ZBASE_TRACE$SHORTSTRING
_ZBASE_TRACE$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%ebx,-264(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-260(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	leal	-260(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	movl	-264(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZBASE_TRACEV$SHORTSTRING
_ZBASE_TRACEV$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%ebx,-264(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-260(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	leal	-260(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	movl	-264(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZBASE_TRACEVV$SHORTSTRING
_ZBASE_TRACEVV$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-260(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	leave
	ret

.text
	.align 4
.globl	_ZBASE_TRACEVVV$SHORTSTRING
_ZBASE_TRACEVVV$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-260(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	leave
	ret

.text
	.align 4
.globl	_ZBASE_TRACEC$BOOLEAN$SHORTSTRING
_ZBASE_TRACEC$BOOLEAN$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-268(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	leal	-264(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	jmp	Lj158
Lj158:
	cmpb	$0,-4(%ebp)
	jne	Lj156
	jmp	Lj157
Lj156:
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	leal	-264(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj157:
	movl	-268(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZBASE_TRACECV$BOOLEAN$SHORTSTRING
_ZBASE_TRACECV$BOOLEAN$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-268(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	leal	-264(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	jmp	Lj172
	cmpb	$0,-4(%ebp)
	jne	Lj171
	jmp	Lj172
Lj171:
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	leal	-264(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj172:
	movl	-268(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_ZBASE
_THREADVARLIST_ZBASE:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$ZBASE$_Ld5
_$ZBASE$_Ld5:
	.short	0,1
	.long	0,-1,5
.reference _$ZBASE$_Ld4
.globl	_$ZBASE$_Ld4
_$ZBASE$_Ld4:
.reference _$ZBASE$_Ld5
	.ascii	"ZBASE\000"

.const_data
	.align 2
.globl	_$ZBASE$_Ld7
_$ZBASE$_Ld7:
	.short	0,1
	.long	0,-1,15
.reference _$ZBASE$_Ld6
.globl	_$ZBASE$_Ld6
_$ZBASE$_Ld6:
.reference _$ZBASE$_Ld7
	.ascii	"need dictionary\000"
	.align 2
.globl	_$ZBASE$_Ld9
_$ZBASE$_Ld9:
	.short	0,1
	.long	0,-1,16
.reference _$ZBASE$_Ld8
.globl	_$ZBASE$_Ld8
_$ZBASE$_Ld8:
.reference _$ZBASE$_Ld9
	.ascii	"zbase.sneed_dict\000"

.const_data
	.align 2
.globl	_$ZBASE$_Ld11
_$ZBASE$_Ld11:
	.short	0,1
	.long	0,-1,10
.reference _$ZBASE$_Ld10
.globl	_$ZBASE$_Ld10
_$ZBASE$_Ld10:
.reference _$ZBASE$_Ld11
	.ascii	"stream end\000"
	.align 2
.globl	_$ZBASE$_Ld13
_$ZBASE$_Ld13:
	.short	0,1
	.long	0,-1,17
.reference _$ZBASE$_Ld12
.globl	_$ZBASE$_Ld12
_$ZBASE$_Ld12:
.reference _$ZBASE$_Ld13
	.ascii	"zbase.sstream_end\000"

.const_data
	.align 2
.globl	_$ZBASE$_Ld15
_$ZBASE$_Ld15:
	.short	0,1
	.long	0,-1,10
.reference _$ZBASE$_Ld14
.globl	_$ZBASE$_Ld14
_$ZBASE$_Ld14:
.reference _$ZBASE$_Ld15
	.ascii	"file error\000"
	.align 2
.globl	_$ZBASE$_Ld17
_$ZBASE$_Ld17:
	.short	0,1
	.long	0,-1,17
.reference _$ZBASE$_Ld16
.globl	_$ZBASE$_Ld16
_$ZBASE$_Ld16:
.reference _$ZBASE$_Ld17
	.ascii	"zbase.sfile_error\000"

.const_data
	.align 2
.globl	_$ZBASE$_Ld19
_$ZBASE$_Ld19:
	.short	0,1
	.long	0,-1,12
.reference _$ZBASE$_Ld18
.globl	_$ZBASE$_Ld18
_$ZBASE$_Ld18:
.reference _$ZBASE$_Ld19
	.ascii	"stream error\000"
	.align 2
.globl	_$ZBASE$_Ld21
_$ZBASE$_Ld21:
	.short	0,1
	.long	0,-1,19
.reference _$ZBASE$_Ld20
.globl	_$ZBASE$_Ld20
_$ZBASE$_Ld20:
.reference _$ZBASE$_Ld21
	.ascii	"zbase.sstream_error\000"

.const_data
	.align 2
.globl	_$ZBASE$_Ld23
_$ZBASE$_Ld23:
	.short	0,1
	.long	0,-1,10
.reference _$ZBASE$_Ld22
.globl	_$ZBASE$_Ld22
_$ZBASE$_Ld22:
.reference _$ZBASE$_Ld23
	.ascii	"data error\000"
	.align 2
.globl	_$ZBASE$_Ld25
_$ZBASE$_Ld25:
	.short	0,1
	.long	0,-1,17
.reference _$ZBASE$_Ld24
.globl	_$ZBASE$_Ld24
_$ZBASE$_Ld24:
.reference _$ZBASE$_Ld25
	.ascii	"zbase.sdata_error\000"

.const_data
	.align 2
.globl	_$ZBASE$_Ld27
_$ZBASE$_Ld27:
	.short	0,1
	.long	0,-1,19
.reference _$ZBASE$_Ld26
.globl	_$ZBASE$_Ld26
_$ZBASE$_Ld26:
.reference _$ZBASE$_Ld27
	.ascii	"insufficient memory\000"
	.align 2
.globl	_$ZBASE$_Ld29
_$ZBASE$_Ld29:
	.short	0,1
	.long	0,-1,16
.reference _$ZBASE$_Ld28
.globl	_$ZBASE$_Ld28
_$ZBASE$_Ld28:
.reference _$ZBASE$_Ld29
	.ascii	"zbase.smem_error\000"

.const_data
	.align 2
.globl	_$ZBASE$_Ld31
_$ZBASE$_Ld31:
	.short	0,1
	.long	0,-1,12
.reference _$ZBASE$_Ld30
.globl	_$ZBASE$_Ld30
_$ZBASE$_Ld30:
.reference _$ZBASE$_Ld31
	.ascii	"buffer error\000"
	.align 2
.globl	_$ZBASE$_Ld33
_$ZBASE$_Ld33:
	.short	0,1
	.long	0,-1,16
.reference _$ZBASE$_Ld32
.globl	_$ZBASE$_Ld32
_$ZBASE$_Ld32:
.reference _$ZBASE$_Ld33
	.ascii	"zbase.sbuf_error\000"

.const_data
	.align 2
.globl	_$ZBASE$_Ld35
_$ZBASE$_Ld35:
	.short	0,1
	.long	0,-1,20
.reference _$ZBASE$_Ld34
.globl	_$ZBASE$_Ld34
_$ZBASE$_Ld34:
.reference _$ZBASE$_Ld35
	.ascii	"incompatible version\000"
	.align 2
.globl	_$ZBASE$_Ld37
_$ZBASE$_Ld37:
	.short	0,1
	.long	0,-1,20
.reference _$ZBASE$_Ld36
.globl	_$ZBASE$_Ld36
_$ZBASE$_Ld36:
.reference _$ZBASE$_Ld37
	.ascii	"zbase.sversion_error\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
.globl	_TC_ZBASE_ZLIB_VERSION
_TC_ZBASE_ZLIB_VERSION:
	.byte	5
	.ascii	"1.1.2"
	.ascii	"     "

.const
	.align 2
.globl	_$ZBASE$_Ld1
_$ZBASE$_Ld1:
	.ascii	"\000\000"

.const
	.align 2
.globl	_$ZBASE$_Ld2
_$ZBASE$_Ld2:
	.ascii	"\023Unknown zlib error \000"

.const
	.align 2
.globl	_$ZBASE$_Ld3
_$ZBASE$_Ld3:
	.ascii	"\016Zlib - Halt...\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_to_shortstr$stub:
.indirect_symbol fpc_ansistr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_sint$stub:
.indirect_symbol fpc_shortstr_sint
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_concat$stub:
.indirect_symbol fpc_shortstr_concat
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

LFPC_SHORTSTR_ASSIGN$stub:
.indirect_symbol FPC_SHORTSTR_ASSIGN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_shortstr$stub:
.indirect_symbol fpc_write_text_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_IOCHECK$stub:
.indirect_symbol FPC_IOCHECK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_writeln_end$stub:
.indirect_symbol fpc_writeln_end
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_get_output$stub:
.indirect_symbol fpc_get_output
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

Lfpc_get_input$stub:
.indirect_symbol fpc_get_input
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_readln_end$stub:
.indirect_symbol fpc_readln_end
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_HALT$LONGINT$stub:
.indirect_symbol _SYSTEM_HALT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZBASE_Z_ERROR$SHORTSTRING$stub:
.indirect_symbol _ZBASE_Z_ERROR$SHORTSTRING
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
.globl	_INIT_ZBASE_PBYTEARRAY
_INIT_ZBASE_PBYTEARRAY:
	.byte	0
	.ascii	"\012Pbytearray"

.const_data
	.align 2
.globl	_RTTI_ZBASE_PBYTEARRAY
_RTTI_ZBASE_PBYTEARRAY:
	.byte	0
	.ascii	"\012Pbytearray"

.const_data
	.align 2
.globl	_INIT_ZBASE_PWORDARRAY
_INIT_ZBASE_PWORDARRAY:
	.byte	0
	.ascii	"\012Pwordarray"

.const_data
	.align 2
.globl	_RTTI_ZBASE_PWORDARRAY
_RTTI_ZBASE_PWORDARRAY:
	.byte	0
	.ascii	"\012Pwordarray"

.const_data
	.align 2
.globl	_INIT_ZBASE_PCARDINALARRAY
_INIT_ZBASE_PCARDINALARRAY:
	.byte	0
	.ascii	"\016Pcardinalarray"

.const_data
	.align 2
.globl	_RTTI_ZBASE_PCARDINALARRAY
_RTTI_ZBASE_PCARDINALARRAY:
	.byte	0
	.ascii	"\016Pcardinalarray"

.const_data
	.align 2
.globl	_INIT_ZBASE_TBYTEARRAY
_INIT_ZBASE_TBYTEARRAY:
	.byte	12
	.ascii	"\012Tbytearray"
	.long	1,2147483647
	.long	_INIT_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_ZBASE_TBYTEARRAY
_RTTI_ZBASE_TBYTEARRAY:
	.byte	12
	.ascii	"\012Tbytearray"
	.long	1,2147483647
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_INIT_ZBASE_TWORDARRAY
_INIT_ZBASE_TWORDARRAY:
	.byte	12
	.ascii	"\012Twordarray"
	.long	2,1073741823
	.long	_INIT_SYSTEM_WORD
	.long	18

.const_data
	.align 2
.globl	_RTTI_ZBASE_TWORDARRAY
_RTTI_ZBASE_TWORDARRAY:
	.byte	12
	.ascii	"\012Twordarray"
	.long	2,1073741823
	.long	_RTTI_SYSTEM_WORD
	.long	18

.const_data
	.align 2
.globl	_INIT_ZBASE_TINTEGERARRAY
_INIT_ZBASE_TINTEGERARRAY:
	.byte	12
	.ascii	"\015Tintegerarray"
	.long	4,536870911
	.long	_INIT_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_ZBASE_TINTEGERARRAY
_RTTI_ZBASE_TINTEGERARRAY:
	.byte	12
	.ascii	"\015Tintegerarray"
	.long	4,536870911
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_INIT_ZBASE_TCARDINALARRAY
_INIT_ZBASE_TCARDINALARRAY:
	.byte	12
	.ascii	"\016Tcardinalarray"
	.long	4,536870911
	.long	_INIT_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_RTTI_ZBASE_TCARDINALARRAY
_RTTI_ZBASE_TCARDINALARRAY:
	.byte	12
	.ascii	"\016Tcardinalarray"
	.long	4,536870911
	.long	_RTTI_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_INIT_ZBASE_PINFLATE_HUFT
_INIT_ZBASE_PINFLATE_HUFT:
	.byte	0
	.ascii	"\015pInflate_huft"

.const_data
	.align 2
.globl	_RTTI_ZBASE_PINFLATE_HUFT
_RTTI_ZBASE_PINFLATE_HUFT:
	.byte	0
	.ascii	"\015pInflate_huft"

.const_data
	.align 2
.globl	_INIT_ZBASE_INFLATE_HUFT
_INIT_ZBASE_INFLATE_HUFT:
	.byte	13,12
	.ascii	"inflate_huft"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_ZBASE_INFLATE_HUFT
_RTTI_ZBASE_INFLATE_HUFT:
	.byte	13,12
	.ascii	"inflate_huft"
	.long	8,3
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4

.const_data
	.align 2
.globl	_INIT_ZBASE_HUFT_FIELD
_INIT_ZBASE_HUFT_FIELD:
	.byte	12
	.ascii	"\012huft_field"
	.long	8,268435455
	.long	_INIT_ZBASE_INFLATE_HUFT
	.long	-1

.const_data
	.align 2
.globl	_RTTI_ZBASE_HUFT_FIELD
_RTTI_ZBASE_HUFT_FIELD:
	.byte	12
	.ascii	"\012huft_field"
	.long	8,268435455
	.long	_RTTI_ZBASE_INFLATE_HUFT
	.long	-1

.const_data
	.align 2
.globl	_INIT_ZBASE_HUFT_PTR
_INIT_ZBASE_HUFT_PTR:
	.byte	0
	.ascii	"\010huft_ptr"

.const_data
	.align 2
.globl	_RTTI_ZBASE_HUFT_PTR
_RTTI_ZBASE_HUFT_PTR:
	.byte	0
	.ascii	"\010huft_ptr"

.const_data
	.align 2
.globl	_INIT_ZBASE_PPINFLATE_HUFT
_INIT_ZBASE_PPINFLATE_HUFT:
	.byte	0
	.ascii	"\016ppInflate_huft"

.const_data
	.align 2
.globl	_RTTI_ZBASE_PPINFLATE_HUFT
_RTTI_ZBASE_PPINFLATE_HUFT:
	.byte	0
	.ascii	"\016ppInflate_huft"

.const_data
	.align 2
.globl	_INIT_ZBASE_INFLATE_CODES_MODE
_INIT_ZBASE_INFLATE_CODES_MODE:
	.byte	3,18
	.ascii	"inflate_codes_mode"
	.byte	5
	.long	0,9,0
	.byte	5
	.ascii	"START"
	.byte	3
	.ascii	"LEN"
	.byte	6
	.ascii	"LENEXT"
	.byte	4
	.ascii	"DIST"
	.byte	7
	.ascii	"DISTEXT"
	.byte	4
	.ascii	"COPY"
	.byte	3
	.ascii	"LIT"
	.byte	4
	.ascii	"WASH"
	.byte	4
	.ascii	"ZEND"
	.byte	7
	.ascii	"BADCODE"
	.byte	5
	.ascii	"zbase"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ZBASE_INFLATE_CODES_MODE
_RTTI_ZBASE_INFLATE_CODES_MODE:
	.byte	3,18
	.ascii	"inflate_codes_mode"
	.byte	5
	.long	0,9,0
	.byte	5
	.ascii	"START"
	.byte	3
	.ascii	"LEN"
	.byte	6
	.ascii	"LENEXT"
	.byte	4
	.ascii	"DIST"
	.byte	7
	.ascii	"DISTEXT"
	.byte	4
	.ascii	"COPY"
	.byte	3
	.ascii	"LIT"
	.byte	4
	.ascii	"WASH"
	.byte	4
	.ascii	"ZEND"
	.byte	7
	.ascii	"BADCODE"
	.byte	5
	.ascii	"zbase"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ZBASE_INFLATE_CODES_MODE_s2o
_RTTI_ZBASE_INFLATE_CODES_MODE_s2o:
	.long	10,9
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+82
	.long	5
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+63
	.long	3
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+50
	.long	4
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+55
	.long	1
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+39
	.long	2
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+43
	.long	6
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+68
	.long	0
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+33
	.long	7
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+72
	.long	8
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+77

.const_data
	.align 2
.globl	_RTTI_ZBASE_INFLATE_CODES_MODE_o2s
_RTTI_ZBASE_INFLATE_CODES_MODE_o2s:
	.long	0
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+33
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+39
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+43
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+50
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+55
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+63
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+68
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+72
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+77
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE+82

.const_data
	.align 2
.globl	_INIT_ZBASE_PINFLATE_CODES_STATE
_INIT_ZBASE_PINFLATE_CODES_STATE:
	.byte	0
	.ascii	"\024pInflate_codes_state"

.const_data
	.align 2
.globl	_RTTI_ZBASE_PINFLATE_CODES_STATE
_RTTI_ZBASE_PINFLATE_CODES_STATE:
	.byte	0
	.ascii	"\024pInflate_codes_state"

.const_data
	.align 2
.globl	_INIT_ZBASE_INFLATE_CODES_STATE
_INIT_ZBASE_INFLATE_CODES_STATE:
	.byte	13,19
	.ascii	"inflate_codes_state"
	.long	28,0

.const_data
	.align 2
.globl	_RTTI_ZBASE_DEF17
_RTTI_ZBASE_DEF17:
	.byte	13
	.ascii	"\000"
	.long	8,2
	.long	_RTTI_ZBASE_PINFLATE_HUFT
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4

.const_data
	.align 2
.globl	_RTTI_ZBASE_DEF18
_RTTI_ZBASE_DEF18:
	.byte	13
	.ascii	"\000"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4

.const_data
	.align 2
.globl	_RTTI_ZBASE_DEF15
_RTTI_ZBASE_DEF15:
	.byte	13
	.ascii	"\000"
	.long	8,3
	.long	_RTTI_ZBASE_DEF17
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_ZBASE_DEF18
	.long	0

.const_data
	.align 2
.globl	_RTTI_ZBASE_INFLATE_CODES_STATE
_RTTI_ZBASE_INFLATE_CODES_STATE:
	.byte	13,19
	.ascii	"inflate_codes_state"
	.long	28,7
	.long	_RTTI_ZBASE_INFLATE_CODES_MODE
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_ZBASE_DEF15
	.long	8
	.long	_RTTI_SYSTEM_BYTE
	.long	16
	.long	_RTTI_SYSTEM_BYTE
	.long	17
	.long	_RTTI_ZBASE_PINFLATE_HUFT
	.long	20
	.long	_RTTI_ZBASE_PINFLATE_HUFT
	.long	24

.const_data
	.align 2
.globl	_INIT_ZBASE_CHECK_FUNC
_INIT_ZBASE_CHECK_FUNC:
	.byte	23,10
	.ascii	"check_func"

.const_data
	.align 2
.globl	_RTTI_ZBASE_CHECK_FUNC
_RTTI_ZBASE_CHECK_FUNC:
	.byte	23,10
	.ascii	"check_func"

.const_data
	.align 2
.globl	_INIT_ZBASE_INFLATE_BLOCK_MODE
_INIT_ZBASE_INFLATE_BLOCK_MODE:
	.byte	3,18
	.ascii	"inflate_block_mode"
	.byte	5
	.long	0,9,0
	.byte	5
	.ascii	"ZTYPE"
	.byte	4
	.ascii	"LENS"
	.byte	6
	.ascii	"STORED"
	.byte	5
	.ascii	"TABLE"
	.byte	5
	.ascii	"BTREE"
	.byte	5
	.ascii	"DTREE"
	.byte	5
	.ascii	"CODES"
	.byte	3
	.ascii	"DRY"
	.byte	7
	.ascii	"BLKDONE"
	.byte	6
	.ascii	"BLKBAD"
	.byte	5
	.ascii	"zbase"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ZBASE_INFLATE_BLOCK_MODE
_RTTI_ZBASE_INFLATE_BLOCK_MODE:
	.byte	3,18
	.ascii	"inflate_block_mode"
	.byte	5
	.long	0,9,0
	.byte	5
	.ascii	"ZTYPE"
	.byte	4
	.ascii	"LENS"
	.byte	6
	.ascii	"STORED"
	.byte	5
	.ascii	"TABLE"
	.byte	5
	.ascii	"BTREE"
	.byte	5
	.ascii	"DTREE"
	.byte	5
	.ascii	"CODES"
	.byte	3
	.ascii	"DRY"
	.byte	7
	.ascii	"BLKDONE"
	.byte	6
	.ascii	"BLKBAD"
	.byte	5
	.ascii	"zbase"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ZBASE_INFLATE_BLOCK_MODE_s2o
_RTTI_ZBASE_INFLATE_BLOCK_MODE_s2o:
	.long	10,9
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+87
	.long	8
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+79
	.long	4
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+57
	.long	6
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+69
	.long	7
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+75
	.long	5
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+63
	.long	1
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+39
	.long	2
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+44
	.long	3
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+51
	.long	0
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+33

.const_data
	.align 2
.globl	_RTTI_ZBASE_INFLATE_BLOCK_MODE_o2s
_RTTI_ZBASE_INFLATE_BLOCK_MODE_o2s:
	.long	0
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+33
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+39
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+44
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+51
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+57
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+63
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+69
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+75
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+79
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE+87

.const_data
	.align 2
.globl	_INIT_ZBASE_PINFLATE_BLOCKS_STATE
_INIT_ZBASE_PINFLATE_BLOCKS_STATE:
	.byte	0
	.ascii	"\025pInflate_blocks_state"

.const_data
	.align 2
.globl	_RTTI_ZBASE_PINFLATE_BLOCKS_STATE
_RTTI_ZBASE_PINFLATE_BLOCKS_STATE:
	.byte	0
	.ascii	"\025pInflate_blocks_state"

.const_data
	.align 2
.globl	_INIT_ZBASE_INFLATE_BLOCKS_STATE
_INIT_ZBASE_INFLATE_BLOCKS_STATE:
	.byte	13,20
	.ascii	"inflate_blocks_state"
	.long	64,0

.const_data
	.align 2
.globl	_RTTI_ZBASE_DEF25
_RTTI_ZBASE_DEF25:
	.byte	13
	.ascii	"\000"
	.long	20,5
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_ZBASE_PCARDINALARRAY
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_ZBASE_PINFLATE_HUFT
	.long	16

.const_data
	.align 2
.globl	_RTTI_ZBASE_DEF26
_RTTI_ZBASE_DEF26:
	.byte	13
	.ascii	"\000"
	.long	12,3
	.long	_RTTI_ZBASE_PINFLATE_HUFT
	.long	0
	.long	_RTTI_ZBASE_PINFLATE_HUFT
	.long	4
	.long	_RTTI_ZBASE_PINFLATE_CODES_STATE
	.long	8

.const_data
	.align 2
.globl	_RTTI_ZBASE_DEF23
_RTTI_ZBASE_DEF23:
	.byte	13
	.ascii	"\000"
	.long	20,3
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_ZBASE_DEF25
	.long	0
	.long	_RTTI_ZBASE_DEF26
	.long	0

.const_data
	.align 2
.globl	_RTTI_ZBASE_INFLATE_BLOCKS_STATE
_RTTI_ZBASE_INFLATE_BLOCKS_STATE:
	.byte	13,20
	.ascii	"inflate_blocks_state"
	.long	64,12
	.long	_RTTI_ZBASE_INFLATE_BLOCK_MODE
	.long	0
	.long	_RTTI_ZBASE_DEF23
	.long	4
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	24
	.long	_RTTI_SYSTEM_LONGWORD
	.long	28
	.long	_RTTI_SYSTEM_LONGWORD
	.long	32
	.long	_RTTI_ZBASE_HUFT_PTR
	.long	36
	.long	_RTTI_SYSTEM_PBYTE
	.long	40
	.long	_RTTI_SYSTEM_PBYTE
	.long	44
	.long	_RTTI_SYSTEM_PBYTE
	.long	48
	.long	_RTTI_SYSTEM_PBYTE
	.long	52
	.long	_RTTI_ZBASE_CHECK_FUNC
	.long	56
	.long	_RTTI_SYSTEM_LONGWORD
	.long	60

.const_data
	.align 2
.globl	_INIT_ZBASE_INFLATE_MODE
_INIT_ZBASE_INFLATE_MODE:
	.byte	3,12
	.ascii	"inflate_mode"
	.byte	5
	.long	0,13,0
	.byte	6
	.ascii	"METHOD"
	.byte	4
	.ascii	"FLAG"
	.byte	5
	.ascii	"DICT4"
	.byte	5
	.ascii	"DICT3"
	.byte	5
	.ascii	"DICT2"
	.byte	5
	.ascii	"DICT1"
	.byte	5
	.ascii	"DICT0"
	.byte	6
	.ascii	"BLOCKS"
	.byte	6
	.ascii	"CHECK4"
	.byte	6
	.ascii	"CHECK3"
	.byte	6
	.ascii	"CHECK2"
	.byte	6
	.ascii	"CHECK1"
	.byte	4
	.ascii	"DONE"
	.byte	3
	.ascii	"BAD"
	.byte	5
	.ascii	"zbase"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ZBASE_INFLATE_MODE
_RTTI_ZBASE_INFLATE_MODE:
	.byte	3,12
	.ascii	"inflate_mode"
	.byte	5
	.long	0,13,0
	.byte	6
	.ascii	"METHOD"
	.byte	4
	.ascii	"FLAG"
	.byte	5
	.ascii	"DICT4"
	.byte	5
	.ascii	"DICT3"
	.byte	5
	.ascii	"DICT2"
	.byte	5
	.ascii	"DICT1"
	.byte	5
	.ascii	"DICT0"
	.byte	6
	.ascii	"BLOCKS"
	.byte	6
	.ascii	"CHECK4"
	.byte	6
	.ascii	"CHECK3"
	.byte	6
	.ascii	"CHECK2"
	.byte	6
	.ascii	"CHECK1"
	.byte	4
	.ascii	"DONE"
	.byte	3
	.ascii	"BAD"
	.byte	5
	.ascii	"zbase"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ZBASE_INFLATE_MODE_s2o
_RTTI_ZBASE_INFLATE_MODE_s2o:
	.long	14,13
	.long	_RTTI_ZBASE_INFLATE_MODE+109
	.long	7
	.long	_RTTI_ZBASE_INFLATE_MODE+69
	.long	11
	.long	_RTTI_ZBASE_INFLATE_MODE+97
	.long	10
	.long	_RTTI_ZBASE_INFLATE_MODE+90
	.long	9
	.long	_RTTI_ZBASE_INFLATE_MODE+83
	.long	8
	.long	_RTTI_ZBASE_INFLATE_MODE+76
	.long	6
	.long	_RTTI_ZBASE_INFLATE_MODE+63
	.long	5
	.long	_RTTI_ZBASE_INFLATE_MODE+57
	.long	4
	.long	_RTTI_ZBASE_INFLATE_MODE+51
	.long	3
	.long	_RTTI_ZBASE_INFLATE_MODE+45
	.long	2
	.long	_RTTI_ZBASE_INFLATE_MODE+39
	.long	12
	.long	_RTTI_ZBASE_INFLATE_MODE+104
	.long	1
	.long	_RTTI_ZBASE_INFLATE_MODE+34
	.long	0
	.long	_RTTI_ZBASE_INFLATE_MODE+27

.const_data
	.align 2
.globl	_RTTI_ZBASE_INFLATE_MODE_o2s
_RTTI_ZBASE_INFLATE_MODE_o2s:
	.long	0
	.long	_RTTI_ZBASE_INFLATE_MODE+27
	.long	_RTTI_ZBASE_INFLATE_MODE+34
	.long	_RTTI_ZBASE_INFLATE_MODE+39
	.long	_RTTI_ZBASE_INFLATE_MODE+45
	.long	_RTTI_ZBASE_INFLATE_MODE+51
	.long	_RTTI_ZBASE_INFLATE_MODE+57
	.long	_RTTI_ZBASE_INFLATE_MODE+63
	.long	_RTTI_ZBASE_INFLATE_MODE+69
	.long	_RTTI_ZBASE_INFLATE_MODE+76
	.long	_RTTI_ZBASE_INFLATE_MODE+83
	.long	_RTTI_ZBASE_INFLATE_MODE+90
	.long	_RTTI_ZBASE_INFLATE_MODE+97
	.long	_RTTI_ZBASE_INFLATE_MODE+104
	.long	_RTTI_ZBASE_INFLATE_MODE+109

.const_data
	.align 2
.globl	_INIT_ZBASE_PINTERNAL_STATE
_INIT_ZBASE_PINTERNAL_STATE:
	.byte	0
	.ascii	"\017pInternal_state"

.const_data
	.align 2
.globl	_RTTI_ZBASE_PINTERNAL_STATE
_RTTI_ZBASE_PINTERNAL_STATE:
	.byte	0
	.ascii	"\017pInternal_state"

.const_data
	.align 2
.globl	_INIT_ZBASE_INTERNAL_STATE
_INIT_ZBASE_INTERNAL_STATE:
	.byte	13,14
	.ascii	"internal_state"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_ZBASE_DEF32
_RTTI_ZBASE_DEF32:
	.byte	13
	.ascii	"\000"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4

.const_data
	.align 2
.globl	_RTTI_ZBASE_DEF30
_RTTI_ZBASE_DEF30:
	.byte	13
	.ascii	"\000"
	.long	8,3
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_ZBASE_DEF32
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0

.const_data
	.align 2
.globl	_RTTI_ZBASE_INTERNAL_STATE
_RTTI_ZBASE_INTERNAL_STATE:
	.byte	13,14
	.ascii	"internal_state"
	.long	24,5
	.long	_RTTI_ZBASE_INFLATE_MODE
	.long	0
	.long	_RTTI_ZBASE_DEF30
	.long	4
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	12
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_ZBASE_PINFLATE_BLOCKS_STATE
	.long	20

.const_data
	.align 2
.globl	_INIT_ZBASE_Z_STREAMP
_INIT_ZBASE_Z_STREAMP:
	.byte	0
	.ascii	"\011z_streamp"

.const_data
	.align 2
.globl	_RTTI_ZBASE_Z_STREAMP
_RTTI_ZBASE_Z_STREAMP:
	.byte	0
	.ascii	"\011z_streamp"

.const_data
	.align 2
.globl	_INIT_ZBASE_Z_STREAM
_INIT_ZBASE_Z_STREAM:
	.byte	13,8
	.ascii	"z_stream"
	.long	296,0

.const_data
	.align 2
.globl	_RTTI_ZBASE_Z_STREAM
_RTTI_ZBASE_Z_STREAM:
	.byte	13,8
	.ascii	"z_stream"
	.long	296,11
	.long	_RTTI_SYSTEM_PBYTE
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8
	.long	_RTTI_SYSTEM_PBYTE
	.long	12
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_SYSTEM_LONGWORD
	.long	20
	.long	_RTTI_SYSTEM_SHORTSTRING
	.long	24
	.long	_RTTI_ZBASE_PINTERNAL_STATE
	.long	280
	.long	_RTTI_SYSTEM_LONGINT
	.long	284
	.long	_RTTI_SYSTEM_LONGWORD
	.long	288
	.long	_RTTI_SYSTEM_LONGWORD
	.long	292
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
L_RESSTR_ZBASE_SVERSION_ERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_ZBASE_SVERSION_ERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZBASE_SBUF_ERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_ZBASE_SBUF_ERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZBASE_SMEM_ERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_ZBASE_SMEM_ERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZBASE_SDATA_ERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_ZBASE_SDATA_ERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZBASE_SSTREAM_ERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_ZBASE_SSTREAM_ERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZBASE_SFILE_ERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_ZBASE_SFILE_ERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZBASE_SSTREAM_END$non_lazy_ptr:
.indirect_symbol _RESSTR_ZBASE_SSTREAM_END
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZBASE_SNEED_DICT$non_lazy_ptr:
.indirect_symbol _RESSTR_ZBASE_SNEED_DICT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ZBASE$_Ld2$non_lazy_ptr:
.indirect_symbol _$ZBASE$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_ZBASE_ZLIB_VERSION$non_lazy_ptr:
.indirect_symbol _TC_ZBASE_ZLIB_VERSION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_THREADVAR_RELOCATE$non_lazy_ptr:
.indirect_symbol FPC_THREADVAR_RELOCATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_OUTPUT$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_OUTPUT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ZBASE$_Ld3$non_lazy_ptr:
.indirect_symbol _$ZBASE$_Ld3
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_ZBASE_START
_RESSTR_ZBASE_START:
	.long	_$ZBASE$_Ld4
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_ZBASE_SNEED_DICT
_RESSTR_ZBASE_SNEED_DICT:
	.long	_$ZBASE$_Ld8
	.long	_$ZBASE$_Ld6
	.long	_$ZBASE$_Ld6
	.long	27562889

.data
	.align 2
.globl	_RESSTR_ZBASE_SSTREAM_END
_RESSTR_ZBASE_SSTREAM_END:
	.long	_$ZBASE$_Ld12
	.long	_$ZBASE$_Ld10
	.long	_$ZBASE$_Ld10
	.long	192463300

.data
	.align 2
.globl	_RESSTR_ZBASE_SFILE_ERROR
_RESSTR_ZBASE_SFILE_ERROR:
	.long	_$ZBASE$_Ld16
	.long	_$ZBASE$_Ld14
	.long	_$ZBASE$_Ld14
	.long	124406082

.data
	.align 2
.globl	_RESSTR_ZBASE_SSTREAM_ERROR
_RESSTR_ZBASE_SSTREAM_ERROR:
	.long	_$ZBASE$_Ld20
	.long	_$ZBASE$_Ld18
	.long	_$ZBASE$_Ld18
	.long	147264530

.data
	.align 2
.globl	_RESSTR_ZBASE_SDATA_ERROR
_RESSTR_ZBASE_SDATA_ERROR:
	.long	_$ZBASE$_Ld24
	.long	_$ZBASE$_Ld22
	.long	_$ZBASE$_Ld22
	.long	57291202

.data
	.align 2
.globl	_RESSTR_ZBASE_SMEM_ERROR
_RESSTR_ZBASE_SMEM_ERROR:
	.long	_$ZBASE$_Ld28
	.long	_$ZBASE$_Ld26
	.long	_$ZBASE$_Ld26
	.long	184500041

.data
	.align 2
.globl	_RESSTR_ZBASE_SBUF_ERROR
_RESSTR_ZBASE_SBUF_ERROR:
	.long	_$ZBASE$_Ld32
	.long	_$ZBASE$_Ld30
	.long	_$ZBASE$_Ld30
	.long	49763746

.data
	.align 2
.globl	_RESSTR_ZBASE_SVERSION_ERROR
_RESSTR_ZBASE_SVERSION_ERROR:
	.long	_$ZBASE$_Ld36
	.long	_$ZBASE$_Ld34
	.long	_$ZBASE$_Ld34
	.long	43449006

.data
	.align 2
.globl	_RESSTR_ZBASE_END
_RESSTR_ZBASE_END:
	.long	_RESSTR_ZBASE_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

