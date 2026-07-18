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
	GLOBAL OBJECTS$_$TSTREAM_$__$$_STRWRITE$PCHAR
OBJECTS$_$TSTREAM_$__$$_STRWRITE$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-2],0
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jne	..@j499
		jmp	..@j500
..@j499:
		jmp	..@j502
	ALIGN 2
..@j501:
		inc	word [bp-2]
..@j502:
		mov	bx,word [bp-4]
		mov	si,word [bp-2]
		cmp	byte [bx+si],0
		jne	..@j501
		jmp	..@j503
..@j503:
..@j500:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-2]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		cmp	word [bp+4],0
		jne	..@j510
		jmp	..@j511
..@j510:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-2]
		mov	dx,0
		push	dx
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
..@j511:
		mov	sp,bp
		pop	bp
		ret	4
