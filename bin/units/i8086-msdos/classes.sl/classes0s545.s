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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_WRITELEFT$TWRITER
CLASSES$_$TCOMPONENT_$__$$_WRITELEFT$TWRITER:
		push	bp
		mov	bp,sp
		push	word [bp+4]
		mov	bx,word [bp+6]
		mov	ax,word [bx+16]
		mov	dx,0
		push	dx
		push	ax
		call	CLASSES$_$TWRITER_$__$$_WRITEINTEGER$LONGINT
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEINTEGER$LONGINT
