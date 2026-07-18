# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JDCT
_THREADVARLIST_JDCT:
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
.globl	_INIT_JDCT_JTDCTELEM
_INIT_JDCT_JTDCTELEM:
	.byte	1,9
	.ascii	"jTDctElem"
	.byte	4
	.long	0,536870910

.const_data
	.align 2
.globl	_RTTI_JDCT_JTDCTELEM
_RTTI_JDCT_JTDCTELEM:
	.byte	1,9
	.ascii	"jTDctElem"
	.byte	4
	.long	0,536870910

.const_data
	.align 2
.globl	_INIT_JDCT_DCTELEM_FIELD
_INIT_JDCT_DCTELEM_FIELD:
	.byte	12
	.ascii	"\015DCTELEM_FIELD"
	.long	4,536870911
	.long	_INIT_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_JDCT_DCTELEM_FIELD
_RTTI_JDCT_DCTELEM_FIELD:
	.byte	12
	.ascii	"\015DCTELEM_FIELD"
	.long	4,536870911
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_INIT_JDCT_DCTELEM_FIELD_PTR
_INIT_JDCT_DCTELEM_FIELD_PTR:
	.byte	0
	.ascii	"\021DCTELEM_FIELD_PTR"

.const_data
	.align 2
.globl	_RTTI_JDCT_DCTELEM_FIELD_PTR
_RTTI_JDCT_DCTELEM_FIELD_PTR:
	.byte	0
	.ascii	"\021DCTELEM_FIELD_PTR"

.const_data
	.align 2
.globl	_INIT_JDCT_DCTELEMPTR
_INIT_JDCT_DCTELEMPTR:
	.byte	0
	.ascii	"\012DCTELEMPTR"

.const_data
	.align 2
.globl	_RTTI_JDCT_DCTELEMPTR
_RTTI_JDCT_DCTELEMPTR:
	.byte	0
	.ascii	"\012DCTELEMPTR"

.const_data
	.align 2
.globl	_INIT_JDCT_FORWARD_DCT_METHOD_PTR
_INIT_JDCT_FORWARD_DCT_METHOD_PTR:
	.byte	23,22
	.ascii	"forward_DCT_method_ptr"

.const_data
	.align 2
.globl	_RTTI_JDCT_FORWARD_DCT_METHOD_PTR
_RTTI_JDCT_FORWARD_DCT_METHOD_PTR:
	.byte	23,22
	.ascii	"forward_DCT_method_ptr"

.const_data
	.align 2
.globl	_INIT_JDCT_FLOAT_DCT_METHOD_PTR
_INIT_JDCT_FLOAT_DCT_METHOD_PTR:
	.byte	23,20
	.ascii	"float_DCT_method_ptr"

.const_data
	.align 2
.globl	_RTTI_JDCT_FLOAT_DCT_METHOD_PTR
_RTTI_JDCT_FLOAT_DCT_METHOD_PTR:
	.byte	23,20
	.ascii	"float_DCT_method_ptr"

.const_data
	.align 2
.globl	_INIT_JDCT_JTMULTTYPE
_INIT_JDCT_JTMULTTYPE:
	.byte	1,10
	.ascii	"jTMultType"
	.byte	4
	.long	0,536870910

.const_data
	.align 2
.globl	_RTTI_JDCT_JTMULTTYPE
_RTTI_JDCT_JTMULTTYPE:
	.byte	1,10
	.ascii	"jTMultType"
	.byte	4
	.long	0,536870910

.const_data
	.align 2
.globl	_INIT_JDCT_ISLOW_MULT_TYPE_FIELD
_INIT_JDCT_ISLOW_MULT_TYPE_FIELD:
	.byte	12
	.ascii	"\025ISLOW_MULT_TYPE_FIELD"
	.long	4,536870911
	.long	_INIT_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_JDCT_ISLOW_MULT_TYPE_FIELD
