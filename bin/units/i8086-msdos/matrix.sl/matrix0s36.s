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
	GLOBAL MATRIX_$$_assign$TVECTOR4_DOUBLE$$TVECTOR2_DOUBLE
MATRIX_$$_assign$TVECTOR4_DOUBLE$$TVECTOR2_DOUBLE:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		mov	si,word [bp+4]
		mov	di,ax
		push	ds
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		lea	di,[si+8]
		push	ds
		pop	es
		lea	si,[bx+8]
		cld
		mov	cx,4
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	4
