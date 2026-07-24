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
	GLOBAL CRC_$$_CRC128$U128$PBYTE$LONGWORD$$U128
CRC_$$_CRC128$U128$PBYTE$LONGWORD$$U128:
		push	bp
		mov	bp,sp
		sub	sp,136
		mov	ax,word [bp+10]
		lea	di,[bp-16]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		cmp	word [bp+8],0
		je	..@j183
		jmp	..@j184
..@j183:
		mov	di,word [bp+12]
		push	ds
		pop	es
		mov	si,word TC_$CRC_$$_INITIALCRC128
		cld
		mov	cx,8
		rep
		movsw
		jmp	..@j181
..@j184:
		jmp	..@j188
	ALIGN 2
..@j187:
		mov	dx,word [bp-16]
		mov	bx,word [bp-14]
		mov	si,word [bp-12]
		mov	di,word [bp-10]
		mov	cx,8
..@j198:
		shr	di,1
		rcr	si,1
		rcr	bx,1
		rcr	dx,1
		loop	..@j198
		mov	ax,word [bp-8]
		mov	word [bp-136],ax
		mov	ax,word [bp-6]
		mov	word [bp-134],ax
		mov	ax,word [bp-4]
		mov	word [bp-132],ax
		mov	ax,word [bp-2]
		mov	cx,56
..@j201:
		shl	word [bp-136],1
		rcl	word [bp-134],1
		rcl	word [bp-132],1
		rcl	ax,1
		loop	..@j201
		or	dx,word [bp-136]
		or	bx,word [bp-134]
		or	si,word [bp-132]
		or	di,ax
		mov	word [bp-64],dx
		mov	word [bp-62],bx
		mov	word [bp-60],si
		mov	word [bp-58],di
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	si,word [bp-4]
		mov	bx,word [bp-2]
		mov	cx,8
..@j206:
		shr	bx,1
		rcr	si,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j206
		mov	word [bp-56],ax
		mov	word [bp-54],dx
		mov	word [bp-52],si
		mov	word [bp-50],bx
		lea	di,[bp-48]
		push	ss
		pop	es
		lea	si,[bp-64]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	byte [bp-81],al
		mov	cx,0
		mov	dl,byte [bp-81]
		mov	dh,0
		mov	bx,0
		mov	ax,0
		xor	dx,word [bp-16]
		xor	cx,word [bp-14]
		xor	bx,word [bp-12]
		xor	ax,word [bp-10]
		mov	word [bp-80],dx
		mov	word [bp-78],cx
		mov	word [bp-76],bx
		mov	word [bp-74],ax
		lea	di,[bp-72]
		push	ss
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		lea	di,[bp-64]
		push	ss
		pop	es
		lea	si,[bp-80]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp-64]
		mov	ax,word [bp-62]
		mov	cx,word [bp-60]
		mov	dx,word [bp-58]
		and	bx,255
		mov	ax,0
		mov	cx,0
		mov	dx,0
		mov	cl,4
		shl	bx,cl
		lea	bx,[TC_$CRC_$$_CRC128_TABLE+bx]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		mov	cx,word [bx+4]
		mov	si,word [bx+6]
		xor	ax,word [bp-48]
		xor	dx,word [bp-46]
		xor	cx,word [bp-44]
		xor	si,word [bp-42]
		mov	word [bp-32],ax
		mov	word [bp-30],dx
		mov	word [bp-28],cx
		mov	word [bp-26],si
		mov	si,word [bx+8]
		mov	dx,word [bx+10]
		mov	ax,word [bx+12]
		mov	cx,word [bx+14]
		xor	si,word [bp-40]
		xor	dx,word [bp-38]
		xor	ax,word [bp-36]
		xor	cx,word [bp-34]
		mov	word [bp-24],si
		mov	word [bp-22],dx
		mov	word [bp-20],ax
		mov	word [bp-18],cx
		lea	di,[bp-16]
		push	ss
		pop	es
		lea	si,[bp-32]
		cld
		mov	cx,8
		rep
		movsw
		inc	word [bp+8]
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		mov	bx,word [bp-12]
		mov	si,word [bp-10]
		mov	cx,8
