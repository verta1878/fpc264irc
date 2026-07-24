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
	GLOBAL TYPES$_$TRECT_$__$$_CONTAINS$TPOINT$$BOOLEAN
TYPES$_$TRECT_$__$$_CONTAINS$TPOINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	ax,word [bp+4]
		lea	di,[bp-10]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+6]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		cmp	ax,word [bp-8]
		jl	..@j289
		jg	..@j286
		cmp	dx,word [bp-10]
		jbe	..@j289
		jmp	..@j286
		jmp	..@j286
..@j289:
		mov	bx,word [bp+6]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		cmp	ax,word [bp-8]
		jg	..@j288
		jl	..@j286
		cmp	dx,word [bp-10]
		jae	..@j288
		jmp	..@j286
		jmp	..@j286
..@j288:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	dx,word [bx+6]
		cmp	dx,word [bp-4]
		jl	..@j287
		jg	..@j286
		cmp	ax,word [bp-6]
		jbe	..@j287
		jmp	..@j286
		jmp	..@j286
..@j287:
		mov	bx,word [bp+6]
		mov	dx,word [bx+12]
		mov	ax,word [bx+14]
		cmp	ax,word [bp-4]
		jg	..@j285
		jl	..@j286
		cmp	dx,word [bp-6]
		jae	..@j285
		jmp	..@j286
		jmp	..@j286
..@j285:
		mov	byte [bp-1],1
		jmp	..@j290
..@j286:
		mov	byte [bp-1],0
..@j290:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
