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
	GLOBAL CRT_$$_CRTREAD$TEXTREC
CRT_$$_CRTREAD$TEXTREC:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word U_$CRT_$$_CURRX
		push	ax
		mov	ax,word U_$CRT_$$_CURRY
		push	ax
		call	CRT_$$_GETSCREENCURSOR$SMALLINT$SMALLINT
		mov	bx,word [bp+4]
		mov	word [bx+10],0
		mov	bx,word [bp+4]
		mov	word [bx+12],0
	ALIGN 2
..@j497:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jg	..@j500
		jmp	..@j501
..@j500:
		mov	si,word [bp+4]
		mov	bx,word [bp+4]
		mov	ax,word [bx+10]
		mov	word [si+12],ax
..@j501:
		push	word [U_$CRT_$$_CURRX]
		push	word [U_$CRT_$$_CURRY]
		call	CRT_$$_SETSCREENCURSOR$SMALLINT$SMALLINT
		call	CRT_$$_READKEY$$CHAR
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		test	al,al
		je	..@j512
		sub	al,8
		je	..@j513
		sub	al,5
		je	..@j515
		sub	al,6
		je	..@j513
		sub	al,6
		je	..@j514
		dec	al
		je	..@j516
		dec	al
		je	..@j514
		jmp	..@j511
..@j512:
		call	CRT_$$_READKEY$$CHAR
		cmp	al,71
		jb	..@j518
		sub	al,71
		je	..@j519
		sub	al,4
		je	..@j520
		sub	al,2
		je	..@j521
		sub	al,2
		je	..@j522
		jmp	..@j518
..@j519:
		jmp	..@j524
	ALIGN 2
..@j523:
		mov	bx,word [bp+4]
		dec	word [bx+10]
		mov	ax,8
		push	ax
		call	CRT_$$_WRITECHAR$CHAR
..@j524:
		mov	bx,word [bp+4]
		cmp	word [bx+10],0
		jg	..@j523
		jmp	..@j525
..@j525:
		jmp	..@j517
..@j520:
		mov	bx,word [bp+4]
		cmp	word [bx+10],0
		jg	..@j528
		jmp	..@j529
..@j528:
		mov	bx,word [bp+4]
		dec	word [bx+10]
		mov	ax,8
		push	ax
		call	CRT_$$_WRITECHAR$CHAR
..@j529:
		jmp	..@j517
..@j521:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jl	..@j532
		jmp	..@j533
..@j532:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	CRT_$$_WRITECHAR$CHAR
		mov	bx,word [bp+4]
		inc	word [bx+10]
..@j533:
		jmp	..@j517
..@j522:
		jmp	..@j537
	ALIGN 2
..@j536:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	CRT_$$_WRITECHAR$CHAR
		mov	bx,word [bp+4]
		inc	word [bx+10]
..@j537:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jl	..@j536
		jmp	..@j538
..@j538:
		jmp	..@j517
..@j518:
..@j517:
		jmp	..@j510
..@j513:
		push	bp
		call	CRT$_$CRTREAD$TEXTREC_$$_BACKSPACE
		jmp	..@j510
..@j514:
		jmp	..@j544
	ALIGN 2
..@j543:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	CRT_$$_WRITECHAR$CHAR
		mov	bx,word [bp+4]
		inc	word [bx+10]
..@j544:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jl	..@j543
		jmp	..@j545
..@j545:
		jmp	..@j549
	ALIGN 2
..@j548:
		push	bp
		call	CRT$_$CRTREAD$TEXTREC_$$_BACKSPACE
..@j549:
		mov	bx,word [bp+4]
		cmp	word [bx+12],0
		jg	..@j548
		jmp	..@j550
..@j550:
		jmp	..@j510
..@j515:
		mov	ax,13
		push	ax
		call	CRT_$$_WRITECHAR$CHAR
		mov	ax,10
		push	ax
		call	CRT_$$_WRITECHAR$CHAR
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+12]
		mov	byte [bx+si],13
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	ax,word [si+12]
		mov	si,ax
		inc	si
		mov	byte [bx+si],10
		mov	bx,word [bp+4]
		add	word [bx+12],2
		jmp	..@j499
		jmp	..@j510
..@j516:
		cmp	byte [U_$CRT_$$_CHECKEOF],0
		jne	..@j561
		jmp	..@j562
..@j561:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+12]
		mov	byte [bx+si],26
		mov	bx,word [bp+4]
		inc	word [bx+12]
		jmp	..@j499
..@j562:
		jmp	..@j510
..@j511:
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		sub	ax,2
		mov	bx,word [bp+4]
		cmp	ax,word [bx+10]
		jg	..@j565
		jmp	..@j566
..@j565:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		mov	al,byte [bp-1]
		mov	byte [bx+si+572],al
		mov	bx,word [bp+4]
		inc	word [bx+10]
		mov	al,byte [bp-1]
		mov	ah,0
		push	ax
		call	CRT_$$_WRITECHAR$CHAR
..@j566:
..@j510:
		jmp	..@j497
..@j499:
		mov	bx,word [bp+4]
		mov	word [bx+10],0
		push	word [U_$CRT_$$_CURRX]
		push	word [U_$CRT_$$_CURRY]
		call	CRT_$$_SETSCREENCURSOR$SMALLINT$SMALLINT
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$CRT_$$_CHECKEOF
EXTERN	CRT$_$CRTREAD$TEXTREC_$$_BACKSPACE
EXTERN	CRT_$$_WRITECHAR$CHAR
EXTERN	CRT_$$_READKEY$$CHAR
EXTERN	CRT_$$_SETSCREENCURSOR$SMALLINT$SMALLINT
EXTERN	CRT_$$_GETSCREENCURSOR$SMALLINT$SMALLINT
EXTERN	U_$CRT_$$_CURRY
EXTERN	U_$CRT_$$_CURRX
