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
	GLOBAL UCOMPLEX_$$_CARG_TH$COMPLEX$$COMPLEX
UCOMPLEX_$$_CARG_TH$COMPLEX$$COMPLEX:
		push	bp
		mov	bp,sp
		sub	sp,112
		mov	ax,word [bp+4]
		lea	di,[bp-16]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		lea	di,[bp-24]
		push	ss
		pop	es
		mov	si,word _$UCOMPLEX$_Ld1
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-56]
		push	ax
		lea	ax,[bp-72]
		push	ax
		wait fld1
		wait fstp	qword [bp-96]
		DB	09bh
		wait fld	qword [bp-96]
		wait fadd	qword [bp-16]
		wait fstp	qword [bp-88]
		DB	09bh
		lea	di,[bp-80]
		push	ss
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-88]
		push	ax
		wait fld1
		wait fstp	qword [bp-96]
		DB	09bh
		wait fld	qword [bp-16]
		wait fsubr	qword [bp-96]
		wait fstp	qword [bp-112]
		DB	09bh
		wait fld	qword [bp-8]
		wait fchs
		wait fstp	qword [bp-104]
		DB	09bh
		lea	ax,[bp-112]
		push	ax
		call	UCOMPLEX_$$_slash$COMPLEX$COMPLEX$$COMPLEX
		lea	ax,[bp-72]
		push	ax
		call	UCOMPLEX_$$_CLN$COMPLEX$$COMPLEX
		lea	di,[bp-40]
		push	ss
		pop	es
		lea	si,[bp-56]
		cld
		mov	cx,8
		rep
		movsw
		wait fld	qword [bp-24]
		wait fdivr	qword [bp-40]
		mov	bx,word [bp+6]
		wait fstp	qword [bx]
		DB	09bh
		wait fld	qword [bp-24]
		wait fdivr	qword [bp-32]
		mov	bx,word [bp+6]
		wait fstp	qword [bx+8]
		DB	09bh
		mov	ax,word [bp+6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	UCOMPLEX_$$_CLN$COMPLEX$$COMPLEX
EXTERN	UCOMPLEX_$$_slash$COMPLEX$COMPLEX$$COMPLEX
EXTERN	_$UCOMPLEX$_Ld1
