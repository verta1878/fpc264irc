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
	GLOBAL CLASSES$_$TCUSTOMMEMORYSTREAM_$__$$_SAVETOSTREAM$TSTREAM
CLASSES$_$TCUSTOMMEMORYSTREAM_$__$$_SAVETOSTREAM$TSTREAM:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		cmp	word [bx+4],0
		jg	..@j1757
		jmp	..@j1758
..@j1757:
		push	word [bp+4]
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		cwd
		push	dx
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
..@j1758:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