_RTTI_JDCT_ISLOW_MULT_TYPE_FIELD:
	.byte	12
	.ascii	"\025ISLOW_MULT_TYPE_FIELD"
	.long	4,536870911
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_INIT_JDCT_ISLOW_MULT_TYPE_FIELD_PTR
_INIT_JDCT_ISLOW_MULT_TYPE_FIELD_PTR:
	.byte	0
	.ascii	"\031ISLOW_MULT_TYPE_FIELD_PTR"

.const_data
	.align 2
.globl	_RTTI_JDCT_ISLOW_MULT_TYPE_FIELD_PTR
_RTTI_JDCT_ISLOW_MULT_TYPE_FIELD_PTR:
	.byte	0
	.ascii	"\031ISLOW_MULT_TYPE_FIELD_PTR"

.const_data
	.align 2
.globl	_INIT_JDCT_ISLOW_MULT_TYPE_PTR
_INIT_JDCT_ISLOW_MULT_TYPE_PTR:
	.byte	0
	.ascii	"\023ISLOW_MULT_TYPE_PTR"

.const_data
	.align 2
.globl	_RTTI_JDCT_ISLOW_MULT_TYPE_PTR
_RTTI_JDCT_ISLOW_MULT_TYPE_PTR:
	.byte	0
	.ascii	"\023ISLOW_MULT_TYPE_PTR"

.const_data
	.align 2
.globl	_INIT_JDCT_JTFLOATTYPE
_INIT_JDCT_JTFLOATTYPE:
	.byte	1,11
	.ascii	"jTFloatType"
	.byte	4
	.long	0,268435454

.const_data
	.align 2
.globl	_RTTI_JDCT_JTFLOATTYPE
_RTTI_JDCT_JTFLOATTYPE:
	.byte	1,11
	.ascii	"jTFloatType"
	.byte	4
	.long	0,268435454

.const_data
	.align 2
.globl	_INIT_JDCT_FLOAT_MULT_TYPE_FIELD
_INIT_JDCT_FLOAT_MULT_TYPE_FIELD:
	.byte	12
	.ascii	"\025FLOAT_MULT_TYPE_FIELD"
	.long	8,268435455
	.long	_INIT_SYSTEM_DOUBLE
	.long	5

.const_data
	.align 2
.globl	_RTTI_JDCT_FLOAT_MULT_TYPE_FIELD
_RTTI_JDCT_FLOAT_MULT_TYPE_FIELD:
	.byte	12
	.ascii	"\025FLOAT_MULT_TYPE_FIELD"
	.long	8,268435455
	.long	_RTTI_SYSTEM_DOUBLE
	.long	5

.const_data
	.align 2
.globl	_INIT_JDCT_FLOAT_MULT_TYPE_FIELD_PTR
_INIT_JDCT_FLOAT_MULT_TYPE_FIELD_PTR:
	.byte	0
	.ascii	"\031FLOAT_MULT_TYPE_FIELD_PTR"

.const_data
	.align 2
.globl	_RTTI_JDCT_FLOAT_MULT_TYPE_FIELD_PTR
_RTTI_JDCT_FLOAT_MULT_TYPE_FIELD_PTR:
	.byte	0
	.ascii	"\031FLOAT_MULT_TYPE_FIELD_PTR"

.const_data
	.align 2
.globl	_INIT_JDCT_FLOAT_MULT_TYPE_PTR
_INIT_JDCT_FLOAT_MULT_TYPE_PTR:
	.byte	0
	.ascii	"\023FLOAT_MULT_TYPE_PTR"

.const_data
	.align 2
.globl	_RTTI_JDCT_FLOAT_MULT_TYPE_PTR
_RTTI_JDCT_FLOAT_MULT_TYPE_PTR:
	.byte	0
	.ascii	"\023FLOAT_MULT_TYPE_PTR"

.const_data
	.align 2
.globl	_INIT_JDCT_JTFASTTYPE
_INIT_JDCT_JTFASTTYPE:
	.byte	1,10
	.ascii	"jTFastType"
	.byte	4
	.long	0,536870910

.const_data
	.align 2
.globl	_RTTI_JDCT_JTFASTTYPE
_RTTI_JDCT_JTFASTTYPE:
	.byte	1,10
	.ascii	"jTFastType"
	.byte	4
	.long	0,536870910