..@j234:
		shr	si,1
		rcr	bx,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j234
		mov	di,word [bp-8]
		mov	cx,word [bp-6]
		mov	word [bp-92],cx
		mov	cx,word [bp-4]
		mov	word [bp-88],cx
		mov	cx,word [bp-2]
		mov	word [bp-90],cx
		mov	cx,56
..@j237:
		shl	di,1
		rcl	word [bp-92],1
		rcl	word [bp-88],1
		rcl	word [bp-90],1
		loop	..@j237
		or	ax,di
		or	dx,word [bp-92]
		or	bx,word [bp-88]
		or	si,word [bp-90]
		mov	word [bp-64],ax
		mov	word [bp-62],dx
		mov	word [bp-60],bx
		mov	word [bp-58],si
		mov	ax,word [bp-8]
		mov	si,word [bp-6]
		mov	dx,word [bp-4]
		mov	bx,word [bp-2]
		mov	cx,8
..@j242:
		shr	bx,1
		rcr	dx,1
		rcr	si,1
		rcr	ax,1
		loop	..@j242
		mov	word [bp-56],ax
		mov	word [bp-54],si
		mov	word [bp-52],dx
		mov	word [bp-50],bx
		lea	di,[bp-48]
		push	ss
		pop	es
		lea	si,[bp-64]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	byte [bp-81],al
		mov	dx,0
		mov	cl,byte [bp-81]
		mov	ch,0
		mov	ax,0
		mov	bx,0
		xor	cx,word [bp-16]
		xor	dx,word [bp-14]
		xor	ax,word [bp-12]
		xor	bx,word [bp-10]
		mov	word [bp-80],cx
		mov	word [bp-78],dx
		mov	word [bp-76],ax
		mov	word [bp-74],bx
		lea	di,[bp-72]
		push	ss
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		lea	di,[bp-64]
		push	ss
		pop	es
		lea	si,[bp-80]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp-64]
		mov	ax,word [bp-62]
		mov	cx,word [bp-60]
		mov	dx,word [bp-58]
		and	bx,255
		mov	ax,0
		mov	cx,0
		mov	dx,0
		mov	cl,4
		shl	bx,cl
		lea	bx,[TC_$CRC_$$_CRC128_TABLE+bx]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		mov	cx,word [bx+4]
		mov	si,word [bx+6]
		xor	ax,word [bp-48]
		xor	dx,word [bp-46]
		xor	cx,word [bp-44]
		xor	si,word [bp-42]
		mov	word [bp-32],ax
		mov	word [bp-30],dx
		mov	word [bp-28],cx
		mov	word [bp-26],si
		mov	cx,word [bx+8]
		mov	si,word [bx+10]
		mov	ax,word [bx+12]
		mov	dx,word [bx+14]
		xor	cx,word [bp-40]
		xor	si,word [bp-38]
		xor	ax,word [bp-36]
		xor	dx,word [bp-34]
		mov	word [bp-24],cx
		mov	word [bp-22],si
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		lea	di,[bp-16]
		push	ss
		pop	es
		lea	si,[bp-32]
		cld
		mov	cx,8
		rep
		movsw
		inc	word [bp+8]
		mov	dx,word [bp-16]
		mov	bx,word [bp-14]
		mov	si,word [bp-12]
		mov	di,word [bp-10]
		mov	cx,8
..@j270:
		shr	di,1
		rcr	si,1
		rcr	bx,1
		rcr	dx,1
		loop	..@j270
		mov	ax,word [bp-8]
		mov	word [bp-98],ax
		mov	ax,word [bp-6]
		mov	word [bp-86],ax
		mov	ax,word [bp-4]
		mov	cx,word [bp-2]
		mov	word [bp-84],cx
		mov	cx,56
