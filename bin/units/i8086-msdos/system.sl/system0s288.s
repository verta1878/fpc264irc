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
	GLOBAL SYSTEM_$$_DIY_FP_MULTIPLY$TDIY_FP$TDIY_FP$BOOLEAN$$TDIY_FP
SYSTEM_$$_DIY_FP_MULTIPLY$TDIY_FP$TDIY_FP$BOOLEAN$$TDIY_FP:
		push	bp
		mov	bp,sp
		sub	sp,166
		mov	bx,word [bp+8]
		mov	ax,word [bx+8]
		mov	word [bp-4],ax
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		mov	bx,word [bp+8]
		mov	dx,word [bx]
		mov	si,word [bx+2]
		mov	di,word [bx+4]
		mov	ax,word [bx+6]
		mov	cx,32
..@j4403:
		shr	ax,1
		rcr	di,1
		rcr	si,1
		rcr	dx,1
		loop	..@j4403
		mov	word [bp-8],dx
		mov	word [bp-6],si
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-12],ax
		mov	ax,word [bx+2]
		mov	word [bp-10],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		mov	word [bp-16],ax
		mov	ax,word [bx+10]
		mov	word [bp-14],ax
		mov	bx,word [bp+6]
		mov	dx,word [bx]
		mov	si,word [bx+2]
		mov	di,word [bx+4]
		mov	ax,word [bx+6]
		mov	cx,32
..@j4412:
		shr	ax,1
		rcr	di,1
		rcr	si,1
		rcr	dx,1
		loop	..@j4412
		mov	word [bp-20],dx
		mov	word [bp-18],si
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-24],ax
		mov	ax,word [bx+2]
		mov	word [bp-22],ax
		mov	word [bp-114],bp
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-14]
		push	word [bp-16]
		call	fpc_mul_dword_to_qword
		mov	word [bp-32],dx
		mov	word [bp-30],cx
		mov	word [bp-28],bx
		mov	word [bp-26],ax
		mov	word [bp-114],bp
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-14]
		push	word [bp-16]
		call	fpc_mul_dword_to_qword
		mov	word [bp-56],dx
		mov	word [bp-54],cx
		mov	word [bp-52],bx
		mov	word [bp-50],ax
		mov	word [bp-114],bp
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		call	fpc_mul_dword_to_qword
		mov	word [bp-80],dx
		mov	word [bp-78],cx
		mov	word [bp-76],bx
		mov	word [bp-74],ax
		mov	word [bp-114],bp
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-18]
		push	word [bp-20]
		call	fpc_mul_dword_to_qword
		mov	word [bp-40],dx
		mov	word [bp-38],cx
		mov	word [bp-36],bx
		mov	word [bp-34],ax
		mov	word [bp-114],bp
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-18]
		push	word [bp-20]
		call	fpc_mul_dword_to_qword
		mov	word [bp-64],dx
		mov	word [bp-62],cx
		mov	word [bp-60],bx
		mov	word [bp-58],ax
		mov	word [bp-114],bp
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-18]
		push	word [bp-20]
		call	fpc_mul_dword_to_qword
		mov	word [bp-88],dx
		mov	word [bp-86],cx
		mov	word [bp-84],bx
		mov	word [bp-82],ax
		mov	word [bp-114],bp
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-22]
		push	word [bp-24]
		call	fpc_mul_dword_to_qword
		mov	word [bp-48],dx
		mov	word [bp-46],cx
		mov	word [bp-44],bx
		mov	word [bp-42],ax
		mov	word [bp-114],bp
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-22]
		push	word [bp-24]
		call	fpc_mul_dword_to_qword
		mov	word [bp-72],dx
		mov	word [bp-70],cx
		mov	word [bp-68],bx
		mov	word [bp-66],ax
		mov	word [bp-114],bp
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-22]
		push	word [bp-24]
		call	fpc_mul_dword_to_qword
		mov	word [bp-96],dx
		mov	word [bp-94],cx
		mov	word [bp-92],bx
		mov	word [bp-90],ax
		mov	ax,word [bp-96]
		mov	word [bp-142],ax
		mov	ax,word [bp-94]
		mov	word [bp-140],ax
		mov	dx,word [bp-92]
		mov	bx,word [bp-90]
		mov	cx,32
