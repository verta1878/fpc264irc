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
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_SETSORTSTYLE$TSTRINGSSORTSTYLE
CLASSES$_$TSTRINGLIST_$__$$_SETSORTSTYLE$TSTRINGSSORTSTYLE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		mov	dx,word [bx+39]
		mov	ax,word [bx+41]
		cmp	dx,word [bp+4]
		je	..@j9446
		jmp	..@j9447
..@j9446:
		jmp	..@j9444
..@j9447:
		cmp	word [bp+4],2
		je	..@j9448
		jmp	..@j9449
..@j9448:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+134]
		call	ax
..@j9449:
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+39],ax
		mov	ax,word [bp+6]
		mov	word [bx+41],ax
..@j9444:
		mov	sp,bp
		pop	bp
		ret	6
