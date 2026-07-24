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
	GLOBAL SYSTEM_$$_FREXP$REAL$SMALLINT$$REAL
SYSTEM_$$_FREXP$REAL$SMALLINT$$REAL:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+4]
		mov	word [bx],0
		wait fld	qword [bp+6]
		wait fabs
		wait fld	tword [_$SYSTEM$_Ld3]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j2588
		ja	..@j2586
..@j2588:
		jmp	..@j2587
..@j2586:
		jmp	..@j2590
	ALIGN 2
..@j2589:
		wait fld	qword [bp+6]
		wait fmul	qword [_$SYSTEM$_Ld4]
		wait fstp	qword [bp+6]
		DB	09bh
		mov	bx,word [bp+4]
		dec	word [bx]
..@j2590:
		wait fld	qword [bp+6]
		wait fabs
		wait fld	tword [_$SYSTEM$_Ld3]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j2594
		ja	..@j2589
..@j2594:
		jmp	..@j2591
..@j2591:
		jmp	..@j2595
..@j2587:
		jmp	..@j2597
	ALIGN 2
..@j2596:
		wait fld	qword [bp+6]
		wait fmul	qword [_$SYSTEM$_Ld5]
		wait fstp	qword [bp+6]
		DB	09bh
		mov	bx,word [bp+4]
		inc	word [bx]
..@j2597:
		wait fld	qword [bp+6]
		wait fabs
		wait fld1
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j2601
		jb	..@j2596
..@j2601:
		jmp	..@j2598
..@j2598:
..@j2595:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	_$SYSTEM$_Ld5
EXTERN	_$SYSTEM$_Ld4
EXTERN	_$SYSTEM$_Ld3
