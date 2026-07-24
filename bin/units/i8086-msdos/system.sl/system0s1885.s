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
	GLOBAL RTTI_$SYSTEM_$$_DEF1446
RTTI_$SYSTEM_$$_DEF1446	DB	23
		DB	0
	DB	0,2
	DW	RTTI_$SYSTEM_$$_POINTER
	DB	2,1
	DW	RTTI_$SYSTEM_$$_POINTER
	DB	1
		DB	"p"
	DB	0
	DW	RTTI_$SYSTEM_$$_WORD
	DB	4
		DB	"Size"
EXTERN	RTTI_$SYSTEM_$$_WORD
EXTERN	RTTI_$SYSTEM_$$_POINTER
