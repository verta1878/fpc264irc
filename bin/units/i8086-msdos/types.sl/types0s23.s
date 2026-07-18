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
	GLOBAL TYPES$_$TPOINT_$__$$_OFFSET$LONGINT$LONGINT
TYPES$_$TPOINT_$__$$_OFFSET$LONGINT$LONGINT:
		push	bp
		mov	bp,sp
		mov	si,word [bp+12]
		mov	bx,word [si]
		mov	cx,word [si+2]
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		add	ax,bx
		adc	dx,cx
		mov	bx,word [bp+12]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	bx,word [bp+12]
		mov	cx,word [bx+4]
		mov	bx,word [bx+6]
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		add	ax,cx
		adc	dx,bx
		mov	bx,word [bp+12]
		mov	word [bx+4],ax
		mov	word [bx+6],dx
		mov	sp,bp
		pop	bp
		ret	10