.const_data
	.align 2
.globl	_INIT_JDCT_IFAST_MULT_TYPE_FIELD
_INIT_JDCT_IFAST_MULT_TYPE_FIELD:
	.byte	12
	.ascii	"\025IFAST_MULT_TYPE_FIELD"
	.long	4,536870911
	.long	_INIT_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_JDCT_IFAST_MULT_TYPE_FIELD
_RTTI_JDCT_IFAST_MULT_TYPE_FIELD:
	.byte	12
	.ascii	"\025IFAST_MULT_TYPE_FIELD"
	.long	4,536870911
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_INIT_JDCT_IFAST_MULT_TYPE_FIELD_PTR
_INIT_JDCT_IFAST_MULT_TYPE_FIELD_PTR:
	.byte	0
	.ascii	"\031IFAST_MULT_TYPE_FIELD_PTR"

.const_data
	.align 2
.globl	_RTTI_JDCT_IFAST_MULT_TYPE_FIELD_PTR
_RTTI_JDCT_IFAST_MULT_TYPE_FIELD_PTR:
	.byte	0
	.ascii	"\031IFAST_MULT_TYPE_FIELD_PTR"

.const_data
	.align 2
.globl	_INIT_JDCT_IFAST_MULT_TYPE_PTR
_INIT_JDCT_IFAST_MULT_TYPE_PTR:
	.byte	0
	.ascii	"\023IFAST_MULT_TYPE_PTR"

.const_data
	.align 2
.globl	_RTTI_JDCT_IFAST_MULT_TYPE_PTR
_RTTI_JDCT_IFAST_MULT_TYPE_PTR:
	.byte	0
	.ascii	"\023IFAST_MULT_TYPE_PTR"

.const_data
	.align 2
.globl	_INIT_JDCT_JTFASTFLOAT
_INIT_JDCT_JTFASTFLOAT:
	.byte	1,11
	.ascii	"jTFastFloat"
	.byte	4
	.long	0,268435454

.const_data
	.align 2
.globl	_RTTI_JDCT_JTFASTFLOAT
_RTTI_JDCT_JTFASTFLOAT:
	.byte	1,11
	.ascii	"jTFastFloat"
	.byte	4
	.long	0,268435454

.const_data
	.align 2
.globl	_INIT_JDCT_FAST_FLOAT_FIELD
_INIT_JDCT_FAST_FLOAT_FIELD:
	.byte	12
	.ascii	"\020FAST_FLOAT_FIELD"
	.long	8,268435455
	.long	_INIT_SYSTEM_DOUBLE
	.long	5

.const_data
	.align 2
.globl	_RTTI_JDCT_FAST_FLOAT_FIELD
_RTTI_JDCT_FAST_FLOAT_FIELD:
	.byte	12
	.ascii	"\020FAST_FLOAT_FIELD"
	.long	8,268435455
	.long	_RTTI_SYSTEM_DOUBLE
	.long	5

.const_data
	.align 2
.globl	_INIT_JDCT_FAST_FLOAT_FIELD_PTR
_INIT_JDCT_FAST_FLOAT_FIELD_PTR:
	.byte	0
	.ascii	"\024FAST_FLOAT_FIELD_PTR"

.const_data
	.align 2
.globl	_RTTI_JDCT_FAST_FLOAT_FIELD_PTR
_RTTI_JDCT_FAST_FLOAT_FIELD_PTR:
	.byte	0
	.ascii	"\024FAST_FLOAT_FIELD_PTR"

.const_data
	.align 2
.globl	_INIT_JDCT_FAST_FLOAT_PTR
_INIT_JDCT_FAST_FLOAT_PTR:
	.byte	0
	.ascii	"\016FAST_FLOAT_PTR"

.const_data
	.align 2
.globl	_RTTI_JDCT_FAST_FLOAT_PTR
_RTTI_JDCT_FAST_FLOAT_PTR:
	.byte	0
	.ascii	"\016FAST_FLOAT_PTR"
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

