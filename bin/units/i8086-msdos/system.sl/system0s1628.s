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
	GLOBAL RTTI_$SYSTEM_$$_TTEXTLINEBREAKSTYLE
RTTI_$SYSTEM_$$_TTEXTLINEBREAKSTYLE	DB	3,19
		DB	"TTextLineBreakStyle"
	DB	5
	DD	0,2
	DW	0
	DB	6
		DB	"tlbsLF"
	DB	8
		DB	"tlbsCRLF"
	DB	6
		DB	"tlbsCR"
	DB	6
		DB	"System"
	DB	0
