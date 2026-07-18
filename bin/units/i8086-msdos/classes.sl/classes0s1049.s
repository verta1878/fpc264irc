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
	GLOBAL IIDSTR_$CLASSES_$$_ISTRINGSADAPTER
IIDSTR_$CLASSES_$$_ISTRINGSADAPTER	DB	38
		DB	"{739C2F34-52EC-11D0-9EA6-0020AF3D82DA}"
