# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FREETYPEH_FT_IS_SCALABLE$PFT_FACE$$BOOLEAN
_FREETYPEH_FT_IS_SCALABLE$PFT_FACE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	andl	$1,%eax
	cmpl	$1,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_FREETYPEH
_THREADVARLIST_FREETYPEH:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
.globl	_TC_FREETYPEH_FT_ENCODING_MS_SYMBOL
_TC_FREETYPEH_FT_ENCODING_MS_SYMBOL:
	.byte	115,121,109,98

.data
.globl	_TC_FREETYPEH_FT_ENCODING_UNICODE
_TC_FREETYPEH_FT_ENCODING_UNICODE:
	.byte	117,110,105,99

.data
.globl	_TC_FREETYPEH_FT_ENCODING_MS_SJIS
_TC_FREETYPEH_FT_ENCODING_MS_SJIS:
	.byte	115,106,105,115

.data
.globl	_TC_FREETYPEH_FT_ENCODING_MS_GB2312
_TC_FREETYPEH_FT_ENCODING_MS_GB2312:
	.byte	103,98,32,32

.data
.globl	_TC_FREETYPEH_FT_ENCODING_MS_BIG5
_TC_FREETYPEH_FT_ENCODING_MS_BIG5:
	.byte	98,105,103,53

.data
.globl	_TC_FREETYPEH_FT_ENCODING_MS_WANSUNG
_TC_FREETYPEH_FT_ENCODING_MS_WANSUNG:
	.byte	119,97,110,115

.data
.globl	_TC_FREETYPEH_FT_ENCODING_MS_JOHAB
_TC_FREETYPEH_FT_ENCODING_MS_JOHAB:
	.byte	106,111,104,97

.data
.globl	_TC_FREETYPEH_FT_ENCODING_ADOBE_STANDARD
_TC_FREETYPEH_FT_ENCODING_ADOBE_STANDARD:
	.byte	65,68,79,66

.data
.globl	_TC_FREETYPEH_FT_ENCODING_ADOBE_EXPERT
_TC_FREETYPEH_FT_ENCODING_ADOBE_EXPERT:
	.byte	65,68,66,69

.data
.globl	_TC_FREETYPEH_FT_ENCODING_ADOBE_CUSTOM
_TC_FREETYPEH_FT_ENCODING_ADOBE_CUSTOM:
	.byte	65,68,66,67

.data
.globl	_TC_FREETYPEH_FT_ENCODING_ADOBE_LATIN_1
_TC_FREETYPEH_FT_ENCODING_ADOBE_LATIN_1:
	.byte	108,97,116,49

.data
.globl	_TC_FREETYPEH_FT_ENCODING_OLD_LATIN_2
_TC_FREETYPEH_FT_ENCODING_OLD_LATIN_2:
	.byte	108,97,116,50

.data
.globl	_TC_FREETYPEH_FT_ENCODING_APPLE_ROMAN
_TC_FREETYPEH_FT_ENCODING_APPLE_ROMAN:
	.byte	97,114,109,110
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
.globl	_INIT_FREETYPEH_FT_ENCODING
_INIT_FREETYPEH_FT_ENCODING:
	.byte	12
	.ascii	"\013FT_Encoding"
	.long	1,4
	.long	_INIT_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_ENCODING
_RTTI_FREETYPEH_FT_ENCODING:
	.byte	12
	.ascii	"\013FT_Encoding"
	.long	1,4
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_INIT_FREETYPEH_FT_RENDER_MODE
_INIT_FREETYPEH_FT_RENDER_MODE:
	.byte	3,14
	.ascii	"FT_Render_Mode"
	.byte	5
	.long	0,5,0
	.byte	21
	.ascii	"FT_RENDER_MODE_NORMAL"
	.byte	20
	.ascii	"FT_RENDER_MODE_LIGHT"
	.byte	19
	.ascii	"FT_RENDER_MODE_MONO"
	.byte	18
	.ascii	"FT_RENDER_MODE_LCD"
	.byte	20
	.ascii	"FT_RENDER_MODE_LCD_V"
	.byte	18
	.ascii	"FT_RENDER_MODE_MAX"
	.byte	9
	.ascii	"freetypeh"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_RENDER_MODE
