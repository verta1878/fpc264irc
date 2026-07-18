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
	GLOBAL SYSTEM_$$_SWAPENDIAN$LONGWORD$$LONGWORD
SYSTEM_$$_SWAPENDIAN$LONGWORD$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,8
..@j1934:
		shl	ax,1
		rcl	dx,1
		loop	..@j1934
		and	ax,-256
		and	dx,-256
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		mov	cx,8
..@j1935:
		shr	si,1
		rcr	bx,1
		loop	..@j1935
		and	bx,255
		and	si,255
		or	bx,ax
		or	si,dx
		mov	word [bp-4],bx
		mov	word [bp-2],si
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	dx,ax
		mov	ax,0
		mov	cx,word [bp-4]
		mov	bx,word [bp-2]
		mov	cx,bx
		mov	bx,0
		or	cx,ax
		or	bx,dx
		mov	word [bp-4],cx
		mov	word [bp-2],bx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
