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
	GLOBAL TC_$CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_SIGNATURE
TC_$CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_SIGNATURE	DW	_$CLASSES$_Ld37
EXTERN	_$CLASSES$_Ld37
