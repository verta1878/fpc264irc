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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_WRITESTATE$TWRITER
CLASSES$_$TCOMPONENT_$__$$_WRITESTATE$TWRITER:
		push	bp
		mov	bp,sp
		push	word [bp+4]
		push	word [bp+6]
		call	CLASSES$_$TWRITER_$__$$_WRITECOMPONENTDATA$TCOMPONENT
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TWRITER_$__$$_WRITECOMPONENTDATA$TCOMPONENT
