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
	GLOBAL RTTI_$CLASSES_$$_IFPOBSERVED
RTTI_$CLASSES_$$_IFPOBSERVED	DB	22,11
		DB	"IFPObserved"
	DW	0
	DB	9
	DD	1715232828
	DW	16188,19653
	DB	130,60,172,128,121,249,121,229,7
		DB	"Classes"
	DB	38
		DB	"{663C603C-3F3C-4CC5-823C-AC8079F979E5}"
