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
	GLOBAL OBJECTS$_$TSORTEDCOLLECTION_$__$$_SEARCH$POINTER$LONGINT$$BOOLEAN
OBJECTS$_$TSORTEDCOLLECTION_$__$$_SEARCH$POINTER$LONGINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	byte [bp-1],0
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		mov	dx,word [bx+6]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	word [bx+2],0
		mov	bx,word [bp+8]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,0
		jne	..@j2289
		cmp	dx,0
		jne	..@j2289
		jmp	..@j2288
..@j2288:
		jmp	..@j2278
..@j2289:
		jmp	..@j2291
	ALIGN 2
..@j2290:
		mov	bx,word [bp-6]
		mov	cx,word [bp-4]
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		add	ax,bx
		adc	dx,cx
		shr	dx,1
		rcr	ax,1
		mov	word [bp-14],ax
		mov	word [bp-12],dx
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp-14]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
		push	ax
		push	word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		cmp	dx,0
		jl	..@j2307
		jg	..@j2308
		cmp	ax,0
		jb	..@j2307
		jmp	..@j2308
..@j2307:
		mov	ax,word [bp-14]
		mov	dx,word [bp-12]
		add	ax,1
		adc	dx,0
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		jmp	..@j2311
..@j2308:
		mov	ax,word [bp-14]
		mov	dx,word [bp-12]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		cmp	dx,0
		jne	..@j2315
		cmp	ax,0
		jne	..@j2315
		jmp	..@j2314
..@j2314:
		mov	byte [bp-1],1
		mov	bx,word [bp+8]
		cmp	byte [bx+16],0
		je	..@j2318
		jmp	..@j2319
..@j2318:
		mov	ax,word [bp-14]
		mov	word [bp-6],ax
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
..@j2319:
..@j2315:
..@j2311:
..@j2291:
		mov	dx,word [bp-6]
		mov	ax,word [bp-4]
		cmp	ax,word [bp-8]
		jl	..@j2290
		jg	..@j2292
		cmp	dx,word [bp-10]
		jbe	..@j2290
		jmp	..@j2292
		jmp	..@j2292
..@j2292:
		mov	bx,word [bp+4]
		mov	ax,word [bp-6]
		mov	word [bx],ax
		mov	ax,word [bp-4]
		mov	word [bx+2],ax
..@j2278:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
