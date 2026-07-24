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
	GLOBAL IID_$CLASSES_$$_IDESIGNERNOTIFY
IID_$CLASSES_$$_IDESIGNERNOTIFY	DD	-1183717369
	DW	58278,4561
	DB	170,177,0,192,79,177,111,188
