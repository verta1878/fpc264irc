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
	GLOBAL RTTI_$SYSTEM_$$_DEF862
RTTI_$SYSTEM_$$_DEF862	DB	23
		DB	0
	DB	0,2
	DW	0
	DB	1,1
	DW	RTTI_$SYSTEM_$$_VARIANT
	DB	1
		DB	"v"
EXTERN	RTTI_$SYSTEM_$$_VARIANT
