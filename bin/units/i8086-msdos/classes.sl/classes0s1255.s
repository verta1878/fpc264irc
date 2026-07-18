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
	GLOBAL RTTI_$CLASSES_$$_TFPOBSERVEDOPERATION
RTTI_$CLASSES_$$_TFPOBSERVEDOPERATION	DB	3,20
		DB	"TFPObservedOperation"
	DB	5
	DD	0,4
	DW	0
	DB	8
		DB	"ooChange"
	DB	6
		DB	"ooFree"
	DB	9
		DB	"ooAddItem"
	DB	12
		DB	"ooDeleteItem"
	DB	8
		DB	"ooCustom"
	DB	7
		DB	"Classes"
	DB	0
