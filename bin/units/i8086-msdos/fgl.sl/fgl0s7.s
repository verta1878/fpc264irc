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
	GLOBAL FGL$_$TFPSLIST_$__$$_INTERNALPUT$SMALLINT$POINTER
FGL$_$TFPSLIST_$__$$_INTERNALPUT$SMALLINT$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+8]
		mov	ax,word [bp+6]
		mul	word [bx+8]
		mov	bx,word [bp+8]
		mov	dx,word [bx+2]
		add	dx,ax
		mov	word [bp-2],dx
		push	word [bp+8]
		push	word [bp+4]
		push	word [bp-2]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		mov	sp,bp
		pop	bp
		ret	6
