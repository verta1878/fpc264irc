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
	GLOBAL RTTI_$SYSUTILS_$$_TINTEGERSET
RTTI_$SYSUTILS_$$_TINTEGERSET	DB	5,11
		DB	"TIntegerSet"
	DB	3
	DW	RTTI_$SYSUTILS_$$_DEF354
EXTERN	RTTI_$SYSUTILS_$$_DEF354
