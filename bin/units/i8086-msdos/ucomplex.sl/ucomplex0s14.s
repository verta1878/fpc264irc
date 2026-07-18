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
	GLOBAL UCOMPLEX_$$_star$REAL$COMPLEX$$COMPLEX
UCOMPLEX_$$_star$REAL$COMPLEX$$COMPLEX:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	ax,word [bp+4]
		lea	di,[bp-16]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		wait fld	qword [bp+6]
		wait fmul	qword [bp-16]
		mov	bx,word [bp+14]
		wait fstp	qword [bx]
		DB	09bh
		wait fld	qword [bp+6]
		wait fmul	qword [bp-8]
		mov	bx,word [bp+14]
		wait fstp	qword [bx+8]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	12
