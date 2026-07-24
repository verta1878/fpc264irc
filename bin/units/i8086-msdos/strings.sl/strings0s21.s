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
	GLOBAL STRINGS_$$_STRIPOS$PCHAR$PCHAR$$PCHAR
STRINGS_$$_STRIPOS$PCHAR$PCHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-2],0
		cmp	word [bp+6],0
		je	..@j369
		jmp	..@j371
..@j371:
		cmp	word [bp+4],0
		je	..@j369
		jmp	..@j370
..@j369:
		jmp	..@j365
..@j370:
		push	word [bp+6]
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	STRINGS_$$_STRISCAN$PCHAR$CHAR$$PCHAR
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		je	..@j378
		jmp	..@j379
..@j378:
		jmp	..@j365
..@j379:
		push	word [bp+4]
		call	FPC_PCHAR_LENGTH
		mov	word [bp-6],ax
		jmp	..@j385
	ALIGN 2
..@j384:
		push	word [bp-4]
		push	word [bp+4]
		push	word [bp-6]
		call	STRINGS_$$_STRLICOMP$PCHAR$PCHAR$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j387
		jmp	..@j388
..@j387:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j365
..@j388:
		inc	word [bp-4]
		push	word [bp-4]
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	STRINGS_$$_STRISCAN$PCHAR$CHAR$$PCHAR
		mov	word [bp-4],ax
..@j385:
		cmp	word [bp-4],0
		jne	..@j384
		jmp	..@j386
..@j386:
..@j365:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	STRINGS_$$_STRLICOMP$PCHAR$PCHAR$SMALLINT$$SMALLINT
EXTERN	FPC_PCHAR_LENGTH
EXTERN	STRINGS_$$_STRISCAN$PCHAR$CHAR$$PCHAR
