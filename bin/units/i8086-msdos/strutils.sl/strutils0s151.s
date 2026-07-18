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
	GLOBAL STRUTILS_$$_REMOVEPADCHARS$ANSISTRING$TSYSCHARSET
STRUTILS_$$_REMOVEPADCHARS$ANSISTRING$TSYSCHARSET:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j4570
		mov	bx,word [bx-2]
..@j4570:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jg	..@j4571
		jl	..@j4572
		cmp	ax,0
		ja	..@j4571
		jmp	..@j4572
..@j4571:
		mov	ax,word [bp-4]
		mov	word [bp-8],ax
		mov	ax,word [bp-2]
		mov	word [bp-6],ax
		jmp	..@j4576
	ALIGN 2
..@j4575:
		sub	word [bp-8],1
		sbb	word [bp-6],0
..@j4576:
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,0
		jg	..@j4578
		jl	..@j4577
		cmp	dx,0
		ja	..@j4578
		jmp	..@j4577
..@j4578:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	si,word [bp-8]
		mov	ax,word [bp+4]
		mov	word [bp-16],ax
		mov	al,byte [bx+si-1]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j4579
		test	al,0
		jmp	..@j4580
..@j4579:
		mov	ax,1
		shl	ax,cl
		mov	bx,word [bp-16]
		test	word [bx+si],ax
..@j4580:
		jne	..@j4575
		jmp	..@j4577
..@j4577:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		cmp	dx,0
		jne	..@j4582
		cmp	ax,0
		jne	..@j4582
		jmp	..@j4581
..@j4581:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j4566
..@j4582:
		mov	word [bp-12],1
		mov	word [bp-10],0
		jmp	..@j4590
	ALIGN 2
..@j4589:
		add	word [bp-12],1
		adc	word [bp-10],0
..@j4590:
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		cmp	dx,word [bp-2]
		jl	..@j4592
		jg	..@j4591
		cmp	ax,word [bp-4]
		jbe	..@j4592
		jmp	..@j4591
		jmp	..@j4591
..@j4592:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	si,word [bp-12]
		mov	ax,word [bp+4]
		mov	word [bp-14],ax
		mov	al,byte [bx+si-1]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j4593
		test	al,0
		jmp	..@j4594
..@j4593:
		mov	ax,1
		shl	ax,cl
		mov	bx,word [bp-14]
		test	word [bx+si],ax
..@j4594:
		jne	..@j4589
		jmp	..@j4591
..@j4591:
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		cmp	dx,0
		jg	..@j4595
		jl	..@j4596
		cmp	ax,1
		ja	..@j4595
		jmp	..@j4596
..@j4595:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	si,word [bp-12]
		lea	ax,[bx+si-1]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		call	fpc_ansistr_unique
		push	ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	cx,word [bp-12]
		mov	bx,word [bp-10]
		sub	ax,cx
		sbb	dx,bx
		add	ax,1
		adc	dx,0
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	cx,word [bp-12]
		mov	bx,word [bp-10]
		sub	ax,cx
		sbb	dx,bx
		add	ax,1
		adc	dx,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		jmp	..@j4611
..@j4596:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-8]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
..@j4611:
..@j4572:
..@j4566:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_setlength
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_assign
