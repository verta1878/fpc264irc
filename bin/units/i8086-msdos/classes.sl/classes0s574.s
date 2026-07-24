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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_CREATE$TCOMPONENT$$TCOMPONENT
CLASSES$_$TCOMPONENT_$__$$_CREATE$TCOMPONENT$$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j12541
		jmp	..@j12542
..@j12541:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j12542:
		cmp	word [bp+8],0
		je	..@j12547
		jmp	..@j12548
..@j12547:
		jmp	..@j12539
..@j12548:
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
		jne	..@j12551
		mov	bx,word [bp+8]
		mov	byte [bx+24],1
		cmp	word [bp+4],0
		jne	..@j12558
		jmp	..@j12559
..@j12558:
		push	word [bp+4]
		push	word [bp+8]
		call	CLASSES$_$TCOMPONENT_$__$$_INSERTCOMPONENT$TCOMPONENT
..@j12559:
		cmp	word [bp+8],0
		jne	..@j12566
		jmp	..@j12565
..@j12566:
		cmp	word [bp+6],0
		jne	..@j12564
		jmp	..@j12565
..@j12564:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j12565:
..@j12551:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j12553
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
		jne	..@j12569
		cmp	word [bp+6],0
		jne	..@j12570
		jmp	..@j12571
..@j12570:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j12571:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j12569:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j12576
		call	FPC_RAISE_NESTED
..@j12576:
		call	FPC_DONEEXCEPTION
		jmp	..@j12553
..@j12553:
..@j12539:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TCOMPONENT_$__$$_INSERTCOMPONENT$TCOMPONENT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
