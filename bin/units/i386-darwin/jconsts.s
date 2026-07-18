# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JCONSTS
_THREADVARLIST_JCONSTS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$JCONSTS$_Ld2
_$JCONSTS$_Ld2:
	.short	0,1
	.long	0,-1,7
.reference _$JCONSTS$_Ld1
.globl	_$JCONSTS$_Ld1
_$JCONSTS$_Ld1:
.reference _$JCONSTS$_Ld2
	.ascii	"JCONSTS\000"

.const_data
	.align 2
.globl	_$JCONSTS$_Ld4
_$JCONSTS$_Ld4:
	.short	0,1
	.long	0,-1,38
.reference _$JCONSTS$_Ld3
.globl	_$JCONSTS$_Ld3
_$JCONSTS$_Ld3:
.reference _$JCONSTS$_Ld4
	.ascii	"Cannot change the size of a JPEG image\000"
	.align 2
.globl	_$JCONSTS$_Ld6
_$JCONSTS$_Ld6:
	.short	0,1
	.long	0,-1,22
.reference _$JCONSTS$_Ld5
.globl	_$JCONSTS$_Ld5
_$JCONSTS$_Ld5:
.reference _$JCONSTS$_Ld6
	.ascii	"jconsts.schangejpgsize\000"

.const_data
	.align 2
.globl	_$JCONSTS$_Ld8
_$JCONSTS$_Ld8:
	.short	0,1
	.long	0,-1,14
.reference _$JCONSTS$_Ld7
.globl	_$JCONSTS$_Ld7
_$JCONSTS$_Ld7:
.reference _$JCONSTS$_Ld8
	.ascii	"JPEG error #%d\000"
	.align 2
.globl	_$JCONSTS$_Ld10
_$JCONSTS$_Ld10:
	.short	0,1
	.long	0,-1,18
.reference _$JCONSTS$_Ld9
.globl	_$JCONSTS$_Ld9
_$JCONSTS$_Ld9:
.reference _$JCONSTS$_Ld10
	.ascii	"jconsts.sjpegerror\000"
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

.data
	.align 2
.globl	_RESSTR_JCONSTS_START
_RESSTR_JCONSTS_START:
	.long	_$JCONSTS$_Ld1
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_JCONSTS_SCHANGEJPGSIZE
_RESSTR_JCONSTS_SCHANGEJPGSIZE:
	.long	_$JCONSTS$_Ld5
	.long	_$JCONSTS$_Ld3
	.long	_$JCONSTS$_Ld3
	.long	138579685

.data
	.align 2
.globl	_RESSTR_JCONSTS_SJPEGERROR
_RESSTR_JCONSTS_SJPEGERROR:
	.long	_$JCONSTS$_Ld9
	.long	_$JCONSTS$_Ld7
	.long	_$JCONSTS$_Ld7
	.long	234704340

.data
	.align 2
.globl	_RESSTR_JCONSTS_END
_RESSTR_JCONSTS_END:
	.long	_RESSTR_JCONSTS_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

