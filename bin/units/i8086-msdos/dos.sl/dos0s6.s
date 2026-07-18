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
	GLOBAL DOS_$$_UNPACKTIME$LONGINT$DATETIME
DOS_$$_UNPACKTIME$LONGINT$DATETIME:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		and	ax,31
		mov	dx,0
		shl	ax,1
		rcl	dx,1
		mov	bx,word [bp+4]
		mov	word [bx+10],ax
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,5
..@j86:
		shr	dx,1
		rcr	ax,1
		loop	..@j86
		mov	word [bp+6],ax
		mov	word [bp+8],dx
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		and	ax,63
		mov	dx,0
		mov	bx,word [bp+4]
		mov	word [bx+8],ax
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,6
..@j91:
		shr	dx,1
		rcr	ax,1
		loop	..@j91
		mov	word [bp+6],ax
		mov	word [bp+8],dx
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		and	ax,31
		mov	dx,0
		mov	bx,word [bp+4]
		mov	word [bx+6],ax
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,5
..@j96:
		shr	dx,1
		rcr	ax,1
		loop	..@j96
		mov	word [bp+6],ax
		mov	word [bp+8],dx
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		and	ax,31
		mov	dx,0
		mov	bx,word [bp+4]
		mov	word [bx+4],ax
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,5
..@j101:
		shr	dx,1
		rcr	ax,1
		loop	..@j101
		mov	word [bp+6],ax
		mov	word [bp+8],dx
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		and	ax,15
		mov	dx,0
		mov	bx,word [bp+4]
		mov	word [bx+2],ax
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,4
..@j106:
		shr	dx,1
		rcr	ax,1
		loop	..@j106
		mov	word [bp+6],ax
		mov	word [bp+8],dx
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		add	ax,1980
		adc	dx,0
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	6
