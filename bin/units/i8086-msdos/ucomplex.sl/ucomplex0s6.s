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
	GLOBAL UCOMPLEX_$$_plus$COMPLEX$REAL$$COMPLEX
UCOMPLEX_$$_plus$COMPLEX$REAL$$COMPLEX:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	ax,word [bp+12]
		lea	di,[bp-16]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		wait fld	qword [bp+4]
		wait fadd	qword [bp-16]
		mov	bx,word [bp+14]
		wait fstp	qword [bx]
		DB	09bh
		mov	bx,word [bp+14]
		lea	di,[bx+8]
		push	ds
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	12
