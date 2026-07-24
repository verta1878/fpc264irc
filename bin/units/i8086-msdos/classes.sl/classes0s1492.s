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
	GLOBAL RTTI_$CLASSES_$$_TOBJECTTEXTENCODING
RTTI_$CLASSES_$$_TOBJECTTEXTENCODING	DB	3,19
		DB	"TObjectTextEncoding"
	DB	5
	DD	0,1
	DW	0
	DB	6
		DB	"oteDFM"
	DB	6
		DB	"oteLFM"
	DB	7
		DB	"Classes"
	DB	0
