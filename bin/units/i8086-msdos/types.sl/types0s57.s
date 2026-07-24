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
	GLOBAL TYPES$_$TRECT_$__$$_SETLOCATION$LONGINT$LONGINT
TYPES$_$TRECT_$__$$_SETLOCATION$LONGINT$LONGINT:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+12]
		push	ax
		mov	bx,word [bp+12]
		mov	cx,word [bx]
		mov	bx,word [bx+2]
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		sub	ax,cx
		sbb	dx,bx
		push	dx
		push	ax
		mov	bx,word [bp+12]
		mov	cx,word [bx+4]
		mov	bx,word [bx+6]
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		sub	ax,cx
		sbb	dx,bx
		push	dx
		push	ax
		call	TYPES$_$TRECT_$__$$_OFFSET$LONGINT$LONGINT
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	TYPES$_$TRECT_$__$$_OFFSET$LONGINT$LONGINT
