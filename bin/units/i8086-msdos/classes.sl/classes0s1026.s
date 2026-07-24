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
	GLOBAL IID_$CLASSES_$$_IFPOBSERVER
IID_$CLASSES_$$_IFPOBSERVER	DD	-1133283606
	DW	6556,19498
	DB	134,132,244,128,95,6,145,202
