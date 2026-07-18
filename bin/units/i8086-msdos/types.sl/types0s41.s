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
	GLOBAL TYPES$_$TRECT_$__$$_CONTAINS$TRECT$$BOOLEAN
TYPES$_$TRECT_$__$$_CONTAINS$TRECT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	ax,word [bp+4]
		lea	di,[bp-18]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp+6]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		cmp	ax,word [bp-16]
		jl	..@j297
		jg	..@j294
		cmp	dx,word [bp-18]
		jbe	..@j297
		jmp	..@j294
		jmp	..@j294
..@j297:
		mov	bx,word [bp+6]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		cmp	ax,word [bp-8]
		jg	..@j296
		jl	..@j294
		cmp	dx,word [bp-10]
		jae	..@j296
		jmp	..@j294
		jmp	..@j294
..@j296:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	dx,word [bx+6]
		cmp	dx,word [bp-12]
		jl	..@j295
		jg	..@j294
		cmp	ax,word [bp-14]
		jbe	..@j295
		jmp	..@j294
		jmp	..@j294
..@j295:
		mov	bx,word [bp+6]
		mov	dx,word [bx+12]
		mov	ax,word [bx+14]
		cmp	ax,word [bp-4]
		jg	..@j293
		jl	..@j294
		cmp	dx,word [bp-6]
		jae	..@j293
		jmp	..@j294
		jmp	..@j294
..@j293:
		mov	byte [bp-1],1
		jmp	..@j298
..@j294:
		mov	byte [bp-1],0
..@j298:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
