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
	GLOBAL RTTI_$CLASSES_$$_TSTRINGLISTSORTCOMPARE
RTTI_$CLASSES_$$_TSTRINGLISTSORTCOMPARE	DB	23,22
		DB	"TStringListSortCompare"
	DB	0,2
	DW	RTTI_$SYSTEM_$$_SMALLINT
	DB	3,8
	DW	RTTI_$CLASSES_$$_TSTRINGLIST
	DB	4
		DB	"List"
	DB	0
	DW	RTTI_$SYSTEM_$$_SMALLINT
	DB	6
		DB	"Index1"
	DB	0
	DW	RTTI_$SYSTEM_$$_SMALLINT
	DB	6
		DB	"Index2"
EXTERN	RTTI_$CLASSES_$$_TSTRINGLIST
EXTERN	RTTI_$SYSTEM_$$_SMALLINT
