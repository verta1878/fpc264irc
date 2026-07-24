BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL CRT$_$CRTREAD$TEXTREC_$$_BACKSPACE
CRT$_$CRTREAD$TEXTREC_$$_BACKSPACE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		cmp	word [bx+10],0
		jg	..@j579
		jmp	..@j578
..@j579:
		mov	bx,word [bp+4]
		mov	si,word [bx+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	ax,word [si+10]
		cmp	ax,word [bx+12]
		je	..@j577
		jmp	..@j578
..@j577:
		mov	ax,8
		push	ax
		call	CRT_$$_WRITECHAR$CHAR
		mov	ax,32
		push	ax
		call	CRT_$$_WRITECHAR$CHAR
		mov	ax,8
		push	ax
		call	CRT_$$_WRITECHAR$CHAR
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		dec	word [bx+10]
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		dec	word [bx+12]
..@j578:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CRT_$$_WRITECHAR$CHAR
