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
	GLOBAL MATH_$$_HYPOT$EXTENDED$EXTENDED$$EXTENDED
MATH_$$_HYPOT$EXTENDED$EXTENDED$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,12
		wait fld	tword [bp+14]
		wait fabs
		wait fstp	tword [bp+14]
		DB	09bh
		wait fld	tword [bp+4]
		wait fabs
		wait fstp	tword [bp+4]
		DB	09bh
		wait fld	tword [bp+4]
		wait fld	tword [bp+14]
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j412
		ja	..@j410
..@j412:
		jmp	..@j411
..@j410:
		wait fld	tword [bp+14]
		wait fld	tword [bp+4]
		wait fdivrp	st1,st0
		wait fmul	st0,st0
		wait fld1
		wait faddp	st1,st0
		wait fsqrt
		wait fld	tword [bp+14]
		wait fmulp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j415
..@j411:
		wait fldz
		wait fld	tword [bp+14]
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j418
		ja	..@j416
..@j418:
		jmp	..@j417
..@j416:
		wait fld	tword [bp+4]
		wait fld	tword [bp+14]
		wait fdivrp	st1,st0
		wait fmul	st0,st0
		wait fld1
		wait faddp	st1,st0
		wait fsqrt
		wait fld	tword [bp+4]
		wait fmulp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j421
..@j417:
		lea	di,[bp-10]
		push	ss
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,5
		rep
		movsw
..@j421:
..@j415:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	20
