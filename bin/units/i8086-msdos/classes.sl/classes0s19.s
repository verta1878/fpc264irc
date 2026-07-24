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
	GLOBAL CLASSES$_$TBITS_$__$$_ANDBITS$TBITS
CLASSES$_$TBITS_$__$$_ANDBITS$TBITS:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	ax,word [bp+6]
		mov	word [bp-10],ax
		push	word [bp+4]
		call	CLASSES$_$TBITS_$__$$_GETFSIZE$$LONGINT
		mov	bx,word [bp-10]
		cmp	dx,word [bx+6]
		jg	..@j357
		jl	..@j358
		mov	bx,word [bp-10]
		cmp	ax,word [bx+4]
		ja	..@j357
		jmp	..@j358
		jmp	..@j358
..@j357:
		mov	bx,word [bp+6]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		sub	dx,1
		sbb	ax,0
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		jmp	..@j363
..@j358:
		push	word [bp+4]
		call	CLASSES$_$TBITS_$__$$_GETFSIZE$$LONGINT
		sub	ax,1
		sbb	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j363:
		mov	ax,word [bp-4]
		mov	word [bp-16],ax
		mov	ax,word [bp-2]
		mov	word [bp-14],ax
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	ax,word [bp-14]
		cmp	ax,word [bp-6]
		jl	..@j371
		jg	..@j373
		mov	ax,word [bp-16]
		cmp	ax,word [bp-8]
		jb	..@j371
..@j373:
		sub	word [bp-8],1
		sbb	word [bp-6],0
	ALIGN 2
..@j372:
		add	word [bp-8],1
		adc	word [bp-6],0
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		mov	word [bp-12],ax
		mov	ax,word [bp-8]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	word [bp-20],ax
		mov	ax,word [bp-8]
		mov	di,ax
		mov	cl,2
		shl	di,cl
		mov	bx,word [bp-12]
		mov	cx,word [bx+si]
		mov	bx,word [bp-12]
		mov	dx,word [bx+si+2]
		mov	bx,word [bp-20]
		mov	ax,word [bx+di]
		mov	bx,word [bp-20]
		mov	si,word [bx+di+2]
		mov	di,ax
		mov	ax,si
		and	di,cx
		and	ax,dx
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	dx,word [bp-8]
		mov	si,dx
		mov	cl,2
		shl	si,cl
		mov	word [bx+si],di
		mov	word [bx+si+2],ax
		mov	ax,word [bp-14]
		cmp	ax,word [bp-6]
		jg	..@j372
		jl	..@j376
		mov	ax,word [bp-16]
		cmp	ax,word [bp-8]
		ja	..@j372
..@j376:
..@j371:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-22],ax
		mov	di,word [bx+6]
		mov	ax,word [bp-22]
		mov	word [bp-22],ax
		sub	word [bp-22],1
		sbb	di,0
		mov	ax,word [bp-22]
		mov	word [bp-22],ax
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		add	dx,1
		adc	ax,0
		mov	word [bp-8],dx
		mov	word [bp-6],ax
		cmp	di,word [bp-6]
		jl	..@j380
		jg	..@j382
		mov	ax,word [bp-22]
		cmp	ax,word [bp-8]
		jb	..@j380
..@j382:
		sub	word [bp-8],1
		sbb	word [bp-6],0
	ALIGN 2
..@j381:
		add	word [bp-8],1
		adc	word [bp-6],0
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bp-8]
		mov	word [bp-18],ax
		mov	cl,2
		shl	word [bp-18],cl
		mov	si,word [bp-18]
		mov	word [bx+si],0
		mov	si,word [bp-18]
		mov	word [bx+si+2],0
		cmp	di,word [bp-6]
		jg	..@j381
		jl	..@j385
		mov	ax,word [bp-22]
		cmp	ax,word [bp-8]
		ja	..@j381
..@j385:
..@j380:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TBITS_$__$$_GETFSIZE$$LONGINT
