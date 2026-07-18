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
	GLOBAL RTTI_$GETOPTS_$$_ORDERINGS
RTTI_$GETOPTS_$$_ORDERINGS	DB	3,9
		DB	"Orderings"
	DB	5
	DD	0,2
	DW	0
	DB	13
		DB	"require_order"
	DB	7
		DB	"permute"
	DB	15
		DB	"return_in_order"
	DB	7
		DB	"getopts"
	DB	0
