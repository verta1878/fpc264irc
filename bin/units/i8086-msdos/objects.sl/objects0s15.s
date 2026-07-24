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
	GLOBAL OBJECTS$_$TRECT_$__$$_COPY$TRECT
OBJECTS$_$TRECT_$__$$_COPY$TRECT:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	ax,word [bp+4]
		lea	di,[bp-16]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		mov	di,word [bp+6]
		push	ds
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+6]
		lea	di,[bx+8]
		push	ds
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	4
