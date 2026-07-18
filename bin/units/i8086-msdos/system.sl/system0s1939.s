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
	GLOBAL RTTI_$SYSTEM_$$_DEF1583
RTTI_$SYSTEM_$$_DEF1583	DB	23
		DB	0
	DB	0,2
	DW	RTTI_$SYSTEM_$$_LONGBOOL
	DB	1,0
	DW	RTTI_$SYSTEM_$$_WORD
	DB	7
		DB	"ResData"
EXTERN	RTTI_$SYSTEM_$$_WORD
EXTERN	RTTI_$SYSTEM_$$_LONGBOOL
