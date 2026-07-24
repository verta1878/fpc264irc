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
	GLOBAL SYSTEM_$$_FPC_SHORTSTR_ENUM_INTERN$SMALLINT$SMALLINT$POINTER$POINTER$OPENSTRING$$LONGINT
SYSTEM_$$_FPC_SHORTSTR_ENUM_INTERN$SMALLINT$SMALLINT$POINTER$POINTER$OPENSTRING$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,42
		mov	word [bp-4],107
		mov	word [bp-2],0
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
		mov	bx,word [bp-6]
		cmp	word [bx],0
		je	..@j6609
		jmp	..@j6610
..@j6609:
		mov	ax,word [bp+10]
		mov	word [bp-8],ax
		mov	bx,word [bp-8]
		mov	al,byte [bx+1]
		mov	ah,0
		mov	dx,word [bp-8]
		add	dx,2
		add	dx,ax
		mov	word [bp-36],dx
		mov	dx,word [bp-36]
		mov	ax,0
		mov	word [bp-38],dx
		mov	dx,word [bp-38]
		mov	ax,0
		mov	word [bp-10],dx
		mov	bx,word [bp-10]
		lea	bx,[bx+1]
		mov	ax,word [bp+14]
		cwd
		cmp	dx,word [bx+2]
		jl	..@j6624
		jg	..@j6626
		cmp	ax,word [bx]
		jb	..@j6624
		jmp	..@j6626
		jmp	..@j6626
..@j6626:
		mov	ax,word [bp+14]
		cwd
		cmp	dx,word [bx+6]
		jg	..@j6624
		jl	..@j6625
		cmp	ax,word [bx+4]
		ja	..@j6624
		jmp	..@j6625
		jmp	..@j6625
..@j6624:
		jmp	..@j6603
..@j6625:
		mov	ax,word [bx]
		sub	word [bp+14],ax
		mov	bx,word [bp-6]
		mov	ax,word [bp+14]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si+4]
		mov	word [bp-12],ax
		cmp	word [bp-12],0
		je	..@j6629
		jmp	..@j6630
..@j6629:
		jmp	..@j6603
..@j6630:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,word [bp-12]
		push	ax
		call	fpc_shortstr_to_shortstr
		jmp	..@j6637
..@j6610:
		mov	bx,word [bp-6]
		lea	ax,[bx+8]
		mov	word [bp-14],ax
		mov	word [bp-34],0
		mov	word [bp-32],0
		mov	bx,word [bp-6]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		sub	dx,1
		sbb	ax,0
		mov	word [bp-30],dx
		mov	word [bp-28],ax
	ALIGN 2
..@j6644:
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	cx,word [bp-34]
		mov	bx,word [bp-32]
		mov	ax,word [bp-30]
		mov	dx,word [bp-28]
		add	ax,cx
		adc	dx,bx
		push	dx
		push	ax
		call	fpc_div_longint
		mov	word [bp-26],ax
		mov	word [bp-24],dx
		mov	bx,word [bp-14]
		mov	ax,word [bp-26]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	ax,word [bp+14]
		cwd
		cmp	dx,word [bx+si+2]
		jg	..@j6653
		jl	..@j6654
		cmp	ax,word [bx+si]
		ja	..@j6653
		jmp	..@j6654
		jmp	..@j6654
..@j6653:
		mov	ax,word [bp-26]
		mov	dx,word [bp-24]
		add	ax,1
		adc	dx,0
		mov	word [bp-34],ax
		mov	word [bp-32],dx
		jmp	..@j6657
..@j6654:
		mov	bx,word [bp-14]
		mov	ax,word [bp-26]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	ax,word [bp+14]
		cwd
		cmp	dx,word [bx+si+2]
		jl	..@j6658
		jg	..@j6659
		cmp	ax,word [bx+si]
		jb	..@j6658
		jmp	..@j6659
		jmp	..@j6659
..@j6658:
		mov	ax,word [bp-26]
		mov	dx,word [bp-24]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-30],ax
		mov	word [bp-28],dx
		jmp	..@j6662
..@j6659:
		jmp	..@j6646
..@j6662:
..@j6657:
		mov	dx,word [bp-34]
		mov	ax,word [bp-32]
		cmp	ax,word [bp-28]
		jg	..@j6663
		jl	..@j6664
		cmp	dx,word [bp-30]
		ja	..@j6663
		jmp	..@j6664
		jmp	..@j6664
..@j6663:
		jmp	..@j6603
..@j6664:
		jmp	..@j6644
..@j6646:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	bx,word [bp-14]
		mov	ax,word [bp-26]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	ax,word [bx+si+4]
		push	ax
		call	fpc_shortstr_to_shortstr
..@j6637:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp+12]
		jl	..@j6671
		jmp	..@j6672
..@j6671:
		mov	bx,word [bp+6]
		mov	dl,byte [bx]
		mov	dh,0
		mov	ax,word [bp+12]
		sub	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-18],cx
		mov	word [bp-16],ax
		mov	cx,word [bp-18]
		mov	di,word [bp-16]
		mov	word [bp-22],1
		mov	word [bp-20],0
		cmp	di,word [bp-20]
		jl	..@j6678
		jg	..@j6680
		cmp	cx,word [bp-22]
		jb	..@j6678
..@j6680:
		sub	word [bp-22],1
		sbb	word [bp-20],0
	ALIGN 2
..@j6679:
		add	word [bp-22],1
		adc	word [bp-20],0
		mov	ax,word [bp+6]
		mov	word [bp-42],ax
		mov	bx,word [bp+6]
		mov	si,0
		mov	al,byte [bx]
		mov	ah,0
		mov	dx,word [bp-22]
		mov	bx,word [bp-20]
		add	dx,ax
		adc	bx,si
		mov	al,dl
		mov	byte [bp-40],al
		mov	byte [bp-39],0
		mov	bx,word [bp-42]
		mov	si,word [bp-40]
		mov	byte [bx+si],32
		cmp	di,word [bp-20]
		jg	..@j6679
		jl	..@j6683
		cmp	cx,word [bp-22]
		ja	..@j6679
..@j6683:
..@j6678:
		mov	bx,word [bp+6]
		mov	al,byte [bp-18]
		add	byte [bx],al
..@j6672:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j6603:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	fpc_div_longint
EXTERN	fpc_shortstr_to_shortstr
