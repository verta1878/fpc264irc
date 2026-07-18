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
	GLOBAL fpc_mul_int64
fpc_mul_int64:
	GLOBAL FPC_MUL_INT64
FPC_MUL_INT64:
		push	bp
		mov	bp,sp
		sub	sp,34
		mov	ax,word [bp+4]
		or	ax,word [bp+6]
		je	..@j8458
		jmp	..@j8459
..@j8458:
		push	word [bp+22]
		push	word [bp+20]
		push	word [bp+18]
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_qword
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j8468
..@j8459:
		mov	byte [bp-9],0
		mov	ax,word [bp+16]
		mov	dx,word [bp+18]
		mov	cx,word [bp+20]
		mov	bx,word [bp+22]
		cmp	bx,0
		jl	..@j8471
		jg	..@j8472
		cmp	cx,0
		jb	..@j8471
		ja	..@j8472
		cmp	dx,0
		jb	..@j8471
		ja	..@j8472
		cmp	ax,0
		jb	..@j8471
		jmp	..@j8472
..@j8471:
		cmp	byte [bp-9],0
		mov	al,0
		jne	..@j8475
		inc	ax
..@j8475:
		mov	byte [bp-9],al
		mov	bx,word [bp+16]
		mov	ax,word [bp+18]
		mov	dx,word [bp+20]
		mov	cx,word [bp+22]
		not	dx
		not	cx
		not	ax
		neg	bx
		sbb	ax,-1
		sbb	dx,-1
		sbb	cx,-1
		mov	word [bp-18],bx
		mov	word [bp-16],ax
		mov	word [bp-14],dx
		mov	word [bp-12],cx
		jmp	..@j8478
..@j8472:
		lea	di,[bp-18]
		push	ss
		pop	es
		lea	si,[bp+16]
		cld
		mov	cx,4
		rep
		movsw
..@j8478:
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		mov	cx,word [bp+12]
		mov	bx,word [bp+14]
		cmp	bx,0
		jl	..@j8481
		jg	..@j8482
		cmp	cx,0
		jb	..@j8481
		ja	..@j8482
		cmp	dx,0
		jb	..@j8481
		ja	..@j8482
		cmp	ax,0
		jb	..@j8481
		jmp	..@j8482
..@j8481:
		cmp	byte [bp-9],0
		mov	al,0
		jne	..@j8485
		inc	ax
..@j8485:
		mov	byte [bp-9],al
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		mov	cx,word [bp+12]
		mov	bx,word [bp+14]
		not	cx
		not	bx
		not	dx
		neg	ax
		sbb	dx,-1
		sbb	cx,-1
		sbb	bx,-1
		mov	word [bp-26],ax
		mov	word [bp-24],dx
		mov	word [bp-22],cx
		mov	word [bp-20],bx
		jmp	..@j8488
..@j8482:
		lea	di,[bp-26]
		push	ss
		pop	es
		lea	si,[bp+8]
		cld
		mov	cx,4
		rep
		movsw
..@j8488:
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-18]
		push	word [bp-20]
		push	word [bp-22]
		push	word [bp-24]
		push	word [bp-26]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_qword
		mov	word [bp-34],dx
		mov	word [bp-32],cx
		mov	word [bp-30],bx
		mov	word [bp-28],ax
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		mov	cx,word [bp-14]
		mov	bx,word [bp-12]
		cmp	bx,0
		jne	..@j8502
		cmp	cx,0
		jne	..@j8502
		cmp	dx,0
		jne	..@j8502
		cmp	ax,0
		jne	..@j8502
		jmp	..@j8500
..@j8502:
		mov	ax,word [bp-26]
		mov	dx,word [bp-24]
		mov	cx,word [bp-22]
		mov	bx,word [bp-20]
		cmp	bx,0
		jne	..@j8501
		cmp	cx,0
		jne	..@j8501
		cmp	dx,0
		jne	..@j8501
		cmp	ax,0
		jne	..@j8501
		jmp	..@j8500
..@j8501:
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		mov	cx,word [bp-14]
		mov	bx,word [bp-12]
		cmp	bx,word [bp-28]
		ja	..@j8499
		jb	..@j8504
		cmp	cx,word [bp-30]
		ja	..@j8499
		jb	..@j8504
		cmp	dx,word [bp-32]
		ja	..@j8499
		jb	..@j8504
		cmp	ax,word [bp-34]
		ja	..@j8499
		jmp	..@j8504
		jmp	..@j8504
..@j8504:
		mov	ax,word [bp-26]
		mov	dx,word [bp-24]
		mov	cx,word [bp-22]
		mov	bx,word [bp-20]
		cmp	bx,word [bp-28]
		ja	..@j8499
		jb	..@j8503
		cmp	cx,word [bp-30]
		ja	..@j8499
		jb	..@j8503
		cmp	dx,word [bp-32]
		ja	..@j8499
		jb	..@j8503
		cmp	ax,word [bp-34]
		ja	..@j8499
		jmp	..@j8503
		jmp	..@j8503
..@j8503:
		mov	bx,word [bp-34]
		mov	si,word [bp-32]
		mov	ax,word [bp-30]
		mov	dx,word [bp-28]
		mov	cx,63
..@j8507:
		shr	dx,1
		rcr	ax,1
		rcr	si,1
		rcr	bx,1
		loop	..@j8507
		cmp	dx,0
		jne	..@j8505
		cmp	ax,0
		jne	..@j8505
		cmp	si,0
		jne	..@j8505
		cmp	bx,0
		jne	..@j8505
		jmp	..@j8500
..@j8505:
		mov	ax,word [bp-34]
		mov	dx,word [bp-32]
		mov	cx,word [bp-30]
		mov	bx,word [bp-28]
		cmp	bx,-32768
		jne	..@j8499
		cmp	cx,0
		jne	..@j8499
		cmp	dx,0
		jne	..@j8499
		cmp	ax,0
		jne	..@j8499
		jmp	..@j8509
..@j8509:
		cmp	byte [bp-9],0
		je	..@j8499
		jmp	..@j8500
..@j8499:
		mov	ax,0
		push	ax
		mov	ax,215
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j8500:
		cmp	byte [bp-9],0
		jne	..@j8516
		jmp	..@j8517
..@j8516:
		mov	ax,word [bp-34]
		mov	dx,word [bp-32]
		mov	cx,word [bp-30]
		mov	bx,word [bp-28]
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
		jmp	..@j8520
..@j8517:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-34]
		cld
		mov	cx,4
		rep
		movsw
..@j8520:
..@j8468:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	20
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
EXTERN	fpc_mul_qword
