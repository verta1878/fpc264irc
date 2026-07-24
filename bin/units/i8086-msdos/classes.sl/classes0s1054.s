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
	GLOBAL IID_$CLASSES_$$_ISTREAMPERSIST
IID_$CLASSES_$$_ISTREAMPERSIST	DD	-1194519901
	DW	9850,4564
	DB	131,218,0,192,79,96,178,221
