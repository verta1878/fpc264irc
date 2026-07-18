BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION data class=data
	ALIGN 2
	GLOBAL RTTI_$STRUTILS_$$_TROMANCONVERSIONSTRICTNESS
RTTI_$STRUTILS_$$_TROMANCONVERSIONSTRICTNESS	DB	3,26
		DB	"TRomanConversionStrictness"
	DB	5
	DD	0,2
	DW	0
	DB	9
		DB	"rcsStrict"
	DB	10
		DB	"rcsRelaxed"
	DB	11
		DB	"rcsDontCare"
	DB	8
		DB	"strutils"
	DB	0
