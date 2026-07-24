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
	GLOBAL MATRIX_$$_minus$TMATRIX3_DOUBLE$TMATRIX3_DOUBLE$$TMATRIX3_DOUBLE
MATRIX_$$_minus$TMATRIX3_DOUBLE$TMATRIX3_DOUBLE$$TMATRIX3_DOUBLE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si]
		wait fsubr	qword [bx]
		mov	bx,word [bp+8]
		wait fstp	qword [bx]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+8]
		wait fsubr	qword [bx+8]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+8]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+16]
		wait fsubr	qword [bx+16]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+16]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+24]
		wait fsubr	qword [bx+24]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+24]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+32]
		wait fsubr	qword [bx+32]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+32]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+40]
		wait fsubr	qword [bx+40]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+40]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+48]
		wait fsubr	qword [bx+48]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+48]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+56]
		wait fsubr	qword [bx+56]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+56]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+64]
		wait fsubr	qword [bx+64]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+64]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	6
