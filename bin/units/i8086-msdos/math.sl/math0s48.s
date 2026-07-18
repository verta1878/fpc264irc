BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL MATH_$$_INTPOWER$EXTENDED$SMALLINT$$EXTENDED
MATH_$$_INTPOWER$EXTENDED$SMALLINT$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,16
		wait fldz
		wait fld	tword [bp+6]
		wait fcompp
		fstsw	[bp-16]
		mov	ah,byte [bp-15]
		sahf
		jp	..@j498
		je	..@j497
..@j498:
		jmp	..@j496
..@j497:
		cmp	word [bp+4],0
		je	..@j495
		jmp	..@j496
..@j495:
		wait fld1
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j501
..@j496:
		mov	ax,word [bp+4]
		cwd
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		mov	cx,bx
		mov	di,si
		xor	cx,ax
		xor	di,dx
		sub	cx,bx
		sbb	di,si
		mov	word [bp-14],cx
		mov	word [bp-12],di
		wait fld1
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j507
	ALIGN 2
..@j506:
		jmp	..@j510
	ALIGN 2
..@j509:
		mov	ax,word [bp-14]
		mov	dx,word [bp-12]
		shr	dx,1
		rcr	ax,1
		mov	word [bp-14],ax
		mov	word [bp-12],dx
		wait fld	tword [bp+6]
		wait fmul	st0,st0
		wait fstp	tword [bp+6]
		DB	09bh
..@j510:
		mov	ax,word [bp-14]
		mov	dx,word [bp-12]
		and	ax,1
		mov	dx,0
		cmp	dx,0
		jne	..@j511
		cmp	ax,0
		jne	..@j511
		jmp	..@j509
..@j511:
		mov	ax,word [bp-14]
		mov	dx,word [bp-12]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-14],ax
		mov	word [bp-12],dx
		wait fld	tword [bp+6]
		wait fld	tword [bp-10]
		wait fmulp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
..@j507:
		mov	dx,word [bp-14]
		mov	ax,word [bp-12]
		cmp	ax,0
		jg	..@j506
		jl	..@j508
		cmp	dx,0
		ja	..@j506
		jmp	..@j508
..@j508:
		cmp	word [bp+4],0
		jl	..@j520
		jmp	..@j521
..@j520:
		wait fld1
		wait fld	tword [bp-10]
		wait fdivp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
..@j521:
..@j501:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	12
