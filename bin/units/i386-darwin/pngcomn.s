# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$PNGCOMN$_Ld1
_$PNGCOMN$_Ld1:
	.byte	17
	.ascii	"PNGImageException"

.const_data
	.align 2
.globl	_VMT_PNGCOMN_PNGIMAGEEXCEPTION
_VMT_PNGCOMN_PNGIMAGEEXCEPTION:
	.long	12,-12
	.long	_VMT_FPIMAGE_FPIMAGEEXCEPTION
	.long	_$PNGCOMN$_Ld1
	.long	0,0
	.long	_$PNGCOMN$_Ld2
	.long	_RTTI_PNGCOMN_PNGIMAGEEXCEPTION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_SYSTEM_TOBJECT_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	_SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_PNGCOMN
_THREADVARLIST_PNGCOMN:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
.globl	_TC_PNGCOMN_SIGNATURE
_TC_PNGCOMN_SIGNATURE:
	.byte	137,80,78,71,13,10,26,10

.data
	.align 2
.globl	_TC_PNGCOMN_ALL1BITS
_TC_PNGCOMN_ALL1BITS:
	.long	-1

.data
.globl	_TC_PNGCOMN_CHUNKTYPES
_TC_PNGCOMN_CHUNKTYPES:
	.byte	73,72,68,82,99,72,82,77,103,65,77,65,115,66,73,84,80,76,84,69,98,75,71,68,104,73,83,84,116,82,78,83,111
	.byte	70,70,115,112,72,89,115,73,68,65,84,116,73,77,69,115,67,65,76,116,69,88,116,122,84,88,116,73,69,78,68
	.byte	115,82,71,66,105,67,67,80,105,84,88,116,115,80,76,84,85,110,107,110

.data
	.align 2
.globl	_TC_PNGCOMN_STARTROW
_TC_PNGCOMN_STARTROW:
	.long	0,0,0,4,0,2,0,1

.data
	.align 2
.globl	_TC_PNGCOMN_STARTCOL
_TC_PNGCOMN_STARTCOL:
	.long	0,0,4,0,2,0,1,0

.data
	.align 2
.globl	_TC_PNGCOMN_ROWINC
_TC_PNGCOMN_ROWINC:
	.long	1,8,8,8,4,4,2,2

.data
	.align 2
.globl	_TC_PNGCOMN_COLINC
_TC_PNGCOMN_COLINC:
	.long	1,8,8,4,4,2,2,1

.data
	.align 2
.globl	_TC_PNGCOMN_BLOCKHGHT
_TC_PNGCOMN_BLOCKHGHT:
	.long	1,8,8,4,4,2,2,1

.data
	.align 2
.globl	_TC_PNGCOMN_BLOCKWDTH
_TC_PNGCOMN_BLOCKWDTH:
	.long	1,8,4,4,2,2,1,1
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
.globl	_$PNGCOMN$_Ld2
_$PNGCOMN$_Ld2:
	.short	0
	.long	_$PNGCOMN$_Ld3
	.align 2
.globl	_$PNGCOMN$_Ld3
_$PNGCOMN$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_PNGCOMN_PNGIMAGEEXCEPTION
_INIT_PNGCOMN_PNGIMAGEEXCEPTION:
	.byte	15,17
	.ascii	"PNGImageException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_PNGCOMN_PNGIMAGEEXCEPTION
_RTTI_PNGCOMN_PNGIMAGEEXCEPTION:
	.byte	15,17
	.ascii	"PNGImageException"
	.long	_VMT_PNGCOMN_PNGIMAGEEXCEPTION
	.long	_RTTI_FPIMAGE_FPIMAGEEXCEPTION
	.short	0
	.byte	7
	.ascii	"PNGcomn"
	.short	0

.const_data
	.align 2
.globl	_INIT_PNGCOMN_TCHUNKTYPES
_INIT_PNGCOMN_TCHUNKTYPES:
	.byte	3,11
	.ascii	"TChunkTypes"
	.byte	5
	.long	0,20,0
	.byte	6
	.ascii	"ctIHDR"
	.byte	6
	.ascii	"ctcHRM"
	.byte	6
	.ascii	"ctgAMA"
	.byte	6
	.ascii	"ctsBIT"
	.byte	6
	.ascii	"ctPLTE"
	.byte	6
	.ascii	"ctbKGD"
	.byte	6
	.ascii	"cthIST"
	.byte	6
	.ascii	"cttRNS"
	.byte	6
	.ascii	"ctoFFs"
	.byte	6
	.ascii	"ctpHYs"
	.byte	6
	.ascii	"ctIDAT"
	.byte	6
	.ascii	"cttIME"
	.byte	6
	.ascii	"ctsCAL"
	.byte	6
	.ascii	"cttEXt"
	.byte	6
	.ascii	"ctzTXt"
	.byte	6
	.ascii	"ctIEND"
	.byte	6
	.ascii	"ctsRGB"
	.byte	6
	.ascii	"ctiCCP"
	.byte	6
	.ascii	"ctiTXt"
	.byte	6
	.ascii	"ctsPLT"
	.byte	9
	.ascii	"ctUnknown"
	.byte	7
	.ascii	"PNGcomn"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PNGCOMN_TCHUNKTYPES
