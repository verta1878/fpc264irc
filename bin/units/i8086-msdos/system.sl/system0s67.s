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
	GLOBAL SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	word [bp-12],0
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
		mov	ax,word [bp+6]
		mov	word [bp-8],ax
		cmp	word [bp+4],7
		jg	..@j567
		jmp	..@j568
..@j567:
		mov	ax,word [bp-8]
		and	ax,1
		mov	bx,0
		mov	dx,2
		mov	cx,0
		sub	dx,ax
		sbb	cx,bx
		and	dx,1
		mov	cx,0
		mov	word [bp-4],dx
		mov	ax,word [bp-4]
		sub	word [bp+4],ax
		mov	dx,word [bp-6]
		mov	ax,word [bp-4]
		add	ax,dx
		mov	word [bp-10],ax
		jmp	..@j574
	ALIGN 2
..@j573:
		mov	bx,word [bp-6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp-8]
		mov	dl,byte [bx]
		mov	dh,0
		sub	ax,dx
		mov	word [bp-12],ax
		cmp	word [bp-12],0
		jne	..@j578
		jmp	..@j579
..@j578:
		cmp	word [bp-12],0
		jl	..@j580
		jmp	..@j581
..@j580:
		mov	word [bp-2],-1
		jmp	..@j559
		jmp	..@j584
..@j581:
		mov	word [bp-2],1
		jmp	..@j559
..@j584:
..@j579:
		inc	word [bp-8]
		inc	word [bp-6]
..@j574:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-10]
		jb	..@j573
		jmp	..@j575
..@j575:
		mov	ax,word [bp+4]
		shr	ax,1
		shl	ax,1
		mov	dx,word [bp-6]
		add	dx,ax
		mov	word [bp-10],dx
		mov	ax,word [bp+4]
		and	ax,1
		mov	word [bp+4],ax
		jmp	..@j592
	ALIGN 2
..@j591:
		mov	bx,word [bp-6]
		mov	si,word [bp-8]
		mov	ax,word [bx]
		mov	dx,word [si]
		sub	ax,dx
		mov	word [bp-12],ax
		cmp	word [bp-12],0
		jne	..@j596
		jmp	..@j597
..@j596:
		mov	word [bp+4],2
		jmp	..@j593
..@j597:
		add	word [bp-8],2
		add	word [bp-6],2
..@j592:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-10]
		jb	..@j591
		jmp	..@j593
..@j593:
..@j568:
		mov	dx,word [bp-6]
		mov	ax,word [bp+4]
		add	ax,dx
		cmp	ax,word [bp-6]
		jae	..@j600
		jmp	..@j601
..@j600:
		mov	dx,word [bp-6]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	word [bp-10],ax
		jmp	..@j604
..@j601:
		mov	word [bp-10],-2
..@j604:
		jmp	..@j608
	ALIGN 2
..@j607:
		mov	bx,word [bp-6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp-8]
		mov	dl,byte [bx]
		mov	dh,0
		sub	ax,dx
		mov	word [bp-12],ax
		cmp	word [bp-12],0
		jne	..@j612
		jmp	..@j613
..@j612:
		cmp	word [bp-12],0
		jl	..@j614
		jmp	..@j615
..@j614:
		mov	word [bp-2],-1
		jmp	..@j559
		jmp	..@j618
..@j615:
		mov	word [bp-2],1
		jmp	..@j559
..@j618:
..@j613:
		inc	word [bp-8]
		inc	word [bp-6]
..@j608:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-10]
		jb	..@j607
		jmp	..@j609
..@j609:
		mov	word [bp-2],0
..@j559:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