..@j273:
		shl	word [bp-98],1
		rcl	word [bp-86],1
		rcl	ax,1
		rcl	word [bp-84],1
		loop	..@j273
		or	dx,word [bp-98]
		or	bx,word [bp-86]
		or	si,ax
		or	di,word [bp-84]
		mov	word [bp-64],dx
		mov	word [bp-62],bx
		mov	word [bp-60],si
		mov	word [bp-58],di
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	si,word [bp-4]
		mov	bx,word [bp-2]
		mov	cx,8
..@j278:
		shr	bx,1
		rcr	si,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j278
		mov	word [bp-56],ax
		mov	word [bp-54],dx
		mov	word [bp-52],si
		mov	word [bp-50],bx
		lea	di,[bp-48]
		push	ss
		pop	es
		lea	si,[bp-64]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	byte [bp-81],al
		mov	ax,0
		mov	dl,byte [bp-81]
		mov	dh,0
		mov	cx,0
		mov	bx,0
		xor	dx,word [bp-16]
		xor	ax,word [bp-14]
		xor	cx,word [bp-12]
		xor	bx,word [bp-10]
		mov	word [bp-80],dx
		mov	word [bp-78],ax
		mov	word [bp-76],cx
		mov	word [bp-74],bx
		lea	di,[bp-72]
		push	ss
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		lea	di,[bp-64]
		push	ss
		pop	es
		lea	si,[bp-80]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp-64]
		mov	ax,word [bp-62]
		mov	cx,word [bp-60]
		mov	dx,word [bp-58]
		and	bx,255
		mov	ax,0
		mov	cx,0
		mov	dx,0
		mov	cl,4
		shl	bx,cl
		lea	bx,[TC_$CRC_$$_CRC128_TABLE+bx]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		mov	cx,word [bx+4]
		mov	si,word [bx+6]
		xor	ax,word [bp-48]
		xor	dx,word [bp-46]
		xor	cx,word [bp-44]
		xor	si,word [bp-42]
		mov	word [bp-32],ax
		mov	word [bp-30],dx
		mov	word [bp-28],cx
		mov	word [bp-26],si
		mov	cx,word [bx+8]
		mov	si,word [bx+10]
		mov	ax,word [bx+12]
		mov	dx,word [bx+14]
		xor	cx,word [bp-40]
		xor	si,word [bp-38]
		xor	ax,word [bp-36]
		xor	dx,word [bp-34]
		mov	word [bp-24],cx
		mov	word [bp-22],si
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		lea	di,[bp-16]
		push	ss
		pop	es
		lea	si,[bp-32]
		cld
		mov	cx,8
		rep
		movsw
		inc	word [bp+8]
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		mov	bx,word [bp-12]
		mov	si,word [bp-10]
		mov	cx,8
..@j306:
		shr	si,1
		rcr	bx,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j306
		mov	di,word [bp-8]
		mov	cx,word [bp-6]
		mov	word [bp-96],cx
		mov	cx,word [bp-4]
		mov	word [bp-100],cx
		mov	cx,word [bp-2]
		mov	word [bp-108],cx
		mov	cx,56
..@j309:
		shl	di,1
		rcl	word [bp-96],1
		rcl	word [bp-100],1
		rcl	word [bp-108],1
		loop	..@j309
		or	ax,di
		or	dx,word [bp-96]
		or	bx,word [bp-100]
		or	si,word [bp-108]
		mov	word [bp-64],ax
		mov	word [bp-62],dx
		mov	word [bp-60],bx
		mov	word [bp-58],si
		mov	dx,word [bp-8]
		mov	bx,word [bp-6]
		mov	si,word [bp-4]
		mov	ax,word [bp-2]
		mov	cx,8
