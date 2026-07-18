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
	GLOBAL UCOMPLEX_$$_CARC_TG$COMPLEX$$COMPLEX
UCOMPLEX_$$_CARC_TG$COMPLEX$$COMPLEX:
		push	bp
		mov	bp,sp
		sub	sp,80
		mov	ax,word [bp+4]
		lea	di,[bp-16]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		lea	ax,[bp-48]
		push	ax
		lea	di,[bp-80]
		push	ss
		pop	es
		mov	si,word TC_$UCOMPLEX_$$_I
		cld
		mov	cx,8
		rep
		movsw
		wait fld	qword [bp-16]
		wait fmul	qword [bp-80]
		wait fld	qword [bp-8]
		wait fmul	qword [bp-72]
		wait fsubp	st1,st0
		wait fstp	qword [bp-64]
		DB	09bh
		wait fld	qword [bp-8]
		wait fmul	qword [bp-80]
		wait fld	qword [bp-16]
		wait fmul	qword [bp-72]
		wait faddp	st1,st0
		wait fstp	qword [bp-56]
		DB	09bh
		lea	ax,[bp-64]
		push	ax
		call	UCOMPLEX_$$_CARG_TH$COMPLEX$$COMPLEX
		lea	di,[bp-32]
		push	ss
		pop	es
		lea	si,[bp-48]
		cld
		mov	cx,8
		rep
		movsw
		lea	di,[bp-80]
		push	ss
		pop	es
		mov	si,word TC_$UCOMPLEX_$$_I
		cld
		mov	cx,8
		rep
		movsw
		wait fld	qword [bp-80]
		wait fchs
		wait fstp	qword [bp-64]
		DB	09bh
		wait fld	qword [bp-72]
		wait fchs
		wait fstp	qword [bp-56]
		DB	09bh
		lea	di,[bp-48]
		push	ss
		pop	es
		lea	si,[bp-64]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp+6]
		wait fld	qword [bp-32]
		wait fmul	qword [bp-48]
		wait fld	qword [bp-24]
		wait fmul	qword [bp-40]
		wait fsubp	st1,st0
		wait fstp	qword [bx]
		DB	09bh
		mov	bx,word [bp+6]
		wait fld	qword [bp-24]
		wait fmul	qword [bp-48]
		wait fld	qword [bp-32]
		wait fmul	qword [bp-40]
		wait faddp	st1,st0
		wait fstp	qword [bx+8]
		DB	09bh
		mov	ax,word [bp+6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	UCOMPLEX_$$_CARG_TH$COMPLEX$$COMPLEX
EXTERN	TC_$UCOMPLEX_$$_I
