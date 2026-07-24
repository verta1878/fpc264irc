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
	GLOBAL STRUTILS_$$_HEXTOBIN$PCHAR$PCHAR$SMALLINT$$SMALLINT
STRUTILS_$$_HEXTOBIN$PCHAR$PCHAR$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		jmp	..@j4388
	ALIGN 2
..@j4387:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,65
		cmp	ax,6
		jb	..@j4392
		sub	ax,32
		cmp	ax,6
		jb	..@j4392
..@j4392:
		jc	..@j4390
		jmp	..@j4391
..@j4390:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		add	ax,9
		and	ax,15
		mov	word [bp-8],ax
		jmp	..@j4395
..@j4391:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j4398
..@j4398:
		jc	..@j4396
		jmp	..@j4397
..@j4396:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		and	ax,15
		mov	word [bp-8],ax
		jmp	..@j4401
..@j4397:
		jmp	..@j4389
..@j4401:
..@j4395:
		inc	word [bp+8]
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,65
		cmp	ax,6
		jb	..@j4404
		sub	ax,32
		cmp	ax,6
		jb	..@j4404
..@j4404:
		jc	..@j4402
		jmp	..@j4403
..@j4402:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		add	ax,9
		and	ax,15
		mov	word [bp-10],ax
		jmp	..@j4407
..@j4403:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j4410
..@j4410:
		jc	..@j4408
		jmp	..@j4409
..@j4408:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		and	ax,15
		mov	word [bp-10],ax
		jmp	..@j4413
..@j4409:
		jmp	..@j4389
..@j4413:
..@j4407:
		mov	ax,word [bp-8]
		mov	cl,4
		shl	ax,cl
		mov	dx,word [bp-10]
		add	dx,ax
		mov	word [bp-6],dx
		inc	word [bp+8]
		mov	bx,word [bp+6]
		mov	al,byte [bp-6]
		mov	byte [bx],al
		inc	word [bp+6]
		dec	word [bp-4]
..@j4388:
		cmp	word [bp-4],0
		jg	..@j4387
		jmp	..@j4389
..@j4389:
		mov	ax,word [bp+4]
		mov	dx,word [bp-4]
		sub	ax,dx
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
