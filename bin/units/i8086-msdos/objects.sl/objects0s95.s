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
	GLOBAL OBJECTS$_$TSORTEDCOLLECTION_$__$$_INDEXOF$POINTER$$LONGINT
OBJECTS$_$TSORTEDCOLLECTION_$__$$_INDEXOF$POINTER$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	word [bp-12],-1
		mov	word [bp-10],-1
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
		push	ax
		lea	ax,[bp-8]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		test	al,al
		jne	..@j2250
		jmp	..@j2251
..@j2250:
		mov	bx,word [bp+6]
		cmp	byte [bx+16],0
		jne	..@j2262
		jmp	..@j2263
..@j2262:
		jmp	..@j2265
	ALIGN 2
..@j2264:
		add	word [bp-8],1
		adc	word [bp-6],0
..@j2265:
		mov	bx,word [bp+6]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp-6]
		jg	..@j2267
		jl	..@j2266
		cmp	dx,word [bp-8]
		ja	..@j2267
		jmp	..@j2266
		jmp	..@j2266
..@j2267:
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		cmp	ax,word [bp+4]
		jne	..@j2264
		jmp	..@j2266
..@j2266:
..@j2263:
		mov	bx,word [bp+6]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp-6]
		jg	..@j2268
		jl	..@j2269
		cmp	dx,word [bp-8]
		ja	..@j2268
		jmp	..@j2269
		jmp	..@j2269
..@j2268:
		mov	ax,word [bp-8]
		mov	word [bp-12],ax
		mov	ax,word [bp-6]
		mov	word [bp-10],ax
..@j2269:
..@j2251:
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
