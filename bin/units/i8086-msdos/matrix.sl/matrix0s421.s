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
	GLOBAL MATRIX_$$_minus$TMATRIX4_DOUBLE$$TMATRIX4_DOUBLE
MATRIX_$$_minus$TMATRIX4_DOUBLE$$TMATRIX4_DOUBLE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		wait fld	qword [bx]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bx+8]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx+8]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bx+16]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx+16]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bx+24]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx+24]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bx+32]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx+32]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bx+40]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx+40]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bx+48]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx+48]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bx+56]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx+56]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bx+64]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx+64]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bx+72]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx+72]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bx+80]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx+80]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bx+88]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx+88]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bx+96]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx+96]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bx+104]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx+104]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bx+112]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx+112]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bx+120]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	qword [bx+120]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	4
