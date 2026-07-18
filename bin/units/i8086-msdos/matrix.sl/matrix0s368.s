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
	GLOBAL MATRIX_$$_star$TMATRIX3_EXTENDED$TMATRIX3_EXTENDED$$TMATRIX3_EXTENDED
MATRIX_$$_star$TMATRIX3_EXTENDED$TMATRIX3_EXTENDED$$TMATRIX3_EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,32
		mov	byte [bp-31],0
		dec	byte [bp-31]
	ALIGN 2
..@j4586:
		inc	byte [bp-31]
		mov	bx,word [bp+6]
		mov	al,byte [bp-31]
		mov	ah,0
		mov	si,ax
		mov	ax,30
		mul	si
		mov	si,ax
		lea	di,[bp-30]
		push	ss
		pop	es
		lea	si,[bx+si]
		cld
		mov	cx,15
		rep
		movsw
		mov	bx,word [bp+4]
		wait fld	tword [bp-30]
		wait fld	tword [bx]
		wait fmulp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-20]
		wait fld	tword [bx+30]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-10]
		wait fld	tword [bx+60]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-31]
		mov	ah,0
		mov	si,ax
		mov	ax,30
		mul	si
		mov	si,ax
		wait fstp	tword [bx+si]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	tword [bp-30]
		wait fld	tword [bx+10]
		wait fmulp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-20]
		wait fld	tword [bx+40]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-10]
		wait fld	tword [bx+70]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-31]
		mov	ah,0
		mov	si,ax
		mov	ax,30
		mul	si
		mov	si,ax
		wait fstp	tword [bx+si+10]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	tword [bp-30]
		wait fld	tword [bx+20]
		wait fmulp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-20]
		wait fld	tword [bx+50]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-10]
		wait fld	tword [bx+80]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-31]
		mov	ah,0
		mov	si,ax
		mov	ax,30
		mul	si
		mov	si,ax
		wait fstp	tword [bx+si+20]
		DB	09bh
		cmp	byte [bp-31],2
		jb	..@j4586
		mov	sp,bp
		pop	bp
		ret	6
