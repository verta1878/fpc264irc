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
	GLOBAL MATRIX_$$_minus$TMATRIX4_EXTENDED$EXTENDED$$TMATRIX4_EXTENDED
MATRIX_$$_minus$TMATRIX4_EXTENDED$EXTENDED$$TMATRIX4_EXTENDED:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx]
		wait fsubrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+10]
		wait fsubrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+10]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+20]
		wait fsubrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+20]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+30]
		wait fsubrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+30]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+40]
		wait fsubrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+40]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+50]
		wait fsubrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+50]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+60]
		wait fsubrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+60]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+70]
		wait fsubrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+70]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+80]
		wait fsubrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+80]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+90]
		wait fsubrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+90]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+100]
		wait fsubrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+100]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+110]
		wait fsubrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+110]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+120]
		wait fsubrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+120]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+130]
		wait fsubrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+130]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+140]
		wait fsubrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+140]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+150]
		wait fsubrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+150]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	14
