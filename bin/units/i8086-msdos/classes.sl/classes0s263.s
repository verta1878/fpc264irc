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
	GLOBAL CLASSES$_$TLIST_$__$$_CREATE$$TLIST
CLASSES$_$TLIST_$__$$_CREATE$$TLIST:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+4],1
		je	..@j5826
		jmp	..@j5827
..@j5826:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+6],ax
..@j5827:
		cmp	word [bp+6],0
		je	..@j5832
		jmp	..@j5833
..@j5832:
		jmp	..@j5824
..@j5833:
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
		jne	..@j5836
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	ax,word VMT_$CLASSES_$$_TFPLIST
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+6]
		mov	word [bx+2],ax
		cmp	word [bp+6],0
		jne	..@j5853
		jmp	..@j5852
..@j5853:
		cmp	word [bp+4],0
		jne	..@j5851
		jmp	..@j5852
..@j5851:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j5852:
..@j5836:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5838
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
		jne	..@j5856
		cmp	word [bp+4],0
		jne	..@j5857
		jmp	..@j5858
..@j5857:
		push	word [bp+6]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j5858:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j5856:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5863
		call	FPC_RAISE_NESTED
..@j5863:
		call	FPC_DONEEXCEPTION
		jmp	..@j5838
..@j5838:
..@j5824:
		mov	ax,word [bp+6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	VMT_$CLASSES_$$_TFPLIST
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
