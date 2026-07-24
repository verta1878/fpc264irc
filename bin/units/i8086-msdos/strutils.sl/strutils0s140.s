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
	GLOBAL STRUTILS_$$_RPOSEX$ANSISTRING$ANSISTRING$LONGWORD$$SMALLINT
STRUTILS_$$_RPOSEX$ANSISTRING$ANSISTRING$LONGWORD$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	word [bp-2],0
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j4337
		mov	bx,word [bx-2]
..@j4337:
		mov	word [bp-6],bx
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j4340
		mov	bx,word [bx-2]
..@j4340:
		mov	word [bp-4],bx
		mov	ax,word [bp+4]
		cmp	ax,word [bp-4]
		jl	..@j4341
		jmp	..@j4342
..@j4341:
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
..@j4342:
		cmp	word [bp-6],0
		jg	..@j4348
		jmp	..@j4346
..@j4348:
		cmp	word [bp-4],0
		jg	..@j4347
		jmp	..@j4346
..@j4347:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jle	..@j4345
		jmp	..@j4346
..@j4345:
		mov	bx,word [bp+8]
		mov	si,word [bp-4]
		lea	ax,[bx+si-1]
		mov	word [bp-10],ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-6]
		mov	si,ax
		dec	si
		lea	ax,[bx+si-1]
		mov	word [bp-12],ax
		mov	bx,word [bp+10]
		mov	si,word [bp-6]
		mov	al,byte [bx+si-1]
		mov	byte [bp-7],al
		jmp	..@j4356
	ALIGN 2
..@j4355:
		mov	bx,word [bp-10]
		mov	al,byte [bx]
		cmp	al,byte [bp-7]
		je	..@j4360
		jmp	..@j4359
..@j4360:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp-10]
		mov	ax,word [bp-6]
		sub	bx,ax
		lea	ax,[bx+1]
		push	ax
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j4367
		mov	bx,word [bx-2]
..@j4367:
		push	bx
		call	SYSTEM_$$_COMPARECHAR$formal$formal$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j4358
		jmp	..@j4359
..@j4358:
		mov	ax,word [bp-10]
		mov	dx,word [bp-6]
		sub	ax,dx
		inc	ax
		mov	dx,word [bp+8]
		sub	ax,dx
		inc	ax
		mov	word [bp-2],ax
		jmp	..@j4331
..@j4359:
		dec	word [bp-10]
..@j4356:
		mov	ax,word [bp-10]
		cmp	ax,word [bp-12]
		jae	..@j4355
		jmp	..@j4357
..@j4357:
..@j4346:
..@j4331:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_COMPARECHAR$formal$formal$SMALLINT$$SMALLINT
