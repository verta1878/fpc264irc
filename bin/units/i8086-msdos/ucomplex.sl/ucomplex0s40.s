BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL UCOMPLEX_$$_CTH$COMPLEX$$COMPLEX
UCOMPLEX_$$_CTH$COMPLEX$$COMPLEX:
		push	bp
		mov	bp,sp
		sub	sp,66
		mov	ax,word [bp+4]
		lea	di,[bp-32]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-32]
		push	ax
		call	UCOMPLEX_$$_CCH$COMPLEX$$COMPLEX
		lea	ax,[bp-48]
		push	ax
		lea	ax,[bp-32]
		push	ax
		call	UCOMPLEX_$$_CSH$COMPLEX$$COMPLEX
		lea	di,[bp-32]
		push	ss
		pop	es
		lea	si,[bp-48]
		cld
		mov	cx,8
		rep
		movsw
		lea	di,[bp-48]
		push	ss
		pop	es
		lea	si,[bp-32]
		cld
		mov	cx,8
		rep
		movsw
		wait fld	qword [bp-16]
		wait fabs
		wait fld	qword [bp-8]
		wait fabs
		wait fcompp
		fstsw	[bp-66]
		mov	ah,byte [bp-65]
		sahf
		jp	..@j478
		jb	..@j476
..@j478:
		jmp	..@j477
..@j476:
		wait fld	qword [bp-16]
		wait fdivr	qword [bp-8]
		wait fstp	qword [bp-56]
		DB	09bh
		wait fld	qword [bp-56]
		wait fmul	qword [bp-8]
		wait fadd	qword [bp-16]
		wait fstp	qword [bp-64]
		DB	09bh
		wait fld	qword [bp-56]
		wait fmul	qword [bp-40]
		wait fadd	qword [bp-48]
		wait fdiv	qword [bp-64]
		mov	bx,word [bp+6]
		wait fstp	qword [bx]
		DB	09bh
		wait fld	qword [bp-56]
		wait fmul	qword [bp-48]
		wait fsubr	qword [bp-40]
		wait fdiv	qword [bp-64]
		mov	bx,word [bp+6]
		wait fstp	qword [bx+8]
		DB	09bh
		jmp	..@j487
..@j477:
		wait fld	qword [bp-8]
		wait fdivr	qword [bp-16]
		wait fstp	qword [bp-56]
		DB	09bh
		wait fld	qword [bp-56]
		wait fmul	qword [bp-16]
		wait fadd	qword [bp-8]
		wait fstp	qword [bp-64]
		DB	09bh
		wait fld	qword [bp-56]
		wait fmul	qword [bp-48]
		wait fadd	qword [bp-40]
		wait fdiv	qword [bp-64]
		mov	bx,word [bp+6]
		wait fstp	qword [bx]
		DB	09bh
		wait fld	qword [bp-48]
		wait fchs
		wait fld	qword [bp-56]
		wait fmul	qword [bp-40]
		wait faddp	st1,st0
		wait fdiv	qword [bp-64]
		mov	bx,word [bp+6]
		wait fstp	qword [bx+8]
		DB	09bh
..@j487:
		mov	ax,word [bp+6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	UCOMPLEX_$$_CSH$COMPLEX$$COMPLEX
EXTERN	UCOMPLEX_$$_CCH$COMPLEX$$COMPLEX
