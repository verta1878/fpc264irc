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
	GLOBAL RTTI_$SYSTEM_$$_PUCS4CHAR
RTTI_$SYSTEM_$$_PUCS4CHAR	DB	29,9
		DB	"PUCS4Char"
	DW	RTTI_$SYSTEM_$$_UCS4CHAR
EXTERN	RTTI_$SYSTEM_$$_UCS4CHAR
