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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_REMOVEFREENOTIFICATION$TCOMPONENT
CLASSES$_$TCOMPONENT_$__$$_REMOVEFREENOTIFICATION$TCOMPONENT:
		push	bp
		mov	bp,sp
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TCOMPONENT_$__$$_REMOVENOTIFICATION$TCOMPONENT
		push	word [bp+4]
		push	word [bp+6]
		call	CLASSES$_$TCOMPONENT_$__$$_REMOVENOTIFICATION$TCOMPONENT
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TCOMPONENT_$__$$_REMOVENOTIFICATION$TCOMPONENT
