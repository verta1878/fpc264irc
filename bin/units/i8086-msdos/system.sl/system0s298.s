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
	GLOBAL SYSTEM$_$STR_REAL$crcEDBAA446_$$_TRY_RETURN_FIXED$crc15F54820
SYSTEM$_$STR_REAL$crcEDBAA446_$$_TRY_RETURN_FIXED$crc15F54820:
		push	bp
		mov	bp,sp
		sub	sp,94
		mov	byte [bp-1],0
		mov	byte [bp-2],0
		mov	dx,word [bp+8]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	word [bp-50],ax
		cmp	word [bp-50],0
		jl	..@j5572
		jmp	..@j5573
..@j5572:
		mov	word [bp+10],0
		jmp	..@j5576
..@j5573:
		mov	ax,word [bp-50]
		cmp	ax,word [bp+10]
		jl	..@j5577
		jmp	..@j5578
..@j5577:
		cmp	word [bp+10],0
		jg	..@j5579
		jmp	..@j5580
..@j5579:
		mov	ax,word [bp+12]
		push	ax
		lea	ax,[bp-42]
		push	ax
		push	word [bp+10]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j5580:
		mov	ax,word [bp+20]
		push	ax
		lea	ax,[bp-42]
		push	ax
		lea	ax,[bp+10]
		push	ax
		push	word [bp-50]
		mov	ax,0
		push	ax
		call	SYSTEM$_$STR_REAL$crcEDBAA446_$$_ROUND_DIGITS$TASCIIDIGITS$SMALLINT$SMALLINT$BOOLEAN$$SMALLINT
		add	word [bp+8],ax
		mov	byte [bp-2],1
..@j5578:
..@j5576:
		cmp	word [bp+8],0
		jle	..@j5599
		jmp	..@j5601
..@j5601:
		cmp	word [bp+10],0
		je	..@j5599
		jmp	..@j5600
..@j5599:
		mov	word [bp-56],0
		mov	word [bp-58],1
		jmp	..@j5606
..@j5600:
		mov	ax,word [bp+8]
		cmp	ax,word [bp+10]
		jg	..@j5607
		jmp	..@j5608
..@j5607:
		mov	ax,word [bp+10]
		mov	word [bp-56],ax
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		sub	ax,dx
		mov	word [bp-58],ax
		jmp	..@j5613
..@j5608:
		mov	ax,word [bp+8]
		mov	word [bp-56],ax
		mov	word [bp-58],0
..@j5613:
..@j5606:
		cmp	word [bp+8],0
		jl	..@j5618
		jmp	..@j5619
..@j5618:
		mov	ax,word [bp+8]
		neg	ax
		mov	word [bp-60],ax
		jmp	..@j5622
..@j5619:
		mov	word [bp-60],0
..@j5622:
		mov	ax,word [bp-60]
		cmp	ax,word [bp+4]
		jg	..@j5625
		jmp	..@j5626
..@j5625:
		mov	ax,word [bp+4]
		mov	word [bp-60],ax
..@j5626:
		mov	ax,word [bp+10]
		mov	dx,word [bp-56]
		sub	ax,dx
		mov	word [bp-62],ax
		mov	ax,word [bp+4]
		mov	dx,word [bp-62]
		sub	ax,dx
		mov	dx,word [bp-60]
		sub	ax,dx
		mov	word [bp-64],ax
		mov	al,byte [bp+14]
		mov	ah,0
		mov	dx,word [bp-56]
		add	dx,ax
		mov	ax,word [bp-58]
		add	ax,dx
		mov	word [bp-48],ax
		cmp	word [bp+4],0
		jg	..@j5637
		jmp	..@j5638
..@j5637:
		mov	ax,word [bp-60]
		mov	dx,word [bp-62]
		add	dx,ax
		mov	ax,word [bp-64]
		add	ax,dx
		inc	ax
		add	word [bp-48],ax
..@j5638:
		mov	dx,word [bp-48]
		mov	ax,255
		sub	ax,dx
		mov	word [bp-54],ax
		cmp	word [bp-54],0
		jl	..@j5641
		jmp	..@j5642
..@j5641:
		jmp	..@j4696
..@j5642:
		mov	ax,word [bp+6]
		mov	dx,word [bp-48]
		sub	ax,dx
		mov	word [bp-52],ax
		mov	ax,word [bp-52]
		cmp	ax,word [bp-54]
		jg	..@j5645
		jmp	..@j5646
..@j5645:
		mov	ax,word [bp-54]
		mov	word [bp-52],ax
..@j5646:
		cmp	word [bp-52],0
		jg	..@j5649
		jmp	..@j5650
..@j5649:
		mov	ax,word [bp-52]
		add	word [bp-48],ax
..@j5650:
		mov	ax,word [bp+18]
		push	ax
		push	word [bp+16]
		push	word [bp-48]
		call	fpc_shortstr_setlength
		mov	word [bp-44],1
		cmp	word [bp-52],0
		jg	..@j5659
		jmp	..@j5660
..@j5659:
		mov	ax,word [bp+18]
		mov	word [bp-86],ax
		mov	ax,word [bp+20]
		mov	word [bp-66],ax
		mov	al,byte [bp-44]
		mov	byte [bp-74],al
		mov	byte [bp-73],0
		mov	bx,word [bp-86]
		mov	si,word [bp-74]
		lea	ax,[bx+si]
		push	ax
		push	word [bp-52]
		mov	ax,32
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
		mov	ax,word [bp-52]
		add	word [bp-44],ax
..@j5660:
		cmp	byte [bp+14],0
		jne	..@j5671
		jmp	..@j5672
