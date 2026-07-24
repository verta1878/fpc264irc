BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL MATH_$$_SIMPLEROUNDTO$EXTENDED$TROUNDTORANGE$$EXTENDED
MATH_$$_SIMPLEROUNDTO$EXTENDED$TROUNDTORANGE$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,32
		push	word [_$MATH$_Ld23+8]
		push	word [_$MATH$_Ld23+6]
		push	word [_$MATH$_Ld23+4]
		push	word [_$MATH$_Ld23+2]
		push	word [_$MATH$_Ld23]
		mov	al,byte [bp+4]
		cbw
		mov	dx,ax
		mov	ax,dx
		neg	ax
		push	ax
		call	MATH_$$_INTPOWER$EXTENDED$SMALLINT$$EXTENDED
		wait fstp	tword [bp-20]
		DB	09bh
		wait fldz
		wait fld	tword [bp+6]
		wait fcompp
		fstsw	[bp-22]
		mov	ah,byte [bp-21]
		sahf
		jp	..@j2499
		jb	..@j2497
..@j2499:
		jmp	..@j2498
..@j2497:
		fstcw	[bp-24]
		fstcw	[bp-22]
		DB	09bh
		or	word [bp-24],3840
		wait fld	tword [bp-20]
		wait fld	tword [bp+6]
		wait fmulp	st1,st0
		wait fld	tword [_$MATH$_Ld9]
		wait fsubp	st1,st0
		wait fldcw	[bp-24]
		wait fistp	qword [bp-32]
		wait fldcw	[bp-22]
		DB	09bh
		wait fild	qword [bp-32]
		wait fld	tword [bp-20]
		wait fdivp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j2502
..@j2498:
		fstcw	[bp-24]
		fstcw	[bp-22]
		DB	09bh
		or	word [bp-24],3840
		wait fld	tword [bp-20]
		wait fld	tword [bp+6]
		wait fmulp	st1,st0
		wait fld	tword [_$MATH$_Ld9]
		wait faddp	st1,st0
		wait fldcw	[bp-24]
		wait fistp	qword [bp-32]
		wait fldcw	[bp-22]
		DB	09bh
		wait fild	qword [bp-32]
		wait fld	tword [bp-20]
		wait fdivp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
..@j2502:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	_$MATH$_Ld9
EXTERN	MATH_$$_INTPOWER$EXTENDED$SMALLINT$$EXTENDED
EXTERN	_$MATH$_Ld23
