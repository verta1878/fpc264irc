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
	GLOBAL CLASSES$_$TBITS_$__$$_SETBIT$LONGINT$BOOLEAN
CLASSES$_$TBITS_$__$$_SETBIT$LONGINT$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		push	word [bp+10]
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		add	ax,1
		adc	dx,0
		push	dx
		push	ax
		call	CLASSES$_$TBITS_$__$$_GROW$LONGINT
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,5
..@j181:
		shr	dx,1
		rcr	ax,1
		loop	..@j181
		mov	word [bp-2],ax
		cmp	byte [bp+4],0
		jne	..@j182
		jmp	..@j183
..@j182:
		mov	cx,word [bp+6]
		mov	ax,word [bp+8]
		and	cx,31
		mov	ax,0
		mov	dx,1
		mov	ax,0
		mov	word [bp-6],dx
		mov	dx,ax
		and	cx,31
		jz	..@j186
..@j187:
		shl	word [bp-6],1
		rcl	dx,1
		loop	..@j187
..@j186:
		mov	bx,word [bp+10]
		mov	bx,word [bx+2]
		mov	ax,word [bp-2]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	cx,word [bx+si]
		mov	ax,word [bx+si+2]
		mov	di,cx
		or	di,word [bp-6]
		or	ax,dx
		mov	bx,word [bp+10]
		mov	bx,word [bx+2]
		mov	dx,word [bp-2]
		mov	si,dx
		mov	cl,2
		shl	si,cl
		mov	word [bx+si],di
		mov	word [bx+si+2],ax
		jmp	..@j188
..@j183:
		mov	cx,word [bp+6]
		mov	ax,word [bp+8]
		and	cx,31
		mov	ax,0
		mov	ax,1
		mov	dx,0
		and	cx,31
		jz	..@j191
..@j192:
		shl	ax,1
		rcl	dx,1
		loop	..@j192
..@j191:
		mov	word [bp-4],ax
		not	word [bp-4]
		not	dx
		mov	bx,word [bp+10]
		mov	bx,word [bx+2]
		mov	ax,word [bp-2]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si]
		mov	cx,word [bx+si+2]
		mov	di,cx
		and	ax,word [bp-4]
		and	di,dx
		mov	bx,word [bp+10]
		mov	bx,word [bx+2]
		mov	dx,word [bp-2]
		mov	si,dx
		mov	cl,2
		shl	si,cl
		mov	word [bx+si],ax
		mov	word [bx+si+2],di
..@j188:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	CLASSES$_$TBITS_$__$$_GROW$LONGINT
