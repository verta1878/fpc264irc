# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_MACTYPES
_THREADVARLIST_MACTYPES:
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
.globl	_INIT_MACTYPES_WIDE
_INIT_MACTYPES_WIDE:
	.byte	13,4
	.ascii	"wide"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_MACTYPES_WIDE
_RTTI_MACTYPES_WIDE:
	.byte	13,4
	.ascii	"wide"
	.long	8,3
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_INT64
	.long	0

.const_data
	.align 2
.globl	_INIT_MACTYPES_UNSIGNEDWIDE
_INIT_MACTYPES_UNSIGNEDWIDE:
	.byte	13,12
	.ascii	"UnsignedWide"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_MACTYPES_UNSIGNEDWIDE
_RTTI_MACTYPES_UNSIGNEDWIDE:
	.byte	13,12
	.ascii	"UnsignedWide"
	.long	8,3
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_QWORD
	.long	0

.const_data
	.align 2
.globl	_INIT_MACTYPES_SINT8PTR
_INIT_MACTYPES_SINT8PTR:
	.byte	0
	.ascii	"\010SInt8Ptr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_SINT8PTR
_RTTI_MACTYPES_SINT8PTR:
	.byte	0
	.ascii	"\010SInt8Ptr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_UINT8PTR
_INIT_MACTYPES_UINT8PTR:
	.byte	0
	.ascii	"\010UInt8Ptr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_UINT8PTR
_RTTI_MACTYPES_UINT8PTR:
	.byte	0
	.ascii	"\010UInt8Ptr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_SINT16PTR
_INIT_MACTYPES_SINT16PTR:
	.byte	0
	.ascii	"\011SInt16Ptr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_SINT16PTR
_RTTI_MACTYPES_SINT16PTR:
	.byte	0
	.ascii	"\011SInt16Ptr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_UINT16PTR
_INIT_MACTYPES_UINT16PTR:
	.byte	0
	.ascii	"\011UInt16Ptr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_UINT16PTR
_RTTI_MACTYPES_UINT16PTR:
	.byte	0
	.ascii	"\011UInt16Ptr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_SINT32PTR
_INIT_MACTYPES_SINT32PTR:
	.byte	0
	.ascii	"\011SInt32Ptr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_SINT32PTR
_RTTI_MACTYPES_SINT32PTR:
	.byte	0
	.ascii	"\011SInt32Ptr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_UINT32PTR
_INIT_MACTYPES_UINT32PTR:
	.byte	0
	.ascii	"\011UInt32Ptr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_UINT32PTR
_RTTI_MACTYPES_UINT32PTR:
	.byte	0
	.ascii	"\011UInt32Ptr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_SINT64PTR
_INIT_MACTYPES_SINT64PTR:
	.byte	0
	.ascii	"\011SInt64Ptr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_SINT64PTR
_RTTI_MACTYPES_SINT64PTR:
	.byte	0
	.ascii	"\011SInt64Ptr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_UINT64PTR
_INIT_MACTYPES_UINT64PTR:
	.byte	0
	.ascii	"\011UInt64Ptr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_UINT64PTR
_RTTI_MACTYPES_UINT64PTR:
	.byte	0
	.ascii	"\011UInt64Ptr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_WIDEPTR
_INIT_MACTYPES_WIDEPTR:
	.byte	0
	.ascii	"\007widePtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_WIDEPTR
_RTTI_MACTYPES_WIDEPTR:
	.byte	0
	.ascii	"\007widePtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_UNSIGNEDWIDEPTR
_INIT_MACTYPES_UNSIGNEDWIDEPTR:
	.byte	0
	.ascii	"\017UnsignedWidePtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_UNSIGNEDWIDEPTR
_RTTI_MACTYPES_UNSIGNEDWIDEPTR:
	.byte	0
	.ascii	"\017UnsignedWidePtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_SIGNEDLONGPTR
_INIT_MACTYPES_SIGNEDLONGPTR:
	.byte	0
	.ascii	"\015SIGNEDLONGPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_SIGNEDLONGPTR
_RTTI_MACTYPES_SIGNEDLONGPTR:
	.byte	0
	.ascii	"\015SIGNEDLONGPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_UNSIGNEDLONGPTR
_INIT_MACTYPES_UNSIGNEDLONGPTR:
	.byte	0
	.ascii	"\017UNSIGNEDLONGPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_UNSIGNEDLONGPTR
