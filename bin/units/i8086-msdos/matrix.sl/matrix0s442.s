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
	GLOBAL MATRIX_$$_assign$TMATRIX3_DOUBLE$$TMATRIX4_EXTENDED
MATRIX_$$_assign$TMATRIX3_DOUBLE$$TMATRIX4_EXTENDED:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si]
		wait fstp	tword [bx]
		DB	09bh
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	qword [bx+8]
		wait fstp	tword [si+10]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+16]
		wait fstp	tword [bx+20]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx+30]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+24]
		wait fstp	tword [bx+40]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+32]
		wait fstp	tword [bx+50]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+40]
		wait fstp	tword [bx+60]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx+70]
		DB	09bh
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	qword [bx+48]
		wait fstp	tword [si+80]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+56]
		wait fstp	tword [bx+90]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+64]
		wait fstp	tword [bx+100]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx+110]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx+120]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx+130]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx+140]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx+150]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	4
