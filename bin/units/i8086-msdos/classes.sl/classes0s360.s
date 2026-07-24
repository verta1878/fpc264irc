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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_ENDUPDATE
CLASSES$_$TSTRINGS_$__$$_ENDUPDATE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		cmp	word [bx+10],0
		jg	..@j8377
		jmp	..@j8378
..@j8377:
		mov	bx,word [bp+4]
		dec	word [bx+10]
..@j8378:
		mov	bx,word [bp+4]
		cmp	word [bx+10],0
		je	..@j8379
		jmp	..@j8380
..@j8379:
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+78]
		call	ax
..@j8380:
		mov	sp,bp
		pop	bp
		ret	2
