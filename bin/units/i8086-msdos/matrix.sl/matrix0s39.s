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
	GLOBAL MATRIX_$$_minus$TVECTOR2_DOUBLE$$TVECTOR2_DOUBLE
MATRIX_$$_minus$TVECTOR2_DOUBLE$$TVECTOR2_DOUBLE:
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
		mov	sp,bp
		pop	bp
		ret	4
