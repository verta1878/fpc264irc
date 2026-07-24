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
	GLOBAL fpc_val_longint_shortstr
fpc_val_longint_shortstr:
	GLOBAL FPC_VAL_LONGINT_SHORTSTR
FPC_VAL_LONGINT_SHORTSTR:
		push	bp
		mov	bp,sp
		sub	sp,38
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	word [bp-12],0
		mov	word [bp-10],0
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-25]
		push	ax
		call	SYSTEM_$$_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$SMALLINT
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jl	..@j7672
		jmp	..@j7673
..@j7672:
		jmp	..@j7658
..@j7673:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-38],al
		mov	byte [bp-37],0
		mov	si,word [bp-38]
		cmp	byte [bx+si],0
		je	..@j7674
		jmp	..@j7675
..@j7674:
		mov	bx,word [bp+4]
		cmp	word [bx],1
		jg	..@j7678
		jmp	..@j7677
..@j7678:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [si]
		dec	ax
		mov	byte [bp-36],al
		mov	byte [bp-35],0
		mov	si,word [bp-36]
		cmp	byte [bx+si],48
		je	..@j7676
		jmp	..@j7677
..@j7676:
		mov	bx,word [bp+4]
		mov	word [bx],0
..@j7677:
		jmp	..@j7658
..@j7675:
		mov	ax,0
		mov	dl,byte [bp-25]
		mov	dh,0
		push	ax
		push	dx
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_div_dword
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		cmp	byte [bp-25],10
		je	..@j7687
		jmp	..@j7688
..@j7687:
		mov	ax,0
		mov	dl,byte [bp-26]
		mov	dh,0
		add	dx,-1
		adc	ax,32767
		mov	word [bp-24],dx
		mov	word [bp-22],ax
		jmp	..@j7693
..@j7688:
		mov	word [bp-24],-1
		mov	word [bp-22],-1
..@j7693:
		jmp	..@j7697
	ALIGN 2
..@j7696:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-28],al
		mov	byte [bp-27],0
		mov	si,word [bp-28]
		mov	al,byte [bx+si]
		test	al,al
		je	..@j7704
		sub	al,48
		jb	..@j7700
		sub	al,9
		jbe	..@j7701
		sub	al,8
		jb	..@j7700
		sub	al,5
		jbe	..@j7702
		sub	al,27
		jb	..@j7700
		sub	al,5
		jbe	..@j7703
		jmp	..@j7700
..@j7701:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-32],al
		mov	byte [bp-31],0
		mov	si,word [bp-32]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		jmp	..@j7699
..@j7702:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-34],al
		mov	byte [bp-33],0
		mov	si,word [bp-34]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,55
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		jmp	..@j7699
..@j7703:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-30],al
		mov	byte [bp-29],0
		mov	si,word [bp-30]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,87
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		jmp	..@j7699
..@j7704:
		jmp	..@j7698
		jmp	..@j7699
..@j7700:
		mov	word [bp-8],16
		mov	word [bp-6],0
..@j7699:
		mov	ax,word [bp-12]
		mov	word [bp-16],ax
		mov	ax,word [bp-10]
		mov	word [bp-14],ax
		push	word [bp-10]
		push	word [bp-12]
		mov	ax,0
		mov	dl,byte [bp-25]
		mov	dh,0
		push	ax
		push	dx
		mov	ax,0
		push	ax
		call	fpc_mul_dword
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		mov	ax,0
		mov	dl,byte [bp-25]
		mov	dh,0
		cmp	ax,word [bp-6]
		jb	..@j7723
		ja	..@j7726
		cmp	dx,word [bp-8]
		jbe	..@j7723
		jmp	..@j7726
		jmp	..@j7726
..@j7726:
		mov	ax,word [bp-24]
		mov	dx,word [bp-22]
		mov	bx,word [bp-8]
		mov	cx,word [bp-6]
		sub	ax,bx
		sbb	dx,cx
		cmp	dx,word [bp-10]
		jb	..@j7723
		ja	..@j7725
		cmp	ax,word [bp-12]
		jb	..@j7723
		jmp	..@j7725
		jmp	..@j7725
..@j7725:
		mov	dx,word [bp-16]
		mov	ax,word [bp-14]
		cmp	ax,word [bp-18]
		ja	..@j7723
		jb	..@j7724
		cmp	dx,word [bp-20]
		ja	..@j7723
		jmp	..@j7724
		jmp	..@j7724
..@j7723:
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j7658
..@j7724:
		mov	bx,word [bp-12]
		mov	cx,word [bp-10]
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		add	ax,bx
		adc	dx,cx
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		mov	bx,word [bp+4]
		inc	word [bx]
..@j7697:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jge	..@j7696
		jmp	..@j7698
..@j7698:
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		cmp	byte [bp-26],0
		jne	..@j7735
		jmp	..@j7736
..@j7735:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		not	dx
		neg	ax
		sbb	dx,-1
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j7736:
..@j7658:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_mul_dword
EXTERN	fpc_div_dword
EXTERN	SYSTEM_$$_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$SMALLINT
