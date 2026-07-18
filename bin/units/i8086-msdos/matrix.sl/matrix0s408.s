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
	GLOBAL MATRIX$_$TMATRIX4_DOUBLE_$__$$_TRANSPOSE$$TMATRIX4_DOUBLE
MATRIX$_$TMATRIX4_DOUBLE_$__$$_TRANSPOSE$$TMATRIX4_DOUBLE:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		mov	si,word [bp+6]
		mov	di,ax
		push	ds
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		lea	di,[si+8]
		push	ds
		pop	es
		lea	si,[bx+32]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+16]
		push	ds
		pop	es
		lea	si,[si+64]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+24]
		push	ds
		pop	es
		lea	si,[si+96]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+32]
		push	ds
		pop	es
		lea	si,[si+8]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+40]
		push	ds
		pop	es
		lea	si,[si+40]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+48]
		push	ds
		pop	es
		lea	si,[si+72]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+56]
		push	ds
		pop	es
		lea	si,[si+104]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+64]
		push	ds
		pop	es
		lea	si,[si+16]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+72]
		push	ds
		pop	es
		lea	si,[si+48]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+80]
		push	ds
		pop	es
		lea	si,[si+80]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+88]
		push	ds
		pop	es
		lea	si,[si+112]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+96]
		push	ds
		pop	es
		lea	si,[si+24]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+104]
		push	ds
		pop	es
		lea	si,[si+56]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+112]
		push	ds
		pop	es
		lea	si,[si+88]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+120]
		push	ds
		pop	es
		lea	si,[si+120]
		cld
		mov	cx,4
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	4
