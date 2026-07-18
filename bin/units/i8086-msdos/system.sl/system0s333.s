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
	GLOBAL fpc_val_qword_shortstr
fpc_val_qword_shortstr:
	GLOBAL FPC_VAL_QWORD_SHORTSTR
FPC_VAL_QWORD_SHORTSTR:
		push	bp
		mov	bp,sp
		sub	sp,28
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-11]
		push	ax
		call	SYSTEM_$$_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$SMALLINT
		mov	bx,word [bp+4]
		mov	word [bx],ax
		cmp	byte [bp-12],0
		jne	..@j7612
		jmp	..@j7614
..@j7614:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jl	..@j7612
		jmp	..@j7613
..@j7612:
		jmp	..@j7600
..@j7613:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-24],al
		mov	byte [bp-23],0
		mov	si,word [bp-24]
		cmp	byte [bx+si],0
		je	..@j7615
		jmp	..@j7616
..@j7615:
		mov	bx,word [bp+4]
		cmp	word [bx],1
		jg	..@j7619
		jmp	..@j7618
..@j7619:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [si]
		dec	ax
		mov	byte [bp-22],al
		mov	byte [bp-21],0
		mov	si,word [bp-22]
		cmp	byte [bx+si],48
		je	..@j7617
		jmp	..@j7618
..@j7617:
		mov	bx,word [bp+4]
		mov	word [bx],0
..@j7618:
		jmp	..@j7600
..@j7616:
		jmp	..@j7623
	ALIGN 2
..@j7622:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-14],al
		mov	byte [bp-13],0
		mov	si,word [bp-14]
		mov	al,byte [bx+si]
		test	al,al
		je	..@j7630
		sub	al,48
		jb	..@j7626
		sub	al,9
		jbe	..@j7627
		sub	al,8
		jb	..@j7626
		sub	al,5
		jbe	..@j7628
		sub	al,27
		jb	..@j7626
		sub	al,5
		jbe	..@j7629
		jmp	..@j7626
..@j7627:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-18],al
		mov	byte [bp-17],0
		mov	si,word [bp-18]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		mov	word [bp-10],ax
		jmp	..@j7625
..@j7628:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-20],al
		mov	byte [bp-19],0
		mov	si,word [bp-20]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,55
		mov	word [bp-10],ax
		jmp	..@j7625
..@j7629:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-16],al
		mov	byte [bp-15],0
		mov	si,word [bp-16]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,87
		mov	word [bp-10],ax
		jmp	..@j7625
..@j7630:
		jmp	..@j7624
		jmp	..@j7625
..@j7626:
		mov	word [bp-10],16
..@j7625:
		mov	al,byte [bp-11]
		mov	ah,0
		cmp	ax,word [bp-10]
		jbe	..@j7639
		jmp	..@j7641
..@j7641:
		mov	ax,0
		mov	cl,byte [bp-11]
		mov	ch,0
		mov	bx,0
		mov	dx,0
		push	dx
		push	bx
		push	ax
		push	cx
		mov	bx,word [bp-10]
		mov	si,0
		mov	ax,0
		mov	di,0
		mov	dx,-1
		mov	cx,-1
		sub	dx,bx
		sbb	cx,si
		mov	bx,dx
		mov	si,cx
		mov	dx,-1
		mov	cx,-1
		sbb	dx,ax
		sbb	cx,di
		mov	ax,dx
		mov	di,cx
		push	di
		push	ax
		push	si
		push	bx
		call	fpc_div_qword
		cmp	ax,word [bp-2]
		jb	..@j7639
		ja	..@j7640
		cmp	bx,word [bp-4]
		jb	..@j7639
		ja	..@j7640
		cmp	cx,word [bp-6]
		jb	..@j7639
		ja	..@j7640
		cmp	dx,word [bp-8]
		jb	..@j7639
		jmp	..@j7640
		jmp	..@j7640
..@j7639:
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j7600
..@j7640:
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		mov	dx,0
		mov	cl,byte [bp-11]
		mov	ch,0
		mov	bx,0
		mov	ax,0
		push	ax
		push	bx
		push	dx
		push	cx
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_qword
		mov	word [bp-28],dx
		mov	word [bp-26],cx
		mov	di,word [bp-10]
		mov	cx,0
		mov	si,0
		mov	dx,0
		add	word [bp-28],di
		adc	word [bp-26],cx
		adc	bx,si
		adc	ax,dx
		mov	dx,word [bp-28]
		mov	word [bp-8],dx
		mov	dx,word [bp-26]
		mov	word [bp-6],dx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		inc	word [bx]
..@j7623:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jge	..@j7622
		jmp	..@j7624
..@j7624:
		mov	bx,word [bp+4]
		mov	word [bx],0
..@j7600:
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
