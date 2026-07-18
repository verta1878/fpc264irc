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
	GLOBAL RTTI_$SYSTEM_$$_DEF476
RTTI_$SYSTEM_$$_DEF476	DB	23
		DB	0
	DB	0,2
	DW	RTTI_$SYSTEM_$$_PCHAR
	DB	1,0
	DW	RTTI_$SYSTEM_$$_PCHAR
	DB	3
		DB	"Str"
EXTERN	RTTI_$SYSTEM_$$_PCHAR
