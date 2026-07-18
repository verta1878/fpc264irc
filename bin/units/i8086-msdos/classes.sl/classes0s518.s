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
	GLOBAL CLASSES$_$TREFERENCENAMESVISITOR_$__$$_CREATE$TCOMPONENT$TSTRINGS$$TREFERENCENAMESVISITOR
CLASSES$_$TREFERENCENAMESVISITOR_$__$$_CREATE$TCOMPONENT$TSTRINGS$$TREFERENCENAMESVISITOR:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+8],1
		je	..@j11518
		jmp	..@j11519
..@j11518:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+10],ax
..@j11519:
		cmp	word [bp+10],0
		je	..@j11524
		jmp	..@j11525
..@j11524:
		jmp	..@j11516
..@j11525:
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
		jne	..@j11528
		mov	bx,word [bp+10]
		mov	ax,word [bp+6]
		mov	word [bx+4],ax
		mov	bx,word [bp+10]
		mov	ax,word [bp+4]
		mov	word [bx+2],ax
		cmp	word [bp+10],0
		jne	..@j11539
		jmp	..@j11538
..@j11539:
		cmp	word [bp+8],0
		jne	..@j11537
		jmp	..@j11538
..@j11537:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j11538:
..@j11528:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j11530
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
		jne	..@j11542
		cmp	word [bp+8],0
		jne	..@j11543
		jmp	..@j11544
..@j11543:
		push	word [bp+10]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j11544:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j11542:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j11549
		call	FPC_RAISE_NESTED
..@j11549:
		call	FPC_DONEEXCEPTION
		jmp	..@j11530
..@j11530:
..@j11516:
		mov	ax,word [bp+10]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
