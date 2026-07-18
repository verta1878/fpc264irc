# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JDPOSTCT_START_PASS_DPOST$J_DECOMPRESS_PTR$J_BUF_MODE
_JDPOSTCT_START_PASS_DPOST$J_DECOMPRESS_PTR$J_BUF_MODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	380(%eax),%eax
	movl	%eax,-12(%ebp)
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj9
	subb	$2,%al
	je	Lj11
	decb	%al
	je	Lj10
	jmp	Lj8
Lj9:
	movl	-4(%ebp),%eax
	cmpb	$0,65(%eax)
	jne	Lj12
	jmp	Lj13
Lj12:
	movl	-12(%ebp),%edx
	movl	L_JDPOSTCT_POST_PROCESS_1PASS$crc49DD75E1$non_lazy_ptr-Lj4(%ebx),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj16
	jmp	Lj17
Lj16:
	movb	$1,(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	28(%esi),%esi
	call	*%esi
	movl	-12(%ebp),%edx
	movl	%eax,12(%edx)
Lj17:
	jmp	Lj30
Lj13:
	movl	-4(%ebp),%eax
	movl	400(%eax),%eax
	movl	-12(%ebp),%edx
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
Lj30:
	jmp	Lj7
Lj10:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj33
	jmp	Lj34
Lj33:
	movl	-4(%ebp),%eax
	movb	$4,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj34:
	movl	-12(%ebp),%edx
	movl	L_JDPOSTCT_POST_PROCESS_PREPASS$crc49DD75E1$non_lazy_ptr-Lj4(%ebx),%eax
	movl	%eax,4(%edx)
	jmp	Lj7
Lj11:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj41
	jmp	Lj42
Lj41:
	movl	-4(%ebp),%eax
	movb	$4,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj42:
	movl	-12(%ebp),%edx
	movl	L_JDPOSTCT_POST_PROCESS_2PASS$crc49DD75E1$non_lazy_ptr-Lj4(%ebx),%eax
	movl	%eax,4(%edx)
	jmp	Lj7
Lj8:
	movl	-4(%ebp),%eax
	movb	$4,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj7:
	movl	-12(%ebp),%eax
	movl	$0,24(%eax)
	movl	-12(%ebp),%eax
	movl	$0,20(%eax)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JDPOSTCT_POST_PROCESS_1PASS$crc49DD75E1
_JDPOSTCT_POST_PROCESS_1PASS$crc49DD75E1:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	380(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	12(%ebp),%eax
	movl	8(%ebp),%edx
	movl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj63
	jmp	Lj64
Lj63:
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-24(%ebp)
Lj64:
	movl	$0,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	leal	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	400(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%edx
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	leal	(%edx,%eax,4),%ecx
	movl	-16(%ebp),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	408(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	12(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,(%eax)
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDPOSTCT_POST_PROCESS_PREPASS$crc49DD75E1
_JDPOSTCT_POST_PROCESS_PREPASS$crc49DD75E1:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	380(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj95
	jmp	Lj96
Lj95:
	movb	$1,(%esp)
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-16(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	28(%ebx),%ebx
	call	*%ebx
	movl	-16(%ebp),%edx
	movl	%eax,12(%edx)
Lj96:
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	leal	24(%eax),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	400(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	-20(%ebp),%eax
	ja	Lj125
	jmp	Lj126
Lj125:
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	12(%eax),%edx
	movl	-20(%ebp),%eax
	leal	(%edx,%eax,4),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	-4(%ebp),%ebx
	movl	408(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	12(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,(%edx)
Lj126:
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	24(%eax),%eax
	cmpl	16(%edx),%eax
	jae	Lj137
	jmp	Lj138
Lj137:
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	16(%eax),%eax
	addl	%eax,20(%edx)
	movl	-16(%ebp),%eax
	movl	$0,24(%eax)
Lj138:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDPOSTCT_POST_PROCESS_2PASS$crc49DD75E1
_JDPOSTCT_POST_PROCESS_2PASS$crc49DD75E1:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	380(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj145
	jmp	Lj146
Lj145:
	movb	$0,(%esp)
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-16(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	28(%ebx),%ebx
	call	*%ebx
	movl	-16(%ebp),%edx
	movl	%eax,12(%edx)
Lj146:
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	16(%eax),%ecx
	movl	24(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-20(%ebp)
	movl	12(%ebp),%eax
	movl	8(%ebp),%edx
	movl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	ja	Lj163
	jmp	Lj164
Lj163:
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj164:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	80(%eax),%ecx
	movl	20(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-24(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	ja	Lj169
	jmp	Lj170
Lj169:
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj170:
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%edx
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	leal	(%edx,%eax,4),%ecx
	movl	-16(%ebp),%eax
	movl	12(%eax),%edx
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	leal	(%edx,%eax,4),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	408(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	12(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,(%edx)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,24(%eax)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	24(%eax),%eax
	cmpl	16(%edx),%eax
	jae	Lj181
	jmp	Lj182
Lj181:
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	16(%eax),%eax
	addl	%eax,20(%edx)
	movl	-16(%ebp),%eax
	movl	$0,24(%eax)
Lj182:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDPOSTCT_JINIT_D_POST_CONTROLLER$J_DECOMPRESS_PTR$BOOLEAN
_JDPOSTCT_JINIT_D_POST_CONTROLLER$J_DECOMPRESS_PTR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj186
Lj186:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$28,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	(%esi),%esi
	call	*%esi
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,380(%eax)
	movl	-12(%ebp),%edx
	movl	L_JDPOSTCT_START_PASS_DPOST$J_DECOMPRESS_PTR$J_BUF_MODE$non_lazy_ptr-Lj186(%ebx),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
	movl	-12(%ebp),%eax
	movl	$0,12(%eax)
	movl	-4(%ebp),%eax
	cmpb	$0,65(%eax)
	jne	Lj203
	jmp	Lj204
Lj203:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	260(%eax),%eax
	movl	%eax,16(%edx)
	cmpb	$0,-8(%ebp)
	jne	Lj207
	jmp	Lj208
Lj207:
	movl	-4(%ebp),%eax
	movl	84(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	$0,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	call	L_JUTILS_JROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$1,%edx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	16(%esi),%esi
	call	*%esi
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
	jmp	Lj233
Lj208:
	movl	-4(%ebp),%eax
	movl	84(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	$0,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,%ecx
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	8(%esi),%esi
	call	*%esi
	movl	-12(%ebp),%edx
	movl	%eax,12(%edx)
Lj233:
Lj204:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JDPOSTCT
_THREADVARLIST_JDPOSTCT:
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

L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_mul_int64$stub:
.indirect_symbol fpc_mul_int64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JUTILS_JROUND_UP$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JUTILS_JROUND_UP$LONGINT$LONGINT$$LONGINT
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
L_JDPOSTCT_POST_PROCESS_1PASS$crc49DD75E1$non_lazy_ptr:
.indirect_symbol _JDPOSTCT_POST_PROCESS_1PASS$crc49DD75E1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDPOSTCT_POST_PROCESS_PREPASS$crc49DD75E1$non_lazy_ptr:
.indirect_symbol _JDPOSTCT_POST_PROCESS_PREPASS$crc49DD75E1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDPOSTCT_POST_PROCESS_2PASS$crc49DD75E1$non_lazy_ptr:
.indirect_symbol _JDPOSTCT_POST_PROCESS_2PASS$crc49DD75E1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDPOSTCT_START_PASS_DPOST$J_DECOMPRESS_PTR$J_BUF_MODE$non_lazy_ptr:
.indirect_symbol _JDPOSTCT_START_PASS_DPOST$J_DECOMPRESS_PTR$J_BUF_MODE
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

