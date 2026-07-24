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
	GLOBAL RTTI_$SYSUTILS_$$_TFLOATFORMAT
RTTI_$SYSUTILS_$$_TFLOATFORMAT	DB	3,12
		DB	"TFloatFormat"
	DB	5
	DD	0,4
	DW	0
	DB	9
		DB	"ffGeneral"
	DB	10
		DB	"ffExponent"
	DB	7
		DB	"ffFixed"
	DB	8
		DB	"ffNumber"
	DB	10
		DB	"ffCurrency"
	DB	8
		DB	"sysutils"
	DB	0
