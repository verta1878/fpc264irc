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
	GLOBAL THREADVARLIST_$CLASSES
THREADVARLIST_$CLASSES	DW	U_$CLASSES_$$_CURRENTTHREADVAR
	DD	2
	DW	U_$CLASSES_$$_GLOBALLOADED
	DD	2
	DW	U_$CLASSES_$$_GLOBALLISTS
	DD	2
	DW	0
; End asmlist al_globals
; Begin asmlist al_const
EXTERN	U_$CLASSES_$$_GLOBALLISTS
EXTERN	U_$CLASSES_$$_GLOBALLOADED
EXTERN	U_$CLASSES_$$_CURRENTTHREADVAR
