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
	GLOBAL SHA1_$$_SHA1MATCH$TSHA1DIGEST$TSHA1DIGEST$$BOOLEAN
SHA1_$$_SHA1MATCH$TSHA1DIGEST$TSHA1DIGEST$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	ax,word [si]
		mov	dx,word [si+2]
		cmp	dx,word [bx+2]
		jne	..@j356
		cmp	ax,word [bx]
		jne	..@j356
		jmp	..@j355
		jmp	..@j356
..@j355:
		mov	dl,1
		jmp	..@j357
..@j356:
		mov	dl,0
..@j357:
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	cx,word [si+4]
		mov	ax,word [si+6]
		cmp	ax,word [bx+6]
		jne	..@j359
		cmp	cx,word [bx+4]
		jne	..@j359
		jmp	..@j358
		jmp	..@j359
..@j358:
		mov	al,1
		jmp	..@j360
..@j359:
		mov	al,0
..@j360:
		and	al,dl
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	cx,word [si+8]
		mov	dx,word [si+10]
		cmp	dx,word [bx+10]
		jne	..@j362
		cmp	cx,word [bx+8]
		jne	..@j362
		jmp	..@j361
		jmp	..@j362
..@j361:
		mov	dl,1
		jmp	..@j363
..@j362:
		mov	dl,0
..@j363:
		and	dl,al
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	cx,word [si+12]
		mov	ax,word [si+14]
		cmp	ax,word [bx+14]
		jne	..@j365
		cmp	cx,word [bx+12]
		jne	..@j365
		jmp	..@j364
		jmp	..@j365
..@j364:
		mov	al,1
		jmp	..@j366
..@j365:
		mov	al,0
..@j366:
		and	al,dl
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	cx,word [si+16]
		mov	dx,word [si+18]
		cmp	dx,word [bx+18]
		jne	..@j368
		cmp	cx,word [bx+16]
		jne	..@j368
		jmp	..@j367
		jmp	..@j368
..@j367:
		mov	dl,1
		jmp	..@j369
..@j368:
		mov	dl,0
..@j369:
		and	dl,al
		mov	byte [bp-1],dl
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
; End asmlist al_procedures
; Begin asmlist al_typedconsts