..@j4509:
		shr	bx,1
		rcr	dx,1
		rcr	word [bp-140],1
		rcr	word [bp-142],1
		loop	..@j4509
		mov	ax,word [bp-72]
		mov	cx,word [bp-70]
		mov	si,0
		mov	di,0
		add	word [bp-142],ax
		adc	word [bp-140],cx
		adc	dx,si
		adc	bx,di
		mov	ax,word [bp-88]
		mov	cx,word [bp-86]
		mov	si,0
		mov	di,0
		add	word [bp-142],ax
		adc	word [bp-140],cx
		adc	dx,si
		adc	bx,di
		mov	ax,word [bp-142]
		mov	word [bp-104],ax
		mov	ax,word [bp-140]
		mov	word [bp-102],ax
		mov	word [bp-100],dx
		mov	word [bp-98],bx
		mov	bx,word [bp-104]
		mov	si,word [bp-102]
		mov	dx,word [bp-100]
		mov	ax,word [bp-98]
		mov	cx,32
..@j4514:
		shr	ax,1
		rcr	dx,1
		rcr	si,1
		rcr	bx,1
		loop	..@j4514
		mov	word [bp-164],bx
		mov	word [bp-158],si
		mov	word [bp-164],bx
		mov	word [bp-158],si
		mov	word [bp-154],0
		mov	dx,0
		add	word [bp-158],-32768
		adc	word [bp-154],0
		adc	dx,0
		mov	ax,word [bp-72]
		mov	si,word [bp-70]
		mov	bx,word [bp-68]
		mov	di,word [bp-66]
		mov	cx,32
..@j4517:
		shr	di,1
		rcr	bx,1
		rcr	si,1
		rcr	ax,1
		loop	..@j4517
		mov	cx,ax
		mov	ax,si
		mov	bx,cx
		mov	si,ax
		mov	bx,cx
		mov	si,ax
		mov	ax,0
		mov	cx,0
		add	word [bp-164],bx
		adc	word [bp-158],si
		adc	word [bp-154],ax
		adc	dx,cx
		mov	bx,word [bp-88]
		mov	di,word [bp-86]
		mov	si,word [bp-84]
		mov	ax,word [bp-82]
		mov	cx,32
..@j4520:
		shr	ax,1
		rcr	si,1
		rcr	di,1
		rcr	bx,1
		loop	..@j4520
		mov	cx,bx
		mov	ax,di
		mov	bx,cx
		mov	si,ax
		mov	bx,cx
		mov	si,ax
		mov	ax,0
		mov	cx,0
		add	word [bp-164],bx
		adc	word [bp-158],si
		adc	word [bp-154],ax
		adc	dx,cx
		mov	ax,word [bp-48]
		mov	cx,word [bp-46]
		mov	bx,0
		mov	si,0
		add	word [bp-164],ax
		adc	word [bp-158],cx
		adc	word [bp-154],bx
		adc	dx,si
		mov	ax,word [bp-64]
		mov	bx,word [bp-62]
		mov	si,0
		mov	cx,0
		add	word [bp-164],ax
		adc	word [bp-158],bx
		adc	word [bp-154],si
		adc	dx,cx
		mov	ax,word [bp-80]
		mov	bx,word [bp-78]
		mov	si,0
		mov	cx,0
		add	word [bp-164],ax
		adc	word [bp-158],bx
		adc	word [bp-154],si
		adc	dx,cx
		mov	ax,word [bp-164]
		mov	word [bp-104],ax
		mov	ax,word [bp-158]
		mov	word [bp-102],ax
		mov	ax,word [bp-154]
		mov	word [bp-100],ax
		mov	word [bp-98],dx
		mov	ax,word [bp-48]
		mov	si,word [bp-46]
		mov	bx,word [bp-44]
		mov	dx,word [bp-42]
		mov	cx,32
..@j4525:
		shr	dx,1
		rcr	bx,1
		rcr	si,1
		rcr	ax,1
		loop	..@j4525
		mov	word [bp-162],ax
		mov	word [bp-160],si
		mov	word [bp-162],ax
		mov	word [bp-160],si
		mov	dx,0
		mov	word [bp-156],0
		mov	ax,word [bp-104]
		mov	bx,word [bp-102]
		mov	si,word [bp-100]
		mov	di,word [bp-98]
		mov	cx,32
..@j4528:
		shr	di,1
		rcr	si,1
		rcr	bx,1
		rcr	ax,1
		loop	..@j4528
		add	word [bp-162],ax
		adc	word [bp-160],bx
		adc	dx,si
		adc	word [bp-156],di
		mov	ax,word [bp-64]
		mov	si,word [bp-62]
		mov	di,word [bp-60]
		mov	bx,word [bp-58]
		mov	cx,32
