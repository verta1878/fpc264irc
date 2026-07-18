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
	GLOBAL SYSTEM_$$_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$SMALLINT
SYSTEM_$$_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	word [bp-4],1
		mov	bx,word [bp+6]
		mov	byte [bx],0
		mov	bx,word [bp+4]
		mov	byte [bx],10
		mov	bx,word [bp+8]
		cmp	byte [bx],0
		je	..@j7348
		jmp	..@j7349
..@j7348:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j7340
..@j7349:
		jmp	..@j7353
	ALIGN 2
..@j7352:
		inc	word [bp-4]
..@j7353:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp-4]
		jge	..@j7355
		jmp	..@j7354
..@j7355:
		mov	bx,word [bp+8]
		mov	al,byte [bp-4]
		mov	byte [bp-14],al
		mov	byte [bp-13],0
		mov	si,word [bp-14]
		mov	al,byte [bx+si]
		mov	ah,0
		cmp	ax,9
		je	..@j7356
		cmp	ax,32
		je	..@j7356
..@j7356:
		je	..@j7352
		jmp	..@j7354
..@j7354:
		mov	bx,word [bp+8]
		mov	al,byte [bp-4]
		mov	byte [bp-6],al
		mov	byte [bp-5],0
		mov	si,word [bp-6]
		mov	al,byte [bx+si]
		cmp	al,43
		jb	..@j7358
		sub	al,43
		je	..@j7360
		sub	al,2
		je	..@j7359
		jmp	..@j7358
..@j7359:
		mov	bx,word [bp+6]
		mov	byte [bx],1
		inc	word [bp-4]
		jmp	..@j7357
..@j7360:
		inc	word [bp-4]
		jmp	..@j7357
..@j7358:
..@j7357:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp-4]
		jge	..@j7363
		jmp	..@j7364
..@j7363:
		mov	bx,word [bp+8]
		mov	al,byte [bp-4]
		mov	byte [bp-8],al
		mov	byte [bp-7],0
		mov	si,word [bp-8]
		mov	al,byte [bx+si]
		cmp	al,36
		jb	..@j7366
		sub	al,36
		je	..@j7367
		dec	al
		je	..@j7368
		dec	al
		je	..@j7369
		sub	al,10
		je	..@j7370
		sub	al,40
		je	..@j7367
		sub	al,32
		je	..@j7367
		jmp	..@j7366
..@j7367:
		mov	bx,word [bp+4]
		mov	byte [bx],16
		inc	word [bp-4]
		jmp	..@j7365
..@j7368:
		mov	bx,word [bp+4]
		mov	byte [bx],2
		inc	word [bp-4]
		jmp	..@j7365
..@j7369:
		mov	bx,word [bp+4]
		mov	byte [bx],8
		inc	word [bp-4]
		jmp	..@j7365
..@j7370:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp-4]
		jg	..@j7379
		jmp	..@j7378
..@j7379:
		mov	bx,word [bp+8]
		mov	ax,word [bp-4]
		inc	ax
		mov	byte [bp-12],al
		mov	byte [bp-11],0
		mov	si,word [bp-12]
		mov	al,byte [bx+si]
		mov	ah,0
		cmp	ax,88
		je	..@j7380
		cmp	ax,120
		je	..@j7380
..@j7380:
		je	..@j7377
		jmp	..@j7378
..@j7377:
		add	word [bp-4],2
		mov	bx,word [bp+4]
		mov	byte [bx],16
..@j7378:
		jmp	..@j7365
..@j7366:
..@j7365:
..@j7364:
		jmp	..@j7384
	ALIGN 2
..@j7383:
		inc	word [bp-4]
..@j7384:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp-4]
		jg	..@j7386
		jmp	..@j7385
..@j7386:
		mov	bx,word [bp+8]
		mov	al,byte [bp-4]
		mov	byte [bp-10],al
		mov	byte [bp-9],0
		mov	si,word [bp-10]
		cmp	byte [bx+si],48
		je	..@j7383
		jmp	..@j7385
..@j7385:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
..@j7340:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
