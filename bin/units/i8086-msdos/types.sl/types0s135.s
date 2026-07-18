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
	GLOBAL RTTI_$TYPES_$$_TPOINTERDYNARRAY
RTTI_$TYPES_$$_TPOINTERDYNARRAY	DB	21
		DB	16,"TPointerDynArray"
	DW	2,RTTI_$SYSTEM_$$_POINTER
	DD	-1
	DW	0
	DB	5
		DB	"Types"
EXTERN	RTTI_$SYSTEM_$$_POINTER
