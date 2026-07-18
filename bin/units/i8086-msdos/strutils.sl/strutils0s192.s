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
	GLOBAL RTTI_$STRUTILS_$$_TSTRINGSEARCHOPTION
RTTI_$STRUTILS_$$_TSTRINGSEARCHOPTION	DB	3,19
		DB	"TStringSearchOption"
	DB	5
	DD	0,2
	DW	0
	DB	6
		DB	"soDown"
	DB	11
		DB	"soMatchCase"
	DB	11
		DB	"soWholeWord"
	DB	8
		DB	"strutils"
	DB	0
