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
	GLOBAL RTTI_$TYPINFO_$$_TFLOATTYPE
RTTI_$TYPINFO_$$_TFLOATTYPE	DB	3,10
		DB	"TFloatType"
	DB	1
	DD	0,4
	DW	0
	DB	8
		DB	"ftSingle"
	DB	8
		DB	"ftDouble"
	DB	10
		DB	"ftExtended"
	DB	6
		DB	"ftComp"
	DB	6
		DB	"ftCurr"
	DB	7
		DB	"typinfo"
	DB	0