_RTTI_MACTYPES_UNSIGNEDLONGPTR:
	.byte	0
	.ascii	"\017UNSIGNEDLONGPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_FIXEDPTR
_INIT_MACTYPES_FIXEDPTR:
	.byte	0
	.ascii	"\010FixedPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_FIXEDPTR
_RTTI_MACTYPES_FIXEDPTR:
	.byte	0
	.ascii	"\010FixedPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_FRACTPTR
_INIT_MACTYPES_FRACTPTR:
	.byte	0
	.ascii	"\010FractPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_FRACTPTR
_RTTI_MACTYPES_FRACTPTR:
	.byte	0
	.ascii	"\010FractPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_UNSIGNEDFIXEDPTR
_INIT_MACTYPES_UNSIGNEDFIXEDPTR:
	.byte	0
	.ascii	"\020UnsignedFixedPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_UNSIGNEDFIXEDPTR
_RTTI_MACTYPES_UNSIGNEDFIXEDPTR:
	.byte	0
	.ascii	"\020UnsignedFixedPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_SHORTFIXEDPTR
_INIT_MACTYPES_SHORTFIXEDPTR:
	.byte	0
	.ascii	"\015ShortFixedPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_SHORTFIXEDPTR
_RTTI_MACTYPES_SHORTFIXEDPTR:
	.byte	0
	.ascii	"\015ShortFixedPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_FLOAT32PTR
_INIT_MACTYPES_FLOAT32PTR:
	.byte	0
	.ascii	"\012Float32Ptr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_FLOAT32PTR
_RTTI_MACTYPES_FLOAT32PTR:
	.byte	0
	.ascii	"\012Float32Ptr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_FLOAT64PTR
_INIT_MACTYPES_FLOAT64PTR:
	.byte	0
	.ascii	"\012Float64Ptr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_FLOAT64PTR
_RTTI_MACTYPES_FLOAT64PTR:
	.byte	0
	.ascii	"\012Float64Ptr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_FLOAT80
_INIT_MACTYPES_FLOAT80:
	.byte	13,7
	.ascii	"Float80"
	.long	10,0

.const_data
	.align 2
.globl	_RTTI_MACTYPES_DEF23
_RTTI_MACTYPES_DEF23:
	.byte	12
	.ascii	"\000"
	.long	2,4
	.long	_RTTI_SYSTEM_WORD
	.long	18

.const_data
	.align 2
.globl	_RTTI_MACTYPES_FLOAT80
_RTTI_MACTYPES_FLOAT80:
	.byte	13,7
	.ascii	"Float80"
	.long	10,2
	.long	_RTTI_SYSTEM_SMALLINT
	.long	0
	.long	_RTTI_MACTYPES_DEF23
	.long	2

.const_data
	.align 2
.globl	_INIT_MACTYPES_FLOAT96
_INIT_MACTYPES_FLOAT96:
	.byte	13,7
	.ascii	"Float96"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_MACTYPES_DEF25
_RTTI_MACTYPES_DEF25:
	.byte	12
	.ascii	"\000"
	.long	2,4
	.long	_RTTI_SYSTEM_WORD
	.long	18

.const_data
	.align 2
.globl	_RTTI_MACTYPES_FLOAT96
_RTTI_MACTYPES_FLOAT96:
	.byte	13,7
	.ascii	"Float96"
	.long	12,3
	.long	_RTTI_SYSTEM_SMALLINT
	.long	0
	.long	_RTTI_SYSTEM_SMALLINT
	.long	2
	.long	_RTTI_MACTYPES_DEF25
	.long	4

.const_data
	.align 2
.globl	_INIT_MACTYPES_FLOAT32POINT
_INIT_MACTYPES_FLOAT32POINT:
	.byte	13,12
	.ascii	"Float32Point"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_MACTYPES_FLOAT32POINT
_RTTI_MACTYPES_FLOAT32POINT:
	.byte	13,12
	.ascii	"Float32Point"
	.long	8,2
	.long	_RTTI_SYSTEM_SINGLE
	.long	0
	.long	_RTTI_SYSTEM_SINGLE
	.long	4

.const_data
	.align 2
.globl	_INIT_MACTYPES_FLOAT32POINTPTR
_INIT_MACTYPES_FLOAT32POINTPTR:
	.byte	0
	.ascii	"\017Float32PointPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_FLOAT32POINTPTR
