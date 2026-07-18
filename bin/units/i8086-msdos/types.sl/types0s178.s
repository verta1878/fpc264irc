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
	GLOBAL RTTI_$TYPES_$$__FILETIME
RTTI_$TYPES_$$__FILETIME	DB	13,9
		DB	"_FILETIME"
	DD	8,2
	DW	RTTI_$SYSTEM_$$_LONGWORD,0,RTTI_$SYSTEM_$$_LONGWORD,4
EXTERN	RTTI_$SYSTEM_$$_LONGWORD
