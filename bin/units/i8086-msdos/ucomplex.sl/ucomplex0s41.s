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
	GLOBAL UCOMPLEX_$$_CARG_CH$COMPLEX$$COMPLEX
UCOMPLEX_$$_CARG_CH$COMPLEX$$COMPLEX:
		push	bp
		mov	bp,sp
		sub	sp,160
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
		lea	ax,[bp-96]
		push	ax
		mov	ax,word TC_$UCOMPLEX_$$_I
		push	ax
		lea	ax,[bp-112]
		push	ax
		lea	ax,[bp-160]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	UCOMPLEX_$$_star$COMPLEX$COMPLEX$$COMPLEX
		lea	di,[bp-144]
		push	ss
		pop	es
		lea	si,[bp-160]
		cld
		mov	cx,8
		rep
		movsw
		wait fld1
		wait fstp	qword [bp-152]
		DB	09bh
		wait fld	qword [bp-144]
		wait fsubr	qword [bp-152]
		wait fstp	qword [bp-128]
		DB	09bh
		wait fld	qword [bp-136]
		wait fchs
		wait fstp	qword [bp-120]
		DB	09bh
		lea	ax,[bp-128]
		push	ax
		call	UCOMPLEX_$$_CSQRT$COMPLEX$$COMPLEX
		lea	ax,[bp-112]
		push	ax
		call	UCOMPLEX_$$_star$COMPLEX$COMPLEX$$COMPLEX
		lea	di,[bp-80]
		push	ss
		pop	es
		lea	si,[bp-96]
		cld
		mov	cx,8
		rep
		movsw
		lea	di,[bp-96]
		push	ss
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,8
		rep
		movsw
		wait fld	qword [bp-80]
		wait fadd	qword [bp-96]
		wait fstp	qword [bp-64]
		DB	09bh
		wait fld	qword [bp-72]
		wait fadd	qword [bp-88]
		wait fstp	qword [bp-56]
		DB	09bh
		lea	ax,[bp-64]
		push	ax
		call	UCOMPLEX_$$_CLN$COMPLEX$$COMPLEX
		lea	di,[bp-32]
		push	ss
		pop	es
		lea	si,[bp-48]
		cld
		mov	cx,8
		rep
		movsw
		wait fld	qword [bp-32]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx]
		DB	09bh
		wait fld	qword [bp-24]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx+8]
		DB	09bh
		mov	ax,word [bp+6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	UCOMPLEX_$$_CLN$COMPLEX$$COMPLEX
EXTERN	UCOMPLEX_$$_CSQRT$COMPLEX$$COMPLEX
EXTERN	UCOMPLEX_$$_star$COMPLEX$COMPLEX$$COMPLEX
EXTERN	TC_$UCOMPLEX_$$_I
