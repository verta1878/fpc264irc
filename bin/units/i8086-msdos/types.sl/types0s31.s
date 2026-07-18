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
	GLOBAL TYPES$_$TRECT_$__$$_plus$TRECT$TRECT$$TRECT
TYPES$_$TRECT_$__$$_plus$TRECT$TRECT$$TRECT:
		push	bp
		mov	bp,sp
		sub	sp,32
		mov	ax,word [bp+6]
		lea	di,[bp-16]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		mov	si,word [bp+4]
		lea	di,[bp-32]
		push	ss
		pop	es
		cld
		mov	cx,8
		rep
		movsw
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-32]
		push	ax
		call	TYPES$_$TRECT_$__$$_UNION$TRECT$TRECT$$TRECT
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	TYPES$_$TRECT_$__$$_UNION$TRECT$TRECT$$TRECT
