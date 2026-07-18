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
	GLOBAL MATRIX_$$_assign$TMATRIX2_SINGLE$$TMATRIX3_SINGLE
MATRIX_$$_assign$TMATRIX2_SINGLE$$TMATRIX3_SINGLE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [si]
		mov	word [bx],ax
		mov	ax,word [si+2]
		mov	word [bx+2],ax
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [si+4]
		mov	word [bx+4],ax
		mov	ax,word [si+6]
		mov	word [bx+6],ax
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	dword [bx+8]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [si+8]
		mov	word [bx+12],ax
		mov	ax,word [si+10]
		mov	word [bx+14],ax
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	ax,word [bx+12]
		mov	word [si+16],ax
		mov	ax,word [bx+14]
		mov	word [si+18],ax
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	dword [bx+20]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	dword [bx+24]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	dword [bx+28]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	dword [bx+32]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	4
