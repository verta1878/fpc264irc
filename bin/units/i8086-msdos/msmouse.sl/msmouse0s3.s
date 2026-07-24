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
	GLOBAL MSMOUSE_$$_DONEMOUSE
MSMOUSE_$$_DONEMOUSE:
		push	bp
		mov	bp,sp
		call	MOUSE_$$_DONEMOUSE
		mov	sp,bp
		pop	bp
		ret
EXTERN	MOUSE_$$_DONEMOUSE
