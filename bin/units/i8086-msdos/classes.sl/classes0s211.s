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
	GLOBAL CLASSES$_$TFPLISTENUMERATOR_$__$$_CREATE$TFPLIST$$TFPLISTENUMERATOR
CLASSES$_$TFPLISTENUMERATOR_$__$$_CREATE$TFPLIST$$TFPLISTENUMERATOR:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j4660
		jmp	..@j4661
..@j4660:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j4661:
		cmp	word [bp+8],0
		je	..@j4666
		jmp	..@j4667
..@j4666:
		jmp	..@j4658
..@j4667:
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
		jne	..@j4670
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
		jne	..@j4685
		jmp	..@j4684
..@j4685:
		cmp	word [bp+6],0
		jne	..@j4683
		jmp	..@j4684
..@j4683:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j4684:
..@j4670:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4672
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
		jne	..@j4688
		cmp	word [bp+6],0
		jne	..@j4689
		jmp	..@j4690
..@j4689:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j4690:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j4688:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4695
		call	FPC_RAISE_NESTED
..@j4695:
		call	FPC_DONEEXCEPTION
		jmp	..@j4672
..@j4672:
..@j4658:
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