_RTTI_MACTYPES_FLOAT32POINTPTR:
	.byte	0
	.ascii	"\017Float32PointPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_SIZE_T_PTR
_INIT_MACTYPES_SIZE_T_PTR:
	.byte	0
	.ascii	"\012size_t_ptr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_SIZE_T_PTR
_RTTI_MACTYPES_SIZE_T_PTR:
	.byte	0
	.ascii	"\012size_t_ptr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_SSIZE_T_PTR
_INIT_MACTYPES_SSIZE_T_PTR:
	.byte	0
	.ascii	"\013ssize_t_ptr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_SSIZE_T_PTR
_RTTI_MACTYPES_SSIZE_T_PTR:
	.byte	0
	.ascii	"\013ssize_t_ptr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_PTR
_INIT_MACTYPES_PTR:
	.byte	0
	.ascii	"\003Ptr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_PTR
_RTTI_MACTYPES_PTR:
	.byte	0
	.ascii	"\003Ptr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_PTRPTR
_INIT_MACTYPES_PTRPTR:
	.byte	0
	.ascii	"\006PtrPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_PTRPTR
_RTTI_MACTYPES_PTRPTR:
	.byte	0
	.ascii	"\006PtrPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_HANDLE
_INIT_MACTYPES_HANDLE:
	.byte	0
	.ascii	"\006Handle"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_HANDLE
_RTTI_MACTYPES_HANDLE:
	.byte	0
	.ascii	"\006Handle"

.const_data
	.align 2
.globl	_INIT_MACTYPES_SIZEPTR
_INIT_MACTYPES_SIZEPTR:
	.byte	0
	.ascii	"\007SizePtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_SIZEPTR
_RTTI_MACTYPES_SIZEPTR:
	.byte	0
	.ascii	"\007SizePtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_UNIVPTRPTR
_INIT_MACTYPES_UNIVPTRPTR:
	.byte	0
	.ascii	"\012UnivPtrPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_UNIVPTRPTR
_RTTI_MACTYPES_UNIVPTRPTR:
	.byte	0
	.ascii	"\012UnivPtrPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_BYTECOUNTPTR
_INIT_MACTYPES_BYTECOUNTPTR:
	.byte	0
	.ascii	"\014ByteCountPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_BYTECOUNTPTR
_RTTI_MACTYPES_BYTECOUNTPTR:
	.byte	0
	.ascii	"\014ByteCountPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_BYTEOFFSETPTR
_INIT_MACTYPES_BYTEOFFSETPTR:
	.byte	0
	.ascii	"\015ByteOffsetPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_BYTEOFFSETPTR
_RTTI_MACTYPES_BYTEOFFSETPTR:
	.byte	0
	.ascii	"\015ByteOffsetPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_ABSOLUTETIMEPTR
_INIT_MACTYPES_ABSOLUTETIMEPTR:
	.byte	0
	.ascii	"\017AbsoluteTimePtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_ABSOLUTETIMEPTR
_RTTI_MACTYPES_ABSOLUTETIMEPTR:
	.byte	0
	.ascii	"\017AbsoluteTimePtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_OPTIONBITSPTR
_INIT_MACTYPES_OPTIONBITSPTR:
	.byte	0
	.ascii	"\015OptionBitsPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_OPTIONBITSPTR
_RTTI_MACTYPES_OPTIONBITSPTR:
	.byte	0
	.ascii	"\015OptionBitsPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_ITEMCOUNTPTR
_INIT_MACTYPES_ITEMCOUNTPTR:
	.byte	0
	.ascii	"\014ItemCountPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_ITEMCOUNTPTR
_RTTI_MACTYPES_ITEMCOUNTPTR:
	.byte	0
	.ascii	"\014ItemCountPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_SCRIPTCODEPTR
_INIT_MACTYPES_SCRIPTCODEPTR:
	.byte	0
	.ascii	"\015ScriptCodePtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_SCRIPTCODEPTR
_RTTI_MACTYPES_SCRIPTCODEPTR:
	.byte	0
	.ascii	"\015ScriptCodePtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_LANGCODEPTR
_INIT_MACTYPES_LANGCODEPTR:
	.byte	0
	.ascii	"\013LangCodePtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_LANGCODEPTR
_RTTI_MACTYPES_LANGCODEPTR:
	.byte	0
	.ascii	"\013LangCodePtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_REGIONCODEPTR
