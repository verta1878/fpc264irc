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
	GLOBAL RTTI_$SYSUTILS_$$_DEF1515
RTTI_$SYSUTILS_$$_DEF1515	DB	12
		DB	0
	DW	2,1,RTTI_$SYSTEM_$$_ANSISTRING
	DB	1
	DW	RTTI_$SYSTEM_$$_LONGINT
EXTERN	RTTI_$SYSTEM_$$_LONGINT
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING
