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
	GLOBAL TYPES$_$TRECT_$__$$_CREATE$TPOINT$LONGINT$LONGINT$$TRECT
TYPES$_$TRECT_$__$$_CREATE$TPOINT$LONGINT$LONGINT$$TRECT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+12]
		lea	di,[bp-8]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,4
		rep
		movsw
		mov	di,word [bp+14]
		push	ds
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp+14]
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		call	TYPES$_$TRECT_$__$$_SETWIDTH$LONGINT
		mov	ax,word [bp+14]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	TYPES$_$TRECT_$__$$_SETHEIGHT$LONGINT
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	TYPES$_$TRECT_$__$$_SETHEIGHT$LONGINT
EXTERN	TYPES$_$TRECT_$__$$_SETWIDTH$LONGINT
