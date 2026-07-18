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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_READSTATE$TREADER
CLASSES$_$TCOMPONENT_$__$$_READSTATE$TREADER:
		push	bp
		mov	bp,sp
		push	word [bp+4]
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READDATA$TCOMPONENT
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TREADER_$__$$_READDATA$TCOMPONENT
