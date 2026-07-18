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
	GLOBAL RTTI_$CLASSES_$$_TSEEKORIGIN
RTTI_$CLASSES_$$_TSEEKORIGIN	DB	3,11
		DB	"TSeekOrigin"
	DB	5
	DD	0,2
	DW	0
	DB	11
		DB	"soBeginning"
	DB	9
		DB	"soCurrent"
	DB	5
		DB	"soEnd"
	DB	7
		DB	"Classes"
	DB	0