_RTTI_FREETYPEH_FT_RENDER_MODE:
	.byte	3,14
	.ascii	"FT_Render_Mode"
	.byte	5
	.long	0,5,0
	.byte	21
	.ascii	"FT_RENDER_MODE_NORMAL"
	.byte	20
	.ascii	"FT_RENDER_MODE_LIGHT"
	.byte	19
	.ascii	"FT_RENDER_MODE_MONO"
	.byte	18
	.ascii	"FT_RENDER_MODE_LCD"
	.byte	20
	.ascii	"FT_RENDER_MODE_LCD_V"
	.byte	18
	.ascii	"FT_RENDER_MODE_MAX"
	.byte	9
	.ascii	"freetypeh"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_RENDER_MODE_s2o
_RTTI_FREETYPEH_FT_RENDER_MODE_s2o:
	.long	6,3
	.long	_RTTI_FREETYPEH_FT_RENDER_MODE+92
	.long	4
	.long	_RTTI_FREETYPEH_FT_RENDER_MODE+111
	.long	1
	.long	_RTTI_FREETYPEH_FT_RENDER_MODE+51
	.long	5
	.long	_RTTI_FREETYPEH_FT_RENDER_MODE+132
	.long	2
	.long	_RTTI_FREETYPEH_FT_RENDER_MODE+72
	.long	0
	.long	_RTTI_FREETYPEH_FT_RENDER_MODE+29

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_RENDER_MODE_o2s
_RTTI_FREETYPEH_FT_RENDER_MODE_o2s:
	.long	0
	.long	_RTTI_FREETYPEH_FT_RENDER_MODE+29
	.long	_RTTI_FREETYPEH_FT_RENDER_MODE+51
	.long	_RTTI_FREETYPEH_FT_RENDER_MODE+72
	.long	_RTTI_FREETYPEH_FT_RENDER_MODE+92
	.long	_RTTI_FREETYPEH_FT_RENDER_MODE+111
	.long	_RTTI_FREETYPEH_FT_RENDER_MODE+132

.const_data
	.align 2
.globl	_INIT_FREETYPEH_FT_UNITVECTOR_
_INIT_FREETYPEH_FT_UNITVECTOR_:
	.byte	13,14
	.ascii	"FT_UnitVector_"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_UNITVECTOR_
_RTTI_FREETYPEH_FT_UNITVECTOR_:
	.byte	13,14
	.ascii	"FT_UnitVector_"
	.long	4,2
	.long	_RTTI_SYSTEM_SMALLINT
	.long	0
	.long	_RTTI_SYSTEM_SMALLINT
	.long	2

.const_data
	.align 2
.globl	_INIT_FREETYPEH_FT_MATRIX
_INIT_FREETYPEH_FT_MATRIX:
	.byte	13,9
	.ascii	"FT_Matrix"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_MATRIX
_RTTI_FREETYPEH_FT_MATRIX:
	.byte	13,9
	.ascii	"FT_Matrix"
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
.globl	_INIT_FREETYPEH_PFT_MATRIX
_INIT_FREETYPEH_PFT_MATRIX:
	.byte	0
	.ascii	"\012PFT_Matrix"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_PFT_MATRIX
_RTTI_FREETYPEH_PFT_MATRIX:
	.byte	0
	.ascii	"\012PFT_Matrix"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_FT_DATA
_INIT_FREETYPEH_FT_DATA:
	.byte	13,7
	.ascii	"FT_Data"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_DEF20
_RTTI_FREETYPEH_DEF20:
	.byte	0
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_DATA
_RTTI_FREETYPEH_FT_DATA:
	.byte	13,7
	.ascii	"FT_Data"
	.long	8,2
	.long	_RTTI_FREETYPEH_DEF20
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4

.const_data
	.align 2
.globl	_INIT_FREETYPEH_FT_GENERIC_FINALIZER
_INIT_FREETYPEH_FT_GENERIC_FINALIZER:
	.byte	23,20
	.ascii	"FT_Generic_Finalizer"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_GENERIC_FINALIZER
_RTTI_FREETYPEH_FT_GENERIC_FINALIZER:
	.byte	23,20
	.ascii	"FT_Generic_Finalizer"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_FT_GENERIC
