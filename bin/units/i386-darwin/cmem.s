# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_CMEM_CGETMEM$LONGWORD$$POINTER
_CMEM_CGETMEM$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	addl	$4,%eax
	movl	%eax,(%esp)
	call	L_malloc$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj9
	jmp	Lj10
Lj9:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,(%eax)
	addl	$4,-8(%ebp)
Lj10:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CMEM_CFREEMEM$POINTER$$LONGWORD
_CMEM_CFREEMEM$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj15
	jmp	Lj16
Lj15:
	subl	$4,-4(%ebp)
Lj16:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_free$stub
	movl	$0,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CMEM_CFREEMEMSIZE$POINTER$LONGWORD$$LONGWORD
_CMEM_CFREEMEMSIZE$POINTER$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jbe	Lj23
	jmp	Lj24
Lj23:
	jmp	Lj21
Lj24:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj25
	jmp	Lj26
Lj25:
	movl	-4(%ebp),%eax
	subl	$4,%eax
	movl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	jne	Lj27
	jmp	Lj28
Lj27:
	movw	$204,%ax
	call	L_SYSTEM_RUNERROR$WORD$stub
Lj28:
Lj26:
	movl	-4(%ebp),%eax
	call	L_CMEM_CFREEMEM$POINTER$$LONGWORD$stub
	movl	%eax,-12(%ebp)
Lj21:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CMEM_CALLOCMEM$LONGWORD$$POINTER
_CMEM_CALLOCMEM$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$1,4(%esp)
	movl	-4(%ebp),%eax
	addl	$4,%eax
	movl	%eax,(%esp)
	call	L_calloc$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj43
	jmp	Lj44
Lj43:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,(%eax)
	addl	$4,-8(%ebp)
Lj44:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CMEM_CREALLOCMEM$POINTER$LONGWORD$$POINTER
_CMEM_CREALLOCMEM$POINTER$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj49
	jmp	Lj50
Lj49:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj51
	jmp	Lj52
Lj51:
	movl	-4(%ebp),%eax
	subl	$4,(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	call	L_free$stub
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj52:
	jmp	Lj57
Lj50:
	addl	$4,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj58
	jmp	Lj59
Lj58:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_malloc$stub
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj64
Lj59:
	movl	-4(%ebp),%eax
	subl	$4,(%eax)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	call	L_realloc$stub
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
Lj64:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj71
	jmp	Lj72
Lj71:
	movl	-8(%ebp),%edx
	subl	$4,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	addl	$4,(%eax)
Lj72:
Lj57:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CMEM_CMEMSIZE$POINTER$$LONGWORD
_CMEM_CMEMSIZE$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	subl	$4,%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CMEM_CGETHEAPSTATUS$$THEAPSTATUS
_CMEM_CGETHEAPSTATUS$$THEAPSTATUS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-52(%ebp)
	movl	%edi,-48(%ebp)
	movl	%eax,-4(%ebp)
	leal	-44(%ebp),%eax
	movb	$0,%cl
	movl	$40,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%edi
	leal	-44(%ebp),%esi
	cld
	movl	$10,%ecx
	rep
	movsl
	movl	-52(%ebp),%esi
	movl	-48(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CMEM_CGETFPCHEAPSTATUS$$TFPCHEAPSTATUS
_CMEM_CGETFPCHEAPSTATUS$$TFPCHEAPSTATUS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$20,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	leave
	ret

.text
	.align 4
.globl	_INIT$_CMEM
_INIT$_CMEM:
.reference __CMEM_init
.globl	__CMEM_init
__CMEM_init:
.reference _INIT$_CMEM
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_U_CMEM_OLDMEMORYMANAGER$non_lazy_ptr-Lj2(%ebx),%eax
	call	L_SYSTEM_GETMEMORYMANAGER$TMEMORYMANAGER$stub
	movl	L_TC_CMEM_CMEMORYMANAGER$non_lazy_ptr-Lj2(%ebx),%eax
	call	L_SYSTEM_SETMEMORYMANAGER$TMEMORYMANAGER$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_CMEM
_FINALIZE$_CMEM:
.reference __CMEM_finalize
.globl	__CMEM_finalize
__CMEM_finalize:
.reference _FINALIZE$_CMEM
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj100
Lj100:
	popl	%ebx
	movl	L_U_CMEM_OLDMEMORYMANAGER$non_lazy_ptr-Lj100(%ebx),%eax
	call	L_SYSTEM_SETMEMORYMANAGER$TMEMORYMANAGER$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_CMEM_OLDMEMORYMANAGER
.data
.zerofill __DATA, __common, _U_CMEM_OLDMEMORYMANAGER, 48,2



.data
	.align 2
.globl	_THREADVARLIST_CMEM
_THREADVARLIST_CMEM:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_CMEM_CMEMORYMANAGER
_TC_CMEM_CMEMORYMANAGER:
	.byte	0,0,0,0
	.long	_CMEM_CGETMEM$LONGWORD$$POINTER
	.long	_CMEM_CFREEMEM$POINTER$$LONGWORD
	.long	_CMEM_CFREEMEMSIZE$POINTER$LONGWORD$$LONGWORD
	.long	_CMEM_CALLOCMEM$LONGWORD$$POINTER
	.long	_CMEM_CREALLOCMEM$POINTER$LONGWORD$$POINTER
	.long	_CMEM_CMEMSIZE$POINTER$$LONGWORD
	.long	0,0,0
	.long	_CMEM_CGETHEAPSTATUS$$THEAPSTATUS
	.long	_CMEM_CGETFPCHEAPSTATUS$$TFPCHEAPSTATUS
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_malloc$stub:
.indirect_symbol _malloc
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_free$stub:
.indirect_symbol _free
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_RUNERROR$WORD$stub:
.indirect_symbol _SYSTEM_RUNERROR$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CMEM_CFREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _CMEM_CFREEMEM$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_calloc$stub:
.indirect_symbol _calloc
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_realloc$stub:
.indirect_symbol _realloc
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETMEMORYMANAGER$TMEMORYMANAGER$stub:
.indirect_symbol _SYSTEM_GETMEMORYMANAGER$TMEMORYMANAGER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_SETMEMORYMANAGER$TMEMORYMANAGER$stub:
.indirect_symbol _SYSTEM_SETMEMORYMANAGER$TMEMORYMANAGER
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
L_U_CMEM_OLDMEMORYMANAGER$non_lazy_ptr:
.indirect_symbol _U_CMEM_OLDMEMORYMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_CMEM_CMEMORYMANAGER$non_lazy_ptr:
.indirect_symbol _TC_CMEM_CMEMORYMANAGER
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

