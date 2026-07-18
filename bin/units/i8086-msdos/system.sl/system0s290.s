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
	GLOBAL SYSTEM_$$_DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10
SYSTEM_$$_DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10:
		push	bp
		mov	bp,sp
		sub	sp,58
		mov	dx,word [TC_$SYSTEM$_$DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10_$$_BASE+14]
		mov	ax,word [TC_$SYSTEM$_$DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10_$$_FACTOR_MINUS+126]
		add	ax,dx
		mov	word [bp-8],ax
		mov	ax,word [bp+6]
		cmp	ax,word [bp-8]
		jle	..@j4591
		jmp	..@j4592
..@j4591:
		mov	word [bp-2],0
		jmp	..@j4595
..@j4592:
		mov	cx,word [bp+6]
		mov	ax,word [bp-8]
		sub	cx,ax
		mov	ax,7085
		imul	cx
		mov	ax,cx
		mov	cl,2
		sar	dx,cl
		mov	cl,15
		shr	ax,cl
		add	dx,ax
		mov	word [bp-2],dx
		mov	ax,37
		mul	word [bp-2]
		mov	dx,word [bp-8]
		add	dx,ax
		cmp	dx,word [bp+6]
		jne	..@j4598
		jmp	..@j4599
..@j4598:
		inc	word [bp-2]
..@j4599:
		cmp	word [bp-2],271
		jg	..@j4600
		jmp	..@j4601
..@j4600:
		mov	word [bp-2],271
..@j4601:
..@j4595:
		mov	ax,word [bp-2]
		mov	bx,ax
		mov	cl,15
		sar	bx,cl
		mov	cx,ax
		xor	cx,bx
		sub	cx,bx
		and	cx,15
		mov	dx,bx
		xor	dx,cx
		sub	dx,bx
		mov	word [bp-6],dx
		mov	ax,word [bp-2]
		test	ax,ax
		jns	..@j4614
		add	ax,15
..@j4614:
		mov	cl,4
		sar	ax,cl
		sub	ax,8
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		je	..@j4615
		jmp	..@j4616
..@j4615:
		mov	di,word [bp+4]
		mov	bx,word [bp-6]
		mov	cl,4
		shl	bx,cl
		push	ds
		pop	es
		lea	si,[TC_$SYSTEM$_$DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10_$$_BASE+bx]
		cld
		mov	cx,8
		rep
		movsw
		jmp	..@j4587
..@j4616:
		mov	bx,word [bp-6]
		mov	cl,4
		shl	bx,cl
		lea	di,[bp-24]
		push	ss
		pop	es
		lea	si,[TC_$SYSTEM$_$DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10_$$_BASE+bx]
		cld
		mov	cx,8
		rep
		movsw
		cmp	word [bp-4],0
		jg	..@j4621
		jmp	..@j4622
..@j4621:
		dec	word [bp-4]
		mov	bx,word [bp-4]
		mov	cl,4
		shl	bx,cl
		mov	ax,word [TC_$SYSTEM$_$DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10_$$_FACTOR_PLUS+bx+14]
		mov	dx,word [bp-10]
		add	dx,ax
		mov	bx,word [bp+4]
		mov	word [bx+14],dx
		cmp	word [bp-10],0
		jne	..@j4625
		jmp	..@j4626
..@j4625:
		lea	ax,[bp-44]
		push	ax
		lea	ax,[bp-24]
		push	ax
		mov	bx,word [bp-4]
		mov	cl,4
		shl	bx,cl
		lea	ax,[TC_$SYSTEM$_$DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10_$$_FACTOR_PLUS+bx]
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DIY_FP_MULTIPLY$TDIY_FP$TDIY_FP$BOOLEAN$$TDIY_FP
		mov	di,word [bp+4]
		push	ds
		pop	es
		lea	si,[bp-44]
		cld
		mov	cx,7
		rep
		movsw
		jmp	..@j4637
..@j4626:
		mov	di,word [bp+4]
		mov	bx,word [bp-4]
		mov	cl,4
		shl	bx,cl
		push	ds
		pop	es
		lea	si,[TC_$SYSTEM$_$DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10_$$_FACTOR_PLUS+bx]
		cld
		mov	cx,7
		rep
		movsw
		jmp	..@j4587
..@j4637:
		jmp	..@j4640
..@j4622:
		mov	ax,word [bp-4]
		inc	ax
		neg	ax
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		mov	cl,4
		shl	bx,cl
		mov	dx,word [TC_$SYSTEM$_$DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10_$$_FACTOR_MINUS+bx+14]
		mov	ax,word [bp-10]
		add	ax,dx
		mov	bx,word [bp+4]
		mov	word [bx+14],ax
		cmp	word [bp-10],0
		jne	..@j4645
		jmp	..@j4646
