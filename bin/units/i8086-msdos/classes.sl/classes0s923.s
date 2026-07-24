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

SECTION .text
	ALIGN 2
	GLOBAL INIT$_$CLASSES
INIT$_$CLASSES:
	GLOBAL _CLASSES_$$_init$
_CLASSES_$$_init$:
		push	bp
		mov	bp,sp
		call	CLASSES_$$_COMMONINIT
		mov	sp,bp
		pop	bp
		ret
EXTERN	CLASSES_$$_COMMONINIT