..@j314:
		shr	ax,1
		rcr	si,1
		rcr	bx,1
		rcr	dx,1
		loop	..@j314
		mov	word [bp-56],dx
		mov	word [bp-54],bx
		mov	word [bp-52],si
		mov	word [bp-50],ax
		lea	di,[bp-48]
		push	ss
		pop	es
		lea	si,[bp-64]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	byte [bp-81],al
		mov	ax,0
		mov	cl,byte [bp-81]
		mov	ch,0
		mov	bx,0
		mov	dx,0
		xor	cx,word [bp-16]
		xor	ax,word [bp-14]
		xor	bx,word [bp-12]
		xor	dx,word [bp-10]
		mov	word [bp-80],cx
		mov	word [bp-78],ax
		mov	word [bp-76],bx
		mov	word [bp-74],dx
		lea	di,[bp-72]
		push	ss
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		lea	di,[bp-64]
		push	ss
		pop	es
		lea	si,[bp-80]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp-64]
		mov	ax,word [bp-62]
		mov	cx,word [bp-60]
		mov	dx,word [bp-58]
		and	bx,255
		mov	ax,0
		mov	cx,0
		mov	dx,0
		mov	cl,4
		shl	bx,cl
		lea	bx,[TC_$CRC_$$_CRC128_TABLE+bx]
		mov	ax,word [bx]
		mov	cx,word [bx+2]
		mov	si,word [bx+4]
		mov	dx,word [bx+6]
		xor	ax,word [bp-48]
		xor	cx,word [bp-46]
		xor	si,word [bp-44]
		xor	dx,word [bp-42]
		mov	word [bp-32],ax
		mov	word [bp-30],cx
		mov	word [bp-28],si
		mov	word [bp-26],dx
		mov	ax,word [bx+8]
		mov	dx,word [bx+10]
		mov	cx,word [bx+12]
		mov	si,word [bx+14]
		xor	ax,word [bp-40]
		xor	dx,word [bp-38]
		xor	cx,word [bp-36]
		xor	si,word [bp-34]
		mov	word [bp-24],ax
		mov	word [bp-22],dx
		mov	word [bp-20],cx
		mov	word [bp-18],si
		lea	di,[bp-16]
		push	ss
		pop	es
		lea	si,[bp-32]
		cld
		mov	cx,8
		rep
		movsw
		inc	word [bp+8]
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		mov	bx,word [bp-12]
		mov	si,word [bp-10]
		mov	cx,8
..@j342:
		shr	si,1
		rcr	bx,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j342
		mov	cx,word [bp-8]
		mov	word [bp-116],cx
		mov	cx,word [bp-6]
		mov	word [bp-118],cx
		mov	cx,word [bp-4]
		mov	word [bp-120],cx
		mov	di,word [bp-2]
		mov	cx,56
..@j345:
		shl	word [bp-116],1
		rcl	word [bp-118],1
		rcl	word [bp-120],1
		rcl	di,1
		loop	..@j345
		or	ax,word [bp-116]
		or	dx,word [bp-118]
		or	bx,word [bp-120]
		or	si,di
		mov	word [bp-64],ax
		mov	word [bp-62],dx
		mov	word [bp-60],bx
		mov	word [bp-58],si
		mov	ax,word [bp-8]
		mov	si,word [bp-6]
		mov	dx,word [bp-4]
		mov	bx,word [bp-2]
		mov	cx,8
