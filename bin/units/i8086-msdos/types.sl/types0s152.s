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
	GLOBAL RTTI_$TYPES_$$_TSIZE
RTTI_$TYPES_$$_TSIZE	DB	13,5
		DB	"TSize"
	DD	8,2
	DW	RTTI_$SYSTEM_$$_LONGINT,0,RTTI_$SYSTEM_$$_LONGINT,4
EXTERN	RTTI_$SYSTEM_$$_LONGINT
