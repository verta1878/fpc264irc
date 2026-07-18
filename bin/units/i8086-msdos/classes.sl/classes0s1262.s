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
	GLOBAL RTTI_$CLASSES_$$_DEF1479
RTTI_$CLASSES_$$_DEF1479	DB	21
		DB	0
	DW	1,RTTI_$SYSTEM_$$_BYTE
	DD	17
	DW	0
	DB	7
		DB	"Classes"
EXTERN	RTTI_$SYSTEM_$$_BYTE
