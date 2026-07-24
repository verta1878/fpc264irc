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
	GLOBAL TYPES$_$TRECT_$__$$_CREATE$TPOINT$$TRECT
TYPES$_$TRECT_$__$$_CREATE$TPOINT$$TRECT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+4]
		lea	di,[bp-8]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,4
		rep
		movsw
		mov	di,word [bp+6]
		push	ds
		pop	es
		lea	si,[bp-8]
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
