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
	GLOBAL MATRIX$_$TMATRIX3_EXTENDED_$__$$_GET_COLUMN$BYTE$$TVECTOR3_EXTENDED
MATRIX$_$TMATRIX3_EXTENDED_$__$$_GET_COLUMN$BYTE$$TVECTOR3_EXTENDED:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		mov	al,byte [bp+4]
		mov	ah,0
		mov	si,ax
		mov	ax,10
		mul	si
		mov	si,ax
		mov	di,word [bp+6]
		push	ds
		pop	es
		lea	si,[bx+si]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+8]
		mov	al,byte [bp+4]
		mov	ah,0
		mov	si,ax
		mov	ax,10
		mul	si
		mov	si,ax
		mov	di,word [bp+6]
		lea	di,[di+10]
		push	ds
		pop	es
		lea	si,[bx+si+30]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+8]
		mov	al,byte [bp+4]
		mov	ah,0
		mov	si,ax
		mov	ax,10
		mul	si
		mov	si,ax
		mov	di,word [bp+6]
		lea	di,[di+20]
		push	ds
		pop	es
		lea	si,[bx+si+60]
		cld
		mov	cx,5
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	6
