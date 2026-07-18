# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_ICOCURTYPES
_THREADVARLIST_ICOCURTYPES:
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
.globl	_INIT_ICOCURTYPES_TNEWHEADER
_INIT_ICOCURTYPES_TNEWHEADER:
	.byte	13,10
	.ascii	"TNewHeader"
	.long	6,0

.const_data
	.align 2
.globl	_RTTI_ICOCURTYPES_TNEWHEADER
_RTTI_ICOCURTYPES_TNEWHEADER:
	.byte	13,10
	.ascii	"TNewHeader"
	.long	6,3
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_SYSTEM_WORD
	.long	4

.const_data
	.align 2
.globl	_INIT_ICOCURTYPES_TICONDIR
_INIT_ICOCURTYPES_TICONDIR:
	.byte	13,8
	.ascii	"TIconDir"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_ICOCURTYPES_TICONDIR
_RTTI_ICOCURTYPES_TICONDIR:
	.byte	13,8
	.ascii	"TIconDir"
	.long	16,8
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
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12

.const_data
	.align 2
.globl	_INIT_ICOCURTYPES_TRESCURSORDIR
_INIT_ICOCURTYPES_TRESCURSORDIR:
	.byte	13,13
	.ascii	"TResCursorDir"
	.long	14,0

.const_data
	.align 2
.globl	_RTTI_ICOCURTYPES_TRESCURSORDIR
_RTTI_ICOCURTYPES_TRESCURSORDIR:
	.byte	13,13
	.ascii	"TResCursorDir"
	.long	14,6
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_SYSTEM_WORD
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	6
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8
	.long	_RTTI_SYSTEM_WORD
	.long	12

.const_data
	.align 2
.globl	_INIT_ICOCURTYPES_TCURCURSORDIR
_INIT_ICOCURTYPES_TCURCURSORDIR:
	.byte	13,13
	.ascii	"TCurCursorDir"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_ICOCURTYPES_TCURCURSORDIR
_RTTI_ICOCURTYPES_TCURCURSORDIR:
	.byte	13,13
	.ascii	"TCurCursorDir"
	.long	16,7
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_SYSTEM_WORD
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	6
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
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

