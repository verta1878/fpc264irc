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
	GLOBAL MATH_$$_SIMPLEROUNDTO$SINGLE$TROUNDTORANGE$$SINGLE
MATH_$$_SIMPLEROUNDTO$SINGLE$TROUNDTORANGE$$SINGLE:
		push	bp
		mov	bp,sp
		sub	sp,20
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
		wait fstp	dword [bp-8]
		DB	09bh
		wait fldz
		wait fld	dword [bp+6]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j2467
		jb	..@j2465
..@j2467:
		jmp	..@j2466
..@j2465:
		fstcw	[bp-12]
		fstcw	[bp-10]
		DB	09bh
		or	word [bp-12],3840
		wait fld	dword [bp-8]
		wait fmul	dword [bp+6]
		wait fld	tword [_$MATH$_Ld9]
		wait fsubp	st1,st0
		wait fldcw	[bp-12]
		wait fistp	qword [bp-20]
		wait fldcw	[bp-10]
		DB	09bh
		wait fild	qword [bp-20]
		wait fdiv	dword [bp-8]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j2470
..@j2466:
		fstcw	[bp-12]
		fstcw	[bp-10]
		DB	09bh
		or	word [bp-12],3840
		wait fld	dword [bp-8]
		wait fmul	dword [bp+6]
		wait fld	tword [_$MATH$_Ld9]
		wait faddp	st1,st0
		wait fldcw	[bp-12]
		wait fistp	qword [bp-20]
		wait fldcw	[bp-10]
		DB	09bh
		wait fild	qword [bp-20]
		wait fdiv	dword [bp-8]
		wait fstp	dword [bp-4]
		DB	09bh
..@j2470:
		wait fld	dword [bp-4]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	_$MATH$_Ld9
EXTERN	MATH_$$_INTPOWER$EXTENDED$SMALLINT$$EXTENDED
EXTERN	_$MATH$_Ld23
