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
	GLOBAL DATEUTILS_$$_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME
DATEUTILS_$$_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,12
		wait fldz
		wait fld	qword [bp+6]
		wait fcompp
		fstsw	[bp-2]
		mov	ah,byte [bp-1]
		sahf
		jp	..@j1469
		jae	..@j1468
..@j1469:
		jmp	..@j1467
..@j1468:
		mov	bx,word [bp+4]
		wait fld	qword [bx]
		wait fld	tword [_$DATEUTILS$_Ld14]
		wait fcompp
		fstsw	[bp-2]
		mov	ah,byte [bp-1]
		sahf
		jp	..@j1470
		ja	..@j1466
..@j1470:
		jmp	..@j1467
..@j1466:
		mov	bx,word [bp+4]
		wait fld	qword [bx]
		wait fld1
		wait fsubp	st1,st0
		wait fld	tword [_$DATEUTILS$_Ld5]
		wait faddp	st1,st0
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_int_real
		wait fstp	tword [bp-12]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bx]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_frac_real
		wait fld1
		wait faddp	st1,st0
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_frac_real
		wait fld	tword [bp-12]
		wait fsubrp	st1,st0
		mov	bx,word [bp+4]
		wait fstp	qword [bx]
		DB	09bh
		jmp	..@j1479
..@j1467:
		wait fld	qword [bp+6]
		wait fld	tword [_$DATEUTILS$_Ld4]
		wait fcompp
		fstsw	[bp-2]
		mov	ah,byte [bp-1]
		sahf
		jp	..@j1483
		jae	..@j1482
..@j1483:
		jmp	..@j1481
..@j1482:
		mov	bx,word [bp+4]
		wait fld	qword [bx]
		wait fld	tword [_$DATEUTILS$_Ld15]
		wait fcompp
		fstsw	[bp-2]
		mov	ah,byte [bp-1]
		sahf
		jp	..@j1484
		jb	..@j1480
..@j1484:
		jmp	..@j1481
..@j1480:
		mov	bx,word [bp+4]
		wait fld	qword [bx]
		wait fld1
		wait faddp	st1,st0
		wait fld	tword [_$DATEUTILS$_Ld5]
		wait fsubp	st1,st0
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_int_real
		wait fstp	tword [bp-10]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bx]
		wait fld1
		wait faddp	st1,st0
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_frac_real
		wait fabs
		wait fld1
		wait fsubrp	st1,st0
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_frac_real
		wait fld	tword [bp-10]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fstp	qword [bx]
		DB	09bh
..@j1481:
..@j1479:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	_$DATEUTILS$_Ld15
EXTERN	_$DATEUTILS$_Ld4
EXTERN	fpc_frac_real
EXTERN	fpc_int_real
EXTERN	_$DATEUTILS$_Ld5
EXTERN	_$DATEUTILS$_Ld14
