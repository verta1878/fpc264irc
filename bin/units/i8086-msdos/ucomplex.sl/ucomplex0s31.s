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
	GLOBAL UCOMPLEX_$$_starstar$REAL$COMPLEX$$COMPLEX
UCOMPLEX_$$_starstar$REAL$COMPLEX$$COMPLEX:
		push	bp
		mov	bp,sp
		sub	sp,48
		mov	ax,word [bp+4]
		lea	di,[bp-16]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		mov	ax,word [bp+14]
		push	ax
		wait fld	qword [bp+6]
		wait fldln2
		wait fxch
		wait fyl2x
		wait fstp	qword [bp-48]
		DB	09bh
		wait fld	qword [bp-48]
		wait fstp	qword [bp-40]
		DB	09bh
		wait fld	qword [bp-40]
		wait fmul	qword [bp-16]
		wait fstp	qword [bp-32]
		DB	09bh
		wait fld	qword [bp-40]
		wait fmul	qword [bp-8]
		wait fstp	qword [bp-24]
		DB	09bh
		lea	ax,[bp-32]
		push	ax
		call	UCOMPLEX_$$_CEXP$COMPLEX$$COMPLEX
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	UCOMPLEX_$$_CEXP$COMPLEX$$COMPLEX