..@j4645:
		lea	ax,[bp-44]
		push	ax
		lea	ax,[bp-24]
		push	ax
		mov	bx,word [bp-4]
		mov	cl,4
		shl	bx,cl
		lea	ax,[TC_$SYSTEM$_$DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10_$$_FACTOR_MINUS+bx]
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DIY_FP_MULTIPLY$TDIY_FP$TDIY_FP$BOOLEAN$$TDIY_FP
		mov	di,word [bp+4]
		push	ds
		pop	es
		lea	si,[bp-44]
		cld
		mov	cx,7
		rep
		movsw
		jmp	..@j4657
..@j4646:
		mov	di,word [bp+4]
		mov	bx,word [bp-4]
		mov	cl,4
		shl	bx,cl
		push	ds
		pop	es
		lea	si,[TC_$SYSTEM$_$DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10_$$_FACTOR_MINUS+bx]
		cld
		mov	cx,7
		rep
		movsw
		jmp	..@j4587
..@j4657:
..@j4640:
		mov	bx,word [bp-2]
		mov	al,byte [TC_$SYSTEM$_$DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10_$$_CORRECTOR+bx]
		mov	byte [bp-29],al
		cmp	byte [bp-29],0
		jne	..@j4662
		jmp	..@j4663
..@j4662:
		mov	word [bp-28],0
		mov	word [bp-26],0
		cmp	byte [bp-29],0
		jl	..@j4666
		jmp	..@j4667
..@j4666:
		sub	word [bp-28],1
		sbb	word [bp-26],0
..@j4667:
		mov	al,byte [bp-29]
		cbw
		cwd
		mov	bx,ax
		mov	si,dx
		mov	ax,bx
		mov	dx,si
		mov	cl,15
		sar	dx,cl
		mov	ax,dx
		mov	word [bp-38],bx
		mov	word [bp-36],si
		mov	word [bp-34],ax
		mov	word [bp-32],dx
		mov	ax,word [bp+4]
		mov	word [bp-56],ax
		mov	bx,word [bp+4]
		lea	ax,[bx+8]
		mov	word [bp-54],ax
		mov	bx,word [bp-56]
		mov	cx,word [bx]
		mov	bx,word [bp-56]
		mov	si,word [bx+2]
		mov	bx,word [bp-56]
		mov	dx,word [bx+4]
		mov	bx,word [bp-56]
		mov	ax,word [bx+6]
		add	cx,word [bp-38]
		adc	si,word [bp-36]
		adc	dx,word [bp-34]
		adc	ax,word [bp-32]
		mov	word [bp-52],cx
		mov	word [bp-50],si
		mov	word [bp-48],dx
		mov	word [bp-46],ax
		mov	bx,word [bp-54]
		mov	si,word [bx]
		mov	di,word [bp-54]
		mov	bx,word [di+2]
		mov	dx,word [bp-28]
		mov	ax,word [bp-26]
		mov	word [bp-58],dx
		mov	cx,ax
		add	word [bp-58],si
		adc	cx,bx
		mov	dx,word [bp-52]
		mov	ax,word [bp-50]
		mov	si,word [bp-48]
		mov	di,word [bp-46]
		mov	bx,word [bp-56]
		cmp	di,word [bx+6]
		jb	..@j4679
		ja	..@j4680
		mov	bx,word [bp-56]
		cmp	si,word [bx+4]
		jb	..@j4679
		ja	..@j4680
		mov	bx,word [bp-56]
		cmp	ax,word [bx+2]
		jb	..@j4679
		ja	..@j4680
		mov	bx,word [bp-56]
		cmp	dx,word [bx]
		jb	..@j4679
		jmp	..@j4680
		jmp	..@j4680
..@j4679:
		mov	dl,1
		jmp	..@j4681
..@j4680:
		mov	dl,0
..@j4681:
		mov	ax,0
		mov	dh,0
		add	dx,word [bp-58]
		adc	ax,cx
		mov	bx,word [bp-54]
		mov	word [bx],dx
		mov	bx,word [bp-54]
		mov	word [bx+2],ax
		mov	di,word [bp-56]
		push	ds
		pop	es
		lea	si,[bp-52]
		cld
		mov	cx,4
		rep
		movsw
..@j4663:
..@j4587:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TC_$SYSTEM$_$DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10_$$_CORRECTOR
EXTERN	SYSTEM_$$_DIY_FP_MULTIPLY$TDIY_FP$TDIY_FP$BOOLEAN$$TDIY_FP
EXTERN	TC_$SYSTEM$_$DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10_$$_FACTOR_PLUS
EXTERN	TC_$SYSTEM$_$DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10_$$_FACTOR_MINUS
EXTERN	TC_$SYSTEM$_$DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10_$$_BASE
