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
	GLOBAL MATRIX_$$_star$TMATRIX2_EXTENDED$TMATRIX2_EXTENDED$$TMATRIX2_EXTENDED
MATRIX_$$_star$TMATRIX2_EXTENDED$TMATRIX2_EXTENDED$$TMATRIX2_EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	byte [bp-21],0
		dec	byte [bp-21]
	ALIGN 2
..@j3115:
		inc	byte [bp-21]
		mov	bx,word [bp+6]
		mov	al,byte [bp-21]
		mov	ah,0
		mov	si,ax
		mov	ax,20
		mul	si
		mov	si,ax
		lea	di,[bp-20]
		push	ss
		pop	es
		lea	si,[bx+si]
		cld
		mov	cx,10
		rep
		movsw
		mov	bx,word [bp+4]
		wait fld	tword [bp-20]
		wait fld	tword [bx]
		wait fmulp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-10]
		wait fld	tword [bx+20]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-21]
		mov	ah,0
		mov	si,ax
		mov	ax,20
		mul	si
		mov	si,ax
		wait fstp	tword [bx+si]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	tword [bp-20]
		wait fld	tword [bx+10]
		wait fmulp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-10]
		wait fld	tword [bx+30]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-21]
		mov	ah,0
		mov	si,ax
		mov	ax,20
		mul	si
		mov	si,ax
		wait fstp	tword [bx+si+10]
		DB	09bh
		cmp	byte [bp-21],1
		jb	..@j3115
		mov	sp,bp
		pop	bp
		ret	6
