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
	GLOBAL CLASSES$_$TLIST_$__$$_CLEAR
CLASSES$_$TLIST_$__$$_CLEAR:
		push	bp
		mov	bp,sp
		jmp	..@j6050
	ALIGN 2
..@j6049:
		push	word [bp+4]
		push	word [bp+4]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		push	ax
		call	CLASSES$_$TLIST_$__$$_DELETE$SMALLINT
..@j6050:
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		cmp	word [bx+4],0
		jg	..@j6049
		jmp	..@j6051
..@j6051:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TLIST_$__$$_DELETE$SMALLINT
EXTERN	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