_INIT_FREETYPEH_FT_GENERIC:
	.byte	13,10
	.ascii	"FT_Generic"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_GENERIC
_RTTI_FREETYPEH_FT_GENERIC:
	.byte	13,10
	.ascii	"FT_Generic"
	.long	8,2
	.long	_RTTI_SYSTEM_POINTER
	.long	0
	.long	_RTTI_FREETYPEH_FT_GENERIC_FINALIZER
	.long	4

.const_data
	.align 2
.globl	_INIT_FREETYPEH_FT_GLYPH_METRICS
_INIT_FREETYPEH_FT_GLYPH_METRICS:
	.byte	13,16
	.ascii	"FT_Glyph_Metrics"
	.long	32,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_GLYPH_METRICS
_RTTI_FREETYPEH_FT_GLYPH_METRICS:
	.byte	13,16
	.ascii	"FT_Glyph_Metrics"
	.long	32,8
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16
	.long	_RTTI_SYSTEM_LONGINT
	.long	20
	.long	_RTTI_SYSTEM_LONGINT
	.long	24
	.long	_RTTI_SYSTEM_LONGINT
	.long	28

.const_data
	.align 2
.globl	_INIT_FREETYPEH_FT_BITMAP_SIZE
_INIT_FREETYPEH_FT_BITMAP_SIZE:
	.byte	13,14
	.ascii	"FT_Bitmap_Size"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_BITMAP_SIZE
_RTTI_FREETYPEH_FT_BITMAP_SIZE:
	.byte	13,14
	.ascii	"FT_Bitmap_Size"
	.long	4,2
	.long	_RTTI_SYSTEM_SMALLINT
	.long	0
	.long	_RTTI_SYSTEM_SMALLINT
	.long	2

.const_data
	.align 2
.globl	_INIT_FREETYPEH_AFT_BITMAP_SIZE
_INIT_FREETYPEH_AFT_BITMAP_SIZE:
	.byte	12
	.ascii	"\017AFT_Bitmap_Size"
	.long	4,1024
	.long	_INIT_FREETYPEH_FT_BITMAP_SIZE
	.long	-1

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_AFT_BITMAP_SIZE
_RTTI_FREETYPEH_AFT_BITMAP_SIZE:
	.byte	12
	.ascii	"\017AFT_Bitmap_Size"
	.long	4,1024
	.long	_RTTI_FREETYPEH_FT_BITMAP_SIZE
	.long	-1

.const_data
	.align 2
.globl	_INIT_FREETYPEH_PFT_BITMAP_SIZE
_INIT_FREETYPEH_PFT_BITMAP_SIZE:
	.byte	0
	.ascii	"\017PFT_Bitmap_Size"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_PFT_BITMAP_SIZE
_RTTI_FREETYPEH_PFT_BITMAP_SIZE:
	.byte	0
	.ascii	"\017PFT_Bitmap_Size"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_FT_VECTOR
_INIT_FREETYPEH_FT_VECTOR:
	.byte	13,9
	.ascii	"FT_Vector"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_VECTOR
_RTTI_FREETYPEH_FT_VECTOR:
	.byte	13,9
	.ascii	"FT_Vector"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4

.const_data
	.align 2
.globl	_INIT_FREETYPEH_PFT_VECTOR
_INIT_FREETYPEH_PFT_VECTOR:
	.byte	0
	.ascii	"\012PFT_Vector"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_PFT_VECTOR
_RTTI_FREETYPEH_PFT_VECTOR:
	.byte	0
	.ascii	"\012PFT_Vector"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_FT_BBOX
_INIT_FREETYPEH_FT_BBOX:
	.byte	13,7
	.ascii	"FT_BBox"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_BBOX
_RTTI_FREETYPEH_FT_BBOX:
	.byte	13,7
	.ascii	"FT_BBox"
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
.globl	_INIT_FREETYPEH_PFT_BBOX
_INIT_FREETYPEH_PFT_BBOX:
	.byte	0
	.ascii	"\010PFT_BBox"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_PFT_BBOX
_RTTI_FREETYPEH_PFT_BBOX:
	.byte	0
	.ascii	"\010PFT_BBox"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_FT_BITMAP