..@j350:
		shr	bx,1
		rcr	dx,1
		rcr	si,1
		rcr	ax,1
		loop	..@j350
		mov	word [bp-56],ax
		mov	word [bp-54],si
		mov	word [bp-52],dx
		mov	word [bp-50],bx
		lea	di,[bp-48]
		push	ss
		pop	es
		lea	si,[bp-64]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	byte [bp-81],al
		mov	ax,0
		mov	dl,byte [bp-81]
		mov	dh,0
		mov	cx,0
		mov	bx,0
		xor	dx,word [bp-16]
		xor	ax,word [bp-14]
		xor	cx,word [bp-12]
		xor	bx,word [bp-10]
		mov	word [bp-80],dx
		mov	word [bp-78],ax
		mov	word [bp-76],cx
		mov	word [bp-74],bx
		lea	di,[bp-72]
		push	ss
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		lea	di,[bp-64]
		push	ss
		pop	es
		lea	si,[bp-80]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp-64]
		mov	ax,word [bp-62]
		mov	cx,word [bp-60]
		mov	dx,word [bp-58]
		and	bx,255
		mov	ax,0
		mov	cx,0
		mov	dx,0
		mov	cl,4
		shl	bx,cl
		lea	bx,[TC_$CRC_$$_CRC128_TABLE+bx]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		mov	cx,word [bx+4]
		mov	si,word [bx+6]
		xor	ax,word [bp-48]
		xor	dx,word [bp-46]
		xor	cx,word [bp-44]
		xor	si,word [bp-42]
		mov	word [bp-32],ax
		mov	word [bp-30],dx
		mov	word [bp-28],cx
		mov	word [bp-26],si
		mov	cx,word [bx+8]
		mov	si,word [bx+10]
		mov	dx,word [bx+12]
		mov	ax,word [bx+14]
		xor	cx,word [bp-40]
		xor	si,word [bp-38]
		xor	dx,word [bp-36]
		xor	ax,word [bp-34]
		mov	word [bp-24],cx
		mov	word [bp-22],si
		mov	word [bp-20],dx
		mov	word [bp-18],ax
		lea	di,[bp-16]
		push	ss
		pop	es
		lea	si,[bp-32]
		cld
		mov	cx,8
		rep
		movsw
		inc	word [bp+8]
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		mov	bx,word [bp-12]
		mov	si,word [bp-10]
		mov	cx,8
..@j378:
		shr	si,1
		rcr	bx,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j378
		mov	di,word [bp-8]
		mov	cx,word [bp-6]
		mov	word [bp-124],cx
		mov	cx,word [bp-4]
		mov	word [bp-126],cx
		mov	cx,word [bp-2]
		mov	word [bp-128],cx
		mov	cx,56
..@j381:
		shl	di,1
		rcl	word [bp-124],1
		rcl	word [bp-126],1
		rcl	word [bp-128],1
		loop	..@j381
		or	ax,di
		or	dx,word [bp-124]
		or	bx,word [bp-126]
		or	si,word [bp-128]
		mov	word [bp-64],ax
		mov	word [bp-62],dx
		mov	word [bp-60],bx
		mov	word [bp-58],si
		mov	bx,word [bp-8]
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		mov	si,word [bp-2]
		mov	cx,8
..@j386:
		shr	si,1
		rcr	dx,1
		rcr	ax,1
		rcr	bx,1
		loop	..@j386
		mov	word [bp-56],bx
		mov	word [bp-54],ax
		mov	word [bp-52],dx
		mov	word [bp-50],si
		lea	di,[bp-48]
		push	ss
		pop	es
		lea	si,[bp-64]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	byte [bp-81],al
		mov	ax,0
		mov	cl,byte [bp-81]
		mov	ch,0
		mov	dx,0
		mov	bx,0
		xor	cx,word [bp-16]
		xor	ax,word [bp-14]
		xor	dx,word [bp-12]
		xor	bx,word [bp-10]
		mov	word [bp-80],cx
		mov	word [bp-78],ax
		mov	word [bp-76],dx
		mov	word [bp-74],bx
		lea	di,[bp-72]
		push	ss
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		lea	di,[bp-64]
		push	ss
		pop	es
		lea	si,[bp-80]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp-64]
		mov	ax,word [bp-62]
		mov	cx,word [bp-60]
		mov	dx,word [bp-58]
		and	bx,255
		mov	ax,0
		mov	cx,0
		mov	dx,0
		mov	cl,4
		shl	bx,cl
		lea	bx,[TC_$CRC_$$_CRC128_TABLE+bx]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		mov	cx,word [bx+4]
		mov	si,word [bx+6]
		xor	ax,word [bp-48]
		xor	dx,word [bp-46]
		xor	cx,word [bp-44]
		xor	si,word [bp-42]
		mov	word [bp-32],ax
		mov	word [bp-30],dx
		mov	word [bp-28],cx
		mov	word [bp-26],si
		mov	si,word [bx+8]
		mov	cx,word [bx+10]
		mov	ax,word [bx+12]
		mov	dx,word [bx+14]
		xor	si,word [bp-40]
		xor	cx,word [bp-38]
		xor	ax,word [bp-36]
		xor	dx,word [bp-34]
		mov	word [bp-24],si
		mov	word [bp-22],cx
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		lea	di,[bp-16]
		push	ss
		pop	es
		lea	si,[bp-32]
		cld
		mov	cx,8
		rep
		movsw
		inc	word [bp+8]
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		mov	bx,word [bp-12]
		mov	si,word [bp-10]
		mov	cx,8
