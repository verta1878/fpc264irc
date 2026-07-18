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
	GLOBAL SOCKETS_$$_FPFD_ISSET$LONGINT$TFDSET$$BOOLEAN
SOCKETS_$$_FPFD_ISSET$LONGINT$TFDSET$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		cmp	ax,0
		jg	..@j228
		jl	..@j226
		cmp	dx,0
		jae	..@j228
		jmp	..@j226
..@j228:
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		cmp	dx,0
		jl	..@j227
		jg	..@j226
		cmp	ax,256
		jb	..@j227
		jmp	..@j226
..@j227:
		mov	cx,word [bp+6]
		mov	ax,word [bp+8]
		and	cx,31
		mov	ax,0
		mov	dx,1
		mov	di,0
		and	cx,31
		jz	..@j229
..@j230:
		shl	dx,1
		rcl	di,1
		loop	..@j230
..@j229:
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		mov	si,word [bp+8]
		mov	cx,5
..@j231:
		shr	si,1
		rcr	ax,1
		loop	..@j231
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si]
		mov	cx,word [bx+si+2]
		and	ax,dx
		and	cx,di
		cmp	cx,0
		jne	..@j225
		cmp	ax,0
		jne	..@j225
		jmp	..@j226
..@j225:
		mov	byte [bp-1],1
		jmp	..@j232
..@j226:
		mov	byte [bp-1],0
..@j232:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
