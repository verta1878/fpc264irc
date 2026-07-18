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
	GLOBAL MATRIX$_$TMATRIX4_SINGLE_$__$$_GET_COLUMN$BYTE$$TVECTOR4_SINGLE
MATRIX$_$TMATRIX4_SINGLE_$__$$_GET_COLUMN$BYTE$$TVECTOR4_SINGLE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		mov	al,byte [bp+4]
		mov	ah,0
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	di,word [bp+6]
		mov	ax,word [bx+si]
		mov	word [di],ax
		mov	ax,word [bx+si+2]
		mov	word [di+2],ax
		mov	bx,word [bp+8]
		mov	al,byte [bp+4]
		mov	ah,0
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	di,word [bp+6]
		mov	ax,word [bx+si+16]
		mov	word [di+4],ax
		mov	ax,word [bx+si+18]
		mov	word [di+6],ax
		mov	bx,word [bp+8]
		mov	al,byte [bp+4]
		mov	ah,0
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	di,word [bp+6]
		mov	ax,word [bx+si+32]
		mov	word [di+8],ax
		mov	ax,word [bx+si+34]
		mov	word [di+10],ax
		mov	bx,word [bp+8]
		mov	al,byte [bp+4]
		mov	ah,0
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	di,word [bp+6]
		mov	ax,word [bx+si+48]
		mov	word [di+12],ax
		mov	ax,word [bx+si+50]
		mov	word [di+14],ax
		mov	sp,bp
		pop	bp
		ret	6
