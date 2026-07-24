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
	GLOBAL TYPES$_$TRECT_$__$$_SPLITRECT$TSPLITRECTTYPE$LONGINT$$TRECT
TYPES$_$TRECT_$__$$_SPLITRECT$TSPLITRECTTYPE$LONGINT$$TRECT:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+12]
		mov	si,word [bp+14]
		mov	di,ax
		push	ds
		pop	es
		cld
		mov	cx,8
		rep
		movsw
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		test	ax,ax
		jne	..@j493
		test	dx,dx
		je	..@j489
..@j493:
		test	ax,ax
		jne	..@j494
		cmp	dx,1
		je	..@j490
..@j494:
		test	ax,ax
		jne	..@j495
		cmp	dx,2
		je	..@j491
..@j495:
		test	ax,ax
		jne	..@j496
		cmp	dx,3
		je	..@j492
..@j496:
		jmp	..@j488
..@j489:
		mov	bx,word [bp+14]
		mov	cx,word [bx]
		mov	bx,word [bx+2]
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		add	ax,cx
		adc	dx,bx
		mov	bx,word [bp+12]
		mov	word [bx+8],ax
		mov	word [bx+10],dx
		jmp	..@j487
..@j490:
		mov	bx,word [bp+14]
		mov	ax,word [bx+8]
		mov	dx,word [bx+10]
		mov	cx,word [bp+4]
		mov	bx,word [bp+6]
		sub	ax,cx
		sbb	dx,bx
		mov	bx,word [bp+12]
		mov	word [bx],ax
		mov	word [bx+2],dx
		jmp	..@j487
..@j491:
		mov	bx,word [bp+14]
		mov	cx,word [bx+4]
		mov	bx,word [bx+6]
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		add	ax,cx
		adc	dx,bx
		mov	bx,word [bp+12]
		mov	word [bx+12],ax
		mov	word [bx+14],dx
		jmp	..@j487
..@j492:
		mov	bx,word [bp+14]
		mov	ax,word [bx+12]
		mov	dx,word [bx+14]
		mov	cx,word [bp+4]
		mov	bx,word [bp+6]
		sub	ax,cx
		sbb	dx,bx
		mov	bx,word [bp+12]
		mov	word [bx+4],ax
		mov	word [bx+6],dx
		jmp	..@j487
..@j488:
..@j487:
		mov	sp,bp
		pop	bp
		ret	12