_INIT_FREETYPEH_FT_BITMAP:
	.byte	13,9
	.ascii	"FT_Bitmap"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_BITMAP
_RTTI_FREETYPEH_FT_BITMAP:
	.byte	13,9
	.ascii	"FT_Bitmap"
	.long	24,8
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_POINTER
	.long	12
	.long	_RTTI_SYSTEM_SHORTINT
	.long	16
	.long	_RTTI_SYSTEM_CHAR
	.long	17
	.long	_RTTI_SYSTEM_CHAR
	.long	18
	.long	_RTTI_SYSTEM_POINTER
	.long	20

.const_data
	.align 2
.globl	_INIT_FREETYPEH_FT_OUTLINE
_INIT_FREETYPEH_FT_OUTLINE:
	.byte	13,10
	.ascii	"FT_Outline"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_DEF33
_RTTI_FREETYPEH_DEF33:
	.byte	0
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_OUTLINE
_RTTI_FREETYPEH_FT_OUTLINE:
	.byte	13,10
	.ascii	"FT_Outline"
	.long	20,6
	.long	_RTTI_SYSTEM_SMALLINT
	.long	0
	.long	_RTTI_SYSTEM_SMALLINT
	.long	2
	.long	_RTTI_FREETYPEH_PFT_VECTOR
	.long	4
	.long	_RTTI_SYSTEM_PCHAR
	.long	8
	.long	_RTTI_FREETYPEH_DEF33
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16

.const_data
	.align 2
.globl	_INIT_FREETYPEH_PFT_OUTLINE
_INIT_FREETYPEH_PFT_OUTLINE:
	.byte	0
	.ascii	"\013PFT_Outline"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_PFT_OUTLINE
_RTTI_FREETYPEH_PFT_OUTLINE:
	.byte	0
	.ascii	"\013PFT_Outline"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_FT_OUTLINE_MOVETOFUNC
_INIT_FREETYPEH_FT_OUTLINE_MOVETOFUNC:
	.byte	23,21
	.ascii	"FT_Outline_MoveToFunc"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_OUTLINE_MOVETOFUNC
_RTTI_FREETYPEH_FT_OUTLINE_MOVETOFUNC:
	.byte	23,21
	.ascii	"FT_Outline_MoveToFunc"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_FT_OUTLINE_LINETOFUNC
_INIT_FREETYPEH_FT_OUTLINE_LINETOFUNC:
	.byte	23,21
	.ascii	"FT_Outline_LineToFunc"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_OUTLINE_LINETOFUNC
_RTTI_FREETYPEH_FT_OUTLINE_LINETOFUNC:
	.byte	23,21
	.ascii	"FT_Outline_LineToFunc"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_FT_OUTLINE_CONICTOFUNC
_INIT_FREETYPEH_FT_OUTLINE_CONICTOFUNC:
	.byte	23,22
	.ascii	"FT_Outline_ConicToFunc"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_OUTLINE_CONICTOFUNC
_RTTI_FREETYPEH_FT_OUTLINE_CONICTOFUNC:
	.byte	23,22
	.ascii	"FT_Outline_ConicToFunc"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_FT_OUTLINE_CUBICTOFUNC
_INIT_FREETYPEH_FT_OUTLINE_CUBICTOFUNC:
	.byte	23,22
	.ascii	"FT_Outline_CubicToFunc"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_OUTLINE_CUBICTOFUNC
_RTTI_FREETYPEH_FT_OUTLINE_CUBICTOFUNC:
	.byte	23,22
	.ascii	"FT_Outline_CubicToFunc"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_FT_OUTLINE_FUNCS
_INIT_FREETYPEH_FT_OUTLINE_FUNCS:
	.byte	13,16
	.ascii	"FT_Outline_Funcs"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_OUTLINE_FUNCS
_RTTI_FREETYPEH_FT_OUTLINE_FUNCS:
	.byte	13,16
	.ascii	"FT_Outline_Funcs"
	.long	24,6
	.long	_RTTI_FREETYPEH_FT_OUTLINE_MOVETOFUNC
	.long	0
	.long	_RTTI_FREETYPEH_FT_OUTLINE_LINETOFUNC
	.long	4
	.long	_RTTI_FREETYPEH_FT_OUTLINE_CONICTOFUNC
	.long	8
	.long	_RTTI_FREETYPEH_FT_OUTLINE_CUBICTOFUNC
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16
	.long	_RTTI_SYSTEM_LONGINT
	.long	20

