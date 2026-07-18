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
	GLOBAL DOS_$$_PACKTIME$DATETIME$LONGINT
DOS_$$_PACKTIME$DATETIME$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	word [bx],-1980
		mov	word [bx+2],-1
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		and	ax,127
		mov	si,0
		mov	bx,word [bp+4]
		mov	dx,word [bx]
		mov	cx,word [bx+2]
		add	dx,ax
		adc	cx,si
		mov	bx,word [bp+4]
		mov	word [bx],dx
		mov	word [bx+2],cx
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		mov	cx,4
..@j56:
		shl	ax,1
		rcl	dx,1
		loop	..@j56
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	bx,word [bp+6]
		mov	si,word [bx+2]
		mov	dx,0
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	cx,word [bx+2]
		add	ax,si
		adc	cx,dx
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	word [bx+2],cx
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		mov	cx,5
..@j61:
		shl	ax,1
		rcl	dx,1
		loop	..@j61
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	bx,word [bp+6]
		mov	si,word [bx+4]
		mov	dx,0
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	cx,word [bx+2]
		add	ax,si
		adc	cx,dx
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	word [bx+2],cx
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		mov	dx,ax
		mov	ax,0
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	bx,word [bp+6]
		mov	dx,word [bx+6]
		mov	ax,0
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	cx,6
..@j70:
		shl	ax,1
		rcl	dx,1
		loop	..@j70
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	bx,word [bp+6]
		mov	bx,word [bx+8]
		mov	cx,0
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	ax,bx
		adc	dx,cx
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	cx,5
..@j75:
		shl	ax,1
		rcl	dx,1
		loop	..@j75
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	bx,word [bp+6]
		mov	ax,word [bx+10]
		shr	ax,1
		mov	bx,0
		mov	dx,word [bp-4]
		mov	cx,word [bp-2]
		add	dx,ax
		adc	cx,bx
		mov	word [bp-4],dx
		mov	word [bp-2],cx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	dx,0
		mov	bx,word [bp+4]
		mov	cx,word [bx]
		mov	bx,word [bx+2]
		add	cx,ax
		adc	bx,dx
		mov	si,word [bp+4]
		mov	word [si],cx
		mov	word [si+2],bx
		mov	sp,bp
		pop	bp
		ret	4
