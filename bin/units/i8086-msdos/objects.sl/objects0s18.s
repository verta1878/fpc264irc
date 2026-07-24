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
	GLOBAL OBJECTS$_$TRECT_$__$$_MOVE$LONGINT$LONGINT
OBJECTS$_$TRECT_$__$$_MOVE$LONGINT$LONGINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+12]
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		add	word [bx],ax
		adc	word [bx+2],dx
		mov	bx,word [bp+12]
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		add	word [bx+4],ax
		adc	word [bx+6],dx
		mov	bx,word [bp+12]
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		add	word [bx+8],ax
		adc	word [bx+10],dx
		mov	bx,word [bp+12]
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		add	word [bx+12],dx
		adc	word [bx+14],ax
		mov	sp,bp
		pop	bp
		ret	10
