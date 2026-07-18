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
	GLOBAL RTTI_$SYSUTILS_$$_TSYSTEMTIME
RTTI_$SYSUTILS_$$_TSYSTEMTIME	DB	13,11
		DB	"TSystemTime"
	DD	16,8
	DW	RTTI_$SYSTEM_$$_WORD,0,RTTI_$SYSTEM_$$_WORD,2,RTTI_$SYSTEM_$$_WORD,4,RTTI_$SYSTEM_$$_WORD
	DW	6,RTTI_$SYSTEM_$$_WORD,8,RTTI_$SYSTEM_$$_WORD,10,RTTI_$SYSTEM_$$_WORD,12
	DW	RTTI_$SYSTEM_$$_WORD,14
EXTERN	RTTI_$SYSTEM_$$_WORD
