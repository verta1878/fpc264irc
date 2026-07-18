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
	GLOBAL SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_PUTRESULT$$LONGINT
SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_PUTRESULT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,34
		mov	byte [bp-5],0
		mov	byte [bp-6],0
		mov	bx,word [bp+4]
		mov	ax,word [bx-54]
		mov	word [bp-8],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+18]
		mov	word [bp-10],ax
		mov	word [bp-12],1
		jmp	..@j7656
	ALIGN 2
..@j7655:
		mov	bx,word [bp-8]
		mov	al,byte [bx]
		cmp	al,34
		jb	..@j7659
		sub	al,34
		je	..@j7660
		sub	al,5
		je	..@j7661
		jmp	..@j7659
..@j7660:
		cmp	byte [bp-5],0
		je	..@j7662
		jmp	..@j7663
..@j7662:
		cmp	byte [bp-6],0
		mov	al,0
		jne	..@j7666
		inc	ax
..@j7666:
		mov	byte [bp-6],al
..@j7663:
		inc	word [bp-8]
		jmp	..@j7658
..@j7661:
		cmp	byte [bp-6],0
		je	..@j7667
		jmp	..@j7668
..@j7667:
		cmp	byte [bp-5],0
		mov	al,0
		jne	..@j7671
		inc	ax
..@j7671:
		mov	byte [bp-5],al
..@j7668:
		inc	word [bp-8]
		jmp	..@j7658
..@j7659:
		cmp	byte [bp-5],0
		jne	..@j7673
		jmp	..@j7674
..@j7674:
		cmp	byte [bp-6],0
		jne	..@j7673
		jmp	..@j7672
..@j7672:
		mov	bx,word [bp-8]
		mov	al,byte [bx]
		cmp	al,35
		jb	..@j7676
		sub	al,35
		je	..@j7677
		sub	al,11
		je	..@j7677
		sub	al,2
		je	..@j7677
		sub	al,21
		je	..@j7678
		sub	al,32
		je	..@j7678
		jmp	..@j7676
..@j7677:
		cmp	word [bp-12],1
		je	..@j7681
		jmp	..@j7680
..@j7681:
		mov	bx,word [bp+4]
		cmp	word [bx-72],0
		jg	..@j7679
		jmp	..@j7680
..@j7679:
		mov	bx,word [bp+4]
		mov	cx,word [bx-72]
		mov	word [bp-14],1
		cmp	cx,word [bp-14]
		jl	..@j7685
		dec	word [bp-14]
	ALIGN 2
..@j7686:
		inc	word [bp-14]
		mov	bx,word [bp+4]
		mov	al,byte [bp-14]
		mov	byte [bp-26],al
		mov	byte [bp-25],0
		mov	si,word [bp-26]
		cmp	byte [bx+si-43],32
		jne	..@j7687
		jmp	..@j7688
..@j7687:
		mov	bx,word [bp+4]
		mov	al,byte [bp-14]
		mov	byte [bp-30],al
		mov	byte [bp-29],0
		mov	di,word [bp-10]
		mov	si,word [bp-30]
		mov	al,byte [bx+si-43]
		mov	byte [di],al
		inc	word [bp-10]
..@j7688:
		mov	bx,word [bp+4]
		cmp	byte [bx-69],0
		jne	..@j7693
		jmp	..@j7692
..@j7693:
		mov	bx,word [bp+4]
		mov	al,byte [bp-14]
		mov	byte [bp-24],al
		mov	byte [bp-23],0
		mov	si,word [bp-24]
		mov	al,byte [bx+si-43]
		mov	ah,0
		cmp	ax,32
		je	..@j7694
		cmp	ax,45
		je	..@j7694
..@j7694:
		jne	..@j7691
		jmp	..@j7692
..@j7691:
		mov	bx,word [bp+4]
		mov	ax,word [bx-76]
		cwd
		mov	bx,3
		idiv	bx
		test	dx,dx
		je	..@j7697
		jmp	..@j7696
..@j7697:
		mov	bx,word [bp+4]
		cmp	word [bx-76],0
		jg	..@j7695
		jmp	..@j7696
..@j7695:
		mov	bx,word [bp+4]
		mov	si,word [bp-10]
		mov	al,byte [bx-174]
		mov	byte [si],al
		inc	word [bp-10]
..@j7696:
		mov	bx,word [bp+4]
		dec	word [bx-76]
..@j7692:
		cmp	cx,word [bp-14]
		jg	..@j7686
..@j7685:
		mov	bx,word [bp+4]
		mov	ax,word [bx-72]
		add	word [bp-12],ax
..@j7680:
		mov	bx,word [bp+4]
		mov	al,byte [bp-12]
		mov	byte [bp-20],al
		mov	byte [bp-19],0
		mov	si,word [bp-20]
		cmp	byte [bx+si-43],32
		jne	..@j7700
		jmp	..@j7701
..@j7700:
		mov	bx,word [bp+4]
		mov	al,byte [bp-12]
		mov	byte [bp-16],al
		mov	byte [bp-15],0
		mov	si,word [bp-16]
		cmp	byte [bx+si-43],46
		je	..@j7702
		jmp	..@j7703
