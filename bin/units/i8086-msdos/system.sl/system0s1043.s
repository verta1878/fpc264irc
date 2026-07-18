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
	GLOBAL SYSTEM_$$_EOLN$TEXT$$BOOLEAN
SYSTEM_$$_EOLN$TEXT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21513
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21514
..@j21513:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21514:
		cmp	word [bx],0
		jne	..@j21511
		jmp	..@j21512
..@j21511:
		mov	byte [bp-1],1
		jmp	..@j21509
..@j21512:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j21517
		cmp	dx,-10319
		jne	..@j21517
		jmp	..@j21518
..@j21517:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j21520
		cmp	dx,-10318
		jne	..@j21520
		jmp	..@j21519
..@j21519:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21523
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21524
..@j21523:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21524:
		mov	word [bx],104
		jmp	..@j21525
..@j21520:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21528
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21529
..@j21528:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21529:
		mov	word [bx],103
..@j21525:
		mov	byte [bp-1],1
		jmp	..@j21509
..@j21518:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j21532
		jmp	..@j21533
..@j21532:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+18]
		call	ax
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j21536
		jmp	..@j21537
..@j21536:
		mov	byte [bp-1],1
		jmp	..@j21509
..@j21537:
..@j21533:
		cmp	byte [TC_$SYSTEM_$$_CTRLZMARKSEOF],0
		jne	..@j21542
		jmp	..@j21541
..@j21542:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		cmp	byte [bx+si],26
		je	..@j21540
		jmp	..@j21541
..@j21540:
		mov	byte [bp-1],1
		jmp	..@j21509
..@j21541:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	ah,0
		cmp	ax,10
		je	..@j21547
		cmp	ax,13
		je	..@j21547
..@j21547:
		mov	al,0
		jne	..@j21548
		inc	ax
..@j21548:
		mov	byte [bp-1],al
..@j21509:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSTEM_$$_CTRLZMARKSEOF
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
