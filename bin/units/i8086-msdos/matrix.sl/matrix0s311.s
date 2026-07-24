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
	GLOBAL MATRIX_$$_plus$TMATRIX3_SINGLE$TMATRIX3_SINGLE$$TMATRIX3_SINGLE
MATRIX_$$_plus$TMATRIX3_SINGLE$TMATRIX3_SINGLE$$TMATRIX3_SINGLE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si]
		wait fadd	dword [bx]
		mov	bx,word [bp+8]
		wait fstp	dword [bx]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+4]
		wait fadd	dword [bx+4]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+4]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+8]
		wait fadd	dword [bx+8]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+8]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+12]
		wait fadd	dword [bx+12]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+12]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+16]
		wait fadd	dword [bx+16]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+16]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+20]
		wait fadd	dword [bx+20]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+20]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+24]
		wait fadd	dword [bx+24]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+24]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+28]
		wait fadd	dword [bx+28]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+28]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+32]
		wait fadd	dword [bx+32]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+32]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	6
