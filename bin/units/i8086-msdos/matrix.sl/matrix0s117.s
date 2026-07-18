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
	GLOBAL MATRIX_$$_star$TVECTOR3_DOUBLE$DOUBLE$$TVECTOR3_DOUBLE
MATRIX_$$_star$TVECTOR3_DOUBLE$DOUBLE$$TVECTOR3_DOUBLE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fmul	qword [bx]
		mov	bx,word [bp+14]
		wait fstp	qword [bx]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fmul	qword [bx+8]
		mov	bx,word [bp+14]
		wait fstp	qword [bx+8]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fmul	qword [bx+16]
		mov	bx,word [bp+14]
		wait fstp	qword [bx+16]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	12
