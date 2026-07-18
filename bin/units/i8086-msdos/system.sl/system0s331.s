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
	GLOBAL fpc_val_uint_shortstr
fpc_val_uint_shortstr:
	GLOBAL FPC_VAL_UINT_SHORTSTR
FPC_VAL_UINT_SHORTSTR:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-2],0
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-5]
		push	ax
		lea	ax,[bp-3]
		push	ax
		call	SYSTEM_$$_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$SMALLINT
		mov	bx,word [bp+4]
		mov	word [bx],ax
		cmp	byte [bp-5],0
		jne	..@j7483
		jmp	..@j7485
..@j7485:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jl	..@j7483
		jmp	..@j7484
..@j7483:
		jmp	..@j7471
..@j7484:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-18],al
		mov	byte [bp-17],0
		mov	si,word [bp-18]
		cmp	byte [bx+si],0
		je	..@j7486
		jmp	..@j7487
..@j7486:
		mov	bx,word [bp+4]
		cmp	word [bx],1
		jg	..@j7490
		jmp	..@j7489
..@j7490:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [si]
		dec	ax
		mov	byte [bp-16],al
		mov	byte [bp-15],0
		mov	si,word [bp-16]
		cmp	byte [bx+si],48
		je	..@j7488
		jmp	..@j7489
..@j7488:
		mov	bx,word [bp+4]
		mov	word [bx],0
..@j7489:
		jmp	..@j7471
..@j7487:
		jmp	..@j7494
	ALIGN 2
..@j7493:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-8],al
		mov	byte [bp-7],0
		mov	si,word [bp-8]
		mov	al,byte [bx+si]
		test	al,al
		je	..@j7501
		sub	al,48
		jb	..@j7497
		sub	al,9
		jbe	..@j7498
		sub	al,8
		jb	..@j7497
		sub	al,5
		jbe	..@j7499
		sub	al,27
		jb	..@j7497
		sub	al,5
		jbe	..@j7500
		jmp	..@j7497
..@j7498:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-12],al
		mov	byte [bp-11],0
		mov	si,word [bp-12]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		mov	byte [bp-4],al
		jmp	..@j7496
..@j7499:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-14],al
		mov	byte [bp-13],0
		mov	si,word [bp-14]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,55
		mov	byte [bp-4],al
		jmp	..@j7496
..@j7500:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-10],al
		mov	byte [bp-9],0
		mov	si,word [bp-10]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,87
		mov	byte [bp-4],al
		jmp	..@j7496
..@j7501:
		jmp	..@j7495
		jmp	..@j7496
..@j7497:
		mov	byte [bp-4],16
..@j7496:
		mov	al,byte [bp-4]
		cmp	al,byte [bp-3]
		jae	..@j7510
		jmp	..@j7512
..@j7512:
		mov	cx,0
		mov	dl,byte [bp-4]
		mov	dh,0
		mov	ax,-1
		mov	bx,0
		sub	ax,dx
		sbb	bx,cx
		mov	cl,byte [bp-3]
		mov	ch,0
		xor	dx,dx
		div	cx
		cmp	ax,word [bp-2]
		jb	..@j7510
		jmp	..@j7511
..@j7510:
		mov	word [bp-2],0
		jmp	..@j7471
..@j7511:
		mov	dl,byte [bp-3]
		mov	dh,0
		mov	ax,word [bp-2]
		mul	dx
		mov	dl,byte [bp-4]
		mov	dh,0
		add	dx,ax
		mov	word [bp-2],dx
		mov	bx,word [bp+4]
		inc	word [bx]
..@j7494:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jge	..@j7493
		jmp	..@j7495
..@j7495:
		mov	bx,word [bp+4]
		mov	word [bx],0
..@j7471:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$SMALLINT
