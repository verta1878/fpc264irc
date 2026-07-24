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
	GLOBAL RTTI_$CLASSES_$$_TSEEKORIGIN_s2o
RTTI_$CLASSES_$$_TSEEKORIGIN_s2o	DD	3,0
	DW	RTTI_$CLASSES_$$_TSEEKORIGIN+24
	DD	1
	DW	RTTI_$CLASSES_$$_TSEEKORIGIN+36
	DD	2
	DW	RTTI_$CLASSES_$$_TSEEKORIGIN+46
EXTERN	RTTI_$CLASSES_$$_TSEEKORIGIN
