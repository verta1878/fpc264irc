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
	GLOBAL RTTI_$TYPES_$$_TSMALLPOINT
RTTI_$TYPES_$$_TSMALLPOINT	DB	13,11
		DB	"TSmallPoint"
	DD	4,2
	DW	RTTI_$SYSTEM_$$_SMALLINT,0,RTTI_$SYSTEM_$$_SMALLINT,2
EXTERN	RTTI_$SYSTEM_$$_SMALLINT
