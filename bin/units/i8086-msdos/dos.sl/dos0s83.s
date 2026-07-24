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
	GLOBAL RTTI_$DOS_$$_DATETIME
RTTI_$DOS_$$_DATETIME	DB	13,8
		DB	"DateTime"
	DD	12,6
	DW	RTTI_$SYSTEM_$$_WORD,0,RTTI_$SYSTEM_$$_WORD,2,RTTI_$SYSTEM_$$_WORD,4,RTTI_$SYSTEM_$$_WORD
	DW	6,RTTI_$SYSTEM_$$_WORD,8,RTTI_$SYSTEM_$$_WORD,10
EXTERN	RTTI_$SYSTEM_$$_WORD