_RTTI_PNGCOMN_TCHUNKTYPES:
	.byte	3,11
	.ascii	"TChunkTypes"
	.byte	5
	.long	0,20,0
	.byte	6
	.ascii	"ctIHDR"
	.byte	6
	.ascii	"ctcHRM"
	.byte	6
	.ascii	"ctgAMA"
	.byte	6
	.ascii	"ctsBIT"
	.byte	6
	.ascii	"ctPLTE"
	.byte	6
	.ascii	"ctbKGD"
	.byte	6
	.ascii	"cthIST"
	.byte	6
	.ascii	"cttRNS"
	.byte	6
	.ascii	"ctoFFs"
	.byte	6
	.ascii	"ctpHYs"
	.byte	6
	.ascii	"ctIDAT"
	.byte	6
	.ascii	"cttIME"
	.byte	6
	.ascii	"ctsCAL"
	.byte	6
	.ascii	"cttEXt"
	.byte	6
	.ascii	"ctzTXt"
	.byte	6
	.ascii	"ctIEND"
	.byte	6
	.ascii	"ctsRGB"
	.byte	6
	.ascii	"ctiCCP"
	.byte	6
	.ascii	"ctiTXt"
	.byte	6
	.ascii	"ctsPLT"
	.byte	9
	.ascii	"ctUnknown"
	.byte	7
	.ascii	"PNGcomn"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PNGCOMN_TCHUNKTYPES_s2o
_RTTI_PNGCOMN_TCHUNKTYPES_s2o:
	.long	21,5
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+61
	.long	1
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+33
	.long	2
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+40
	.long	6
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+68
	.long	17
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+145
	.long	10
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+96
	.long	15
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+131
	.long	0
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+26
	.long	18
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+152
	.long	8
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+82
	.long	9
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+89
	.long	4
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+54
	.long	3
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+47
	.long	12
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+110
	.long	19
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+159
	.long	16
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+138
	.long	13
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+117
	.long	11
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+103
	.long	7
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+75
	.long	20
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+166
	.long	14
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+124

.const_data
	.align 2
.globl	_RTTI_PNGCOMN_TCHUNKTYPES_o2s
_RTTI_PNGCOMN_TCHUNKTYPES_o2s:
	.long	0
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+26
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+33
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+40
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+47
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+54
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+61
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+68
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+75
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+82
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+89
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+96
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+103
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+110
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+117
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+124
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+131
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+138
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+145
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+152
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+159
	.long	_RTTI_PNGCOMN_TCHUNKTYPES+166

.const_data
	.align 2
.globl	_INIT_PNGCOMN_EIGHTLONG
_INIT_PNGCOMN_EIGHTLONG:
	.byte	12
	.ascii	"\011EightLong"
	.long	4,8
	.long	_INIT_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_RTTI_PNGCOMN_EIGHTLONG
_RTTI_PNGCOMN_EIGHTLONG:
	.byte	12
	.ascii	"\011EightLong"
	.long	4,8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_INIT_PNGCOMN_TCHUNKCODE
_INIT_PNGCOMN_TCHUNKCODE:
	.byte	12
	.ascii	"\012TChunkCode"
	.long	1,4
	.long	_INIT_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_PNGCOMN_TCHUNKCODE
_RTTI_PNGCOMN_TCHUNKCODE:
	.byte	12
	.ascii	"\012TChunkCode"
	.long	1,4
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_INIT_PNGCOMN_TCHUNK
_INIT_PNGCOMN_TCHUNK:
	.byte	13,6
	.ascii	"TChunk"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_PNGCOMN_TCHUNK
_RTTI_PNGCOMN_TCHUNK:
	.byte	13,6
	.ascii	"TChunk"
	.long	24,6
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8
	.long	_RTTI_PNGCOMN_TCHUNKCODE
	.long	12
	.long	_RTTI_SYSUTILS_PBYTEARRAY
	.long	16
	.long	_RTTI_PNGCOMN_TCHUNKTYPES
	.long	20

.const_data
	.align 2
.globl	_INIT_PNGCOMN_TCHUNKHEADER
_INIT_PNGCOMN_TCHUNKHEADER:
	.byte	13,12
	.ascii	"TChunkHeader"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_PNGCOMN_TCHUNKHEADER
_RTTI_PNGCOMN_TCHUNKHEADER:
	.byte	13,12
	.ascii	"TChunkHeader"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_PNGCOMN_TCHUNKCODE
	.long	4

.const_data
	.align 2
.globl	_INIT_PNGCOMN_THEADERCHUNK
_INIT_PNGCOMN_THEADERCHUNK:
	.byte	13,12
	.ascii	"THeaderChunk"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_PNGCOMN_THEADERCHUNK
_RTTI_PNGCOMN_THEADERCHUNK:
	.byte	13,12
	.ascii	"THeaderChunk"
	.long	16,7
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_BYTE
	.long	8
	.long	_RTTI_SYSTEM_BYTE
	.long	9
	.long	_RTTI_SYSTEM_BYTE
	.long	10
	.long	_RTTI_SYSTEM_BYTE
	.long	11
	.long	_RTTI_SYSTEM_BYTE
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

