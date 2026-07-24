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
	GLOBAL MATH_$$_FREXP$EXTENDED$EXTENDED$SMALLINT
MATH_$$_FREXP$EXTENDED$EXTENDED$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	word [bx],0
		wait fldz
		wait fld	tword [bp+8]
		wait fcompp
		fstsw	[bp-2]
		mov	ah,byte [bp-1]
		sahf
		jp	..@j588
		jne	..@j588
		jmp	..@j589
..@j588:
		wait fld	tword [bp+8]
		wait fabs
		wait fld	tword [_$MATH$_Ld9]
		wait fcompp
		fstsw	[bp-2]
		mov	ah,byte [bp-1]
		sahf
		jp	..@j592
		ja	..@j590
..@j592:
		jmp	..@j591
..@j590:
	ALIGN 2
..@j593:
		wait fld	tword [bp+8]
		wait fld	tword [_$MATH$_Ld5]
		wait fmulp	st1,st0
		wait fstp	tword [bp+8]
		DB	09bh
		mov	bx,word [bp+4]
		dec	word [bx]
		wait fld	tword [bp+8]
		wait fabs
		wait fld	tword [_$MATH$_Ld9]
		wait fcompp
		fstsw	[bp-2]
		mov	ah,byte [bp-1]
		sahf
		jp	..@j598
		jbe	..@j595
..@j598:
		jmp	..@j593
..@j595:
		jmp	..@j599
..@j591:
		jmp	..@j601
	ALIGN 2
..@j600:
		wait fld	tword [bp+8]
		wait fld	tword [_$MATH$_Ld9]
		wait fmulp	st1,st0
		wait fstp	tword [bp+8]
		DB	09bh
		mov	bx,word [bp+4]
		inc	word [bx]
..@j601:
		wait fld	tword [bp+8]
		wait fabs
		wait fld1
		wait fcompp
		fstsw	[bp-2]
		mov	ah,byte [bp-1]
		sahf
		jp	..@j605
		jbe	..@j600
..@j605:
		jmp	..@j602
..@j602:
..@j599:
..@j589:
		mov	di,word [bp+6]
		push	ds
		pop	es
		lea	si,[bp+8]
		cld
		mov	cx,5
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	_$MATH$_Ld5
EXTERN	_$MATH$_Ld9
