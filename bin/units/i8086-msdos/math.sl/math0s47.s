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
	GLOBAL MATH_$$_POWER$EXTENDED$EXTENDED$$EXTENDED
MATH_$$_POWER$EXTENDED$EXTENDED$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,22
		wait fldz
		wait fld	tword [bp+4]
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j463
		je	..@j461
..@j463:
		jmp	..@j462
..@j461:
		wait fld1
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j466
..@j462:
		wait fldz
		wait fld	tword [bp+14]
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j470
		je	..@j469
..@j470:
		jmp	..@j468
..@j469:
		wait fldz
		wait fld	tword [bp+4]
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j471
		ja	..@j467
..@j471:
		jmp	..@j468
..@j467:
		wait fldz
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j474
..@j468:
		wait fld	tword [bp+4]
		wait fabs
		wait fld	tword [_$MATH$_Ld17]
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j478
		jae	..@j477
..@j478:
		jmp	..@j476
..@j477:
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	fpc_frac_real
		wait fldz
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j481
		je	..@j475
..@j481:
		jmp	..@j476
..@j475:
		push	word [bp+22]
		push	word [bp+20]
		push	word [bp+18]
		push	word [bp+16]
		push	word [bp+14]
		fstcw	[bp-14]
		fstcw	[bp-12]
		DB	09bh
		or	word [bp-14],3840
		wait fld	tword [bp+4]
		wait fldcw	[bp-14]
		wait fistp	qword [bp-22]
		wait fldcw	[bp-12]
		DB	09bh
		push	word [bp-22]
		call	MATH_$$_INTPOWER$EXTENDED$SMALLINT$$EXTENDED
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j488
..@j476:
		wait fld	tword [bp+14]
		wait fldln2
		wait fxch
		wait fyl2x
		wait fld	tword [bp+4]
		wait fmulp	st1,st0
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_exp_real
		wait fstp	tword [bp-10]
		DB	09bh
..@j488:
..@j474:
..@j466:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	20
EXTERN	fpc_exp_real
EXTERN	MATH_$$_INTPOWER$EXTENDED$SMALLINT$$EXTENDED
EXTERN	fpc_frac_real
EXTERN	_$MATH$_Ld17
