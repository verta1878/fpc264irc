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
	GLOBAL TYPES$_$TPOINT_$__$$_plus$TPOINT$TPOINT$$TPOINT
TYPES$_$TPOINT_$__$$_plus$TPOINT$TPOINT$$TPOINT:
		push	bp
		mov	bp,sp
		mov	di,word [bp+6]
		mov	bx,word [bp+4]
		mov	si,word [di]
		mov	dx,word [di+2]
		mov	ax,word [bx]
		mov	cx,word [bx+2]
		add	ax,si
		adc	cx,dx
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],cx
		mov	di,word [bp+6]
		mov	bx,word [bp+4]
		mov	si,word [di+4]
		mov	dx,word [di+6]
		mov	ax,word [bx+4]
		mov	cx,word [bx+6]
		add	ax,si
		adc	cx,dx
		mov	bx,word [bp+8]
		mov	word [bx+4],ax
		mov	word [bx+6],cx
		mov	sp,bp
		pop	bp
		ret	6
