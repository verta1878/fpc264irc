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
	GLOBAL CLASSES$_$TSTREAMADAPTER_$__$$_CREATE$TSTREAM$TSTREAMOWNERSHIP$$TSTREAMADAPTER
CLASSES$_$TSTREAMADAPTER_$__$$_CREATE$TSTREAM$TSTREAMOWNERSHIP$$TSTREAMADAPTER:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+10],1
		je	..@j2488
		jmp	..@j2489
..@j2488:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+12],ax
..@j2489:
		cmp	word [bp+12],0
		je	..@j2494
		jmp	..@j2495
..@j2494:
		jmp	..@j2486
..@j2495:
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
		jne	..@j2498
		push	word [bp+12]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+12]
		mov	ax,word [bp+8]
		mov	word [bx+8],ax
		mov	bx,word [bp+12]
		mov	ax,word [bp+4]
		mov	word [bx+10],ax
		mov	ax,word [bp+6]
		mov	word [bx+12],ax
		mov	bx,word [bp+12]
		mov	byte [bx+14],0
		cmp	word [bp+12],0
		jne	..@j2515
		jmp	..@j2514
..@j2515:
		cmp	word [bp+10],0
		jne	..@j2513
		jmp	..@j2514
..@j2513:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j2514:
..@j2498:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2500
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
		jne	..@j2518
		cmp	word [bp+10],0
		jne	..@j2519
		jmp	..@j2520
..@j2519:
		push	word [bp+12]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j2520:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j2518:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2525
		call	FPC_RAISE_NESTED
..@j2525:
		call	FPC_DONEEXCEPTION
		jmp	..@j2500
..@j2500:
..@j2486:
		mov	ax,word [bp+12]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