.const_data
	.align 2
.globl	_INIT_FREETYPEH_PFT_OUTLINE_FUNCS
_INIT_FREETYPEH_PFT_OUTLINE_FUNCS:
	.byte	0
	.ascii	"\021PFT_Outline_Funcs"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_PFT_OUTLINE_FUNCS
_RTTI_FREETYPEH_PFT_OUTLINE_FUNCS:
	.byte	0
	.ascii	"\021PFT_Outline_Funcs"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_FT_SIZE_METRICS
_INIT_FREETYPEH_FT_SIZE_METRICS:
	.byte	13,15
	.ascii	"FT_Size_Metrics"
	.long	28,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_FT_SIZE_METRICS
_RTTI_FREETYPEH_FT_SIZE_METRICS:
	.byte	13,15
	.ascii	"FT_Size_Metrics"
	.long	28,8
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16
	.long	_RTTI_SYSTEM_LONGINT
	.long	20
	.long	_RTTI_SYSTEM_LONGINT
	.long	24

.const_data
	.align 2
.globl	_INIT_FREETYPEH_PFT_LIBRARY
_INIT_FREETYPEH_PFT_LIBRARY:
	.byte	0
	.ascii	"\013PFT_Library"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_PFT_LIBRARY
_RTTI_FREETYPEH_PFT_LIBRARY:
	.byte	0
	.ascii	"\013PFT_Library"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_PFT_FACE
_INIT_FREETYPEH_PFT_FACE:
	.byte	0
	.ascii	"\010PFT_Face"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_PFT_FACE
_RTTI_FREETYPEH_PFT_FACE:
	.byte	0
	.ascii	"\010PFT_Face"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_PFT_CHARMAP
_INIT_FREETYPEH_PFT_CHARMAP:
	.byte	0
	.ascii	"\013PFT_Charmap"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_PFT_CHARMAP
_RTTI_FREETYPEH_PFT_CHARMAP:
	.byte	0
	.ascii	"\013PFT_Charmap"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_PPFT_CHARMAP
_INIT_FREETYPEH_PPFT_CHARMAP:
	.byte	0
	.ascii	"\014PPFT_Charmap"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_PPFT_CHARMAP
_RTTI_FREETYPEH_PPFT_CHARMAP:
	.byte	0
	.ascii	"\014PPFT_Charmap"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_PFT_GLYPHSLOT
_INIT_FREETYPEH_PFT_GLYPHSLOT:
	.byte	0
	.ascii	"\015PFT_GlyphSlot"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_PFT_GLYPHSLOT
_RTTI_FREETYPEH_PFT_GLYPHSLOT:
	.byte	0
	.ascii	"\015PFT_GlyphSlot"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_PFT_SUBGLYPH
_INIT_FREETYPEH_PFT_SUBGLYPH:
	.byte	0
	.ascii	"\014PFT_Subglyph"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_PFT_SUBGLYPH
_RTTI_FREETYPEH_PFT_SUBGLYPH:
	.byte	0
	.ascii	"\014PFT_Subglyph"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_PFT_SIZE
_INIT_FREETYPEH_PFT_SIZE:
	.byte	0
	.ascii	"\010PFT_Size"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_PFT_SIZE
_RTTI_FREETYPEH_PFT_SIZE:
	.byte	0
	.ascii	"\010PFT_Size"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_PFT_GLYPH
_INIT_FREETYPEH_PFT_GLYPH:
	.byte	0
	.ascii	"\011PFT_Glyph"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_PFT_GLYPH
_RTTI_FREETYPEH_PFT_GLYPH:
	.byte	0
	.ascii	"\011PFT_Glyph"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_PFT_BITMAPGLYPH
_INIT_FREETYPEH_PFT_BITMAPGLYPH:
	.byte	0
	.ascii	"\017PFT_BitmapGlyph"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_PFT_BITMAPGLYPH
_RTTI_FREETYPEH_PFT_BITMAPGLYPH:
	.byte	0
	.ascii	"\017PFT_BitmapGlyph"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_PFT_OUTLINEGLYPH
