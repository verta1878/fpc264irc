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
	GLOBAL MATH_$$_TANH$EXTENDED$$EXTENDED
MATH_$$_TANH$EXTENDED$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,22
		wait fld	tword [bp+4]
		wait fld	tword [_$MATH$_Ld10]
		wait fcompp
		fstsw	[bp-22]
		mov	ah,byte [bp-21]
		sahf
		jp	..@j355
		jb	..@j353
..@j355:
		jmp	..@j354
..@j353:
		wait fld1
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j351
		jmp	..@j358
..@j354:
		wait fld	tword [bp+4]
		wait fld	tword [_$MATH$_Ld11]
		wait fcompp
		fstsw	[bp-22]
		mov	ah,byte [bp-21]
		sahf
		jp	..@j361
		ja	..@j359
..@j361:
		jmp	..@j360
..@j359:
		lea	di,[bp-10]
		push	ss
		pop	es
		mov	si,word _$MATH$_Ld12
		cld
		mov	cx,5
		rep
		movsw
		jmp	..@j351
..@j360:
..@j358:
		wait fld	tword [bp+4]
		wait fld	tword [_$MATH$_Ld13]
		wait fmulp	st1,st0
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_exp_real
		wait fstp	tword [bp-20]
		DB	09bh
		wait fld1
		wait fld	tword [bp-20]
		wait fsubp	st1,st0
		wait fld1
		wait fld	tword [bp-20]
		wait faddp	st1,st0
		wait fdivp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
..@j351:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	fpc_exp_real
EXTERN	_$MATH$_Ld13
EXTERN	_$MATH$_Ld12
EXTERN	_$MATH$_Ld11
EXTERN	_$MATH$_Ld10