..@j7702:
		mov	bx,word [bp+4]
		mov	si,word [bp-10]
		mov	al,byte [bx-173]
		mov	byte [si],al
		jmp	..@j7706
..@j7703:
		mov	bx,word [bp+4]
		mov	al,byte [bp-12]
		mov	byte [bp-28],al
		mov	byte [bp-27],0
		mov	di,word [bp-10]
		mov	si,word [bp-28]
		mov	al,byte [bx+si-43]
		mov	byte [di],al
..@j7706:
		inc	word [bp-10]
		mov	bx,word [bp+4]
		cmp	byte [bx-69],0
		jne	..@j7713
		jmp	..@j7710
..@j7713:
		mov	bx,word [bp+4]
		mov	ax,word [bx-76]
		cwd
		mov	cx,3
		idiv	cx
		test	dx,dx
		je	..@j7712
		jmp	..@j7710
..@j7712:
		mov	bx,word [bp+4]
		cmp	word [bx-76],0
		jg	..@j7711
		jmp	..@j7710
..@j7711:
		mov	bx,word [bp+4]
		mov	al,byte [bp-12]
		mov	byte [bp-18],al
		mov	byte [bp-17],0
		mov	si,word [bp-18]
		cmp	byte [bx+si-43],45
		jne	..@j7709
		jmp	..@j7710
..@j7709:
		mov	bx,word [bp+4]
		mov	si,word [bp-10]
		mov	al,byte [bx-174]
		mov	byte [si],al
		inc	word [bp-10]
..@j7710:
..@j7701:
		mov	bx,word [bp+4]
		mov	al,byte [bp-12]
		mov	byte [bp-22],al
		mov	byte [bp-21],0
		mov	si,word [bp-22]
		cmp	byte [bx+si-43],45
		jne	..@j7716
		jmp	..@j7717
..@j7716:
		mov	bx,word [bp+4]
		dec	word [bx-76]
..@j7717:
		inc	word [bp-12]
		inc	word [bp-8]
		jmp	..@j7675
..@j7678:
		mov	bx,word [bp+4]
		cmp	word [bx-58],0
		jne	..@j7718
		jmp	..@j7719
..@j7718:
		inc	word [bp-8]
		mov	bx,word [bp+4]
		mov	ax,word [bx-56]
		cmp	ax,word [bp-8]
		ja	..@j7720
		jmp	..@j7721
..@j7720:
		mov	bx,word [bp-8]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,43
		je	..@j7724
		cmp	ax,45
		je	..@j7724
..@j7724:
		je	..@j7722
		jmp	..@j7723
..@j7722:
		mov	bx,word [bp+4]
		mov	ax,word [bx-60]
		add	word [bp-8],ax
		mov	bx,word [bp+4]
		mov	al,byte [bx-52]
		mov	ah,0
		mov	dx,ax
		mov	word [bp-14],1
		cmp	dx,word [bp-14]
		jl	..@j7728
		dec	word [bp-14]
	ALIGN 2
..@j7729:
		inc	word [bp-14]
		mov	ax,word [bp-10]
		mov	word [bp-34],ax
		mov	ax,word [bp-14]
		dec	ax
		mov	di,ax
		mov	bx,word [bp+4]
		mov	al,byte [bp-14]
		mov	byte [bp-32],al
		mov	byte [bp-31],0
		mov	si,word [bp-32]
		mov	al,byte [bx+si-52]
		mov	bx,word [bp-34]
		mov	byte [bx+di],al
		cmp	dx,word [bp-14]
		jg	..@j7729
..@j7728:
		mov	bx,word [bp+4]
		mov	al,byte [bx-52]
		mov	ah,0
		add	word [bp-10],ax
		mov	bx,word [bp+4]
		mov	word [bx-58],0
..@j7723:
		inc	word [bp-8]
..@j7721:
		jmp	..@j7734
..@j7719:
		mov	si,word [bp-10]
		mov	bx,word [bp-8]
		mov	al,byte [bx]
		mov	byte [si],al
		inc	word [bp-10]
		inc	word [bp-8]
..@j7734:
		jmp	..@j7675
..@j7676:
		mov	bx,word [bp-8]
		cmp	byte [bx],44
		jne	..@j7737
		jmp	..@j7738
..@j7737:
		mov	si,word [bp-10]
		mov	bx,word [bp-8]
		mov	al,byte [bx]
		mov	byte [si],al
		inc	word [bp-10]
..@j7738:
		inc	word [bp-8]
..@j7675:
		jmp	..@j7741
..@j7673:
		mov	si,word [bp-10]
		mov	bx,word [bp-8]
		mov	al,byte [bx]
		mov	byte [si],al
		inc	word [bp-10]
		inc	word [bp-8]
..@j7741:
..@j7658:
..@j7656:
		mov	bx,word [bp+4]
		mov	ax,word [bx-56]
		cmp	ax,word [bp-8]
		ja	..@j7655
		jmp	..@j7657
..@j7657:
		mov	bx,word [bp+4]
		mov	bx,word [bx+18]
		mov	cx,0
		mov	ax,word [bp-10]
		mov	dx,0
		sub	ax,bx
		sbb	dx,cx
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
