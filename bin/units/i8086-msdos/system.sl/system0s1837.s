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
	GLOBAL RTTI_$SYSTEM_$$_DEF850
RTTI_$SYSTEM_$$_DEF850	DB	23
		DB	0
	DB	0,2
	DW	0
	DB	2,1
	DW	RTTI_$SYSTEM_$$_VARIANT
	DB	4
		DB	"dest"
	DB	2
	DW	RTTI_$SYSTEM_$$_ANSISTRING
	DB	6
		DB	"source"
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING
EXTERN	RTTI_$SYSTEM_$$_VARIANT
