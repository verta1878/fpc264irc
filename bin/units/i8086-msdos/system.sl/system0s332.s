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
	GLOBAL fpc_val_int64_shortstr
fpc_val_int64_shortstr:
	GLOBAL FPC_VAL_INT64_SHORTSTR
FPC_VAL_INT64_SHORTSTR:
		push	bp
		mov	bp,sp
		sub	sp,56
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	word [bp-18],0
		mov	word [bp-16],0
		mov	word [bp-14],0
		mov	word [bp-12],0
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-44]
		push	ax
		lea	ax,[bp-43]
		push	ax
		call	SYSTEM_$$_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$SMALLINT
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jl	..@j7533
		jmp	..@j7534
..@j7533:
		jmp	..@j7519
..@j7534:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-56],al
		mov	byte [bp-55],0
		mov	si,word [bp-56]
		cmp	byte [bx+si],0
		je	..@j7535
		jmp	..@j7536
..@j7535:
		mov	bx,word [bp+4]
		cmp	word [bx],1
		jg	..@j7539
		jmp	..@j7538
..@j7539:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [si]
		dec	ax
		mov	byte [bp-54],al
		mov	byte [bp-53],0
		mov	si,word [bp-54]
		cmp	byte [bx+si],48
		je	..@j7537
		jmp	..@j7538
..@j7537:
		mov	bx,word [bp+4]
		mov	word [bx],0
..@j7538:
		jmp	..@j7519
..@j7536:
		mov	ax,0
		mov	dl,byte [bp-43]
		mov	dh,0
		mov	cx,0
		mov	bx,0
		push	bx
		push	cx
		push	ax
		push	dx
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_div_qword
		mov	word [bp-34],dx
		mov	word [bp-32],cx
		mov	word [bp-30],bx
		mov	word [bp-28],ax
		cmp	byte [bp-43],10
		je	..@j7548
		jmp	..@j7549
..@j7548:
		mov	cx,0
		mov	dl,byte [bp-44]
		mov	dh,0
		mov	bx,0
		mov	ax,0
		add	dx,-1
		adc	cx,-1
		adc	bx,-1
		adc	ax,32767
		mov	word [bp-42],dx
		mov	word [bp-40],cx
		mov	word [bp-38],bx
		mov	word [bp-36],ax
		jmp	..@j7554
..@j7549:
		mov	word [bp-42],-1
		mov	word [bp-40],-1
		mov	word [bp-38],-1
		mov	word [bp-36],-1
..@j7554:
		jmp	..@j7558
	ALIGN 2
..@j7557:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-46],al
		mov	byte [bp-45],0
		mov	si,word [bp-46]
		mov	al,byte [bx+si]
		test	al,al
		je	..@j7565
		sub	al,48
		jb	..@j7561
		sub	al,9
		jbe	..@j7562
		sub	al,8
		jb	..@j7561
		sub	al,5
		jbe	..@j7563
		sub	al,27
		jb	..@j7561
		sub	al,5
		jbe	..@j7564
		jmp	..@j7561
..@j7562:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-52],al
		mov	byte [bp-51],0
		mov	si,word [bp-52]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		mov	word [bp-10],ax
		jmp	..@j7560
..@j7563:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-48],al
		mov	byte [bp-47],0
		mov	si,word [bp-48]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,55
		mov	word [bp-10],ax
		jmp	..@j7560
..@j7564:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-50],al
		mov	byte [bp-49],0
		mov	si,word [bp-50]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,87
		mov	word [bp-10],ax
		jmp	..@j7560
..@j7565:
		jmp	..@j7559
		jmp	..@j7560
..@j7561:
		mov	word [bp-10],16
..@j7560:
		lea	di,[bp-26]
		push	ss
		pop	es
		lea	si,[bp-18]
		cld
		mov	cx,4
		rep
		movsw
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-18]
		mov	bx,0
		mov	cl,byte [bp-43]
		mov	ch,0
		mov	ax,0
		mov	dx,0
		push	dx
		push	ax
		push	bx
		push	cx
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_qword
		mov	word [bp-18],dx
		mov	word [bp-16],cx
		mov	word [bp-14],bx
		mov	word [bp-12],ax
		mov	al,byte [bp-43]
		mov	ah,0
		cmp	ax,word [bp-10]
		jbe	..@j7584
		jmp	..@j7587
..@j7587:
		mov	cx,word [bp-10]
		mov	ax,0
		mov	bx,0
		mov	si,0
		mov	dx,word [bp-42]
		mov	di,word [bp-40]
		sub	dx,cx
		sbb	di,ax
		mov	cx,dx
		mov	ax,di
		mov	dx,word [bp-38]
		mov	di,word [bp-36]
		sbb	dx,bx
		sbb	di,si
		mov	bx,dx
		mov	si,di
		cmp	si,word [bp-12]
		jb	..@j7584
		ja	..@j7586
		cmp	bx,word [bp-14]
		jb	..@j7584
		ja	..@j7586
		cmp	ax,word [bp-16]
		jb	..@j7584
		ja	..@j7586
		cmp	cx,word [bp-18]
		jb	..@j7584
		jmp	..@j7586
		jmp	..@j7586
..@j7586:
		mov	bx,word [bp-26]
		mov	cx,word [bp-24]
		mov	dx,word [bp-22]
		mov	ax,word [bp-20]
		cmp	ax,word [bp-28]
		ja	..@j7584
		jb	..@j7585
		cmp	dx,word [bp-30]
		ja	..@j7584
		jb	..@j7585
		cmp	cx,word [bp-32]
		ja	..@j7584
		jb	..@j7585
		cmp	bx,word [bp-34]
		ja	..@j7584
		jmp	..@j7585
		jmp	..@j7585
..@j7584:
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j7519
..@j7585:
		mov	bx,word [bp-10]
		mov	cx,0
		mov	dx,0
		mov	ax,0
		add	bx,word [bp-18]
		adc	cx,word [bp-16]
		adc	dx,word [bp-14]
		adc	ax,word [bp-12]
		mov	word [bp-18],bx
		mov	word [bp-16],cx
		mov	word [bp-14],dx
		mov	word [bp-12],ax
		mov	bx,word [bp+4]
		inc	word [bx]
..@j7558:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jge	..@j7557
		jmp	..@j7559
..@j7559:
		mov	bx,word [bp+4]
		mov	word [bx],0
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-18]
		cld
		mov	cx,4
		rep
		movsw
		cmp	byte [bp-44],0
		jne	..@j7596
		jmp	..@j7597
..@j7596:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	cx,word [bp-4]
		mov	bx,word [bp-2]
		not	cx
		not	bx
		not	dx
		neg	ax
		sbb	dx,-1
		sbb	cx,-1
		sbb	bx,-1
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	word [bp-4],cx
		mov	word [bp-2],bx
..@j7597:
..@j7519:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_mul_qword
EXTERN	fpc_div_qword
EXTERN	SYSTEM_$$_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$SMALLINT
