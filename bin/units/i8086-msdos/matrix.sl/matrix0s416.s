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
	GLOBAL MATRIX_$$_assign$TMATRIX3_EXTENDED$$TMATRIX4_DOUBLE
MATRIX_$$_assign$TMATRIX3_EXTENDED$$TMATRIX4_DOUBLE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si]
		wait fstp	qword [bx]
		DB	09bh
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	tword [bx+10]
		wait fstp	qword [si+8]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+20]
		wait fstp	qword [bx+16]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+24]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+30]
		wait fstp	qword [bx+32]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+40]
		wait fstp	qword [bx+40]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+50]
		wait fstp	qword [bx+48]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+56]
		DB	09bh
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	tword [bx+60]
		wait fstp	qword [si+64]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+70]
		wait fstp	qword [bx+72]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+80]
		wait fstp	qword [bx+80]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+88]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+96]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+104]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+112]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+120]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	4
