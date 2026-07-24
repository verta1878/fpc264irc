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
	GLOBAL MATRIX$_$TMATRIX3_SINGLE_$__$$_SET_COLUMN$BYTE$TVECTOR3_SINGLE
MATRIX$_$TMATRIX3_SINGLE_$__$$_SET_COLUMN$BYTE$TVECTOR3_SINGLE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		mov	al,byte [bp+6]
		mov	ah,0
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	di,word [bp+4]
		mov	ax,word [di]
		mov	word [bx+si],ax
		mov	ax,word [di+2]
		mov	word [bx+si+2],ax
		mov	bx,word [bp+8]
		mov	al,byte [bp+6]
		mov	ah,0
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	di,word [bp+4]
		mov	ax,word [di+4]
		mov	word [bx+si+12],ax
		mov	ax,word [di+6]
		mov	word [bx+si+14],ax
		mov	bx,word [bp+8]
		mov	al,byte [bp+6]
		mov	ah,0
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	di,word [bp+4]
		mov	ax,word [di+8]
		mov	word [bx+si+24],ax
		mov	ax,word [di+10]
		mov	word [bx+si+26],ax
		mov	sp,bp
		pop	bp
		ret	6
