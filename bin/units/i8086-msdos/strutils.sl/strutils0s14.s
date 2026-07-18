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
	GLOBAL STRUTILS$_$FINDMATCHESBOYERMOORECASEINSENSITIVE$crc25A3F47D_$$_MAKEDELTAJUMPTABLE2$crc8D20DCFF
STRUTILS$_$FINDMATCHESBOYERMOORECASEINSENSITIVE$crc25A3F47D_$$_MAKEDELTAJUMPTABLE2$crc8D20DCFF:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	ax,word [bp+4]
		dec	ax
		mov	word [bp-4],ax
		mov	ax,word [bp+4]
		dec	ax
		mov	word [bp-2],ax
		jmp	..@j404
	ALIGN 2
..@j403:
		mov	ax,word [bp-2]
		inc	ax
		mov	word [bp-8],ax
		mov	ax,word [bp+10]
		mov	word [bp-10],ax
		mov	ax,word [bp+4]
		mov	dx,word [bp-8]
		sub	ax,dx
		mov	word [bp-14],ax
		mov	dx,word [bp-14]
		dec	dx
		mov	word [bp-12],0
		cmp	dx,word [bp-12]
		jl	..@j418
		dec	word [bp-12]
	ALIGN 2
..@j419:
		inc	word [bp-12]
		mov	ax,word [bp+6]
		mov	word [bp-20],ax
		mov	ax,word [bp-12]
		inc	ax
		mov	di,ax
		mov	ax,word [bp+6]
		mov	word [bp-26],ax
		mov	ax,word [bp-8]
		mov	cx,word [bp-12]
		add	cx,ax
		mov	si,cx
		mov	bx,word [bp-20]
		mov	al,byte [bx+di]
		mov	bx,word [bp-26]
		cmp	al,byte [bx+si]
		jne	..@j420
		jmp	..@j421
..@j420:
		mov	al,0
		jmp	..@j412
..@j421:
		cmp	dx,word [bp-12]
		jg	..@j419
..@j418:
		mov	al,1
..@j412:
		test	al,al
		jne	..@j406
		jmp	..@j407
..@j406:
		mov	ax,word [bp-2]
		inc	ax
		mov	word [bp-4],ax
..@j407:
		mov	ax,word [bp+4]
		dec	ax
		mov	dx,word [bp-2]
		sub	ax,dx
		mov	dx,word [bp-4]
		add	dx,ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		mov	word [bx+si],dx
		dec	word [bp-2]
..@j404:
		cmp	word [bp-2],0
		jge	..@j403
		jmp	..@j405
..@j405:
		mov	word [bp-2],0
		jmp	..@j433
	ALIGN 2
..@j432:
		mov	ax,word [bp+10]
		mov	word [bp-8],ax
		mov	word [bp-10],0
		jmp	..@j443
	ALIGN 2
..@j442:
		inc	word [bp-10]
..@j443:
		mov	ax,word [bp+6]
		mov	word [bp-18],ax
		mov	ax,word [bp-2]
		mov	dx,word [bp-10]
		sub	ax,dx
		mov	di,ax
		mov	ax,word [bp+6]
		mov	word [bp-24],ax
		mov	ax,word [bp+4]
		dec	ax
		mov	dx,word [bp-10]
		sub	ax,dx
		mov	si,ax
		mov	bx,word [bp-18]
		mov	al,byte [bx+di]
		mov	bx,word [bp-24]
		cmp	al,byte [bx+si]
		je	..@j445
		jmp	..@j444
..@j445:
		mov	ax,word [bp-10]
		cmp	ax,word [bp-2]
		jl	..@j442
		jmp	..@j444
..@j444:
		mov	ax,word [bp-10]
		mov	word [bp-6],ax
		mov	ax,word [bp+6]
		mov	word [bp-16],ax
		mov	ax,word [bp+4]
		dec	ax
		mov	dx,word [bp-6]
		sub	ax,dx
		mov	di,ax
		mov	ax,word [bp+6]
		mov	word [bp-22],ax
		mov	ax,word [bp-2]
		mov	dx,word [bp-6]
		sub	ax,dx
		mov	si,ax
		mov	bx,word [bp-16]
		mov	al,byte [bx+di]
		mov	bx,word [bp-22]
		cmp	al,byte [bx+si]
		jne	..@j448
		jmp	..@j449
..@j448:
		mov	ax,word [bp+4]
		dec	ax
		mov	dx,word [bp-2]
		sub	ax,dx
		mov	dx,word [bp-6]
		add	dx,ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	cx,word [bp+4]
		dec	cx
		mov	ax,word [bp-6]
		sub	cx,ax
		mov	si,cx
		shl	si,1
		mov	word [bx+si],dx
..@j449:
		inc	word [bp-2]
..@j433:
		mov	ax,word [bp+4]
		dec	ax
		cmp	ax,word [bp-2]
		jg	..@j432
		jmp	..@j434
..@j434:
		mov	sp,bp
		pop	bp
		ret	8
