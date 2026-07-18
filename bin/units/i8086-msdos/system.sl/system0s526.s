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
	GLOBAL SYSTEM_$$_UCS4ENCODE$PWIDECHAR$SMALLINT$UCS4STRING
SYSTEM_$$_UCS4ENCODE$PWIDECHAR$SMALLINT$UCS4STRING:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j13501
	ALIGN 2
..@j13500:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		cmp	word [bx+si],-10241
		jbe	..@j13503
		jmp	..@j13505
..@j13505:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		cmp	word [bx+si],-8192
		jae	..@j13503
		jmp	..@j13504
..@j13503:
		inc	word [bp-2]
		jmp	..@j13506
..@j13504:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		cmp	word [bx+si],-9217
		jbe	..@j13511
		jmp	..@j13508
..@j13511:
		mov	ax,word [bp-2]
		inc	ax
		cmp	ax,word [bp+6]
		jl	..@j13510
		jmp	..@j13508
..@j13510:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		inc	ax
		mov	si,ax
		shl	si,1
		cmp	word [bx+si],-9216
		jae	..@j13509
		jmp	..@j13508
..@j13509:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		inc	ax
		mov	si,ax
		shl	si,1
		cmp	word [bx+si],-8193
		jbe	..@j13507
		jmp	..@j13508
..@j13507:
		add	word [bp-2],2
		jmp	..@j13512
..@j13508:
		inc	word [bp-2]
..@j13512:
..@j13506:
		inc	word [bp-4]
..@j13501:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		jl	..@j13500
		jmp	..@j13502
..@j13502:
		mov	ax,word [bp-4]
		inc	ax
		mov	word [bp-10],ax
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word RTTI_$SYSTEM_$$_UCS4STRING
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	fpc_dynarray_setlength
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j13528
	ALIGN 2
..@j13527:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		cmp	dx,0
		jl	..@j13532
		jg	..@j13534
		cmp	ax,-10241
		jbe	..@j13532
		jmp	..@j13534
..@j13534:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		cmp	dx,0
		jg	..@j13532
		jl	..@j13533
		cmp	ax,-8192
		jae	..@j13532
		jmp	..@j13533
..@j13532:
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bp-4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp-8]
		mov	word [bx+si],ax
		mov	ax,word [bp-6]
		mov	word [bx+si+2],ax
		jmp	..@j13537
..@j13533:
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,0
		jl	..@j13542
		jg	..@j13539
		cmp	dx,-9217
		jbe	..@j13542
		jmp	..@j13539
..@j13542:
		mov	ax,word [bp-2]
		inc	ax
		cmp	ax,word [bp+6]
		jl	..@j13541
		jmp	..@j13539
..@j13541:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		inc	ax
		mov	si,ax
		shl	si,1
		cmp	word [bx+si],-9216
		jae	..@j13540
		jmp	..@j13539
..@j13540:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		inc	ax
		mov	si,ax
		shl	si,1
		cmp	word [bx+si],-8193
		jbe	..@j13538
		jmp	..@j13539
..@j13538:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		inc	ax
		mov	si,ax
		shl	si,1
		mov	bx,word [bx+si]
		mov	si,0
		xor	bx,-9216
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		sub	dx,-10304
		sbb	ax,0
		mov	cx,10
..@j13545:
		shl	dx,1
		rcl	ax,1
		loop	..@j13545
		mov	di,ax
		add	dx,bx
		adc	di,si
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bp-4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	word [bx+si],dx
		mov	word [bx+si+2],di
		inc	word [bp-2]
		jmp	..@j13546
..@j13539:
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bp-4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp-8]
		mov	word [bx+si],ax
		mov	ax,word [bp-6]
		mov	word [bx+si+2],ax
..@j13546:
..@j13537:
		inc	word [bp-2]
		inc	word [bp-4]
..@j13528:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		jl	..@j13527
		jmp	..@j13529
..@j13529:
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bp-4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	word [bx+si],0
		mov	word [bx+si+2],0
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_dynarray_setlength
EXTERN	RTTI_$SYSTEM_$$_UCS4STRING
