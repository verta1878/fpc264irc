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
	GLOBAL MATRIX_$$_assign$TVECTOR4_SINGLE$$TVECTOR3_DOUBLE
MATRIX_$$_assign$TVECTOR4_SINGLE$$TVECTOR3_DOUBLE:
		push	bp
		mov	bp,sp
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	dword [bx]
		wait fstp	qword [si]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+4]
		wait fstp	qword [bx+8]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+8]
		wait fstp	qword [bx+16]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	4
