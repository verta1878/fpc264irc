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
	GLOBAL RTTI_$TYPINFO_$$_TORDTYPE
RTTI_$TYPINFO_$$_TORDTYPE	DB	3,8
		DB	"TOrdType"
	DB	1
	DD	0,5
	DW	0
	DB	7
		DB	"otSByte"
	DB	7
		DB	"otUByte"
	DB	7
		DB	"otSWord"
	DB	7
		DB	"otUWord"
	DB	7
		DB	"otSLong"
	DB	7
		DB	"otULong"
	DB	7
		DB	"typinfo"
	DB	0