_INIT_FREETYPEH_PFT_OUTLINEGLYPH:
	.byte	0
	.ascii	"\020PFT_OutlineGlyph"

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_PFT_OUTLINEGLYPH
_RTTI_FREETYPEH_PFT_OUTLINEGLYPH:
	.byte	0
	.ascii	"\020PFT_OutlineGlyph"

.const_data
	.align 2
.globl	_INIT_FREETYPEH_TFT_LIBRARY
_INIT_FREETYPEH_TFT_LIBRARY:
	.byte	13,11
	.ascii	"TFT_Library"
	.long	0,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_TFT_LIBRARY
_RTTI_FREETYPEH_TFT_LIBRARY:
	.byte	13,11
	.ascii	"TFT_Library"
	.long	0,0

.const_data
	.align 2
.globl	_INIT_FREETYPEH_TFT_CHARMAP
_INIT_FREETYPEH_TFT_CHARMAP:
	.byte	13,11
	.ascii	"TFT_Charmap"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_TFT_CHARMAP
_RTTI_FREETYPEH_TFT_CHARMAP:
	.byte	13,11
	.ascii	"TFT_Charmap"
	.long	12,4
	.long	_RTTI_FREETYPEH_PFT_FACE
	.long	0
	.long	_RTTI_FREETYPEH_FT_ENCODING
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	8
	.long	_RTTI_SYSTEM_WORD
	.long	10

.const_data
	.align 2
.globl	_INIT_FREETYPEH_TFT_SIZE
_INIT_FREETYPEH_TFT_SIZE:
	.byte	13,8
	.ascii	"TFT_Size"
	.long	40,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_TFT_SIZE
_RTTI_FREETYPEH_TFT_SIZE:
	.byte	13,8
	.ascii	"TFT_Size"
	.long	40,3
	.long	_RTTI_FREETYPEH_PFT_FACE
	.long	0
	.long	_RTTI_FREETYPEH_FT_GENERIC
	.long	4
	.long	_RTTI_FREETYPEH_FT_SIZE_METRICS
	.long	12

.const_data
	.align 2
.globl	_INIT_FREETYPEH_TFT_SUBGLYPH
_INIT_FREETYPEH_TFT_SUBGLYPH:
	.byte	13,12
	.ascii	"TFT_Subglyph"
	.long	0,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_TFT_SUBGLYPH
_RTTI_FREETYPEH_TFT_SUBGLYPH:
	.byte	13,12
	.ascii	"TFT_Subglyph"
	.long	0,0

.const_data
	.align 2
.globl	_INIT_FREETYPEH_TFT_GLYPHSLOT
_INIT_FREETYPEH_TFT_GLYPHSLOT:
	.byte	13,13
	.ascii	"TFT_GlyphSlot"
	.long	148,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_TFT_GLYPHSLOT
_RTTI_FREETYPEH_TFT_GLYPHSLOT:
	.byte	13,13
	.ascii	"TFT_GlyphSlot"
	.long	148,19
	.long	_RTTI_FREETYPEH_PFT_LIBRARY
	.long	0
	.long	_RTTI_FREETYPEH_PFT_FACE
	.long	4
	.long	_RTTI_FREETYPEH_PFT_GLYPHSLOT
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_FREETYPEH_FT_GENERIC
	.long	16
	.long	_RTTI_FREETYPEH_FT_GLYPH_METRICS
	.long	24
	.long	_RTTI_SYSTEM_LONGINT
	.long	56
	.long	_RTTI_SYSTEM_LONGINT
	.long	60
	.long	_RTTI_FREETYPEH_FT_VECTOR
	.long	64
	.long	_RTTI_SYSTEM_LONGWORD
	.long	72
	.long	_RTTI_FREETYPEH_FT_BITMAP
	.long	76
	.long	_RTTI_SYSTEM_LONGINT
	.long	100
	.long	_RTTI_SYSTEM_LONGINT
	.long	104
	.long	_RTTI_FREETYPEH_FT_OUTLINE
	.long	108
	.long	_RTTI_SYSTEM_LONGWORD
	.long	128
	.long	_RTTI_FREETYPEH_PFT_SUBGLYPH
	.long	132
	.long	_RTTI_SYSTEM_POINTER
	.long	136
	.long	_RTTI_SYSTEM_LONGINT
	.long	140
	.long	_RTTI_SYSTEM_POINTER
	.long	144

