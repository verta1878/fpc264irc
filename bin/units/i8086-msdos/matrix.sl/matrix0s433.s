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
	GLOBAL MATRIX$_$TMATRIX4_EXTENDED_$__$$_SET_COLUMN$BYTE$TVECTOR4_EXTENDED
MATRIX$_$TMATRIX4_EXTENDED_$__$$_SET_COLUMN$BYTE$TVECTOR4_EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	bx,word [bp+8]
		mov	al,byte [bp+6]
		mov	ah,0
		mov	di,ax
		mov	ax,10
		mul	di
		mov	di,ax
		mov	si,word [bp+4]
		lea	di,[bx+di]
		push	ds
		pop	es
		cld
		mov	cx,5
		rep
		movsw
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
		mov	al,byte [bp+6]
		mov	ah,0
		mov	di,ax
		mov	ax,10
		mul	di
		mov	di,ax
		mov	si,word [bp+4]
		mov	ax,word [bp-6]
		mov	word [bp-10],ax
		mov	bx,word [bp-10]
		lea	di,[bx+di+40]
		push	ds
		pop	es
		lea	si,[si+10]
		cld
		mov	cx,5
		rep
		movsw
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		mov	al,byte [bp+6]
		mov	ah,0
		mov	di,ax
		mov	ax,10
		mul	di
		mov	di,ax
		mov	si,word [bp+4]
		mov	ax,word [bp-2]
		mov	word [bp-8],ax
		mov	bx,word [bp-8]
		lea	di,[bx+di+80]
		push	ds
		pop	es
		lea	si,[si+20]
		cld
		mov	cx,5
		rep
		movsw
		mov	ax,word [bp+8]
		mov	word [bp-4],ax
		mov	al,byte [bp+6]
		mov	ah,0
		mov	di,ax
		mov	ax,10
		mul	di
		mov	di,ax
		mov	si,word [bp+4]
		mov	ax,word [bp-4]
		mov	word [bp-12],ax
		mov	bx,word [bp-12]
		lea	di,[bx+di+120]
		push	ds
		pop	es
		lea	si,[si+30]
		cld
		mov	cx,5
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	6
