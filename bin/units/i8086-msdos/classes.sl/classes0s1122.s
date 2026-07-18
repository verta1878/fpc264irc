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
	GLOBAL TC_$CLASSES_$$_TOKNAMES
TC_$CLASSES_$$_TOKNAMES	DW	_$CLASSES$_Ld3,_$CLASSES$_Ld4,_$CLASSES$_Ld5,_$CLASSES$_Ld6,_$CLASSES$_Ld7
	DW	_$CLASSES$_Ld8
EXTERN	_$CLASSES$_Ld8
EXTERN	_$CLASSES$_Ld7
EXTERN	_$CLASSES$_Ld6
EXTERN	_$CLASSES$_Ld5
EXTERN	_$CLASSES$_Ld4
EXTERN	_$CLASSES$_Ld3
