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
	GLOBAL CLASSES$_$TOWNERSTREAM_$__$$_CREATE$TSTREAM$$TOWNERSTREAM
CLASSES$_$TOWNERSTREAM_$__$$_CREATE$TSTREAM$$TOWNERSTREAM:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j2437
		jmp	..@j2438
..@j2437:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j2438:
		cmp	word [bp+8],0
		je	..@j2443
		jmp	..@j2444
..@j2443:
		jmp	..@j2435
..@j2444:
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
		jne	..@j2447
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+3],ax
		cmp	word [bp+8],0
		jne	..@j2456
		jmp	..@j2455
..@j2456:
		cmp	word [bp+6],0
		jne	..@j2454
		jmp	..@j2455
..@j2454:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j2455:
..@j2447:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2449
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
		jne	..@j2459
		cmp	word [bp+6],0
		jne	..@j2460
		jmp	..@j2461
..@j2460:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j2461:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j2459:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2466
		call	FPC_RAISE_NESTED
..@j2466:
		call	FPC_DONEEXCEPTION
		jmp	..@j2449
..@j2449:
..@j2435:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
