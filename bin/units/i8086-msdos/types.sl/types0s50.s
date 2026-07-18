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
	GLOBAL TYPES$_$TRECT_$__$$_INTERSECTSWITH$TRECT$$BOOLEAN
TYPES$_$TRECT_$__$$_INTERSECTSWITH$TRECT$$BOOLEAN:
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
		cmp	ax,word [bp-8]
		jl	..@j371
		jg	..@j368
		cmp	dx,word [bp-10]
		jb	..@j371
		jmp	..@j368
		jmp	..@j368
..@j371:
		mov	bx,word [bp+6]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		cmp	ax,word [bp-16]
		jg	..@j370
		jl	..@j368
		cmp	dx,word [bp-18]
		ja	..@j370
		jmp	..@j368
		jmp	..@j368
..@j370:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	dx,word [bx+6]
		cmp	dx,word [bp-4]
		jl	..@j369
		jg	..@j368
		cmp	ax,word [bp-6]
		jb	..@j369
		jmp	..@j368
		jmp	..@j368
..@j369:
		mov	bx,word [bp+6]
		mov	dx,word [bx+12]
		mov	ax,word [bx+14]
		cmp	ax,word [bp-12]
		jg	..@j367
		jl	..@j368
		cmp	dx,word [bp-14]
		ja	..@j367
		jmp	..@j368
		jmp	..@j368
..@j367:
		mov	byte [bp-1],1
		jmp	..@j372
..@j368:
		mov	byte [bp-1],0
..@j372:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
