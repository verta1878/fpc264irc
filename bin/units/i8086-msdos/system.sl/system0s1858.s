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
	GLOBAL RTTI_$SYSTEM_$$_DEF871
RTTI_$SYSTEM_$$_DEF871	DB	23
		DB	0
	DB	0,1
	DW	RTTI_$SYSTEM_$$_VARIANT
	DB	3,2
	DW	RTTI_$SYSTEM_$$_VARIANT
	DB	1
		DB	"a"
	DB	0
	DW	RTTI_$SYSTEM_$$_SMALLINT
	DB	10
		DB	"indexcount"
	DB	0
	DW	RTTI_$SYSTEM_$$_PLONGINT
	DB	7
		DB	"indices"
EXTERN	RTTI_$SYSTEM_$$_PLONGINT
EXTERN	RTTI_$SYSTEM_$$_SMALLINT
EXTERN	RTTI_$SYSTEM_$$_VARIANT