..@j414:
		shr	si,1
		rcr	bx,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j414
		mov	di,word [bp-8]
		mov	cx,word [bp-6]
		mov	word [bp-102],cx
		mov	cx,word [bp-4]
		mov	word [bp-112],cx
		mov	cx,word [bp-2]
		mov	word [bp-114],cx
		mov	cx,56
..@j417:
		shl	di,1
		rcl	word [bp-102],1
		rcl	word [bp-112],1
		rcl	word [bp-114],1
		loop	..@j417
		or	ax,di
		or	dx,word [bp-102]
		or	bx,word [bp-112]
		or	si,word [bp-114]
		mov	word [bp-64],ax
		mov	word [bp-62],dx
		mov	word [bp-60],bx
		mov	word [bp-58],si
		mov	dx,word [bp-8]
		mov	bx,word [bp-6]
		mov	si,word [bp-4]
		mov	ax,word [bp-2]
		mov	cx,8
..@j422:
		shr	ax,1
		rcr	si,1
		rcr	bx,1
		rcr	dx,1
		loop	..@j422
		mov	word [bp-56],dx
		mov	word [bp-54],bx
		mov	word [bp-52],si
		mov	word [bp-50],ax
		lea	di,[bp-48]
		push	ss
		pop	es
		lea	si,[bp-64]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	byte [bp-81],al
		mov	ax,0
		mov	cl,byte [bp-81]
		mov	ch,0
		mov	dx,0
		mov	bx,0
		xor	cx,word [bp-16]
		xor	ax,word [bp-14]
		xor	dx,word [bp-12]
		xor	bx,word [bp-10]
		mov	word [bp-80],cx
		mov	word [bp-78],ax
		mov	word [bp-76],dx
		mov	word [bp-74],bx
		lea	di,[bp-72]
		push	ss
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		lea	di,[bp-64]
		push	ss
		pop	es
		lea	si,[bp-80]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp-64]
		mov	ax,word [bp-62]
		mov	cx,word [bp-60]
		mov	dx,word [bp-58]
		and	bx,255
		mov	ax,0
		mov	cx,0
		mov	dx,0
		mov	cl,4
		shl	bx,cl
		lea	bx,[TC_$CRC_$$_CRC128_TABLE+bx]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		mov	cx,word [bx+4]
		mov	si,word [bx+6]
		xor	ax,word [bp-48]
		xor	dx,word [bp-46]
		xor	cx,word [bp-44]
		xor	si,word [bp-42]
		mov	word [bp-32],ax
		mov	word [bp-30],dx
		mov	word [bp-28],cx
		mov	word [bp-26],si
		mov	dx,word [bx+8]
		mov	cx,word [bx+10]
		mov	si,word [bx+12]
		mov	ax,word [bx+14]
		xor	dx,word [bp-40]
		xor	cx,word [bp-38]
		xor	si,word [bp-36]
		xor	ax,word [bp-34]
		mov	word [bp-24],dx
		mov	word [bp-22],cx
		mov	word [bp-20],si
		mov	word [bp-18],ax
		lea	di,[bp-16]
		push	ss
		pop	es
		lea	si,[bp-32]
		cld
		mov	cx,8
		rep
		movsw
		inc	word [bp+8]
		mov	dx,word [bp-16]
		mov	bx,word [bp-14]
		mov	si,word [bp-12]
		mov	di,word [bp-10]
		mov	cx,8
