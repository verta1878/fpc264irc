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
	GLOBAL IID_$CLASSES_$$_IINTERFACELIST
IID_$CLASSES_$$_IINTERFACELIST	DD	677243530
	DW	47205,4561
	DB	170,167,0,192,79,177,122,114
