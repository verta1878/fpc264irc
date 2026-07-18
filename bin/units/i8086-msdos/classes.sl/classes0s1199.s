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
	GLOBAL RTTI_$CLASSES_$$_TALIGNMENT
RTTI_$CLASSES_$$_TALIGNMENT	DB	3,10
		DB	"TAlignment"
	DB	5
	DD	0,2
	DW	0
	DB	13
		DB	"taLeftJustify"
	DB	14
		DB	"taRightJustify"
	DB	8
		DB	"taCenter"
	DB	7
		DB	"Classes"
	DB	0
