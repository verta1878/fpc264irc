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
	GLOBAL TYPES$_$TRECT_$__$$_EMPTY$$TRECT
TYPES$_$TRECT_$__$$_EMPTY$$TRECT:
		push	bp
		mov	bp,sp
		sub	sp,16
		lea	ax,[bp-16]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	TYPES$_$TRECT_$__$$_CREATE$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT
		mov	di,word [bp+4]
		push	ds
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,8
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TYPES$_$TRECT_$__$$_CREATE$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT
