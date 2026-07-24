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
	GLOBAL RTTI_$UCOMPLEX_$$_COMPLEX
RTTI_$UCOMPLEX_$$_COMPLEX	DB	13,7
		DB	"complex"
	DD	16,2
	DW	RTTI_$SYSTEM_$$_REAL,0,RTTI_$SYSTEM_$$_REAL,8
EXTERN	RTTI_$SYSTEM_$$_REAL
