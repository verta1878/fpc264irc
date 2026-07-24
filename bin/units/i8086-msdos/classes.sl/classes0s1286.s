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
	GLOBAL RTTI_$CLASSES_$$_TLISTASSIGNOP
RTTI_$CLASSES_$$_TLISTASSIGNOP	DB	3,13
		DB	"TListAssignOp"
	DB	5
	DD	0,5
	DW	0
	DB	6
		DB	"laCopy"
	DB	5
		DB	"laAnd"
	DB	4
		DB	"laOr"
	DB	5
		DB	"laXor"
	DB	11
		DB	"laSrcUnique"
	DB	12
		DB	"laDestUnique"
	DB	7
		DB	"Classes"
	DB	0
