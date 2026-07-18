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
	GLOBAL CHARSET_$$_QUICKSORT$PREVERSECHARMAPPING$LONGINT$LONGINT
CHARSET_$$_QUICKSORT$PREVERSECHARMAPPING$LONGINT$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,22
	ALIGN 2
..@j5:
		mov	ax,word [bp+8]
		mov	word [bp-4],ax
		mov	ax,word [bp+10]
		mov	word [bp-2],ax
		mov	ax,word [bp+4]
		mov	word [bp-8],ax
		mov	ax,word [bp+6]
		mov	word [bp-6],ax
		mov	ax,word [bp+12]
		mov	word [bp-20],ax
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		add	ax,cx
		adc	dx,bx
		push	dx
		push	ax
		call	fpc_div_longint
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	bx,word [bp-20]
		mov	ax,word [bx+si]
		mov	word [bp-12],ax
		mov	bx,word [bp-20]
		mov	ax,word [bx+si+2]
		mov	word [bp-10],ax
	ALIGN 2
..@j18:
		jmp	..@j22
	ALIGN 2
..@j21:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	ax,1
		adc	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j22:
		mov	bx,word [bp+12]
		mov	ax,word [bp-4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	cx,word [bx+si]
		mov	bx,0
		mov	ax,word [bp-12]
		mov	dx,0
		sub	ax,cx
		sbb	dx,bx
		cmp	dx,0
		jg	..@j21
		jl	..@j23
		cmp	ax,0
		ja	..@j21
		jmp	..@j23
..@j23:
		jmp	..@j27
	ALIGN 2
..@j26:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
..@j27:
		mov	bx,word [bp+12]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	cx,word [bx+si]
		mov	bx,0
		mov	ax,word [bp-12]
		mov	dx,0
		sub	ax,cx
		sbb	dx,bx
		cmp	dx,0
		jl	..@j26
		jg	..@j28
		cmp	ax,0
		jb	..@j26
		jmp	..@j28
..@j28:
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,word [bp-6]
		jl	..@j31
		jg	..@j32
		cmp	dx,word [bp-8]
		jbe	..@j31
		jmp	..@j32
		jmp	..@j32
..@j31:
		mov	bx,word [bp+12]
		mov	ax,word [bp-4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si]
		mov	word [bp-16],ax
		mov	ax,word [bx+si+2]
		mov	word [bp-14],ax
		mov	ax,word [bp+12]
		mov	word [bp-18],ax
		mov	ax,word [bp-4]
		mov	di,ax
		mov	cl,2
		shl	di,cl
		mov	ax,word [bp+12]
		mov	word [bp-22],ax
		mov	ax,word [bp-8]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	bx,word [bp-22]
		mov	ax,word [bx+si]
		mov	bx,word [bp-18]
		mov	word [bx+di],ax
		mov	bx,word [bp-22]
		mov	ax,word [bx+si+2]
		mov	bx,word [bp-18]
		mov	word [bx+di+2],ax
		mov	bx,word [bp+12]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp-16]
		mov	word [bx+si],ax
		mov	ax,word [bp-14]
		mov	word [bx+si+2],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	ax,1
		adc	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
..@j32:
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,word [bp-6]
		jg	..@j20
		jl	..@j18
		cmp	dx,word [bp-8]
		ja	..@j20
		jmp	..@j18
		jmp	..@j18
..@j20:
		mov	di,word [bp-8]
		mov	si,word [bp-6]
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		sub	di,ax
		sbb	si,dx
		mov	bx,word [bp+4]
		mov	cx,word [bp+6]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	bx,ax
		sbb	cx,dx
		cmp	si,cx
		jl	..@j43
		jg	..@j44
		cmp	di,bx
		jb	..@j43
		jmp	..@j44
..@j43:
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,word [bp-6]
		jl	..@j45
		jg	..@j46
		cmp	dx,word [bp-8]
		jb	..@j45
		jmp	..@j46
		jmp	..@j46
..@j45:
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp-6]
		push	word [bp-8]
		call	CHARSET_$$_QUICKSORT$PREVERSECHARMAPPING$LONGINT$LONGINT
..@j46:
		mov	ax,word [bp-4]
		mov	word [bp+8],ax
		mov	ax,word [bp-2]
		mov	word [bp+10],ax
		jmp	..@j55
..@j44:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,word [bp+6]
		jl	..@j56
		jg	..@j57
		cmp	ax,word [bp+4]
		jb	..@j56
		jmp	..@j57
		jmp	..@j57
..@j56:
		push	word [bp+12]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp+6]
		push	word [bp+4]
		call	CHARSET_$$_QUICKSORT$PREVERSECHARMAPPING$LONGINT$LONGINT
..@j57:
		mov	ax,word [bp-8]
		mov	word [bp+4],ax
		mov	ax,word [bp-6]
		mov	word [bp+6],ax
..@j55:
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,word [bp+6]
		jg	..@j7
		jl	..@j5
		cmp	dx,word [bp+4]
		jae	..@j7
		jmp	..@j5
		jmp	..@j5
..@j7:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	fpc_div_longint
