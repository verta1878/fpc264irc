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
	GLOBAL SYSTEM_$$_COMPAREWORD$formal$formal$SMALLINT$$SMALLINT
SYSTEM_$$_COMPAREWORD$formal$formal$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	word [bp-12],0
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
		mov	ax,word [bp+6]
		mov	word [bp-8],ax
		cmp	word [bp+4],7
		jg	..@j631
		jmp	..@j632
..@j631:
		mov	ax,word [bp-8]
		and	ax,1
		mov	bx,0
		mov	dx,2
		mov	cx,0
		sub	dx,ax
		sbb	cx,bx
		and	dx,1
		mov	cx,0
		shr	cx,1
		rcr	dx,1
		mov	word [bp-4],dx
		mov	ax,word [bp-4]
		sub	word [bp+4],ax
		mov	ax,word [bp-4]
		shl	ax,1
		mov	dx,word [bp-6]
		add	dx,ax
		mov	word [bp-10],dx
		jmp	..@j638
	ALIGN 2
..@j637:
		mov	bx,word [bp-6]
		mov	si,word [bp-8]
		mov	ax,word [bx]
		mov	dx,word [si]
		sub	ax,dx
		mov	word [bp-12],ax
		cmp	word [bp-12],0
		jne	..@j642
		jmp	..@j643
..@j642:
		cmp	word [bp-12],0
		jl	..@j644
		jmp	..@j645
..@j644:
		mov	word [bp-2],-1
		jmp	..@j623
		jmp	..@j648
..@j645:
		mov	word [bp-2],1
		jmp	..@j623
..@j648:
..@j643:
		add	word [bp-8],2
		add	word [bp-6],2
..@j638:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-10]
		jb	..@j637
		jmp	..@j639
..@j639:
		mov	ax,word [bp+4]
		shl	ax,1
		shr	ax,1
		shl	ax,1
		mov	dx,word [bp-6]
		add	dx,ax
		mov	word [bp-10],dx
		mov	ax,word [bp+4]
		shl	ax,1
		and	ax,1
		shr	ax,1
		mov	word [bp+4],ax
		jmp	..@j656
	ALIGN 2
..@j655:
		mov	bx,word [bp-6]
		mov	si,word [bp-8]
		mov	ax,word [bx]
		mov	dx,word [si]
		sub	ax,dx
		mov	word [bp-12],ax
		cmp	word [bp-12],0
		jne	..@j660
		jmp	..@j661
..@j660:
		mov	word [bp+4],1
		jmp	..@j657
..@j661:
		add	word [bp-8],2
		add	word [bp-6],2
..@j656:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-10]
		jb	..@j655
		jmp	..@j657
..@j657:
..@j632:
		mov	ax,word [bp+4]
		shl	ax,1
		mov	dx,word [bp-6]
		add	dx,ax
		cmp	dx,word [bp-6]
		jae	..@j664
		jmp	..@j665
..@j664:
		mov	ax,word [bp+4]
		shl	ax,1
		mov	dx,word [bp-6]
		add	dx,ax
		mov	word [bp-10],dx
		jmp	..@j668
..@j665:
		mov	word [bp-10],-3
..@j668:
		jmp	..@j672
	ALIGN 2
..@j671:
		mov	bx,word [bp-6]
		mov	si,word [bp-8]
		mov	ax,word [bx]
		mov	dx,word [si]
		sub	ax,dx
		mov	word [bp-12],ax
		cmp	word [bp-12],0
		jne	..@j676
		jmp	..@j677
..@j676:
		cmp	word [bp-12],0
		jl	..@j678
		jmp	..@j679
..@j678:
		mov	word [bp-2],-1
		jmp	..@j623
		jmp	..@j682
..@j679:
		mov	word [bp-2],1
		jmp	..@j623
..@j682:
..@j677:
		add	word [bp-8],2
		add	word [bp-6],2
..@j672:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-10]
		jb	..@j671
		jmp	..@j673
..@j673:
		mov	word [bp-2],0
..@j623:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
