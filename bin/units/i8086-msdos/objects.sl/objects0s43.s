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
	GLOBAL OBJECTS$_$TSTREAM_$__$$_COPYFROM$TSTREAM$LONGINT
OBJECTS$_$TSTREAM_$__$$_COPYFROM$TSTREAM$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,1026
		jmp	..@j554
	ALIGN 2
..@j553:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jg	..@j556
		jl	..@j557
		cmp	dx,1024
		ja	..@j556
		jmp	..@j557
..@j556:
		mov	word [bp-2],1024
		jmp	..@j560
..@j557:
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
..@j560:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-1026]
		push	ax
		mov	ax,word [bp-2]
		mov	dx,0
		push	dx
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		mov	ax,word [bp+10]
		push	ax
		lea	ax,[bp-1026]
		push	ax
		mov	ax,word [bp-2]
		mov	dx,0
		push	dx
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		mov	ax,word [bp-2]
		mov	dx,0
		sub	word [bp+4],ax
		sbb	word [bp+6],dx
..@j554:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jg	..@j553
		jl	..@j555
		cmp	ax,0
		ja	..@j553
		jmp	..@j555
..@j555:
		mov	sp,bp
		pop	bp
		ret	8
