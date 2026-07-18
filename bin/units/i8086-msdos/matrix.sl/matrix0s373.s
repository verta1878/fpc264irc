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
	GLOBAL MATRIX_$$_slash$TMATRIX3_EXTENDED$EXTENDED$$TMATRIX3_EXTENDED
MATRIX_$$_slash$TMATRIX3_EXTENDED$EXTENDED$$TMATRIX3_EXTENDED:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx]
		wait fdivrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+10]
		wait fdivrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+10]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+20]
		wait fdivrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+20]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+30]
		wait fdivrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+30]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+40]
		wait fdivrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+40]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+50]
		wait fdivrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+50]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+60]
		wait fdivrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+60]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+70]
		wait fdivrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+70]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+80]
		wait fdivrp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+80]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	14
