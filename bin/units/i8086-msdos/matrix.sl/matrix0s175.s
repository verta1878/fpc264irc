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
	GLOBAL MATRIX_$$_assign$TVECTOR3_DOUBLE$$TVECTOR4_DOUBLE
MATRIX_$$_assign$TVECTOR3_DOUBLE$$TVECTOR4_DOUBLE:
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
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		lea	di,[bx+8]
		push	ds
		pop	es
		lea	si,[si+8]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		lea	di,[bx+16]
		push	ds
		pop	es
		lea	si,[si+16]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+24]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	4
