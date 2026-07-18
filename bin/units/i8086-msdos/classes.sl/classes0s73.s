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
	GLOBAL CLASSES$_$TFILESTREAM_$__$$_CREATE$ANSISTRING$WORD$$TFILESTREAM
CLASSES$_$TFILESTREAM_$__$$_CREATE$ANSISTRING$WORD$$TFILESTREAM:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+8],1
		je	..@j1563
		jmp	..@j1564
..@j1563:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+10],ax
..@j1564:
		cmp	word [bp+10],0
		je	..@j1569
		jmp	..@j1570
..@j1569:
		jmp	..@j1561
..@j1570:
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
		jne	..@j1573
		push	word [bp+10]
		mov	ax,0
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,438
		push	ax
		call	CLASSES$_$TFILESTREAM_$__$$_CREATE$ANSISTRING$WORD$LONGWORD$$TFILESTREAM
		cmp	word [bp+10],0
		jne	..@j1590
		jmp	..@j1589
..@j1590:
		cmp	word [bp+8],0
		jne	..@j1588
		jmp	..@j1589
..@j1588:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j1589:
..@j1573:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1575
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
		jne	..@j1593
		cmp	word [bp+8],0
		jne	..@j1594
		jmp	..@j1595
..@j1594:
		push	word [bp+10]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j1595:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j1593:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1600
		call	FPC_RAISE_NESTED
..@j1600:
		call	FPC_DONEEXCEPTION
		jmp	..@j1575
..@j1575:
..@j1561:
		mov	ax,word [bp+10]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TFILESTREAM_$__$$_CREATE$ANSISTRING$WORD$LONGWORD$$TFILESTREAM
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