..@j4531:
		shr	bx,1
		rcr	di,1
		rcr	si,1
		rcr	ax,1
		loop	..@j4531
		mov	cx,ax
		mov	ax,si
		mov	bx,cx
		mov	si,ax
		mov	bx,cx
		mov	si,ax
		mov	ax,0
		mov	cx,0
		add	word [bp-162],bx
		adc	word [bp-160],si
		adc	dx,ax
		adc	word [bp-156],cx
		mov	ax,word [bp-80]
		mov	si,word [bp-78]
		mov	bx,word [bp-76]
		mov	di,word [bp-74]
		mov	cx,32
..@j4534:
		shr	di,1
		rcr	bx,1
		rcr	si,1
		rcr	ax,1
		loop	..@j4534
		mov	cx,ax
		mov	ax,si
		mov	bx,cx
		mov	si,ax
		mov	bx,cx
		mov	si,ax
		mov	cx,0
		mov	ax,0
		add	word [bp-162],bx
		adc	word [bp-160],si
		adc	dx,cx
		adc	word [bp-156],ax
		mov	ax,word [bp-40]
		mov	cx,word [bp-38]
		mov	bx,0
		mov	si,0
		add	word [bp-162],ax
		adc	word [bp-160],cx
		adc	dx,bx
		adc	word [bp-156],si
		mov	ax,word [bp-56]
		mov	cx,word [bp-54]
		mov	bx,0
		mov	si,0
		add	word [bp-162],ax
		adc	word [bp-160],cx
		adc	dx,bx
		adc	word [bp-156],si
		mov	ax,word [bp-162]
		mov	word [bp-104],ax
		mov	ax,word [bp-160]
		mov	word [bp-102],ax
		mov	word [bp-100],dx
		mov	ax,word [bp-156]
		mov	word [bp-98],ax
		mov	ax,word [bp-40]
		mov	si,word [bp-38]
		mov	dx,word [bp-36]
		mov	bx,word [bp-34]
		mov	cx,32
..@j4539:
		shr	bx,1
		rcr	dx,1
		rcr	si,1
		rcr	ax,1
		loop	..@j4539
		mov	word [bp-152],ax
		mov	word [bp-150],si
		mov	word [bp-152],ax
		mov	word [bp-150],si
		mov	word [bp-144],0
		mov	dx,0
		mov	ax,word [bp-152]
		add	ax,word [bp-32]
		mov	word [bp-152],ax
		mov	ax,word [bp-150]
		adc	ax,word [bp-30]
		mov	word [bp-150],ax
		mov	ax,word [bp-144]
		adc	ax,word [bp-28]
		mov	word [bp-144],ax
		adc	dx,word [bp-26]
		mov	ax,word [bp-56]
		mov	si,word [bp-54]
		mov	bx,word [bp-52]
		mov	di,word [bp-50]
		mov	cx,32
..@j4542:
		shr	di,1
		rcr	bx,1
		rcr	si,1
		rcr	ax,1
		loop	..@j4542
		mov	cx,ax
		mov	ax,si
		mov	bx,cx
		mov	si,ax
		mov	bx,cx
		mov	si,ax
		mov	cx,0
		mov	ax,0
		add	word [bp-152],bx
		adc	word [bp-150],si
		adc	word [bp-144],cx
		adc	dx,ax
		mov	di,word [bp-104]
		mov	si,word [bp-102]
		mov	ax,word [bp-100]
		mov	bx,word [bp-98]
		mov	cx,32
..@j4545:
		shr	bx,1
		rcr	ax,1
		rcr	si,1
		rcr	di,1
		loop	..@j4545
		mov	cx,di
		mov	ax,si
		mov	bx,cx
		mov	si,ax
		mov	bx,cx
		mov	si,ax
		mov	ax,0
		mov	cx,0
		add	word [bp-152],bx
		adc	word [bp-150],si
		adc	word [bp-144],ax
		adc	dx,cx
		mov	ax,word [bp-152]
		mov	word [bp-112],ax
		mov	ax,word [bp-150]
		mov	word [bp-110],ax
		mov	ax,word [bp-144]
		mov	word [bp-108],ax
		mov	word [bp-106],dx
		mov	dx,word [bp-112]
		mov	si,word [bp-110]
		mov	ax,word [bp-108]
		mov	word [bp-136],ax
		mov	ax,word [bp-106]
		mov	word [bp-138],ax
		mov	cx,32
