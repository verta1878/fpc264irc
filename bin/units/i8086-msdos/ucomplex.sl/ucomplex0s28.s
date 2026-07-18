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
	GLOBAL UCOMPLEX_$$_CSQRT$COMPLEX$$COMPLEX
UCOMPLEX_$$_CSQRT$COMPLEX$$COMPLEX:
		push	bp
		mov	bp,sp
		sub	sp,42
		mov	ax,word [bp+4]
		lea	di,[bp-32]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		wait fld	qword [bp-32]
		wait fldz
		wait fcompp
		fstsw	[bp-34]
		mov	ah,byte [bp-33]
		sahf
		jp	..@j217
		jne	..@j217
		jmp	..@j219
..@j219:
		wait fld	qword [bp-24]
		wait fldz
		wait fcompp
		fstsw	[bp-34]
		mov	ah,byte [bp-33]
		sahf
		jp	..@j217
		jne	..@j217
		jmp	..@j218
..@j217:
		wait fld	qword [bp-32]
		wait fabs
		wait fstp	qword [bp-42]
		DB	09bh
		lea	ax,[bp-32]
		push	ax
		call	UCOMPLEX_$$_CMOD$COMPLEX$$REAL
		wait fld	qword [bp-42]
		wait faddp	st1,st0
		wait fld	tword [_$UCOMPLEX$_Ld2]
		wait fmulp	st1,st0
		wait fsqrt
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		wait fld	tword [_$UCOMPLEX$_Ld3]
		wait fmulp	st1,st0
		wait fld	qword [bp-24]
		wait fdivrp	st1,st0
		wait fstp	qword [bp-16]
		DB	09bh
		wait fld	qword [bp-32]
		wait fldz
		wait fcompp
		fstsw	[bp-34]
		mov	ah,byte [bp-33]
		sahf
		jp	..@j228
		jbe	..@j226
..@j228:
		jmp	..@j227
..@j226:
		mov	di,word [bp+6]
		push	ds
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+6]
		lea	di,[bx+8]
		push	ds
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j233
..@j227:
		wait fld	qword [bp-24]
		wait fldz
		wait fcompp
		fstsw	[bp-34]
		mov	ah,byte [bp-33]
		sahf
		jp	..@j236
		ja	..@j234
..@j236:
		jmp	..@j235
..@j234:
		wait fld	qword [bp-16]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx]
		DB	09bh
		wait fld	qword [bp-8]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx+8]
		DB	09bh
		jmp	..@j241
..@j235:
		mov	di,word [bp+6]
		push	ds
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+6]
		lea	di,[bx+8]
		push	ds
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
..@j241:
..@j233:
		jmp	..@j246
..@j218:
		mov	di,word [bp+6]
		push	ds
		pop	es
		lea	si,[bp-32]
		cld
		mov	cx,8
		rep
		movsw
..@j246:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	_$UCOMPLEX$_Ld3
EXTERN	_$UCOMPLEX$_Ld2
EXTERN	UCOMPLEX_$$_CMOD$COMPLEX$$REAL
