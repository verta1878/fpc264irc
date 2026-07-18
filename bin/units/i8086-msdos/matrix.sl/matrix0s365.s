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
	GLOBAL MATRIX_$$_plus$TMATRIX3_EXTENDED$TMATRIX3_EXTENDED$$TMATRIX3_EXTENDED
MATRIX_$$_plus$TMATRIX3_EXTENDED$TMATRIX3_EXTENDED$$TMATRIX3_EXTENDED:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si]
		wait fld	tword [bx]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+10]
		wait fld	tword [bx+10]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	tword [bx+10]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+20]
		wait fld	tword [bx+20]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	tword [bx+20]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+30]
		wait fld	tword [bx+30]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	tword [bx+30]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+40]
		wait fld	tword [bx+40]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	tword [bx+40]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+50]
		wait fld	tword [bx+50]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	tword [bx+50]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+60]
		wait fld	tword [bx+60]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	tword [bx+60]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+70]
		wait fld	tword [bx+70]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	tword [bx+70]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+80]
		wait fld	tword [bx+80]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	tword [bx+80]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	6
