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
	GLOBAL STRUTILS_$$_POSSETEX$TSYSCHARSET$ANSISTRING$SMALLINT$$SMALLINT
STRUTILS_$$_POSSETEX$TSYSCHARSET$ANSISTRING$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		cmp	word [bp+6],0
		je	..@j4422
		jmp	..@j4423
..@j4422:
		mov	word [bp-6],0
		jmp	..@j4426
..@j4423:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j4429
		mov	bx,word [bx-2]
..@j4429:
		mov	word [bp-4],bx
		mov	ax,word [bp+4]
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jg	..@j4432
		jmp	..@j4433
..@j4432:
		mov	word [bp-2],0
		jmp	..@j4420
..@j4433:
		jmp	..@j4437
	ALIGN 2
..@j4436:
		inc	word [bp-6]
..@j4437:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jle	..@j4439
		jmp	..@j4438
..@j4439:
		mov	bx,word [bp+6]
		mov	si,word [bp-6]
		mov	ax,word [bp+8]
		mov	word [bp-8],ax
		mov	al,byte [bx+si-1]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j4440
		test	al,0
		jmp	..@j4441
..@j4440:
		mov	ax,1
		shl	ax,cl
		mov	bx,word [bp-8]
		test	word [bx+si],ax
..@j4441:
		je	..@j4436
		jmp	..@j4438
..@j4438:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jg	..@j4442
		jmp	..@j4443
..@j4442:
		mov	word [bp-6],0
..@j4443:
..@j4426:
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
..@j4420:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
