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
	GLOBAL UCOMPLEX_$$_starstar$COMPLEX$COMPLEX$$COMPLEX
UCOMPLEX_$$_starstar$COMPLEX$COMPLEX$$COMPLEX:
		push	bp
		mov	bp,sp
		sub	sp,80
		mov	ax,word [bp+6]
		lea	di,[bp-16]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		mov	si,word [bp+4]
		lea	di,[bp-32]
		push	ss
		pop	es
		cld
		mov	cx,8
		rep
		movsw
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-80]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	UCOMPLEX_$$_CLN$COMPLEX$$COMPLEX
		lea	di,[bp-64]
		push	ss
		pop	es
		lea	si,[bp-80]
		cld
		mov	cx,8
		rep
		movsw
		wait fld	qword [bp-64]
		wait fmul	qword [bp-32]
		wait fld	qword [bp-56]
		wait fmul	qword [bp-24]
		wait fsubp	st1,st0
		wait fstp	qword [bp-48]
		DB	09bh
		wait fld	qword [bp-56]
		wait fmul	qword [bp-32]
		wait fld	qword [bp-64]
		wait fmul	qword [bp-24]
		wait faddp	st1,st0
		wait fstp	qword [bp-40]
		DB	09bh
		lea	ax,[bp-48]
		push	ax
		call	UCOMPLEX_$$_CEXP$COMPLEX$$COMPLEX
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	UCOMPLEX_$$_CEXP$COMPLEX$$COMPLEX
EXTERN	UCOMPLEX_$$_CLN$COMPLEX$$COMPLEX
