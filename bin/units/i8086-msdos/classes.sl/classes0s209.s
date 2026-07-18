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
	GLOBAL CLASSES$_$TOWNEDCOLLECTION_$__$$_CREATE$TPERSISTENT$TCOLLECTIONITEMCLASS$$TOWNEDCOLLECTION
CLASSES$_$TOWNEDCOLLECTION_$__$$_CREATE$TPERSISTENT$TCOLLECTIONITEMCLASS$$TOWNEDCOLLECTION:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+8],1
		je	..@j4618
		jmp	..@j4619
..@j4618:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+10],ax
..@j4619:
		cmp	word [bp+10],0
		je	..@j4624
		jmp	..@j4625
..@j4624:
		jmp	..@j4616
..@j4625:
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
		jne	..@j4628
		mov	bx,word [bp+10]
		mov	ax,word [bp+6]
		mov	word [bx+16],ax
		push	word [bp+10]
		mov	ax,0
		push	ax
		push	word [bp+4]
		call	CLASSES$_$TCOLLECTION_$__$$_CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION
		cmp	word [bp+10],0
		jne	..@j4643
		jmp	..@j4642
..@j4643:
		cmp	word [bp+8],0
		jne	..@j4641
		jmp	..@j4642
..@j4641:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j4642:
..@j4628:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4630
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
		jne	..@j4646
		cmp	word [bp+8],0
		jne	..@j4647
		jmp	..@j4648
..@j4647:
		push	word [bp+10]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j4648:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j4646:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4653
		call	FPC_RAISE_NESTED
..@j4653:
		call	FPC_DONEEXCEPTION
		jmp	..@j4630
..@j4630:
..@j4616:
		mov	ax,word [bp+10]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TCOLLECTION_$__$$_CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
