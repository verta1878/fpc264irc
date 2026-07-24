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
	GLOBAL SOCKETS_$$_FPFD_SET$LONGINT$TFDSET
SOCKETS_$$_FPFD_SET$LONGINT$TFDSET:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		cmp	dx,0
		jg	..@j205
		jl	..@j204
		cmp	ax,0
		jae	..@j205
		jmp	..@j204
..@j205:
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		cmp	dx,0
		jl	..@j203
		jg	..@j204
		cmp	ax,256
		jb	..@j203
		jmp	..@j204
..@j203:
		mov	cx,word [bp+6]
		mov	ax,word [bp+8]
		and	cx,31
		mov	ax,0
		mov	dx,1
		mov	ax,0
		mov	word [bp-2],dx
		mov	di,ax
		and	cx,31
		jz	..@j208
..@j209:
		shl	word [bp-2],1
		rcl	di,1
		loop	..@j209
..@j208:
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,5
..@j210:
		shr	dx,1
		rcr	ax,1
		loop	..@j210
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	dx,word [bx+si]
		mov	ax,word [bx+si+2]
		or	dx,word [bp-2]
		or	ax,di
		mov	bx,word [bp+4]
		mov	di,word [bp+6]
		mov	si,word [bp+8]
		mov	cx,5
..@j211:
		shr	si,1
		rcr	di,1
		loop	..@j211
		mov	si,di
		mov	cl,2
		shl	si,cl
		mov	word [bx+si],dx
		mov	word [bx+si+2],ax
..@j204:
		mov	sp,bp
		pop	bp
		ret	6
