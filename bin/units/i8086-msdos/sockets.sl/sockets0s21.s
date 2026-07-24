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
	GLOBAL SOCKETS_$$_FPFD_CLR$LONGINT$TFDSET
SOCKETS_$$_FPFD_CLR$LONGINT$TFDSET:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		cmp	ax,0
		jg	..@j216
		jl	..@j215
		cmp	dx,0
		jae	..@j216
		jmp	..@j215
..@j216:
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		cmp	dx,0
		jl	..@j214
		jg	..@j215
		cmp	ax,256
		jb	..@j214
		jmp	..@j215
..@j214:
		mov	cx,word [bp+6]
		mov	ax,word [bp+8]
		and	cx,31
		mov	ax,0
		mov	ax,1
		mov	dx,0
		and	cx,31
		jz	..@j219
..@j220:
		shl	ax,1
		rcl	dx,1
		loop	..@j220
..@j219:
		mov	word [bp-2],ax
		mov	di,dx
		not	word [bp-2]
		not	di
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,5
..@j221:
		shr	dx,1
		rcr	ax,1
		loop	..@j221
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	bx,word [bp-4]
		mov	dx,word [bx+si]
		mov	bx,word [bp-4]
		mov	ax,word [bx+si+2]
		and	dx,word [bp-2]
		and	ax,di
		mov	bx,word [bp+4]
		mov	di,word [bp+6]
		mov	si,word [bp+8]
		mov	cx,5
..@j222:
		shr	si,1
		rcr	di,1
		loop	..@j222
		mov	si,di
		mov	cl,2
		shl	si,cl
		mov	word [bx+si],dx
		mov	word [bx+si+2],ax
..@j215:
		mov	sp,bp
		pop	bp
		ret	6
