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
	GLOBAL TYPES$_$TRECT_$__$$_ISEMPTY$$BOOLEAN
TYPES$_$TRECT_$__$$_ISEMPTY$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+8]
		mov	dx,word [bx+10]
		cmp	dx,word [si+2]
		jl	..@j375
		jg	..@j377
		cmp	ax,word [si]
		jbe	..@j375
		jmp	..@j377
		jmp	..@j377
..@j377:
		mov	si,word [bp+4]
		mov	bx,word [bp+4]
		mov	dx,word [si+12]
		mov	ax,word [si+14]
		cmp	ax,word [bx+6]
		jl	..@j375
		jg	..@j376
		cmp	dx,word [bx+4]
		jbe	..@j375
		jmp	..@j376
		jmp	..@j376
..@j375:
		mov	byte [bp-1],1
		jmp	..@j378
..@j376:
		mov	byte [bp-1],0
..@j378:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
