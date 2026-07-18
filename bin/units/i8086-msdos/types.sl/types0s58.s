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
	GLOBAL TYPES$_$TRECT_$__$$_SETLOCATION$TPOINT
TYPES$_$TRECT_$__$$_SETLOCATION$TPOINT:
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
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-2]
		push	word [bp-4]
		call	TYPES$_$TRECT_$__$$_SETLOCATION$LONGINT$LONGINT
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TYPES$_$TRECT_$__$$_SETLOCATION$LONGINT$LONGINT
