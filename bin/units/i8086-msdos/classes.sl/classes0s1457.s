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
	GLOBAL RTTI_$CLASSES_$$_DEF1034_s2o
RTTI_$CLASSES_$$_DEF1034_s2o	DD	4,1
	DW	RTTI_$CLASSES_$$_DEF1034+27
	DD	0
	DW	RTTI_$CLASSES_$$_DEF1034+13
	DD	2
	DW	RTTI_$CLASSES_$$_DEF1034+44
	DD	3
	DW	RTTI_$CLASSES_$$_DEF1034+59
EXTERN	RTTI_$CLASSES_$$_DEF1034
