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
	GLOBAL CLASSES$_$TBITS_$__$$_NOTBITS$TBITS
CLASSES$_$TBITS_$__$$_NOTBITS$TBITS:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	ax,word [bp+6]
		mov	word [bp-14],ax
		push	word [bp+4]
		call	CLASSES$_$TBITS_$__$$_GETFSIZE$$LONGINT
		mov	bx,word [bp-14]
		cmp	dx,word [bx+6]
		jg	..@j388
		jl	..@j389
		mov	bx,word [bp-14]
		cmp	ax,word [bx+4]
		ja	..@j388
		jmp	..@j389
		jmp	..@j389
..@j388:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	dx,word [bx+6]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j394
..@j389:
		push	word [bp+4]
		call	CLASSES$_$TBITS_$__$$_GETFSIZE$$LONGINT
		sub	ax,1
		sbb	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j394:
		mov	ax,word [bp-4]
		mov	word [bp-20],ax
		mov	ax,word [bp-2]
		mov	word [bp-18],ax
		mov	word [bp-12],0
		mov	word [bp-10],0
		mov	ax,word [bp-18]
		cmp	ax,word [bp-10]
		jl	..@j402
		jg	..@j404
		mov	ax,word [bp-20]
		cmp	ax,word [bp-12]
		jb	..@j402
..@j404:
		sub	word [bp-12],1
		sbb	word [bp-10],0
	ALIGN 2
..@j403:
		add	word [bp-12],1
		adc	word [bp-10],0
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bp-12]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si]
		mov	word [bp-8],ax
		mov	ax,word [bx+si+2]
		mov	word [bp-6],ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	ax,word [bp-12]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	cx,word [bx+si]
		mov	bx,word [bx+si+2]
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		mov	word [bp-16],dx
		mov	dx,ax
		xor	word [bp-16],cx
		xor	dx,bx
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bp-12]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si]
		mov	cx,word [bx+si+2]
		mov	di,cx
		and	ax,word [bp-16]
		and	di,dx
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	dx,word [bp-12]
		mov	si,dx
		mov	cl,2
		shl	si,cl
		mov	word [bx+si],ax
		mov	word [bx+si+2],di
		mov	ax,word [bp-18]
		cmp	ax,word [bp-10]
		jg	..@j403
		jl	..@j409
		mov	ax,word [bp-20]
		cmp	ax,word [bp-12]
		ja	..@j403
..@j409:
..@j402:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TBITS_$__$$_GETFSIZE$$LONGINT
