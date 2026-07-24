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
	GLOBAL IIDSTR_$CLASSES_$$_ISTREAMPERSIST
IIDSTR_$CLASSES_$$_ISTREAMPERSIST	DB	38
		DB	"{B8CD12A3-267A-11D4-83DA-00C04F60B2DD}"
