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
	GLOBAL SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_MATCH_SPECIAL$crcD4AB17D1
SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_MATCH_SPECIAL$crcD4AB17D1:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	byte [bp-1],0
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	word [bp-6],ax
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		mov	dx,word [bp+8]
		sub	ax,dx
		inc	ax
		cmp	ax,word [bp-4]
		jne	..@j6487
		jmp	..@j6488
..@j6487:
		jmp	..@j5981
..@j6488:
	ALIGN 2
..@j6489:
		mov	bx,word [bp+6]
		mov	al,byte [bp-6]
		mov	byte [bp-8],al
		mov	byte [bp-7],0
		mov	si,word [bp-8]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	byte [bp-12],al
		mov	bx,word [bp+4]
		mov	al,byte [bp-4]
		mov	byte [bp-10],al
		mov	byte [bp-9],0
		mov	si,word [bp-10]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		cmp	byte [bp-12],al
		jne	..@j6492
		jmp	..@j6493
..@j6492:
		jmp	..@j5981
..@j6493:
		dec	word [bp-6]
		dec	word [bp-4]
		cmp	word [bp-4],0
		jle	..@j6491
		jmp	..@j6489
..@j6491:
		mov	byte [bp-1],1
..@j5981:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_UPCASE$CHAR$$CHAR