_INIT_MACTYPES_REGIONCODEPTR:
	.byte	0
	.ascii	"\015RegionCodePtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_REGIONCODEPTR
_RTTI_MACTYPES_REGIONCODEPTR:
	.byte	0
	.ascii	"\015RegionCodePtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_OSTYPEPTR
_INIT_MACTYPES_OSTYPEPTR:
	.byte	0
	.ascii	"\011OSTypePtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_OSTYPEPTR
_RTTI_MACTYPES_OSTYPEPTR:
	.byte	0
	.ascii	"\011OSTypePtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_OSTYPEHANDLE
_INIT_MACTYPES_OSTYPEHANDLE:
	.byte	0
	.ascii	"\014OSTypeHandle"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_OSTYPEHANDLE
_RTTI_MACTYPES_OSTYPEHANDLE:
	.byte	0
	.ascii	"\014OSTypeHandle"

.const_data
	.align 2
.globl	_INIT_MACTYPES_RESTYPEPTR
_INIT_MACTYPES_RESTYPEPTR:
	.byte	0
	.ascii	"\012ResTypePtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_RESTYPEPTR
_RTTI_MACTYPES_RESTYPEPTR:
	.byte	0
	.ascii	"\012ResTypePtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_BOOLEANPTR
_INIT_MACTYPES_BOOLEANPTR:
	.byte	0
	.ascii	"\012BooleanPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_BOOLEANPTR
_RTTI_MACTYPES_BOOLEANPTR:
	.byte	0
	.ascii	"\012BooleanPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_PROCHANDLE
_INIT_MACTYPES_PROCHANDLE:
	.byte	0
	.ascii	"\012ProcHandle"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_PROCHANDLE
_RTTI_MACTYPES_PROCHANDLE:
	.byte	0
	.ascii	"\012ProcHandle"

.const_data
	.align 2
.globl	_INIT_MACTYPES_UNIVERSALPROCHANDLE
_INIT_MACTYPES_UNIVERSALPROCHANDLE:
	.byte	0
	.ascii	"\023UniversalProcHandle"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_UNIVERSALPROCHANDLE
_RTTI_MACTYPES_UNIVERSALPROCHANDLE:
	.byte	0
	.ascii	"\023UniversalProcHandle"

.const_data
	.align 2
.globl	_INIT_MACTYPES_UNICHARPTR
_INIT_MACTYPES_UNICHARPTR:
	.byte	0
	.ascii	"\012UniCharPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_UNICHARPTR
_RTTI_MACTYPES_UNICHARPTR:
	.byte	0
	.ascii	"\012UniCharPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_UNICHARCOUNTPTR
_INIT_MACTYPES_UNICHARCOUNTPTR:
	.byte	0
	.ascii	"\017UniCharCountPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_UNICHARCOUNTPTR
_RTTI_MACTYPES_UNICHARCOUNTPTR:
	.byte	0
	.ascii	"\017UniCharCountPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_STR15
_INIT_MACTYPES_STR15:
	.byte	7,5
	.ascii	"Str15"
	.byte	15

.const_data
	.align 2
.globl	_RTTI_MACTYPES_STR15
_RTTI_MACTYPES_STR15:
	.byte	7,5
	.ascii	"Str15"
	.byte	15

.const_data
	.align 2
.globl	_INIT_MACTYPES_STR27
_INIT_MACTYPES_STR27:
	.byte	7,5
	.ascii	"Str27"
	.byte	27

.const_data
	.align 2
.globl	_RTTI_MACTYPES_STR27
_RTTI_MACTYPES_STR27:
	.byte	7,5
	.ascii	"Str27"
	.byte	27

.const_data
	.align 2
.globl	_INIT_MACTYPES_STR31
_INIT_MACTYPES_STR31:
	.byte	7,5
	.ascii	"Str31"
	.byte	31

.const_data
	.align 2
.globl	_RTTI_MACTYPES_STR31
_RTTI_MACTYPES_STR31:
	.byte	7,5
	.ascii	"Str31"
	.byte	31

.const_data
	.align 2
.globl	_INIT_MACTYPES_STR32
_INIT_MACTYPES_STR32:
	.byte	7,5
	.ascii	"Str32"
	.byte	32

.const_data
	.align 2
.globl	_RTTI_MACTYPES_STR32
_RTTI_MACTYPES_STR32:
	.byte	7,5
	.ascii	"Str32"
	.byte	32

