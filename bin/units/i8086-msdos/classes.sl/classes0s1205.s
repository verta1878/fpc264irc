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
	GLOBAL RTTI_$CLASSES_$$_TBIDIMODE
RTTI_$CLASSES_$$_TBIDIMODE	DB	3,9
		DB	"TBiDiMode"
	DB	5
	DD	0,3
	DW	0
	DB	13
		DB	"bdLeftToRight"
	DB	13
		DB	"bdRightToLeft"
	DB	20
		DB	"bdRightToLeftNoAlign"
	DB	24
		DB	"bdRightToLeftReadingOnly"
	DB	7
		DB	"Classes"
	DB	0
