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
	GLOBAL UCOMPLEX_$$_slash$COMPLEX$COMPLEX$$COMPLEX
UCOMPLEX_$$_slash$COMPLEX$COMPLEX$$COMPLEX:
		push	bp
		mov	bp,sp
		sub	sp,50
		mov	ax,word [bp+6]
		lea	di,[bp-32]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		mov	si,word [bp+4]
		lea	di,[bp-48]
		push	ss
		pop	es
		cld
		mov	cx,8
		rep
		movsw
		wait fld	qword [bp-48]
		wait fabs
		wait fld	qword [bp-40]
		wait fabs
		wait fcompp
		fstsw	[bp-50]
		mov	ah,byte [bp-49]
		sahf
		jp	..@j101
		jb	..@j99
..@j101:
		jmp	..@j100
..@j99:
		wait fld	qword [bp-48]
		wait fdivr	qword [bp-40]
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		wait fmul	qword [bp-40]
		wait fadd	qword [bp-48]
		wait fstp	qword [bp-16]
		DB	09bh
		wait fld	qword [bp-8]
		wait fmul	qword [bp-24]
		wait fadd	qword [bp-32]
		wait fdiv	qword [bp-16]
		mov	bx,word [bp+8]
		wait fstp	qword [bx]
		DB	09bh
		wait fld	qword [bp-8]
		wait fmul	qword [bp-32]
		wait fsubr	qword [bp-24]
		wait fdiv	qword [bp-16]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+8]
		DB	09bh
		jmp	..@j110
..@j100:
		wait fld	qword [bp-40]
		wait fdivr	qword [bp-48]
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		wait fmul	qword [bp-48]
		wait fadd	qword [bp-40]
		wait fstp	qword [bp-16]
		DB	09bh
		wait fld	qword [bp-8]
		wait fmul	qword [bp-32]
		wait fadd	qword [bp-24]
		wait fdiv	qword [bp-16]
		mov	bx,word [bp+8]
		wait fstp	qword [bx]
		DB	09bh
		wait fld	qword [bp-32]
		wait fchs
		wait fld	qword [bp-8]
		wait fmul	qword [bp-24]
		wait faddp	st1,st0
		wait fdiv	qword [bp-16]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+8]
		DB	09bh
..@j110:
		mov	sp,bp
		pop	bp
		ret	6
