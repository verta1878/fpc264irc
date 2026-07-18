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
	GLOBAL MATRIX_$$_plus$TMATRIX4_SINGLE$TMATRIX4_SINGLE$$TMATRIX4_SINGLE
MATRIX_$$_plus$TMATRIX4_SINGLE$TMATRIX4_SINGLE$$TMATRIX4_SINGLE:
		push	bp
		mov	bp,sp
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	dword [bx]
		wait fadd	dword [si]
		mov	bx,word [bp+8]
		wait fstp	dword [bx]
		DB	09bh
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	dword [bx+4]
		wait fadd	dword [si+4]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+4]
		DB	09bh
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	dword [bx+8]
		wait fadd	dword [si+8]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+8]
		DB	09bh
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	dword [bx+12]
		wait fadd	dword [si+12]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+12]
		DB	09bh
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	dword [bx+16]
		wait fadd	dword [si+16]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+16]
		DB	09bh
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	dword [bx+20]
		wait fadd	dword [si+20]
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
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+36]
		wait fadd	dword [bx+36]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+36]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+40]
		wait fadd	dword [bx+40]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+40]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+44]
		wait fadd	dword [bx+44]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+44]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+48]
		wait fadd	dword [bx+48]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+48]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+52]
		wait fadd	dword [bx+52]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+52]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+56]
		wait fadd	dword [bx+56]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+56]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+60]
		wait fadd	dword [bx+60]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+60]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	6