..@j450:
		shr	di,1
		rcr	si,1
		rcr	bx,1
		rcr	dx,1
		loop	..@j450
		mov	ax,word [bp-8]
		mov	word [bp-106],ax
		mov	ax,word [bp-6]
		mov	word [bp-94],ax
		mov	ax,word [bp-4]
		mov	cx,word [bp-2]
		mov	word [bp-104],cx
		mov	cx,56
..@j453:
		shl	word [bp-106],1
		rcl	word [bp-94],1
		rcl	ax,1
		rcl	word [bp-104],1
		loop	..@j453
		or	dx,word [bp-106]
		or	bx,word [bp-94]
		or	si,ax
		or	di,word [bp-104]
		mov	word [bp-64],dx
		mov	word [bp-62],bx
		mov	word [bp-60],si
		mov	word [bp-58],di
		mov	bx,word [bp-8]
		mov	si,word [bp-6]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	cx,8
..@j458:
		shr	dx,1
		rcr	ax,1
		rcr	si,1
		rcr	bx,1
		loop	..@j458
		mov	word [bp-56],bx
		mov	word [bp-54],si
		mov	word [bp-52],ax
		mov	word [bp-50],dx
		lea	di,[bp-48]
		push	ss
		pop	es
		lea	si,[bp-64]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	byte [bp-81],al
		mov	ax,0
		mov	dl,byte [bp-81]
		mov	dh,0
		mov	cx,0
		mov	bx,0
		xor	dx,word [bp-16]
		xor	ax,word [bp-14]
		xor	cx,word [bp-12]
		xor	bx,word [bp-10]
		mov	word [bp-80],dx
		mov	word [bp-78],ax
		mov	word [bp-76],cx
		mov	word [bp-74],bx
		lea	di,[bp-72]
		push	ss
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		lea	di,[bp-64]
		push	ss
		pop	es
		lea	si,[bp-80]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp-64]
		mov	ax,word [bp-62]
		mov	cx,word [bp-60]
		mov	dx,word [bp-58]
		and	bx,255
		mov	ax,0
		mov	cx,0
		mov	dx,0
		mov	cl,4
		shl	bx,cl
		lea	bx,[TC_$CRC_$$_CRC128_TABLE+bx]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		mov	cx,word [bx+4]
		mov	si,word [bx+6]
		xor	ax,word [bp-48]
		xor	dx,word [bp-46]
		xor	cx,word [bp-44]
		xor	si,word [bp-42]
		mov	word [bp-32],ax
		mov	word [bp-30],dx
		mov	word [bp-28],cx
		mov	word [bp-26],si
		mov	ax,word [bx+8]
		mov	dx,word [bx+10]
		mov	cx,word [bx+12]
		mov	si,word [bx+14]
		xor	ax,word [bp-40]
		xor	dx,word [bp-38]
		xor	cx,word [bp-36]
		xor	si,word [bp-34]
		mov	word [bp-24],ax
		mov	word [bp-22],dx
		mov	word [bp-20],cx
		mov	word [bp-18],si
		lea	di,[bp-16]
		push	ss
		pop	es
		lea	si,[bp-32]
		cld
		mov	cx,8
		rep
		movsw
		inc	word [bp+8]
		sub	word [bp+4],8
		sbb	word [bp+6],0
..@j188:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		ja	..@j187
		jb	..@j189
		cmp	dx,8
		jae	..@j187
		jmp	..@j189
..@j189:
		jmp	..@j479
	ALIGN 2
..@j478:
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		mov	bx,word [bp-12]
		mov	si,word [bp-10]
		mov	cx,8
