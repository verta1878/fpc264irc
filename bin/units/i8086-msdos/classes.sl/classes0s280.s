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
	GLOBAL CLASSES$_$TLIST_$__$$_MOVE$SMALLINT$SMALLINT
CLASSES$_$TLIST_$__$$_MOVE$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		push	word [bx+2]
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_MOVE$SMALLINT$SMALLINT
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TFPLIST_$__$$_MOVE$SMALLINT$SMALLINT
