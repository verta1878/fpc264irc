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
	GLOBAL MATRIX$_$TMATRIX3_EXTENDED_$__$$_SET_ROW$BYTE$TVECTOR3_EXTENDED
MATRIX$_$TMATRIX3_EXTENDED_$__$$_SET_ROW$BYTE$TVECTOR3_EXTENDED:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		mov	al,byte [bp+6]
		mov	ah,0
		mov	di,ax
		mov	ax,30
		mul	di
		mov	di,ax
		mov	si,word [bp+4]
		lea	di,[bx+di]
		push	ds
		pop	es
		cld
		mov	cx,15
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	6
