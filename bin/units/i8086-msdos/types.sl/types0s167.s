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
	GLOBAL RTTI_$TYPES_$$_TDUPLICATES
RTTI_$TYPES_$$_TDUPLICATES	DB	3,11
		DB	"TDuplicates"
	DB	5
	DD	0,2
	DW	0
	DB	9
		DB	"dupIgnore"
	DB	9
		DB	"dupAccept"
	DB	8
		DB	"dupError"
	DB	5
		DB	"Types"
	DB	0
