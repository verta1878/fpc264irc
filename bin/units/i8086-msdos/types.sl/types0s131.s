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
	GLOBAL RTTI_$TYPES_$$_TCARDINALDYNARRAY
RTTI_$TYPES_$$_TCARDINALDYNARRAY	DB	21
		DB	17,"TCardinalDynArray"
	DW	4,RTTI_$SYSTEM_$$_LONGWORD
	DD	19
	DW	0
	DB	5
		DB	"Types"
EXTERN	RTTI_$SYSTEM_$$_LONGWORD
