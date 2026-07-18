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
	GLOBAL SYSTEM$_$STR_REAL$crcEDBAA446_$$_RETURN_SPECIAL$OPENSTRING$SMALLINT$SHORTSTRING$SMALLINT
SYSTEM$_$STR_REAL$crcEDBAA446_$$_RETURN_SPECIAL$OPENSTRING$SMALLINT$SHORTSTRING$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	word [bp-4],ax
		cmp	word [bp+8],0
		je	..@j5387
		jmp	..@j5388
..@j5387:
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		jmp	..@j5391
..@j5388:
		mov	ax,word [bp-4]
		inc	ax
		mov	word [bp-6],ax
..@j5391:
		mov	dx,word [bp-6]
		mov	ax,255
		sub	ax,dx
		mov	word [bp-10],ax
		mov	ax,word [bp+4]
		mov	dx,word [bp-6]
		sub	ax,dx
		mov	word [bp-8],ax
		mov	ax,word [bp-8]
		cmp	ax,word [bp-10]
		jg	..@j5398
		jmp	..@j5399
..@j5398:
		mov	ax,word [bp-10]
		mov	word [bp-8],ax
..@j5399:
		cmp	word [bp-8],0
		jg	..@j5402
		jmp	..@j5403
..@j5402:
		mov	ax,word [bp-8]
		add	word [bp-6],ax
..@j5403:
		mov	ax,word [bp+12]
		push	ax
		push	word [bp+10]
		push	word [bp-6]
		call	fpc_shortstr_setlength
		mov	word [bp-2],1
		cmp	word [bp-8],0
		jg	..@j5412
		jmp	..@j5413
..@j5412:
		mov	ax,word [bp+12]
		mov	word [bp-22],ax
		mov	ax,word [bp+14]
		mov	word [bp-12],ax
		mov	al,byte [bp-2]
		mov	byte [bp-14],al
		mov	byte [bp-13],0
		mov	bx,word [bp-22]
		mov	si,word [bp-14]
		lea	ax,[bx+si]
		push	ax
		push	word [bp-8]
		mov	ax,32
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
		mov	ax,word [bp-8]
		add	word [bp-2],ax
..@j5413:
		cmp	word [bp+8],0
		jne	..@j5424
		jmp	..@j5425
..@j5424:
		cmp	word [bp+8],0
		jg	..@j5426
		jmp	..@j5427
..@j5426:
		mov	bx,word [bp+12]
		mov	al,byte [bp-2]
		mov	byte [bp-16],al
		mov	byte [bp-15],0
		mov	si,word [bp-16]
		mov	byte [bx+si],43
		jmp	..@j5430
..@j5427:
		mov	bx,word [bp+12]
		mov	al,byte [bp-2]
		mov	byte [bp-18],al
		mov	byte [bp-17],0
		mov	si,word [bp-18]
		mov	byte [bx+si],45
..@j5430:
		inc	word [bp-2]
..@j5425:
		jmp	..@j5434
	ALIGN 2
..@j5433:
		mov	ax,word [bp+12]
		mov	word [bp-26],ax
		mov	ax,word [bp-2]
		mov	dx,word [bp-4]
		add	dx,ax
		dec	dx
		mov	byte [bp-24],dl
		mov	byte [bp-23],0
		mov	bx,word [bp+6]
		mov	al,byte [bp-4]
		mov	byte [bp-20],al
		mov	byte [bp-19],0
		mov	si,word [bp-20]
		mov	al,byte [bx+si]
		mov	bx,word [bp-26]
		mov	si,word [bp-24]
		mov	byte [bx+si],al
		dec	word [bp-4]
..@j5434:
		cmp	word [bp-4],0
		jg	..@j5433
		jmp	..@j5435
..@j5435:
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
EXTERN	fpc_shortstr_setlength
