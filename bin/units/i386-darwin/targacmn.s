# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_TARGACMN_TOWORD$TWORDREC$$WORD
_TARGACMN_TOWORD$TWORDREC$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movzbl	9(%ebp),%eax
	shll	$8,%eax
	movzbl	8(%ebp),%edx
	orl	%edx,%eax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_TARGACMN_FROMWORD$WORD$$TWORDREC
_TARGACMN_FROMWORD$WORD$$TWORDREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	andw	$255,%ax
	movb	%al,-6(%ebp)
	movzwl	-4(%ebp),%eax
	shrl	$8,%eax
	andl	$255,%eax
	movb	%al,-5(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_TARGACMN
_THREADVARLIST_TARGACMN:
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
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.const_data
	.align 2
.globl	_INIT_TARGACMN_TWORDREC
_INIT_TARGACMN_TWORDREC:
	.byte	13,8
	.ascii	"TWordRec"
	.long	2,0

.const_data
	.align 2
.globl	_RTTI_TARGACMN_TWORDREC
_RTTI_TARGACMN_TWORDREC:
	.byte	13,8
	.ascii	"TWordRec"
	.long	2,2
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1

.const_data
	.align 2
.globl	_INIT_TARGACMN_TTARGAHEADER
_INIT_TARGACMN_TTARGAHEADER:
	.byte	13,12
	.ascii	"TTargaHeader"
	.long	18,0

.const_data
	.align 2
.globl	_RTTI_TARGACMN_TTARGAHEADER
_RTTI_TARGACMN_TTARGAHEADER:
	.byte	13,12
	.ascii	"TTargaHeader"
	.long	18,12
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_BYTE
	.long	2
	.long	_RTTI_TARGACMN_TWORDREC
	.long	3
	.long	_RTTI_TARGACMN_TWORDREC
	.long	5
	.long	_RTTI_SYSTEM_BYTE
	.long	7
	.long	_RTTI_TARGACMN_TWORDREC
	.long	8
	.long	_RTTI_TARGACMN_TWORDREC
	.long	10
	.long	_RTTI_TARGACMN_TWORDREC
	.long	12
	.long	_RTTI_TARGACMN_TWORDREC
	.long	14
	.long	_RTTI_SYSTEM_BYTE
	.long	16
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_INIT_TARGACMN_TBGRENTRY
_INIT_TARGACMN_TBGRENTRY:
	.byte	13,9
	.ascii	"TBGREntry"
	.long	3,0

.const_data
	.align 2
.globl	_RTTI_TARGACMN_TBGRENTRY
_RTTI_TARGACMN_TBGRENTRY:
	.byte	13,9
	.ascii	"TBGREntry"
	.long	3,3
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_BYTE
	.long	2

.const_data
	.align 2
.globl	_INIT_TARGACMN_TBGRAENTRY
_INIT_TARGACMN_TBGRAENTRY:
	.byte	13,10
	.ascii	"TBGRAEntry"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_TARGACMN_TBGRAENTRY
_RTTI_TARGACMN_TBGRAENTRY:
	.byte	13,10
	.ascii	"TBGRAEntry"
	.long	4,4
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_BYTE
	.long	2
	.long	_RTTI_SYSTEM_BYTE
	.long	3
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

