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
	GLOBAL MATRIX$_$TMATRIX4_SINGLE_$__$$_SET_COLUMN$BYTE$TVECTOR4_SINGLE
MATRIX$_$TMATRIX4_SINGLE_$__$$_SET_COLUMN$BYTE$TVECTOR4_SINGLE:
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
		mov	word [bx+si+16],ax
		mov	ax,word [di+6]
		mov	word [bx+si+18],ax
		mov	bx,word [bp+8]
		mov	al,byte [bp+6]
		mov	ah,0
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	di,word [bp+4]
		mov	ax,word [di+8]
		mov	word [bx+si+32],ax
		mov	ax,word [di+10]
		mov	word [bx+si+34],ax
		mov	bx,word [bp+8]
		mov	al,byte [bp+6]
		mov	ah,0
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	di,word [bp+4]
		mov	ax,word [di+12]
		mov	word [bx+si+48],ax
		mov	ax,word [di+14]
		mov	word [bx+si+50],ax
		mov	sp,bp
		pop	bp
		ret	6
