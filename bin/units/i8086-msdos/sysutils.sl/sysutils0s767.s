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
	GLOBAL RTTI_$SYSUTILS_$$_TFLOATVALUE
RTTI_$SYSUTILS_$$_TFLOATVALUE	DB	3,11
		DB	"TFloatValue"
	DB	5
	DD	0,5
	DW	0
	DB	10
		DB	"fvExtended"
	DB	10
		DB	"fvCurrency"
	DB	8
		DB	"fvSingle"
	DB	6
		DB	"fvReal"
	DB	8
		DB	"fvDouble"
	DB	6
		DB	"fvComp"
	DB	8
		DB	"sysutils"
	DB	0