..@j489:
		shr	si,1
		rcr	bx,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j489
		mov	di,word [bp-8]
		mov	cx,word [bp-6]
		mov	word [bp-122],cx
		mov	cx,word [bp-4]
		mov	word [bp-110],cx
		mov	cx,word [bp-2]
		mov	word [bp-130],cx
		mov	cx,56
..@j492:
		shl	di,1
		rcl	word [bp-122],1
		rcl	word [bp-110],1
		rcl	word [bp-130],1
		loop	..@j492
		or	ax,di
		or	dx,word [bp-122]
		or	bx,word [bp-110]
		or	si,word [bp-130]
		mov	word [bp-64],ax
		mov	word [bp-62],dx
		mov	word [bp-60],bx
		mov	word [bp-58],si
		mov	ax,word [bp-8]
		mov	bx,word [bp-6]
		mov	si,word [bp-4]
		mov	dx,word [bp-2]
		mov	cx,8
..@j497:
		shr	dx,1
		rcr	si,1
		rcr	bx,1
		rcr	ax,1
		loop	..@j497
		mov	word [bp-56],ax
		mov	word [bp-54],bx
		mov	word [bp-52],si
		mov	word [bp-50],dx
		lea	di,[bp-48]
		push	ss
		pop	es
		lea	si,[bp-64]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	byte [bp-81],al
		mov	ax,0
		mov	dl,byte [bp-81]
		mov	dh,0
		mov	cx,0
		mov	bx,0
		xor	dx,word [bp-16]
		xor	ax,word [bp-14]
		xor	cx,word [bp-12]
		xor	bx,word [bp-10]
		mov	word [bp-80],dx
		mov	word [bp-78],ax
		mov	word [bp-76],cx
		mov	word [bp-74],bx
		lea	di,[bp-72]
		push	ss
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		lea	di,[bp-64]
		push	ss
		pop	es
		lea	si,[bp-80]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp-64]
		mov	ax,word [bp-62]
		mov	cx,word [bp-60]
		mov	dx,word [bp-58]
		and	bx,255
		mov	ax,0
		mov	cx,0
		mov	dx,0
		mov	cl,4
		shl	bx,cl
		lea	bx,[TC_$CRC_$$_CRC128_TABLE+bx]
		mov	si,word [bx]
		mov	ax,word [bx+2]
		mov	dx,word [bx+4]
		mov	cx,word [bx+6]
		xor	si,word [bp-48]
		xor	ax,word [bp-46]
		xor	dx,word [bp-44]
		xor	cx,word [bp-42]
		mov	word [bp-32],si
		mov	word [bp-30],ax
		mov	word [bp-28],dx
		mov	word [bp-26],cx
		mov	ax,word [bx+8]
		mov	dx,word [bx+10]
		mov	cx,word [bx+12]
		mov	si,word [bx+14]
		xor	ax,word [bp-40]
		xor	dx,word [bp-38]
		xor	cx,word [bp-36]
		xor	si,word [bp-34]
		mov	word [bp-24],ax
		mov	word [bp-22],dx
		mov	word [bp-20],cx
		mov	word [bp-18],si
		lea	di,[bp-16]
		push	ss
		pop	es
		lea	si,[bp-32]
		cld
		mov	cx,8
		rep
		movsw
		inc	word [bp+8]
		sub	word [bp+4],1
		sbb	word [bp+6],0
..@j479:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		ja	..@j478
		jb	..@j480
		cmp	ax,0
		ja	..@j478
		jmp	..@j480
..@j480:
		mov	di,word [bp+12]
		push	ds
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,8
		rep
		movsw
..@j181:
		mov	sp,bp
		pop	bp
		ret	10
; End asmlist al_procedures
; Begin asmlist al_typedconsts
EXTERN	TC_$CRC_$$_CRC128_TABLE
EXTERN	TC_$CRC_$$_INITIALCRC128