..@j5671:
		mov	bx,word [bp+18]
		mov	al,byte [bp-44]
		mov	byte [bp-72],al
		mov	byte [bp-71],0
		mov	si,word [bp-72]
		mov	byte [bx+si],45
		inc	word [bp-44]
..@j5672:
		mov	word [bp-46],0
		cmp	byte [bp-2],0
		jne	..@j5677
		jmp	..@j5678
..@j5677:
		jmp	..@j5680
	ALIGN 2
..@j5679:
		mov	si,word [bp-46]
		mov	al,byte [bp+si-42]
		mov	ah,0
		add	ax,48
		mov	bx,word [bp+18]
		mov	dl,byte [bp-44]
		mov	byte [bp-94],dl
		mov	byte [bp-93],0
		mov	si,word [bp-94]
		mov	byte [bx+si],al
		inc	word [bp-44]
		inc	word [bp-46]
		dec	word [bp-56]
..@j5680:
		cmp	word [bp-56],0
		jg	..@j5679
		jmp	..@j5681
..@j5681:
		jmp	..@j5684
..@j5678:
		jmp	..@j5686
	ALIGN 2
..@j5685:
		mov	bx,word [bp+12]
		mov	si,word [bp-46]
		mov	al,byte [bx+si]
		mov	ah,0
		add	ax,48
		mov	bx,word [bp+18]
		mov	dl,byte [bp-44]
		mov	byte [bp-92],dl
		mov	byte [bp-91],0
		mov	si,word [bp-92]
		mov	byte [bx+si],al
		inc	word [bp-44]
		inc	word [bp-46]
		dec	word [bp-56]
..@j5686:
		cmp	word [bp-56],0
		jg	..@j5685
		jmp	..@j5687
..@j5687:
..@j5684:
		cmp	word [bp-58],0
		jg	..@j5690
		jmp	..@j5691
..@j5690:
		mov	ax,word [bp+18]
		mov	word [bp-80],ax
		mov	ax,word [bp+20]
		mov	word [bp-66],ax
		mov	al,byte [bp-44]
		mov	byte [bp-76],al
		mov	byte [bp-75],0
		mov	bx,word [bp-80]
		mov	si,word [bp-76]
		lea	ax,[bx+si]
		push	ax
		push	word [bp-58]
		mov	ax,48
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
		mov	ax,word [bp-58]
		add	word [bp-44],ax
..@j5691:
		cmp	word [bp+4],0
		jne	..@j5702
		jmp	..@j5703
..@j5702:
		mov	bx,word [bp+18]
		mov	al,byte [bp-44]
		mov	byte [bp-70],al
		mov	byte [bp-69],0
		mov	si,word [bp-70]
		mov	byte [bx+si],46
		inc	word [bp-44]
		cmp	word [bp-60],0
		jg	..@j5706
		jmp	..@j5707
..@j5706:
		mov	ax,word [bp+18]
		mov	word [bp-82],ax
		mov	ax,word [bp+20]
		mov	word [bp-66],ax
		mov	al,byte [bp-44]
		mov	byte [bp-78],al
		mov	byte [bp-77],0
		mov	bx,word [bp-82]
		mov	si,word [bp-78]
		lea	ax,[bx+si]
		push	ax
		push	word [bp-60]
		mov	ax,48
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
		mov	ax,word [bp-60]
		add	word [bp-44],ax
..@j5707:
		cmp	byte [bp-2],0
		jne	..@j5718
		jmp	..@j5719
..@j5718:
		jmp	..@j5721
	ALIGN 2
..@j5720:
		mov	si,word [bp-46]
		mov	al,byte [bp+si-42]
		mov	ah,0
		add	ax,48
		mov	bx,word [bp+18]
		mov	dl,byte [bp-44]
		mov	byte [bp-88],dl
		mov	byte [bp-87],0
		mov	si,word [bp-88]
		mov	byte [bx+si],al
		inc	word [bp-44]
		inc	word [bp-46]
		dec	word [bp-62]
..@j5721:
		cmp	word [bp-62],0
		jg	..@j5720
		jmp	..@j5722
..@j5722:
		jmp	..@j5725
..@j5719:
		jmp	..@j5727
	ALIGN 2
..@j5726:
		mov	bx,word [bp+12]
		mov	si,word [bp-46]
		mov	al,byte [bx+si]
		mov	ah,0
		add	ax,48
		mov	bx,word [bp+18]
		mov	dl,byte [bp-44]
		mov	byte [bp-90],dl
		mov	byte [bp-89],0
		mov	si,word [bp-90]
		mov	byte [bx+si],al
		inc	word [bp-44]
		inc	word [bp-46]
		dec	word [bp-62]
..@j5727:
		cmp	word [bp-62],0
		jg	..@j5726
		jmp	..@j5728
..@j5728:
..@j5725:
		cmp	word [bp-64],0
		jg	..@j5731
		jmp	..@j5732
..@j5731:
		mov	ax,word [bp+18]
		mov	word [bp-84],ax
		mov	ax,word [bp+20]
		mov	word [bp-66],ax
		mov	al,byte [bp-44]
		mov	byte [bp-68],al
		mov	byte [bp-67],0
		mov	bx,word [bp-84]
		mov	si,word [bp-68]
		lea	ax,[bx+si]
		push	ax
		push	word [bp-64]
		mov	ax,48
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
..@j5732:
..@j5703:
		mov	byte [bp-1],1
..@j4696:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	18
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
EXTERN	fpc_shortstr_setlength
EXTERN	SYSTEM$_$STR_REAL$crcEDBAA446_$$_ROUND_DIGITS$TASCIIDIGITS$SMALLINT$SMALLINT$BOOLEAN$$SMALLINT
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
