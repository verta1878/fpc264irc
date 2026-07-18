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
	GLOBAL RTTI_$CLASSES_$$_DEF1034_o2s
RTTI_$CLASSES_$$_DEF1034_o2s	DD	0
	DW	RTTI_$CLASSES_$$_DEF1034+13,RTTI_$CLASSES_$$_DEF1034+27,RTTI_$CLASSES_$$_DEF1034+44
	DW	RTTI_$CLASSES_$$_DEF1034+59
EXTERN	RTTI_$CLASSES_$$_DEF1034