.const_data
	.align 2
.globl	_INIT_FREETYPEH_TFT_FACE
_INIT_FREETYPEH_TFT_FACE:
	.byte	13,8
	.ascii	"TFT_Face"
	.long	96,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_TFT_FACE
_RTTI_FREETYPEH_TFT_FACE:
	.byte	13,8
	.ascii	"TFT_Face"
	.long	96,24
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16
	.long	_RTTI_SYSTEM_PCHAR
	.long	20
	.long	_RTTI_SYSTEM_PCHAR
	.long	24
	.long	_RTTI_SYSTEM_LONGINT
	.long	28
	.long	_RTTI_FREETYPEH_PFT_BITMAP_SIZE
	.long	32
	.long	_RTTI_SYSTEM_LONGINT
	.long	36
	.long	_RTTI_FREETYPEH_PPFT_CHARMAP
	.long	40
	.long	_RTTI_FREETYPEH_FT_GENERIC
	.long	44
	.long	_RTTI_FREETYPEH_FT_BBOX
	.long	52
	.long	_RTTI_SYSTEM_WORD
	.long	68
	.long	_RTTI_SYSTEM_SMALLINT
	.long	70
	.long	_RTTI_SYSTEM_SMALLINT
	.long	72
	.long	_RTTI_SYSTEM_SMALLINT
	.long	74
	.long	_RTTI_SYSTEM_SMALLINT
	.long	76
	.long	_RTTI_SYSTEM_SMALLINT
	.long	78
	.long	_RTTI_SYSTEM_SMALLINT
	.long	80
	.long	_RTTI_SYSTEM_SMALLINT
	.long	82
	.long	_RTTI_FREETYPEH_PFT_GLYPHSLOT
	.long	84
	.long	_RTTI_FREETYPEH_PFT_SIZE
	.long	88
	.long	_RTTI_FREETYPEH_PFT_CHARMAP
	.long	92

.const_data
	.align 2
.globl	_INIT_FREETYPEH_TFT_GLYPH
_INIT_FREETYPEH_TFT_GLYPH:
	.byte	13,9
	.ascii	"TFT_Glyph"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_TFT_GLYPH
_RTTI_FREETYPEH_TFT_GLYPH:
	.byte	13,9
	.ascii	"TFT_Glyph"
	.long	20,4
	.long	_RTTI_FREETYPEH_PFT_LIBRARY
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8
	.long	_RTTI_FREETYPEH_FT_VECTOR
	.long	12

.const_data
	.align 2
.globl	_INIT_FREETYPEH_TFT_BITMAPGLYPH
_INIT_FREETYPEH_TFT_BITMAPGLYPH:
	.byte	13,15
	.ascii	"TFT_BitmapGlyph"
	.long	52,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_TFT_BITMAPGLYPH
_RTTI_FREETYPEH_TFT_BITMAPGLYPH:
	.byte	13,15
	.ascii	"TFT_BitmapGlyph"
	.long	52,4
	.long	_RTTI_FREETYPEH_TFT_GLYPH
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	20
	.long	_RTTI_SYSTEM_LONGINT
	.long	24
	.long	_RTTI_FREETYPEH_FT_BITMAP
	.long	28

.const_data
	.align 2
.globl	_INIT_FREETYPEH_TFT_OUTLINEGLYPH
_INIT_FREETYPEH_TFT_OUTLINEGLYPH:
	.byte	13,16
	.ascii	"TFT_OutlineGlyph"
	.long	40,0

.const_data
	.align 2
.globl	_RTTI_FREETYPEH_TFT_OUTLINEGLYPH
_RTTI_FREETYPEH_TFT_OUTLINEGLYPH:
	.byte	13,16
	.ascii	"TFT_OutlineGlyph"
	.long	40,2
	.long	_RTTI_FREETYPEH_TFT_GLYPH
	.long	0
	.long	_RTTI_FREETYPEH_FT_OUTLINE
	.long	20
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

