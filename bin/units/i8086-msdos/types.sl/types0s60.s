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
	GLOBAL TYPES$_$TRECT_$__$$_SETWIDTH$LONGINT
TYPES$_$TRECT_$__$$_SETWIDTH$LONGINT:
		push	bp
		mov	bp,sp
		mov	si,word [bp+8]
		mov	bx,word [si]
		mov	cx,word [si+2]
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		add	ax,bx
		adc	dx,cx
		mov	bx,word [bp+8]
		mov	word [bx+8],ax
		mov	word [bx+10],dx
		mov	sp,bp
		pop	bp
		ret	6
