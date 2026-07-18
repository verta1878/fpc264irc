# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JMORECFG
_THREADVARLIST_JMORECFG:
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
.globl	_INIT_JMORECFG_INT_PTR
_INIT_JMORECFG_INT_PTR:
	.byte	0
	.ascii	"\007int_ptr"

.const_data
	.align 2
.globl	_RTTI_JMORECFG_INT_PTR
_RTTI_JMORECFG_INT_PTR:
	.byte	0
	.ascii	"\007int_ptr"

.const_data
	.align 2
.globl	_INIT_JMORECFG_JCOEF_PTR
_INIT_JMORECFG_JCOEF_PTR:
	.byte	0
	.ascii	"\011JCOEF_PTR"

.const_data
	.align 2
.globl	_RTTI_JMORECFG_JCOEF_PTR
_RTTI_JMORECFG_JCOEF_PTR:
	.byte	0
	.ascii	"\011JCOEF_PTR"

.const_data
	.align 2
.globl	_INIT_JMORECFG_JTOCTET
_INIT_JMORECFG_JTOCTET:
	.byte	1,7
	.ascii	"jTOctet"
	.byte	4
	.long	0,2147483646

.const_data
	.align 2
.globl	_RTTI_JMORECFG_JTOCTET
_RTTI_JMORECFG_JTOCTET:
	.byte	1,7
	.ascii	"jTOctet"
	.byte	4
	.long	0,2147483646

.const_data
	.align 2
.globl	_INIT_JMORECFG_JOCTET_FIELD
_INIT_JMORECFG_JOCTET_FIELD:
	.byte	12
	.ascii	"\014JOCTET_FIELD"
	.long	1,2147483647
	.long	_INIT_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_JMORECFG_JOCTET_FIELD
_RTTI_JMORECFG_JOCTET_FIELD:
	.byte	12
	.ascii	"\014JOCTET_FIELD"
	.long	1,2147483647
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_INIT_JMORECFG_JOCTET_FIELD_PTR
_INIT_JMORECFG_JOCTET_FIELD_PTR:
	.byte	0
	.ascii	"\020JOCTET_FIELD_PTR"

.const_data
	.align 2
.globl	_RTTI_JMORECFG_JOCTET_FIELD_PTR
_RTTI_JMORECFG_JOCTET_FIELD_PTR:
	.byte	0
	.ascii	"\020JOCTET_FIELD_PTR"

.const_data
	.align 2
.globl	_INIT_JMORECFG_JOCTETPTR
_INIT_JMORECFG_JOCTETPTR:
	.byte	0
	.ascii	"\011JOCTETPTR"

.const_data
	.align 2
.globl	_RTTI_JMORECFG_JOCTETPTR
_RTTI_JMORECFG_JOCTETPTR:
	.byte	0
	.ascii	"\011JOCTETPTR"

.const_data
	.align 2
.globl	_INIT_JMORECFG_INT32PTR
_INIT_JMORECFG_INT32PTR:
	.byte	0
	.ascii	"\010INT32PTR"

.const_data
	.align 2
.globl	_RTTI_JMORECFG_INT32PTR
_RTTI_JMORECFG_INT32PTR:
	.byte	0
	.ascii	"\010INT32PTR"
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

