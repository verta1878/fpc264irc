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
	GLOBAL TYPES_$$_AVG$LONGINT$LONGINT$$LONGINT
TYPES_$$_AVG$LONGINT$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,word [bp+6]
		jl	..@j688
		jg	..@j689
		cmp	dx,word [bp+4]
		jb	..@j688
		jmp	..@j689
		jmp	..@j689
..@j688:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		sub	ax,cx
		sbb	dx,bx
		shr	dx,1
		rcr	ax,1
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		add	cx,ax
		adc	bx,dx
		mov	word [bp-4],cx
		mov	word [bp-2],bx
		jmp	..@j692
..@j689:
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		mov	cx,word [bp+4]
		mov	bx,word [bp+6]
		sub	ax,cx
		sbb	dx,bx
		shr	dx,1
		rcr	ax,1
		mov	cx,word [bp+4]
		mov	bx,word [bp+6]
		add	cx,ax
		adc	bx,dx
		mov	word [bp-4],cx
		mov	word [bp-2],bx
..@j692:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
