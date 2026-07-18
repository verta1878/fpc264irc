# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_PCXCOMN
_THREADVARLIST_PCXCOMN:
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
.globl	_INIT_PCXCOMN_TRGB
_INIT_PCXCOMN_TRGB:
	.byte	13,4
	.ascii	"TRGB"
	.long	3,0

.const_data
	.align 2
.globl	_RTTI_PCXCOMN_TRGB
_RTTI_PCXCOMN_TRGB:
	.byte	13,4
	.ascii	"TRGB"
	.long	3,3
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_BYTE
	.long	2

.const_data
	.align 2
.globl	_INIT_PCXCOMN_TPCXHEADER
_INIT_PCXCOMN_TPCXHEADER:
	.byte	13,10
	.ascii	"TPCXHeader"
	.long	128,0

.const_data
	.align 2
.globl	_RTTI_PCXCOMN_DEF2
_RTTI_PCXCOMN_DEF2:
	.byte	12
	.ascii	"\000"
	.long	3,16
	.long	_RTTI_PCXCOMN_TRGB
	.long	-1

.const_data
	.align 2
.globl	_RTTI_PCXCOMN_DEF3
_RTTI_PCXCOMN_DEF3:
	.byte	12
	.ascii	"\000"
	.long	1,58
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_PCXCOMN_TPCXHEADER
_RTTI_PCXCOMN_TPCXHEADER:
	.byte	13,10
	.ascii	"TPCXHeader"
	.long	128,16
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_BYTE
	.long	2
	.long	_RTTI_SYSTEM_BYTE
	.long	3
	.long	_RTTI_SYSTEM_WORD
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	6
	.long	_RTTI_SYSTEM_WORD
	.long	8
	.long	_RTTI_SYSTEM_WORD
	.long	10
	.long	_RTTI_SYSTEM_WORD
	.long	12
	.long	_RTTI_SYSTEM_WORD
	.long	14
	.long	_RTTI_PCXCOMN_DEF2
	.long	16
	.long	_RTTI_SYSTEM_BYTE
	.long	64
	.long	_RTTI_SYSTEM_BYTE
	.long	65
	.long	_RTTI_SYSTEM_WORD
	.long	66
	.long	_RTTI_SYSTEM_WORD
	.long	68
	.long	_RTTI_PCXCOMN_DEF3
	.long	70
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

