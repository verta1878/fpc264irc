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
	GLOBAL MATH_$$_SIMPLEROUNDTO$DOUBLE$TROUNDTORANGE$$DOUBLE
MATH_$$_SIMPLEROUNDTO$DOUBLE$TROUNDTORANGE$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,28
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
		wait fstp	qword [bp-16]
		DB	09bh
		wait fldz
		wait fld	qword [bp+6]
		wait fcompp
		fstsw	[bp-18]
		mov	ah,byte [bp-17]
		sahf
		jp	..@j2483
		jb	..@j2481
..@j2483:
		jmp	..@j2482
..@j2481:
		fstcw	[bp-20]
		fstcw	[bp-18]
		DB	09bh
		or	word [bp-20],3840
		wait fld	qword [bp-16]
		wait fmul	qword [bp+6]
		wait fld	tword [_$MATH$_Ld9]
		wait fsubp	st1,st0
		wait fldcw	[bp-20]
		wait fistp	qword [bp-28]
		wait fldcw	[bp-18]
		DB	09bh
		wait fild	qword [bp-28]
		wait fdiv	qword [bp-16]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j2486
..@j2482:
		fstcw	[bp-20]
		fstcw	[bp-18]
		DB	09bh
		or	word [bp-20],3840
		wait fld	qword [bp-16]
		wait fmul	qword [bp+6]
		wait fld	tword [_$MATH$_Ld9]
		wait faddp	st1,st0
		wait fldcw	[bp-20]
		wait fistp	qword [bp-28]
		wait fldcw	[bp-18]
		DB	09bh
		wait fild	qword [bp-28]
		wait fdiv	qword [bp-16]
		wait fstp	qword [bp-8]
		DB	09bh
..@j2486:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	_$MATH$_Ld9
EXTERN	MATH_$$_INTPOWER$EXTENDED$SMALLINT$$EXTENDED
EXTERN	_$MATH$_Ld23
