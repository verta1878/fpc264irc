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
	GLOBAL CLASSES$_$TCOLLECTION_$__$$_CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION
CLASSES$_$TCOLLECTION_$__$$_CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j4357
		jmp	..@j4358
..@j4357:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j4358:
		cmp	word [bp+8],0
		je	..@j4363
		jmp	..@j4364
..@j4363:
		jmp	..@j4355
..@j4364:
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
		jne	..@j4367
		push	word [bp+8]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+6],ax
		mov	ax,word VMT_$CLASSES_$$_TFPLIST
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+8]
		mov	word [bx+8],ax
		cmp	word [bp+8],0
		jne	..@j4386
		jmp	..@j4385
..@j4386:
		cmp	word [bp+6],0
		jne	..@j4384
		jmp	..@j4385
..@j4384:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j4385:
..@j4367:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4369
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
		jne	..@j4389
		cmp	word [bp+6],0
		jne	..@j4390
		jmp	..@j4391
..@j4390:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j4391:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j4389:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4396
		call	FPC_RAISE_NESTED
..@j4396:
		call	FPC_DONEEXCEPTION
		jmp	..@j4369
..@j4369:
..@j4355:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	VMT_$CLASSES_$$_TFPLIST
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
