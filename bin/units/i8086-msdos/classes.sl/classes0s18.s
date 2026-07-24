BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TBITS_$__$$_GET$LONGINT$$BOOLEAN
CLASSES$_$TBITS_$__$$_GET$LONGINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,1
		push	ax
		call	CLASSES$_$TBITS_$__$$_CHECKBITINDEX$LONGINT$BOOLEAN
		mov	byte [bp-1],0
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,5
..@j347:
		shr	dx,1
		rcr	ax,1
		loop	..@j347
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	bx,word [bp+8]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp-4]
		jg	..@j348
		jl	..@j349
		cmp	dx,word [bp-6]
		ja	..@j348
		jmp	..@j349
		jmp	..@j349
..@j348:
		mov	cx,word [bp+4]
		mov	ax,word [bp+6]
		and	cx,31
		mov	ax,0
		mov	dx,1
		mov	di,0
		and	cx,31
		jz	..@j352
..@j353:
		shl	dx,1
		rcl	di,1
		loop	..@j353
..@j352:
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp-6]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si]
		mov	cx,word [bx+si+2]
		and	ax,dx
		and	cx,di
		cmp	cx,0
		jne	..@j350
		cmp	ax,0
		jne	..@j350
		jmp	..@j351
..@j350:
		mov	byte [bp-1],1
		jmp	..@j354
..@j351:
		mov	byte [bp-1],0
..@j354:
..@j349:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TBITS_$__$$_CHECKBITINDEX$LONGINT$BOOLEAN
