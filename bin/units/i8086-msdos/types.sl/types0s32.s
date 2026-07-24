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
	GLOBAL TYPES$_$TRECT_$__$$_not_equal$TRECT$TRECT$$BOOLEAN
TYPES$_$TRECT_$__$$_not_equal$TRECT$TRECT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,34
		mov	ax,word [bp+6]
		lea	di,[bp-18]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		mov	si,word [bp+4]
		lea	di,[bp-34]
		push	ss
		pop	es
		cld
		mov	cx,8
		rep
		movsw
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-34]
		push	ax
		call	TYPES$_$TRECT_$__$$_equal$TRECT$TRECT$$BOOLEAN
		test	al,al
		mov	al,0
		jne	..@j214
		inc	ax
..@j214:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TYPES$_$TRECT_$__$$_equal$TRECT$TRECT$$BOOLEAN
