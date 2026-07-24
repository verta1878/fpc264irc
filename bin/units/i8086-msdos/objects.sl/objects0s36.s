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
	GLOBAL OBJECTS$_$TSTREAM_$__$$_SEEK$LONGINT
OBJECTS$_$TSTREAM_$__$$_SEEK$LONGINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		cmp	word [bx+2],0
		je	..@j476
		jmp	..@j477
..@j476:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jl	..@j478
		jg	..@j479
		cmp	dx,0
		jb	..@j478
		jmp	..@j479
..@j478:
		mov	word [bp+4],0
		mov	word [bp+6],0
..@j479:
		mov	bx,word [bp+8]
		mov	dx,word [bx+6]
		mov	ax,word [bx+8]
		cmp	ax,word [bp+6]
		jg	..@j482
		jl	..@j483
		cmp	dx,word [bp+4]
		jae	..@j482
		jmp	..@j483
		jmp	..@j483
..@j482:
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+10],ax
		mov	ax,word [bp+6]
		mov	word [bx+12],ax
		jmp	..@j486
..@j483:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,-7
		push	ax
		push	word [bp+4]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j486:
..@j477:
		mov	sp,bp
		pop	bp
		ret	6
