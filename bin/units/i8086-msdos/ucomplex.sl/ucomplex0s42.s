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
	GLOBAL UCOMPLEX_$$_CARG_SH$COMPLEX$$COMPLEX
UCOMPLEX_$$_CARG_SH$COMPLEX$$COMPLEX:
		push	bp
		mov	bp,sp
		sub	sp,120
		mov	ax,word [bp+4]
		lea	di,[bp-16]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-64]
		push	ax
		wait fld1
		wait fstp	qword [bp-88]
		DB	09bh
		lea	ax,[bp-120]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	UCOMPLEX_$$_star$COMPLEX$COMPLEX$$COMPLEX
		lea	di,[bp-104]
		push	ss
		pop	es
		lea	si,[bp-120]
		cld
		mov	cx,8
		rep
		movsw
		wait fld	qword [bp-88]
		wait fadd	qword [bp-104]
		wait fstp	qword [bp-80]
		DB	09bh
		lea	di,[bp-72]
		push	ss
		pop	es
		lea	si,[bp-96]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-80]
		push	ax
		call	UCOMPLEX_$$_CSQRT$COMPLEX$$COMPLEX
		lea	di,[bp-48]
		push	ss
		pop	es
		lea	si,[bp-64]
		cld
		mov	cx,8
		rep
		movsw
		lea	di,[bp-64]
		push	ss
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,8
		rep
		movsw
		wait fld	qword [bp-48]
		wait fadd	qword [bp-64]
		wait fstp	qword [bp-32]
		DB	09bh
		wait fld	qword [bp-40]
		wait fadd	qword [bp-56]
		wait fstp	qword [bp-24]
		DB	09bh
		lea	ax,[bp-32]
		push	ax
		call	UCOMPLEX_$$_CLN$COMPLEX$$COMPLEX
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	UCOMPLEX_$$_CLN$COMPLEX$$COMPLEX
EXTERN	UCOMPLEX_$$_CSQRT$COMPLEX$$COMPLEX
EXTERN	UCOMPLEX_$$_star$COMPLEX$COMPLEX$$COMPLEX
