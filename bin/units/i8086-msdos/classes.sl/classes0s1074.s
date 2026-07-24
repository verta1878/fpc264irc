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

SECTION .rodata
	ALIGN 2
	GLOBAL IID_$CLASSES_$$_IVCLCOMOBJECT
IID_$CLASSES_$$_IVCLCOMOBJECT	DD	-528969056
	DW	62767,4559
	DB	189,47,0,32,175,14,91,129
