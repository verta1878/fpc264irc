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
	GLOBAL MATRIX_$$_slash$TMATRIX4_DOUBLE$DOUBLE$$TMATRIX4_DOUBLE
MATRIX_$$_slash$TMATRIX4_DOUBLE$DOUBLE$$TMATRIX4_DOUBLE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fdivr	qword [bx]
		mov	bx,word [bp+14]
		wait fstp	qword [bx]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fdivr	qword [bx+8]
		mov	bx,word [bp+14]
		wait fstp	qword [bx+8]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fdivr	qword [bx+16]
		mov	bx,word [bp+14]
		wait fstp	qword [bx+16]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fdivr	qword [bx+24]
		mov	bx,word [bp+14]
		wait fstp	qword [bx+24]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fdivr	qword [bx+32]
		mov	bx,word [bp+14]
		wait fstp	qword [bx+32]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fdivr	qword [bx+40]
		mov	bx,word [bp+14]
		wait fstp	qword [bx+40]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fdivr	qword [bx+48]
		mov	bx,word [bp+14]
		wait fstp	qword [bx+48]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fdivr	qword [bx+56]
		mov	bx,word [bp+14]
		wait fstp	qword [bx+56]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fdivr	qword [bx+64]
		mov	bx,word [bp+14]
		wait fstp	qword [bx+64]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fdivr	qword [bx+72]
		mov	bx,word [bp+14]
		wait fstp	qword [bx+72]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fdivr	qword [bx+80]
		mov	bx,word [bp+14]
		wait fstp	qword [bx+80]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fdivr	qword [bx+88]
		mov	bx,word [bp+14]
		wait fstp	qword [bx+88]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fdivr	qword [bx+96]
		mov	bx,word [bp+14]
		wait fstp	qword [bx+96]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fdivr	qword [bx+104]
		mov	bx,word [bp+14]
		wait fstp	qword [bx+104]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fdivr	qword [bx+112]
		mov	bx,word [bp+14]
		wait fstp	qword [bx+112]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fdivr	qword [bx+120]
		mov	bx,word [bp+14]
		wait fstp	qword [bx+120]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	12
