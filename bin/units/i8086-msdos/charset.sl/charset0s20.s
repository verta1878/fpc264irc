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
	GLOBAL CHARSET_$$_GETUNICODE$CHAR$PUNICODEMAP$$WORD
CHARSET_$$_GETUNICODE$CHAR$PUNICODEMAP$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bp+6]
		mov	dh,0
		cmp	ax,word [bx+27]
		jl	..@j787
		jg	..@j788
		cmp	dx,word [bx+25]
		jbe	..@j787
		jmp	..@j788
		jmp	..@j788
..@j787:
		mov	bx,word [bp+4]
		mov	bx,word [bx+23]
		mov	al,byte [bp+6]
		mov	ah,0
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si]
		mov	word [bp-2],ax
		jmp	..@j791
..@j788:
		mov	word [bp-2],0
..@j791:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
