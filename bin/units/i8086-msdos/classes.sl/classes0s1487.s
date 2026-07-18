BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .data
	ALIGN 2
	GLOBAL RTTI_$CLASSES_$$_TINTTOIDENT
RTTI_$CLASSES_$$_TINTTOIDENT	DB	23,11
		DB	"TIntToIdent"
	DB	0,2
	DW	RTTI_$SYSTEM_$$_BOOLEAN
	DB	2,0
	DW	RTTI_$SYSTEM_$$_LONGINT
	DB	3
		DB	"Int"
	DB	1
	DW	RTTI_$SYSTEM_$$_ANSISTRING
	DB	5
		DB	"Ident"
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING
EXTERN	RTTI_$SYSTEM_$$_LONGINT
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN
