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
	GLOBAL MATRIX$_$TMATRIX3_DOUBLE_$__$$_SET_COLUMN$BYTE$TVECTOR3_DOUBLE
MATRIX$_$TMATRIX3_DOUBLE_$__$$_SET_COLUMN$BYTE$TVECTOR3_DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+8]
		mov	al,byte [bp+6]
		mov	ah,0
		mov	di,ax
		mov	cl,3
		shl	di,cl
		mov	si,word [bp+4]
		lea	di,[bx+di]
		push	ds
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp+8]
		mov	word [bp-4],ax
		mov	al,byte [bp+6]
		mov	ah,0
		mov	di,ax
		mov	cl,3
		shl	di,cl
		mov	si,word [bp+4]
		mov	bx,word [bp-4]
		lea	di,[bx+di+24]
		push	ds
		pop	es
		lea	si,[si+8]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		mov	al,byte [bp+6]
		mov	ah,0
		mov	di,ax
		mov	cl,3
		shl	di,cl
		mov	si,word [bp+4]
		mov	bx,word [bp-2]
		lea	di,[bx+di+48]
		push	ds
		pop	es
		lea	si,[si+16]
		cld
		mov	cx,4
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	6
