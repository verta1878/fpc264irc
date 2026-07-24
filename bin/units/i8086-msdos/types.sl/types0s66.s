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
	GLOBAL TYPES_$$_EQUALRECT$TRECT$TRECT$$BOOLEAN
TYPES_$$_EQUALRECT$TRECT$TRECT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	dx,word [si]
		mov	ax,word [si+2]
		cmp	ax,word [bx+2]
		jne	..@j558
		cmp	dx,word [bx]
		jne	..@j558
		jmp	..@j561
		jmp	..@j558
..@j561:
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	dx,word [si+8]
		mov	ax,word [si+10]
		cmp	ax,word [bx+10]
		jne	..@j558
		cmp	dx,word [bx+8]
		jne	..@j558
		jmp	..@j560
		jmp	..@j558
..@j560:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [bx+4]
		mov	dx,word [bx+6]
		cmp	dx,word [si+6]
		jne	..@j558
		cmp	ax,word [si+4]
		jne	..@j558
		jmp	..@j559
		jmp	..@j558
..@j559:
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	dx,word [si+12]
		mov	ax,word [si+14]
		cmp	ax,word [bx+14]
		jne	..@j558
		cmp	dx,word [bx+12]
		jne	..@j558
		jmp	..@j557
		jmp	..@j558
..@j557:
		mov	byte [bp-1],1
		jmp	..@j562
..@j558:
		mov	byte [bp-1],0
..@j562:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
