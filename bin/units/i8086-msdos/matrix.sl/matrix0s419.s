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
	GLOBAL MATRIX_$$_plus$TMATRIX4_DOUBLE$TMATRIX4_DOUBLE$$TMATRIX4_DOUBLE
MATRIX_$$_plus$TMATRIX4_DOUBLE$TMATRIX4_DOUBLE$$TMATRIX4_DOUBLE:
		push	bp
		mov	bp,sp
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	qword [bx]
		wait fadd	qword [si]
		mov	bx,word [bp+8]
		wait fstp	qword [bx]
		DB	09bh
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	qword [bx+8]
		wait fadd	qword [si+8]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+8]
		DB	09bh
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	qword [bx+16]
		wait fadd	qword [si+16]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+16]
		DB	09bh
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	qword [bx+24]
		wait fadd	qword [si+24]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+24]
		DB	09bh
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	qword [bx+32]
		wait fadd	qword [si+32]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+32]
		DB	09bh
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	qword [bx+40]
		wait fadd	qword [si+40]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+40]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+48]
		wait fadd	qword [bx+48]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+48]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+56]
		wait fadd	qword [bx+56]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+56]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+64]
		wait fadd	qword [bx+64]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+64]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+72]
		wait fadd	qword [bx+72]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+72]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+80]
		wait fadd	qword [bx+80]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+80]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+88]
		wait fadd	qword [bx+88]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+88]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+96]
		wait fadd	qword [bx+96]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+96]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+104]
		wait fadd	qword [bx+104]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+104]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+112]
		wait fadd	qword [bx+112]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+112]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	qword [si+120]
		wait fadd	qword [bx+120]
		mov	bx,word [bp+8]
		wait fstp	qword [bx+120]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	6
