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
	GLOBAL SYSTEM_$$_COMPAREDWORD$formal$formal$SMALLINT$$SMALLINT
SYSTEM_$$_COMPAREDWORD$formal$formal$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
		mov	ax,word [bp+6]
		mov	word [bp-8],ax
		cmp	word [bp+4],-3
		jg	..@j693
		jmp	..@j694
..@j693:
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
		shr	cx,1
		rcr	dx,1
		mov	word [bp-4],dx
		mov	ax,word [bp-4]
		sub	word [bp+4],ax
		mov	ax,word [bp-4]
		mov	cl,2
		shl	ax,cl
		mov	dx,word [bp-6]
		add	dx,ax
		mov	word [bp-10],dx
		jmp	..@j700
	ALIGN 2
..@j699:
		mov	si,word [bp-6]
		mov	bx,word [bp-8]
		mov	dx,word [si]
		mov	ax,word [si+2]
		cmp	ax,word [bx+2]
		jne	..@j702
		cmp	dx,word [bx]
		jne	..@j702
		jmp	..@j703
		jmp	..@j703
..@j702:
		mov	si,word [bp-6]
		mov	bx,word [bp-8]
		mov	dx,word [si]
		mov	ax,word [si+2]
		cmp	ax,word [bx+2]
		ja	..@j704
		jb	..@j705
		cmp	dx,word [bx]
		ja	..@j704
		jmp	..@j705
		jmp	..@j705
..@j704:
		mov	word [bp-2],1
		jmp	..@j687
		jmp	..@j708
..@j705:
		mov	word [bp-2],-1
		jmp	..@j687
..@j708:
..@j703:
		add	word [bp-8],4
		add	word [bp-6],4
..@j700:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-10]
		jb	..@j699
		jmp	..@j701
..@j701:
		mov	ax,word [bp+4]
		mov	cl,2
		shl	ax,cl
		shr	ax,1
		shl	ax,1
		mov	dx,word [bp-6]
		add	dx,ax
		mov	word [bp-10],dx
		mov	ax,word [bp+4]
		mov	cl,2
		shl	ax,cl
		and	ax,1
		mov	cl,2
		shr	ax,cl
		mov	word [bp+4],ax
		jmp	..@j716
	ALIGN 2
..@j715:
		mov	bx,word [bp-6]
		mov	si,word [bp-8]
		mov	ax,word [bx]
		cmp	ax,word [si]
		jne	..@j718
		jmp	..@j719
..@j718:
		mov	word [bp+4],0
		jmp	..@j717
..@j719:
		add	word [bp-8],2
		add	word [bp-6],2
..@j716:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-10]
		jb	..@j715
		jmp	..@j717
..@j717:
..@j694:
		cmp	word [bp+4],16383
		jle	..@j724
		jmp	..@j723
..@j724:
		mov	ax,word [bp+4]
		mov	cl,2
		shl	ax,cl
		mov	dx,word [bp-6]
		add	dx,ax
		cmp	dx,word [bp-6]
		jae	..@j722
		jmp	..@j723
..@j722:
		mov	ax,word [bp+4]
		mov	cl,2
		shl	ax,cl
		mov	dx,word [bp-6]
		add	dx,ax
		mov	word [bp-10],dx
		jmp	..@j727
..@j723:
		mov	word [bp-10],-5
..@j727:
		jmp	..@j731
	ALIGN 2
..@j730:
		mov	si,word [bp-6]
		mov	bx,word [bp-8]
		mov	dx,word [si]
		mov	ax,word [si+2]
		cmp	ax,word [bx+2]
		jne	..@j733
		cmp	dx,word [bx]
		jne	..@j733
		jmp	..@j734
		jmp	..@j734
..@j733:
		mov	si,word [bp-6]
		mov	bx,word [bp-8]
		mov	dx,word [si]
		mov	ax,word [si+2]
		cmp	ax,word [bx+2]
		ja	..@j735
		jb	..@j736
		cmp	dx,word [bx]
		ja	..@j735
		jmp	..@j736
		jmp	..@j736
..@j735:
		mov	word [bp-2],1
		jmp	..@j687
		jmp	..@j739
..@j736:
		mov	word [bp-2],-1
		jmp	..@j687
..@j739:
..@j734:
		add	word [bp-8],4
		add	word [bp-6],4
..@j731:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-10]
		jb	..@j730
		jmp	..@j732
..@j732:
		mov	word [bp-2],0
..@j687:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