.const_data
	.align 2
.globl	_INIT_MACTYPES_STR36
_INIT_MACTYPES_STR36:
	.byte	7,5
	.ascii	"Str36"
	.byte	36

.const_data
	.align 2
.globl	_RTTI_MACTYPES_STR36
_RTTI_MACTYPES_STR36:
	.byte	7,5
	.ascii	"Str36"
	.byte	36

.const_data
	.align 2
.globl	_INIT_MACTYPES_STR63
_INIT_MACTYPES_STR63:
	.byte	7,5
	.ascii	"Str63"
	.byte	63

.const_data
	.align 2
.globl	_RTTI_MACTYPES_STR63
_RTTI_MACTYPES_STR63:
	.byte	7,5
	.ascii	"Str63"
	.byte	63

.const_data
	.align 2
.globl	_INIT_MACTYPES_STRINGPTR
_INIT_MACTYPES_STRINGPTR:
	.byte	0
	.ascii	"\011StringPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_STRINGPTR
_RTTI_MACTYPES_STRINGPTR:
	.byte	0
	.ascii	"\011StringPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_STRINGHANDLE
_INIT_MACTYPES_STRINGHANDLE:
	.byte	0
	.ascii	"\014StringHandle"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_STRINGHANDLE
_RTTI_MACTYPES_STRINGHANDLE:
	.byte	0
	.ascii	"\014StringHandle"

.const_data
	.align 2
.globl	_INIT_MACTYPES_CSTRINGPTRPTR
_INIT_MACTYPES_CSTRINGPTRPTR:
	.byte	0
	.ascii	"\015CStringPtrPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_CSTRINGPTRPTR
_RTTI_MACTYPES_CSTRINGPTRPTR:
	.byte	0
	.ascii	"\015CStringPtrPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_CONSTCSTRINGPTRPTR
_INIT_MACTYPES_CONSTCSTRINGPTRPTR:
	.byte	0
	.ascii	"\022ConstCStringPtrPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_CONSTCSTRINGPTRPTR
_RTTI_MACTYPES_CONSTCSTRINGPTRPTR:
	.byte	0
	.ascii	"\022ConstCStringPtrPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_PROCESSSERIALNUMBER
_INIT_MACTYPES_PROCESSSERIALNUMBER:
	.byte	13,19
	.ascii	"ProcessSerialNumber"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_MACTYPES_PROCESSSERIALNUMBER
_RTTI_MACTYPES_PROCESSSERIALNUMBER:
	.byte	13,19
	.ascii	"ProcessSerialNumber"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4

.const_data
	.align 2
.globl	_INIT_MACTYPES_PROCESSSERIALNUMBERPTR
_INIT_MACTYPES_PROCESSSERIALNUMBERPTR:
	.byte	0
	.ascii	"\026ProcessSerialNumberPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_PROCESSSERIALNUMBERPTR
_RTTI_MACTYPES_PROCESSSERIALNUMBERPTR:
	.byte	0
	.ascii	"\026ProcessSerialNumberPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_POINT
_INIT_MACTYPES_POINT:
	.byte	13,5
	.ascii	"Point"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_MACTYPES_DEF65
_RTTI_MACTYPES_DEF65:
	.byte	12
	.ascii	"\000"
	.long	2,2
	.long	_RTTI_SYSTEM_SMALLINT
	.long	2

.const_data
	.align 2
.globl	_RTTI_MACTYPES_POINT
_RTTI_MACTYPES_POINT:
	.byte	13,5
	.ascii	"Point"
	.long	4,3
	.long	_RTTI_SYSTEM_SMALLINT
	.long	0
	.long	_RTTI_SYSTEM_SMALLINT
	.long	2
	.long	_RTTI_MACTYPES_DEF65
	.long	0

.const_data
	.align 2
.globl	_INIT_MACTYPES_POINTPTR
_INIT_MACTYPES_POINTPTR:
	.byte	0
	.ascii	"\010PointPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_POINTPTR
_RTTI_MACTYPES_POINTPTR:
	.byte	0
	.ascii	"\010PointPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_RECT
_INIT_MACTYPES_RECT:
	.byte	13,4
	.ascii	"Rect"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_MACTYPES_RECT
