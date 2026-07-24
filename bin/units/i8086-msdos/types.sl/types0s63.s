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
	GLOBAL TYPES$_$TRECT_$__$$_UNION$array_of_TPOINT$$TRECT
TYPES$_$TRECT_$__$$_UNION$array_of_TPOINT$$TRECT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		inc	ax
		cmp	ax,0
		jg	..@j507
		jmp	..@j508
..@j507:
		mov	di,word [bp+8]
		mov	si,word [bp+6]
		push	ds
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+8]
		mov	si,word [bp+6]
		lea	di,[bx+8]
		push	ds
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp+4]
		mov	word [bp-2],1
		cmp	ax,word [bp-2]
		jl	..@j516
		dec	word [bp-2]
	ALIGN 2
..@j517:
		inc	word [bp-2]
		mov	bx,word [bp+6]
		mov	dx,word [bp-2]
		mov	si,dx
		mov	cl,3
		shl	si,cl
		mov	di,word [bp+8]
		mov	cx,word [bx+si]
		mov	dx,word [bx+si+2]
		cmp	dx,word [di+2]
		jl	..@j518
		jg	..@j519
		cmp	cx,word [di]
		jb	..@j518
		jmp	..@j519
		jmp	..@j519
..@j518:
		mov	bx,word [bp+6]
		mov	dx,word [bp-2]
		mov	si,dx
		mov	cl,3
		shl	si,cl
		mov	di,word [bp+8]
		mov	dx,word [bx+si]
		mov	word [di],dx
		mov	dx,word [bx+si+2]
		mov	word [di+2],dx
..@j519:
		mov	bx,word [bp+6]
		mov	dx,word [bp-2]
		mov	si,dx
		mov	cl,3
		shl	si,cl
		mov	di,word [bp+8]
		mov	cx,word [bx+si]
		mov	dx,word [bx+si+2]
		cmp	dx,word [di+10]
		jg	..@j522
		jl	..@j523
		cmp	cx,word [di+8]
		ja	..@j522
		jmp	..@j523
		jmp	..@j523
..@j522:
		mov	bx,word [bp+6]
		mov	dx,word [bp-2]
		mov	si,dx
		mov	cl,3
		shl	si,cl
		mov	di,word [bp+8]
		mov	dx,word [bx+si]
		mov	word [di+8],dx
		mov	dx,word [bx+si+2]
		mov	word [di+10],dx
..@j523:
		mov	bx,word [bp+6]
		mov	dx,word [bp-2]
		mov	si,dx
		mov	cl,3
		shl	si,cl
		mov	di,word [bp+8]
		mov	cx,word [bx+si+4]
		mov	dx,word [bx+si+6]
		cmp	dx,word [di+6]
		jl	..@j526
		jg	..@j527
		cmp	cx,word [di+4]
		jb	..@j526
		jmp	..@j527
		jmp	..@j527
..@j526:
		mov	bx,word [bp+6]
		mov	dx,word [bp-2]
		mov	si,dx
		mov	cl,3
		shl	si,cl
		mov	di,word [bp+8]
		mov	dx,word [bx+si+4]
		mov	word [di+4],dx
		mov	dx,word [bx+si+6]
		mov	word [di+6],dx
..@j527:
		mov	bx,word [bp+6]
		mov	dx,word [bp-2]
		mov	si,dx
		mov	cl,3
		shl	si,cl
		mov	di,word [bp+8]
		mov	cx,word [bx+si+4]
		mov	dx,word [bx+si+6]
		cmp	dx,word [di+14]
		jg	..@j530
		jl	..@j531
		cmp	cx,word [di+12]
		ja	..@j530
		jmp	..@j531
		jmp	..@j531
..@j530:
		mov	bx,word [bp+6]
		mov	dx,word [bp-2]
		mov	si,dx
		mov	cl,3
		shl	si,cl
		mov	di,word [bp+8]
		mov	dx,word [bx+si+4]
		mov	word [di+12],dx
		mov	dx,word [bx+si+6]
		mov	word [di+14],dx
..@j531:
		cmp	ax,word [bp-2]
		jg	..@j517
..@j516:
		jmp	..@j534
..@j508:
		mov	ax,word [bp+8]
		push	ax
		call	TYPES$_$TRECT_$__$$_EMPTY$$TRECT
..@j534:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	TYPES$_$TRECT_$__$$_EMPTY$$TRECT
