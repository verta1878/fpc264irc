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
	GLOBAL VARUTILS_$$_VARIANTTOLONGINT$TVARDATA$$LONGINT
VARUTILS_$$_VARIANTTOLONGINT$TVARDATA$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,-4096
		test	ax,ax
		je	..@j496
		sub	ax,16384
		je	..@j497
		jmp	..@j495
..@j496:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		test	ax,ax
		je	..@j500
		sub	ax,2
		je	..@j501
		dec	ax
		je	..@j503
		dec	ax
		je	..@j504
		dec	ax
		je	..@j505
		dec	ax
		je	..@j507
		dec	ax
		je	..@j506
		dec	ax
		je	..@j515
		sub	ax,3
		je	..@j508
		dec	ax
		je	..@j509
		sub	ax,4
		je	..@j502
		dec	ax
		je	..@j510
		dec	ax
		je	..@j511
		dec	ax
		je	..@j512
		dec	ax
		je	..@j513
		dec	ax
		je	..@j514
		sub	ax,235
		je	..@j516
		sub	ax,2
		je	..@j517
		jmp	..@j499
..@j500:
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j498
..@j501:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j498
..@j502:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		cbw
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		jmp	..@j498
..@j503:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-4],ax
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		jmp	..@j498
..@j504:
		mov	bx,word [bp+4]
		wait fld	dword [bx+8]
		wait fistp	qword [bp-12]
		DB	09bh
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j498
..@j505:
		mov	bx,word [bp+4]
		wait fld	qword [bx+8]
		wait fistp	qword [bp-12]
		DB	09bh
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j498
..@j506:
		mov	bx,word [bp+4]
		wait fld	qword [bx+8]
		wait fistp	qword [bp-12]
		DB	09bh
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j498
..@j507:
		mov	bx,word [bp+4]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fild	qword [bx+8]
		wait fdivrp	st1,st0
		wait fistp	qword [bp-12]
		DB	09bh
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j498
..@j508:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j498
..@j509:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOLONGINT$TVARDATA$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j498
..@j510:
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx+8]
		mov	dh,0
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		jmp	..@j498
..@j511:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j498
..@j512:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-4],ax
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		jmp	..@j498
..@j513:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-4],ax
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		jmp	..@j498
..@j514:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-4],ax
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		jmp	..@j498
..@j515:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_WSTRTOLONGINT$POINTER$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j498
..@j516:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_LSTRTOLONGINT$POINTER$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j498
..@j517:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_USTRTOLONGINT$POINTER$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j498
..@j499:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,3
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j498:
		jmp	..@j494
..@j497:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jne	..@j568
		jmp	..@j569
..@j568:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4095
		cmp	ax,2
		jb	..@j571
		sub	ax,2
		je	..@j572
		dec	ax
		je	..@j574
		dec	ax
		je	..@j575
		dec	ax
		je	..@j576
		dec	ax
		je	..@j578
		dec	ax
		je	..@j577
		dec	ax
		je	..@j586
		sub	ax,3
		je	..@j579
		dec	ax
		je	..@j580
		sub	ax,4
		je	..@j573
		dec	ax
		je	..@j581
		dec	ax
		je	..@j582
		dec	ax
		je	..@j583
		dec	ax
		je	..@j584
		dec	ax
		je	..@j585
		sub	ax,235
		je	..@j587
		sub	ax,2
		je	..@j588
		jmp	..@j571
..@j572:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j570
..@j573:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		cbw
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		jmp	..@j570
..@j574:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j570
..@j575:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	dword [bx]
		wait fistp	qword [bp-12]
		DB	09bh
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j570
..@j576:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [bx]
		wait fistp	qword [bp-12]
		DB	09bh
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j570
..@j577:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [bx]
		wait fistp	qword [bp-12]
		DB	09bh
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j570
..@j578:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fild	qword [bx]
		wait fdivrp	st1,st0
		wait fistp	qword [bp-12]
		DB	09bh
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j570
..@j579:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j570
..@j580:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOLONGINT$TVARDATA$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j570
..@j581:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		jmp	..@j570
..@j582:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j570
..@j583:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		jmp	..@j570
..@j584:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		jmp	..@j570
..@j585:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		jmp	..@j570
..@j586:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_WSTRTOLONGINT$POINTER$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j570
..@j587:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_LSTRTOLONGINT$POINTER$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j570
..@j588:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_USTRTOLONGINT$POINTER$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j570
..@j571:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,3
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j570:
		jmp	..@j637
..@j569:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,3
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j637:
		jmp	..@j494
..@j495:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,3
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j494:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	VARUTILS_$$_USTRTOLONGINT$POINTER$$LONGINT
EXTERN	VARUTILS_$$_LSTRTOLONGINT$POINTER$$LONGINT
EXTERN	VARUTILS_$$_WSTRTOLONGINT$POINTER$$LONGINT
EXTERN	_$VARUTILS$_Ld1