_RTTI_MACTYPES_RECT:
	.byte	13,4
	.ascii	"Rect"
	.long	8,6
	.long	_RTTI_SYSTEM_SMALLINT
	.long	0
	.long	_RTTI_SYSTEM_SMALLINT
	.long	2
	.long	_RTTI_SYSTEM_SMALLINT
	.long	4
	.long	_RTTI_SYSTEM_SMALLINT
	.long	6
	.long	_RTTI_MACTYPES_POINT
	.long	0
	.long	_RTTI_MACTYPES_POINT
	.long	4

.const_data
	.align 2
.globl	_INIT_MACTYPES_RECTPTR
_INIT_MACTYPES_RECTPTR:
	.byte	0
	.ascii	"\007RectPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_RECTPTR
_RTTI_MACTYPES_RECTPTR:
	.byte	0
	.ascii	"\007RectPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_FIXEDPOINT
_INIT_MACTYPES_FIXEDPOINT:
	.byte	13,10
	.ascii	"FixedPoint"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_MACTYPES_FIXEDPOINT
_RTTI_MACTYPES_FIXEDPOINT:
	.byte	13,10
	.ascii	"FixedPoint"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4

.const_data
	.align 2
.globl	_INIT_MACTYPES_FIXEDPOINTPTR
_INIT_MACTYPES_FIXEDPOINTPTR:
	.byte	0
	.ascii	"\015FixedPointPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_FIXEDPOINTPTR
_RTTI_MACTYPES_FIXEDPOINTPTR:
	.byte	0
	.ascii	"\015FixedPointPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_FIXEDRECT
_INIT_MACTYPES_FIXEDRECT:
	.byte	13,9
	.ascii	"FixedRect"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_MACTYPES_FIXEDRECT
_RTTI_MACTYPES_FIXEDRECT:
	.byte	13,9
	.ascii	"FixedRect"
	.long	16,4
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12

.const_data
	.align 2
.globl	_INIT_MACTYPES_FIXEDRECTPTR
_INIT_MACTYPES_FIXEDRECTPTR:
	.byte	0
	.ascii	"\014FixedRectPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_FIXEDRECTPTR
_RTTI_MACTYPES_FIXEDRECTPTR:
	.byte	0
	.ascii	"\014FixedRectPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_TIMESCALEPTR
_INIT_MACTYPES_TIMESCALEPTR:
	.byte	0
	.ascii	"\014TimeScalePtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_TIMESCALEPTR
_RTTI_MACTYPES_TIMESCALEPTR:
	.byte	0
	.ascii	"\014TimeScalePtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_COMPTIMEVALUEPTR
_INIT_MACTYPES_COMPTIMEVALUEPTR:
	.byte	0
	.ascii	"\020CompTimeValuePtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_COMPTIMEVALUEPTR
_RTTI_MACTYPES_COMPTIMEVALUEPTR:
	.byte	0
	.ascii	"\020CompTimeValuePtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_TIMEVALUE64PTR
_INIT_MACTYPES_TIMEVALUE64PTR:
	.byte	0
	.ascii	"\016TimeValue64Ptr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_TIMEVALUE64PTR
_RTTI_MACTYPES_TIMEVALUE64PTR:
	.byte	0
	.ascii	"\016TimeValue64Ptr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_TIMEBASE
_INIT_MACTYPES_TIMEBASE:
	.byte	0
	.ascii	"\010TimeBase"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_TIMEBASE
_RTTI_MACTYPES_TIMEBASE:
	.byte	0
	.ascii	"\010TimeBase"

.const_data
	.align 2
.globl	_INIT_MACTYPES_TIMEBASEPTR
_INIT_MACTYPES_TIMEBASEPTR:
	.byte	0
	.ascii	"\013TimeBasePtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_TIMEBASEPTR
_RTTI_MACTYPES_TIMEBASEPTR:
	.byte	0
	.ascii	"\013TimeBasePtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_TIMERECORD
_INIT_MACTYPES_TIMERECORD:
	.byte	13,10
	.ascii	"TimeRecord"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_MACTYPES_TIMERECORD
_RTTI_MACTYPES_TIMERECORD:
	.byte	13,10
	.ascii	"TimeRecord"
	.long	16,3
	.long	_RTTI_MACTYPES_WIDE
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_MACTYPES_TIMEBASE
	.long	12

.const_data
	.align 2
.globl	_INIT_MACTYPES_TIMERECORDPTR
_INIT_MACTYPES_TIMERECORDPTR:
	.byte	0
	.ascii	"\015TimeRecordPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_TIMERECORDPTR
