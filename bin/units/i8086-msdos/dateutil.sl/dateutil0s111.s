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
	GLOBAL DATEUTILS_$$_INCNEGATIVETIME$TDATETIME$TDATETIME$$TDATETIME
DATEUTILS_$$_INCNEGATIVETIME$TDATETIME$TDATETIME$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,26
		wait fld	qword [bp+12]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_frac_real
		wait fchs
		wait fstp	tword [bp-26]
		DB	09bh
		wait fld	qword [bp+4]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_frac_real
		wait fld	tword [bp-26]
		wait faddp	st1,st0
		wait fstp	qword [bp-16]
		DB	09bh
		wait fld	qword [bp-16]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		wait fld	qword [bp-16]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_int_real
		wait fld1
		wait faddp	st1,st0
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		push	word [_$DATEUTILS$_Ld5+8]
		push	word [_$DATEUTILS$_Ld5+6]
		push	word [_$DATEUTILS$_Ld5+4]
		push	word [_$DATEUTILS$_Ld5+2]
		push	word [_$DATEUTILS$_Ld5]
		call	MATH_$$_SAMEVALUE$EXTENDED$EXTENDED$EXTENDED$$BOOLEAN
		test	al,al
		jne	..@j1501
		jmp	..@j1502
..@j1501:
		wait fld	qword [bp-16]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_int_real
		wait fld1
		wait faddp	st1,st0
		wait fstp	qword [bp-16]
		DB	09bh
		jmp	..@j1515
..@j1502:
		wait fld	qword [bp-16]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		wait fld	qword [bp-16]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_int_real
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		push	word [_$DATEUTILS$_Ld5+8]
		push	word [_$DATEUTILS$_Ld5+6]
		push	word [_$DATEUTILS$_Ld5+4]
		push	word [_$DATEUTILS$_Ld5+2]
		push	word [_$DATEUTILS$_Ld5]
		call	MATH_$$_SAMEVALUE$EXTENDED$EXTENDED$EXTENDED$$BOOLEAN
		test	al,al
		jne	..@j1516
		jmp	..@j1517
..@j1516:
		wait fld	qword [bp-16]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_int_real
		wait fstp	qword [bp-16]
		DB	09bh
..@j1517:
..@j1515:
		wait fld	qword [bp-16]
		wait fld	tword [_$DATEUTILS$_Ld14]
		wait fcompp
		fstsw	[bp-18]
		mov	ah,byte [bp-17]
		sahf
		jp	..@j1532
		ja	..@j1530
..@j1532:
		jmp	..@j1531
..@j1530:
		wait fld1
		wait fld	qword [bp-16]
		wait faddp	st1,st0
		wait fstp	qword [bp-16]
		DB	09bh
		wait fld	qword [bp+12]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_int_real
		wait fld1
		wait fsubp	st1,st0
		wait fstp	qword [bp+12]
		DB	09bh
		jmp	..@j1539
..@j1531:
		wait fld	qword [bp-16]
		wait fld	tword [_$DATEUTILS$_Ld16]
		wait fcompp
		fstsw	[bp-18]
		mov	ah,byte [bp-17]
		sahf
		jp	..@j1542
		jbe	..@j1540
..@j1542:
		jmp	..@j1541
..@j1540:
		wait fld	qword [bp-16]
		wait fld1
		wait fsubp	st1,st0
		wait fstp	qword [bp-16]
		DB	09bh
		wait fld	qword [bp+12]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_int_real
		wait fld1
		wait faddp	st1,st0
		wait fstp	qword [bp+12]
		DB	09bh
..@j1541:
..@j1539:
		wait fld	qword [bp+12]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_int_real
		wait fstp	tword [bp-26]
		DB	09bh
		wait fld	qword [bp+4]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_int_real
		wait fld	tword [bp-26]
		wait faddp	st1,st0
		wait fld	qword [bp-16]
		wait fsubp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	_$DATEUTILS$_Ld16
EXTERN	_$DATEUTILS$_Ld14
EXTERN	MATH_$$_SAMEVALUE$EXTENDED$EXTENDED$EXTENDED$$BOOLEAN
EXTERN	_$DATEUTILS$_Ld5
EXTERN	fpc_int_real
EXTERN	fpc_frac_real
