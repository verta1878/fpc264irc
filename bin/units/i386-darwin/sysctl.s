# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_SYSCTL_FPSYSCTL$PCHAR$LONGWORD$POINTER$PSIZE_T$POINTER$LONGWORD$$LONGINT
_SYSCTL_FPSYSCTL$PCHAR$LONGWORD$POINTER$PSIZE_T$POINTER$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$8,%al
	jne	Lj5
	jmp	Lj6
Lj5:
	movl	$202,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,24(%esp)
	movl	12(%ebp),%eax
	movl	%eax,20(%esp)
	movl	16(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS6$stub
	movl	%eax,-16(%ebp)
	jmp	Lj3
	jmp	Lj23
Lj6:
	movl	$0,-16(%ebp)
	jmp	Lj3
Lj23:
Lj3:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SYSCTL_FPSYSCTLBYNAME$PCHAR$POINTER$PSIZE_T$POINTER$LONGWORD$$LONGINT
_SYSCTL_FPSYSCTLBYNAME$PCHAR$POINTER$PSIZE_T$POINTER$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-24(%ebp)
	movl	$3,-20(%ebp)
	movl	$56,-88(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,(%esp)
	leal	-88(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-80(%ebp),%ecx
	leal	-24(%ebp),%eax
	movl	$2,%edx
	call	L_SYSCTL_FPSYSCTL$PCHAR$LONGWORD$POINTER$PSIZE_T$POINTER$LONGWORD$$LONGINT$stub
	movl	%eax,-84(%ebp)
	movl	-84(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj50
	jmp	Lj51
Lj50:
	movl	-84(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj26
Lj51:
	movl	-88(%ebp),%eax
	shrl	$2,%eax
	movl	%eax,-88(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-80(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-88(%ebp),%edx
	call	L_SYSCTL_FPSYSCTL$PCHAR$LONGWORD$POINTER$PSIZE_T$POINTER$LONGWORD$$LONGINT$stub
	movl	%eax,-84(%ebp)
	movl	-84(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj26
Lj26:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SYSCTL_FPSYSCTLNAMETOMIB$PCHAR$PCINT$PSIZE_T$$LONGINT
_SYSCTL_FPSYSCTLNAMETOMIB$PCHAR$PCINT$PSIZE_T$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-24(%ebp)
	movl	$3,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	shll	$2,%eax
	movl	-12(%ebp),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,(%esp)
	leal	-24(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	$2,%edx
	call	L_SYSCTL_FPSYSCTL$PCHAR$LONGWORD$POINTER$PSIZE_T$POINTER$LONGWORD$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	shrl	$2,%eax
	movl	-12(%ebp),%edx
	movl	%eax,(%edx)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj98
	jmp	Lj99
Lj98:
	movl	-28(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj72
Lj99:
	movl	$0,-16(%ebp)
Lj72:
	movl	-16(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_SYSCTL
_THREADVARLIST_SYSCTL:
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

LFPC_DOSYS6$stub:
.indirect_symbol FPC_DOSYS6
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_PCHAR_LENGTH$stub:
.indirect_symbol FPC_PCHAR_LENGTH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSCTL_FPSYSCTL$PCHAR$LONGWORD$POINTER$PSIZE_T$POINTER$LONGWORD$$LONGINT$stub:
.indirect_symbol _SYSCTL_FPSYSCTL$PCHAR$LONGWORD$POINTER$PSIZE_T$POINTER$LONGWORD$$LONGINT
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
.globl	_INIT_SYSCTL_CTLNAMEREC
_INIT_SYSCTL_CTLNAMEREC:
	.byte	13,10
	.ascii	"CtlNameRec"
	.long	8,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_RTTI_SYSCTL_CTLNAMEREC
_RTTI_SYSCTL_CTLNAMEREC:
	.byte	13,10
	.ascii	"CtlNameRec"
	.long	8,2
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4

.const_data
	.align 2
.globl	_INIT_SYSCTL_CTLNAME
_INIT_SYSCTL_CTLNAME:
	.byte	13,7
	.ascii	"ctlname"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_SYSCTL_DEF2
_RTTI_SYSCTL_DEF2:
	.byte	0
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_SYSCTL_CTLNAME
_RTTI_SYSCTL_CTLNAME:
	.byte	13,7
	.ascii	"ctlname"
	.long	8,2
	.long	_RTTI_SYSCTL_DEF2
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
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

