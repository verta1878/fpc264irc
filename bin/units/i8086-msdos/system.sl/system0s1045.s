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
	GLOBAL SYSTEM_$$_SEEKEOLN$TEXT$$BOOLEAN
SYSTEM_$$_SEEKEOLN$TEXT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21561
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21562
..@j21561:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21562:
		cmp	word [bx],0
		jne	..@j21559
		jmp	..@j21560
..@j21559:
		mov	byte [bp-1],1
		jmp	..@j21557
..@j21560:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j21565
		cmp	dx,-10319
		jne	..@j21565
		jmp	..@j21566
..@j21565:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j21568
		cmp	dx,-10318
		jne	..@j21568
		jmp	..@j21567
..@j21567:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21571
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21572
..@j21571:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21572:
		mov	word [bx],104
		jmp	..@j21573
..@j21568:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21576
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21577
..@j21576:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21577:
		mov	word [bx],103
..@j21573:
		mov	byte [bp-1],1
		jmp	..@j21557
..@j21566:
	ALIGN 2
..@j21580:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j21583
		jmp	..@j21584
..@j21583:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+18]
		call	ax
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j21587
		jmp	..@j21588
..@j21587:
		mov	byte [bp-1],1
		jmp	..@j21557
..@j21588:
..@j21584:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		cmp	al,9
		jb	..@j21592
		sub	al,9
		je	..@j21595
		dec	al
		je	..@j21594
		sub	al,3
		je	..@j21594
		sub	al,13
		je	..@j21593
		sub	al,6
		je	..@j21595
		jmp	..@j21592
..@j21593:
		cmp	byte [TC_$SYSTEM_$$_CTRLZMARKSEOF],0
		jne	..@j21596
		jmp	..@j21597
..@j21596:
		mov	byte [bp-1],1
		jmp	..@j21557
..@j21597:
		jmp	..@j21591
..@j21594:
		mov	byte [bp-1],1
		jmp	..@j21557
		jmp	..@j21591
..@j21595:
		jmp	..@j21591
..@j21592:
		mov	byte [bp-1],0
		jmp	..@j21557
..@j21591:
		mov	bx,word [bp+4]
		inc	word [bx+10]
		jmp	..@j21580
..@j21557:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSTEM_$$_CTRLZMARKSEOF
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
