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
	GLOBAL MATRIX_$$_star$TMATRIX4_EXTENDED$TMATRIX4_EXTENDED$$TMATRIX4_EXTENDED
MATRIX_$$_star$TMATRIX4_EXTENDED$TMATRIX4_EXTENDED$$TMATRIX4_EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,42
		mov	byte [bp-41],0
		dec	byte [bp-41]
	ALIGN 2
..@j6827:
		inc	byte [bp-41]
		mov	bx,word [bp+6]
		mov	al,byte [bp-41]
		mov	ah,0
		mov	si,ax
		mov	ax,40
		mul	si
		mov	si,ax
		lea	di,[bp-40]
		push	ss
		pop	es
		lea	si,[bx+si]
		cld
		mov	cx,20
		rep
		movsw
		mov	bx,word [bp+4]
		wait fld	tword [bp-40]
		wait fld	tword [bx]
		wait fmulp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-30]
		wait fld	tword [bx+40]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-20]
		wait fld	tword [bx+80]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-10]
		wait fld	tword [bx+120]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-41]
		mov	ah,0
		mov	si,ax
		mov	ax,40
		mul	si
		mov	si,ax
		wait fstp	tword [bx+si]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	tword [bp-40]
		wait fld	tword [bx+10]
		wait fmulp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-30]
		wait fld	tword [bx+50]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-20]
		wait fld	tword [bx+90]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-10]
		wait fld	tword [bx+130]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-41]
		mov	ah,0
		mov	si,ax
		mov	ax,40
		mul	si
		mov	si,ax
		wait fstp	tword [bx+si+10]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	tword [bp-40]
		wait fld	tword [bx+20]
		wait fmulp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-30]
		wait fld	tword [bx+60]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-20]
		wait fld	tword [bx+100]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-10]
		wait fld	tword [bx+140]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-41]
		mov	ah,0
		mov	si,ax
		mov	ax,40
		mul	si
		mov	si,ax
		wait fstp	tword [bx+si+20]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	tword [bp-40]
		wait fld	tword [bx+30]
		wait fmulp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-30]
		wait fld	tword [bx+70]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-20]
		wait fld	tword [bx+110]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	tword [bp-10]
		wait fld	tword [bx+150]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-41]
		mov	ah,0
		mov	si,ax
		mov	ax,40
		mul	si
		mov	si,ax
		wait fstp	tword [bx+si+30]
		DB	09bh
		cmp	byte [bp-41],3
		jb	..@j6827
		mov	sp,bp
		pop	bp
		ret	6
