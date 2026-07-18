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
	GLOBAL CLASSES$_$TINTCONST_$__$$_CREATE$PTYPEINFO$TIDENTTOINT$TINTTOIDENT$$TINTCONST
CLASSES$_$TINTCONST_$__$$_CREATE$PTYPEINFO$TIDENTTOINT$TINTTOIDENT$$TINTCONST:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+10],1
		je	..@j14612
		jmp	..@j14613
..@j14612:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+12],ax
..@j14613:
		cmp	word [bp+12],0
		je	..@j14618
		jmp	..@j14619
..@j14618:
		jmp	..@j14610
..@j14619:
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j14622
		mov	bx,word [bp+12]
		mov	ax,word [bp+8]
		mov	word [bx+2],ax
		mov	bx,word [bp+12]
		mov	ax,word [bp+6]
		mov	word [bx+4],ax
		mov	bx,word [bp+12]
		mov	ax,word [bp+4]
		mov	word [bx+6],ax
		cmp	word [bp+12],0
		jne	..@j14635
		jmp	..@j14634
..@j14635:
		cmp	word [bp+10],0
		jne	..@j14633
		jmp	..@j14634
..@j14633:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j14634:
..@j14622:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14624
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j14638
		cmp	word [bp+10],0
		jne	..@j14639
		jmp	..@j14640
..@j14639:
		push	word [bp+12]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j14640:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j14638:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14645
		call	FPC_RAISE_NESTED
..@j14645:
		call	FPC_DONEEXCEPTION
		jmp	..@j14624
..@j14624:
..@j14610:
		mov	ax,word [bp+12]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
