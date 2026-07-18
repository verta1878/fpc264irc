# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_CFSTRING
_THREADVARLIST_CFSTRING:
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
.globl	_INIT_CFSTRING_CFSTRINGENCODINGPTR
_INIT_CFSTRING_CFSTRINGENCODINGPTR:
	.byte	0
	.ascii	"\023CFStringEncodingPtr"

.const_data
	.align 2
.globl	_RTTI_CFSTRING_CFSTRINGENCODINGPTR
_RTTI_CFSTRING_CFSTRINGENCODINGPTR:
	.byte	0
	.ascii	"\023CFStringEncodingPtr"

.const_data
	.align 2
.globl	_INIT_CFSTRING_CFSTRINGINLINEBUFFER
_INIT_CFSTRING_CFSTRINGINLINEBUFFER:
	.byte	13,20
	.ascii	"CFStringInlineBuffer"
	.long	152,0

.const_data
	.align 2
.globl	_RTTI_CFSTRING_DEF188
_RTTI_CFSTRING_DEF188:
	.byte	12
	.ascii	"\000"
	.long	2,64
	.long	_RTTI_SYSTEM_WORD
	.long	18

.const_data
	.align 2
.globl	_RTTI_CFSTRING_CFSTRINGINLINEBUFFER
_RTTI_CFSTRING_CFSTRINGINLINEBUFFER:
	.byte	13,20
	.ascii	"CFStringInlineBuffer"
	.long	152,6
	.long	_RTTI_CFSTRING_DEF188
	.long	0
	.long	_RTTI_CFBASE_CFSTRINGREF
	.long	128
	.long	_RTTI_MACTYPES_UNICHARPTR
	.long	132
	.long	_RTTI_CFBASE_CFRANGE
	.long	136
	.long	_RTTI_SYSTEM_LONGINT
	.long	144
	.long	_RTTI_SYSTEM_LONGINT
	.long	148
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

