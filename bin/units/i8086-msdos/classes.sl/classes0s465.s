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
	GLOBAL CLASSES$_$TSIMPLEPROCTHREAD_$__$$_CREATE$crcC9B841E6
CLASSES$_$TSIMPLEPROCTHREAD_$__$$_CREATE$crcC9B841E6:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+10],1
		je	..@j10491
		jmp	..@j10492
..@j10491:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+12],ax
..@j10492:
		cmp	word [bp+12],0
		je	..@j10497
		jmp	..@j10498
..@j10497:
		jmp	..@j10489
..@j10498:
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
		jne	..@j10501
		mov	bx,word [bp+12]
		mov	ax,word [bp+8]
		mov	word [bx+24],ax
		mov	bx,word [bp+12]
		mov	ax,word [bp+4]
		mov	word [bx+26],ax
		mov	bx,word [bp+12]
		mov	ax,word [bp+6]
		mov	word [bx+28],ax
		mov	bx,word [bp+12]
		cmp	word [bx+26],0
		jne	..@j10512
		jmp	..@j10513
..@j10512:
		mov	bx,word [bp+12]
		mov	ax,word [bp+12]
		mov	dx,word CLASSES$_$TSIMPLEPROCTHREAD_$__$$_TERMINATECALLBACK$TOBJECT
		mov	word [bx+13],dx
		mov	word [bx+15],ax
..@j10513:
		push	word [bp+12]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,16384
		push	ax
		call	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$WORD$$TTHREAD
		cmp	word [bp+12],0
		jne	..@j10526
		jmp	..@j10525
..@j10526:
		cmp	word [bp+10],0
		jne	..@j10524
		jmp	..@j10525
..@j10524:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j10525:
..@j10501:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j10503
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
		jne	..@j10529
		cmp	word [bp+10],0
		jne	..@j10530
		jmp	..@j10531
..@j10530:
		push	word [bp+12]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j10531:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j10529:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j10536
		call	FPC_RAISE_NESTED
..@j10536:
		call	FPC_DONEEXCEPTION
		jmp	..@j10503
..@j10503:
..@j10489:
		mov	ax,word [bp+12]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$WORD$$TTHREAD
EXTERN	CLASSES$_$TSIMPLEPROCTHREAD_$__$$_TERMINATECALLBACK$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
