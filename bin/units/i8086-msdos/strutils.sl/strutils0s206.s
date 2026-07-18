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
	GLOBAL RTTI_$STRUTILS_$$_TSTRINGREPLACEALGORITHM
RTTI_$STRUTILS_$$_TSTRINGREPLACEALGORITHM	DB	3,23
		DB	"TStringReplaceAlgorithm"
	DB	5
	DD	0,2
	DW	0
	DB	10
		DB	"sraDefault"
	DB	12
		DB	"sraManySmall"
	DB	13
		DB	"sraBoyerMoore"
	DB	8
		DB	"strutils"
	DB	0
