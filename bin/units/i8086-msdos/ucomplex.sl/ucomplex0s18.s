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
	GLOBAL UCOMPLEX_$$_CMOD$COMPLEX$$REAL
UCOMPLEX_$$_CMOD$COMPLEX$$REAL:
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
		wait fmul	qword [bp-24]
		wait fld	qword [bp-16]
		wait fmul	qword [bp-16]
		wait faddp	st1,st0
		wait fsqrt
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
