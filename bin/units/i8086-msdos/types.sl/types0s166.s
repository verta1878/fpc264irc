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
	GLOBAL RTTI_$TYPES_$$_TRECTF
RTTI_$TYPES_$$_TRECTF	DB	13,6
		DB	"TRectF"
	DD	16,6
	DW	RTTI_$SYSTEM_$$_SINGLE,0,RTTI_$SYSTEM_$$_SINGLE,4,RTTI_$SYSTEM_$$_SINGLE
	DW	8,RTTI_$SYSTEM_$$_SINGLE,12,RTTI_$TYPES_$$_TPOINTF,0,RTTI_$TYPES_$$_TPOINTF
	DW	8
EXTERN	RTTI_$TYPES_$$_TPOINTF
EXTERN	RTTI_$SYSTEM_$$_SINGLE