..@j4550:
		shl	dx,1
		rcl	si,1
		rcl	word [bp-136],1
		rcl	word [bp-138],1
		loop	..@j4550
		mov	ax,word [bp-104]
		mov	di,word [bp-102]
		mov	cx,0
		mov	bx,0
		add	dx,ax
		adc	si,di
		adc	word [bp-136],cx
		adc	word [bp-138],bx
		mov	bx,word [bp+10]
		mov	word [bx],dx
		mov	word [bx+2],si
		mov	ax,word [bp-136]
		mov	word [bx+4],ax
		mov	ax,word [bp-138]
		mov	word [bx+6],ax
		mov	di,word [bp-112]
		mov	si,word [bp-110]
		mov	dx,word [bp-108]
		mov	ax,word [bp-106]
		mov	cx,32
..@j4555:
		shr	ax,1
		rcr	dx,1
		rcr	si,1
		rcr	di,1
		loop	..@j4555
		mov	bx,word [bp+10]
		mov	word [bx+8],di
		mov	word [bx+10],si
		mov	bx,word [bp+8]
		mov	si,word [bp+6]
		mov	dx,word [bx+12]
		mov	ax,word [si+12]
		add	ax,dx
		add	ax,96
		mov	bx,word [bp+10]
		mov	word [bx+12],ax
		cmp	byte [bp+4],0
		jne	..@j4559
		jmp	..@j4560
..@j4559:
		mov	bx,word [bp+10]
		mov	ax,word [bx+8]
		mov	dx,word [bx+10]
		mov	ax,0
		and	dx,-32768
		cmp	dx,0
		jne	..@j4562
		cmp	ax,0
		jne	..@j4562
		jmp	..@j4561
..@j4561:
		mov	si,word [bp+10]
		lea	di,[bp-122]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+10]
		mov	ax,word [bx+8]
		mov	word [bp-126],ax
		mov	ax,word [bx+10]
		mov	word [bp-124],ax
		mov	ax,word [bp+10]
		mov	word [bp-148],ax
		mov	bx,word [bp+10]
		lea	ax,[bx+8]
		mov	word [bp-146],ax
		mov	bx,word [bp-148]
		mov	cx,word [bx]
		mov	bx,word [bp-148]
		mov	si,word [bx+2]
		mov	bx,word [bp-148]
		mov	dx,word [bx+4]
		mov	bx,word [bp-148]
		mov	ax,word [bx+6]
		add	cx,word [bp-122]
		adc	si,word [bp-120]
		adc	dx,word [bp-118]
		adc	ax,word [bp-116]
		mov	word [bp-134],cx
		mov	word [bp-132],si
		mov	word [bp-130],dx
		mov	word [bp-128],ax
		mov	bx,word [bp-146]
		mov	si,word [bx]
		mov	bx,word [bp-146]
		mov	cx,word [bx+2]
		mov	dx,word [bp-126]
		mov	ax,word [bp-124]
		mov	word [bp-166],dx
		mov	bx,ax
		add	word [bp-166],si
		adc	bx,cx
		mov	ax,word [bp-134]
		mov	dx,word [bp-132]
		mov	cx,word [bp-130]
		mov	di,word [bp-128]
		mov	si,word [bp-148]
		cmp	di,word [si+6]
		jb	..@j4576
		ja	..@j4577
		mov	si,word [bp-148]
		cmp	cx,word [si+4]
		jb	..@j4576
		ja	..@j4577
		mov	si,word [bp-148]
		cmp	dx,word [si+2]
		jb	..@j4576
		ja	..@j4577
		mov	si,word [bp-148]
		cmp	ax,word [si]
		jb	..@j4576
		jmp	..@j4577
		jmp	..@j4577
..@j4576:
		mov	dl,1
		jmp	..@j4578
..@j4577:
		mov	dl,0
..@j4578:
		mov	ax,0
		mov	dh,0
		add	dx,word [bp-166]
		adc	ax,bx
		mov	bx,word [bp-146]
		mov	word [bx],dx
		mov	bx,word [bp-146]
		mov	word [bx+2],ax
		mov	di,word [bp-148]
		push	ds
		pop	es
		lea	si,[bp-134]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+10]
		dec	word [bx+12]
..@j4562:
..@j4560:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_mul_dword_to_qword