_RTTI_MACTYPES_TIMERECORDPTR:
	.byte	0
	.ascii	"\015TimeRecordPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_NUMVERSION
_INIT_MACTYPES_NUMVERSION:
	.byte	0
	.ascii	"\012NumVersion"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_NUMVERSION
_RTTI_MACTYPES_NUMVERSION:
	.byte	0
	.ascii	"\012NumVersion"

.const_data
	.align 2
.globl	_INIT_MACTYPES_NUMVERSIONPTR
_INIT_MACTYPES_NUMVERSIONPTR:
	.byte	0
	.ascii	"\015NumVersionPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_NUMVERSIONPTR
_RTTI_MACTYPES_NUMVERSIONPTR:
	.byte	0
	.ascii	"\015NumVersionPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_NUMVERSIONVARIANT
_INIT_MACTYPES_NUMVERSIONVARIANT:
	.byte	13,17
	.ascii	"NumVersionVariant"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_MACTYPES_NUMVERSIONVARIANT
_RTTI_MACTYPES_NUMVERSIONVARIANT:
	.byte	13,17
	.ascii	"NumVersionVariant"
	.long	4,2
	.long	_RTTI_MACTYPES_NUMVERSION
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0

.const_data
	.align 2
.globl	_INIT_MACTYPES_NUMVERSIONVARIANTPTR
_INIT_MACTYPES_NUMVERSIONVARIANTPTR:
	.byte	0
	.ascii	"\024NumVersionVariantPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_NUMVERSIONVARIANTPTR
_RTTI_MACTYPES_NUMVERSIONVARIANTPTR:
	.byte	0
	.ascii	"\024NumVersionVariantPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_NUMVERSIONVARIANTHANDLE
_INIT_MACTYPES_NUMVERSIONVARIANTHANDLE:
	.byte	0
	.ascii	"\027NumVersionVariantHandle"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_NUMVERSIONVARIANTHANDLE
_RTTI_MACTYPES_NUMVERSIONVARIANTHANDLE:
	.byte	0
	.ascii	"\027NumVersionVariantHandle"

.const_data
	.align 2
.globl	_INIT_MACTYPES_VERSREC
_INIT_MACTYPES_VERSREC:
	.byte	13,7
	.ascii	"VersRec"
	.long	518,0

.const_data
	.align 2
.globl	_RTTI_MACTYPES_VERSREC
_RTTI_MACTYPES_VERSREC:
	.byte	13,7
	.ascii	"VersRec"
	.long	518,4
	.long	_RTTI_MACTYPES_NUMVERSION
	.long	0
	.long	_RTTI_SYSTEM_SMALLINT
	.long	4
	.long	_RTTI_SYSTEM_SHORTSTRING
	.long	6
	.long	_RTTI_SYSTEM_SHORTSTRING
	.long	262

.const_data
	.align 2
.globl	_INIT_MACTYPES_VERSRECPTR
_INIT_MACTYPES_VERSRECPTR:
	.byte	0
	.ascii	"\012VersRecPtr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_VERSRECPTR
_RTTI_MACTYPES_VERSRECPTR:
	.byte	0
	.ascii	"\012VersRecPtr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_VERSRECHNDL
_INIT_MACTYPES_VERSRECHNDL:
	.byte	0
	.ascii	"\013VersRecHndl"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_VERSRECHNDL
_RTTI_MACTYPES_VERSRECHNDL:
	.byte	0
	.ascii	"\013VersRecHndl"

.const_data
	.align 2
.globl	_INIT_MACTYPES_EXTENDED80PTR
_INIT_MACTYPES_EXTENDED80PTR:
	.byte	0
	.ascii	"\015extended80Ptr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_EXTENDED80PTR
_RTTI_MACTYPES_EXTENDED80PTR:
	.byte	0
	.ascii	"\015extended80Ptr"

.const_data
	.align 2
.globl	_INIT_MACTYPES_EXTENDED96PTR
_INIT_MACTYPES_EXTENDED96PTR:
	.byte	0
	.ascii	"\015extended96Ptr"

.const_data
	.align 2
.globl	_RTTI_MACTYPES_EXTENDED96PTR
_RTTI_MACTYPES_EXTENDED96PTR:
	.byte	0
	.ascii	"\015extended96Ptr"
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

