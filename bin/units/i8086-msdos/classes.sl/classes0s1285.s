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
	GLOBAL RTTI_$CLASSES_$$_TLISTSORTCOMPARE
RTTI_$CLASSES_$$_TLISTSORTCOMPARE	DB	23,16
		DB	"TListSortCompare"
	DB	0,2
	DW	RTTI_$SYSTEM_$$_SMALLINT
	DB	2,0
	DW	RTTI_$SYSTEM_$$_POINTER
	DB	5
		DB	"Item1"
	DB	0
	DW	RTTI_$SYSTEM_$$_POINTER
	DB	5
		DB	"Item2"
EXTERN	RTTI_$SYSTEM_$$_POINTER
EXTERN	RTTI_$SYSTEM_$$_SMALLINT
