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
	GLOBAL MATH_$$_LNXP1$EXTENDED$$EXTENDED
MATH_$$_LNXP1$EXTENDED$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,22
		wait fld	tword [bp+4]
		wait fld	tword [_$MATH$_Ld16]
		wait fcompp
		fstsw	[bp-22]
		mov	ah,byte [bp-21]
		sahf
		jp	..@j440
		jbe	..@j438
..@j440:
		jmp	..@j439
..@j438:
		wait fld1
		wait fld	tword [bp+4]
		wait faddp	st1,st0
		wait fldln2
		wait fxch
		wait fyl2x
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j443
..@j439:
		wait fld1
		wait fld	tword [bp+4]
		wait faddp	st1,st0
		wait fstp	tword [bp-20]
		DB	09bh
		wait fld1
		wait fld	tword [bp-20]
		wait fcompp
		fstsw	[bp-22]
		mov	ah,byte [bp-21]
		sahf
		jp	..@j448
		je	..@j446
..@j448:
		jmp	..@j447
..@j446:
		lea	di,[bp-10]
		push	ss
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,5
		rep
		movsw
		jmp	..@j451
..@j447:
		wait fld	tword [bp-20]
		wait fldln2
		wait fxch
		wait fyl2x
		wait fstp	tword [bp-10]
		DB	09bh
		wait fldz
		wait fld	tword [bp-20]
		wait fcompp
		fstsw	[bp-22]
		mov	ah,byte [bp-21]
		sahf
		jp	..@j456
		ja	..@j454
..@j456:
		jmp	..@j455
..@j454:
		wait fld1
		wait fld	tword [bp-20]
		wait fsubrp	st1,st0
		wait fld	tword [bp+4]
		wait fsubrp	st1,st0
		wait fld	tword [bp-20]
		wait fdivp	st1,st0
		wait fld	tword [bp-10]
		wait faddp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
..@j455:
..@j451:
..@j443:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	_$MATH$_Ld16
