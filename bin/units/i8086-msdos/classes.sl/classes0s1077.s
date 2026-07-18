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
	GLOBAL IIDSTR_$CLASSES_$$_IINTERFACECOMPONENTREFERENCE
IIDSTR_$CLASSES_$$_IINTERFACECOMPONENTREFERENCE	DB	38
		DB	"{3FEEC8E1-E400-4A24-BCAC-1F01476439B1}"
