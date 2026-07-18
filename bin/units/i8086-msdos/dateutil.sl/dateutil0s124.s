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
	GLOBAL DATEUTILS_$$_INCMILLISECOND$TDATETIME$INT64$$TDATETIME
DATEUTILS_$$_INCMILLISECOND$TDATETIME$INT64$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,18
		wait fldz
		wait fld	qword [bp+12]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1721
		jae	..@j1719
..@j1721:
		jmp	..@j1720
..@j1719:
		wait fild	qword [bp+4]
		wait fld	tword [_$DATEUTILS$_Ld9]
		wait fdivp	st1,st0
		wait fld	qword [bp+12]
		wait faddp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1724
..@j1720:
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		wait fild	qword [bp+4]
		wait fld	tword [_$DATEUTILS$_Ld9]
		wait fdivp	st1,st0
		wait fstp	qword [bp-18]
		DB	09bh
		wait fld	qword [bp-18]
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	DATEUTILS_$$_INCNEGATIVETIME$TDATETIME$TDATETIME$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
..@j1724:
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-8]
		push	ax
		call	DATEUTILS_$$_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	DATEUTILS_$$_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME
EXTERN	DATEUTILS_$$_INCNEGATIVETIME$TDATETIME$TDATETIME$$TDATETIME
EXTERN	_$DATEUTILS$_Ld9
