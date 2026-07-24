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
	GLOBAL UCOMPLEX_$$_CTG$COMPLEX$$COMPLEX
UCOMPLEX_$$_CTG$COMPLEX$$COMPLEX:
		push	bp
		mov	bp,sp
		sub	sp,66
		mov	ax,word [bp+4]
		lea	di,[bp-48]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-48]
		push	ax
		call	UCOMPLEX_$$_CCOS$COMPLEX$$COMPLEX
		lea	ax,[bp-32]
		push	ax
		lea	ax,[bp-48]
		push	ax
		call	UCOMPLEX_$$_CSIN$COMPLEX$$COMPLEX
		wait fld	qword [bp-16]
		wait fabs
		wait fld	qword [bp-8]
		wait fabs
		wait fcompp
		fstsw	[bp-66]
		mov	ah,byte [bp-65]
		sahf
		jp	..@j336
		jb	..@j334
..@j336:
		jmp	..@j335
..@j334:
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
		wait fmul	qword [bp-24]
		wait fadd	qword [bp-32]
		wait fdiv	qword [bp-64]
		mov	bx,word [bp+6]
		wait fstp	qword [bx]
		DB	09bh
		wait fld	qword [bp-56]
		wait fmul	qword [bp-32]
		wait fsubr	qword [bp-24]
		wait fdiv	qword [bp-64]
		mov	bx,word [bp+6]
		wait fstp	qword [bx+8]
		DB	09bh
		jmp	..@j345
..@j335:
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
		wait fmul	qword [bp-32]
		wait fadd	qword [bp-24]
		wait fdiv	qword [bp-64]
		mov	bx,word [bp+6]
		wait fstp	qword [bx]
		DB	09bh
		wait fld	qword [bp-32]
		wait fchs
		wait fld	qword [bp-56]
		wait fmul	qword [bp-24]
		wait faddp	st1,st0
		wait fdiv	qword [bp-64]
		mov	bx,word [bp+6]
		wait fstp	qword [bx+8]
		DB	09bh
..@j345:
		mov	ax,word [bp+6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	UCOMPLEX_$$_CSIN$COMPLEX$$COMPLEX
EXTERN	UCOMPLEX_$$_CCOS$COMPLEX$$COMPLEX
