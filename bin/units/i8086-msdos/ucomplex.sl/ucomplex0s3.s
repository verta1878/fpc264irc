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
	GLOBAL UCOMPLEX_$$_CSAMEVALUE$COMPLEX$COMPLEX$$BOOLEAN
UCOMPLEX_$$_CSAMEVALUE$COMPLEX$COMPLEX$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,34
		mov	ax,word [bp+6]
		lea	di,[bp-18]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		mov	si,word [bp+4]
		lea	di,[bp-34]
		push	ss
		pop	es
		cld
		mov	cx,8
		rep
		movsw
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp-18]
		cld
		mov	cx,4
		rep
		movsw
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp-34]
		cld
		mov	cx,4
		rep
		movsw
		wait fldz
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	MATH_$$_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN
		test	al,al
		jne	..@j13
		jmp	..@j12
..@j13:
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp-10]
		cld
		mov	cx,4
		rep
		movsw
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp-26]
		cld
		mov	cx,4
		rep
		movsw
		wait fldz
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	MATH_$$_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN
		test	al,al
		jne	..@j11
		jmp	..@j12
..@j11:
		mov	byte [bp-1],1
		jmp	..@j30
..@j12:
		mov	byte [bp-1],0
..@j30:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	MATH_$$_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN
