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
	GLOBAL IIDSTR_$CLASSES_$$_IINTERFACELIST
IIDSTR_$CLASSES_$$_IINTERFACELIST	DB	38
		DB	"{285DEA8A-B865-11D1-AAA7-00C04FB17A72}"
