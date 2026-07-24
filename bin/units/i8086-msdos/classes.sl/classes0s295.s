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
	GLOBAL CLASSES$_$TTHREADLIST_$__$$_CREATE$$TTHREADLIST
CLASSES$_$TTHREADLIST_$__$$_CREATE$$TTHREADLIST:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+4],1
		je	..@j6617
		jmp	..@j6618
..@j6617:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+6],ax
..@j6618:
		cmp	word [bp+6],0
		je	..@j6623
		jmp	..@j6624
..@j6623:
		jmp	..@j6615
..@j6624:
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
		jne	..@j6627
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+6]
		lea	ax,[bx+4]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	bx,word [bp+6]
		lea	ax,[bx+6]
		push	ax
		call	SYSTEM_$$_INITCRITICALSECTION$TRTLCRITICALSECTION
		mov	ax,word VMT_$CLASSES_$$_TLIST
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TLIST_$__$$_CREATE$$TLIST
		mov	bx,word [bp+6]
		mov	word [bx+2],ax
		cmp	word [bp+6],0
		jne	..@j6652
		jmp	..@j6651
..@j6652:
		cmp	word [bp+4],0
		jne	..@j6650
		jmp	..@j6651
..@j6650:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j6651:
..@j6627:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j6629
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
		jne	..@j6655
		cmp	word [bp+4],0
		jne	..@j6656
		jmp	..@j6657
..@j6656:
		push	word [bp+6]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j6657:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j6655:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j6662
		call	FPC_RAISE_NESTED
..@j6662:
		call	FPC_DONEEXCEPTION
		jmp	..@j6629
..@j6629:
..@j6615:
		mov	ax,word [bp+6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TLIST_$__$$_CREATE$$TLIST
EXTERN	VMT_$CLASSES_$$_TLIST
EXTERN	SYSTEM_$$_INITCRITICALSECTION$TRTLCRITICALSECTION
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
