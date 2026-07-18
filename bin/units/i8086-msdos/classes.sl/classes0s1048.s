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
	GLOBAL IID_$CLASSES_$$_ISTRINGSADAPTER
IID_$CLASSES_$$_ISTRINGSADAPTER	DD	1939615540
	DW	21228,4560
	DB	158,166,0,32,175,61,130,218
