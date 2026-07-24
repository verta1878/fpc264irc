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
	GLOBAL UCOMPLEX_$$_CEXP$COMPLEX$$COMPLEX
UCOMPLEX_$$_CEXP$COMPLEX$$COMPLEX:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	ax,word [bp+4]
		lea	di,[bp-24]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		wait fld	qword [bp-24]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_exp_real
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-16]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_cos_real
		wait fld	qword [bp-8]
		wait fmulp	st1,st0
		mov	bx,word [bp+6]
		wait fstp	qword [bx]
		DB	09bh
		wait fld	qword [bp-16]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_sin_real
		wait fld	qword [bp-8]
		wait fmulp	st1,st0
		mov	bx,word [bp+6]
		wait fstp	qword [bx+8]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_sin_real
EXTERN	fpc_cos_real
EXTERN	fpc_exp_real
