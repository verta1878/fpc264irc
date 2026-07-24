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
	GLOBAL MATH_$$_ARCCOS$EXTENDED$$EXTENDED
MATH_$$_ARCCOS$EXTENDED$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,12
		wait fld	tword [bp+4]
		wait fabs
		wait fld1
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j282
		je	..@j280
..@j282:
		jmp	..@j281
..@j280:
		wait fldz
		wait fld	tword [bp+4]
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j285
		jb	..@j283
..@j285:
		jmp	..@j284
..@j283:
		wait fldpi
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j288
..@j284:
		wait fldz
		wait fstp	tword [bp-10]
		DB	09bh
..@j288:
		jmp	..@j291
..@j281:
		wait fld1
		wait fld	tword [bp+4]
		wait fsubp	st1,st0
		wait fld1
		wait fld	tword [bp+4]
		wait faddp	st1,st0
		wait fmulp	st1,st0
		wait fsqrt
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	MATH_$$_ARCTAN2$EXTENDED$EXTENDED$$EXTENDED
		wait fstp	tword [bp-10]
		DB	09bh
..@j291:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	MATH_$$_ARCTAN2$EXTENDED$EXTENDED$$EXTENDED
