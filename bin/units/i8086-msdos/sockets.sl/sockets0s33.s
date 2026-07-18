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
	GLOBAL SOCKETS_$$_HTONL$LONGWORD$$LONGWORD
SOCKETS_$$_HTONL$LONGWORD$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		and	ax,255
		mov	dx,0
		mov	dx,ax
		mov	ax,0
		mov	cl,8
		shl	dx,cl
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		and	bx,-256
		mov	si,0
		mov	cx,8
..@j312:
		shl	bx,1
		rcl	si,1
		loop	..@j312
		or	bx,ax
		or	si,dx
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	ax,0
		and	dx,255
		mov	cx,8
..@j313:
		shr	dx,1
		rcr	ax,1
		loop	..@j313
		or	ax,bx
		or	dx,si
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		mov	bx,0
		and	si,-256
		mov	bx,si
		mov	si,0
		mov	cl,8
		shr	bx,cl
		or	bx,ax
		or	si,dx
		mov	word [bp-4],bx
		mov	word [bp-2],si
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
