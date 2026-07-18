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
	GLOBAL RTTI_$TYPES_$$_TDIRECTION
RTTI_$TYPES_$$_TDIRECTION	DB	3,10
		DB	"TDirection"
	DB	5
	DD	0,1
	DW	0
	DB	13
		DB	"FromBeginning"
	DB	7
		DB	"FromEnd"
	DB	5
		DB	"Types"
	DB	0
