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
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_SETUPDATESTATE$BOOLEAN
CLASSES$_$TSTRINGLIST_$__$$_SETUPDATESTATE$BOOLEAN:
		push	bp
		mov	bp,sp
		cmp	byte [bp+4],0
		jne	..@j9284
		jmp	..@j9285
..@j9284:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+124]
		call	ax
		jmp	..@j9288
..@j9285:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+122]
		call	ax
..@j9288:
		mov	sp,bp
		pop	bp
		ret	4
