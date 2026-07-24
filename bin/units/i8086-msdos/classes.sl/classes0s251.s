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
	GLOBAL CLASSES$_$TLISTENUMERATOR_$__$$_CREATE$TLIST$$TLISTENUMERATOR
CLASSES$_$TLISTENUMERATOR_$__$$_CREATE$TLIST$$TLISTENUMERATOR:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j5649
		jmp	..@j5650
..@j5649:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j5650:
		cmp	word [bp+8],0
		je	..@j5655
		jmp	..@j5656
..@j5655:
		jmp	..@j5647
..@j5656:
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
		jne	..@j5659
		push	word [bp+8]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+2],ax
		mov	bx,word [bp+8]
		mov	word [bx+4],-1
		cmp	word [bp+8],0
		jne	..@j5674
		jmp	..@j5673
..@j5674:
		cmp	word [bp+6],0
		jne	..@j5672
		jmp	..@j5673
..@j5672:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j5673:
..@j5659:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5661
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
		jne	..@j5677
		cmp	word [bp+6],0
		jne	..@j5678
		jmp	..@j5679
..@j5678:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j5679:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j5677:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5684
		call	FPC_RAISE_NESTED
..@j5684:
		call	FPC_DONEEXCEPTION
		jmp	..@j5661
..@j5661:
..@j5647:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
