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
	GLOBAL MATH_$$_INTERESTRATE$SMALLINT$EXTENDED$EXTENDED$EXTENDED$TPAYMENTTIME$$EXTENDED
MATH_$$_INTERESTRATE$SMALLINT$EXTENDED$EXTENDED$EXTENDED$TPAYMENTTIME$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,64
		mov	word [bp-62],0
		lea	di,[bp-20]
		push	ss
		pop	es
		mov	si,word _$MATH$_Ld24
		cld
		mov	cx,5
		rep
		movsw
	ALIGN 2
..@j2553:
		wait fld	tword [bp-20]
		wait fld	tword [_$MATH$_Ld25]
		wait faddp	st1,st0
		wait fstp	tword [bp-30]
		DB	09bh
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-18]
		push	word [bp-20]
		push	word [bp+38]
		push	word [bp+36]
		push	word [bp+34]
		push	word [bp+32]
		push	word [bp+30]
		push	word [bp+28]
		push	word [bp+26]
		push	word [bp+24]
		push	word [bp+22]
		push	word [bp+20]
		push	word [bp+18]
		push	word [bp+6]
		push	word [bp+4]
		call	MATH_$$_FUTUREVALUE$EXTENDED$SMALLINT$EXTENDED$EXTENDED$TPAYMENTTIME$$EXTENDED
		wait fstp	tword [bp-50]
		DB	09bh
		push	word [bp-22]
		push	word [bp-24]
		push	word [bp-26]
		push	word [bp-28]
		push	word [bp-30]
		push	word [bp+38]
		push	word [bp+36]
		push	word [bp+34]
		push	word [bp+32]
		push	word [bp+30]
		push	word [bp+28]
		push	word [bp+26]
		push	word [bp+24]
		push	word [bp+22]
		push	word [bp+20]
		push	word [bp+18]
		push	word [bp+6]
		push	word [bp+4]
		call	MATH_$$_FUTUREVALUE$EXTENDED$SMALLINT$EXTENDED$EXTENDED$TPAYMENTTIME$$EXTENDED
		wait fstp	tword [bp-60]
		DB	09bh
		wait fld	tword [bp-50]
		wait fld	tword [bp+8]
		wait fsubrp	st1,st0
		wait fld	tword [bp-50]
		wait fld	tword [bp-60]
		wait fsubrp	st1,st0
		wait fdivp	st1,st0
		wait fld	tword [_$MATH$_Ld25]
		wait fmulp	st1,st0
		wait fstp	tword [bp-40]
		DB	09bh
		wait fld	tword [bp-40]
		wait fld	tword [bp-20]
		wait faddp	st1,st0
		wait fstp	tword [bp-20]
		DB	09bh
		inc	word [bp-62]
		wait fld	tword [bp-40]
		wait fabs
		wait fld	tword [_$MATH$_Ld26]
		wait fcompp
		fstsw	[bp-64]
		mov	ah,byte [bp-63]
		sahf
		jp	..@j2587
		ja	..@j2555
..@j2587:
		jmp	..@j2586
..@j2586:
		cmp	word [bp-62],20
		jge	..@j2555
		jmp	..@j2553
..@j2555:
		lea	di,[bp-10]
		push	ss
		pop	es
		lea	si,[bp-20]
		cld
		mov	cx,5
		rep
		movsw
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	36
EXTERN	_$MATH$_Ld26
EXTERN	MATH_$$_FUTUREVALUE$EXTENDED$SMALLINT$EXTENDED$EXTENDED$TPAYMENTTIME$$EXTENDED
EXTERN	_$MATH$_Ld25
EXTERN	_$MATH$_Ld24
