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
	GLOBAL CLASSES$_$TBITS_$__$$_XORBITS$TBITS
CLASSES$_$TBITS_$__$$_XORBITS$TBITS:
		push	bp
		mov	bp,sp
		sub	sp,12
		push	word [bp+6]
		mov	bx,word [bp+4]
		push	word [bx+10]
		push	word [bx+8]
		call	CLASSES$_$TBITS_$__$$_GROW$LONGINT
		push	word [bp+4]
		call	CLASSES$_$TBITS_$__$$_GETFSIZE$$LONGINT
		sub	ax,1
		sbb	dx,0
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jl	..@j438
		jg	..@j440
		mov	ax,word [bp-10]
		cmp	ax,word [bp-4]
		jb	..@j438
..@j440:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j439:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		mov	word [bp-6],ax
		mov	ax,word [bp-4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	word [bp-12],ax
		mov	ax,word [bp-4]
		mov	di,ax
		mov	cl,2
		shl	di,cl
		mov	bx,word [bp-6]
		mov	cx,word [bx+si]
		mov	bx,word [bp-6]
		mov	dx,word [bx+si+2]
		mov	bx,word [bp-12]
		mov	ax,word [bx+di]
		mov	bx,word [bp-12]
		mov	si,word [bx+di+2]
		mov	di,ax
		mov	ax,si
		xor	di,cx
		xor	ax,dx
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	dx,word [bp-4]
		mov	si,dx
		mov	cl,2
		shl	si,cl
		mov	word [bx+si],di
		mov	word [bx+si+2],ax
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jg	..@j439
		jl	..@j443
		mov	ax,word [bp-10]
		cmp	ax,word [bp-4]
		ja	..@j439
..@j443:
..@j438:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TBITS_$__$$_GETFSIZE$$LONGINT
EXTERN	CLASSES$_$TBITS_$__$$_GROW$LONGINT
